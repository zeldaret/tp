/**
 * m_Do_ext.cpp
 * Model, Animation, and Heap Functions
 */

#include "m_Do/m_Do_ext.h"
#include "JSystem/J3DGraphAnimator/J3DMaterialAnm.h"
#include "JSystem/J3DGraphBase/J3DMaterial.h"
#include "JSystem/JKernel/JKRAssertHeap.h"
#include "JSystem/JKernel/JKRExpHeap.h"
#include "JSystem/JKernel/JKRSolidHeap.h"
//#include "JSystem/JUtility/JUTResFont.h"
#include "MSL_C/stdio.h"
#include "Z2AudioLib/Z2Creature.h"
#include "d/com/d_com_inf_game.h"
#include "dol2asm.h"
#include "dolphin/gx/GXDraw.h"
#include "dolphin/mtx/mtx.h"
#include "dolphin/os/OS.h"
#include "dolphin/types.h"
#include "global.h"
#include "m_Do/m_Do_mtx.h"

//
// Types:
//

struct J3DDrawBuffer;

struct J3DDrawBuffer {
    /* 8032548C */ void entryImm(J3DPacket*, u16);
};

struct ResFONT {};

struct JUTResFont {
    /* 802DEF94 */ JUTResFont(ResFONT const*, JKRHeap*);
};

struct JUTFont {
    /* 8001494C */ ~JUTFont();
    /* 80014D9C */ void setGX(JUtility::TColor, JUtility::TColor);
    /* 80014DC8 */ void getCellWidth() const;
    /* 80014DF4 */ void getCellHeight() const;
};

struct JUTCacheFont {
    /* 802DD188 */ JUTCacheFont(ResFONT const*, u32, JKRHeap*);
};

/* J3DMtxCalcNoAnm<J3DMtxCalcCalcTransformMaya, J3DMtxCalcJ3DSysInitMaya> */
struct J3DMtxCalcNoAnm__template0 {
    /* 8000FA20 */ void func_8000FA20(void* _this);
    /* 8001505C */ void func_8001505C(void* _this, Vec const&, f32 const (&)[3][4]);
    /* 80015084 */ void func_80015084(void* _this);
};

struct J3DMtxCalcAnimationAdaptorBase {
    J3DMtxCalcAnimationAdaptorBase() {}
    void change() {}
};

template <typename A0>
struct J3DMtxCalcAnimationAdaptorDefault : public J3DMtxCalcAnimationAdaptorBase {
    J3DMtxCalcAnimationAdaptorDefault(J3DAnmTransform* param_0) {}
};

struct J3DMtxCalcAnmBase /* : public J3DMtxCalc */ {
    J3DMtxCalcAnmBase(J3DAnmTransform* param_0) { mAnmTransform = param_0; }
    /* 8000D8EC */ ~J3DMtxCalcAnmBase();
    /* 80014FB8 */ J3DAnmTransform* getAnmTransform();
    /* 80014FC0 */ void setAnmTransform(J3DAnmTransform*);

    J3DAnmTransform* mAnmTransform;
};

template <typename A0, typename B0>
struct J3DMtxCalcAnimation : public J3DMtxCalcAnmBase {
    J3DMtxCalcAnimation(J3DAnmTransform* param_0) : J3DMtxCalcAnmBase(param_0), field_0x8(param_0) {}
    ~J3DMtxCalcAnimation() {}
    void setAnmTransform(J3DAnmTransform*) {}
    void init(const Vec&, const Mtx&) {}
    void calc() {}

    A0 field_0x8;
};
/* J3DMtxCalcAnimation<J3DMtxCalcAnimationAdaptorDefault<J3DMtxCalcCalcTransformMaya>,
 * J3DMtxCalcJ3DSysInitMaya> */
struct J3DMtxCalcAnimation__template0 {
    /* 8000D8E4 */ void func_8000D8E4(void* _this, J3DAnmTransform*);
    /* 80014FC8 */ void func_80014FC8(void* _this);
    /* 80015034 */ void func_80015034(void* _this, Vec const&, f32 const (&)[3][4]);
    /* 800150AC */ void func_800150AC(void* _this);
};

//
// Forward References:
//

extern "C" static void mDoExt_setJ3DData__FPA4_fPC16J3DTransformInfoUs();
extern "C" void initPlay__14mDoExt_baseAnmFsifss();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_bpkAnmFP16J3DMaterialTableP11J3DAnmColoriifss();
extern "C" void entry__13mDoExt_bpkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss();
extern "C" void entry__13mDoExt_btpAnmFP16J3DMaterialTables();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb();
extern "C" void func_8000D8E4(void* _this, J3DAnmTransform*);
extern "C" void __dt__17J3DMtxCalcAnmBaseFv();
extern "C" void __dt__10J3DMtxCalcFv();
extern "C" void changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform();
extern "C" void entry__13mDoExt_bckAnmFP12J3DModelDataf();
extern "C" void entryJoint__13mDoExt_bckAnmFP12J3DModelDataUsf();
extern "C" void init__13mDoExt_blkAnmFP13J3DDeformDataP13J3DAnmClusteriifss();
extern "C" static void mDoExt_changeMaterial__FP8J3DModel();
extern "C" void mDoExt_modelTexturePatch__FP12J3DModelData();
extern "C" void patchTexNoAndTexCoordScale__11J3DTevBlockFv();
extern "C" void patch__10J3DPEBlockFv();
extern "C" void patchLight__13J3DColorBlockFv();
extern "C" void patch__11J3DTevBlockFv();
extern "C" static void mDoExt_modelDiff__FP8J3DModel();
extern "C" void mDoExt_modelUpdate__FP8J3DModel();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_modelEntryDL__FP8J3DModel();
extern "C" void mDoExt_btkAnmRemove__FP12J3DModelData();
extern "C" void mDoExt_brkAnmRemove__FP12J3DModelData();
extern "C" bool getZCompLoc__10J3DPEBlockCFv();
extern "C" bool getZMode__10J3DPEBlockFv();
extern "C" bool getBlend__10J3DPEBlockFv();
extern "C" bool getAlphaComp__10J3DPEBlockFv();
extern "C" bool getFog__10J3DPEBlockFv();
extern "C" bool getIndTexCoordScale__11J3DIndBlockFUl();
extern "C" bool getIndTexMtx__11J3DIndBlockFUl();
extern "C" bool getIndTexOrder__11J3DIndBlockFUl();
extern "C" bool getIndTexStageNum__11J3DIndBlockCFv();
extern "C" bool getIndTevStage__11J3DTevBlockFUl();
extern "C" bool getTevStage__11J3DTevBlockFUl();
extern "C" void getTexNo__11J3DTevBlockCFUl();
extern "C" bool getTevSwapModeTable__11J3DTevBlockFUl();
extern "C" bool getTevKAlphaSel__11J3DTevBlockFUl();
extern "C" bool getTevKColorSel__11J3DTevBlockFUl();
extern "C" bool getTevOrder__11J3DTevBlockFUl();
extern "C" bool getTevKColor__11J3DTevBlockFUl();
extern "C" bool getTevColor__11J3DTevBlockFUl();
extern "C" bool getTevStageNum__11J3DTevBlockCFv();
extern "C" bool getTexMtx__14J3DTexGenBlockFUl();
extern "C" bool getTexCoord__14J3DTexGenBlockFUl();
extern "C" bool getTexGenNum__14J3DTexGenBlockCFv();
extern "C" bool getAmbColor__13J3DColorBlockFUl();
extern "C" bool getColorChan__13J3DColorBlockFUl();
extern "C" bool getMatColor__13J3DColorBlockFUl();
extern "C" bool getColorChanNum__13J3DColorBlockCFv();
extern "C" void setZCompLoc__10J3DPEBlockFUc();
extern "C" void setZMode__10J3DPEBlockF8J3DZMode();
extern "C" void setBlend__10J3DPEBlockFRC8J3DBlend();
extern "C" void setAlphaComp__10J3DPEBlockFRC12J3DAlphaComp();
extern "C" void setIndTexCoordScale__11J3DIndBlockFUl19J3DIndTexCoordScale();
extern "C" void __dt__19J3DIndTexCoordScaleFv();
extern "C" void setIndTexMtx__11J3DIndBlockFUl12J3DIndTexMtx();
extern "C" void __dt__12J3DIndTexMtxFv();
extern "C" void setIndTexStageNum__11J3DIndBlockFUc();
extern "C" void setIndTevStage__11J3DTevBlockFUl14J3DIndTevStage();
extern "C" void setTevStage__11J3DTevBlockFUl11J3DTevStage();
extern "C" void setTexNo__11J3DTevBlockFUlUs();
extern "C" void setTevSwapModeTable__11J3DTevBlockFUl19J3DTevSwapModeTable();
extern "C" void setTevKAlphaSel__11J3DTevBlockFUlUc();
extern "C" void setTevKColorSel__11J3DTevBlockFUlUc();
extern "C" void setTevOrder__11J3DTevBlockFUl11J3DTevOrder();
extern "C" void setTevKColor__11J3DTevBlockFUl10J3DGXColor();
extern "C" void setTevColor__11J3DTevBlockFUl13J3DGXColorS10();
extern "C" void setTevStageNum__11J3DTevBlockFUc();
extern "C" void setTexCoord__14J3DTexGenBlockFUlPC11J3DTexCoord();
extern "C" void setTexGenNum__14J3DTexGenBlockFUl();
extern "C" void setAmbColor__13J3DColorBlockFUl10J3DGXColor();
extern "C" void setColorChan__13J3DColorBlockFUlRC12J3DColorChan();
extern "C" void setMatColor__13J3DColorBlockFUl10J3DGXColor();
extern "C" void setColorChanNum__13J3DColorBlockFUc();
extern "C" void __ct__19J3DIndTexCoordScaleFv();
extern "C" void __ct__12J3DIndTexMtxFv();
extern "C" void __ct__14J3DIndTexOrderFv();
extern "C" void __ct__19J3DTevSwapModeTableFv();
extern "C" void __ct__11J3DTevOrderFv();
extern "C" void __ct__14J3DIndTevStageFv();
extern "C" void __ct__11J3DTevStageFv();
extern "C" void setTevStageInfo__11J3DTevStageFRC15J3DTevStageInfo();
extern "C" void __ct__13J3DGXColorS10Fv();
extern "C" void __ct__11J3DTexCoordFv();
extern "C" void __ct__12J3DColorChanFv();
extern "C" void __ct__10J3DGXColorFv();
extern "C" void create__21mDoExt_invisibleModelFP8J3DModelUc();
extern "C" void __dt__19mDoExt_invJntPacketFv();
extern "C" void __ct__19mDoExt_invJntPacketFv();
extern "C" void __dt__9J3DPacketFv();
extern "C" void entryJoint__21mDoExt_invisibleModelFP4cXyz();
extern "C" void entryDL__21mDoExt_invisibleModelFP4cXyz();
extern "C" void mDoExt_setupShareTexture__FP12J3DModelDataP12J3DModelData();
extern "C" void mDoExt_setupStageTexture__FP12J3DModelData();
extern "C" void mDoExt_createAssertHeap__FP7JKRHeap();
extern "C" u32 mDoExt_getAssertHeap__Fv();
extern "C" void mDoExt_createDbPrintHeap__FUlP7JKRHeap();
extern "C" u32 mDoExt_getDbPrintHeap__Fv();
extern "C" void mDoExt_createGameHeap__FUlP7JKRHeap();
extern "C" u32 mDoExt_getGameHeap__Fv();
extern "C" void mDoExt_createZeldaHeap__FUlP7JKRHeap();
extern "C" u32 mDoExt_getZeldaHeap__Fv();
extern "C" void mDoExt_createCommandHeap__FUlP7JKRHeap();
extern "C" u32 mDoExt_getCommandHeap__Fv();
extern "C" void mDoExt_createArchiveHeap__FUlP7JKRHeap();
extern "C" u32 mDoExt_getArchiveHeap__Fv();
extern "C" u32 mDoExt_getArchiveHeapPtr__Fv();
extern "C" void mDoExt_createJ2dHeap__FUlP7JKRHeap();
extern "C" u32 mDoExt_getJ2dHeap__Fv();
extern "C" u32 mDoExt_getHostIOHeap__Fv();
extern "C" static void mDoExt_createSolidHeap__FUlP7JKRHeapUl();
extern "C" void mDoExt_createSolidHeapFromGame__FUlUl();
extern "C" void mDoExt_createSolidHeapFromSystem__FUlUl();
extern "C" static void mDoExt_createSolidHeapToCurrent__FPP7JKRHeapUlP7JKRHeapUl();
extern "C" void mDoExt_createSolidHeapToCurrent__FUlP7JKRHeapUl();
extern "C" void mDoExt_createSolidHeapFromGameToCurrent__FPP7JKRHeapUlUl();
extern "C" void mDoExt_createSolidHeapFromGameToCurrent__FUlUl();
extern "C" void mDoExt_adjustSolidHeap__FP12JKRSolidHeap();
extern "C" void mDoExt_adjustSolidHeapToSystem__FP12JKRSolidHeap();
extern "C" void mDoExt_destroySolidHeap__FP12JKRSolidHeap();
extern "C" void mDoExt_destroyExpHeap__FP10JKRExpHeap();
extern "C" void mDoExt_setCurrentHeap__FP7JKRHeap();
extern "C" u32 mDoExt_getCurrentHeap__Fv();
extern "C" void mDoExt_restoreCurrentHeap__Fv();
extern "C" void mDoExt_resIDToIndex__FP10JKRArchiveUs();
extern "C" void calc__25mDoExt_MtxCalcAnmBlendTblFv();
extern "C" void calc__28mDoExt_MtxCalcAnmBlendTblOldFv();
extern "C" void initOldFrameMorf__22mDoExt_MtxCalcOldFrameFfUsUs();
extern "C" void decOldFrameMorfCounter__22mDoExt_MtxCalcOldFrameFv();
extern "C" void __ct__13mDoExt_morf_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void func_8000FA20(void* _this);
extern "C" void __dt__19J3DMtxCalcNoAnmBaseFv();
extern "C" void __dt__13mDoExt_morf_cFv();
extern "C" void setMorf__13mDoExt_morf_cFf();
extern "C" void frameUpdate__13mDoExt_morf_cFv();
extern "C" void
__ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl();
extern "C" void __dt__14mDoExt_McaMorfFv();
extern "C" void
create__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl();
extern "C" void calc__14mDoExt_McaMorfFv();
extern "C" void setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv();
extern "C" void play__14mDoExt_McaMorfFP3VecUlSc();
extern "C" void entryDL__14mDoExt_McaMorfFv();
extern "C" void modelCalc__14mDoExt_McaMorfFv();
extern "C" void getTransform__14mDoExt_McaMorfFUsP16J3DTransformInfo();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void __dt__16mDoExt_McaMorfSOFv();
extern "C" void
create__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void calc__16mDoExt_McaMorfSOFv();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void updateDL__16mDoExt_McaMorfSOFv();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void getTransform__16mDoExt_McaMorfSOFUsP16J3DTransformInfo();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void
__ct__15mDoExt_McaMorf2FP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void __dt__15mDoExt_McaMorf2Fv();
extern "C" void
create__15mDoExt_McaMorf2FP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void ERROR_EXIT__15mDoExt_McaMorf2Fv();
extern "C" void calc__15mDoExt_McaMorf2Fv();
extern "C" void setAnm__15mDoExt_McaMorf2FP15J3DAnmTransformP15J3DAnmTransformfiffff();
extern "C" void setAnmRate__15mDoExt_McaMorf2Ff();
extern "C" void play__15mDoExt_McaMorf2FUlSc();
extern "C" void entryDL__15mDoExt_McaMorf2Fv();
extern "C" void modelCalc__15mDoExt_McaMorf2Fv();
extern "C" void stopZelAnime__15mDoExt_McaMorf2Fv();
extern "C" void draw__19mDoExt_invJntPacketFv();
extern "C" void init__15mDoExt_3Dline_cFUsii();
extern "C" void __ct__4cXyzFv();
extern "C" void init__19mDoExt_3DlineMat0_cFUsUsi();
extern "C" void __ct__15mDoExt_3Dline_cFv();
extern "C" void setMaterial__19mDoExt_3DlineMat0_cFv();
extern "C" void draw__19mDoExt_3DlineMat0_cFv();
extern "C" void update__19mDoExt_3DlineMat0_cFifR8_GXColorUsP12dKy_tevstr_c();
extern "C" void update__19mDoExt_3DlineMat0_cFiR8_GXColorP12dKy_tevstr_c();
extern "C" void init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi();
extern "C" void setMaterial__19mDoExt_3DlineMat1_cFv();
extern "C" void draw__19mDoExt_3DlineMat1_cFv();
extern "C" void update__19mDoExt_3DlineMat1_cFifR8_GXColorUsP12dKy_tevstr_c();
extern "C" void update__19mDoExt_3DlineMat1_cFiR8_GXColorP12dKy_tevstr_c();
extern "C" void setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c();
extern "C" void draw__26mDoExt_3DlineMatSortPacketFv();
extern "C" static void
mDoExt_initFontCommon__FPP7JUTFontPP7ResFONTP7JKRHeapPCcP10JKRArchiveUcUlUl();
extern "C" void __dt__7JUTFontFv();
extern "C" static void mDoExt_initFont0__Fv();
extern "C" void mDoExt_getMesgFont__Fv();
extern "C" void mDoExt_removeMesgFont__Fv();
extern "C" static void mDoExt_initFont1__Fv();
extern "C" void mDoExt_getRubyFont__Fv();
extern "C" static void mDoExt_initFont2__Fv();
extern "C" void mDoExt_getSubFont__Fv();
extern "C" void mDoExt_removeSubFont__Fv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void mDoExt_setAraCacheSize__FUl();
extern "C" void mDoExt_GetCurrentRunningThread__Fv();
extern "C" void setGX__7JUTFontFQ28JUtility6TColorQ28JUtility6TColor();
extern "C" void getCellWidth__7JUTFontCFv();
extern "C" void getCellHeight__7JUTFontCFv();
extern "C" void __dt__26mDoExt_3DlineMatSortPacketFv();
extern "C" bool getMaterialID__19mDoExt_3DlineMat1_cFv();
extern "C" bool getMaterialID__19mDoExt_3DlineMat0_cFv();
extern "C" void setAnmTransform__10J3DMtxCalcFUcP15J3DAnmTransform();
extern "C" void setAnmTransform__10J3DMtxCalcFP15J3DAnmTransform();
extern "C" bool getAnmTransform__10J3DMtxCalcFUc();
extern "C" bool getAnmTransform__10J3DMtxCalcFv();
extern "C" void setWeight__10J3DMtxCalcFUcf();
extern "C" void getWeight__10J3DMtxCalcCFUc();
extern "C" void __dt__28mDoExt_MtxCalcAnmBlendTblOldFv();
extern "C" void __dt__25mDoExt_MtxCalcAnmBlendTblFv();
extern "C" void getAnmTransform__17J3DMtxCalcAnmBaseFv();
extern "C" void setAnmTransform__17J3DMtxCalcAnmBaseFP15J3DAnmTransform();
extern "C" void func_80014FC8(void* _this);
extern "C" void func_80015034(void* _this, Vec const&, f32 const (&)[3][4]);
extern "C" void func_8001505C(void* _this, Vec const&, f32 const (&)[3][4]);
extern "C" void func_80015084(void* _this);
extern "C" void func_800150AC(void* _this);
extern "C" extern char const* const m_Do_m_Do_ext__stringBase0;

static void mDoExt_initFontCommon(JUTFont** param_0, ResFONT** param_1, JKRHeap* param_2,
                                  char const* param_3, JKRArchive* param_4, u8 param_5, u32 param_6,
                                  u32 param_7);

//
// External References:
//

extern "C" void __dt__4cXyzFv();
extern "C" void dComIfG_getStageRes__FPCc();
extern "C" void entryZSortXluDrawList__12dDlst_list_cFP13J3DDrawBufferP9J3DPacketR4cXyz();
extern "C" void dKy_setLight_again__Fv();
extern "C" void dKy_Global_amb_set__FP12dKy_tevstr_c();
extern "C" void dKy_GxFog_set__Fv();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void outprod__4cXyzCFRC3Vec();
extern "C" void normalizeZP__4cXyzFv();
extern "C" void cLib_chaseF__FPfff();
extern "C" void framework__14Z2SoundObjBaseFUlSc();
extern "C" void dispose__14Z2SoundObjBaseFv();
extern "C" void stopOK__14Z2SoundObjBaseFR17Z2SoundHandlePool();
extern "C" void startSound__14Z2SoundObjBaseF10JAISoundIDUlSc();
extern "C" void startLevelSound__14Z2SoundObjBaseF10JAISoundIDUlSc();
extern "C" void __ct__15Z2SoundObjAnimeFv();
extern "C" void init__15Z2SoundObjAnimeFP3VecUc();
extern "C" void initAnime__15Z2SoundObjAnimeFPvbff();
extern "C" void updateAnime__15Z2SoundObjAnimeFff();
extern "C" void initAnime__10Z2CreatureFPvbff();
extern "C" void updateAnime__10Z2CreatureFff();
extern "C" void
GFSetBlendModeEtc__F12_GXBlendMode14_GXBlendFactor14_GXBlendFactor10_GXLogicOpUcUcUc();
extern "C" void GFSetZMode__FUc10_GXCompareUc();
extern "C" void becomeCurrentHeap__7JKRHeapFv();
extern "C" void destroy__7JKRHeapFv();
extern "C" void free__7JKRHeapFPvP7JKRHeap();
extern "C" void setErrorFlag__7JKRHeapFb();
extern "C" void* __nw__FUl();
extern "C" void* __nw__FUlP7JKRHeapi();
extern "C" void* __nwa__FUl();
extern "C" void __dl__FPv();
extern "C" void create__10JKRExpHeapFUlP7JKRHeapb();
extern "C" void create__12JKRSolidHeapFUlP7JKRHeapb();
extern "C" void adjustSize__12JKRSolidHeapFv();
extern "C" void create__13JKRAssertHeapFP7JKRHeap();
extern "C" void removeResource__13JKRFileLoaderFPvP13JKRFileLoader();
extern "C" void getGlbResource__10JKRArchiveFUlPCcP10JKRArchive();
extern "C" void findIdResource__10JKRArchiveCFUs();
extern "C" void __ct__12JUTCacheFontFPC7ResFONTUlP7JKRHeap();
extern "C" void getName__10JUTNameTabCFUs();
extern "C" void __ct__10JUTResFontFPC7ResFONTP7JKRHeap();
extern "C" void reinitGX__6J3DSysFv();
extern "C" void init__15J3DVertexBufferFv();
extern "C" void callDL__17J3DDisplayListObjCFv();
extern "C" bool entry__9J3DPacketFP13J3DDrawBuffer();
extern "C" void drawFast__14J3DShapePacketFv();
extern "C" void loadPreDrawSetting__8J3DShapeCFv();
extern "C" void entryImm__13J3DDrawBufferFP9J3DPacketUs();
extern "C" void __as__16J3DIndTexMtxInfoFRC16J3DIndTexMtxInfo();
extern "C" void initialize__8J3DModelFv();
extern "C" void entryModelData__8J3DModelFP12J3DModelDataUlUl();
extern "C" void newDifferedDisplayList__8J3DModelFUl();
extern "C" void lock__8J3DModelFv();
extern "C" void unlock__8J3DModelFv();
extern "C" void diff__8J3DModelFv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void update__12J3DFrameCtrlFv();
extern "C" void searchUpdateMaterialID__11J3DAnmColorFP16J3DMaterialTable();
extern "C" void searchUpdateMaterialID__16J3DAnmTexPatternFP16J3DMaterialTable();
extern "C" void searchUpdateMaterialID__19J3DAnmTextureSRTKeyFP16J3DMaterialTable();
extern "C" void searchUpdateMaterialID__15J3DAnmTevRegKeyFP16J3DMaterialTable();
extern "C" void setTexMtxAnm__14J3DMaterialAnmFiP12J3DTexMtxAnm();
extern "C" void setTevColorAnm__14J3DMaterialAnmFiP14J3DTevColorAnm();
extern "C" void setTevKColorAnm__14J3DMaterialAnmFiP15J3DTevKColorAnm();
extern "C" void setAnm__13J3DDeformDataFP13J3DAnmCluster();
extern "C" void init__24J3DMtxCalcJ3DSysInitMayaFRC3VecRA3_A4_Cf();
extern "C" void calcTransform__27J3DMtxCalcCalcTransformMayaFRC16J3DTransformInfo();
extern "C" void entryMatColorAnimator__16J3DMaterialTableFP11J3DAnmColor();
extern "C" void entryTexNoAnimator__16J3DMaterialTableFP16J3DAnmTexPattern();
extern "C" void entryTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey();
extern "C" void entryTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey();
extern "C" void JMAEulerToQuat__FsssP10Quaternion();
extern "C" void JMAQuatLerp__FPC10QuaternionPC10QuaternionfP10Quaternion();
extern "C" void GXClearVtxDesc();
extern "C" void __construct_new_array();
extern "C" void _savegpr_15();
extern "C" void _savegpr_18();
extern "C" void _savegpr_20();
extern "C" void _savegpr_21();
extern "C" void _savegpr_22();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_15();
extern "C" void _restgpr_18();
extern "C" void _restgpr_20();
extern "C" void _restgpr_21();
extern "C" void _restgpr_22();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern u8 const j3dDefaultTexCoordInfo[32];
extern "C" extern u8 const j3dDefaultIndTexMtxInfo[28];
extern "C" extern u8 const j3dDefaultTevStageInfo[20];
extern "C" extern u8 const j3dDefaultIndTevStageInfo[12];
extern "C" extern void* __vt__9J3DPacket[5];
extern "C" extern void* __vt__8J3DModel[9];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" f32 mParentS__6J3DSys[3];
extern "C" u8 sGDLObj__17J3DDisplayListObj[16];
extern "C" u8 sCurrentHeap__7JKRHeap[4];
extern "C" u8 sOldVcdVatCmd__8J3DShape[4];
extern "C" u8 mJoint__10J3DMtxCalc[4];
extern "C" extern u32 j3dDefaultTevOrderInfoNull;
extern "C" extern u32 j3dDefaultIndTexOrderNull;
extern "C" extern u8 j3dDefaultIndTexCoordScaleInfo[4];
extern "C" extern u8 j3dDefaultTevSwapMode[4];
extern "C" extern u8 j3dDefaultColorChanInfo[8];
extern "C" extern u16 data_804563F8;

//
// Declarations:
//

/* ############################################################################################## */
/* 80451B18-80451B1C 000118 0004+00 11/11 0/0 0/0 .sdata2          @3847 */
SECTION_SDATA2 static f32 lit_3847 = 1.0f;

/* 8000D0AC-8000D320 0079EC 0274+00 5/5 0/0 0/0 .text
 * mDoExt_setJ3DData__FPA4_fPC16J3DTransformInfoUs              */
// matches with literals
#ifdef NONMATCHING
static void mDoExt_setJ3DData(Mtx mtx, const J3DTransformInfo* transformInfo, u16 param_2) {
    bool local_28;
    if (cM3d_IsZero(transformInfo->mScale.x - 1.0f) && cM3d_IsZero(transformInfo->mScale.y - 1.0f) && cM3d_IsZero(transformInfo->mScale.z - 1.0f)) {
        j3dSys.getModel()->setScaleFlag(param_2, 1);
        local_28 = true;
    } else {
        j3dSys.getModel()->setScaleFlag(param_2, 0);
        local_28 = false;
    }
    mtx[0][3] = transformInfo->mTranslate.x;
    mtx[1][3] = transformInfo->mTranslate.y;
    mtx[2][3] = transformInfo->mTranslate.z;

    if (!local_28) {
        mtx[0][0] *= transformInfo->mScale.x;
        mtx[0][1] *= transformInfo->mScale.y;
        mtx[0][2] *= transformInfo->mScale.z;
        mtx[1][0] *= transformInfo->mScale.x;
        mtx[1][1] *= transformInfo->mScale.y;
        mtx[1][2] *= transformInfo->mScale.z;
        mtx[2][0] *= transformInfo->mScale.x;
        mtx[2][1] *= transformInfo->mScale.y;
        mtx[2][2] *= transformInfo->mScale.z;
    }
    if (j3dSys.getModel()->getModelData()->getJointNodePointer(param_2)->getScaleCompensate() == 1) {
        f32 x = 1.0f / J3DSys::mParentS.x;
        f32 y = 1.0f / J3DSys::mParentS.y;
        f32 z = 1.0f / J3DSys::mParentS.z;
        mtx[0][0] *= x;
        mtx[0][1] *= x;
        mtx[0][2] *= x;
        mtx[1][0] *= y;
        mtx[1][1] *= y;
        mtx[1][2] *= y;
        mtx[2][0] *= z;
        mtx[2][1] *= z;
        mtx[2][2] *= z;
    }
    mDoMtx_concat(J3DSys::mCurrentMtx, mtx, J3DSys::mCurrentMtx);
    j3dSys.getModel()->setAnmMtx(param_2, J3DSys::mCurrentMtx);
    J3DSys::mParentS.x = transformInfo->mScale.x;
    J3DSys::mParentS.y = transformInfo->mScale.y;
    J3DSys::mParentS.z = transformInfo->mScale.z;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void mDoExt_setJ3DData(Mtx mtx, const J3DTransformInfo* transformInfo, u16 param_2) {
    nofralloc
#include "asm/m_Do/m_Do_ext/mDoExt_setJ3DData__FPA4_fPC16J3DTransformInfoUs.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80451B1C-80451B20 00011C 0004+00 22/22 0/0 0/0 .sdata2          @3876 */
SECTION_SDATA2 static u8 lit_3876[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};

/* 80451B20-80451B28 000120 0008+00 10/10 0/0 0/0 .sdata2          @3878 */
SECTION_SDATA2 static f64 lit_3878 = 4503601774854144.0 /* cast s32 to float */;

/* 8000D320-8000D428 007C60 0108+00 6/6 0/0 0/0 .text            initPlay__14mDoExt_baseAnmFsifss */
// matches with literals
#ifdef NONMATCHING
int mDoExt_baseAnm::initPlay(s16 i_frameMax, int i_attribute, f32 i_rate, s16 i_startF,
                             s16 i_endF) {
    mFrameCtrl.setStart(i_startF);

    if (i_endF < 0) {
        mFrameCtrl.init(i_frameMax);
    } else {
        mFrameCtrl.init(i_endF);
    }

    mFrameCtrl.setAttribute(i_attribute);
    mFrameCtrl.setRate(i_rate);

    if (i_rate >= 0.0f) {
        mFrameCtrl.setFrame(i_startF);
    } else {
        mFrameCtrl.setFrame(mFrameCtrl.getEnd());
    }

    mFrameCtrl.setLoop(mFrameCtrl.getFrame());

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int mDoExt_baseAnm::initPlay(s16 param_0, int param_1, f32 param_2, s16 param_3, s16 param_4) {
    nofralloc
#include "asm/m_Do/m_Do_ext/initPlay__14mDoExt_baseAnmFsifss.s"
}
#pragma pop
#endif

/* 8000D428-8000D47C 007D68 0054+00 0/0 12/12 198/198 .text            play__14mDoExt_baseAnmFv */
// matches with literals
#ifdef NONMATCHING
int mDoExt_baseAnm::play() {
    mFrameCtrl.update();
    return isStop();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int mDoExt_baseAnm::play() {
    nofralloc
#include "asm/m_Do/m_Do_ext/play__14mDoExt_baseAnmFv.s"
}
#pragma pop
#endif

/* 8000D47C-8000D518 007DBC 009C+00 0/0 3/3 6/6 .text
 * init__13mDoExt_bpkAnmFP16J3DMaterialTableP11J3DAnmColoriifss */
int mDoExt_bpkAnm::init(J3DMaterialTable* i_matTable, J3DAnmColor* i_bpk, int i_anmPlay,
                        int i_attribute, f32 i_rate, s16 i_startF, s16 i_endF) {
    mpAnm = i_bpk;
    mpAnm->searchUpdateMaterialID(i_matTable);

    if (i_anmPlay) {
        int attribute;
        if (i_attribute < 0) {
            attribute = mpAnm->getAttribute();
        } else {
            attribute = i_attribute;
        }

        return initPlay(mpAnm->getFrameMax(), attribute, i_rate, i_startF, i_endF);
    }

    return 1;
}

/* 8000D518-8000D54C 007E58 0034+00 0/0 3/3 6/6 .text entry__13mDoExt_bpkAnmFP16J3DMaterialTablef
 */
void mDoExt_bpkAnm::entry(J3DMaterialTable* i_matTable, f32 i_frame) {
    mpAnm->setFrame(i_frame);
    i_matTable->entryMatColorAnimator(mpAnm);
}

/* 8000D54C-8000D5E8 007E8C 009C+00 0/0 5/5 28/28 .text
 * init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss */
int mDoExt_btpAnm::init(J3DMaterialTable* i_matTable, J3DAnmTexPattern* i_btp, int i_anmPlay,
                        int i_attribute, f32 i_rate, s16 i_startF, s16 i_endF) {
    mpAnm = i_btp;
    mpAnm->searchUpdateMaterialID(i_matTable);

    if (i_anmPlay) {
        int attribute;
        if (i_attribute < 0) {
            attribute = mpAnm->getAttribute();
        } else {
            attribute = i_attribute;
        }

        return initPlay(mpAnm->getFrameMax(), attribute, i_rate, i_startF, i_endF);
    }

    return 1;
}

/* 8000D5E8-8000D63C 007F28 0054+00 0/0 5/5 28/28 .text
 * entry__13mDoExt_btpAnmFP16J3DMaterialTables                  */
// matches with literals
#ifdef NONMATCHING
void mDoExt_btpAnm::entry(J3DMaterialTable* i_matTable, s16 i_frame) {
    mpAnm->setFrame(i_frame);
    i_matTable->entryTexNoAnimator(mpAnm);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void mDoExt_btpAnm::entry(J3DMaterialTable* param_0, s16 param_1) {
    nofralloc
#include "asm/m_Do/m_Do_ext/entry__13mDoExt_btpAnmFP16J3DMaterialTables.s"
}
#pragma pop
#endif

/* 8000D63C-8000D6D8 007F7C 009C+00 0/0 6/6 137/137 .text
 * init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss */
int mDoExt_btkAnm::init(J3DMaterialTable* i_matTable, J3DAnmTextureSRTKey* i_btk, int i_anmPlay,
                        int i_attribute, f32 i_rate, s16 i_startF, s16 i_endF) {
    mpAnm = i_btk;
    mpAnm->searchUpdateMaterialID(i_matTable);

    if (i_anmPlay) {
        int attribute;
        if (i_attribute < 0) {
            attribute = mpAnm->getAttribute();
        } else {
            attribute = i_attribute;
        }

        return initPlay(mpAnm->getFrameMax(), attribute, i_rate, i_startF, i_endF);
    }

    return 1;
}

/* 8000D6D8-8000D70C 008018 0034+00 0/0 7/7 117/117 .text
 * entry__13mDoExt_btkAnmFP16J3DMaterialTablef                  */
void mDoExt_btkAnm::entry(J3DMaterialTable* i_matTable, f32 i_frame) {
    mpAnm->setFrame(i_frame);
    i_matTable->entryTexMtxAnimator(mpAnm);
}

/* 8000D70C-8000D7A8 00804C 009C+00 0/0 8/8 112/112 .text
 * init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss */
int mDoExt_brkAnm::init(J3DMaterialTable* i_matTable, J3DAnmTevRegKey* i_brk, int i_anmPlay,
                        int i_attribute, f32 i_rate, s16 i_startF, s16 i_endF) {
    mpAnm = i_brk;
    mpAnm->searchUpdateMaterialID(i_matTable);

    if (i_anmPlay) {
        int attribute;
        if (i_attribute < 0) {
            attribute = mpAnm->getAttribute();
        } else {
            attribute = i_attribute;
        }

        return initPlay(mpAnm->getFrameMax(), attribute, i_rate, i_startF, i_endF);
    }

    return 1;
}

/* 8000D7A8-8000D7DC 0080E8 0034+00 0/0 8/8 96/96 .text
 * entry__13mDoExt_brkAnmFP16J3DMaterialTablef                  */
void mDoExt_brkAnm::entry(J3DMaterialTable* i_matTable, f32 i_frame) {
    mpAnm->setFrame(i_frame);
    i_matTable->entryTevRegAnimator(mpAnm);
}

/* ############################################################################################## */
/* 803A3020-803A30C0 000140 0085+1B 1/1 0/0 0/0 .data            l_invisibleMat$7041 */
SECTION_DATA static u8 l_invisibleMat[133 + 27 /* padding */] ALIGN_DECL(32) = {
    0x10,
    0x00,
    0x00,
    0x10,
    0x0E,
    0x00,
    0x00,
    0x04,
    0x00,
    0x10,
    0x00,
    0x00,
    0x10,
    0x10,
    0x00,
    0x00,
    0x04,
    0x00,
    0x61,
    0x28,
    0x38,
    0x00,
    0x00,
    0x61,
    0xC0,
    0x08,
    0xFF,
    0xFC,
    0x61,
    0xC1,
    0x08,
    0xFF,
    0xF0,
    0x61,
    0xF3,
    0x7F,
    0x00,
    0x00,
    0x61,
    0x43,
    0x00,
    0x00,
    0x41,
    0x61,
    0x40,
    0x00,
    0x00,
    0x17,
    0x61,
    0xEE,
    0x00,
    0x00,
    0x00,
    0x61,
    0xEF,
    0x00,
    0x00,
    0x00,
    0x61,
    0xF0,
    0x00,
    0x00,
    0x00,
    0x61,
    0xF1,
    0x00,
    0x00,
    0x00,
    0x61,
    0xF2,
    0x00,
    0x00,
    0x00,
    0x61,
    0x41,
    0x00,
    0x00,
    0x04,
    0x10,
    0x00,
    0x00,
    0x10,
    0x3F,
    0x00,
    0x00,
    0x00,
    0x00,
    0x10,
    0x00,
    0x00,
    0x10,
    0x09,
    0x00,
    0x00,
    0x00,
    0x01,
    0x61,
    0x00,
    0x00,
    0x40,
    0x10,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    /* padding */
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
};

/* 803A30C0-803A3160 0001E0 0084+1C 1/1 0/0 0/0 .data            l_matDL */
SECTION_DATA static u8 l_matDL[132 + 28 /* padding */] = {
    0x08,
    0x30,
    0x3C,
    0xF3,
    0xCF,
    0x00,
    0x10,
    0x00,
    0x00,
    0x10,
    0x18,
    0x3C,
    0xF3,
    0xCF,
    0x00,
    0x10,
    0x00,
    0x00,
    0x10,
    0x0E,
    0x00,
    0x00,
    0x7F,
    0x32,
    0x10,
    0x00,
    0x00,
    0x10,
    0x10,
    0x00,
    0x00,
    0x05,
    0x00,
    0x10,
    0x00,
    0x00,
    0x10,
    0x0C,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0x61,
    0x28,
    0x38,
    0x00,
    0x00,
    0x61,
    0xC0,
    0x28,
    0xF6,
    0xAF,
    0x61,
    0xC1,
    0x08,
    0xFF,
    0xE0,
    0x61,
    0x43,
    0x00,
    0x00,
    0x41,
    0x61,
    0x40,
    0x00,
    0x00,
    0x17,
    0x61,
    0x41,
    0x00,
    0x00,
    0x0C,
    0x61,
    0xF3,
    0x7F,
    0x00,
    0x00,
    0x10,
    0x00,
    0x00,
    0x10,
    0x3F,
    0x00,
    0x00,
    0x00,
    0x00,
    0x10,
    0x00,
    0x00,
    0x10,
    0x09,
    0x00,
    0x00,
    0x00,
    0x01,
    0x61,
    0x00,
    0x00,
    0x00,
    0x10,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    /* padding */
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
};

/* 803A3160-803A31F0 000280 008D+03 1/1 0/0 0/0 .data            l_mat1DL */
SECTION_DATA static u8 l_mat1DL[141 + 3 /* padding */] = {
    0x10,
    0x00,
    0x00,
    0x10,
    0x40,
    0xFF,
    0xFF,
    0x42,
    0x80,
    0x08,
    0x30,
    0x3C,
    0xF3,
    0xCF,
    0x00,
    0x10,
    0x00,
    0x00,
    0x10,
    0x18,
    0x3C,
    0xF3,
    0xCF,
    0x00,
    0x10,
    0x00,
    0x00,
    0x10,
    0x0E,
    0x00,
    0x00,
    0x7F,
    0x32,
    0x10,
    0x00,
    0x00,
    0x10,
    0x10,
    0x00,
    0x00,
    0x05,
    0x00,
    0x10,
    0x00,
    0x00,
    0x10,
    0x0C,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0x61,
    0x28,
    0x38,
    0x00,
    0x40,
    0x61,
    0xC0,
    0x28,
    0xFA,
    0x8F,
    0x61,
    0xC1,
    0x08,
    0xFF,
    0xF0,
    0x61,
    0x43,
    0x00,
    0x00,
    0x41,
    0x61,
    0x40,
    0x00,
    0x00,
    0x17,
    0x61,
    0x41,
    0x00,
    0x00,
    0x0C,
    0x61,
    0xF3,
    0x7F,
    0x00,
    0x00,
    0x10,
    0x00,
    0x00,
    0x10,
    0x3F,
    0x00,
    0x00,
    0x00,
    0x01,
    0x10,
    0x00,
    0x00,
    0x10,
    0x09,
    0x00,
    0x00,
    0x00,
    0x01,
    0x61,
    0x00,
    0x00,
    0x00,
    0x11,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    /* padding */
    0x00,
    0x00,
    0x00,
};

/* 803A31F0-803A3234 000310 0044+00 1/1 2/2 0/0 .data            __vt__7JUTFont */
SECTION_DATA extern void* __vt__7JUTFont[17] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__7JUTFontFv,
    (void*)NULL,
    (void*)setGX__7JUTFontFQ28JUtility6TColorQ28JUtility6TColor,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
    (void*)getCellWidth__7JUTFontCFv,
    (void*)getCellHeight__7JUTFontCFv,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
};

/* 803A3234-803A3248 000354 0014+00 1/1 1/1 0/0 .data            __vt__26mDoExt_3DlineMatSortPacket
 */
SECTION_DATA extern void* __vt__26mDoExt_3DlineMatSortPacket[5] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)entry__9J3DPacketFP13J3DDrawBuffer,
    (void*)draw__26mDoExt_3DlineMatSortPacketFv,
    (void*)__dt__26mDoExt_3DlineMatSortPacketFv,
};

/* 803A3248-803A325C 000368 0014+00 0/0 0/0 22/22 .data            __vt__19mDoExt_3DlineMat1_c */
SECTION_DATA extern void* __vt__19mDoExt_3DlineMat1_c[5] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)getMaterialID__19mDoExt_3DlineMat1_cFv,
    (void*)setMaterial__19mDoExt_3DlineMat1_cFv,
    (void*)draw__19mDoExt_3DlineMat1_cFv,
};

/* 803A325C-803A3270 00037C 0014+00 0/0 0/0 14/14 .data            __vt__19mDoExt_3DlineMat0_c */
SECTION_DATA extern void* __vt__19mDoExt_3DlineMat0_c[5] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)getMaterialID__19mDoExt_3DlineMat0_cFv,
    (void*)setMaterial__19mDoExt_3DlineMat0_cFv,
    (void*)draw__19mDoExt_3DlineMat0_cFv,
};

/* 803A3270-803A3284 000390 0014+00 2/2 0/0 0/0 .data            __vt__19mDoExt_invJntPacket */
SECTION_DATA extern void* __vt__19mDoExt_invJntPacket[5] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)entry__9J3DPacketFP13J3DDrawBuffer,
    (void*)draw__19mDoExt_invJntPacketFv,
    (void*)__dt__19mDoExt_invJntPacketFv,
};

/* 803A3284-803A32B0 0003A4 002C+00 2/2 0/0 0/0 .data            __vt__15mDoExt_McaMorf2 */
SECTION_DATA extern void* __vt__15mDoExt_McaMorf2[11] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15mDoExt_McaMorf2Fv,
    (void*)setAnmTransform__10J3DMtxCalcFP15J3DAnmTransform,
    (void*)getAnmTransform__10J3DMtxCalcFv,
    (void*)setAnmTransform__10J3DMtxCalcFUcP15J3DAnmTransform,
    (void*)getAnmTransform__10J3DMtxCalcFUc,
    (void*)setWeight__10J3DMtxCalcFUcf,
    (void*)getWeight__10J3DMtxCalcCFUc,
    (void*)func_8001505C,
    (void*)calc__15mDoExt_McaMorf2Fv,
};

/* 803A32B0-803A32DC 0003D0 002C+00 2/2 0/0 0/0 .data            __vt__16mDoExt_McaMorfSO */
SECTION_DATA extern void* __vt__16mDoExt_McaMorfSO[11] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__16mDoExt_McaMorfSOFv,
    (void*)setAnmTransform__10J3DMtxCalcFP15J3DAnmTransform,
    (void*)getAnmTransform__10J3DMtxCalcFv,
    (void*)setAnmTransform__10J3DMtxCalcFUcP15J3DAnmTransform,
    (void*)getAnmTransform__10J3DMtxCalcFUc,
    (void*)setWeight__10J3DMtxCalcFUcf,
    (void*)getWeight__10J3DMtxCalcCFUc,
    (void*)func_8001505C,
    (void*)calc__16mDoExt_McaMorfSOFv,
};

/* 803A32DC-803A32FC 0003FC 0020+00 1/1 0/0 0/0 .data            __vt__15mDoExt_zelAnime */
SECTION_DATA extern void* __vt__15mDoExt_zelAnime[8] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)framework__14Z2SoundObjBaseFUlSc,
    (void*)dispose__14Z2SoundObjBaseFv,
    (void*)stopOK__14Z2SoundObjBaseFR17Z2SoundHandlePool,
    (void*)init__15Z2SoundObjAnimeFP3VecUc,
    (void*)startSound__14Z2SoundObjBaseF10JAISoundIDUlSc,
    (void*)startLevelSound__14Z2SoundObjBaseF10JAISoundIDUlSc,
};

/* 803A32FC-803A3328 00041C 002C+00 2/2 0/0 0/0 .data            __vt__14mDoExt_McaMorf */
SECTION_DATA extern void* __vt__14mDoExt_McaMorf[11] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14mDoExt_McaMorfFv,
    (void*)setAnmTransform__10J3DMtxCalcFP15J3DAnmTransform,
    (void*)getAnmTransform__10J3DMtxCalcFv,
    (void*)setAnmTransform__10J3DMtxCalcFUcP15J3DAnmTransform,
    (void*)getAnmTransform__10J3DMtxCalcFUc,
    (void*)setWeight__10J3DMtxCalcFUcf,
    (void*)getWeight__10J3DMtxCalcCFUc,
    (void*)func_8001505C,
    (void*)calc__14mDoExt_McaMorfFv,
};

/* 803A3328-803A3354 000448 002C+00 2/2 0/0 0/0 .data            __vt__13mDoExt_morf_c */
SECTION_DATA extern void* __vt__13mDoExt_morf_c[11] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13mDoExt_morf_cFv,
    (void*)setAnmTransform__10J3DMtxCalcFP15J3DAnmTransform,
    (void*)getAnmTransform__10J3DMtxCalcFv,
    (void*)setAnmTransform__10J3DMtxCalcFUcP15J3DAnmTransform,
    (void*)getAnmTransform__10J3DMtxCalcFUc,
    (void*)setWeight__10J3DMtxCalcFUcf,
    (void*)getWeight__10J3DMtxCalcCFUc,
    (void*)func_8001505C,
    (void*)func_80015084,
};

/* 803A3354-803A3360 000474 000C+00 3/3 30/30 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 803A3360-803A338C 000480 002C+00 5/5 2/2 0/0 .data
 * __vt__73J3DMtxCalcNoAnm<27J3DMtxCalcCalcTransformMaya,24J3DMtxCalcJ3DSysInitMaya> */
SECTION_DATA extern void* data_803A3360[11] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)func_8000FA20,
    (void*)setAnmTransform__10J3DMtxCalcFP15J3DAnmTransform,
    (void*)getAnmTransform__10J3DMtxCalcFv,
    (void*)setAnmTransform__10J3DMtxCalcFUcP15J3DAnmTransform,
    (void*)getAnmTransform__10J3DMtxCalcFUc,
    (void*)setWeight__10J3DMtxCalcFUcf,
    (void*)getWeight__10J3DMtxCalcCFUc,
    (void*)func_8001505C,
    (void*)func_80015084,
};

/* 803A338C-803A33B8 0004AC 002C+00 6/6 4/4 0/0 .data            __vt__19J3DMtxCalcNoAnmBase */
SECTION_DATA extern void* __vt__19J3DMtxCalcNoAnmBase[11] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__19J3DMtxCalcNoAnmBaseFv,
    (void*)setAnmTransform__10J3DMtxCalcFP15J3DAnmTransform,
    (void*)getAnmTransform__10J3DMtxCalcFv,
    (void*)setAnmTransform__10J3DMtxCalcFUcP15J3DAnmTransform,
    (void*)getAnmTransform__10J3DMtxCalcFUc,
    (void*)setWeight__10J3DMtxCalcFUcf,
    (void*)getWeight__10J3DMtxCalcCFUc,
    (void*)NULL,
    (void*)NULL,
};

/* 803A33B8-803A33E4 0004D8 002C+00 1/1 1/1 2/2 .data __vt__28mDoExt_MtxCalcAnmBlendTblOld */
SECTION_DATA extern void* __vt__28mDoExt_MtxCalcAnmBlendTblOld[11] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__28mDoExt_MtxCalcAnmBlendTblOldFv,
    (void*)setAnmTransform__10J3DMtxCalcFP15J3DAnmTransform,
    (void*)getAnmTransform__10J3DMtxCalcFv,
    (void*)setAnmTransform__10J3DMtxCalcFUcP15J3DAnmTransform,
    (void*)getAnmTransform__10J3DMtxCalcFUc,
    (void*)setWeight__10J3DMtxCalcFUcf,
    (void*)getWeight__10J3DMtxCalcCFUc,
    (void*)func_8001505C,
    (void*)calc__28mDoExt_MtxCalcAnmBlendTblOldFv,
};

/* 803A33E4-803A3410 000504 002C+00 2/2 1/1 2/2 .data            __vt__25mDoExt_MtxCalcAnmBlendTbl
 */
SECTION_DATA extern void* __vt__25mDoExt_MtxCalcAnmBlendTbl[11] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__25mDoExt_MtxCalcAnmBlendTblFv,
    (void*)setAnmTransform__10J3DMtxCalcFP15J3DAnmTransform,
    (void*)getAnmTransform__10J3DMtxCalcFv,
    (void*)setAnmTransform__10J3DMtxCalcFUcP15J3DAnmTransform,
    (void*)getAnmTransform__10J3DMtxCalcFUc,
    (void*)setWeight__10J3DMtxCalcFUcf,
    (void*)getWeight__10J3DMtxCalcCFUc,
    (void*)func_8001505C,
    (void*)calc__25mDoExt_MtxCalcAnmBlendTblFv,
};

/* 803A3410-803A343C 000530 002C+00 2/2 0/0 0/0 .data
 * __vt__114J3DMtxCalcAnimation<64J3DMtxCalcAnimationAdaptorDefault<27J3DMtxCalcCalcTransformMaya>,24J3DMtxCalcJ3DSysInitMaya>
 */
SECTION_DATA extern void* data_803A3410[11] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)func_80014FC8,
    (void*)func_8000D8E4,
    (void*)getAnmTransform__17J3DMtxCalcAnmBaseFv,
    (void*)setAnmTransform__10J3DMtxCalcFUcP15J3DAnmTransform,
    (void*)getAnmTransform__10J3DMtxCalcFUc,
    (void*)setWeight__10J3DMtxCalcFUcf,
    (void*)getWeight__10J3DMtxCalcCFUc,
    (void*)func_80015034,
    (void*)func_800150AC,
};

/* 803A343C-803A3468 00055C 002C+00 3/3 0/0 0/0 .data            __vt__17J3DMtxCalcAnmBase */
SECTION_DATA extern void* __vt__17J3DMtxCalcAnmBase[11] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17J3DMtxCalcAnmBaseFv,
    (void*)setAnmTransform__17J3DMtxCalcAnmBaseFP15J3DAnmTransform,
    (void*)getAnmTransform__17J3DMtxCalcAnmBaseFv,
    (void*)setAnmTransform__10J3DMtxCalcFUcP15J3DAnmTransform,
    (void*)getAnmTransform__10J3DMtxCalcFUc,
    (void*)setWeight__10J3DMtxCalcFUcf,
    (void*)getWeight__10J3DMtxCalcCFUc,
    (void*)NULL,
    (void*)NULL,
};

/* 803A3468-803A3498 000588 002C+04 10/10 4/4 0/0 .data            __vt__10J3DMtxCalc */
SECTION_DATA extern void* __vt__10J3DMtxCalc[11 + 1 /* padding */] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10J3DMtxCalcFv,
    (void*)setAnmTransform__10J3DMtxCalcFP15J3DAnmTransform,
    (void*)getAnmTransform__10J3DMtxCalcFv,
    (void*)setAnmTransform__10J3DMtxCalcFUcP15J3DAnmTransform,
    (void*)getAnmTransform__10J3DMtxCalcFUc,
    (void*)setWeight__10J3DMtxCalcFUcf,
    (void*)getWeight__10J3DMtxCalcCFUc,
    (void*)NULL,
    (void*)NULL,
    /* padding */
    NULL,
};

/* 8000D7DC-8000D8E4 00811C 0108+00 0/0 18/18 85/85 .text
 * init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb               */
// J3DMtxCalcAnimation inheritance
#ifdef NOTIMPLEMENTED
int mDoExt_bckAnm::init(J3DAnmTransform* i_bck, int i_play, int i_attr, f32 i_rate,
                        s16 i_startF, s16 i_endF, bool i_modify) {
    JUT_ASSERT(614, (i_modify || isCurrentSolidHeap()) && i_bck != 0);
    mAnm = i_bck;
    if (!i_modify) {
        mpMtxCalc = new J3DMtxCalcAnimation<J3DMtxCalcAnimationAdaptorDefault<J3DMtxCalcCalcTransformMaya>, J3DMtxCalcJ3DSysInitMaya>(mAnm);
        if (!mpMtxCalc) {
            return 0;
        }
    } else {
        mpMtxCalc->setAnmTransform(mAnm);
    }
    if (i_play) {
        i_attr = i_attr < 0 ? mAnm->getAttribute() : i_attr;
        return initPlay(mAnm->getFrameMax(), i_attr, i_rate, i_startF, i_endF);
    }
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int mDoExt_bckAnm::init(J3DAnmTransform* i_bck, int i_play, int i_attr, f32 i_rate,
                            s16 i_startF, s16 i_endF, bool i_modify) {
    nofralloc
#include "asm/m_Do/m_Do_ext/init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb.s"
}
#pragma pop
#endif

/* 8000D8E4-8000D8EC -00001 0008+00 0/0 0/0 0/0 .text
 * setAnmTransform__114J3DMtxCalcAnimation<64J3DMtxCalcAnimationAdaptorDefault<27J3DMtxCalcCalcTransformMaya>,24J3DMtxCalcJ3DSysInitMaya>FP15J3DAnmTransform
 */
extern "C" void func_8000D8E4(void* _this, J3DAnmTransform* param_0) {
    *(u32*)(((u8*)_this) + 4) /* _this->field_0x4 */ = (u32)(param_0);
}

/* 8000D8EC-8000D948 00822C 005C+00 1/0 0/0 0/0 .text            __dt__17J3DMtxCalcAnmBaseFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm J3DMtxCalcAnmBase::~J3DMtxCalcAnmBase() {
    nofralloc
#include "asm/m_Do/m_Do_ext/__dt__17J3DMtxCalcAnmBaseFv.s"
}
#pragma pop

/* 8000D948-8000D990 008288 0048+00 1/0 0/0 0/0 .text            __dt__10J3DMtxCalcFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm J3DMtxCalc::~J3DMtxCalc() {
    nofralloc
#include "asm/m_Do/m_Do_ext/__dt__10J3DMtxCalcFv.s"
}
#pragma pop

/* 8000D990-8000D9CC 0082D0 003C+00 0/0 5/5 31/31 .text
 * changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform            */
void mDoExt_bckAnm::changeBckOnly(J3DAnmTransform* i_bck) {
    mAnm = i_bck;
    mpMtxCalc->setAnmTransform(mAnm);
}

/* 8000D9CC-8000D9E8 00830C 001C+00 0/0 11/11 59/59 .text entry__13mDoExt_bckAnmFP12J3DModelDataf
 */
void mDoExt_bckAnm::entry(J3DModelData* i_modelData, f32 i_frame) {
    mAnm->setFrame(i_frame);
    i_modelData->getJointNodePointer(0)->setMtxCalc(mpMtxCalc);
}

/* 8000D9E8-8000DA08 008328 0020+00 0/0 1/1 1/1 .text
 * entryJoint__13mDoExt_bckAnmFP12J3DModelDataUsf               */
void mDoExt_bckAnm::entryJoint(J3DModelData* i_modelData, u16 i_jntNo, f32 i_frame) {
    mAnm->setFrame(i_frame);
    i_modelData->getJointNodePointer(i_jntNo)->setMtxCalc(mpMtxCalc);
}

/* 8000DA08-8000DAA8 008348 00A0+00 0/0 1/1 3/3 .text
 * init__13mDoExt_blkAnmFP13J3DDeformDataP13J3DAnmClusteriifss  */
int mDoExt_blkAnm::init(J3DDeformData* i_deformData, J3DAnmCluster* i_blk, int i_anmPlay,
                        int i_attribute, f32 i_rate, s16 i_start, s16 param_6) {
    mpAnm = i_blk;
    i_deformData->setAnm(mpAnm);

    if (i_anmPlay) {
        int attribute;
        if (i_attribute < 0) {
            attribute = mpAnm->getAttribute();
        } else {
            attribute = i_attribute;
        }

        return initPlay(mpAnm->getFrameMax(), attribute, i_rate, i_start, param_6);
    }

    return 1;
}

/* 8000DAA8-8000DB10 0083E8 0068+00 3/3 0/0 0/0 .text            mDoExt_changeMaterial__FP8J3DModel
 */
static void mDoExt_changeMaterial(J3DModel* i_model) {
    J3DModelData* model_data = i_model->getModelData();

    for (u16 i = 0; i < model_data->getMaterialNum(); i++) {
        model_data->getMaterialNodePointer(i)->change();
    }
}

/* 8000DB10-8000DBC8 008450 00B8+00 0/0 0/0 1/1 .text mDoExt_modelTexturePatch__FP12J3DModelData
 */
void mDoExt_modelTexturePatch(J3DModelData* i_modelData) {
    j3dSys.setTexture(i_modelData->getTexture());

    for (u16 i = 0; i < i_modelData->getMaterialNum(); i++) {
        J3DMaterial* mat = i_modelData->getMaterialNodePointer(i);
        J3DTevBlock* tev = mat->getTevBlock();
        J3DDisplayListObj* dlObj = mat->getSharedDisplayListObj();

        BOOL ret = OSDisableInterrupts();
        GDInitGDLObj(&J3DDisplayListObj::sGDLObj, dlObj->getDisplayList(0),
                     dlObj->getDisplayListSize());
        GDSetCurrent(&J3DDisplayListObj::sGDLObj);
        tev->patchTexNoAndTexCoordScale();
        OSRestoreInterrupts(ret);
        GDSetCurrent(NULL);
    }
}

/* 8000DBC8-8000DBCC 008508 0004+00 0/0 2/0 0/0 .text patchTexNoAndTexCoordScale__11J3DTevBlockFv
 */
void J3DTevBlock::patchTexNoAndTexCoordScale() {
    /* empty function */
}

/* 8000DBCC-8000DBD0 00850C 0004+00 0/0 6/0 0/0 .text            patch__10J3DPEBlockFv */
void J3DPEBlock::patch() {
    /* empty function */
}

/* 8000DBD0-8000DBD4 008510 0004+00 0/0 2/0 0/0 .text            patchLight__13J3DColorBlockFv */
void J3DColorBlock::patchLight() {
    /* empty function */
}

/* 8000DBD4-8000DBD8 008514 0004+00 0/0 2/0 0/0 .text            patch__11J3DTevBlockFv */
void J3DTevBlock::patch() {
    /* empty function */
}

/* 8000DBD8-8000DC2C 008518 0054+00 3/3 0/0 0/0 .text            mDoExt_modelDiff__FP8J3DModel */
static void mDoExt_modelDiff(J3DModel* i_model) {
    i_model->calcMaterial();
    i_model->diff();
    i_model->entry();
}

/* 8000DC2C-8000DCC4 00856C 0098+00 0/0 0/0 8/8 .text            mDoExt_modelUpdate__FP8J3DModel */
void mDoExt_modelUpdate(J3DModel* i_model) {
    J3DModelData* model_data = i_model->getModelData();

    if (model_data->getMaterialNodePointer(0)->getSharedDisplayListObj() != NULL &&
        !model_data->isLocked())
    {
        i_model->calc();
        mDoExt_modelDiff(i_model);
    } else {
        i_model->update();
        i_model->lock();
    }

    i_model->viewCalc();
}

/* 8000DCC4-8000DD64 008604 00A0+00 1/1 12/12 414/414 .text mDoExt_modelUpdateDL__FP8J3DModel */
void mDoExt_modelUpdateDL(J3DModel* i_model) {
    J3DModelData* model_data = i_model->getModelData();

    if (model_data->getMaterialNodePointer(0)->getSharedDisplayListObj() != NULL &&
        !model_data->isLocked())
    {
        i_model->calc();
        mDoExt_modelDiff(i_model);
    } else {
        i_model->unlock();
        i_model->update();
        i_model->lock();
    }

    i_model->viewCalc();
}

/* 8000DD64-8000DDF0 0086A4 008C+00 4/4 3/3 10/10 .text            mDoExt_modelEntryDL__FP8J3DModel
 */
void mDoExt_modelEntryDL(J3DModel* i_model) {
    J3DModelData* model_data = i_model->getModelData();

    if (model_data->getMaterialNodePointer(0)->getSharedDisplayListObj() != NULL &&
        !model_data->isLocked())
    {
        mDoExt_modelDiff(i_model);
    } else {
        i_model->unlock();
        i_model->entry();
        i_model->lock();
    }

    i_model->viewCalc();
}

/* 8000DDF0-8000DE8C 008730 009C+00 0/0 0/0 14/14 .text mDoExt_btkAnmRemove__FP12J3DModelData */
void mDoExt_btkAnmRemove(J3DModelData* i_modelData) {
    for (u16 i = 0; i < i_modelData->getMaterialNum(); i++) {
        J3DMaterialAnm* matAnm = i_modelData->getMaterialNodePointer(i)->getMaterialAnm();

        if (matAnm != NULL) {
            for (u16 j = 0; (int)j < 8; j++) {
                matAnm->setTexMtxAnm(j, NULL);
            }
        }
    }
}

/* 8000DE8C-8000DF3C 0087CC 00B0+00 0/0 0/0 7/7 .text mDoExt_brkAnmRemove__FP12J3DModelData */
void mDoExt_brkAnmRemove(J3DModelData* i_modelData) {
    for (u16 i = 0; i < i_modelData->getMaterialNum(); i++) {
        J3DMaterialAnm* matAnm = i_modelData->getMaterialNodePointer(i)->getMaterialAnm();

        if (matAnm != NULL) {
            for (u16 j = 0; (int)j < 4; j++) {
                matAnm->setTevColorAnm(j, NULL);
                matAnm->setTevKColorAnm(j, NULL);
            }
        }
    }
}

/* 8000DF3C-8000DF44 00887C 0008+00 0/0 5/0 0/0 .text            getZCompLoc__10J3DPEBlockCFv */
bool J3DPEBlock::getZCompLoc() const {
    return false;
}

/* 8000DF44-8000DF4C 008884 0008+00 0/0 5/0 0/0 .text            getZMode__10J3DPEBlockFv */
J3DZMode* J3DPEBlock::getZMode() {
    return NULL;
}

/* 8000DF4C-8000DF54 00888C 0008+00 0/0 5/0 0/0 .text            getBlend__10J3DPEBlockFv */
bool J3DPEBlock::getBlend() {
    return false;
}

/* 8000DF54-8000DF5C 008894 0008+00 0/0 5/0 0/0 .text            getAlphaComp__10J3DPEBlockFv */
J3DAlphaComp* J3DPEBlock::getAlphaComp() {
    return NULL;
}

/* 8000DF5C-8000DF64 00889C 0008+00 0/0 6/0 0/0 .text            getFog__10J3DPEBlockFv */
J3DFog* J3DPEBlock::getFog() {
    return NULL;
}

/* 8000DF64-8000DF6C 0088A4 0008+00 0/0 2/0 0/0 .text getIndTexCoordScale__11J3DIndBlockFUl */
bool J3DIndBlock::getIndTexCoordScale(u32 param_0) {
    return false;
}

/* 8000DF6C-8000DF74 0088AC 0008+00 0/0 2/0 0/0 .text            getIndTexMtx__11J3DIndBlockFUl */
bool J3DIndBlock::getIndTexMtx(u32 param_0) {
    return false;
}

/* 8000DF74-8000DF7C 0088B4 0008+00 0/0 2/0 0/0 .text            getIndTexOrder__11J3DIndBlockFUl */
bool J3DIndBlock::getIndTexOrder(u32 param_0) {
    return false;
}

/* 8000DF7C-8000DF84 0088BC 0008+00 0/0 2/0 0/0 .text            getIndTexStageNum__11J3DIndBlockCFv
 */
u8 J3DIndBlock::getIndTexStageNum() const {
    return 0;
}

/* 8000DF84-8000DF8C 0088C4 0008+00 0/0 2/0 0/0 .text            getIndTevStage__11J3DTevBlockFUl */
bool J3DTevBlock::getIndTevStage(u32 param_0) {
    return false;
}

/* 8000DF8C-8000DF94 0088CC 0008+00 0/0 2/0 0/0 .text            getTevStage__11J3DTevBlockFUl */
J3DTevStage* J3DTevBlock::getTevStage(u32 param_0) {
    return NULL;
}

/* 8000DF94-8000DFA0 0088D4 000C+00 0/0 2/0 0/0 .text            getTexNo__11J3DTevBlockCFUl */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm u16 J3DTevBlock::getTexNo(u32 param_0) const {
    nofralloc
#include "asm/m_Do/m_Do_ext/getTexNo__11J3DTevBlockCFUl.s"
}
#pragma pop

/* 8000DFA0-8000DFA8 0088E0 0008+00 0/0 4/0 0/0 .text getTevSwapModeTable__11J3DTevBlockFUl */
bool J3DTevBlock::getTevSwapModeTable(u32 param_0) {
    return false;
}

/* 8000DFA8-8000DFB0 0088E8 0008+00 0/0 4/0 0/0 .text            getTevKAlphaSel__11J3DTevBlockFUl
 */
bool J3DTevBlock::getTevKAlphaSel(u32 param_0) {
    return false;
}

/* 8000DFB0-8000DFB8 0088F0 0008+00 0/0 3/0 0/0 .text            getTevKColorSel__11J3DTevBlockFUl
 */
bool J3DTevBlock::getTevKColorSel(u32 param_0) {
    return false;
}

/* 8000DFB8-8000DFC0 0088F8 0008+00 0/0 2/0 0/0 .text            getTevOrder__11J3DTevBlockFUl */
J3DTevOrder* J3DTevBlock::getTevOrder(u32 param_0) {
    return NULL;
}

/* 8000DFC0-8000DFC8 008900 0008+00 0/0 3/0 0/0 .text            getTevKColor__11J3DTevBlockFUl */
GXColor* J3DTevBlock::getTevKColor(u32 param_0) {
    return NULL;
}

/* 8000DFC8-8000DFD0 008908 0008+00 0/0 3/0 0/0 .text            getTevColor__11J3DTevBlockFUl */
GXColorS10* J3DTevBlock::getTevColor(u32 param_0) {
    return NULL;
}

/* 8000DFD0-8000DFD8 008910 0008+00 0/0 2/0 0/0 .text            getTevStageNum__11J3DTevBlockCFv */
u8 J3DTevBlock::getTevStageNum() const {
    return 1;
}

/* 8000DFD8-8000DFE0 008918 0008+00 0/0 2/0 0/0 .text            getTexMtx__14J3DTexGenBlockFUl */
J3DTexMtx* J3DTexGenBlock::getTexMtx(u32 param_0) {
    return NULL;
}

/* 8000DFE0-8000DFE8 008920 0008+00 0/0 2/0 0/0 .text            getTexCoord__14J3DTexGenBlockFUl */
J3DTexCoord* J3DTexGenBlock::getTexCoord(u32 param_0) {
    return NULL;
}

/* 8000DFE8-8000DFF0 008928 0008+00 0/0 2/0 0/0 .text            getTexGenNum__14J3DTexGenBlockCFv
 */
u32 J3DTexGenBlock::getTexGenNum() const {
    return 0;
}

/* 8000DFF0-8000DFF8 008930 0008+00 0/0 3/0 0/0 .text            getAmbColor__13J3DColorBlockFUl */
bool J3DColorBlock::getAmbColor(u32 param_0) {
    return false;
}

/* 8000DFF8-8000E000 008938 0008+00 0/0 2/0 0/0 .text            getColorChan__13J3DColorBlockFUl */
J3DColorChan* J3DColorBlock::getColorChan(u32 param_0) {
    return NULL;
}

/* 8000E000-8000E008 008940 0008+00 0/0 2/0 0/0 .text            getMatColor__13J3DColorBlockFUl */
GXColor* J3DColorBlock::getMatColor(u32 param_0) {
    return NULL;
}

/* 8000E008-8000E010 008948 0008+00 0/0 2/0 0/0 .text            getColorChanNum__13J3DColorBlockCFv
 */
u8 J3DColorBlock::getColorChanNum() const {
    return 0;
}

/* 8000E010-8000E014 008950 0004+00 0/0 5/0 0/0 .text            setZCompLoc__10J3DPEBlockFUc */
void J3DPEBlock::setZCompLoc(u8 param_0) {
    /* empty function */
}

/* 8000E014-8000E018 008954 0004+00 0/0 5/0 0/0 .text            setZMode__10J3DPEBlockF8J3DZMode */
void J3DPEBlock::setZMode(J3DZMode param_0) {
    /* empty function */
}

/* 8000E018-8000E01C 008958 0004+00 0/0 5/0 0/0 .text            setBlend__10J3DPEBlockFRC8J3DBlend
 */
void J3DPEBlock::setBlend(J3DBlend const& param_0) {
    /* empty function */
}

/* 8000E01C-8000E020 00895C 0004+00 0/0 5/0 0/0 .text setAlphaComp__10J3DPEBlockFRC12J3DAlphaComp
 */
void J3DPEBlock::setAlphaComp(J3DAlphaComp const& param_0) {
    /* empty function */
}

/* 8000E020-8000E024 008960 0004+00 0/0 2/0 0/0 .text
 * setIndTexCoordScale__11J3DIndBlockFUl19J3DIndTexCoordScale   */
void J3DIndBlock::setIndTexCoordScale(u32 param_0, J3DIndTexCoordScale param_1) {
    /* empty function */
}

/* 8000E024-8000E060 008964 003C+00 0/0 2/2 0/0 .text            __dt__19J3DIndTexCoordScaleFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm J3DIndTexCoordScale::~J3DIndTexCoordScale() {
    nofralloc
#include "asm/m_Do/m_Do_ext/__dt__19J3DIndTexCoordScaleFv.s"
}
#pragma pop

/* 8000E060-8000E064 0089A0 0004+00 0/0 2/0 0/0 .text setIndTexMtx__11J3DIndBlockFUl12J3DIndTexMtx
 */
void J3DIndBlock::setIndTexMtx(u32 param_0, J3DIndTexMtx param_1) {
    /* empty function */
}

/* 8000E064-8000E0A0 0089A4 003C+00 0/0 2/2 0/0 .text            __dt__12J3DIndTexMtxFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm J3DIndTexMtx::~J3DIndTexMtx() {
    nofralloc
#include "asm/m_Do/m_Do_ext/__dt__12J3DIndTexMtxFv.s"
}
#pragma pop

/* 8000E0A0-8000E0A4 0089E0 0004+00 0/0 2/0 0/0 .text            setIndTexStageNum__11J3DIndBlockFUc
 */
void J3DIndBlock::setIndTexStageNum(u8 param_0) {
    /* empty function */
}

/* 8000E0A4-8000E0A8 0089E4 0004+00 0/0 2/0 0/0 .text
 * setIndTevStage__11J3DTevBlockFUl14J3DIndTevStage             */
void J3DTevBlock::setIndTevStage(u32 param_0, J3DIndTevStage param_1) {
    /* empty function */
}

/* 8000E0A8-8000E0AC 0089E8 0004+00 0/0 2/0 0/0 .text setTevStage__11J3DTevBlockFUl11J3DTevStage
 */
void J3DTevBlock::setTevStage(u32 param_0, J3DTevStage param_1) {
    /* empty function */
}

/* 8000E0AC-8000E0B0 0089EC 0004+00 0/0 2/0 0/0 .text            setTexNo__11J3DTevBlockFUlUs */
void J3DTevBlock::setTexNo(u32 param_0, u16 param_1) {
    /* empty function */
}

/* 8000E0B0-8000E0B4 0089F0 0004+00 0/0 4/0 0/0 .text
 * setTevSwapModeTable__11J3DTevBlockFUl19J3DTevSwapModeTable   */
void J3DTevBlock::setTevSwapModeTable(u32 param_0, J3DTevSwapModeTable param_1) {
    /* empty function */
}

/* 8000E0B4-8000E0B8 0089F4 0004+00 0/0 4/0 0/0 .text            setTevKAlphaSel__11J3DTevBlockFUlUc
 */
void J3DTevBlock::setTevKAlphaSel(u32 param_0, u8 param_1) {
    /* empty function */
}

/* 8000E0B8-8000E0BC 0089F8 0004+00 0/0 3/0 0/0 .text            setTevKColorSel__11J3DTevBlockFUlUc
 */
void J3DTevBlock::setTevKColorSel(u32 param_0, u8 param_1) {
    /* empty function */
}

/* 8000E0BC-8000E0C0 0089FC 0004+00 0/0 2/0 0/0 .text setTevOrder__11J3DTevBlockFUl11J3DTevOrder
 */
void J3DTevBlock::setTevOrder(u32 param_0, J3DTevOrder param_1) {
    /* empty function */
}

/* 8000E0C0-8000E0C4 008A00 0004+00 0/0 3/0 0/0 .text setTevKColor__11J3DTevBlockFUl10J3DGXColor
 */
void J3DTevBlock::setTevKColor(u32 param_0, J3DGXColor param_1) {
    /* empty function */
}

/* 8000E0C4-8000E0C8 008A04 0004+00 0/0 3/0 0/0 .text setTevColor__11J3DTevBlockFUl13J3DGXColorS10
 */
void J3DTevBlock::setTevColor(u32 param_0, J3DGXColorS10 param_1) {
    /* empty function */
}

/* 8000E0C8-8000E0CC 008A08 0004+00 0/0 2/0 0/0 .text            setTevStageNum__11J3DTevBlockFUc */
void J3DTevBlock::setTevStageNum(u8 param_0) {
    /* empty function */
}

/* 8000E0CC-8000E0D0 008A0C 0004+00 0/0 2/0 0/0 .text
 * setTexCoord__14J3DTexGenBlockFUlPC11J3DTexCoord              */
void J3DTexGenBlock::setTexCoord(u32 param_0, J3DTexCoord const* param_1) {
    /* empty function */
}

/* 8000E0D0-8000E0D4 008A10 0004+00 0/0 2/0 0/0 .text            setTexGenNum__14J3DTexGenBlockFUl
 */
void J3DTexGenBlock::setTexGenNum(u32 param_0) {
    /* empty function */
}

/* 8000E0D4-8000E0D8 008A14 0004+00 0/0 3/0 0/0 .text setAmbColor__13J3DColorBlockFUl10J3DGXColor
 */
void J3DColorBlock::setAmbColor(u32 param_0, J3DGXColor param_1) {
    /* empty function */
}

/* 8000E0D8-8000E0DC 008A18 0004+00 0/0 2/0 0/0 .text
 * setColorChan__13J3DColorBlockFUlRC12J3DColorChan             */
void J3DColorBlock::setColorChan(u32 param_0, J3DColorChan const& param_1) {
    /* empty function */
}

/* 8000E0DC-8000E0E0 008A1C 0004+00 0/0 2/0 0/0 .text setMatColor__13J3DColorBlockFUl10J3DGXColor
 */
void J3DColorBlock::setMatColor(u32 param_0, J3DGXColor param_1) {
    /* empty function */
}

/* 8000E0E0-8000E0E4 008A20 0004+00 0/0 2/0 0/0 .text            setColorChanNum__13J3DColorBlockFUc
 */
void J3DColorBlock::setColorChanNum(u8 param_0) {
    /* empty function */
}

/* 8000E0E4-8000E0F0 008A24 000C+00 0/0 1/1 0/0 .text            __ct__19J3DIndTexCoordScaleFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm J3DIndTexCoordScale::J3DIndTexCoordScale() {
    nofralloc
#include "asm/m_Do/m_Do_ext/__ct__19J3DIndTexCoordScaleFv.s"
}
#pragma pop

/* 8000E0F0-8000E128 008A30 0038+00 0/0 1/1 0/0 .text            __ct__12J3DIndTexMtxFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm J3DIndTexMtx::J3DIndTexMtx() {
    nofralloc
#include "asm/m_Do/m_Do_ext/__ct__12J3DIndTexMtxFv.s"
}
#pragma pop

/* 8000E128-8000E134 008A68 000C+00 0/0 1/1 0/0 .text            __ct__14J3DIndTexOrderFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm J3DIndTexOrder::J3DIndTexOrder() {
    nofralloc
#include "asm/m_Do/m_Do_ext/__ct__14J3DIndTexOrderFv.s"
}
#pragma pop

/* 8000E134-8000E140 008A74 000C+00 0/0 1/1 0/0 .text            __ct__19J3DTevSwapModeTableFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm J3DTevSwapModeTable::J3DTevSwapModeTable() {
    nofralloc
#include "asm/m_Do/m_Do_ext/__ct__19J3DTevSwapModeTableFv.s"
}
#pragma pop

/* 8000E140-8000E14C 008A80 000C+00 0/0 2/2 0/0 .text            __ct__11J3DTevOrderFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm J3DTevOrder::J3DTevOrder() {
    nofralloc
#include "asm/m_Do/m_Do_ext/__ct__11J3DTevOrderFv.s"
}
#pragma pop

/* 8000E14C-8000E230 008A8C 00E4+00 0/0 2/2 0/0 .text            __ct__14J3DIndTevStageFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm J3DIndTevStage::J3DIndTevStage() {
    nofralloc
#include "asm/m_Do/m_Do_ext/__ct__14J3DIndTevStageFv.s"
}
#pragma pop

/* 8000E230-8000E298 008B70 0068+00 0/0 4/4 0/0 .text            __ct__11J3DTevStageFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm J3DTevStage::J3DTevStage() {
    nofralloc
#include "asm/m_Do/m_Do_ext/__ct__11J3DTevStageFv.s"
}
#pragma pop

/* 8000E298-8000E460 008BD8 01C8+00 1/1 1/1 0/0 .text
 * setTevStageInfo__11J3DTevStageFRC15J3DTevStageInfo           */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void J3DTevStage::setTevStageInfo(J3DTevStageInfo const& param_0) {
    nofralloc
#include "asm/m_Do/m_Do_ext/setTevStageInfo__11J3DTevStageFRC15J3DTevStageInfo.s"
}
#pragma pop

/* 8000E460-8000E464 008DA0 0004+00 0/0 3/3 0/0 .text            __ct__13J3DGXColorS10Fv */
// J3DGXColorS10::J3DGXColorS10() {
extern "C" void __ct__13J3DGXColorS10Fv() {
    /* empty function */
}

/* 8000E464-8000E47C 008DA4 0018+00 0/0 2/2 0/0 .text            __ct__11J3DTexCoordFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm J3DTexCoord::J3DTexCoord() {
    nofralloc
#include "asm/m_Do/m_Do_ext/__ct__11J3DTexCoordFv.s"
}
#pragma pop

/* 8000E47C-8000E538 008DBC 00BC+00 0/0 1/1 0/0 .text            __ct__12J3DColorChanFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm J3DColorChan::J3DColorChan() {
    nofralloc
#include "asm/m_Do/m_Do_ext/__ct__12J3DColorChanFv.s"
}
#pragma pop

/* 8000E538-8000E53C 008E78 0004+00 0/0 3/3 0/0 .text            __ct__10J3DGXColorFv */
// J3DGXColor::J3DGXColor() {
extern "C" void __ct__10J3DGXColorFv() {
    /* empty function */
}

/* 8000E53C-8000E5F8 008E7C 00BC+00 0/0 0/0 19/19 .text
 * create__21mDoExt_invisibleModelFP8J3DModelUc                 */
int mDoExt_invisibleModel::create(J3DModel* i_model, u8 param_1) {
    J3DModelData* model_data = i_model->getModelData();

    mpPackets = new mDoExt_invJntPacket[model_data->getJointNum()];
    if (mpPackets == NULL) {
        return 0;
    }

    mModel = i_model;
    mDoExt_invJntPacket* packet = mpPackets;

    for (u16 i = 0; i < model_data->getJointNum(); i++) {
        packet->setJoint(mModel, i, param_1);
        packet++;
    }

    return 1;
}

/* 8000E5F8-8000E654 008F38 005C+00 2/1 0/0 0/0 .text            __dt__19mDoExt_invJntPacketFv */
mDoExt_invJntPacket::~mDoExt_invJntPacket() {}

/* 8000E654-8000E680 008F94 002C+00 1/1 0/0 0/0 .text            __ct__19mDoExt_invJntPacketFv */
mDoExt_invJntPacket::mDoExt_invJntPacket() {}

/* 8000E680-8000E6C8 008FC0 0048+00 0/0 1/0 0/0 .text            __dt__9J3DPacketFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DPacket::~J3DPacket() {
extern "C" asm void __dt__9J3DPacketFv() {
    nofralloc
#include "asm/m_Do/m_Do_ext/__dt__9J3DPacketFv.s"
}
#pragma pop

/* 8000E6C8-8000E7C0 009008 00F8+00 1/1 0/0 0/0 .text entryJoint__21mDoExt_invisibleModelFP4cXyz
 */
void mDoExt_invisibleModel::entryJoint(cXyz* param_0) {
    J3DModelData* modelData = mModel->getModelData();
    mDoExt_invJntPacket* packet = mpPackets;

    if (param_0 == NULL) {
        cXyz tmp;
        for (u16 i = 0; i < modelData->getJointNum(); i++) {
            MtxP anmMtx = mModel->i_getAnmMtx(i);
            tmp.set(anmMtx[0][3], anmMtx[1][3], anmMtx[2][3]);
            dComIfGd_entryZSortListZxlu(packet, tmp);
            packet++;
        }
    } else {
        for (u16 i = 0; i < modelData->getJointNum(); i++) {
            dComIfGd_entryZSortListZxlu(packet, *param_0);
            packet++;
        }
    }
}

/* 8000E7C0-8000E834 009100 0074+00 0/0 0/0 17/17 .text entryDL__21mDoExt_invisibleModelFP4cXyz */
void mDoExt_invisibleModel::entryDL(cXyz* param_0) {
    J3DDrawBuffer* buffer0 = j3dSys.getDrawBuffer(0);
    J3DDrawBuffer* buffer1 = j3dSys.getDrawBuffer(1);
    dComIfGd_setListZxlu();
    mDoExt_modelEntryDL(mModel);
    entryJoint(param_0);
    j3dSys.setDrawBuffer(buffer0, 0);
    j3dSys.setDrawBuffer(buffer1, 1);
}

/* 8000E834-8000EA80 009174 024C+00 0/0 0/0 7/7 .text
 * mDoExt_setupShareTexture__FP12J3DModelDataP12J3DModelData    */
void mDoExt_setupShareTexture(J3DModelData* i_modelData, J3DModelData* i_shareModelData) {
    JUT_ASSERT(1547, i_modelData != 0 && i_shareModelData != 0);
    J3DTexture* texture = i_modelData->getTexture();
    JUT_ASSERT(1549, texture != 0);
    JUTNameTab* textureName = i_modelData->getTextureName();
    JUT_ASSERT(1551, textureName != 0);
    J3DTexture* shareTexture = i_shareModelData->getTexture();
    JUT_ASSERT(1553, shareTexture != 0);
    JUTNameTab* shareTextureName = i_shareModelData->getTextureName();
    JUT_ASSERT(1555, shareTextureName != 0)

    bool bvar = false;
    for (u16 i = 0; i < texture->getNum(); i++) {
        ResTIMG* res = texture->getResTIMG(i);
        if (res->imageOffset == 0) {
            for (u16 j = 0; j < shareTexture->getNum(); j++) {
                if (!strcmp(textureName->getName(i), shareTextureName->getName(j))) {
                    JUT_ASSERT(1564, shareTexture->getResTIMG(j)->imageOffset != 0);
                    texture->setResTIMG(i, *shareTexture->getResTIMG(j));
                    bvar = true;
                }
            }
        }
    }

    if (bvar) {
        j3dSys.setTexture(texture);

        for (u16 i = 0; i < i_modelData->getMaterialNum(); i++) {
            J3DMaterial* mat = i_modelData->getMaterialNodePointer(i);
            J3DTevBlock* tevBlock = mat->getTevBlock();
            JUT_ASSERT(1577, tevBlock != 0);
            J3DDisplayListObj* dlObj = mat->getSharedDisplayListObj();

            BOOL ret = OSDisableInterrupts();
            GDInitGDLObj(&J3DDisplayListObj::sGDLObj, dlObj->getDisplayList(0),
                         dlObj->getDisplayListSize());
            GDSetCurrent(&J3DDisplayListObj::sGDLObj);
            tevBlock->patchTexNoAndTexCoordScale();
            OSRestoreInterrupts(ret);
            GDSetCurrent(NULL);
        }
    }
}

/* ############################################################################################## */
/* 803740FC-803740FC 00075C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
// MWCC ignores mapping of some japanese characters using the
// byte 0x5C (ASCII '\'). This is why this string is hex-encoded.

// "ソリッドヒープちゃうがな！\n"
// "This isn't a solid heap! \n"
SECTION_DEAD static char const* const stringBase_803740FC =
    "\x83\x5C\x83\x8A\x83\x62\x83\x68\x83\x71\x81\x5B\x83\x76\x82\xBF\x82\xE1\x82\xA4\x82\xAA\x82"
    "\xC8\x81\x49\x0A";
#pragma pop

/* 8000EA80-8000ECC0 0093C0 0240+00 0/0 0/0 6/6 .text mDoExt_setupStageTexture__FP12J3DModelData
 */
void mDoExt_setupStageTexture(J3DModelData* i_modelData) {
    J3DTexture* texture_p = i_modelData->getTexture();

    if (texture_p != NULL) {
        JUTNameTab* tex_name_p = i_modelData->getTextureName();
        if (tex_name_p != NULL) {
            bool set_timg = false;

            for (u16 i = 0; i < texture_p->getNum(); i++) {
                ResTIMG* img = texture_p->getResTIMG(i);
                if (img->imageOffset == 0) {
                    char res_name[64];
                    snprintf(res_name, sizeof(res_name), "%s.bti", tex_name_p->getName(i));

                    ResTIMG* timg = (ResTIMG*)dComIfG_getStageRes(res_name);
                    texture_p->setResTIMG(i, *timg);
                    set_timg = true;
                }
            }

            if (set_timg) {
                j3dSys.setTexture(texture_p);

                for (u16 i = 0; i < i_modelData->getMaterialNum(); i++) {
                    J3DMaterial* mat_p = i_modelData->getMaterialNodePointer(i);
                    J3DTevBlock* block_p = mat_p->getTevBlock();

                    if (block_p != NULL) {
                        J3DDisplayListObj* dlObj_p = mat_p->getSharedDisplayListObj();

                        if (dlObj_p != NULL) {
                            BOOL state = OSDisableInterrupts();

                            GDInitGDLObj(&J3DDisplayListObj::sGDLObj, dlObj_p->getDisplayList(0),
                                         dlObj_p->getDisplayListSize());
                            GDSetCurrent(&J3DDisplayListObj::sGDLObj);
                            block_p->patchTexNoAndTexCoordScale();

                            OSRestoreInterrupts(state);
                            GDSetCurrent(NULL);
                        }
                    }
                }
            }
        }
    }
}

/* ############################################################################################## */
/* 80450C20-80450C24 000120 0004+00 2/1 0/0 0/0 .sbss            AssertHeap */
static JKRAssertHeap* AssertHeap;

/* 8000ECC0-8000ECE4 009600 0024+00 0/0 1/1 0/0 .text            mDoExt_createAssertHeap__FP7JKRHeap
 */
JKRAssertHeap* mDoExt_createAssertHeap(JKRHeap* i_heap) {
    return AssertHeap = JKRAssertHeap::create(i_heap);
}

/* 8000ECE4-8000ECEC -00001 0008+00 0/0 0/0 0/0 .text            mDoExt_getAssertHeap__Fv */
JKRAssertHeap* mDoExt_getAssertHeap() {
    return AssertHeap;
}

/* ############################################################################################## */
/* 80450C24-80450C28 000124 0004+00 2/1 0/0 0/0 .sbss            DbPrintHeap */
static JKRExpHeap* DbPrintHeap;

/* 8000ECEC-8000ED14 00962C 0028+00 0/0 1/1 0/0 .text mDoExt_createDbPrintHeap__FUlP7JKRHeap */
JKRExpHeap* mDoExt_createDbPrintHeap(u32 heapSize, JKRHeap* i_heap) {
    return DbPrintHeap = JKRExpHeap::create(heapSize, i_heap, true);
}

/* 8000ED14-8000ED1C -00001 0008+00 0/0 0/0 0/0 .text            mDoExt_getDbPrintHeap__Fv */
JKRExpHeap* mDoExt_getDbPrintHeap() {
    return DbPrintHeap;
}

/* ############################################################################################## */
/* 80450C28-80450C2C 000128 0004+00 2/1 3/3 0/0 .sbss            gameHeap */
JKRExpHeap* gameHeap;

/* 8000ED1C-8000ED50 00965C 0034+00 0/0 1/1 0/0 .text            mDoExt_createGameHeap__FUlP7JKRHeap
 */
JKRExpHeap* mDoExt_createGameHeap(u32 heapSize, JKRHeap* i_heap) {
    gameHeap = JKRExpHeap::create(heapSize, i_heap, true);
    gameHeap->setAllocationMode(JKRExpHeap::ALLOC_MODE_1);
    return gameHeap;
}

/* 8000ED50-8000ED58 -00001 0008+00 0/0 0/0 0/0 .text            mDoExt_getGameHeap__Fv */
JKRExpHeap* mDoExt_getGameHeap() {
    return gameHeap;
}

/* ############################################################################################## */
/* 80450C2C-80450C30 00012C 0004+00 2/1 3/3 0/0 .sbss            zeldaHeap */
JKRExpHeap* zeldaHeap;

/* 8000ED58-8000ED80 009698 0028+00 0/0 1/1 0/0 .text mDoExt_createZeldaHeap__FUlP7JKRHeap */
JKRExpHeap* mDoExt_createZeldaHeap(u32 heapSize, JKRHeap* i_heap) {
    return zeldaHeap = JKRExpHeap::create(heapSize, i_heap, true);
}

/* 8000ED80-8000ED88 -00001 0008+00 0/0 0/0 0/0 .text            mDoExt_getZeldaHeap__Fv */
JKRExpHeap* mDoExt_getZeldaHeap() {
    return zeldaHeap;
}

/* ############################################################################################## */
/* 80450C30-80450C34 000130 0004+00 2/1 1/1 0/0 .sbss            commandHeap */
JKRExpHeap* commandHeap;

/* 8000ED88-8000EDB0 0096C8 0028+00 0/0 1/1 0/0 .text mDoExt_createCommandHeap__FUlP7JKRHeap */
JKRExpHeap* mDoExt_createCommandHeap(u32 heapSize, JKRHeap* i_heap) {
    return commandHeap = JKRExpHeap::create(heapSize, i_heap, true);
}

/* 8000EDB0-8000EDB8 -00001 0008+00 0/0 0/0 0/0 .text            mDoExt_getCommandHeap__Fv */
JKRExpHeap* mDoExt_getCommandHeap() {
    return commandHeap;
}

/* ############################################################################################## */
/* 80450C34-80450C38 000134 0004+00 3/1 5/5 0/0 .sbss            archiveHeap */
JKRExpHeap* archiveHeap;

/* 8000EDB8-8000EDEC 0096F8 0034+00 0/0 1/1 0/0 .text mDoExt_createArchiveHeap__FUlP7JKRHeap */
JKRExpHeap* mDoExt_createArchiveHeap(u32 heapSize, JKRHeap* i_heap) {
    archiveHeap = JKRExpHeap::create(heapSize, i_heap, true);
    archiveHeap->setAllocationMode(JKRExpHeap::ALLOC_MODE_1);
    return archiveHeap;
}

/* 8000EDEC-8000EDF4 -00001 0008+00 0/0 0/0 0/0 .text            mDoExt_getArchiveHeap__Fv */
JKRExpHeap* mDoExt_getArchiveHeap() {
    return archiveHeap;
}

/* 8000EDF4-8000EDFC -00001 0008+00 0/0 0/0 0/0 .text            mDoExt_getArchiveHeapPtr__Fv */
JKRExpHeap* mDoExt_getArchiveHeapPtr() {
    return archiveHeap;
}

/* ############################################################################################## */
/* 80450C38-80450C3C 000138 0004+00 2/1 0/0 0/0 .sbss            j2dHeap */
static JKRExpHeap* j2dHeap;

/* 8000EDFC-8000EE30 00973C 0034+00 0/0 1/1 0/0 .text            mDoExt_createJ2dHeap__FUlP7JKRHeap
 */
JKRExpHeap* mDoExt_createJ2dHeap(u32 heapSize, JKRHeap* i_heap) {
    j2dHeap = JKRExpHeap::create(heapSize, i_heap, true);
    j2dHeap->setAllocationMode(JKRExpHeap::ALLOC_MODE_1);
    return j2dHeap;
}

/* 8000EE30-8000EE38 -00001 0008+00 0/0 0/0 0/0 .text            mDoExt_getJ2dHeap__Fv */
JKRExpHeap* mDoExt_getJ2dHeap() {
    return j2dHeap;
}

/* ############################################################################################## */
/* 80450C3C-80450C40 00013C 0004+00 1/0 0/0 0/0 .sbss            HostIOHeap */
static JKRExpHeap* HostIOHeap;

/* 8000EE38-8000EE40 -00001 0008+00 0/0 0/0 0/0 .text            mDoExt_getHostIOHeap__Fv */
JKRExpHeap* mDoExt_getHostIOHeap() {
    return HostIOHeap;
}

/* 8000EE40-8000EED8 009780 0098+00 3/3 0/0 0/0 .text mDoExt_createSolidHeap__FUlP7JKRHeapUl */
static JKRSolidHeap* mDoExt_createSolidHeap(u32 i_size, JKRHeap* i_heap, u32 i_alignment) {
    if (i_heap == NULL) {
        i_heap = JKRHeap::getCurrentHeap();
    }

    JKRSolidHeap* createdHeap;
    if (i_size == 0 || i_size == 0xFFFFFFFF) {
        createdHeap = JKRSolidHeap::create(0xFFFFFFFFFF, i_heap, false);
    } else {
        i_size = ALIGN_NEXT(i_size, 0x10);
        i_size += 0x80;

        if (0x10 < i_alignment) {
            i_size = (i_alignment - 0x10 + i_size);
        }
        createdHeap = JKRSolidHeap::create(i_size, i_heap, false);
    }

    if (createdHeap != NULL) {
        createdHeap->setErrorFlag(true);
    }

    return createdHeap;
}

/* 8000EED8-8000EF20 009818 0048+00 0/0 2/2 0/0 .text mDoExt_createSolidHeapFromGame__FUlUl */
JKRSolidHeap* mDoExt_createSolidHeapFromGame(u32 i_size, u32 i_alignment) {
    return mDoExt_createSolidHeap(i_size, mDoExt_getGameHeap(), i_alignment);
}

/* 8000EF20-8000EF68 009860 0048+00 0/0 1/1 0/0 .text mDoExt_createSolidHeapFromSystem__FUlUl */
JKRSolidHeap* mDoExt_createSolidHeapFromSystem(u32 i_size, u32 i_alignment) {
    return mDoExt_createSolidHeap(i_size, mDoExt_getZeldaHeap(), i_alignment);
}

/* 8000EF68-8000EFBC 0098A8 0054+00 2/2 0/0 0/0 .text
 * mDoExt_createSolidHeapToCurrent__FPP7JKRHeapUlP7JKRHeapUl    */
JKRSolidHeap* mDoExt_createSolidHeapToCurrent(JKRHeap** o_heap, u32 i_size, JKRHeap* i_parent,
                                              u32 i_alignment) {
    if (o_heap != NULL) {
        *o_heap = JKRHeap::getCurrentHeap();
    }

    JKRSolidHeap* resultHeap = mDoExt_createSolidHeap(i_size, i_parent, i_alignment);
    if (resultHeap != NULL) {
        mDoExt_setCurrentHeap(resultHeap);
    }

    return resultHeap;
}

/* ############################################################################################## */
/* 80450C40-80450C44 000140 0004+00 2/2 0/0 0/0 .sbss            mDoExt_SaveCurrentHeap */
static JKRHeap* mDoExt_SaveCurrentHeap;

/* 8000EFBC-8000EFF4 0098FC 0038+00 1/1 3/3 0/0 .text
 * mDoExt_createSolidHeapToCurrent__FUlP7JKRHeapUl              */
JKRSolidHeap* mDoExt_createSolidHeapToCurrent(u32 i_size, JKRHeap* i_parent, u32 i_alignment) {
    return mDoExt_createSolidHeapToCurrent(&mDoExt_SaveCurrentHeap, i_size, i_parent, i_alignment);
}

/* 8000EFF4-8000F044 009934 0050+00 0/0 2/2 0/0 .text
 * mDoExt_createSolidHeapFromGameToCurrent__FPP7JKRHeapUlUl     */
JKRSolidHeap* mDoExt_createSolidHeapFromGameToCurrent(JKRHeap** o_heap, u32 i_size,
                                                      u32 i_alignment) {
    return mDoExt_createSolidHeapToCurrent(o_heap, i_size, mDoExt_getGameHeap(), i_alignment);
}

/* 8000F044-8000F08C 009984 0048+00 0/0 7/7 0/0 .text
 * mDoExt_createSolidHeapFromGameToCurrent__FUlUl               */
JKRSolidHeap* mDoExt_createSolidHeapFromGameToCurrent(u32 i_size, u32 i_alignment) {
    return mDoExt_createSolidHeapToCurrent(i_size, mDoExt_getGameHeap(), i_alignment);
}

/* 8000F08C-8000F158 0099CC 00CC+00 1/1 11/11 0/0 .text mDoExt_adjustSolidHeap__FP12JKRSolidHeap
 */
u32 mDoExt_adjustSolidHeap(JKRSolidHeap* i_heap) {
    if (i_heap == NULL) {
        return -1;
    }

    JKRHeap* parentHeap = i_heap->getParent();
    if (parentHeap == NULL || parentHeap->getHeapType() != 'EXPH') {
        // "Can't adjust because parent heap isn't Exp %08x %08x\n"
        OSReport_Error("親ヒープがExpでないのでアジャストできません %08x %08x\n", i_heap,
                       parentHeap);
        return -1;
    }

    s32 result = i_heap->adjustSize();
    if (result < 0) {
        // "adjustSize failure %08x\n"
        OSReport_Error("adjustSize失敗 %08x\n", i_heap);
        return -1;
    }

    // this probably indicates that 0x80 is some constant, maybe from a sizeof(JKRSolidHeap)
    // with alignment?
    if (result >= (u32)0x80) {
        result -= 0x80;
    }

    return result;
}

/* 8000F158-8000F18C 009A98 0034+00 0/0 1/1 0/0 .text
 * mDoExt_adjustSolidHeapToSystem__FP12JKRSolidHeap             */
u32 mDoExt_adjustSolidHeapToSystem(JKRSolidHeap* i_heap) {
    u32 result = mDoExt_adjustSolidHeap(i_heap);
    mDoExt_restoreCurrentHeap();
    return result;
}

/* 8000F18C-8000F1AC 009ACC 0020+00 0/0 13/13 0/0 .text mDoExt_destroySolidHeap__FP12JKRSolidHeap
 */
void mDoExt_destroySolidHeap(JKRSolidHeap* i_heap) {
    i_heap->destroy();
}

/* 8000F1AC-8000F1CC 009AEC 0020+00 0/0 7/7 0/0 .text mDoExt_destroyExpHeap__FP10JKRExpHeap */
void mDoExt_destroyExpHeap(JKRExpHeap* i_heap) {
    i_heap->destroy();
}

/* 8000F1CC-8000F1EC 009B0C 0020+00 1/1 78/78 2/2 .text            mDoExt_setCurrentHeap__FP7JKRHeap
 */
JKRHeap* mDoExt_setCurrentHeap(JKRHeap* heap) {
    return heap->becomeCurrentHeap();
}

/* 8000F1EC-8000F1F4 -00001 0008+00 0/0 0/0 0/0 .text            mDoExt_getCurrentHeap__Fv */
JKRHeap* mDoExt_getCurrentHeap() {
    return JKRHeap::getCurrentHeap();
}

/* 8000F1F4-8000F220 009B34 002C+00 1/1 9/9 0/0 .text            mDoExt_restoreCurrentHeap__Fv */
void mDoExt_restoreCurrentHeap() {
    mDoExt_SaveCurrentHeap->becomeCurrentHeap();
    mDoExt_SaveCurrentHeap = NULL;
}

/* 8000F220-8000F26C 009B60 004C+00 0/0 1/1 0/0 .text mDoExt_resIDToIndex__FP10JKRArchiveUs */
int mDoExt_resIDToIndex(JKRArchive* p_archive, u16 id) {
    JKRArchive::SDIFileEntry* res = p_archive->findIdResource(id);

    if (res == NULL) {
        return -1;
    }

    return res - p_archive->mFiles;
}

/* 8000F26C-8000F4B0 009BAC 0244+00 1/0 0/0 0/0 .text            calc__25mDoExt_MtxCalcAnmBlendTblFv
 */
// matches with literals
#ifdef NONMATCHING
void mDoExt_MtxCalcAnmBlendTbl::calc() {
    u16 jntNo = getJoint()->getJntNo();
    j3dSys.setCurrentMtxCalc(this);
    if (mNum == 1) {
        J3DTransformInfo info1;
        mAnmRatio->getAnmTransform()->getTransform(jntNo, &info1);
        J3DMtxCalcCalcTransformMaya::calcTransform(info1);
        return;
    }
    J3DTransformInfo info2;
    Quaternion quat1;
    Quaternion quat2;
    Quaternion quat3;
    mAnmRatio->getAnmTransform()->getTransform(jntNo, &info2);
    JMAEulerToQuat(info2.mRotation.x, info2.mRotation.y, info2.mRotation.z, &quat1);
    quat3 = quat1;
    for (int i = 1; i < mNum; i++) {
        J3DAnmTransform* transform = mAnmRatio[i].getAnmTransform();
        if (transform) {
            J3DTransformInfo info3;
            transform->getTransform(jntNo, &info3);
            f32 ratio = mAnmRatio[i].getRatio();
            f32 f30 = 1.0f - ratio;
            JMAEulerToQuat(info3.mRotation.x, info3.mRotation.y, info3.mRotation.z, &quat2);
            JMAQuatLerp(&quat1, &quat2, ratio, &quat3);
            quat1 = quat3;
            info2.mTranslate.x = info2.mTranslate.x * f30 + info3.mTranslate.x * ratio;
            info2.mTranslate.y = info2.mTranslate.y * f30 + info3.mTranslate.y * ratio;
            info2.mTranslate.z = info2.mTranslate.z * f30 + info3.mTranslate.z * ratio;
            info2.mScale.x = info2.mScale.x * f30 + info3.mScale.x * ratio;
            info2.mScale.y = info2.mScale.y * f30 + info3.mScale.y * ratio;
            info2.mScale.z = info2.mScale.z * f30 + info3.mScale.z * ratio;
        }
    }
    Mtx mtx;
    MTXQuat(mtx, &quat3);
    mDoExt_setJ3DData(mtx, &info2, jntNo);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void mDoExt_MtxCalcAnmBlendTbl::calc() {
    nofralloc
#include "asm/m_Do/m_Do_ext/calc__25mDoExt_MtxCalcAnmBlendTblFv.s"
}
#pragma pop
#endif

/* 8000F4B0-8000F848 009DF0 0398+00 1/0 0/0 0/0 .text calc__28mDoExt_MtxCalcAnmBlendTblOldFv */
// matches with literals
#ifdef NONMATCHING
void mDoExt_MtxCalcAnmBlendTblOld::calc() {
    u16 jntNo = getJoint()->getJntNo();
    j3dSys.setCurrentMtxCalc(this);
    J3DModelData* modelData = j3dSys.getModel()->getModelData();
    J3DTransformInfo info1;
    Quaternion quat1;
    Quaternion quat2;
    Quaternion quat3;
    mAnmRatio->getAnmTransform()->getTransform(jntNo, &info1);
    JMAEulerToQuat(info1.mRotation.x, info1.mRotation.y, info1.mRotation.z, &quat1);
    quat3 = quat1;
    for (int i = 1; i < mNum; i++) {
        if (mAnmRatio[i].getAnmTransform()) {
            J3DAnmTransform* transform = mAnmRatio[i].getAnmTransform();
            J3DTransformInfo info2;
            transform->getTransform(jntNo, &info2);
            f32 ratio = mAnmRatio[i].getRatio();
            f32 f30 = 1.0f - ratio;
            JMAEulerToQuat(info2.mRotation.x, info2.mRotation.y, info2.mRotation.z, &quat2);
            JMAQuatLerp(&quat1, &quat2, ratio, &quat3);
            quat1 = quat3;
            info1.mTranslate.x = info1.mTranslate.x * f30 + info2.mTranslate.x * ratio;
            info1.mTranslate.y = info1.mTranslate.y * f30 + info2.mTranslate.y * ratio;
            info1.mTranslate.z = info1.mTranslate.z * f30 + info2.mTranslate.z * ratio;
            info1.mScale.x = info1.mScale.x * f30 + info2.mScale.x * ratio;
            info1.mScale.y = info1.mScale.y * f30 + info2.mScale.y * ratio;
            info1.mScale.z = info1.mScale.z * f30 + info2.mScale.z * ratio;
        }
    }

    J3DTransformInfo* oldTransInfo = mOldFrame->getOldFrameTransInfo(jntNo);
    Quaternion* oldQuat = mOldFrame->getOldFrameQuaternion(jntNo);
    if (mOldFrame->getOldFrameFlg()) {
        if (mOldFrame->getOldFrameRate() > 0.0f && mOldFrame->getOldFrameStartJoint() <= jntNo && mOldFrame->getOldFrameEndJoint() > jntNo) {
            f32 oldFrameRate = mOldFrame->getOldFrameRate();
            f32 f31 = 1.0f - oldFrameRate;
            JMAQuatLerp(oldQuat, &quat1, f31, &quat3);
            info1.mTranslate.x = info1.mTranslate.x * f31 + oldTransInfo->mTranslate.x * oldFrameRate;
            info1.mTranslate.y = info1.mTranslate.y * f31 + oldTransInfo->mTranslate.y * oldFrameRate;
            info1.mTranslate.z = info1.mTranslate.z * f31 + oldTransInfo->mTranslate.z * oldFrameRate;
            info1.mScale.x = info1.mScale.x * f31 + oldTransInfo->mScale.x * oldFrameRate;
            info1.mScale.y = info1.mScale.y * f31 + oldTransInfo->mScale.y * oldFrameRate;
            info1.mScale.z = info1.mScale.z * f31 + oldTransInfo->mScale.z * oldFrameRate;
        }
    } else if (jntNo == modelData->getJointNum() - 1) {
        mOldFrame->onOldFrameFlg();
    }
    Mtx mtx;
    mDoMtx_quat(mtx, &quat3);
    mDoExt_setJ3DData(mtx, &info1, jntNo);
    *oldQuat = quat3;
    *oldTransInfo = info1;
    if (jntNo == modelData->getJointNum() - 1) {
        mOldFrame->decOldFrameMorfCounter();
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void mDoExt_MtxCalcAnmBlendTblOld::calc() {
    nofralloc
#include "asm/m_Do/m_Do_ext/calc__28mDoExt_MtxCalcAnmBlendTblOldFv.s"
}
#pragma pop
#endif

/* 8000F848-8000F8CC 00A188 0084+00 0/0 26/26 8/8 .text
 * initOldFrameMorf__22mDoExt_MtxCalcOldFrameFfUsUs             */
// Matches with literals
#ifdef NONMATCHING
void mDoExt_MtxCalcOldFrame::initOldFrameMorf(f32 param_0, u16 frameStartJoint, u16 frameEndJoint) {
    if (param_0 > 0.0f) {
        mOldFrameMorfCounter = param_0;
        field_0x8 = 1.0f / param_0;
        mOldFrameRate = 1.0f;
        field_0x10 = 1.0f;
        field_0x14 = 1.0f;
        decOldFrameMorfCounter();
    } else {
        mOldFrameMorfCounter = 0.0f;
        field_0x8 = 0.0f;
        mOldFrameRate = 0.0f;
        field_0x10 = 0.0f;
        field_0x14 = 0.0f;
    }

    mOldFrameStartJoint = frameStartJoint;
    mOldFrameEndJoint = frameEndJoint;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void mDoExt_MtxCalcOldFrame::initOldFrameMorf(f32 param_0, u16 param_1, u16 param_2) {
    nofralloc
#include "asm/m_Do/m_Do_ext/initOldFrameMorf__22mDoExt_MtxCalcOldFrameFfUsUs.s"
}
#pragma pop
#endif

/* 8000F8CC-8000F950 00A20C 0084+00 2/2 0/0 0/0 .text
 * decOldFrameMorfCounter__22mDoExt_MtxCalcOldFrameFv           */
#ifdef NONMATCHING
void mDoExt_MtxCalcOldFrame::decOldFrameMorfCounter() {
    if (mOldFrameMorfCounter > 0.0f) {

        mOldFrameMorfCounter -= 1.0f;
        if (mOldFrameMorfCounter <= 0.0f) {
            mOldFrameMorfCounter = 0.0f;
            field_0x8 = 0.0f;
            mOldFrameRate = 0.0f;
        }

        field_0x14 = field_0x10;
        field_0x10 = mOldFrameMorfCounter * field_0x8;

        if (field_0x14 > 0.0f) {
            mOldFrameRate = 1.0f - (field_0x14 - field_0x10) / field_0x14;
        } else {
            mOldFrameRate = 0.0f;
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void mDoExt_MtxCalcOldFrame::decOldFrameMorfCounter() {
    nofralloc
#include "asm/m_Do/m_Do_ext/decOldFrameMorfCounter__22mDoExt_MtxCalcOldFrameFv.s"
}
#pragma pop
#endif

/* 8000F950-8000F9D8 00A290 0088+00 3/3 0/0 0/0 .text            __ct__13mDoExt_morf_cFv */
// vtable issues
#ifdef NONMATCHING
mDoExt_morf_c::mDoExt_morf_c() {
    mpModel = NULL;
    mpAnm = NULL;
    mpTransformInfo = NULL;
    mpQuat = NULL;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm mDoExt_morf_c::mDoExt_morf_c() {
    nofralloc
#include "asm/m_Do/m_Do_ext/__ct__13mDoExt_morf_cFv.s"
}
#pragma pop
#endif

/* 8000F9D8-8000FA20 00A318 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" asm void __dt__12J3DFrameCtrlFv() {
    nofralloc
#include "asm/m_Do/m_Do_ext/__dt__12J3DFrameCtrlFv.s"
}
#pragma pop

/* 8000FA20-8000FA8C 00A360 006C+00 1/0 0/0 0/0 .text
 * __dt__73J3DMtxCalcNoAnm<27J3DMtxCalcCalcTransformMaya,24J3DMtxCalcJ3DSysInitMaya>Fv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void func_8000FA20(void* _this) {
    nofralloc
#include "asm/m_Do/m_Do_ext/func_8000FA20.s"
}
#pragma pop

/* 8000FA8C-8000FAE8 00A3CC 005C+00 1/0 0/0 0/0 .text            __dt__19J3DMtxCalcNoAnmBaseFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DMtxCalcNoAnmBase::~J3DMtxCalcNoAnmBase() {
extern "C" asm void __dt__19J3DMtxCalcNoAnmBaseFv() {
    nofralloc
#include "asm/m_Do/m_Do_ext/__dt__19J3DMtxCalcNoAnmBaseFv.s"
}
#pragma pop

/* 8000FAE8-8000FB7C 00A428 0094+00 4/3 0/0 0/0 .text            __dt__13mDoExt_morf_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm mDoExt_morf_c::~mDoExt_morf_c() {
extern "C" asm void __dt__13mDoExt_morf_cFv() {
    nofralloc
#include "asm/m_Do/m_Do_ext/__dt__13mDoExt_morf_cFv.s"
}
#pragma pop

/* 8000FB7C-8000FBC0 00A4BC 0044+00 3/3 4/4 20/20 .text            setMorf__13mDoExt_morf_cFf */
// matches with literals
#ifdef NONMATCHING
void mDoExt_morf_c::setMorf(f32 i_morf) {
    if (mPrevMorf < 0.0f || i_morf == 0.0f) {
        mCurMorf = 1.0f;
    } else {
        mCurMorf = 0.0f;
        mMorfStep = 0.0f;
        field_0x34 = 1.0f / i_morf;
    }

    mPrevMorf = mCurMorf;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void mDoExt_morf_c::setMorf(f32 param_0) {
    nofralloc
#include "asm/m_Do/m_Do_ext/setMorf__13mDoExt_morf_cFf.s"
}
#pragma pop
#endif

/* 8000FBC0-8000FC4C 00A500 008C+00 3/3 0/0 0/0 .text            frameUpdate__13mDoExt_morf_cFv */
// matches with literals
#ifdef NONMATCHING
void mDoExt_morf_c::frameUpdate() {
    if (mCurMorf < 1.0f) {
        mPrevMorf = mCurMorf;

        if (field_0x34 < 0.0f) {
            cLib_chaseF(&mMorfStep, 1.0f, -field_0x34);
            mCurMorf += mMorfStep * ((1.0f - mCurMorf) * mMorfStep);
        } else {
            cLib_chaseF(&mCurMorf, 1.0f, field_0x34);
        }
    }

    mFrameCtrl.update();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void mDoExt_morf_c::frameUpdate() {
    nofralloc
#include "asm/m_Do/m_Do_ext/frameUpdate__13mDoExt_morf_cFv.s"
}
#pragma pop
#endif

/* 8000FC4C-8000FD10 00A58C 00C4+00 0/0 0/0 34/34 .text
 * __ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
 */
mDoExt_McaMorf::mDoExt_McaMorf(J3DModelData* modelData, mDoExt_McaMorfCallBack1_c* callback1,
                                   mDoExt_McaMorfCallBack2_c* callback2, J3DAnmTransform* anmTransform,
                                   int param_4, f32 param_5, int param_6, int param_7, int param_8,
                                   void* param_9, u32 param_10, u32 param_11) {
    field_0x50 = false;
    field_0x51 = false;
    field_0x52 = false;
    create(modelData, callback1, callback2, anmTransform, param_4, param_5, param_6, param_7, param_8, param_9, param_10, param_11);
}

/* 8000FD10-8000FD94 00A650 0084+00 1/0 0/0 0/0 .text            __dt__14mDoExt_McaMorfFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm mDoExt_McaMorf::~mDoExt_McaMorf() {
extern "C" asm void __dt__14mDoExt_McaMorfFv() {
    nofralloc
#include "asm/m_Do/m_Do_ext/__dt__14mDoExt_McaMorfFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80451B28-80451B2C 000128 0004+00 3/3 0/0 0/0 .sdata2          @5939 */
SECTION_SDATA2 static f32 lit_5939 = -1.0f;

/* 8000FD94-80010074 00A6D4 02E0+00 1/1 0/0 0/0 .text
 * create__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
 */
// matches with literals
#ifdef NONMATCHING
int mDoExt_McaMorf::create(J3DModelData* modelData, mDoExt_McaMorfCallBack1_c* callback1,
                           mDoExt_McaMorfCallBack2_c* callback2, J3DAnmTransform* anmTransform,
                           int param_4, f32 param_5, int param_6, int param_7, int param_8,
                           void* param_9, u32 param_10, u32 param_11) {
    mpModel = NULL;
    mpSound = NULL;
    mpTransformInfo = NULL;
    mpQuat = NULL;
    if (!modelData) {
        return 0;
    }
    if (modelData->getMaterialNodePointer(0)->getSharedDisplayListObj() && param_10 == 0) {
        if (param_10 = modelData->isLocked()) {
            param_10 = 0x20000;
        } else {
            param_10 = 0x80000;
        }
    }
    mpModel = mDoExt_J3DModel__create(modelData, param_10, param_11);
    if (!mpModel) {
        return 0;
    }
    if (param_10 != 0x80000) {
        mDoExt_changeMaterial(mpModel);
    }
    if (param_9 == NULL && anmTransform) {
        param_9 = ((mDoExt_transAnmBas*)anmTransform)->getBas();
        if (param_9) {
            param_8 = 1;
        }
    }
    if (param_8) {
        mpSound = new mDoExt_zelAnime();
        if (!mpSound) {
            goto cleanup;
        }
    }
    setAnm(anmTransform, param_4, 0.0f, param_5, param_6, param_7, param_9);
    mPrevMorf = -1.0f;
    mpTransformInfo = new J3DTransformInfo[modelData->getJointNum()];
    if (!mpTransformInfo) {
        goto cleanup;
    }
    mpQuat = new Quaternion[modelData->getJointNum()];
    if (!mpQuat) {
        goto cleanup;
    }
    J3DTransformInfo* info = mpTransformInfo;
    Quaternion* quat = mpQuat;
    J3DModelData* r23 = mpModel->getModelData();
    u16 jointNum = r23->getJointNum();
    for (int i = 0; i < jointNum; i++) {
        *info = r23->getJointNodePointer(i)->getTransformInfo();
        JMAEulerToQuat(info->mRotation.x, info->mRotation.y, info->mRotation.z, quat);
        info++;
        quat++;
    }
    mpCallback1 = callback1;
    mpCallback2 = callback2;
    return 1;
    cleanup:
    if (mpSound) {
        mpSound->stopAnime();
        mpSound = NULL;
    }
    if (mpTransformInfo) {
        mpTransformInfo = NULL;
    }
    if (mpQuat) {
        mpQuat = NULL;
    }
    if (mpModel) {
        mpModel = NULL;
    }
    return 0;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int mDoExt_McaMorf::create(J3DModelData* param_0, mDoExt_McaMorfCallBack1_c* param_1,
                                mDoExt_McaMorfCallBack2_c* param_2, J3DAnmTransform* param_3,
                                int param_4, f32 param_5, int param_6, int param_7, int param_8,
                                void* param_9, u32 param_10, u32 param_11) {
    nofralloc
#include "asm/m_Do/m_Do_ext/func_8000FD94.s"
}
#pragma pop
#endif

/* 80010074-8001037C 00A9B4 0308+00 1/0 0/0 0/0 .text            calc__14mDoExt_McaMorfFv */
// matches with literals
#ifdef NONMATCHING
void mDoExt_McaMorf::calc() {
    if (!mpModel) {
        return;
    }
    u16 jntNo = getJoint()->getJntNo();
    j3dSys.setCurrentMtxCalc(this);
    J3DTransformInfo info1;
    J3DTransformInfo* infoPtr;
    if (mpTransformInfo == NULL) {
        infoPtr = &info1;
    } else {
        infoPtr = &mpTransformInfo[jntNo];
    }
    Quaternion quat1;
    Quaternion* quatPtr;
    if (mpQuat == NULL) {
        quatPtr = &quat1;
    } else {
        quatPtr = &mpQuat[jntNo];
    }
    if (!mpAnm) {
        *infoPtr = mpModel->getModelData()->getJointNodePointer(jntNo)->getTransformInfo();
        if (mpCallback1) {
            mpCallback1->execute(jntNo, infoPtr);
        }
        JMAEulerToQuat(infoPtr->mRotation.x, infoPtr->mRotation.y, infoPtr->mRotation.z, quatPtr);
        J3DMtxCalcCalcTransformMaya::calcTransform(*infoPtr);
    } else if (mCurMorf >= 1.0f || !mpTransformInfo || !mpQuat) {
        getTransform(jntNo, infoPtr);
        if (mpCallback1) {
            mpCallback1->execute(jntNo, infoPtr);
        }
        JMAEulerToQuat(infoPtr->mRotation.x, infoPtr->mRotation.y, infoPtr->mRotation.z, quatPtr);
        J3DMtxCalcCalcTransformMaya::calcTransform(*infoPtr);
    } else {
        f32 f31;
        if (field_0x52) {
            f31 = 1.0f;
        } else {
            f31 = (mCurMorf - mPrevMorf) / (1.0f - mPrevMorf);
        }
        f32 f30 = 1.0f - f31;
        J3DTransformInfo info2;
        Quaternion quat2;
        getTransform(jntNo, &info2);
        if (mpCallback1) {
            mpCallback1->execute(jntNo, &info2);
        }
        JMAEulerToQuat(info2.mRotation.x, info2.mRotation.y, info2.mRotation.z, &quat2);
        JMAQuatLerp(quatPtr, &quat2, f31, quatPtr);
        Mtx mtx;
        mDoMtx_quat(mtx, quatPtr);
        infoPtr->mTranslate.x = infoPtr->mTranslate.x * f30 + info2.mTranslate.x * f31;
        infoPtr->mTranslate.y = infoPtr->mTranslate.y * f30 + info2.mTranslate.y * f31;
        infoPtr->mTranslate.z = infoPtr->mTranslate.z * f30 + info2.mTranslate.z * f31;
        infoPtr->mScale.x = infoPtr->mScale.x * f30 + info2.mScale.x * f31;
        infoPtr->mScale.y = infoPtr->mScale.y * f30 + info2.mScale.y * f31;
        infoPtr->mScale.z = infoPtr->mScale.z * f30 + info2.mScale.z * f31;
        mDoExt_setJ3DData(mtx, infoPtr, jntNo);
    }
    if (mpCallback2) {
        mpCallback2->execute(jntNo);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void mDoExt_McaMorf::calc() {
    nofralloc
#include "asm/m_Do/m_Do_ext/calc__14mDoExt_McaMorfFv.s"
}
#pragma pop
#endif

/* 8001037C-800105C8 00ACBC 024C+00 1/1 1/1 29/29 .text
 * setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv           */
// matches with literals
#ifdef NONMATCHING
void mDoExt_McaMorf::setAnm(J3DAnmTransform* param_0, int param_1, f32 param_2, f32 param_3,
                                f32 param_4, f32 param_5, void* param_6) {
    mpAnm = param_0;
    setStartFrame(param_4);
    if (param_5 < 0.0f) {
        if (!mpAnm) {
            mFrameCtrl.init(0);
        } else {
            mFrameCtrl.init(mpAnm->getFrameMax());
        }
    } else {
        mFrameCtrl.init(param_5);
    }
    if (param_0 && param_1 < 0) {
        param_1 = param_0->getAttribute();
    }
    setPlayMode(param_1);
    setPlaySpeed(param_3);
    if (param_3 >= 0.0f) {
        setFrame(param_4);
    } else {
        setFrame(getEndFrame());
    }
    setLoopFrame(getFrame());
    setMorf(param_2);
    if (mpSound) {
        if (param_6 == NULL && param_0) {
            param_6 = ((mDoExt_transAnmBas*)param_0)->getBas();
        }
        mpSound->field_0x48 = param_6;
        if (mpSound->field_0x48) {
            mpSound->initAnime(param_6, getPlaySpeed() >= 0.0f, getLoopFrame(), 0.0f);
        } else {
            mpSound->stopAnime();
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void mDoExt_McaMorf::setAnm(J3DAnmTransform* param_0, int param_1, f32 param_2, f32 param_3,
                                f32 param_4, f32 param_5, void* param_6) {
    nofralloc
#include "asm/m_Do/m_Do_ext/setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv.s"
}
#pragma pop
#endif

/* 800105C8-80010680 00AF08 00B8+00 0/0 1/1 37/37 .text            play__14mDoExt_McaMorfFP3VecUlSc
 */
// Matches with literals
#ifdef NONMATCHING
u32 mDoExt_McaMorf::play(Vec* param_0, u32 param_1, s8 param_2) {
    frameUpdate();
    if (mpSound != NULL && mpSound->field_0x48 != NULL && param_0 != NULL) {
        mpSound->updateAnime(getFrame(), getPlaySpeed());
        mpSound->framework(param_1, param_2);
        field_0x50 = true;
    }
    return isStop();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm u32 mDoExt_McaMorf::play(Vec* param_0, u32 param_1, s8 param_2) {
    nofralloc
#include "asm/m_Do/m_Do_ext/play__14mDoExt_McaMorfFP3VecUlSc.s"
}
#pragma pop
#endif

/* 80010680-800106AC 00AFC0 002C+00 0/0 0/0 33/33 .text            entryDL__14mDoExt_McaMorfFv */
void mDoExt_McaMorf::entryDL() {
    if (mpModel != NULL) {
        mDoExt_modelEntryDL(mpModel);
    }
}

/* 800106AC-80010710 00AFEC 0064+00 0/0 0/0 37/37 .text            modelCalc__14mDoExt_McaMorfFv */
void mDoExt_McaMorf::modelCalc() {
    if (mpModel != NULL) {
        if (mpAnm != NULL) {
            mpAnm->setFrame(mFrameCtrl.getFrame());
        }

        mpModel->getModelData()->getJointNodePointer(0)->setMtxCalc((J3DMtxCalc*)this);
        mpModel->calc();
    }
}

/* 80010710-800107D0 00B050 00C0+00 1/1 0/0 0/0 .text
 * getTransform__14mDoExt_McaMorfFUsP16J3DTransformInfo         */
void mDoExt_McaMorf::getTransform(u16 param_0, J3DTransformInfo* param_1) {
    mpAnm->getTransform(param_0, param_1);
    if (field_0x51) {
        if (param_0 == 0) {
            param_1->mTranslate.x *= mTranslateScale.x;
            param_1->mTranslate.y *= mTranslateScale.y;
            param_1->mTranslate.z *= mTranslateScale.z;
        } else {
            J3DTransformInfo& info = mpModel->getModelData()->getJointNodePointer(param_0)->getTransformInfo();
            param_1->mTranslate.x = info.mTranslate.x;
            param_1->mTranslate.y = info.mTranslate.y;
            param_1->mTranslate.z = info.mTranslate.z;
        }
    }
}

/* 800107D0-80010888 00B110 00B8+00 0/0 2/2 222/222 .text
 * __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
 */
mDoExt_McaMorfSO::mDoExt_McaMorfSO(J3DModelData* param_0, mDoExt_McaMorfCallBack1_c* param_1,
                                   mDoExt_McaMorfCallBack2_c* param_2, J3DAnmTransform* param_3,
                                   int param_4, f32 param_5, int param_6, int param_7,
                                   Z2Creature* param_8, u32 param_9, u32 param_10) {
    mTranslate = false;
    mMorfNone = false;
    create(param_0, param_1, param_2, param_3, param_4, param_5, param_6, param_7, param_8, param_9,
           param_10);
}

/* 80010888-800108F0 00B1C8 0068+00 1/0 0/0 0/0 .text            __dt__16mDoExt_McaMorfSOFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm mDoExt_McaMorfSO::~mDoExt_McaMorfSO() {
extern "C" asm void __dt__16mDoExt_McaMorfSOFv() {
    nofralloc
#include "asm/m_Do/m_Do_ext/__dt__16mDoExt_McaMorfSOFv.s"
}
#pragma pop

/* 800108F0-80010B68 00B230 0278+00 1/1 0/0 0/0 .text
 * create__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
 */
// Matches with literals
#ifdef NONMATCHING
int mDoExt_McaMorfSO::create(J3DModelData* i_modelData, mDoExt_McaMorfCallBack1_c* param_1,
                             mDoExt_McaMorfCallBack2_c* param_2, J3DAnmTransform* param_3,
                             int param_4, f32 param_5, int param_6, int param_7,
                             Z2Creature* i_sound, u32 param_9, u32 param_10) {
    mpModel = NULL;
    mpTransformInfo = NULL;
    mpQuat = NULL;
    mpSound = NULL;

    if (i_modelData == NULL) {
        return 0;
    }

    if (i_modelData->getMaterialNodePointer(0)->getSharedDisplayListObj() != NULL && param_9 == 0) {
        if (i_modelData->isLocked()) {
            param_9 = 0x20000;
        } else {
            param_9 = 0x80000;
        }
    }

    mpModel = mDoExt_J3DModel__create(i_modelData, param_9, param_10);
    if (mpModel == NULL) {
        return 0;
    }

    if (param_9 != 0x80000) {
        mDoExt_changeMaterial(mpModel);
    }

    mpSound = i_sound;

    if (param_3 != NULL) {
        mpBas = ((mDoExt_transAnmBas*)param_3)->getBas();
    }

    setAnm(param_3, param_4, 0.0f, param_5, param_6, param_7);
    mPrevMorf = -1.0f;

    mpTransformInfo = new J3DTransformInfo[i_modelData->getJointNum()];
    if (mpTransformInfo != NULL) {
        mpQuat = new Quaternion[i_modelData->getJointNum()];

        if (mpQuat != NULL) {
            J3DTransformInfo* transInfo = mpTransformInfo;
            Quaternion* quat = mpQuat;
            J3DModelData* modelData = mpModel->getModelData();
            u16 jointNum = modelData->getJointNum();

            for (int i = 0; i < jointNum; i++) {
                *transInfo = modelData->getJointNodePointer(i)->getTransformInfo();
                JMAEulerToQuat(transInfo->mRotation.x, transInfo->mRotation.y,
                               transInfo->mRotation.z, quat);

                transInfo++;
                quat++;
            }

            mpCallback1 = param_1;
            mpCallback2 = param_2;
            return 1;
        }
    }

    if (mpTransformInfo != NULL) {
        mpTransformInfo = NULL;
    }

    if (mpQuat != NULL) {
        mpQuat = NULL;
    }

    if (mpModel != NULL) {
        mpModel = NULL;
    }

    return 0;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int mDoExt_McaMorfSO::create(J3DModelData* param_0, mDoExt_McaMorfCallBack1_c* param_1,
                                 mDoExt_McaMorfCallBack2_c* param_2, J3DAnmTransform* param_3,
                                 int param_4, f32 param_5, int param_6, int param_7,
                                 Z2Creature* param_8, u32 param_9, u32 param_10) {
    nofralloc
#include "asm/m_Do/m_Do_ext/func_800108F0.s"
}
#pragma pop
#endif

/* 80010B68-80010E70 00B4A8 0308+00 1/0 0/0 0/0 .text            calc__16mDoExt_McaMorfSOFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void mDoExt_McaMorfSO::calc() {
    nofralloc
#include "asm/m_Do/m_Do_ext/calc__16mDoExt_McaMorfSOFv.s"
}
#pragma pop

/* 80010E70-800110B0 00B7B0 0240+00 1/1 5/5 208/208 .text
 * setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff           */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void mDoExt_McaMorfSO::setAnm(J3DAnmTransform* i_anm, int i_attr, f32 i_morf, f32 i_rate,
                                  f32 i_start, f32 i_end) {
    nofralloc
#include "asm/m_Do/m_Do_ext/setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff.s"
}
#pragma pop

/* 800110B0-80011154 00B9F0 00A4+00 0/0 5/5 143/143 .text            play__16mDoExt_McaMorfSOFUlSc
 */
// matches with literals
#ifdef NONMATCHING
int mDoExt_McaMorfSO::play(u32 param_0, s8 param_1) {
    frameUpdate();

    if (mpSound != NULL) {
        mpSound->framework(param_0, param_1);

        if (mpBas != NULL) {
            mpSound->updateAnime(getFrame(), getPlaySpeed());
        }
    }

    return isStop();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int mDoExt_McaMorfSO::play(u32 param_0, s8 param_1) {
    nofralloc
#include "asm/m_Do/m_Do_ext/play__16mDoExt_McaMorfSOFUlSc.s"
}
#pragma pop
#endif

/* 80011154-800111C0 00BA94 006C+00 0/0 0/0 4/4 .text            updateDL__16mDoExt_McaMorfSOFv */
void mDoExt_McaMorfSO::updateDL() {
    if (mpModel != NULL) {
        if (mpAnm != NULL) {
            mpAnm->setFrame(mFrameCtrl.getFrame());
        }

        mpModel->getModelData()->getJointNodePointer(0)->setMtxCalc((J3DMtxCalc*)this);
        mDoExt_modelUpdateDL(mpModel);
        mPrevMorf = mCurMorf;
    }
}

/* 800111C0-800111EC 00BB00 002C+00 0/0 5/5 137/137 .text            entryDL__16mDoExt_McaMorfSOFv
 */
void mDoExt_McaMorfSO::entryDL() {
    if (mpModel != NULL) {
        mDoExt_modelEntryDL(mpModel);
    }
}

/* 800111EC-80011250 00BB2C 0064+00 0/0 4/4 174/174 .text            modelCalc__16mDoExt_McaMorfSOFv
 */
void mDoExt_McaMorfSO::modelCalc() {
    if (mpModel != NULL) {
        if (mpAnm != NULL) {
            mpAnm->setFrame(mFrameCtrl.getFrame());
        }

        mpModel->getModelData()->getJointNodePointer(0)->setMtxCalc((J3DMtxCalc*)this);
        mpModel->calc();
    }
}

/* 80011250-80011310 00BB90 00C0+00 1/1 0/0 1/1 .text
 * getTransform__16mDoExt_McaMorfSOFUsP16J3DTransformInfo       */
void mDoExt_McaMorfSO::getTransform(u16 param_0, J3DTransformInfo* param_1) {
    mpAnm->getTransform(param_0, param_1);
    if (mTranslate) {
        if (param_0 == 0) {
            param_1->mTranslate.x *= mTranslateScale.x;
            param_1->mTranslate.y *= mTranslateScale.y;
            param_1->mTranslate.z *= mTranslateScale.z;
        } else {
            J3DTransformInfo& info = mpModel->getModelData()->getJointNodePointer(param_0)->getTransformInfo();
            param_1->mTranslate.x = info.mTranslate.x;
            param_1->mTranslate.y = info.mTranslate.y;
            param_1->mTranslate.z = info.mTranslate.z;
        }
    }
}

/* 80011310-80011348 00BC50 0038+00 1/1 2/2 260/260 .text stopZelAnime__16mDoExt_McaMorfSOFv */
void mDoExt_McaMorfSO::stopZelAnime() {
    if (mpSound != NULL) {
        mpSound->deleteObject();
    }
}

/* 80011348-800113FC 00BC88 00B4+00 0/0 0/0 1/1 .text
 * __ct__15mDoExt_McaMorf2FP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformP15J3DAnmTransformifiiP10Z2CreatureUlUl
 */
mDoExt_McaMorf2::mDoExt_McaMorf2(J3DModelData* param_0, mDoExt_McaMorfCallBack1_c* param_1,
                                 mDoExt_McaMorfCallBack2_c* param_2, J3DAnmTransform* param_3,
                                 J3DAnmTransform* param_4, int param_5, f32 param_6, int param_7,
                                 int param_8, Z2Creature* param_9, u32 param_10, u32 param_11) {
    create(param_0, param_1, param_2, param_3, param_4, param_5, param_6, param_7, param_8, param_9,
           param_10, param_11);
}

/* 800113FC-80011464 00BD3C 0068+00 1/0 0/0 0/0 .text            __dt__15mDoExt_McaMorf2Fv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm mDoExt_McaMorf2::~mDoExt_McaMorf2() {
extern "C" asm void __dt__15mDoExt_McaMorf2Fv() {
    nofralloc
#include "asm/m_Do/m_Do_ext/__dt__15mDoExt_McaMorf2Fv.s"
}
#pragma pop

/* 80011464-800116B4 00BDA4 0250+00 1/1 0/0 0/0 .text
 * create__15mDoExt_McaMorf2FP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformP15J3DAnmTransformifiiP10Z2CreatureUlUl
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void mDoExt_McaMorf2::create(J3DModelData* param_0, mDoExt_McaMorfCallBack1_c* param_1,
                                 mDoExt_McaMorfCallBack2_c* param_2, J3DAnmTransform* param_3,
                                 J3DAnmTransform* param_4, int param_5, f32 param_6, int param_7,
                                 int param_8, Z2Creature* param_9, u32 param_10, u32 param_11) {
    nofralloc
#include "asm/m_Do/m_Do_ext/func_80011464.s"
}
#pragma pop

/* 800116B4-800116F4 00BFF4 0040+00 1/1 0/0 0/0 .text            ERROR_EXIT__15mDoExt_McaMorf2Fv */
void mDoExt_McaMorf2::ERROR_EXIT() {
    if (mpTransformInfo != NULL) {
        mpTransformInfo = NULL;
    }

    if (mpQuat != NULL) {
        mpQuat = NULL;
    }

    if (mpModel != NULL) {
        mpModel = NULL;
    }
}

/* 800116F4-80011D70 00C034 067C+00 1/0 0/0 0/0 .text            calc__15mDoExt_McaMorf2Fv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void mDoExt_McaMorf2::calc() {
    nofralloc
#include "asm/m_Do/m_Do_ext/calc__15mDoExt_McaMorf2Fv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80451B2C-80451B30 00012C 0004+00 6/6 0/0 0/0 .sdata2          @6819 */
SECTION_SDATA2 static f32 lit_6819 = 0.5f;

/* 80011D70-80011FCC 00C6B0 025C+00 1/1 0/0 2/2 .text
 * setAnm__15mDoExt_McaMorf2FP15J3DAnmTransformP15J3DAnmTransformfiffff */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void mDoExt_McaMorf2::setAnm(J3DAnmTransform* param_0, J3DAnmTransform* param_1, f32 param_2,
                                 int param_3, f32 param_4, f32 param_5, f32 param_6, f32 param_7) {
    nofralloc
#include "asm/m_Do/m_Do_ext/setAnm__15mDoExt_McaMorf2FP15J3DAnmTransformP15J3DAnmTransformfiffff.s"
}
#pragma pop

/* 80011FCC-800120A0 00C90C 00D4+00 0/0 0/0 2/2 .text            setAnmRate__15mDoExt_McaMorf2Ff */
// Matches with literals
#ifdef NONMATCHING
void mDoExt_McaMorf2::setAnmRate(f32 param_0) {
    void* pBas = NULL;
    field_0x44 = param_0;
    if (mpSound != NULL) {
        if (field_0x44 < 0.5f) {
            if (mpAnm != NULL) {
                pBas = ((mDoExt_transAnmBas*)mpAnm)->getBas();
            }
        } else if (field_0x40 != NULL) {
            pBas = ((mDoExt_transAnmBas*)field_0x40)->getBas();
        }
        if (pBas != mpBas) {
            if (pBas != NULL) {
                mpBas = pBas;
                mpSound->initAnime(mpBas, getPlaySpeed() >= 0.0f, getLoopFrame(), getFrame());
            } else {
                mpBas = NULL;
            }
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void mDoExt_McaMorf2::setAnmRate(f32 param_0) {
    nofralloc
#include "asm/m_Do/m_Do_ext/setAnmRate__15mDoExt_McaMorf2Ff.s"
}
#pragma pop
#endif

/* 800120A0-80012144 00C9E0 00A4+00 0/0 0/0 1/1 .text            play__15mDoExt_McaMorf2FUlSc */
// matches with literals
#ifdef NONMATCHING
int mDoExt_McaMorf2::play(u32 param_0, s8 param_1) {
    frameUpdate();

    if (mpSound != NULL) {
        mpSound->framework(param_0, param_1);

        if (mpBas != NULL) {
            mpSound->updateAnime(getFrame(), getPlaySpeed());
        }
    }

    return isStop();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int mDoExt_McaMorf2::play(u32 param_0, s8 param_1) {
    nofralloc
#include "asm/m_Do/m_Do_ext/play__15mDoExt_McaMorf2FUlSc.s"
}
#pragma pop
#endif

/* 80012144-80012170 00CA84 002C+00 0/0 0/0 1/1 .text            entryDL__15mDoExt_McaMorf2Fv */
void mDoExt_McaMorf2::entryDL() {
    if (mpModel != NULL) {
        mDoExt_modelEntryDL(mpModel);
    }
}

/* 80012170-800121E8 00CAB0 0078+00 0/0 0/0 1/1 .text            modelCalc__15mDoExt_McaMorf2Fv */
void mDoExt_McaMorf2::modelCalc() {
    if (mpModel != NULL) {
        if (mpAnm != NULL) {
            mpAnm->setFrame(mFrameCtrl.getFrame());
        }

        if (field_0x40 != NULL) {
            field_0x40->setFrame(mFrameCtrl.getFrame());
        }

        mpModel->getModelData()->getJointNodePointer(0)->setMtxCalc((J3DMtxCalc*)this);
        mpModel->calc();
    }
}

/* 800121E8-80012220 00CB28 0038+00 1/1 0/0 1/1 .text            stopZelAnime__15mDoExt_McaMorf2Fv
 */
void mDoExt_McaMorf2::stopZelAnime() {
    if (mpSound != NULL) {
        mpSound->deleteObject();
    }
}

/* 80012220-800123D0 00CB60 01B0+00 1/0 0/0 0/0 .text            draw__19mDoExt_invJntPacketFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void mDoExt_invJntPacket::draw() {
extern "C" asm void draw__19mDoExt_invJntPacketFv() {
    nofralloc
#include "asm/m_Do/m_Do_ext/draw__19mDoExt_invJntPacketFv.s"
}
#pragma pop

/* 800123D0-800125DC 00CD10 020C+00 2/2 0/0 0/0 .text            init__15mDoExt_3Dline_cFUsii */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void mDoExt_3Dline_c::init(u16 param_0, int param_1, int param_2) {
    nofralloc
#include "asm/m_Do/m_Do_ext/init__15mDoExt_3Dline_cFUsii.s"
}
#pragma pop

/* 800125DC-800125E0 00CF1C 0004+00 1/1 9/9 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 800125E0-800126BC 00CF20 00DC+00 0/0 0/0 12/12 .text            init__19mDoExt_3DlineMat0_cFUsUsi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void mDoExt_3DlineMat0_c::init(u16 param_0, u16 param_1, int param_2) {
    nofralloc
#include "asm/m_Do/m_Do_ext/init__19mDoExt_3DlineMat0_cFUsUsi.s"
}
#pragma pop

/* 800126BC-800126C0 00CFFC 0004+00 2/2 0/0 0/0 .text            __ct__15mDoExt_3Dline_cFv */
mDoExt_3Dline_c::mDoExt_3Dline_c() {
    /* empty function */
}

/* 800126C0-80012774 00D000 00B4+00 1/0 0/0 0/0 .text setMaterial__19mDoExt_3DlineMat0_cFv */
void mDoExt_3DlineMat0_c::setMaterial() {
    j3dSys.reinitGX();
    GXSetNumIndStages(0);
    dKy_setLight_again();
    GXClearVtxDesc();
    GXSetVtxDesc(GX_VA_POS, GX_INDEX16);
    GXSetVtxDesc(GX_VA_NRM, GX_INDEX16);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_CLR_RGBA, GX_F32, 0);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_NRM, GX_CLR_RGB, GX_RGB8, 6);
    dKy_GxFog_set();
    GXCallDisplayList(l_matDL, 0x80);
    GXLoadPosMtxImm(j3dSys.getViewMtx(), GX_PNMTX0);
    GXLoadNrmMtxImm(g_mDoMtx_identity, GX_PNMTX0);
}

/* 80012774-80012874 00D0B4 0100+00 1/0 0/0 0/0 .text            draw__19mDoExt_3DlineMat0_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void mDoExt_3DlineMat0_c::draw() {
    nofralloc
#include "asm/m_Do/m_Do_ext/draw__19mDoExt_3DlineMat0_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80451B30-80451B38 000130 0004+04 4/4 0/0 0/0 .sdata2          @7404 */
SECTION_SDATA2 static f32 lit_7404[1 + 1 /* padding */] = {
    64.0f,
    /* padding */
    0.0f,
};

/* 80451B38-80451B40 000138 0008+00 2/2 0/0 0/0 .sdata2          @7406 */
SECTION_SDATA2 static f64 lit_7406 = 4503599627370496.0 /* cast u32 to float */;

/* 80012874-80012E3C 00D1B4 05C8+00 0/0 0/0 2/2 .text
 * update__19mDoExt_3DlineMat0_cFifR8_GXColorUsP12dKy_tevstr_c  */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void mDoExt_3DlineMat0_c::update(int param_0, f32 param_1, _GXColor& param_2, u16 param_3,
                                     dKy_tevstr_c* param_4) {
    nofralloc
#include "asm/m_Do/m_Do_ext/update__19mDoExt_3DlineMat0_cFifR8_GXColorUsP12dKy_tevstr_c.s"
}
#pragma pop

/* 80012E3C-80013360 00D77C 0524+00 0/0 0/0 9/9 .text
 * update__19mDoExt_3DlineMat0_cFiR8_GXColorP12dKy_tevstr_c     */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void mDoExt_3DlineMat0_c::update(int param_0, _GXColor& param_1, dKy_tevstr_c* param_2) {
    nofralloc
#include "asm/m_Do/m_Do_ext/update__19mDoExt_3DlineMat0_cFiR8_GXColorP12dKy_tevstr_c.s"
}
#pragma pop

/* ############################################################################################## */
/* 80451B40-80451B44 000140 0004+00 1/1 0/0 0/0 .sdata2          @7624 */
SECTION_SDATA2 static f32 lit_7624 = 0.125f;

/* 80451B44-80451B48 000144 0004+00 1/1 0/0 0/0 .sdata2          @7625 */
SECTION_SDATA2 static f32 lit_7625 = 1.0f / 100.0f;

/* 80013360-800134F8 00DCA0 0198+00 0/0 0/0 19/19 .text init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void mDoExt_3DlineMat1_c::init(u16 param_0, u16 param_1, ResTIMG* param_2, int param_3) {
    nofralloc
#include "asm/m_Do/m_Do_ext/init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi.s"
}
#pragma pop

/* 800134F8-800135D0 00DE38 00D8+00 1/0 0/0 0/0 .text setMaterial__19mDoExt_3DlineMat1_cFv */
void mDoExt_3DlineMat1_c::setMaterial() {
    j3dSys.reinitGX();
    GXSetNumIndStages(0);
    dKy_setLight_again();
    GXClearVtxDesc();
    GXSetVtxDesc(GX_VA_POS, GX_INDEX16);
    GXSetVtxDesc(GX_VA_NRM, GX_INDEX16);
    GXSetVtxDesc(GX_VA_TEX0, GX_INDEX16);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_CLR_RGBA, GX_F32, 0);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_NRM, GX_CLR_RGB, GX_RGB8, 6);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_TEX0, GX_CLR_RGBA, GX_F32, 0);
    dKy_GxFog_set();
    GXCallDisplayList(l_mat1DL, 0x80);
    GXLoadPosMtxImm(j3dSys.getViewMtx(), GX_PNMTX0);
    GXLoadNrmMtxImm(g_mDoMtx_identity, GX_PNMTX0);
}

/* 800135D0-8001373C 00DF10 016C+00 1/0 0/0 0/0 .text            draw__19mDoExt_3DlineMat1_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void mDoExt_3DlineMat1_c::draw() {
    nofralloc
#include "asm/m_Do/m_Do_ext/draw__19mDoExt_3DlineMat1_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80451B48-80451B50 000148 0008+00 2/2 0/0 0/0 .sdata2          @7919 */
SECTION_SDATA2 static f64 lit_7919 = 0.5;

/* 80451B50-80451B58 000150 0008+00 2/2 0/0 0/0 .sdata2          @7920 */
SECTION_SDATA2 static f64 lit_7920 = 3.0;

/* 80451B58-80451B60 000158 0008+00 2/2 0/0 0/0 .sdata2          @7921 */
SECTION_SDATA2 static u8 lit_7921[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80451B60-80451B64 000160 0004+00 2/2 0/0 0/0 .sdata2          @7922 */
SECTION_SDATA2 static f32 lit_7922 = 1.0f / 10.0f;

/* 80451B64-80451B68 000164 0004+00 1/1 0/0 0/0 .sdata2          @7923 */
SECTION_SDATA2 static f32 lit_7923 = 1.0f / 50.0f;

/* 80451B68-80451B70 000168 0004+04 1/1 0/0 0/0 .sdata2          @7924 */
SECTION_SDATA2 static f32 lit_7924[1 + 1 /* padding */] = {
    8.0f,
    /* padding */
    0.0f,
};

/* 8001373C-80013FB0 00E07C 0874+00 0/0 0/0 6/6 .text
 * update__19mDoExt_3DlineMat1_cFifR8_GXColorUsP12dKy_tevstr_c  */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void mDoExt_3DlineMat1_c::update(int param_0, f32 param_1, _GXColor& param_2, u16 param_3,
                                     dKy_tevstr_c* param_4) {
    nofralloc
#include "asm/m_Do/m_Do_ext/update__19mDoExt_3DlineMat1_cFifR8_GXColorUsP12dKy_tevstr_c.s"
}
#pragma pop

/* 80013FB0-80014738 00E8F0 0788+00 0/0 0/0 14/14 .text
 * update__19mDoExt_3DlineMat1_cFiR8_GXColorP12dKy_tevstr_c     */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void mDoExt_3DlineMat1_c::update(int param_0, _GXColor& param_1, dKy_tevstr_c* param_2) {
    nofralloc
#include "asm/m_Do/m_Do_ext/update__19mDoExt_3DlineMat1_cFiR8_GXColorP12dKy_tevstr_c.s"
}
#pragma pop

/* 80014738-8001479C 00F078 0064+00 0/0 0/0 29/29 .text
 * setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c   */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void mDoExt_3DlineMatSortPacket::setMat(mDoExt_3DlineMat_c* param_0) {
    nofralloc
#include "asm/m_Do/m_Do_ext/setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c.s"
}
#pragma pop

/* 8001479C-80014804 00F0DC 0068+00 1/0 0/0 0/0 .text draw__26mDoExt_3DlineMatSortPacketFv */
// Matches with mDoExt_3DlineMat_c virtual function defs
#ifdef NONMATCHING
void mDoExt_3DlineMatSortPacket::draw() {
    mp3DlineMat->setMaterial();
    mDoExt_3DlineMat_c* lineMat = mp3DlineMat;
    do {
        lineMat->draw();
        lineMat = lineMat->field_0x4;
    } while (lineMat != NULL);
    J3DShape::resetVcdVatCache();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void mDoExt_3DlineMatSortPacket::draw() {
extern "C" asm void draw__26mDoExt_3DlineMatSortPacketFv() {
    nofralloc
#include "asm/m_Do/m_Do_ext/draw__26mDoExt_3DlineMatSortPacketFv.s"
}
#pragma pop
#endif

void drawCube(MtxP mtx, cXyz* pos, const GXColor& color) {
    GXSetArray(GX_VA_POS, pos, sizeof(cXyz));
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_POS_XYZ, GX_F32, 0);
    GXClearVtxDesc();
    GXSetVtxDesc(GX_VA_POS, GX_INDEX8);
    GXSetNumChans(1);
    GXSetChanCtrl(GX_COLOR0, GX_DISABLE, GX_SRC_REG, GX_SRC_REG, GX_LIGHT_NULL, GX_DF_CLAMP,
                  GX_AF_NONE);
    GXSetNumTexGens(0);
    GXSetNumTevStages(1);
    GXSetTevColor(GX_TEVREG0, color);
    GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR0A0);
    GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_C0);
    GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_ENABLE, GX_TEVPREV);
    GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_A0);
    GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_ENABLE, GX_TEVPREV);
    GXSetZMode(GX_ENABLE, GX_LEQUAL, GX_ENABLE);
    GXSetBlendMode(GX_BM_BLEND, GX_BL_SRC_ALPHA, GX_BL_INV_SRC_ALPHA, GX_LO_CLEAR);
    GXSetAlphaCompare(GX_ALWAYS, 0, GX_AOP_OR, GX_ALWAYS, 0);
    GXSetCullMode(GX_CULL_BACK);
    GXSetClipMode(GX_CLIP_ENABLE);
    GXLoadPosMtxImm(mtx, 0);
    GXSetCurrentMtx(0);

    GXBegin(GX_TRIANGLESTRIP, GX_VTXFMT0, 14);
    GXPosition1x8(4);
    GXPosition1x8(6);
    GXPosition1x8(5);
    GXPosition1x8(7);
    GXPosition1x8(3);
    GXPosition1x8(6);
    GXPosition1x8(2);
    GXPosition1x8(4);
    GXPosition1x8(0);
    GXPosition1x8(5);
    GXPosition1x8(1);
    GXPosition1x8(3);
    GXPosition1x8(0);
    GXPosition1x8(2);
    i_GXEnd();
}

void mDoExt_cubePacket::draw() {
    static cXyz l_pos[8] = {
        cXyz(-1.0f, 1.0f, -1.0f), cXyz(1.0f, 1.0f, -1.0f),   cXyz(-1.0f, 1.0f, 1.0f),
        cXyz(1.0f, 1.0f, 1.0f),   cXyz(-1.0f, -1.0f, -1.0f), cXyz(1.0f, -1.0f, -1.0f),
        cXyz(-1.0f, -1.0f, 1.0f), cXyz(1.0f, -1.0f, 1.0f),
    };

    mDoMtx_stack_c::transS(mPosition.x, mPosition.y, mPosition.z);
    mDoMtx_stack_c::XYZrotM(mAngle.x, mAngle.y, mAngle.z);
    mDoMtx_stack_c::scaleM(mSize.x, mSize.y, mSize.z);
    mDoMtx_stack_c::revConcat(j3dSys.getViewMtx());
    drawCube(mDoMtx_stack_c::get(), l_pos, mColor);
}

void mDoExt_cylinderPacket::draw() {
    GXSetNumChans(1);
    GXSetChanCtrl(GX_COLOR0, GX_ENABLE, GX_SRC_REG, GX_SRC_REG, 1, GX_DF_CLAMP, GX_AF_NONE);
    GXSetNumTexGens(0);
    GXSetNumTevStages(1);
    GXSetTevColor(GX_TEVREG0, mColor);
    GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR0A0);
    GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_RASC, GX_CC_C0, GX_CC_ZERO);
    GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
    GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_A0);
    GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);

    if (field_0x28) {
        GXSetZMode(GX_ENABLE, GX_LEQUAL, GX_ENABLE);
    } else {
        GXSetZMode(GX_DISABLE, GX_LEQUAL, GX_DISABLE);
    }

    GXSetBlendMode(GX_BM_BLEND, GX_BL_SRC_ALPHA, GX_BL_INV_SRC_ALPHA, GX_LO_CLEAR);
    GXSetAlphaCompare(GX_ALWAYS, 0, GX_AOP_OR, GX_ALWAYS, 0);
    GXSetCullMode(GX_CULL_BACK);
    GXSetClipMode(GX_CLIP_ENABLE);

    mDoMtx_stack_c::copy(j3dSys.getViewMtx());
    mDoMtx_stack_c::transM(mPosition.x, mPosition.y + mHeight * 0.5f, mPosition.z);
    mDoMtx_stack_c::scaleM(mRadius, mRadius * 0.5f, mRadius);
    mDoMtx_stack_c::XrotM(0x4000);

    GXLoadPosMtxImm(mDoMtx_stack_c::get(), 0);
    mDoMtx_stack_c::inverseTranspose();

    GXLoadNrmMtxImm(mDoMtx_stack_c::get(), 0);
    GXSetCurrentMtx(0);
    GXDrawCylinder(8);
}

/* ############################################################################################## */
/* 803740FC-803740FC 00075C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8037416B =
    "\nキャッシュフォントクラス作成に失敗しました\n";
#pragma pop

/* 80014804-8001494C 00F144 0148+00 3/3 0/0 0/0 .text
 * mDoExt_initFontCommon__FPP7JUTFontPP7ResFONTP7JKRHeapPCcP10JKRArchiveUcUlUl */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void mDoExt_initFontCommon(JUTFont** param_0, ResFONT** param_1, JKRHeap* param_2,
                                      char const* param_3, JKRArchive* param_4, u8 param_5,
                                      u32 param_6, u32 param_7) {
    nofralloc
#include "asm/m_Do/m_Do_ext/mDoExt_initFontCommon__FPP7JUTFontPP7ResFONTP7JKRHeapPCcP10JKRArchiveUcUlUl.s"
}
#pragma pop

/* 8001494C-80014994 00F28C 0048+00 1/0 0/0 0/0 .text            __dt__7JUTFontFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
//asm JUTFont::~JUTFont() {
extern "C" asm void __dt__7JUTFontFv() {
    nofralloc
#include "asm/m_Do/m_Do_ext/__dt__7JUTFontFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 803740C0-803740D4 000720 0012+02 1/1 0/0 0/0 .rodata          fontdata$8224 */
static char const fontdata_8224[] = "rodan_b_24_22.bfn";

/* 80450C44-80450C48 000144 0004+00 3/3 0/0 0/0 .sbss            mDoExt_font0 */
static JUTFont* mDoExt_font0;

/* 80450C48-80450C4C 000148 0004+00 2/2 0/0 0/0 .sbss            mDoExt_font0_getCount */
static int mDoExt_font0_getCount;

/* 80450C4C-80450C50 00014C 0004+00 2/2 0/0 0/0 .sbss            mDoExt_resfont0 */
static ResFONT* mDoExt_resfont0;

/* 80014994-800149F0 00F2D4 005C+00 1/1 0/0 0/0 .text            mDoExt_initFont0__Fv */
static void mDoExt_initFont0() {
    mDoExt_initFontCommon(&mDoExt_font0, &mDoExt_resfont0, mDoExt_getZeldaHeap(),
                          fontdata_8224, dComIfGp_getFontArchive(), 1, 0, 0);
}

/* 800149F0-80014A2C 00F330 003C+00 0/0 51/51 2/2 .text            mDoExt_getMesgFont__Fv */
JUTFont* mDoExt_getMesgFont() {
    if (mDoExt_font0 == NULL) {
        mDoExt_initFont0();
    }

    mDoExt_font0_getCount++;
    return mDoExt_font0;
}

/* 80014A2C-80014AA4 00F36C 0078+00 0/0 6/6 0/0 .text            mDoExt_removeMesgFont__Fv */
// Matches with JUTFont include
#ifdef NONMATCHING
void mDoExt_removeMesgFont() {
    JUT_ASSERT(7238, mDoExt_font0_getCount > 0);
    if (mDoExt_font0_getCount > 0) {
        mDoExt_font0_getCount--;
        JUT_ASSERT(7241, mDoExt_font0_getCount > 0);
        if (mDoExt_font0_getCount == 0) {
            delete mDoExt_font0;
            mDoExt_font0 = NULL;
            if (mDoExt_resfont0 != NULL) {
                i_JKRFree(mDoExt_resfont0);
                mDoExt_resfont0 = NULL;
            }
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void mDoExt_removeMesgFont() {
    nofralloc
#include "asm/m_Do/m_Do_ext/mDoExt_removeMesgFont__Fv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 803740D4-803740E8 000734 0014+00 1/1 0/0 0/0 .rodata          fontdata$8253 */
static char const fontdata_8253[] = "reishotai_24_22.bfn";

/* 80450C50-80450C54 000150 0004+00 2/2 0/0 0/0 .sbss            mDoExt_font1 */
static JUTFont* mDoExt_font1;

/* 80450C54-80450C58 000154 0004+00 1/1 0/0 0/0 .sbss            mDoExt_font1_getCount */
static int mDoExt_font1_getCount;

/* 80450C58-80450C5C 000158 0004+00 1/1 0/0 0/0 .sbss            mDoExt_resfont1 */
static ResFONT* mDoExt_resfont1;

/* 80014AA4-80014B04 00F3E4 0060+00 1/1 0/0 0/0 .text            mDoExt_initFont1__Fv */
static void mDoExt_initFont1() {
    mDoExt_initFontCommon(&mDoExt_font1, &mDoExt_resfont1, mDoExt_getZeldaHeap(),
                          fontdata_8253, dComIfGp_getRubyArchive(), 1, 1, 0x8000);
}

/* 80014B04-80014B40 00F444 003C+00 0/0 8/8 0/0 .text            mDoExt_getRubyFont__Fv */
JUTFont* mDoExt_getRubyFont() {
    if (mDoExt_font1 == NULL) {
        mDoExt_initFont1();
    }

    mDoExt_font1_getCount++;
    return mDoExt_font1;
}

/* ############################################################################################## */
/* 803740E8-803740FC 000748 0014+00 1/1 0/0 0/0 .rodata          fontdata$8287 */
static char const fontdata_8287[] = "reishotai_24_22.bfn";

/* 80450C5C-80450C60 00015C 0004+00 3/3 0/0 0/0 .sbss            mDoExt_font2 */
static JUTFont* mDoExt_font2;

/* 80450C60-80450C64 000160 0004+00 2/2 0/0 0/0 .sbss            mDoExt_font2_getCount */
static int mDoExt_font2_getCount;

/* 80450C64-80450C68 000164 0004+00 2/2 0/0 0/0 .sbss            mDoExt_resfont2 */
static ResFONT* mDoExt_resfont2;

/* 80014B40-80014BA0 00F480 0060+00 1/1 0/0 0/0 .text            mDoExt_initFont2__Fv */
static void mDoExt_initFont2() {
    mDoExt_initFontCommon(&mDoExt_font2, &mDoExt_resfont2, mDoExt_getZeldaHeap(),
                          fontdata_8287, dComIfGp_getRubyArchive(), 1, 1, 0x8000);
}

/* 80014BA0-80014BDC 00F4E0 003C+00 0/0 11/11 0/0 .text            mDoExt_getSubFont__Fv */
JUTFont* mDoExt_getSubFont() {
    if (mDoExt_font2 == NULL) {
        mDoExt_initFont2();
    }

    mDoExt_font2_getCount++;
    return mDoExt_font2;
}

/* 80014BDC-80014C54 00F51C 0078+00 0/0 2/2 0/0 .text            mDoExt_removeSubFont__Fv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void mDoExt_removeSubFont() {
    nofralloc
#include "asm/m_Do/m_Do_ext/mDoExt_removeSubFont__Fv.s"
}
#pragma pop

/* 80014C54-80014D5C 00F594 0108+00 3/3 14/14 445/445 .text
 * mDoExt_J3DModel__create__FP12J3DModelDataUlUl                */
J3DModel* mDoExt_J3DModel__create(J3DModelData* i_modelData, u32 i_modelFlag, u32 i_differedDlistFlag) {
    if (i_modelData != NULL) {
        J3DModel* model = new J3DModel();

        if (model != NULL) {
            // Update the modelFlag if the model data passed in has a shared dlist object
            if (i_modelData->getMaterialNodePointer(0)->getSharedDisplayListObj() != NULL) {
                if (i_modelData->isLocked()) {
                    i_modelFlag = J3DMdlFlag_Unk20000;
                } else if (i_modelFlag == J3DMdlFlag_Unk20000) {
                    i_modelFlag |= J3DMdlFlag_Unk40000;
                } else {
                    i_modelFlag = J3DMdlFlag_Unk80000;
                }
            }

            // Set up the model
            if (!model->entryModelData(i_modelData, i_modelFlag, 1)) {
                if (i_modelFlag == J3DMdlFlag_Unk80000 &&
                    model->newDifferedDisplayList(i_differedDlistFlag))
                {
                    return NULL;
                }

                model->lock();
                return model;
            }
        }
    }

    return NULL;
}

/* ############################################################################################## */
/* 80450C68-80450C70 000168 0004+04 1/1 0/0 0/0 .sbss            aram_cache_size */
static u32 aram_cache_size;

/* 80014D5C-80014D64 00F69C 0008+00 0/0 1/1 0/0 .text            mDoExt_setAraCacheSize__FUl */
void mDoExt_setAraCacheSize(u32 size) {
    aram_cache_size = size;
}

/* 80014D64-80014D9C 00F6A4 0038+00 0/0 2/2 0/0 .text            mDoExt_GetCurrentRunningThread__Fv
 */
OSThread* mDoExt_GetCurrentRunningThread() {
    OSThread* thread = OSGetCurrentThread();
    if (thread != NULL && thread->state != 2) {
        thread = NULL;
    }

    return thread;
}

/* 80014D9C-80014DC8 00F6DC 002C+00 1/0 0/0 0/0 .text
 * setGX__7JUTFontFQ28JUtility6TColorQ28JUtility6TColor         */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JUTFont::setGX(JUtility::TColor param_0, JUtility::TColor param_1) {
    nofralloc
#include "asm/m_Do/m_Do_ext/setGX__7JUTFontFQ28JUtility6TColorQ28JUtility6TColor.s"
}
#pragma pop

/* 80014DC8-80014DF4 00F708 002C+00 1/0 0/0 0/0 .text            getCellWidth__7JUTFontCFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
//asm void JUTFont::getCellWidth() const {
asm void getCellWidth__7JUTFontCFv() {
    nofralloc
#include "asm/m_Do/m_Do_ext/getCellWidth__7JUTFontCFv.s"
}
#pragma pop

/* 80014DF4-80014E20 00F734 002C+00 1/0 0/0 0/0 .text            getCellHeight__7JUTFontCFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
//asm void JUTFont::getCellHeight() const {
asm void getCellHeight__7JUTFontCFv() {
    nofralloc
#include "asm/m_Do/m_Do_ext/getCellHeight__7JUTFontCFv.s"
}
#pragma pop

/* 80014E20-80014E7C 00F760 005C+00 1/0 2/2 0/0 .text __dt__26mDoExt_3DlineMatSortPacketFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm mDoExt_3DlineMatSortPacket::~mDoExt_3DlineMatSortPacket() {
    nofralloc
#include "asm/m_Do/m_Do_ext/__dt__26mDoExt_3DlineMatSortPacketFv.s"
}
#pragma pop

/* 80014E7C-80014E84 00F7BC 0008+00 1/0 0/0 0/0 .text getMaterialID__19mDoExt_3DlineMat1_cFv */
int mDoExt_3DlineMat1_c::getMaterialID() {
    return 1;
}

/* 80014E84-80014E8C 00F7C4 0008+00 1/0 0/0 0/0 .text getMaterialID__19mDoExt_3DlineMat0_cFv */
int mDoExt_3DlineMat0_c::getMaterialID() {
    return 0;
}

/* 80014E8C-80014E90 00F7CC 0004+00 11/0 2/0 0/0 .text
 * setAnmTransform__10J3DMtxCalcFUcP15J3DAnmTransform           */
void J3DMtxCalc::setAnmTransform(u8 param_0, J3DAnmTransform* param_1) {
    /* empty function */
}

/* 80014E90-80014E94 00F7D0 0004+00 9/0 2/0 0/0 .text
 * setAnmTransform__10J3DMtxCalcFP15J3DAnmTransform             */
void J3DMtxCalc::setAnmTransform(J3DAnmTransform* param_0) {
    /* empty function */
}

/* 80014E94-80014E9C 00F7D4 0008+00 11/0 2/0 0/0 .text            getAnmTransform__10J3DMtxCalcFUc
 */
J3DAnmTransform* J3DMtxCalc::getAnmTransform(u8 param_0) {
    return NULL;
}

/* 80014E9C-80014EA4 00F7DC 0008+00 9/0 2/0 0/0 .text            getAnmTransform__10J3DMtxCalcFv */
J3DAnmTransform* J3DMtxCalc::getAnmTransform() {
    return NULL;
}

/* 80014EA4-80014EA8 00F7E4 0004+00 11/0 2/0 0/0 .text            setWeight__10J3DMtxCalcFUcf */
void J3DMtxCalc::setWeight(u8 param_0, f32 param_1) {
    /* empty function */
}

/* 80014EA8-80014EB0 00F7E8 0008+00 11/0 2/0 0/0 .text            getWeight__10J3DMtxCalcCFUc */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void J3DMtxCalc::getWeight(u8 param_0) const {
    nofralloc
#include "asm/m_Do/m_Do_ext/getWeight__10J3DMtxCalcCFUc.s"
}
#pragma pop

/* 80014EB0-80014F3C 00F7F0 008C+00 1/0 0/0 0/0 .text __dt__28mDoExt_MtxCalcAnmBlendTblOldFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm mDoExt_MtxCalcAnmBlendTblOld::~mDoExt_MtxCalcAnmBlendTblOld() {
extern "C" asm void __dt__28mDoExt_MtxCalcAnmBlendTblOldFv() {
    nofralloc
#include "asm/m_Do/m_Do_ext/__dt__28mDoExt_MtxCalcAnmBlendTblOldFv.s"
}
#pragma pop

/* 80014F3C-80014FB8 00F87C 007C+00 1/0 0/0 0/0 .text            __dt__25mDoExt_MtxCalcAnmBlendTblFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm mDoExt_MtxCalcAnmBlendTbl::~mDoExt_MtxCalcAnmBlendTbl() {
extern "C" asm void __dt__25mDoExt_MtxCalcAnmBlendTblFv() {
    nofralloc
#include "asm/m_Do/m_Do_ext/__dt__25mDoExt_MtxCalcAnmBlendTblFv.s"
}
#pragma pop

/* 80014FB8-80014FC0 00F8F8 0008+00 2/0 0/0 0/0 .text getAnmTransform__17J3DMtxCalcAnmBaseFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm J3DAnmTransform* J3DMtxCalcAnmBase::getAnmTransform() {
    nofralloc
#include "asm/m_Do/m_Do_ext/getAnmTransform__17J3DMtxCalcAnmBaseFv.s"
}
#pragma pop

/* 80014FC0-80014FC8 -00001 0008+00 0/0 0/0 0/0 .text
 * setAnmTransform__17J3DMtxCalcAnmBaseFP15J3DAnmTransform      */
void J3DMtxCalcAnmBase::setAnmTransform(J3DAnmTransform* param_0) {
    *(u32*)(((u8*)this) + 4) /* this->field_0x4 */ = (u32)(param_0);
}

/* 80014FC8-80015034 00F908 006C+00 1/0 0/0 0/0 .text
 * __dt__114J3DMtxCalcAnimation<64J3DMtxCalcAnimationAdaptorDefault<27J3DMtxCalcCalcTransformMaya>,24J3DMtxCalcJ3DSysInitMaya>Fv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void func_80014FC8(void* _this) {
    nofralloc
#include "asm/m_Do/m_Do_ext/func_80014FC8.s"
}
#pragma pop

/* 80015034-8001505C 00F974 0028+00 1/0 0/0 0/0 .text
 * init__114J3DMtxCalcAnimation<64J3DMtxCalcAnimationAdaptorDefault<27J3DMtxCalcCalcTransformMaya>,24J3DMtxCalcJ3DSysInitMaya>FRC3VecRA3_A4_Cf
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void func_80015034(void* _this, Vec const& param_0, f32 const (&param_1)[3][4]) {
    nofralloc
#include "asm/m_Do/m_Do_ext/func_80015034.s"
}
#pragma pop

/* 8001505C-80015084 00F99C 0028+00 7/0 0/0 0/0 .text
 * init__73J3DMtxCalcNoAnm<27J3DMtxCalcCalcTransformMaya,24J3DMtxCalcJ3DSysInitMaya>FRC3VecRA3_A4_Cf
 */
void J3DMtxCalcNoAnm<J3DMtxCalcCalcTransformMaya, J3DMtxCalcJ3DSysInitMaya>::init(
    Vec const& param_0, f32 const (&param_1)[3][4]) {
    J3DMtxCalcJ3DSysInitMaya::init(param_0, param_1);
}

/* 80015084-800150AC 00F9C4 0028+00 2/0 0/0 0/0 .text
 * calc__73J3DMtxCalcNoAnm<27J3DMtxCalcCalcTransformMaya,24J3DMtxCalcJ3DSysInitMaya>Fv */
void J3DMtxCalcNoAnm<J3DMtxCalcCalcTransformMaya, J3DMtxCalcJ3DSysInitMaya>::calc() {
    J3DMtxCalcCalcTransformMaya::calcTransform(getJoint()->getTransformInfo());
}

/* 800150AC-8001513C 00F9EC 0090+00 1/0 0/0 0/0 .text
 * calc__114J3DMtxCalcAnimation<64J3DMtxCalcAnimationAdaptorDefault<27J3DMtxCalcCalcTransformMaya>,24J3DMtxCalcJ3DSysInitMaya>Fv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void func_800150AC(void* _this) {
    nofralloc
#include "asm/m_Do/m_Do_ext/func_800150AC.s"
}
#pragma pop

/* 803740FC-803740FC 00075C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
