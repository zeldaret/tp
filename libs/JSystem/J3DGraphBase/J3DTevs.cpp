//
// J3DTevs
//

#include "JSystem/J3DGraphBase/J3DTevs.h"
#include "JSystem/J3DGraphBase/J3DGD.h"
#include "JSystem/J3DGraphBase/J3DMatBlock.h"
#include "JSystem/J3DGraphBase/J3DSys.h"
#include "JSystem/J3DGraphBase/J3DTransform.h"

static void J3DGDLoadTexMtxImm(f32 (*)[4], u32, _GXTexMtxType);
static void J3DGDLoadPostTexMtxImm(f32 (*)[4], u32);

/* 80323590-80323644 31DED0 00B4+00 0/0 3/3 0/0 .text            load__11J3DLightObjCFUl */
void J3DLightObj::load(u32 lightIdx) const {
    GDOverflowCheck(0x48);
    J3DGDSetLightPos(GXLightID(1 << lightIdx), mInfo.mLightPosition.x, mInfo.mLightPosition.y, mInfo.mLightPosition.z);
    J3DGDSetLightAttn(GXLightID(1 << lightIdx), mInfo.mCosAtten.x, mInfo.mCosAtten.y, mInfo.mCosAtten.z, mInfo.mDistAtten.x, mInfo.mDistAtten.y, mInfo.mDistAtten.z);
    J3DGDSetLightColor(GXLightID(1 << lightIdx), mInfo.mColor);
    J3DGDSetLightDir(GXLightID(1 << lightIdx), mInfo.mLightDirection.x, mInfo.mLightDirection.y, mInfo.mLightDirection.z);
}

/* 80323644-803238C4 31DF84 0280+00 0/0 3/3 0/0 .text            loadTexCoordGens__FUlP11J3DTexCoord
 */
void loadTexCoordGens(u32 param_0, J3DTexCoord* param_1) {
    GDOverflowCheck(param_0 * 8 + 10);
    J3DGDWriteXFCmdHdr(0x1040, param_0);
    for (int i = 0; i < param_0; i++) {
        J3DGDSetTexCoordGen(
            GXTexGenType(param_1[i].getTexGenType()),
            GXTexGenSrc(param_1[i].getTexGenSrc())
        );
    }
    J3DGDWriteXFCmdHdr(0x1050, param_0);
    if (j3dSys.checkFlag(0x40000000)) {
        for (int i = 0; i < param_0; i++) {
            J3DGDWrite_u32(param_1[i].getTexGenMtx() == 60 ? 61 : i * 3);
        }
    } else {
        for (int i = 0; i < param_0; i++) {
            J3DGDWrite_u32(61);
        }
    }
}

/* 803238C4-80323900 31E204 003C+00 0/0 6/6 0/0 .text            load__9J3DTexMtxCFUl */
void J3DTexMtx::load(u32 mtxIdx) const {
    if (j3dSys.checkFlag(J3DSysFlag_PostTexMtx)) {
        loadPostTexMtx(mtxIdx);
    } else {
        loadTexMtx(mtxIdx);
    }
}

/* 80323900-80323920 31E240 0020+00 0/0 2/2 0/0 .text            calc__9J3DTexMtxFPA4_Cf */
void J3DTexMtx::calc(f32 const (*param_0)[4]) {
    calcTexMtx(param_0);
}

/* 80323920-80323C0C 31E260 02EC+00 2/1 0/0 0/0 .text            calcTexMtx__9J3DTexMtxFPA4_Cf */
void J3DTexMtx::calcTexMtx(const Mtx param_0) {
    Mtx44 mtx1;
    Mtx44 mtx2;

    static Mtx qMtx = {
        0.5f, 0.0f, 0.5f, 0.0f,
        0.0f, -0.5f, 0.5f, 0.0f,
        0.0f, 0.0f, 1.0f, 0.0f,
    };
    static Mtx qMtx2 = {
        0.5f, 0.0f, 0.0f, 0.5f,
        0.0f, -0.5f, 0.0f, 0.5f,
        0.0f, 0.0f, 1.0f, 0.0f,
    };

    u8 r28 = mTexMtxInfo.mInfo & 0x3f;
    u32 r30 = (mTexMtxInfo.mInfo >> 7) & 1;
    switch (r28) {
    case 8:
    case 9:
    case 11:
        if (r30 == 0) {
            J3DGetTextureMtx(mTexMtxInfo.mSRT, mTexMtxInfo.mCenter, mtx2);
        } else if (r30 == 1) {
            J3DGetTextureMtxMaya(mTexMtxInfo.mSRT, mtx2);
        }
        MTXConcat(mtx2, qMtx, mtx2);
        J3DMtxProjConcat(mtx2, mTexMtxInfo.mEffectMtx, mtx1);
        MTXConcat(mtx1, param_0, mMtx);
        break;
    case 7:
        if (r30 == 0) {
            J3DGetTextureMtx(mTexMtxInfo.mSRT, mTexMtxInfo.mCenter, mtx1);
        } else if (r30 == 1) {
            J3DGetTextureMtxMaya(mTexMtxInfo.mSRT, mtx1);
        }
        MTXConcat(mtx1, qMtx, mtx1);
        MTXConcat(mtx1, param_0, mMtx);
        break;
    case 10:
        if (r30 == 0) {
            J3DGetTextureMtxOld(mTexMtxInfo.mSRT, mTexMtxInfo.mCenter, mtx2);
        } else if (r30 == 1) {
            J3DGetTextureMtxMayaOld(mTexMtxInfo.mSRT, mtx2);
        }
        MTXConcat(mtx2, qMtx2, mtx2);
        J3DMtxProjConcat(mtx2, mTexMtxInfo.mEffectMtx, mtx1);
        MTXConcat(mtx1, param_0, mMtx);
        break;
    case 6:
        if (r30 == 0) {
            J3DGetTextureMtxOld(mTexMtxInfo.mSRT, mTexMtxInfo.mCenter, mtx1);
        } else if (r30 == 1) {
            J3DGetTextureMtxMayaOld(mTexMtxInfo.mSRT, mtx1);
        }
        MTXConcat(mtx1, qMtx2, mtx1);
        MTXConcat(mtx1, param_0, mMtx);
        break;
    case 1:
        if (r30 == 0) {
            J3DGetTextureMtxOld(mTexMtxInfo.mSRT, mTexMtxInfo.mCenter, mtx1);
        } else if (r30 == 1) {
            J3DGetTextureMtxMayaOld(mTexMtxInfo.mSRT, mtx1);
        }
        MTXConcat(mtx1, param_0, mMtx);
        break;
    case 2:
    case 3:
    case 5:
        if (r30 == 0) {
            J3DGetTextureMtxOld(mTexMtxInfo.mSRT, mTexMtxInfo.mCenter, mtx2);
        } else if (r30 == 1) {
            J3DGetTextureMtxMayaOld(mTexMtxInfo.mSRT, mtx2);
        }
        J3DMtxProjConcat(mtx2, mTexMtxInfo.mEffectMtx, mtx1);
        MTXConcat(mtx1, param_0, mMtx);
        break;
    case 4:
        if (r30 == 0) {
            J3DGetTextureMtxOld(mTexMtxInfo.mSRT, mTexMtxInfo.mCenter, mtx2);
        } else if (r30 == 1) {
            J3DGetTextureMtxMayaOld(mTexMtxInfo.mSRT, mtx2);
        }
        J3DMtxProjConcat(mtx2, mTexMtxInfo.mEffectMtx, mMtx);
        break;
    default:
        if (r30 == 0) {
            J3DGetTextureMtxOld(mTexMtxInfo.mSRT, mTexMtxInfo.mCenter, mMtx);
        } else if (r30 == 1) {
            J3DGetTextureMtxMayaOld(mTexMtxInfo.mSRT, mMtx);
        }
        break;
    }
}

/* 80323C0C-80323F64 31E54C 0358+00 1/0 2/2 0/0 .text            calcPostTexMtx__9J3DTexMtxFPA4_Cf
 */
void J3DTexMtx::calcPostTexMtx(const Mtx param_0) {
    Mtx44 mtx1;
    Mtx44 mtx2;

    static Mtx qMtx = {
        0.5f, 0.0f, 0.5f, 0.0f,
        0.0f, -0.5f, 0.5f, 0.0f,
        0.0f, 0.0f, 1.0f, 0.0f,
    };
    static Mtx qMtx2 = {
        0.5f, 0.0f, 0.0f, 0.5f,
        0.0f, -0.5f, 0.0f, 0.5f,
        0.0f, 0.0f, 1.0f, 0.0f,
    };

    u8 r29 = mTexMtxInfo.mInfo & 0x3f;
    u32 r30 = (mTexMtxInfo.mInfo >> 7) & 1;
    switch (r29) {
    case 8:
    case 11:
        if (r30 == 0) {
            J3DGetTextureMtx(mTexMtxInfo.mSRT, mTexMtxInfo.mCenter, mtx2);
        } else if (r30 == 1) {
            J3DGetTextureMtxMaya(mTexMtxInfo.mSRT, mtx2);
        }
        MTXConcat(mtx2, qMtx, mtx2);
        J3DMtxProjConcat(mtx2, mTexMtxInfo.mEffectMtx, mtx1);
        MTXConcat(mtx1, param_0, mMtx);
        break;
    case 9:
        if (r30 == 0) {
            J3DGetTextureMtx(mTexMtxInfo.mSRT, mTexMtxInfo.mCenter, mtx2);
        } else if (r30 == 1) {
            J3DGetTextureMtxMaya(mTexMtxInfo.mSRT, mtx2);
        }
        MTXConcat(mtx2, qMtx, mtx2);
        J3DMtxProjConcat(mtx2, mTexMtxInfo.mEffectMtx, mMtx);
        break;
    case 7:
        if (r30 == 0) {
            J3DGetTextureMtx(mTexMtxInfo.mSRT, mTexMtxInfo.mCenter, mtx1);
        } else if (r30 == 1) {
            J3DGetTextureMtxMaya(mTexMtxInfo.mSRT, mtx1);
        }
        MTXConcat(mtx1, qMtx, mMtx);
        break;
    case 10:
        if (r30 == 0) {
            J3DGetTextureMtxOld(mTexMtxInfo.mSRT, mTexMtxInfo.mCenter, mtx2);
        } else if (r30 == 1) {
            J3DGetTextureMtxMayaOld(mTexMtxInfo.mSRT, mtx2);
        }
        MTXConcat(mtx2, qMtx2, mtx2);
        J3DMtxProjConcat(mtx2, mTexMtxInfo.mEffectMtx, mtx1);
        MTXConcat(mtx1, param_0, mMtx);
        break;
    case 6:
        if (r30 == 0) {
            J3DGetTextureMtxOld(mTexMtxInfo.mSRT, mTexMtxInfo.mCenter, mtx1);
        } else if (r30 == 1) {
            J3DGetTextureMtxMayaOld(mTexMtxInfo.mSRT, mtx1);
        }
        MTXConcat(mtx1, qMtx2, mMtx);
        break;
    case 1:
        if (r30 == 0) {
            J3DGetTextureMtxOld(mTexMtxInfo.mSRT, mTexMtxInfo.mCenter, mMtx);
        } else if (r30 == 1) {
            J3DGetTextureMtxMayaOld(mTexMtxInfo.mSRT, mMtx);
        }
        break;
    case 2:
    case 5:
        if (r30 == 0) {
            J3DGetTextureMtxOld(mTexMtxInfo.mSRT, mTexMtxInfo.mCenter, mtx2);
        } else if (r30 == 1) {
            J3DGetTextureMtxMayaOld(mTexMtxInfo.mSRT, mtx2);
        }
        J3DMtxProjConcat(mtx2, mTexMtxInfo.mEffectMtx, mtx1);
        MTXConcat(mtx1, param_0, mMtx);
        break;
    case 3:
        if (r30 == 0) {
            J3DGetTextureMtxOld(mTexMtxInfo.mSRT, mTexMtxInfo.mCenter, mtx2);
        } else if (r30 == 1) {
            J3DGetTextureMtxMayaOld(mTexMtxInfo.mSRT, mtx2);
        }
        J3DMtxProjConcat(mtx2, mTexMtxInfo.mEffectMtx, mMtx);
        break;
    case 4:
        if (r30 == 0) {
            J3DGetTextureMtxOld(mTexMtxInfo.mSRT, mTexMtxInfo.mCenter, mtx2);
        } else if (r30 == 1) {
            J3DGetTextureMtxMayaOld(mTexMtxInfo.mSRT, mtx2);
        }
        J3DMtxProjConcat(mtx2, mTexMtxInfo.mEffectMtx, mMtx);
        break;
    default:
        if (r30 == 0) {
            J3DGetTextureMtxOld(mTexMtxInfo.mSRT, mTexMtxInfo.mCenter, mMtx);
        } else if (r30 == 1) {
            J3DGetTextureMtxMayaOld(mTexMtxInfo.mSRT, mMtx);
        }
        break;
    }
}

/* 80323F64-80323F88 31E8A4 0024+00 0/0 1/1 0/0 .text            isTexNoReg__FPv */
bool isTexNoReg(void* param_0) {
    u8 r31 = ((u8*)param_0)[1];
    if (r31 >= 0x80 && r31 <= 0xbb) {
        return true;
    }
    return false;
}

/* 80323F88-80323F94 31E8C8 000C+00 0/0 1/1 0/0 .text            getTexNoReg__FPv */
u16 getTexNoReg(void* param_0) {
    return *(u32*)((u8*)param_0 + 1);
}

/* 80323F94-8032413C 31E8D4 01A8+00 0/0 20/20 0/0 .text            loadTexNo__FUlRCUs */
void loadTexNo(u32 param_0, u16 const& param_1) {
    ResTIMG* resTIMG = j3dSys.getTexture()->getResTIMG(param_1);
    J3DSys::sTexCoordScaleTable[param_0].field_0x00 = resTIMG->width;
    J3DSys::sTexCoordScaleTable[param_0].field_0x02 = resTIMG->height;
    GDOverflowCheck(0x14);
    J3DGDSetTexImgPtr(GXTexMapID(param_0), (u8*)resTIMG + resTIMG->imageOffset);
    J3DGDSetTexImgAttr(GXTexMapID(param_0), resTIMG->width, resTIMG->height, GXTexFmt(resTIMG->format & 0x0f));
    J3DGDSetTexLookupMode(GXTexMapID(param_0), GXTexWrapMode(resTIMG->wrapS), GXTexWrapMode(resTIMG->wrapT), GXTexFilter(resTIMG->minFilter), GXTexFilter(resTIMG->magFilter), resTIMG->minLOD * 0.125f, resTIMG->maxLOD * 0.125f, resTIMG->LODBias * 0.01f, resTIMG->biasClamp, resTIMG->doEdgeLOD, GXAnisotropy(resTIMG->maxAnisotropy));
    if (resTIMG->indexTexture == true) {
        GXTlutSize tlutSize = resTIMG->numColors > 16 ? GX_TLUT_256 : GX_TLUT_16;
        GDOverflowCheck(0x14);
        J3DGDLoadTlut((u8*)resTIMG + resTIMG->paletteOffset, (param_0 << 13) + 0xf0000, tlutSize);
        J3DGDSetTexTlut(GXTexMapID(param_0), (param_0 << 13) + 0xf0000, GXTlutFmt(resTIMG->colorFormat));
    }
}

/* 8032413C-80324160 31EA7C 0024+00 0/0 2/2 0/0 .text            patchTexNo_PtrToIdx__FUlRCUs */
void patchTexNo_PtrToIdx(u32 texID, u16 const& idx) {
    J3DGDSetTexImgPtrRaw(GXTexMapID(texID), idx);
}

/* 80324160-80324194 31EAA0 0034+00 0/0 2/2 0/0 .text            loadNBTScale__FR11J3DNBTScale */
void loadNBTScale(J3DNBTScale& param_0) {
    if (param_0.mbHasScale == true) {
        j3dSys.setNBTScale(&param_0.mScale);
    } else {
        j3dSys.setNBTScale(NULL);
    }
}

/* ############################################################################################## */
/* 803A1EC8-803A1EFC 02E528 0034+00 0/0 9/9 24/24 .rodata          j3dDefaultLightInfo */
extern const J3DLightInfo j3dDefaultLightInfo = {
    0.0f, 0.0f, 0.0f,
    0.0f, -1.0f, 0.0f,
    0xff, 0xff, 0xff, 0xff,
    1.0f, 0.0f, 0.0f,
    1.0f, 0.0f, 0.0f,
};

/* 803A1EFC-803A1F1C 02E55C 0020+00 0/0 5/5 0/0 .rodata          j3dDefaultTexCoordInfo */
extern J3DTexCoordInfo const j3dDefaultTexCoordInfo[8] = {
    {GX_MTX2x4, GX_TG_TEX0, GX_IDENTITY, 0}, {GX_MTX2x4, GX_TG_TEX1, GX_IDENTITY, 0},
    {GX_MTX2x4, GX_TG_TEX2, GX_IDENTITY, 0}, {GX_MTX2x4, GX_TG_TEX3, GX_IDENTITY, 0},
    {GX_MTX2x4, GX_TG_TEX4, GX_IDENTITY, 0}, {GX_MTX2x4, GX_TG_TEX5, GX_IDENTITY, 0},
    {GX_MTX2x4, GX_TG_TEX6, GX_IDENTITY, 0}, {GX_MTX2x4, GX_TG_TEX7, GX_IDENTITY, 0},
};

/* 803A1F1C-803A1F80 02E57C 0064+00 0/0 1/1 0/0 .rodata          j3dDefaultTexMtxInfo */
extern J3DTexMtxInfo const j3dDefaultTexMtxInfo = {
    0x01,
    0x00,
    0xFF,
    0xFF,
    {0.0f, 0.0f, 0.0f},
    {1.0f, 1.0f, 0, 0.0f, 0.0f},
    {1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f,
     1.0f},
};

/* 803A1F80-803A1F9C 02E5E0 001C+00 0/0 2/2 0/0 .rodata          j3dDefaultIndTexMtxInfo */
extern J3DIndTexMtxInfo const j3dDefaultIndTexMtxInfo = {
    0.5f, 0.0f, 0.0f,
    0.0f, 0.5f, 0.0f,
    1
};

/* 803A1F9C-803A1FB0 02E5FC 0014+00 0/0 1/1 0/0 .rodata          j3dDefaultTevStageInfo */
extern J3DTevStageInfo const j3dDefaultTevStageInfo = {
    0x04, 0x0A, 0x0F, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00,
    0x05, 0x07, 0x07, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
};

/* 803A1FB0-803A1FBC 02E610 000C+00 0/0 2/2 0/0 .rodata          j3dDefaultIndTevStageInfo */
extern J3DIndTevStageInfo const j3dDefaultIndTevStageInfo = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 803A1FBC-803A1FE8 02E61C 002C+00 0/0 3/3 0/0 .rodata          j3dDefaultFogInfo */
extern J3DFogInfo const j3dDefaultFogInfo = {
    0x00, 0x00, 0x0140, 0.0f, 0.0f, 0.1f, 10000.0f, 0xFF, 0xFF, 0xFF, 0x00,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
};

/* 803A1FE8-803A1FF8 02E648 0010+00 0/0 3/3 0/0 .rodata          j3dDefaultNBTScaleInfo */
extern J3DNBTScaleInfo const j3dDefaultNBTScaleInfo = {
    0x00, 1.0f, 1.0f, 1.0f,
};

/* 80434C98-80436A60 0619B8 1DC7+01 1/1 0/0 0/0 .bss             j3dTexCoordTable */
static u8 j3dTexCoordTable[7623 + 1 /* padding */];

/* 80324194-8032423C 31EAD4 00A8+00 0/0 1/1 0/0 .text            makeTexCoordTable__Fv */
void makeTexCoordTable() {
    u8 texMtx[] = {
        GX_TEXMTX0,
        GX_TEXMTX1,
        GX_TEXMTX2,
        GX_TEXMTX3,
        GX_TEXMTX4,
        GX_TEXMTX5,
        GX_TEXMTX6,
        GX_TEXMTX7,
        GX_TEXMTX8,
        GX_TEXMTX9,
        GX_IDENTITY,
    };

    u8* table = j3dTexCoordTable;
    for (u32 i = 0; i < 11; i++) {
        for (u32 j = 0; j < 21; j++) {
            for (int k = 0; k < ARRAY_SIZE(texMtx); k++) {
                u32 idx = j * 11 + i * 0xe7 + k;
                table[idx * 3 + 0] = i;
                table[idx * 3 + 1] = j;
                table[idx * 3 + 2] = texMtx[k];
            }
        }
    }
}

/* ############################################################################################## */
/* 80436A60-80436E60 063780 0400+00 1/1 3/3 0/0 .bss             j3dTevSwapTableTable */
u8 j3dTevSwapTableTable[1024];

/* 80436E60-80437160 063B80 0300+00 1/1 2/2 0/0 .bss             j3dAlphaCmpTable */
u8 j3dAlphaCmpTable[768];

/* 8032423C-803242A8 31EB7C 006C+00 0/0 1/1 0/0 .text            makeAlphaCmpTable__Fv */
void makeAlphaCmpTable() {
    u8* table = j3dAlphaCmpTable;
    for (u32 i = 0; i < 8; i++) {
        for (int j = 0; j < 4; j++) {
            for (u32 k = 0; k < 8; k++) {
                u32 idx = i * 32 + j * 8 + k;
                table[idx * 3] = i;
                table[idx * 3 + 1] = j;
                table[idx * 3 + 2] = k;
            }
        }
    }
}

/* ############################################################################################## */
/* 80437160-804371C0 063E80 0060+00 1/1 4/4 5/5 .bss             j3dZModeTable */
extern u8 j3dZModeTable[96];
u8 j3dZModeTable[96];

/* 803242A8-80324314 31EBE8 006C+00 0/0 1/1 0/0 .text            makeZModeTable__Fv */
void makeZModeTable() {
    u8* table = j3dZModeTable;
    for (int i = 0; i < 2; i++) {
        for (u32 j = 0; j < 8; j++) {
            for (int k = 0; k < 2; k++) {
                u32 idx = j * 2 + i * 16 + k;
                table[idx * 3 + 0] = i;
                table[idx * 3 + 1] = j;
                table[idx * 3 + 2] = k;
            }
        }
    }
}

/* 80324314-80324358 31EC54 0044+00 0/0 1/1 0/0 .text            makeTevSwapTable__Fv */
void makeTevSwapTable() {
    u8* table = j3dTevSwapTableTable;
    int i = 0;
    do {
        table[0] = i >> 6;
        table[1] = (i >> 4) & 3;
        table[2] = (i >> 2) & 3;
        table[3] = i & 3;
        i++;
        table += 4;
    } while (i < 256);
}

/* 80324358-803243BC 31EC98 0064+00 1/1 0/0 0/0 .text            loadTexMtx__9J3DTexMtxCFUl */
void J3DTexMtx::loadTexMtx(u32 param_0) const {
    GDOverflowCheck(0x35);
	J3DGDLoadTexMtxImm((MtxP)mMtx, param_0 * 3 + 30, (_GXTexMtxType)mTexMtxInfo.mProjection);
}

/* 803243BC-8032441C 31ECFC 0060+00 1/1 0/0 0/0 .text            loadPostTexMtx__9J3DTexMtxCFUl */
void J3DTexMtx::loadPostTexMtx(u32 param_0) const {
    GDOverflowCheck(0x35);
    J3DGDLoadPostTexMtxImm((MtxP)mMtx, param_0 * 3 + 0x40);
}

/* 8032441C-8032499C 31ED5C 0580+00 1/1 0/0 0/0 .text J3DGDLoadTexMtxImm__FPA4_fUl13_GXTexMtxType
 */
static void J3DGDLoadTexMtxImm(f32 (*param_1)[4], u32 param_2, _GXTexMtxType param_3) {
    u16 addr = param_2 << 2;
    u8 len = param_3 == GX_MTX2x4 ? 8 : 12;
    J3DGDWriteXFCmdHdr(addr & 0xffff, len);
    J3DGDWrite_f32(param_1[0][0]);
    J3DGDWrite_f32(param_1[0][1]);
    J3DGDWrite_f32(param_1[0][2]);
    J3DGDWrite_f32(param_1[0][3]);
    J3DGDWrite_f32(param_1[1][0]);
    J3DGDWrite_f32(param_1[1][1]);
    J3DGDWrite_f32(param_1[1][2]);
    J3DGDWrite_f32(param_1[1][3]);
    if (param_3 == GX_MTX3x4) {
        J3DGDWrite_f32(param_1[2][0]);
        J3DGDWrite_f32(param_1[2][1]);
        J3DGDWrite_f32(param_1[2][2]);
        J3DGDWrite_f32(param_1[2][3]);
    }
}

/* 8032499C-80324F08 31F2DC 056C+00 1/1 0/0 0/0 .text            J3DGDLoadPostTexMtxImm__FPA4_fUl */
static void J3DGDLoadPostTexMtxImm(f32 (*param_1)[4], u32 param_2) {
    u16 addr = (param_2 - 0x40) * 4 + 0x500;
    J3DGDWriteXFCmdHdr(addr, 12);
    J3DGDWrite_f32(param_1[0][0]);
    J3DGDWrite_f32(param_1[0][1]);
    J3DGDWrite_f32(param_1[0][2]);
    J3DGDWrite_f32(param_1[0][3]);
    J3DGDWrite_f32(param_1[1][0]);
    J3DGDWrite_f32(param_1[1][1]);
    J3DGDWrite_f32(param_1[1][2]);
    J3DGDWrite_f32(param_1[1][3]);
    J3DGDWrite_f32(param_1[2][0]);
    J3DGDWrite_f32(param_1[2][1]);
    J3DGDWrite_f32(param_1[2][2]);
    J3DGDWrite_f32(param_1[2][3]);
}

/* ############################################################################################## */
/* 804563C0-804563C4 0049C0 0004+00 0/0 4/4 0/0 .sdata2          j3dDefaultColInfo */
extern const GXColor j3dDefaultColInfo = {0xFF, 0xFF, 0xFF, 0xFF};

/* 804563C4-804563C8 0049C4 0004+00 0/0 2/2 0/0 .sdata2          j3dDefaultAmbInfo */
extern const GXColor j3dDefaultAmbInfo = {0x32, 0x32, 0x32, 0x32};

/* 804563C8-804563CC 0049C8 0004+00 0/0 1/1 0/0 .sdata2          None */
extern const u8 data_804563C8 = 0x01;

/* 804563CC-804563D0 0049CC 0004+00 0/0 3/3 0/0 .sdata2          j3dDefaultTevOrderInfoNull */
extern const J3DTevOrderInfo j3dDefaultTevOrderInfoNull = {0xFF, 0xFF, 0xFF, 0x00};

/* 804563D0-804563D4 0049D0 0004+00 0/0 2/2 0/0 .sdata2          j3dDefaultIndTexOrderNull */
extern const J3DIndTexOrderInfo j3dDefaultIndTexOrderNull = {0xFF, 0xFF, 0x00, 0x00};

/* 804563D4-804563D8 0049D4 0004+00 0/0 5/5 0/0 .sdata2          j3dDefaultTevColor */
extern const GXColorS10 j3dDefaultTevColor = {0xFF, 0xFF, 0xFF, 0xFF};

/* 804563DC-804563E0 0049DC 0004+00 0/0 2/2 0/0 .sdata2          j3dDefaultIndTexCoordScaleInfo */
extern const J3DIndTexCoordScaleInfo j3dDefaultIndTexCoordScaleInfo = {
    0x00,
    0x00,
    0x00,
    0x00,
};

/* 804563E0-804563E4 0049E0 0004+00 0/0 5/5 0/0 .sdata2          j3dDefaultTevKColor */
extern const GXColor j3dDefaultTevKColor = {0xFF, 0xFF, 0xFF, 0xFF};

/* 804563E4-804563E8 0049E4 0004+00 0/0 2/2 0/0 .sdata2          j3dDefaultTevSwapMode */
extern J3DTevSwapModeInfo const j3dDefaultTevSwapMode = {
    0x00,
    0x00,
    0x00,
    0x00,
};

/* 804563E8-804563EC 0049E8 0004+00 0/0 2/2 0/0 .sdata2          j3dDefaultTevSwapModeTable */
extern const J3DTevSwapModeTableInfo j3dDefaultTevSwapModeTable = {0x00, 0x01, 0x02, 0x03};

/* 804563EC-804563F0 0049EC 0004+00 0/0 3/3 0/0 .sdata2          j3dDefaultBlendInfo */
extern const J3DBlendInfo j3dDefaultBlendInfo = {GX_BM_BLEND, GX_BL_SRC_ALPHA, GX_BL_INV_SRC_ALPHA, GX_LO_NOOP};

/* 804563F0-804563F8 0049F0 0008+00 0/0 3/3 0/0 .sdata2          j3dDefaultColorChanInfo */
extern const J3DColorChanInfo j3dDefaultColorChanInfo = {
    0x00, 0x00, 0x00, 0x02, 0x02, 0x00, 0xFF, 0xFF,
};

/* 804563F8-804563FA 0049F8 0002+00 0/0 1/1 0/0 .sdata2          None */
extern const u16 data_804563F8 = 0x1B00;

/* 804563FA-804563FC 0049FA 0002+00 0/0 1/1 0/0 .sdata2          j3dDefaultAlphaCmpID */
const u16 j3dDefaultAlphaCmpID = 0x00E7;

/* 804563FC-80456400 0049FC 0002+02 0/0 3/3 0/0 .sdata2          j3dDefaultZModeID */
const u16 j3dDefaultZModeID = 0x0017;
