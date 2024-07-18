import struct
import sys
import os
from PIL import Image
from io import BytesIO
from math import ceil
from dataclasses import asdict, dataclass
from enum import Enum
import json

imageFormatToInt = {
    "I4": 0,
    "I8": 1,
    "IA4": 2,
    "IA8": 3,
    "RGB565": 4,
    "RGB5A3": 5,
    "RGBA32": 6,
    "C4": 8,
    "C8": 9,
    "C14X2": 0xA,
    "CMPR": 0xE,
}

colorFormatToInt = {"IA8": 0, "RGB565": 1, "RGB5A3": 2}

wrapModeToInt = {"CLAMP": 0, "REPEAT": 1, "MIRROR": 2, "MAX_TEXWRAP_MODE": 3}

texFilterToInt = {
    "NEAR": 0,
    "LINEAR": 1,
    "NEAR_MIP_NEAR": 2,
    "LINEAR_MIP_NEAR": 3,
    "NEAR_MIP_LINEAR": 4,
    "LINEAR_MIP_LINEAR": 5,
}


def invertDict(dict):
    return {v: i for i, v in dict.items()}


@dataclass
class BTI_Header:
    format: int
    alphaEnabled: int
    width: int
    height: int
    wrapS: int
    wrapT: int
    indexTexture: int
    colorFormat: int
    numColors: int
    paletteOffset: int
    mipmapEnabled: int
    doEdgeLOD: int
    biasClamp: int
    maxAnisotropy: int
    minFilter: int
    magFilter: int
    minLOD: int
    maxLOD: int
    mipmapCount: int
    unk0: int
    LODBias: int
    imageOffset: int

    @classmethod
    def fromBytes(cls, header_bytes):
        assert len(header_bytes) == 0x20
        unpacked = struct.unpack(">BBHHBBBBHIBBBBBBbbBBhI", header_bytes)
        return cls(*unpacked)

    def getBytes(self):
        return struct.pack(
            ">BBHHBBBBHIBBBBBBbbBBhI",
            self.format,
            self.alphaEnabled,
            self.width,
            self.height,
            self.wrapS,
            self.wrapT,
            self.indexTexture,
            self.colorFormat,
            self.numColors,
            self.paletteOffset,
            self.mipmapEnabled,
            self.doEdgeLOD,
            self.biasClamp,
            self.maxAnisotropy,
            self.minFilter,
            self.magFilter,
            self.minLOD,
            self.maxLOD,
            self.mipmapCount,
            self.unk0,
            self.LODBias,
            self.imageOffset,
        )


def decodeIA8(bytes):
    intensity = bytes[1]
    return intensity, intensity, intensity, bytes[0]


def encodeIA8(color):
    return ((color[3] << 8) & 0xFF00) | (((color[0] + color[1] + color[2]) // 3) & 0xFF)


def decodeRGB565(bytes):
    full = (bytes[0] << 8) | bytes[1]
    return (full >> 11) * 8, ((full >> 5) & 0b111111) * 4, (full & 0b11111) * 8, 0xFF


def encodeRGB565(color):
    return (
        (((color[0] // 8) & 0b11111) << 11)
        | (((color[1] // 4) & 0b111111) << 5)
        | ((color[2] // 8) & 0b11111)
    )


def decodeRGB5A3(bytes):
    full = (bytes[0] << 8) | bytes[1]
    isAlpha = not (full & 0x8000) > 0
    if isAlpha:
        return (
            ((full >> 8) & 0xF) * 0x11,
            ((full >> 4) & 0xF) * 0x11,
            (full & 0xF) * 0x11,
            ((full >> 12) & 0b111) * 0x20,
        )
    else:
        return (
            ((full >> 10) & 0b11111) * 8,
            ((full >> 5) & 0b11111) * 8,
            (full & 0b11111) * 8,
            0xFF,
        )


def encodeRGB5A3(color):
    isAlpha = color[3] < 0xFF
    if isAlpha:
        return (
            (((color[3] // 0x20) & 0b111) << 12)
            | (((color[0] // 0x11) & 0xF) << 8)
            | (((color[1] // 0x11) & 0xF) << 4)
            | ((color[2] // 0x11) & 0xF)
        )
    else:
        return (
            (1 << 15)
            | (((color[0] // 8) & 0b11111) << 10)
            | (((color[1] // 8) & 0b11111) << 5)
            | ((color[2] // 8) & 0b11111)
        )


class ImageBase:
    def __init__(self, header, data=None, imageBuffer=None):
        self.header = header
        self.data = data
        self.paletteColors = []
        if self.data == None:
            self.data = bytearray()
        self.imageBuffer = (
            imageBuffer
            if imageBuffer != None
            else [(0, 0, 0, 0xFF)] * (header.width * header.height)
        )

    def decodePaletteColors(self):
        decodeFunc = None
        match self.header.colorFormat:
            case 0:
                decodeFunc = decodeIA8
            case 1:
                decodeFunc = decodeRGB565
            case 2:
                decodeFunc = decodeRGB5A3

        colors = []

        offset = self.header.paletteOffset
        for i in range(self.header.numColors):
            colors.append(decodeFunc(self.data[offset : offset + 2]))
            offset += 2

        self.paletteColors = colors

    def encodePaletteColors(self):
        encodeFunc = None
        match self.header.colorFormat:
            case 0:
                encodeFunc = encodeIA8
            case 1:
                encodeFunc = encodeRGB565
            case 2:
                encodeFunc = encodeRGB5A3

        for color in self.paletteColors:
            self.data += struct.pack(">H", encodeFunc(color))

    def writePixel(self, x, y, pixelValue):
        if x >= self.header.width or y >= self.header.height:
            return
        self.imageBuffer[(y * self.header.width) + x] = pixelValue

    def readPixel(self, x, y):
        if x >= self.header.width or y >= self.header.height:
            return 0xFF, 0xFF, 0xFF, 0xFF
        return self.imageBuffer[(y * self.header.width) + x]

    def decodeLoop(self, blockWidth, blockHeight, blockStride):
        widthInBlocks = ceil(self.header.width / blockWidth)
        heightInBlocks = ceil(self.header.height / blockHeight)

        offset = self.header.imageOffset
        for blockY in range(heightInBlocks):
            for blockX in range(widthInBlocks):
                self.decodeBlock(
                    blockX * blockWidth,
                    blockY * blockHeight,
                    self.data[offset : offset + blockStride],
                )
                offset += blockStride

    def decode(self):
        pass

    def decodeBlock(self, x, y, blockBytes):
        pass

    def encodeLoop(self, blockWidth, blockHeight):
        widthInBlocks = ceil(self.header.width / blockWidth)
        heightInBlocks = ceil(self.header.height / blockHeight)

        for blockY in range(heightInBlocks):
            for blockX in range(widthInBlocks):
                self.encodeBlock(blockX * blockWidth, blockY * blockHeight)

    def encode(self):
        pass

    def encodeBlock(self, x, y):
        pass


class I4Image(ImageBase):
    def decode(self):
        self.decodeLoop(8, 8, 32)

    def decodeBlock(self, x, y, blockBytes):
        offset = 0
        for inY in range(8):
            for inX in range(4):
                val = ((blockBytes[offset] & 0xF0) >> 4) * 0x11
                self.writePixel((x + (inX * 2)), y + inY, (val, val, val, 0xFF))
                val = (blockBytes[offset] & 0xF) * 0x11
                self.writePixel((x + (inX * 2)) + 1, y + inY, (val, val, val, 0xFF))
                offset += 1

    def encode(self):
        self.encodeLoop(8, 8)
        self.header.numColors = len(self.paletteColors)
        self.header.paletteOffset = len(self.data) + 0x20
        self.encodePaletteColors()

    def encodeBlock(self, x, y):
        for inY in range(8):
            for inX in range(4):
                color1 = self.readPixel(x + (inX * 2), y + inY)
                intensity1 = ((color1[0] + color1[1] + color1[2]) // 3) // 0x11
                color2 = self.readPixel(x + (inX * 2) + 1, y + inY)
                intensity2 = ((color2[0] + color2[1] + color2[2]) // 3) // 0x11
                self.data.append((intensity1 << 4) | intensity2)


class I8Image(ImageBase):
    def decode(self):
        self.decodeLoop(8, 4, 32)

    def decodeBlock(self, x, y, blockBytes):
        offset = 0
        for inY in range(4):
            for inX in range(8):
                intensity = blockBytes[offset]
                self.writePixel(
                    x + inX, y + inY, (intensity, intensity, intensity, 0xFF)
                )
                offset += 1

    def encode(self):
        self.encodeLoop(8, 4)

    def encodeBlock(self, x, y):
        for inY in range(4):
            for inX in range(8):
                color = self.readPixel(x + inX, y + inY)
                intensity = (color[0] + color[1] + color[2]) // 3
                self.data.append(intensity)


class IA4Image(ImageBase):
    def decode(self):
        self.decodeLoop(8, 4, 32)

    def decodeBlock(self, x, y, blockBytes):
        offset = 0
        for inY in range(4):
            for inX in range(8):
                byte = blockBytes[offset]
                intensity = (byte & 0b1111) * 0x11
                self.writePixel(
                    x + inX,
                    y + inY,
                    (intensity, intensity, intensity, (byte >> 4) * 0x11),
                )
                offset += 1

    def encode(self):
        self.encodeLoop(8, 4)

    def encodeBlock(self, x, y):
        for inY in range(4):
            for inX in range(8):
                color = self.readPixel(x + inX, y + inY)
                intensity = (color[0] + color[1] + color[2]) // 3
                self.data.append(((color[3] // 0x11) << 4) | (intensity // 0x11))


class IA8Image(ImageBase):
    def decode(self):
        self.decodeLoop(4, 4, 32)

    def decodeBlock(self, x, y, blockBytes):
        offset = 0
        for inY in range(4):
            for inX in range(4):
                self.writePixel(
                    x + inX, y + inY, decodeIA8(blockBytes[offset : offset + 2])
                )
                offset += 2

    def encode(self):
        self.encodeLoop(4, 4)

    def encodeBlock(self, x, y):
        for inY in range(4):
            for inX in range(4):
                color = self.readPixel(x + inX, y + inY)
                self.data += struct.pack(">H", encodeIA8(color))


class RGB565Image(ImageBase):
    def decode(self):
        self.decodeLoop(4, 4, 32)

    def decodeBlock(self, x, y, blockBytes):
        offset = 0
        for inY in range(4):
            for inX in range(4):
                self.writePixel(
                    x + inX, y + inY, decodeRGB565(blockBytes[offset : offset + 2])
                )
                offset += 2

    def encode(self):
        self.encodeLoop(4, 4)

    def encodeBlock(self, x, y):
        for inY in range(4):
            for inX in range(4):
                color = self.readPixel(x + inX, y + inY)
                self.data += struct.pack(">H", encodeRGB565(color))


class RGB5A3Image(ImageBase):
    def decode(self):
        self.decodeLoop(4, 4, 32)

    def decodeBlock(self, x, y, blockBytes):
        offset = 0
        for inY in range(4):
            for inX in range(4):
                self.writePixel(
                    x + inX, y + inY, decodeRGB5A3(blockBytes[offset : offset + 2])
                )
                offset += 2

    def encode(self):
        self.encodeLoop(4, 4)

    def encodeBlock(self, x, y):
        for inY in range(4):
            for inX in range(4):
                color = self.readPixel(x + inX, y + inY)
                self.data += struct.pack(">H", encodeRGB5A3(color))


class RGBA32Image(ImageBase):
    def decode(self):
        self.decodeLoop(4, 4, 64)

    def decodeBlock(self, x, y, blockBytes):
        aOffset = 0
        rOffset = 1
        gOffset = 32
        bOffset = 33
        for inY in range(4):
            for inX in range(4):
                self.writePixel(
                    x + inX,
                    y + inY,
                    (
                        blockBytes[rOffset],
                        blockBytes[gOffset],
                        blockBytes[bOffset],
                        blockBytes[aOffset],
                    ),
                )
                aOffset += 2
                rOffset += 2
                gOffset += 2
                bOffset += 2

    def encode(self):
        self.encodeLoop(4, 4)

    def encodeBlock(self, x, y):
        aOffset = 0
        rOffset = 1
        gOffset = 32
        bOffset = 33
        buffer = bytearray(64)
        for inY in range(4):
            for inX in range(4):
                color = self.readPixel(x + inX, y + inY)
                buffer[rOffset] = color[0]
                buffer[gOffset] = color[1]
                buffer[bOffset] = color[2]
                buffer[aOffset] = color[3]

                aOffset += 2
                rOffset += 2
                gOffset += 2
                bOffset += 2


class C4Image(ImageBase):
    def decode(self):
        self.decodePaletteColors()
        self.decodeLoop(8, 8, 32)

    def decodeBlock(self, x, y, blockBytes):
        offset = 0
        for inY in range(8):
            for inX in range(4):
                index = (blockBytes[offset] & 0xF0) >> 4
                if index >= self.header.numColors:
                    offset += 1
                    continue  # Out of bounds, likely due to the block going out of the image
                self.writePixel((x + (inX * 2)), y + inY, self.paletteColors[index])
                index = blockBytes[offset] & 0xF
                if index >= self.header.numColors:
                    offset += 1
                    continue  # Out of bounds, likely due to the block going out of the image
                self.writePixel((x + (inX * 2)) + 1, y + inY, self.paletteColors[index])
                offset += 1

    def encode(self):
        # Mipmaps are currently not allowed for paletted textures
        assert (
            self.header.mipmapEnabled == 0 and self.header.mipmapCount == 1
        ), "Mipmaps are not supported on Paletted textures!"
        self.encodeLoop(8, 8)
        self.header.numColors = len(self.paletteColors)
        self.header.paletteOffset = len(self.data) + 0x20
        self.encodePaletteColors()

    def encodeBlock(self, x, y):
        for inY in range(8):
            for inX in range(4):
                pixelValue = self.readPixel(x + (inX * 2), y + inY)
                if not pixelValue in self.paletteColors:
                    self.paletteColors.append(pixelValue)
                index = self.paletteColors.index(pixelValue)
                pixelValue = self.readPixel(x + (inX * 2) + 1, y + inY)
                if not pixelValue in self.paletteColors:
                    self.paletteColors.append(pixelValue)
                index2 = self.paletteColors.index(pixelValue)
                self.data.append((index << 4) | index2)


class C8Image(ImageBase):
    def decode(self):
        self.decodePaletteColors()
        self.decodeLoop(8, 4, 32)

    def decodeBlock(self, x, y, blockBytes):
        offset = 0
        for inY in range(4):
            for inX in range(8):
                # print(self.header.numColors)
                if blockBytes[offset] >= self.header.numColors:
                    offset += 1
                    continue  # Out of bounds, likely due to the block going out of the image
                self.writePixel(
                    x + inX, y + inY, self.paletteColors[blockBytes[offset]]
                )
                offset += 1

    def encode(self):
        # Mipmaps are currently not allowed for paletted textures
        assert (
            self.header.mipmapEnabled == 0 and self.header.mipmapCount == 1
        ), "Mipmaps are not supported on Paletted textures!"
        self.encodeLoop(8, 4)
        self.header.numColors = len(self.paletteColors)
        self.header.paletteOffset = len(self.data) + 0x20
        self.encodePaletteColors()

    def encodeBlock(self, x, y):
        for inY in range(4):
            for inX in range(8):
                pixelValue = self.readPixel(x + inX, y + inY)
                if not pixelValue in self.paletteColors:
                    self.paletteColors.append(pixelValue)
                index = self.paletteColors.index(pixelValue)
                self.data.append(index)


class C14X2Image(ImageBase):
    def decode(self):
        self.decodePaletteColors()
        self.decodeLoop(4, 4, 32)

    def decodeBlock(self, x, y, blockBytes):
        offset = 0
        for inY in range(4):
            for inX in range(8):
                index = struct.unpack(">H", blockBytes[offset : offset + 2])[0] & 0x3FFF
                if index < self.header.numColors:
                    offset += 2
                    continue  # Out of bounds, likely due to the block going out of the image
                self.writePixel(x + inX, y + inY, self.paletteColors[index])
                offset += 2

    def encode(self):
        # Mipmaps are currently not allowed for paletted textures
        assert (
            self.header.mipmapEnabled == 0 and self.header.mipmapCount == 1
        ), "Mipmaps are not supported on Paletted textures!"
        self.encodeLoop(4, 4)
        self.header.numColors = len(self.paletteColors)
        self.header.paletteOffset = len(self.data) + 0x20
        self.encodePaletteColors()

    def encodeBlock(self, x, y):
        for inY in range(4):
            for inX in range(4):
                pixelValue = self.readPixel(x + inX, y + inY)
                if not pixelValue in self.paletteColors:
                    self.paletteColors.append(pixelValue)
                index = self.paletteColors.index(pixelValue)
                self.data += struct.pack(">H", index)


class CMPRImage(ImageBase):
    def decode(self):
        self.decodeLoop(8, 8, 32)

    def interpolateColor(self, color1, color2, factor):
        return tuple(int(c1 + ((c2 - c1) * factor)) for c1, c2 in zip(color1, color2))

    def decodeBlock(self, x, y, blockBytes):
        offset = 0
        for subY in range(2):
            for subX in range(2):
                colors = [
                    decodeRGB565(blockBytes[offset + 0 : offset + 2]),
                    decodeRGB565(blockBytes[offset + 2 : offset + 4]),
                ]
                realVal1, realVal2 = struct.unpack(
                    ">HH", blockBytes[offset + 0 : offset + 4]
                )
                if realVal1 > realVal2:
                    colors.append(self.interpolateColor(colors[0], colors[1], (1 / 3)))
                    colors.append(self.interpolateColor(colors[0], colors[1], (2 / 3)))
                else:
                    colors.append(self.interpolateColor(colors[0], colors[1], (1 / 2)))
                    colors.append((0, 0, 0, 0))  # transparent

                # print(colors)

                val = struct.unpack(">I", blockBytes[offset + 4 : offset + 8])[0]

                for inY in range(4):
                    for inX in range(4):
                        self.writePixel(
                            x + (subX * 4) + inX,
                            y + (subY * 4) + inY,
                            colors[val >> 30],
                        )
                        val = (val << 2) & 0xFFFFFFFF

                offset += 8

    def encode(self):
        self.encodeLoop(8, 8)

    def color_distance(self, color1, color2):
        return (
            ((color1[0] - color2[0]) ** 2)
            + ((color1[1] - color2[1]) ** 2)
            + ((color1[2] - color2[2]) ** 2)
        )

    def encodeBlock(self, x, y):
        for subY in range(2):
            for subX in range(2):
                block = [
                    self.readPixel(x + (subX * 4) + inX, y + (subY * 4) + inY)
                    for inY in range(4)
                    for inX in range(4)
                ]
                # print(f"{x} {y}")
                # print(block)

                isTransparent = False
                for color in block:
                    if color[3] < 200:
                        isTransparent = True
                        break

                colors = [min(block), max(block)]

                realColor1 = encodeRGB565(colors[0])
                realColor2 = encodeRGB565(colors[1])

                if realColor1 < realColor2:
                    colors[0], colors[1] = colors[1], colors[0]
                    realColor1, realColor2 = realColor2, realColor1

                if isTransparent and realColor1 > realColor2:
                    colors[0], colors[1] = colors[1], colors[0]
                    realColor1, realColor2 = realColor2, realColor1

                # print(colors[0])

                if not isTransparent:
                    colors.append(self.interpolateColor(colors[0], colors[1], (1 / 3)))
                    colors.append(self.interpolateColor(colors[0], colors[1], (2 / 3)))
                else:
                    colors.append(self.interpolateColor(colors[0], colors[1], (1 / 2)))
                    # colors.append((0,0,0,0))

                indices = []
                for color in block:
                    if color[3] < 200:
                        indices.append(3)
                        continue

                    distances = [
                        self.color_distance(color, testColor) for testColor in colors
                    ]
                    indices.append(distances.index(min(distances)))

                indicesInt = 0
                for i in range(16):
                    indicesInt = (indicesInt << 2) | (
                        indices[i] & 0b11
                    )  # (indicesInt >> 2) | ((indices[i]&0b11)<<30)

                # print(realColor1)
                # print(realColor2)
                self.data += struct.pack(">HHI", realColor1, realColor2, indicesInt)


def bti_to_png_cli(inFile, outFile, data, writeFunc):
    bti_to_png(os.path.splitext(outFile)[0] + ".bti", data, writeFunc)


def bti_to_png(name, data, writefunc):
    outName = os.path.splitext(name)[0] + ".png"
    print(f"Converting {name} to {outName}")

    header = BTI_Header.fromBytes(data[0:0x20])
    # print(header.getBytes())

    image = None

    match header.format:
        case 0:
            image = I4Image(header, data)
        case 1:
            image = I8Image(header, data)
        case 2:
            image = IA4Image(header, data)
        case 3:
            image = IA8Image(header, data)
        case 4:
            image = RGB565Image(header, data)
        case 5:
            image = RGB5A3Image(header, data)
        case 6:
            image = RGBA32Image(header, data)
        case 8:
            image = C4Image(header, data)
        case 9:
            image = C8Image(header, data)
        case 10:
            image = C14X2Image(header, data)
        case 0xE:
            image = CMPRImage(header, data)
        case _:
            print("Invalid format!")

    image.decode()

    pilImage = Image.new("RGBA", (header.width, header.height))
    pilImage.putdata(image.imageBuffer)

    with BytesIO() as output:
        pilImage.save(output, format="PNG")
        writefunc(outName, output.getvalue())

    header_dict = asdict(header)
    # print(header_dict)

    header_dict["format"] = invertDict(imageFormatToInt)[header.format]

    if header.format >= 8 and header.format <= 10:
        header_dict["colorFormat"] = invertDict(colorFormatToInt)[header.colorFormat]
    else:
        del header_dict["colorFormat"]

    header_dict["wrapS"] = invertDict(wrapModeToInt)[header.wrapS]
    header_dict["wrapT"] = invertDict(wrapModeToInt)[header.wrapT]

    header_dict["minFilter"] = invertDict(texFilterToInt)[header.minFilter]
    header_dict["magFilter"] = invertDict(texFilterToInt)[header.magFilter]

    del header_dict["width"]
    del header_dict["height"]
    del header_dict["numColors"]
    del header_dict["paletteOffset"]
    del header_dict["unk0"]
    del header_dict["imageOffset"]

    # print(header_dict)

    splitext = os.path.splitext(name)
    writefunc(
        splitext[0] + ".bti.json", bytes(json.dumps(header_dict, indent=4), "ascii")
    )

    return outName


def namedValueFromDict(value, dict):
    if not value in dict:
        print(
            f"Format {value} is not a valid type. Valid types are {", ".join(dict.keys())}"
        )
        return None
    return dict[value]


def png_to_bti(name, convertFunc):
    # print(name)
    splitext = os.path.splitext(name)
    header_dict = json.load(open(splitext[0] + ".bti.json", "r"))

    format = namedValueFromDict(header_dict["format"], imageFormatToInt)

    colorFormat = 0

    if format >= 8 and format <= 10:
        colorFormat = namedValueFromDict(header_dict["colorFormat"], colorFormatToInt)

    wrapS = namedValueFromDict(header_dict["wrapS"], wrapModeToInt)
    wrapT = namedValueFromDict(header_dict["wrapT"], wrapModeToInt)

    minFilter = namedValueFromDict(header_dict["minFilter"], texFilterToInt)
    magFilter = namedValueFromDict(header_dict["magFilter"], texFilterToInt)

    pilImage = Image.open(name)

    # Reduce the amount of colors to go within the palette bounds, if needed

    if format >= 8 and format <= 10:
        unique_pixels = len(set(list(pilImage.getdata())))

        match format:
            case 8:  # C4
                if unique_pixels > 16:
                    pilImage = pilImage.quantize(15)
            case 9:  # C8
                if unique_pixels > 256:
                    pilImage = pilImage.quantize(255)
            case 10:  # C14X2
                if unique_pixels > 16384:
                    pilImage = pilImage.quantize(16383)

    pilImage = pilImage.convert("RGBA")

    width = pilImage.width
    height = pilImage.height
    imageBuffer = list(pilImage.getdata())
    pilImage.close()

    # Fill header with default values
    header = BTI_Header(
        format,
        header_dict["alphaEnabled"],
        width,
        height,
        wrapS,
        wrapT,
        header_dict["indexTexture"],
        colorFormat,
        0,
        0,
        header_dict["mipmapEnabled"],
        header_dict["doEdgeLOD"],
        header_dict["biasClamp"],
        header_dict["maxAnisotropy"],
        minFilter,
        magFilter,
        header_dict["minLOD"],
        header_dict["maxLOD"],
        header_dict["mipmapCount"],
        0,
        header_dict["LODBias"],
        32,
    )
    match header.format:
        case 0:
            image = I4Image(header, None, imageBuffer)
        case 1:
            image = I8Image(header, None, imageBuffer)
        case 2:
            image = IA4Image(header, None, imageBuffer)
        case 3:
            image = IA8Image(header, None, imageBuffer)
        case 4:
            image = RGB565Image(header, None, imageBuffer)
        case 5:
            image = RGB5A3Image(header, None, imageBuffer)
        case 6:
            image = RGBA32Image(header, None, imageBuffer)
        case 8:
            image = C4Image(header, None, imageBuffer)
        case 9:
            image = C8Image(header, None, imageBuffer)
        case 10:
            image = C14X2Image(header, None, imageBuffer)
        case 0xE:
            image = CMPRImage(header, None, imageBuffer)

    if header.mipmapEnabled == 0 or header.mipmapCount == 1:
        image.encode()
    else:
        # Handle mipmaps
        for i in range(header.mipmapCount):
            image.encode()
            header.width = header.width // 2
            header.height = header.height // 2
            newPixels = [(0, 0, 0, 0xFF)] * (header.width * header.height)
            for y in range(header.height):
                for x in range(header.width):
                    p1 = image.imageBuffer[(y * header.width * 4) + (x * 2)]
                    p2 = image.imageBuffer[(y * header.width * 4) + (x * 2) + 1]
                    p3 = image.imageBuffer[
                        (header.width * 2) + (y * header.width * 4) + (x * 2)
                    ]
                    p4 = image.imageBuffer[
                        (header.width * 2) + (y * header.width * 4) + (x * 2) + 1
                    ]
                    newPixels[(y * header.width) + x] = (
                        (p1[0] + p2[0] + p3[0] + p4[0]) // 4,
                        (p1[1] + p2[1] + p3[1] + p4[1]) // 4,
                        (p1[2] + p2[2] + p3[2] + p4[2]) // 4,
                        (p1[3] + p2[3] + p3[3] + p4[3]) // 4,
                    )
            image.imageBuffer = newPixels
        # reset image info
        header.width = width
        header.height = height

    # The encoding function should've modified the header for any changes

    return header.getBytes() + image.data


def testWriteFunc(name, data):
    with open(name, "wb") as f:
        f.write(data)


def main():
    if len(sys.argv) != 3:
        print(
            f"Usage: {sys.argv[0]} input.bti output.png OR {sys.argv[0]} input.png output.bti"
        )
        exit(1)

    inputString = sys.argv[1]
    outputString = sys.argv[2]

    if inputString.rfind(".png") != -1 and outputString.rfind(".bti") != -1:
        bti_bytes = png_to_bti(inputString, None)
        testWriteFunc(outputString, bti_bytes)
    elif inputString.rfind(".bti") != -1 and outputString.rfind(".png") != -1:
        bti_file = open(inputString, "rb")
        bti_bytes = bti_file.read()
        bti_file.close()

        name = bti_to_png_cli(inputString, outputString, bti_bytes, testWriteFunc)
    else:
        print("Error: One of the provided arguments is not valid!")
        exit(1)


if __name__ == "__main__":
    main()
