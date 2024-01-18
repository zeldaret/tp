#include "dolphin/base/PPCArch.h"
#include "dolphin/gx.h"
#include "dolphin/os.h"
#include "dolphin/vi.h"

char* __GXVersion = "<< Dolphin SDK - GX	release build: Nov 10 2004 06:27:12 (0x2301) >>";

/* 8044CE00-8044CE80 079B20 0080+00 1/1 0/0 0/0 .bss             FifoObj */
static GXFifoObj FifoObj;

/* 8044CE80-8044D430 079BA0 05B0+00 1/0 0/0 0/0 .bss             gxData */
static GXData gxData;

/* 80456580-80456584 -00001 0004+00 6/6 108/108 0/0 .sdata2          __GXData */
GXData* const __GXData = &gxData;

/* 8035921C-80359318 353B5C 00FC+00 1/1 0/0 0/0 .text            __GXDefaultTexRegionCallback */
GXTexRegion* __GXDefaultTexRegionCallback(const GXTexObj* obj, GXTexMapID id) {
    GXTexFmt format;  // r31
    GXBool isMipMap;  // r3

    format = GXGetTexObjFmt(obj);
    isMipMap = GXGetTexObjMipMap(obj);
    id = (GXTexMapID)(id % GX_MAX_TEXMAP);

    switch (format) {
    case GX_TF_RGBA8:
        if (isMipMap) {
            return &__GXData->TexRegions2[id];
        }
        return &__GXData->TexRegions1[id];

    case GX_TF_C4:
    case GX_TF_C8:
    case GX_TF_C14X2:
        return &__GXData->TexRegions0[id];

    default:
        if (isMipMap) {
            return &__GXData->TexRegions1[id];
        }
        return &__GXData->TexRegions0[id];
    }
}

/* 80359318-8035933C 353C58 0024+00 1/1 0/0 0/0 .text            __GXDefaultTlutRegionCallback */
GXTlutRegion* __GXDefaultTlutRegionCallback(u32 tlut) {
    if (tlut >= 0x14) {
        return NULL;
    } else {
        return &__GXData->TlutRegions[tlut];
    }
}

/* 80451944-80451948 000E44 0004+00 1/1 0/0 0/0 .sbss            resetFuncRegistered$145 */
u32 resetFuncRegistered;

/* 80451940-80451944 000E40 0004+00 1/1 0/0 0/0 .sbss            calledOnce$37 */
u32 calledOnce;

/* 80451938-8045193C 000E38 0004+00 1/1 0/0 0/0 .sbss            time$36 */
OSTime time;

/* 80451930-80451938 000E30 0004+04 1/1 0/0 0/0 .sbss            peCount$35 */
u32 peCount;

/* 8045192C-80451930 000E2C 0004+00 2/2 2/2 0/0 .sbss            __memReg */
vu16* __memReg;

/* 80451928-8045192C 000E28 0004+00 1/1 11/11 0/0 .sbss            __peReg */
u16* __peReg;

/* 80451924-80451928 000E24 0004+00 2/2 12/12 0/0 .sbss            __cpReg */
u16* __cpReg;

/* ############################################################################################## */
/* 80451920-80451924 000E20 0004+00 1/1 2/2 0/0 .sbss            __piReg */
u32* __piReg;

/* 8035933C-803594CC 353C7C 0190+00 1/0 0/0 0/0 .text            __GXShutdown */
BOOL __GXShutdown(BOOL final) {
    u32 val;
    u32 newPeCount;
    OSTime newTime;

    if (!final) {
        if (!calledOnce) {
            peCount = GXReadMEMReg(0x28, 0x27);
            time = OSGetTime();
            calledOnce = 1;
            return FALSE;
        }

        newTime = OSGetTime();
        newPeCount = GXReadMEMReg(0x28, 0x27);

        if (newTime - time < 10) {
            return FALSE;
        }

        if (newPeCount != peCount) {
            peCount = newPeCount;
            time = newTime;
            return FALSE;
        }

    } else {
        GXSetBreakPtCallback(NULL);
        GXSetDrawSyncCallback(NULL);
        GXSetDrawDoneCallback(NULL);

        GX_WRITE_U32(0);
        GX_WRITE_U32(0);
        GX_WRITE_U32(0);
        GX_WRITE_U32(0);
        GX_WRITE_U32(0);
        GX_WRITE_U32(0);
        GX_WRITE_U32(0);
        GX_WRITE_U32(0);

        PPCSync();

        GX_SET_CP_REG(1, 0);
        GX_SET_CP_REG(2, 3);

        __GXData->abtWaitPECopy = GX_TRUE;

        __GXAbort();
    }

    return TRUE;
}

/* 803594CC-80359670 353E0C 01A4+00 1/1 1/1 0/0 .text            __GXInitRevisionBits */
void __GXInitRevisionBits(void) {
    u32 i;
    for (i = 0; i < 8; i++) {
        FAST_FLAG_SET(__GXData->vatA[i], 1, 30, 33);
        FAST_FLAG_SET(__GXData->vatB[i], 1, 31, 33);

        GX_WRITE_U8(0x8);
        GX_WRITE_U8(i | 0x80);
        GX_WRITE_U32(__GXData->vatB[i]);
    }

    {
        u32 reg1 = 0;
        u32 reg2 = 0;

        FAST_FLAG_SET(reg1, 1, 0, 1);
        FAST_FLAG_SET(reg1, 1, 1, 1);
        FAST_FLAG_SET(reg1, 1, 2, 1);
        FAST_FLAG_SET(reg1, 1, 3, 1);
        FAST_FLAG_SET(reg1, 1, 4, 1);
        FAST_FLAG_SET(reg1, 1, 5, 1);
        GX_WRITE_U8(0x10);
        GX_WRITE_U32(0x1000);
        GX_WRITE_U32(reg1);

        FAST_FLAG_SET(reg2, 1, 0, 1);
        GX_WRITE_U8(0x10);
        GX_WRITE_U32(0x1012);
        GX_WRITE_U32(reg2);
    }

    {
        u32 reg = 0;
        FAST_FLAG_SET(reg, 1, 0, 1);
        FAST_FLAG_SET(reg, 1, 1, 1);
        FAST_FLAG_SET(reg, 1, 2, 1);
        FAST_FLAG_SET(reg, 1, 3, 1);
        FAST_FLAG_SET(reg, 0x58, 24, 8);
        GX_WRITE_U8(0x61);
        GX_WRITE_U32(reg);
    }
}

/* 803D20A0-803D20C0 02F1C0 0020+00 0/1 0/0 0/0 .data            DefaultTexData */
static u16 DefaultTexData[] ALIGN_DECL(32) = {
    0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF,
    0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF,
};

/* 803D20C0-803D2190 02F1E0 00D0+00 0/1 0/0 0/0 .data            GXDefaultVATList */
static GXVtxAttrFmtList GXDefaultVATList[] = {
    {GX_VA_POS, GX_POS_XYZ, GX_F32, 0},
    {GX_VA_NRM, GX_NRM_XYZ, GX_F32, 0},
    {GX_VA_CLR0, GX_CLR_RGBA, GX_RGBA8, 0},
    {GX_VA_CLR1, GX_CLR_RGBA, GX_RGBA8, 0},
    {GX_VA_TEX0, GX_TEX_ST, GX_F32, 0},
    {GX_VA_TEX1, GX_TEX_ST, GX_F32, 0},
    {GX_VA_TEX2, GX_TEX_ST, GX_F32, 0},
    {GX_VA_TEX3, GX_TEX_ST, GX_F32, 0},
    {GX_VA_TEX4, GX_TEX_ST, GX_F32, 0},
    {GX_VA_TEX5, GX_TEX_ST, GX_F32, 0},
    {GX_VA_TEX6, GX_TEX_ST, GX_F32, 0},
    {GX_VA_TEX7, GX_TEX_ST, GX_F32, 0},
    {GX_VA_NULL, GX_COMPCNT_NULL, GX_COMP_NULL, 0},
};

/* 803D2190-803D21AC 02F2B0 001C+00 0/1 0/0 0/0 .data            GXDefaultProjData */
static f32 GXDefaultProjData[] = {1.0f, 0.0f, 1.0f, 0.0f, -1.0f, -2.0f, 0.0f};

/* 803D21AC-803D226C 02F2CC 00C0+00 1/1 0/0 0/0 .data            GXTexRegionAddrTable */
static u32 GXTexRegionAddrTable[] = {
    0x00000, 0x10000, 0x20000, 0x30000, 0x40000, 0x50000, 0x60000, 0x70000, 0x08000, 0x18000,
    0x28000, 0x38000, 0x48000, 0x58000, 0x68000, 0x78000, 0x00000, 0x90000, 0x20000, 0xB0000,
    0x40000, 0x98000, 0x60000, 0xB8000, 0x80000, 0x10000, 0xA0000, 0x30000, 0x88000, 0x50000,
    0xA8000, 0x70000, 0x00000, 0x90000, 0x20000, 0xB0000, 0x40000, 0x90000, 0x60000, 0xB0000,
    0x80000, 0x10000, 0xA0000, 0x30000, 0x80000, 0x50000, 0xA0000, 0x70000,
};

/* 803D226C-803D2280 -00001 0010+04 1/1 0/0 0/0 .data            GXResetFuncInfo */
static OSResetFunctionInfo GXResetFuncInfo = {__GXShutdown, OS_RESET_PRIO_GX};

/* 80359670-80359C70 353FB0 0600+00 0/0 2/2 0/0 .text            GXInit */
static void EnableWriteGatherPipe() {
    u32 hid2;  // r31
    hid2 = PPCMfhid2();
    PPCMtwpar(OSUncachedToPhysical((void*)GXFIFO_ADDR));
    hid2 |= 0x40000000;
    PPCMthid2(hid2);
}

GXFifoObj* GXInit(void* base, u32 size) {
    u32 i;
    u32 pad2;  // for stack matching

    OSRegisterVersion(__GXVersion);
    __GXData->inDispList = GX_FALSE;
    __GXData->dlSaveContext = GX_TRUE;
    __GXData->abtWaitPECopy = GX_TRUE;

    __GXData->tcsManEnab = 0;
    __GXData->tevTcEnab = 0;

    GXSetMisc(GX_MT_XF_FLUSH, 0);

    __piReg = (void*)OSPhysicalToUncached(GX_PI_ADDR);
    __cpReg = (void*)OSPhysicalToUncached(GX_CP_ADDR);
    __peReg = (void*)OSPhysicalToUncached(GX_PE_ADDR);
    __memReg = (void*)OSPhysicalToUncached(GX_MEM_ADDR);

    __GXFifoInit();

    GXInitFifoBase(&FifoObj, base, size);
    GXSetCPUFifo(&FifoObj);
    GXSetGPFifo(&FifoObj);

    if (!resetFuncRegistered) {
        OSRegisterResetFunction(&GXResetFuncInfo);
        resetFuncRegistered = 1;
    }

    __GXPEInit();
    EnableWriteGatherPipe();

    __GXData->genMode = 0;
    FAST_FLAG_SET(__GXData->genMode, 0, 24, 8);

    __GXData->bpMask = 255;
    FAST_FLAG_SET(__GXData->bpMask, 0xF, 24, 8);

    __GXData->lpSize = 0;
    FAST_FLAG_SET(__GXData->lpSize, 34, 24, 8);

    for (i = 0; i < GX_MAX_TEVSTAGE; i++) {
        __GXData->tevc[i] = 0;
        __GXData->teva[i] = 0;
        __GXData->tref[i / 2] = 0;
        __GXData->texmapId[i] = GX_TEXMAP_NULL;

        FAST_FLAG_SET(__GXData->tevc[i], 0xC0 + i * 2, 24, 8);
        FAST_FLAG_SET(__GXData->teva[i], 0xC1 + i * 2, 24, 8);
        FAST_FLAG_SET(__GXData->tevKsel[i / 2], 0xF6 + i / 2, 24, 8);
        FAST_FLAG_SET(__GXData->tref[i / 2], 0x28 + i / 2, 24, 8);
    }

    __GXData->iref = 0;
    FAST_FLAG_SET(__GXData->iref, 0x27, 24, 8);

    for (i = 0; i < GX_MAXCOORD; i++) {
        __GXData->suTs0[i] = 0;
        __GXData->suTs1[i] = 0;

        FAST_FLAG_SET(__GXData->suTs0[i], 0x30 + i * 2, 24, 8);
        FAST_FLAG_SET(__GXData->suTs1[i], 0x31 + i * 2, 24, 8);
    }

    FAST_FLAG_SET(__GXData->suScis0, 0x20, 24, 8);
    FAST_FLAG_SET(__GXData->suScis1, 0x21, 24, 8);

    FAST_FLAG_SET(__GXData->cmode0, 0x41, 24, 8);
    FAST_FLAG_SET(__GXData->cmode1, 0x42, 24, 8);

    FAST_FLAG_SET(__GXData->zmode, 0x40, 24, 8);
    FAST_FLAG_SET(__GXData->peCtrl, 0x43, 24, 8);

    FAST_FLAG_SET(__GXData->cpTex, 0, 7, 2);

    __GXData->zScale = 1.6777216E7f;
    __GXData->zOffset = 0.0f;

    __GXData->dirtyState = 0;
    __GXData->dirtyVAT = 0;

    {
        u32 val1;
        u32 val2;

        val2 = OS_BUS_CLOCK / 500;

        __GXFlushTextureState();

        val1 = (val2 / 2048) | 0x69000400;

        GX_WRITE_U8(0x61);
        GX_WRITE_U32(val1);

        __GXFlushTextureState();

        val1 = (val2 / 4224) | 0x46000200;
        GX_WRITE_U8(0x61);
        GX_WRITE_U32(val1);
    }

    __GXInitRevisionBits();

    for (i = 0; i < GX_MAX_TEXMAP; i++) {
        GXInitTexCacheRegion(&__GXData->TexRegions0[i], GX_FALSE, GXTexRegionAddrTable[i],
                             GX_TEXCACHE_32K, GXTexRegionAddrTable[i + 8], GX_TEXCACHE_32K);
        GXInitTexCacheRegion(&__GXData->TexRegions1[i], GX_FALSE, GXTexRegionAddrTable[i + 16],
                             GX_TEXCACHE_32K, GXTexRegionAddrTable[i + 24], GX_TEXCACHE_32K);
        GXInitTexCacheRegion(&__GXData->TexRegions2[i], GX_TRUE, GXTexRegionAddrTable[i + 32],
                             GX_TEXCACHE_32K, GXTexRegionAddrTable[i + 40], GX_TEXCACHE_32K);
    }

    for (i = 0; i < GX_MAX_TLUT; i++) {
        GXInitTlutRegion(&__GXData->TlutRegions[i], 0xC0000 + 0x2000 * i, GX_TLUT_256);
    }

    for (i = 0; i < GX_MAX_BIGTLUT; i++) {
        GXInitTlutRegion(&__GXData->TlutRegions[i + 16], 0xE0000 + 0x8000 * i, GX_TLUT_1K);
    }

    GX_SET_CP_REG(3, 0);

    FAST_FLAG_SET(__GXData->perfSel, 0, 4, 4);

    GX_WRITE_U8(0x8);
    GX_WRITE_U8(0x20);
    GX_WRITE_U32(__GXData->perfSel);

    GX_WRITE_U8(0x10);
    GX_WRITE_U32(0x1006);
    GX_WRITE_U32(0);

    GX_WRITE_U8(0x61);
    GX_WRITE_U32(0x23000000);

    GX_WRITE_U8(0x61);
    GX_WRITE_U32(0x24000000);

    GX_WRITE_U8(0x61);
    GX_WRITE_U32(0x67000000);

    __GXSetIndirectMask(0);
    __GXSetTmemConfig(2);
    __GXInitGX();

    return &FifoObj;
}

/* 80359C70-8035A5A8 3545B0 0938+00 1/1 0/0 0/0 .text            __GXInitGX */
void __GXInitGX(void) {
    GXRenderModeObj* renderObj;
    GXTexObj texObj;
    Mtx ident;
    GXColor clearColor = {64, 64, 64, 255};
    GXColor ambColor = {0, 0, 0, 0};
    GXColor matColor = {255, 255, 255, 255};
    u32 i;

    switch (VIGetTvFormat()) {
    case VI_NTSC:
        renderObj = &GXNtsc480IntDf;
        break;

    case VI_PAL:
        renderObj = &GXPal528IntDf;
        break;

    case VI_EURGB60:
        renderObj = &GXEurgb60Hz480IntDf;
        break;

    case VI_MPAL:
        renderObj = &GXMpal480IntDf;
        break;

    default:
        renderObj = &GXNtsc480IntDf;
        break;
    }

    GXSetCopyClear(clearColor, 0xFFFFFF);

    GXSetTexCoordGen2(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY, GX_FALSE, GX_PTIDENTITY);
    GXSetTexCoordGen2(GX_TEXCOORD1, GX_TG_MTX2x4, GX_TG_TEX1, GX_IDENTITY, GX_FALSE, GX_PTIDENTITY);
    GXSetTexCoordGen2(GX_TEXCOORD2, GX_TG_MTX2x4, GX_TG_TEX2, GX_IDENTITY, GX_FALSE, GX_PTIDENTITY);
    GXSetTexCoordGen2(GX_TEXCOORD3, GX_TG_MTX2x4, GX_TG_TEX3, GX_IDENTITY, GX_FALSE, GX_PTIDENTITY);
    GXSetTexCoordGen2(GX_TEXCOORD4, GX_TG_MTX2x4, GX_TG_TEX4, GX_IDENTITY, GX_FALSE, GX_PTIDENTITY);
    GXSetTexCoordGen2(GX_TEXCOORD5, GX_TG_MTX2x4, GX_TG_TEX5, GX_IDENTITY, GX_FALSE, GX_PTIDENTITY);
    GXSetTexCoordGen2(GX_TEXCOORD6, GX_TG_MTX2x4, GX_TG_TEX6, GX_IDENTITY, GX_FALSE, GX_PTIDENTITY);
    GXSetTexCoordGen2(GX_TEXCOORD7, GX_TG_MTX2x4, GX_TG_TEX7, GX_IDENTITY, GX_FALSE, GX_PTIDENTITY);

    GXSetNumTexGens(1);
    GXClearVtxDesc();
    GXInvalidateVtxCache();

    for (i = GX_VA_POS; i <= GX_LIGHT_ARRAY; i++) {
        GXSetArray((GXAttr)i, __GXData, 0);
    }

    for (i = 0; i < GX_MAX_VTXFMT; i++) {
        GXSetVtxAttrFmtv((GXVtxFmt)i, GXDefaultVATList);
    }

    GXSetLineWidth(6, GX_TO_ZERO);
    GXSetPointSize(6, GX_TO_ZERO);
    GXEnableTexOffsets(GX_TEXCOORD0, GX_FALSE, GX_FALSE);
    GXEnableTexOffsets(GX_TEXCOORD1, GX_FALSE, GX_FALSE);
    GXEnableTexOffsets(GX_TEXCOORD2, GX_FALSE, GX_FALSE);
    GXEnableTexOffsets(GX_TEXCOORD3, GX_FALSE, GX_FALSE);
    GXEnableTexOffsets(GX_TEXCOORD4, GX_FALSE, GX_FALSE);
    GXEnableTexOffsets(GX_TEXCOORD5, GX_FALSE, GX_FALSE);
    GXEnableTexOffsets(GX_TEXCOORD6, GX_FALSE, GX_FALSE);
    GXEnableTexOffsets(GX_TEXCOORD7, GX_FALSE, GX_FALSE);

    ident[0][0] = 1.0f;
    ident[0][1] = 0.0f;
    ident[0][2] = 0.0f;
    ident[0][3] = 0.0f;

    ident[1][0] = 0.0f;
    ident[1][1] = 1.0f;
    ident[1][2] = 0.0f;
    ident[1][3] = 0.0f;

    ident[2][0] = 0.0f;
    ident[2][1] = 0.0f;
    ident[2][2] = 1.0f;
    ident[2][3] = 0.0f;

    GXLoadPosMtxImm(ident, GX_PNMTX0);
    GXLoadNrmMtxImm(ident, GX_PNMTX0);
    GXSetCurrentMtx(GX_PNMTX0);

    GXLoadTexMtxImm(ident, GX_IDENTITY, GX_MTX3x4);
    GXLoadTexMtxImm(ident, GX_PTIDENTITY, GX_MTX3x4);

    GXSetViewport(0.0f, 0.0f, renderObj->fb_width, renderObj->xfb_height, 0.0f, 1.0f);

    GXSetProjectionv(GXDefaultProjData);

    GXSetCoPlanar(GX_FALSE);
    GXSetCullMode(GX_CULL_BACK);
    GXSetClipMode(GX_CLIP_ENABLE);

    GXSetScissor(0, 0, renderObj->fb_width, renderObj->efb_height);
    GXSetScissorBoxOffset(0, 0);

    GXSetNumChans(0);
    GXSetChanCtrl(GX_COLOR0A0, GX_FALSE, GX_SRC_REG, GX_SRC_VTX, 0, GX_DF_NONE, GX_AF_NONE);
    GXSetChanAmbColor(GX_COLOR0A0, ambColor);
    GXSetChanMatColor(GX_COLOR0A0, matColor);

    GXSetChanCtrl(GX_COLOR1A1, GX_FALSE, GX_SRC_REG, GX_SRC_VTX, 0, GX_DF_NONE, GX_AF_NONE);
    GXSetChanAmbColor(GX_COLOR1A1, ambColor);
    GXSetChanMatColor(GX_COLOR1A1, matColor);

    GXInvalidateTexAll();
    GXSetTexRegionCallback(__GXDefaultTexRegionCallback);
    GXSetTlutRegionCallback(__GXDefaultTlutRegionCallback);

    GXInitTexObj(&texObj, DefaultTexData, 4, 4, GX_TF_IA8, GX_CLAMP, GX_CLAMP, GX_FALSE);
    GXLoadTexObj(&texObj, GX_TEXMAP0);
    GXLoadTexObj(&texObj, GX_TEXMAP1);
    GXLoadTexObj(&texObj, GX_TEXMAP2);
    GXLoadTexObj(&texObj, GX_TEXMAP3);
    GXLoadTexObj(&texObj, GX_TEXMAP4);
    GXLoadTexObj(&texObj, GX_TEXMAP5);
    GXLoadTexObj(&texObj, GX_TEXMAP6);
    GXLoadTexObj(&texObj, GX_TEXMAP7);

    GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
    GXSetTevOrder(GX_TEVSTAGE1, GX_TEXCOORD1, GX_TEXMAP1, GX_COLOR0A0);
    GXSetTevOrder(GX_TEVSTAGE2, GX_TEXCOORD2, GX_TEXMAP2, GX_COLOR0A0);
    GXSetTevOrder(GX_TEVSTAGE3, GX_TEXCOORD3, GX_TEXMAP3, GX_COLOR0A0);
    GXSetTevOrder(GX_TEVSTAGE4, GX_TEXCOORD4, GX_TEXMAP4, GX_COLOR0A0);
    GXSetTevOrder(GX_TEVSTAGE5, GX_TEXCOORD5, GX_TEXMAP5, GX_COLOR0A0);
    GXSetTevOrder(GX_TEVSTAGE6, GX_TEXCOORD6, GX_TEXMAP6, GX_COLOR0A0);
    GXSetTevOrder(GX_TEVSTAGE7, GX_TEXCOORD7, GX_TEXMAP7, GX_COLOR0A0);

    GXSetTevOrder(GX_TEVSTAGE8, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR_NULL);
    GXSetTevOrder(GX_TEVSTAGE9, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR_NULL);
    GXSetTevOrder(GX_TEVSTAGE10, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR_NULL);
    GXSetTevOrder(GX_TEVSTAGE11, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR_NULL);
    GXSetTevOrder(GX_TEVSTAGE12, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR_NULL);
    GXSetTevOrder(GX_TEVSTAGE13, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR_NULL);
    GXSetTevOrder(GX_TEVSTAGE14, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR_NULL);
    GXSetTevOrder(GX_TEVSTAGE15, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR_NULL);

    GXSetNumTevStages(1);
    GXSetTevOp(GX_TEVSTAGE0, GX_REPLACE);

    GXSetAlphaCompare(GX_ALWAYS, 0, GX_AOP_AND, GX_ALWAYS, 0);

    GXSetZTexture(GX_ZT_DISABLE, GX_TF_Z8, 0);

    for (i = 0; i < GX_MAX_TEVSTAGE; i++) {
        GXSetTevKColorSel((GXTevStageID)i, GX_TEV_KCSEL_1_4);
        GXSetTevKAlphaSel((GXTevStageID)i, GX_TEV_KASEL_1);
        GXSetTevSwapMode((GXTevStageID)i, GX_TEV_SWAP0, GX_TEV_SWAP0);
    }

    GXSetTevSwapModeTable(GX_TEV_SWAP0, GX_CH_RED, GX_CH_GREEN, GX_CH_BLUE, GX_CH_ALPHA);
    GXSetTevSwapModeTable(GX_TEV_SWAP1, GX_CH_RED, GX_CH_RED, GX_CH_RED, GX_CH_ALPHA);
    GXSetTevSwapModeTable(GX_TEV_SWAP2, GX_CH_GREEN, GX_CH_GREEN, GX_CH_GREEN, GX_CH_ALPHA);
    GXSetTevSwapModeTable(GX_TEV_SWAP3, GX_CH_BLUE, GX_CH_BLUE, GX_CH_BLUE, GX_CH_ALPHA);

    for (i = 0; i < GX_MAX_TEVSTAGE; i++) {
        GXSetTevDirect((GXTevStageID)i);
    }

    GXSetNumIndStages(0);
    GXSetIndTexCoordScale(GX_INDTEXSTAGE0, GX_ITS_1, GX_ITS_1);
    GXSetIndTexCoordScale(GX_INDTEXSTAGE1, GX_ITS_1, GX_ITS_1);
    GXSetIndTexCoordScale(GX_INDTEXSTAGE2, GX_ITS_1, GX_ITS_1);
    GXSetIndTexCoordScale(GX_INDTEXSTAGE3, GX_ITS_1, GX_ITS_1);

    GXSetFog(GX_FOG_NONE, 0.0f, 1.0f, 0.1f, 1.0f, ambColor);
    GXSetFogRangeAdj(GX_FALSE, 0, NULL);

    GXSetBlendMode(GX_BM_NONE, GX_BL_SRC_ALPHA, GX_BL_INV_SRC_ALPHA, GX_LO_CLEAR);

    GXSetColorUpdate(GX_TRUE);
    GXSetAlphaUpdate(GX_TRUE);

    GXSetZMode(GX_TRUE, GX_LEQUAL, GX_TRUE);
    GXSetZCompLoc(GX_TRUE);

    GXSetDither(GX_TRUE);

    GXSetDstAlpha(GX_FALSE, 0);
    GXSetPixelFmt(GX_PF_RGB8_Z24, GX_ZC_LINEAR);

    GXSetFieldMask(GX_TRUE, GX_TRUE);
    GXSetFieldMode(
        (GXBool)renderObj->field_rendering,
        (GXBool)((renderObj->vi_height == 2 * renderObj->xfb_height) ? GX_TRUE : GX_FALSE));

    GXSetDispCopySrc(0, 0, renderObj->fb_width, renderObj->efb_height);
    GXSetDispCopyDst(renderObj->fb_width, renderObj->efb_height);
    GXSetDispCopyYScale((f32)renderObj->xfb_height / (f32)renderObj->efb_height);
    GXSetCopyClamp(GX_CLAMP_BOTH);

    GXSetCopyFilter(renderObj->antialiasing, renderObj->sample_pattern, GX_TRUE,
                    renderObj->vfilter);
    GXSetDispCopyGamma(GX_GM_1_0);
    GXSetDispCopyFrame2Field(GX_COPY_PROGRESSIVE);
    GXClearBoundingBox();

    GXPokeColorUpdate(GX_TRUE);
    GXPokeAlphaUpdate(GX_TRUE);
    GXPokeDither(GX_FALSE);
    GXPokeBlendMode(GX_BM_NONE, GX_BL_ZERO, GX_BL_ONE, GX_LO_SET);
    GXPokeAlphaMode(GX_ALWAYS, 0);
    GXPokeAlphaRead(GX_READ_FF);
    GXPokeDstAlpha(GX_FALSE, 0);
    GXPokeZMode(GX_TRUE, GX_ALWAYS, GX_TRUE);
    GXSetGPMetric(GX_PERF0_NONE, GX_PERF1_NONE);
    GXClearGPMetric();
}