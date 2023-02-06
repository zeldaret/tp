# adpcm encoding currently doesn't work, so this isn't being integrated into the assets scripts
# however, this can be used to encode a wav file to a pcm16 ast file
import struct
import os
import sys
import dataclasses
import json

DSPADPCM_FILTER = [
    [0, 0],
    [2048, 0],
    [0, 2048],
    [1024, 1024],
    [4096, -2048],
    [3584, -1536],
    [3072, -1024],
    [4608, -2560],
    [4200, -2248],
    [4800, -2300],
    [5120, -3072],
    [2048, -2048],
    [1024, -1024],
    [-1024, 1024],
    [-1024, 0],
    [-2048, 0],
]


@dataclasses.dataclass
class AST_Header:
    identifier: int
    fileSize: int
    format: int  # 0 = ADPCM, 1 = PCM16
    bitDepth: int
    numChannels: int
    unk_1: int
    sampleRate: int
    totalSamples: int
    loopStartSample: int
    loopEndSample: int
    blockSize: int
    unk_2: int
    unk_3: int


@dataclasses.dataclass
class AST_Json:
    blockSize: int
    loopStartSample: int
    loopEndSample: int
    encodingFormat: int
    loops: bool


def testWriteFunction(name, data):
    open(name, "wb").write(data)


def clampSample(sample):
    if sample > 32767:
        sample = 32767
    elif sample < -32767:
        sample = -32767
    return sample


def convert_to_wav(name, astData, writeFunction):
    header = struct.unpack(">IIHHHHIIIIIII", astData[:44])
    astHeader = AST_Header(*header)
    print(astHeader)
    if astHeader.bitDepth != 16:
        print("Error: libast only supports 16 bit audio!")
        return None
    nextBlockPosition = 0x40
    audioData = []
    for channel in range(astHeader.numChannels):
        audioData.append([])
    while nextBlockPosition < astHeader.fileSize + 0x40:
        currentBlockPosition = nextBlockPosition
        blockHeader = struct.unpack(
            ">II", astData[currentBlockPosition : currentBlockPosition + 8]
        )
        if blockHeader[0] != 1112294219:
            print("Block not found at position " + hex(currentBlockPosition))
            break
        blockSize = blockHeader[1]

        nextBlockPosition = (
            currentBlockPosition + 32 + (blockSize * astHeader.numChannels)
        )
        print(
            "current is "
            + str(currentBlockPosition)
            + " next is "
            + str(nextBlockPosition)
            + " full is "
            + str(astHeader.fileSize + 0x40)
            + " size is "
            + str(blockSize)
        )
        for channel in range(astHeader.numChannels):
            blockDataIndex = currentBlockPosition + 32 + (blockSize * channel)
            if astHeader.format == 0:  # adcpm
                endIndex = blockDataIndex + ((blockSize // 9) * 9)
                for i in range(blockDataIndex, endIndex, 9):
                    delta = 1 << ((astData[i] >> 4) & 0b1111)
                    id = astData[i] & 0b1111
                    data = []
                    for j in range(8):
                        data.append((astData[i + 1 + j] >> 4) & 0b1111)
                        data.append((astData[i + 1 + j]) & 0b1111)
                    for nibble in data:
                        if nibble >= 8:
                            nibble = nibble - 16
                        hist = 0
                        hist2 = 0
                        if len(audioData[channel]) == 1:
                            hist = audioData[channel][-1]
                        elif len(audioData[channel]) > 1:
                            hist = audioData[channel][-1]
                            hist2 = audioData[channel][-2]
                        sample = (delta * nibble) << 11
                        sample = sample + (
                            (hist * DSPADPCM_FILTER[id][0])
                            + (hist2 * DSPADPCM_FILTER[id][1])
                        )
                        sample = sample >> 11
                        sample = clampSample(sample)
                        audioData[channel].append(sample)
            elif astHeader.format == 1:  # pcm16
                for i in range(blockDataIndex, blockDataIndex + blockSize, 2):
                    audioData[channel].append(
                        struct.unpack(">h", astData[i : i + 2])[0]
                    )
        if nextBlockPosition == astHeader.fileSize + 0x40:
            break

    # done parsing data

    subChunk2Size = len(audioData[0]) * 2 * astHeader.numChannels
    wavHeader = struct.pack(
        "<ccccIccccccccIHHIIHHccccI",
        bytes("R", "ascii"),
        bytes("I", "ascii"),
        bytes("F", "ascii"),
        bytes("F", "ascii"),
        36 + subChunk2Size,
        bytes("W", "ascii"),
        bytes("A", "ascii"),
        bytes("V", "ascii"),
        bytes("E", "ascii"),
        bytes("f", "ascii"),
        bytes("m", "ascii"),
        bytes("t", "ascii"),
        bytes(" ", "ascii"),
        16,
        1,
        astHeader.numChannels,
        astHeader.sampleRate,
        2 * astHeader.numChannels * astHeader.sampleRate,
        2 * astHeader.numChannels,
        16,
        bytes("d", "ascii"),
        bytes("a", "ascii"),
        bytes("t", "ascii"),
        bytes("a", "ascii"),
        subChunk2Size,
    )

    wavFile = bytearray(wavHeader)

    print("writing")

    for i in range(len(audioData[0])):
        if i % 100000 == 0:
            print(i)
        for channel in audioData:
            wavFile.append(channel[i] & 0xFF)
            wavFile.append((channel[i] >> 8) & 0xFF)

    loops = False
    if astHeader.unk_1 == 0xFFFF:
        loops = True
    jsonData = AST_Json(
        astHeader.blockSize,
        astHeader.loopStartSample,
        astHeader.loopEndSample,
        astHeader.format,
        loops,
    )
    jsonDataString = json.dumps(dataclasses.asdict(jsonData))

    split = os.path.splitext(name)
    open(split[0] + ".json", "w").write(jsonDataString)
    writeFunction(split[0] + ".wav", wavFile)


def wav_to_ast(sourceWav, convertFunction):
    wavData = open(sourceWav, "rb").read()
    jsonDataString = open(os.path.splitext(sourceWav)[0] + ".json", "r").read()
    jsonData = json.loads(jsonDataString)
    print(jsonData)
    headerData = struct.unpack("<HI", wavData[0x16:0x1C])
    blockSize = jsonData["blockSize"]
    loopStartSample = jsonData["loopStartSample"]
    loopEndSample = jsonData["loopEndSample"]
    encodingFormat = jsonData["encodingFormat"]
    numChannels = headerData[0]
    sampleRate = headerData[1]
    astData = bytearray(20)
    wavDataPos = 0x2C

    loops = 0
    if jsonData["loops"] == True:
        loops = 0xFFFF

    sampleNum = 0
    if encodingFormat == 1:  # pcm16
        exitLoop = False
        while exitLoop == False:
            thisBlockSize = blockSize
            if len(wavData) - wavDataPos < (blockSize * numChannels):
                thisBlockSize = (len(wavData) - wavDataPos) // numChannels
                exitLoop = True
            astData.append(ord("B"))
            astData.append(ord("L"))
            astData.append(ord("C"))
            astData.append(ord("K"))
            # doing this is faster than adding two bytearrays together
            astData.append((thisBlockSize >> 24) & 0xFF)
            astData.append((thisBlockSize >> 16) & 0xFF)
            astData.append((thisBlockSize >> 8) & 0xFF)
            astData.append((thisBlockSize) & 0xFF)  # Write as big endian
            print(thisBlockSize)
            for i in range(24):
                astData.append(0)
            sampleNum = sampleNum + (thisBlockSize // 2)
            for channel in range(numChannels):
                for i in range(
                    0, thisBlockSize * numChannels, 2 * numChannels
                ):  # convert little to big endian
                    astData.append(wavData[wavDataPos + i + 1 + (channel * 2)])
                    astData.append(wavData[wavDataPos + i + (channel * 2)])
            wavDataPos = wavDataPos + (thisBlockSize * numChannels)
    elif encodingFormat == 0:  # adpcm
        exitLoop = False
        sampleList = []
        for channel in range(numChannels):
            sampleList.append([])
            for i in range(
                0, len(wavData) - wavDataPos, 2 * numChannels
            ):  # convert little to big endian
                sampleList[channel].append(
                    (wavData[i + 1 + (channel * 2)] << 8) | (wavData[i + (channel * 2)])
                )
            for i in range(16 - (len(sampleList) % 16)):
                sampleList[channel].append(0)

        last = 0
        penult = 0
        while exitLoop == False:
            thisBlockSize = blockSize
            if loopEndSample - sampleNum <= ((blockSize // 9) * 16):
                thisBlockSize = ((loopEndSample - sampleNum) // 16) * 9
                exitLoop = True
            astData.append(ord("B"))
            astData.append(ord("L"))
            astData.append(ord("C"))
            astData.append(ord("K"))
            # doing this is faster than adding two bytearrays together
            astData.append((thisBlockSize >> 24) & 0xFF)
            astData.append((thisBlockSize >> 16) & 0xFF)
            astData.append((thisBlockSize >> 8) & 0xFF)
            astData.append((thisBlockSize) & 0xFF)  # Write as big endian
            print(thisBlockSize)
            for i in range(24):
                astData.append(0)
            sampleNum = sampleNum + ((thisBlockSize // 9) * 16)
            print(sampleNum)
            for channel in range(numChannels):
                for sample in range(
                    sampleNum, sampleNum + ((thisBlockSize // 9) * 16), 16
                ):

                    def getSample(sampleIndex):
                        if len(sampleList[channel]) > sampleIndex:
                            return sampleList[channel][sampleIndex]
                        else:
                            return 0

                    # code ported from https://github.com/XAYRGA/wsystool/blob/37eb357b11b2e2b80f50784d4e993713e5e00508/wsystool/bananapeel/banan_flaaf.cs#L393

                    isBlank = True
                    for i in range(16):
                        if getSample(sample + i) != 0:
                            isBlank = False
                            break
                    if isBlank:
                        for i in range(9):
                            astData.append(0)
                        continue

                    coeffIndex = -1
                    minerror = 0xFFFFFFFF
                    for coeff in range(16):
                        lastCoeff = DSPADPCM_FILTER[coeff][0]
                        penultCoeff = DSPADPCM_FILTER[coeff][1]
                        foundScale = -1
                        coeff_error = 0

                        for current_scale in range(16):
                            step = 1 << current_scale
                            nibbleCoeff = 2048 << current_scale
                            success = True
                            coeff_error = 0

                            _last = lastCoeff
                            _penult = penultCoeff

                            for i in range(16):
                                prediction = clampSample(
                                    ((lastCoeff * _last) + (penultCoeff * _penult))
                                    >> 11
                                )
                                difference = -(prediction - getSample(sample + i))
                                nibble = difference // step

                                if nibble < -8 or nibble > 7:
                                    success = False
                                    break

                                nibbleSample = nibble * nibbleCoeff
                                decoded = clampSample(
                                    (
                                        (nibbleSample)
                                        + (lastCoeff * _last)
                                        + (penultCoeff * _penult)
                                    )
                                    >> 11
                                )

                                _penult = _last
                                _last = decoded

                                coeff_error = coeff_error + abs(difference)

                            if success:
                                foundScale = current_scale
                                break

                        if foundScale < 0:
                            continue

                        if coeff_error < minerror:
                            minerror = coeff_error
                            coeffIndex = coeff
                            scale = foundScale

                    lastCoeff = DSPADPCM_FILTER[coeffIndex][0]
                    penultCoeff = DSPADPCM_FILTER[coeffIndex][1]

                    step = 1 << scale

                    nibbles = [int] * 16
                    for i in range(16):
                        prediction = clampSample(
                            ((lastCoeff * last) + (penultCoeff * penult)) >> 11
                        )
                        difference = -(prediction - getSample(sample + i))
                        nibbles[i] = difference // step
                        nibbleSample = nibbles[i] * (2048 << scale)
                        decoded = clampSample(
                            nibbleSample + (lastCoeff * last) + (penultCoeff * penult)
                            >> 11
                        )

                        penult = last
                        last = decoded

                    astData.append(((scale & 0xF) << 4) | coeffIndex)
                    for i in range(8):
                        astData.append(
                            ((nibbles[i * 2] & 0xF) << 4)
                            | ((nibbles[(i * 2) + 1] & 0xF))
                        )

    astHeader = struct.pack(
        ">IIHHHHIIIIIII",
        1398035021,
        len(astData) - 20,
        encodingFormat,
        16,
        numChannels,
        loops,
        sampleRate,
        loopEndSample,
        loopStartSample,
        loopEndSample,
        blockSize,
        0,
        0x7F000000,
    )

    astFile = astHeader + astData
    split = os.path.splitext(sourceWav)
    convertFunction(split[0] + ".ast", astFile)


if __name__ == "__main__":
    if len(sys.argv) >= 2:
        split = os.path.splitext(sys.argv[1])
        if split[1] == ".ast":
            convert_to_wav(
                sys.argv[1], open(sys.argv[1], "rb").read(), testWriteFunction
            )
        elif split[1] == ".wav":
            wav_to_ast(sys.argv[1], testWriteFunction)
