#include "JSystem/JSystem.h" // IWYU pragma: keep

#include "JSystem/J3DGraphBase/J3DTexture.h"
#include "JSystem/J3DAssert.h"

/* 8031204C-803121A4 30C98C 0158+00 0/0 1/1 0/0 .text loadGX__10J3DTextureCFUs11_GXTexMapID */
void J3DTexture::loadGX(u16 idx, GXTexMapID texMapID) const {
    J3D_ASSERT_RANGE(29, idx < mNum);

    ResTIMG* timg = getResTIMG(idx);
    GXTexObj texObj;
    GXTlutObj tlutObj;

    if (!timg->indexTexture) {
        GXInitTexObj(&texObj, ((u8*)timg) + timg->imageOffset, timg->width, timg->height,
                     (GXTexFmt)timg->format, (GXTexWrapMode)timg->wrapS, (GXTexWrapMode)timg->wrapT,
                     timg->mipmapEnabled);
    } else {
        GXInitTexObjCI(&texObj, ((u8*)timg) + timg->imageOffset, timg->width, timg->height,
                       (GXCITexFmt)timg->format, (GXTexWrapMode)timg->wrapS,
                       (GXTexWrapMode)timg->wrapT, timg->mipmapEnabled, (u32)texMapID);
        GXInitTlutObj(&tlutObj, ((u8*)timg) + timg->paletteOffset, (GXTlutFmt)timg->colorFormat,
                      timg->numColors);
        GXLoadTlut(&tlutObj, texMapID);
    }

    const f32 kLODClampScale = 1.0f / 8.0f;
    const f32 kLODBiasScale = 1.0f / 100.0f;
    GXInitTexObjLOD(&texObj, (GXTexFilter)timg->minFilter, (GXTexFilter)timg->magFilter,
                    timg->minLOD * kLODClampScale, timg->maxLOD * kLODClampScale,
                    timg->LODBias * kLODBiasScale, timg->biasClamp, timg->doEdgeLOD,
                    (GXAnisotropy)timg->maxAnisotropy);
    GXLoadTexObj(&texObj, texMapID);
}

/* 803121A4-8031221C 30CAE4 0078+00 1/1 0/0 0/0 .text            entryNum__10J3DTextureFUs */
void J3DTexture::entryNum(u16 num) {
    J3D_ASSERT_NONZEROARG(79, num != 0);

    mNum = num;
    mpRes = new ResTIMG[num];
    J3D_ASSERT_ALLOCMEM(83, mpRes != NULL);

    for (int i = 0; i < mNum; i++) {
        mpRes[i].paletteOffset = 0;
        mpRes[i].imageOffset = 0;
    }
}

/* 8031221C-80312488 30CB5C 026C+00 0/0 1/1 0/0 .text addResTIMG__10J3DTextureFUsPC7ResTIMG */
void J3DTexture::addResTIMG(u16 newNum, const ResTIMG* newRes) {
    if (newNum == 0)
        return;

    J3D_ASSERT_NULLPTR(105, newRes != 0);

    u16 oldNum = mNum;
    ResTIMG* oldRes = mpRes;

    entryNum(mNum + newNum);

    for (u16 i = 0; i < oldNum; i++) {
        setResTIMG(i, oldRes[i]);
    }

    for (u16 i = oldNum; i < mNum; i++) {
        setResTIMG(i, newRes[i]);
    }
}
