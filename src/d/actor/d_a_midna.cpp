/**
 * @file d_a_midna.cpp
 * 
*/

#include "d/actor/d_a_midna.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void init__16daMidna_matAnm_cFv();
extern "C" void calc__16daMidna_matAnm_cCFP11J3DMaterial();
extern "C" void execute__20daMidna_McaMorfCB1_cFUsP16J3DTransformInfo();
extern "C" void modelCallBack__9daMidna_cFi();
extern "C" void changeUpperBck__9daMidna_cFv();
extern "C" void changeFaceBck__9daMidna_cFv();
extern "C" void baseModelCallBack__9daMidna_cFi();
extern "C" static void daMidna_modelCallBack__FP8J3DJointi();
extern "C" void initInvModel__9daMidna_cFUsPP8J3DModelP21mDoExt_invisibleModelUl();
extern "C" void initDemoModel__9daMidna_cFPP8J3DModelPCcUl();
extern "C" void createHeap__9daMidna_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void __dt__15J3DTevKColorAnmFv();
extern "C" void __ct__15J3DTevKColorAnmFv();
extern "C" void __dt__14J3DTevColorAnmFv();
extern "C" void __ct__14J3DTevColorAnmFv();
extern "C" void __dt__11J3DTexNoAnmFv();
extern "C" void __ct__11J3DTexNoAnmFv();
extern "C" void __dt__12J3DTexMtxAnmFv();
extern "C" void __ct__12J3DTexMtxAnmFv();
extern "C" void __dt__14J3DMatColorAnmFv();
extern "C" void __ct__14J3DMatColorAnmFv();
extern "C" static void daMidna_createHeap__FP10fopAc_ac_c();
extern "C" void create__9daMidna_cFv();
extern "C" void __dt__4cXyzFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __defctor__14daPy_anmHeap_cFv();
extern "C" static void daMidna_Create__FP10fopAc_ac_c();
extern "C" void allAnimePlay__9daMidna_cFv();
extern "C" void setMatrix__9daMidna_cFv();
extern "C" void setBodyPartMatrix__9daMidna_cFv();
extern "C" void setRoomInfo__9daMidna_cFv();
extern "C" void setBodyPartPos__9daMidna_cFv();
extern "C" void checkAppear__9daMidna_cFv();
extern "C" void checkMidnaPosState__9daMidna_cFv();
extern "C" void setUpperAnime__9daMidna_cFUsUs();
extern "C" void setUpperAnimeAndSe__9daMidna_cFQ29daMidna_c11daMidna_ANM();
extern "C" void setFaceAnime__9daMidna_cFUsUs();
extern "C" void endHighModel__9daMidna_cFv();
extern "C" void setDemoAnm__9daMidna_cFv();
extern "C" void setFaceBtp__9daMidna_cFUsi();
extern "C" void setFaceBtk__9daMidna_cFUsi();
extern "C" void setLeftHandShape__9daMidna_cFUs();
extern "C" void setRightHandShape__9daMidna_cFUs();
extern "C" void checkHairOnlyAnime__9daMidna_cCFi();
extern "C" void setBckAnime__9daMidna_cFP15J3DAnmTransformif();
extern "C" void setAnm__9daMidna_cFv();
extern "C" void getNeckAimAngle__9daMidna_cFPC4cXyzPsPsPsPs();
extern "C" void clearEyeMove__9daMidna_cFv();
extern "C" void setEyeMove__9daMidna_cFPC4cXyzss();
extern "C" void setNeckAngle__9daMidna_cFv();
extern "C" void initHairAngle__9daMidna_cFv();
extern "C" void setHairAngle__9daMidna_cFv();
extern "C" void setDemoData__9daMidna_cFv();
extern "C" void setSimpleBrk__9daMidna_cFP12J3DModelDataUs();
extern "C" void setSimpleBtk__9daMidna_cFP12J3DModelDataUs();
extern "C" void initMidnaModel__9daMidna_cFv();
extern "C" static void daMidna_searchNpc__FP10fopAc_ac_cPv();
extern "C" void setMidnaNoDrawFlg__9daMidna_cFv();
extern "C" void checkMetamorphoseEnableBase__9daMidna_cFv();
extern "C" void checkNoDrawState__9daMidna_cFv();
extern "C" void setSound__9daMidna_cFv();
extern "C" void execute__9daMidna_cFv();
extern "C" static void daMidna_Execute__FP9daMidna_c();
extern "C" void draw__9daMidna_cFv();
extern "C" static void daMidna_Draw__FP9daMidna_c();
extern "C" void __dt__9daMidna_cFv();
extern "C" static void daMidna_Delete__FP9daMidna_c();
extern "C" void calc__11J3DTexNoAnmCFPUs();
extern "C" void func_804C637C(void* _this, u8*);
extern "C" void __dt__20daMidna_McaMorfCB1_cFv();
extern "C" void __dt__16daMidna_matAnm_cFv();
extern "C" u8 const m__14daMidna_hio_c0[32];
extern "C" u8 const m_texDataTable__9daMidna_c[84];
extern "C" u8 const m_anmDataTable__9daMidna_c[636];
extern "C" extern char const* const d_a_midna__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XYZrotM__FPA4_fsss();
extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void mDoMtx_QuatConcat__FPC10QuaternionPC10QuaternionP10Quaternion();
extern "C" void mDoMtx_MtxToRot__FPA4_CfP5csXyz();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb();
extern "C" void changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform();
extern "C" void entry__13mDoExt_bckAnmFP12J3DModelDataf();
extern "C" void init__13mDoExt_blkAnmFP13J3DDeformDataP13J3DAnmClusteriifss();
extern "C" void mDoExt_modelEntryDL__FP8J3DModel();
extern "C" void create__21mDoExt_invisibleModelFP8J3DModelUc();
extern "C" void entryDL__21mDoExt_invisibleModelFP4cXyz();
extern "C" void setMorf__13mDoExt_morf_cFf();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void getTransform__16mDoExt_McaMorfSOFUsP16J3DTransformInfo();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_setStageLayer__FPv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_seenActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void fopAcM_getTalkEventPartner__FPC10fopAc_ac_c();
extern "C" void lineCheck__11fopAcM_lc_cFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void isTransformLV__21dSv_player_status_b_cCFi();
extern "C" void isEventBit__11dSv_event_cCFUs();
extern "C" void getPrm_Morf__13dDemo_actor_cFv();
extern "C" void getDemoIDData__13dDemo_actor_cFPiPiPiPUsPUc();
extern "C" void getActor__14dDemo_object_cFUc();
extern "C" void syncRes__14dRes_control_cFPCcP11dRes_info_ci();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci();
extern "C" void getIDRes__14dRes_control_cFPCcUsP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFPv();
extern "C" void convPId__14dEvt_control_cFUi();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getMyNowCutName__16dEvent_manager_cFi();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void checkStartDemo__16dEvent_manager_cFv();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void addReal__21dDlst_shadowControl_cFUlP8J3DModel();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GetPolyColor__4dBgSFRC13cBgS_PolyInfo();
extern "C" void GetRoomId__4dBgSFRC13cBgS_PolyInfo();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void __ct__15dBgS_LinkLinChkFv();
extern "C" void __dt__15dBgS_LinkLinChkFv();
extern "C" void initDemoBck__9daAlink_cFPP13mDoExt_bckAnmPCc();
extern "C" void simpleAnmPlay__9daAlink_cFP10J3DAnmBase();
extern "C" void getMetamorphoseNearDis__9daAlink_cCFv();
extern "C" void getMetamorphoseFarDis__9daAlink_cCFv();
extern "C" void getMetamorphoseFarAngle__9daAlink_cCFv();
extern "C" void checkCloudSea__9daAlink_cFv();
extern "C" void initShadowScaleLight__9daAlink_cFv();
extern "C" void moveShadowScaleLight__9daAlink_cFv();
extern "C" void checkMidnaUseAbility__9daAlink_cCFv();
extern "C" void getWolfTagJumpTime__9daAlink_cCFv();
extern "C" void checkMidnaLockJumpPoint__9daAlink_cCFv();
extern "C" void checkMidnaDisappearMode__9daAlink_cCFv();
extern "C" void getWolfLockActorEnd__9daAlink_cFv();
extern "C" void __ct__14daPy_anmHeap_cFUl();
extern "C" void __dt__14daPy_anmHeap_cFv();
extern "C" void initData__14daPy_anmHeap_cFv();
extern "C" void mallocBuffer__14daPy_anmHeap_cFv();
extern "C" void createHeap__14daPy_anmHeap_cFQ214daPy_anmHeap_c16daAlinkHEAP_TYPE();
extern "C" void loadDataIdx__14daPy_anmHeap_cFUs();
extern "C" void loadDataDemoRID__14daPy_anmHeap_cFUsUs();
extern "C" void daPy_addCalcShort__FPsssss();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void isMouthCheck__12dMsgObject_cFv();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c();
extern "C" void doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci();
extern "C" void getEventId__10dMsgFlow_cFPi();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void atan2sX_Z__4cXyzCFv();
extern "C" void atan2sY_XZ__4cXyzCFv();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rnd__Fv();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void cLib_addCalcPos__FP4cXyzRC4cXyzfff();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void cLib_chaseUC__FPUcUcUc();
extern "C" void cLib_chaseS__FPsss();
extern "C" void cLib_chasePos__FP4cXyzRC4cXyzf();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void __dt__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void initAnime__10Z2CreatureFPvbff();
extern "C" void updateAnime__10Z2CreatureFff();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void readIdxResource__10JKRArchiveFPvUlUl();
extern "C" void setDeformData__8J3DModelFP13J3DDeformDataUl();
extern "C" void calcWeightEnvelopeMtx__8J3DModelFv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void getTexNo__16J3DAnmTexPatternCFUsPUs();
extern "C" void searchUpdateMaterialID__16J3DAnmTexPatternFP12J3DModelData();
extern "C" void searchUpdateMaterialID__19J3DAnmTextureSRTKeyFP12J3DModelData();
extern "C" void getTevColorReg__15J3DAnmTevRegKeyCFUsP11_GXColorS10();
extern "C" void getTevKonstReg__15J3DAnmTevRegKeyCFUsP8_GXColor();
extern "C" void searchUpdateMaterialID__15J3DAnmTevRegKeyFP12J3DModelData();
extern "C" void initialize__14J3DMaterialAnmFv();
extern "C" void calc__14J3DMaterialAnmCFP11J3DMaterial();
extern "C" void removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey();
extern "C" void removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey();
extern "C" void entryTexNoAnimator__16J3DMaterialTableFP16J3DAnmTexPattern();
extern "C" void entryTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey();
extern "C" void entryTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey();
extern "C" void load__20J3DAnmLoaderDataBaseFPCv24J3DAnmLoaderDataBaseFlag();
extern "C" void JMAEulerToQuat__FsssP10Quaternion();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void _savegpr_14();
extern "C" void _savegpr_20();
extern "C" void _savegpr_23();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_14();
extern "C" void _restgpr_20();
extern "C" void _restgpr_23();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__14J3DMaterialAnm[4];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mGndCheck__11fopAcM_gc_c[84];
extern "C" u8 mDemoArcName__20dStage_roomControl_c[10 + 2 /* padding */];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" extern u8 g_meter2_info[248];
extern "C" f32 Zero__4cXyz[3];
extern "C" u8 BaseX__4cXyz[12];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" f32 mGroundY__11fopAcM_gc_c;
extern "C" u8 m_object__7dDemo_c[4];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" extern u8 struct_804C6CD8[4];

//
// Declarations:
//

/* ############################################################################################## */
/* 804C64C8-804C64D4 000000 000C+00 15/15 0/0 0/0 .rodata          @3777 */
SECTION_RODATA static u8 const lit_3777[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x804C64C8, &lit_3777);

/* 804C64D4-804C64DC 00000C 0006+02 5/6 0/0 0/0 .rodata          l_arcName */
SECTION_RODATA static u8 const l_arcName[6 + 2 /* padding */] = {
    0x4D,
    0x69,
    0x64,
    0x6E,
    0x61,
    0x00,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x804C64D4, &l_arcName);

/* 804C64DC-804C64E8 000014 000C+00 0/1 0/0 0/0 .rodata          l_eyeOffset */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_eyeOffset[12] = {
    0x41, 0x80, 0x00, 0x00, 0xC1, 0x26, 0x66, 0x67, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x804C64DC, &l_eyeOffset);
#pragma pop

/* 804C64E8-804C64F4 000020 000C+00 0/1 0/0 0/0 .rodata          l_headCenterOffset */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_headCenterOffset[12] = {
    0x00, 0x00, 0x00, 0x00, 0xC1, 0x26, 0x66, 0x67, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x804C64E8, &l_headCenterOffset);
#pragma pop

/* 804C64F4-804C64FC 00002C 0008+00 0/2 0/0 0/0 .rodata          l_normalColor */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_normalColor[8] = {
    0x00, 0x50, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x804C64F4, &l_normalColor);
#pragma pop

/* 804C64FC-804C6500 000034 0004+00 0/3 0/0 0/0 .rodata          l_normalKColor */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const l_normalKColor = 0xB4870000;
COMPILER_STRIP_GATE(0x804C64FC, &l_normalKColor);
#pragma pop

/* 804C6500-804C6504 000038 0004+00 0/3 0/0 0/0 .rodata          l_normalKColor2 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const l_normalKColor2 = 0x00C3C300;
COMPILER_STRIP_GATE(0x804C6500, &l_normalKColor2);
#pragma pop

/* 804C6504-804C650C 00003C 0008+00 0/1 0/0 0/0 .rodata          l_bigColor */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_bigColor[8] = {
    0x00, 0xFF, 0x00, 0x64, 0x00, 0x78, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x804C6504, &l_bigColor);
#pragma pop

/* 804C650C-804C6510 000044 0004+00 0/1 0/0 0/0 .rodata          l_bigKColor */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const l_bigKColor = 0x1E000000;
COMPILER_STRIP_GATE(0x804C650C, &l_bigKColor);
#pragma pop

/* 804C6510-804C6514 000048 0004+00 0/3 0/0 0/0 .rodata          l_lNormalKColor */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const l_lNormalKColor = 0xFFDC0000;
COMPILER_STRIP_GATE(0x804C6510, &l_lNormalKColor);
#pragma pop

/* 804C6514-804C6518 00004C 0004+00 0/3 0/0 0/0 .rodata          l_lNormalKColor2 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const l_lNormalKColor2 = 0x00C3EB00;
COMPILER_STRIP_GATE(0x804C6514, &l_lNormalKColor2);
#pragma pop

/* 804C6518-804C6520 000050 0008+00 0/1 0/0 0/0 .rodata          l_lBigColor */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_lBigColor[8] = {
    0x00, 0xFF, 0x00, 0x78, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x804C6518, &l_lBigColor);
#pragma pop

/* 804C6520-804C6524 000058 0004+00 0/1 0/0 0/0 .rodata          l_lBigKColor2 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const l_lBigKColor2 = 0xAAFFC300;
COMPILER_STRIP_GATE(0x804C6520, &l_lBigKColor2);
#pragma pop

/* 804C6524-804C6560 00005C 003C+00 0/2 0/0 0/0 .rodata          l_hairScale */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_hairScale[60] = {
    0x3E, 0x99, 0x99, 0x9A, 0x3F, 0x4C, 0xCC, 0xCD, 0x3F, 0x33, 0x33, 0x33, 0x3E, 0x4C, 0xCC,
    0xCD, 0x3F, 0x4C, 0xCC, 0xCD, 0x3E, 0xCC, 0xCC, 0xCD, 0x3E, 0x19, 0x99, 0x9A, 0x3F, 0x40,
    0x00, 0x00, 0x3F, 0x00, 0x00, 0x00, 0x3D, 0xCC, 0xCC, 0xCD, 0x3F, 0x33, 0x33, 0x33, 0x3F,
    0x33, 0x33, 0x33, 0x3F, 0x80, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x804C6524, &l_hairScale);
#pragma pop

/* 804C6560-804C6580 000098 0020+00 1/3 0/0 0/0 .rodata          m__14daMidna_hio_c0 */
SECTION_RODATA u8 const daMidna_hio_c0::m[32] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0xC2, 0xAE, 0x00, 0x00, 0x41, 0xC8, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x804C6560, &daMidna_hio_c0::m);

/* 804C6580-804C6584 0000B8 0004+00 6/18 0/0 0/0 .rodata          @4278 */
SECTION_RODATA static u8 const lit_4278[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x804C6580, &lit_4278);

/* 804BC218-804BC248 000078 0030+00 2/2 0/0 0/0 .text            init__16daMidna_matAnm_cFv */
void daMidna_matAnm_c::init() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804C6584-804C6588 0000BC 0004+00 5/14 0/0 0/0 .rodata          @4303 */
SECTION_RODATA static f32 const lit_4303 = 1.0f;
COMPILER_STRIP_GATE(0x804C6584, &lit_4303);

/* 804C6588-804C6590 0000C0 0008+00 3/9 0/0 0/0 .rodata          @4305 */
SECTION_RODATA static u8 const lit_4305[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x804C6588, &lit_4305);

/* 804BC248-804BC36C 0000A8 0124+00 1/0 0/0 0/0 .text calc__16daMidna_matAnm_cCFP11J3DMaterial */
void daMidna_matAnm_c::calc(J3DMaterial* param_0) const {
    // NONMATCHING
}

/* 804BC36C-804BC3E0 0001CC 0074+00 1/0 0/0 0/0 .text
 * execute__20daMidna_McaMorfCB1_cFUsP16J3DTransformInfo        */
void daMidna_McaMorfCB1_c::execute(u16 param_0, J3DTransformInfo* param_1) {
    // NONMATCHING
}

/* 804BC3E0-804BC5C4 000240 01E4+00 1/1 0/0 0/0 .text            modelCallBack__9daMidna_cFi */
void daMidna_c::modelCallBack(int param_0) {
    // NONMATCHING
}

/* 804BC5C4-804BC614 000424 0050+00 1/1 0/0 0/0 .text            changeUpperBck__9daMidna_cFv */
void daMidna_c::changeUpperBck() {
    // NONMATCHING
}

/* 804BC614-804BC670 000474 005C+00 1/1 0/0 0/0 .text            changeFaceBck__9daMidna_cFv */
void daMidna_c::changeFaceBck() {
    // NONMATCHING
}

/* 804BC670-804BC6FC 0004D0 008C+00 1/1 0/0 0/0 .text            baseModelCallBack__9daMidna_cFi */
void daMidna_c::baseModelCallBack(int param_0) {
    // NONMATCHING
}

/* 804BC6FC-804BC740 00055C 0044+00 1/1 0/0 0/0 .text            daMidna_modelCallBack__FP8J3DJointi
 */
static void daMidna_modelCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 804BC740-804BC7D4 0005A0 0094+00 1/1 0/0 0/0 .text
 * initInvModel__9daMidna_cFUsPP8J3DModelP21mDoExt_invisibleModelUl */
void daMidna_c::initInvModel(u16 param_0, J3DModel** param_1, mDoExt_invisibleModel* param_2,
                                 u32 param_3) {
    // NONMATCHING
}

/* 804BC7D4-804BC868 000634 0094+00 1/1 0/0 0/0 .text initDemoModel__9daMidna_cFPP8J3DModelPCcUl
 */
void daMidna_c::initDemoModel(J3DModel** param_0, char const* param_1, u32 param_2) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804C6A60-804C6A60 000598 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_804C6A60 = "demo00_Midna_cut00_HL_tmp.bmd";
SECTION_DEAD static char const* const stringBase_804C6A7E = "demo00_Midna_cut00_HL_tmp.bck";
SECTION_DEAD static char const* const stringBase_804C6A9C = "demo00_Midna_cut00_HR_tmp.bmd";
SECTION_DEAD static char const* const stringBase_804C6ABA = "demo00_Midna_cut00_HR_tmp.bck";
SECTION_DEAD static char const* const stringBase_804C6AD8 = "demo00_Midna_cut00_HD_tmp.bmd";
SECTION_DEAD static char const* const stringBase_804C6AF6 = "demo00_Midna_cut00_HD_tmp.bck";
SECTION_DEAD static char const* const stringBase_804C6B14 = "demo00_Midna_cut00_FC_blend.bmd";
SECTION_DEAD static char const* const stringBase_804C6B34 = "demo00_Midna_cut00_FC_tongue.bmd";
SECTION_DEAD static char const* const stringBase_804C6B55 = "demo00_Midna_cut00_FC_tmp.bck";
SECTION_DEAD static char const* const stringBase_804C6B73 = "demo00_Midna_cut00_BD_tmp.bmd";
SECTION_DEAD static char const* const stringBase_804C6B91 = "demo00_Midna_cut00_BD_mask.bmd";
SECTION_DEAD static char const* const stringBase_804C6BB0 = "demo00_Midna_cut00_BD_hands.bmd";
SECTION_DEAD static char const* const stringBase_804C6BD0 = "demo00_Midna_cut00_BD_hairhand.bmd";
SECTION_DEAD static char const* const stringBase_804C6BF3 = "demo00_Midna_cut00_FC_tmp.bls";
#pragma pop

/* 804C6C34-804C6C40 -00001 000C+00 1/1 0/0 0/0 .data            @4662 */
SECTION_DATA static void* lit_4662[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)checkMetamorphoseEnableBase__9daMidna_cFv,
};

/* 804C6C40-804C6C60 -00001 0020+00 1/0 0/0 0/0 .data            l_daMidna_Method */
static actor_method_class l_daMidna_Method = {
    (process_method_func)daMidna_Create__FP10fopAc_ac_c,
    (process_method_func)daMidna_Delete__FP9daMidna_c,
    (process_method_func)daMidna_Execute__FP9daMidna_c,
    0,
    (process_method_func)daMidna_Draw__FP9daMidna_c,
};

/* 804C6C60-804C6C90 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_MIDNA */
extern actor_process_profile_definition g_profile_MIDNA = {
  fpcLy_CURRENT_e,              // mLayerID
  6,                            // mListID
  fpcPi_CURRENT_e,              // mListPrio
  PROC_MIDNA,                   // mProcName
  &g_fpcLf_Method.mBase,        // sub_method
  sizeof(daMidna_c),            // mSize
  0,                            // mSizeOther
  0,                            // mParameters
  &g_fopAc_Method.base,         // sub_method
  92,                           // mPriority
  &l_daMidna_Method,            // sub_method
  0x00060000,                   // mStatus
  fopAc_ENV_e,                  // mActorType
  fopAc_CULLBOX_0_e,            // cullType
};

/* 804C6C90-804C6C9C 00005C 000C+00 1/1 0/0 0/0 .data            __vt__25mDoExt_McaMorfCallBack1_c
 */
SECTION_DATA extern void* __vt__25mDoExt_McaMorfCallBack1_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)NULL,
};

/* 804C6C9C-804C6CA8 000068 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 804C6CA8-804C6CB4 000074 000C+00 4/4 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 804C6CB4-804C6CC4 000080 0010+00 3/3 0/0 0/0 .data            __vt__20daMidna_McaMorfCB1_c */
SECTION_DATA extern void* __vt__20daMidna_McaMorfCB1_c[4] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)execute__20daMidna_McaMorfCB1_cFUsP16J3DTransformInfo,
    (void*)__dt__20daMidna_McaMorfCB1_cFv,
};

/* 804C6CC4-804C6CD4 000090 0010+00 2/2 0/0 0/0 .data            __vt__16daMidna_matAnm_c */
SECTION_DATA extern void* __vt__16daMidna_matAnm_c[4] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__16daMidna_matAnm_cFv,
    (void*)calc__16daMidna_matAnm_cCFP11J3DMaterial,
};

/* 804BC868-804BD050 0006C8 07E8+00 1/1 0/0 0/0 .text            createHeap__9daMidna_cFv */
void daMidna_c::createHeap() {
    // NONMATCHING
}

/* 804BD050-804BD098 000EB0 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 804BD098-804BD0D4 000EF8 003C+00 2/2 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 804BD0D4-804BD0EC 000F34 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 804BD0EC-804BD128 000F4C 003C+00 2/2 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 804BD128-804BD140 000F88 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 804BD140-804BD188 000FA0 0048+00 2/2 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 804BD188-804BD1AC 000FE8 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 804BD1AC-804BD1E8 00100C 003C+00 2/2 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 804BD1E8-804BD200 001048 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 804BD200-804BD23C 001060 003C+00 2/2 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 804BD23C-804BD254 00109C 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 804BD254-804BD274 0010B4 0020+00 1/1 0/0 0/0 .text            daMidna_createHeap__FP10fopAc_ac_c
 */
static void daMidna_createHeap(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804C6590-804C65E4 0000C8 0054+00 0/1 0/0 0/0 .rodata          m_texDataTable__9daMidna_c */
#pragma push
#pragma force_active on
SECTION_RODATA u8 const daMidna_c::m_texDataTable[84] = {
    0x04, 0x05, 0x03, 0xA4, 0x03, 0xF5, 0x03, 0x99, 0x03, 0xF6, 0x03, 0x99, 0x04, 0x07,
    0x03, 0x99, 0x04, 0x06, 0x03, 0xA5, 0x04, 0x05, 0x03, 0xA0, 0x03, 0xFA, 0x03, 0x99,
    0x04, 0x01, 0x03, 0x9E, 0x03, 0xF7, 0x03, 0x9F, 0x04, 0x03, 0x03, 0xA2, 0x04, 0x04,
    0x03, 0xA3, 0x03, 0xF7, 0x03, 0xA1, 0x03, 0xFC, 0x03, 0x9A, 0x04, 0x02, 0x03, 0x99,
    0x03, 0xFE, 0x03, 0x9B, 0x03, 0xFF, 0x03, 0x9C, 0x03, 0xF8, 0x03, 0x99, 0x03, 0xF9,
    0x03, 0x99, 0x04, 0x00, 0x03, 0x9D, 0x03, 0xFB, 0x03, 0x99, 0x03, 0xFD, 0x03, 0x99,
};
COMPILER_STRIP_GATE(0x804C6590, &daMidna_c::m_texDataTable);
#pragma pop

/* 804C65E4-804C6860 00011C 027C+00 3/12 0/0 0/0 .rodata          m_anmDataTable__9daMidna_c */
SECTION_RODATA u8 const daMidna_c::m_anmDataTable[636] = {
    0x01, 0xDC, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xB7, 0x00, 0x01,
    0xBF, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xB8, 0x00, 0x02, 0xBF, 0x80, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x01, 0xDD, 0x00, 0x03, 0xBF, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x01, 0xD3, 0x00, 0x04, 0x3F, 0x80, 0x00, 0x00, 0x00, 0x05, 0x01, 0xEC, 0x01, 0xDB, 0x00, 0x00,
    0xBF, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xC8, 0x00, 0x05, 0x3F, 0x80, 0x00, 0x00,
    0x00, 0x05, 0x01, 0xE9, 0x01, 0xC7, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x01, 0xCB, 0x00, 0x10, 0xBF, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xCA, 0x00, 0x00,
    0x40, 0x00, 0x00, 0x00, 0x00, 0x05, 0x01, 0xF8, 0x01, 0xC9, 0x00, 0x00, 0x3D, 0xCC, 0xCC, 0xCD,
    0x00, 0x05, 0x01, 0xF7, 0x01, 0xBA, 0x00, 0x06, 0x40, 0x40, 0x00, 0x00, 0x00, 0x05, 0x01, 0xEB,
    0x01, 0xD8, 0x00, 0x07, 0x40, 0x40, 0x00, 0x00, 0x00, 0x05, 0x01, 0xF2, 0x01, 0xD9, 0x00, 0x08,
    0x3F, 0x80, 0x00, 0x00, 0x00, 0x05, 0x01, 0xF5, 0x01, 0xE1, 0x00, 0x09, 0x3F, 0x80, 0x00, 0x00,
    0x00, 0x05, 0x01, 0xF9, 0x01, 0xE2, 0x00, 0x0A, 0x3F, 0x80, 0x00, 0x00, 0x00, 0x05, 0x01, 0xEF,
    0x02, 0x17, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x18, 0x00, 0x00,
    0xBF, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x1C, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x02, 0x19, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x01, 0xE0, 0x00, 0x0B, 0xBF, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xDF, 0x00, 0x10,
    0x40, 0xE0, 0x00, 0x00, 0x00, 0x05, 0x01, 0xFF, 0x01, 0xBE, 0x00, 0x0C, 0x3F, 0x80, 0x00, 0x00,
    0x00, 0x05, 0x01, 0xFA, 0x01, 0xDA, 0x00, 0x0D, 0x41, 0xE0, 0x00, 0x00, 0x00, 0x05, 0x01, 0xF6,
    0x01, 0xC6, 0x00, 0x0E, 0x41, 0x20, 0x00, 0x00, 0x00, 0x05, 0x01, 0xED, 0x01, 0xCC, 0x00, 0x0F,
    0x41, 0x30, 0x00, 0x00, 0x00, 0x05, 0x01, 0xEE, 0x01, 0xD7, 0x00, 0x12, 0x41, 0x00, 0x00, 0x00,
    0x00, 0x05, 0x01, 0xF1, 0x02, 0x1A, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x01, 0xD4, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xDE, 0x00, 0x11,
    0xBF, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xB9, 0x00, 0x11, 0xBF, 0x80, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x01, 0xD6, 0x00, 0x00, 0x41, 0xD8, 0x00, 0x00, 0x00, 0x05, 0x01, 0xFC,
    0x01, 0xD5, 0x00, 0x00, 0x42, 0x40, 0x00, 0x00, 0x00, 0x05, 0x01, 0xFE, 0x01, 0xBB, 0x00, 0x00,
    0xBF, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xBC, 0x00, 0x00, 0x41, 0x88, 0x00, 0x00,
    0x00, 0x05, 0x01, 0xFB, 0x01, 0xBD, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00, 0x00, 0x05, 0x01, 0xFB,
    0x01, 0xC2, 0x00, 0x13, 0xBF, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xC3, 0x00, 0x14,
    0x3D, 0xCC, 0xCC, 0xCD, 0x00, 0x05, 0x00, 0x74, 0x01, 0xCE, 0x00, 0x10, 0x3F, 0x80, 0x00, 0x00,
    0x00, 0x05, 0x02, 0x00, 0x01, 0xCD, 0x00, 0x10, 0xBF, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x01, 0xD0, 0x00, 0x10, 0x3F, 0x80, 0x00, 0x00, 0x00, 0x05, 0x01, 0xEA, 0x01, 0xCF, 0x00, 0x10,
    0x3F, 0x80, 0x00, 0x00, 0x00, 0x05, 0x02, 0x01, 0x01, 0xD2, 0x00, 0x10, 0x3F, 0x80, 0x00, 0x00,
    0x00, 0x05, 0x01, 0xEA, 0x01, 0xD1, 0x00, 0x10, 0x3F, 0x80, 0x00, 0x00, 0x00, 0x05, 0x02, 0x01,
    0x01, 0xBF, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xC0, 0x00, 0x10,
    0xBF, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xC1, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x01, 0xC1, 0x00, 0x11, 0xBF, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x01, 0xC5, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x1D, 0x00, 0x00,
    0xBF, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x1E, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x02, 0x1B, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x01, 0xC4, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x804C65E4, &daMidna_c::m_anmDataTable);

/* 804C6860-804C6864 000398 0004+00 1/5 0/0 0/0 .rodata          @4838 */
SECTION_RODATA static f32 const lit_4838 = -1.0f;
COMPILER_STRIP_GATE(0x804C6860, &lit_4838);

/* 804BD274-804BD8B8 0010D4 0644+00 1/1 0/0 0/0 .text            create__9daMidna_cFv */
void daMidna_c::create() {
    // NONMATCHING
}

/* 804BD8B8-804BD8F4 001718 003C+00 2/2 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 804BD8F4-804BD8F8 001754 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 804BD8F8-804BD91C 001758 0024+00 1/1 0/0 0/0 .text            __defctor__14daPy_anmHeap_cFv */
void daPy_anmHeap_c::__defctor() {
    // NONMATCHING
}

/* 804BD91C-804BD93C 00177C 0020+00 1/0 0/0 0/0 .text            daMidna_Create__FP10fopAc_ac_c */
static void daMidna_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804C6864-804C6868 00039C 0004+00 0/1 0/0 0/0 .rodata          @5078 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5078 = 0x3C449BA6;
COMPILER_STRIP_GATE(0x804C6864, &lit_5078);
#pragma pop

/* 804C6868-804C686C 0003A0 0004+00 1/2 0/0 0/0 .rodata          @5079 */
SECTION_RODATA static u32 const lit_5079 = 0x3A83126F;
COMPILER_STRIP_GATE(0x804C6868, &lit_5079);

/* 804C686C-804C6870 0003A4 0004+00 0/6 0/0 0/0 .rodata          @5080 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5080 = 2.0f;
COMPILER_STRIP_GATE(0x804C686C, &lit_5080);
#pragma pop

/* 804BD93C-804BDE04 00179C 04C8+00 2/2 0/0 0/0 .text            allAnimePlay__9daMidna_cFv */
void daMidna_c::allAnimePlay() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804C6870-804C687C 0003A8 000C+00 0/1 0/0 0/0 .rodata          @5087 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5087[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x804C6870, &lit_5087);
#pragma pop

/* 804C687C-804C6888 0003B4 000C+00 0/1 0/0 0/0 .rodata          @5088 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5088[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x804C687C, &lit_5088);
#pragma pop

/* 804C6888-804C6894 0003C0 000C+00 0/1 0/0 0/0 .rodata          @5093 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5093[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x804C6888, &lit_5093);
#pragma pop

/* 804C6894-804C6898 0003CC 0004+00 0/1 0/0 0/0 .rodata          @5309 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5309 = -98.0f;
COMPILER_STRIP_GATE(0x804C6894, &lit_5309);
#pragma pop

/* 804C6898-804C689C 0003D0 0004+00 0/2 0/0 0/0 .rodata          @5310 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5310 = 17.0f;
COMPILER_STRIP_GATE(0x804C6898, &lit_5310);
#pragma pop

/* 804C689C-804C68A0 0003D4 0004+00 0/1 0/0 0/0 .rodata          @5311 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5311 = -30.0f;
COMPILER_STRIP_GATE(0x804C689C, &lit_5311);
#pragma pop

/* 804C68A0-804C68A4 0003D8 0004+00 0/1 0/0 0/0 .rodata          @5312 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5312 = 65.0f;
COMPILER_STRIP_GATE(0x804C68A0, &lit_5312);
#pragma pop

/* 804C68A4-804C68A8 0003DC 0004+00 0/2 0/0 0/0 .rodata          @5313 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5313 = 90.0f;
COMPILER_STRIP_GATE(0x804C68A4, &lit_5313);
#pragma pop

/* 804C68A8-804C68AC 0003E0 0004+00 0/1 0/0 0/0 .rodata          @5314 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5314 = 80.0f;
COMPILER_STRIP_GATE(0x804C68A8, &lit_5314);
#pragma pop

/* 804C68AC-804C68B0 0003E4 0004+00 0/3 0/0 0/0 .rodata          @5315 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5315 = 100.0f;
COMPILER_STRIP_GATE(0x804C68AC, &lit_5315);
#pragma pop

/* 804C68B0-804C68B4 0003E8 0004+00 0/1 0/0 0/0 .rodata          @5316 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5316 = 150.0f;
COMPILER_STRIP_GATE(0x804C68B0, &lit_5316);
#pragma pop

/* 804C68B4-804C68B8 0003EC 0004+00 0/1 0/0 0/0 .rodata          @5317 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5317 = -8.0f / 5.0f;
COMPILER_STRIP_GATE(0x804C68B4, &lit_5317);
#pragma pop

/* 804C68B8-804C68BC 0003F0 0004+00 0/1 0/0 0/0 .rodata          @5318 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5318 = -39.0f / 25.0f;
COMPILER_STRIP_GATE(0x804C68B8, &lit_5318);
#pragma pop

/* 804C68BC-804C68C0 0003F4 0004+00 0/1 0/0 0/0 .rodata          @5319 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5319 = -33.0f / 5.0f;
COMPILER_STRIP_GATE(0x804C68BC, &lit_5319);
#pragma pop

/* 804C68C0-804C68C4 0003F8 0004+00 0/2 0/0 0/0 .rodata          @5320 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5320 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x804C68C0, &lit_5320);
#pragma pop

/* 804C68C4-804C68C8 0003FC 0004+00 0/2 0/0 0/0 .rodata          @5321 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5321 = 24.0f;
COMPILER_STRIP_GATE(0x804C68C4, &lit_5321);
#pragma pop

/* 804C68C8-804C68CC 000400 0004+00 0/2 0/0 0/0 .rodata          @5322 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5322 = 16384.0f;
COMPILER_STRIP_GATE(0x804C68C8, &lit_5322);
#pragma pop

/* 804C68CC-804C68D0 000404 0004+00 0/1 0/0 0/0 .rodata          @5323 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5323 = -150.0f;
COMPILER_STRIP_GATE(0x804C68CC, &lit_5323);
#pragma pop

/* 804BDE04-804BE470 001C64 066C+00 2/2 0/0 0/0 .text            setMatrix__9daMidna_cFv */
void daMidna_c::setMatrix() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804C68D0-804C68D4 000408 0004+00 0/1 0/0 0/0 .rodata          @5780 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5780 = 6.5f;
COMPILER_STRIP_GATE(0x804C68D0, &lit_5780);
#pragma pop

/* 804C68D4-804C68D8 00040C 0004+00 0/1 0/0 0/0 .rodata          @5781 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5781 = 20.0f;
COMPILER_STRIP_GATE(0x804C68D4, &lit_5781);
#pragma pop

/* 804BE470-804BED1C 0022D0 08AC+00 2/2 0/0 0/0 .text            setBodyPartMatrix__9daMidna_cFv */
void daMidna_c::setBodyPartMatrix() {
    // NONMATCHING
}

/* 804BED1C-804BEDB8 002B7C 009C+00 2/2 0/0 0/0 .text            setRoomInfo__9daMidna_cFv */
void daMidna_c::setRoomInfo() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804C68D8-804C68E4 000410 000C+00 0/1 0/0 0/0 .rodata          localItemPos$5798 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const localItemPos[12] = {
    0x00, 0x00, 0x00, 0x00, 0xC2, 0x88, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x804C68D8, &localItemPos);
#pragma pop

/* 804C68E4-804C68E8 00041C 0004+00 0/1 0/0 0/0 .rodata          @5883 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5883 = 14.0f;
COMPILER_STRIP_GATE(0x804C68E4, &lit_5883);
#pragma pop

/* 804C68E8-804C68EC 000420 0004+00 0/4 0/0 0/0 .rodata          @5884 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5884 = 3.0f;
COMPILER_STRIP_GATE(0x804C68E8, &lit_5884);
#pragma pop

/* 804C68EC-804C68F0 000424 0004+00 0/1 0/0 0/0 .rodata          @5885 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5885 = 250.0f;
COMPILER_STRIP_GATE(0x804C68EC, &lit_5885);
#pragma pop

/* 804C68F0-804C68F4 000428 0004+00 0/2 0/0 0/0 .rodata          @5886 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5886 = 50.0f;
COMPILER_STRIP_GATE(0x804C68F0, &lit_5886);
#pragma pop

/* 804C68F4-804C68F8 00042C 0004+00 0/3 0/0 0/0 .rodata          @5887 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5887 = 30.0f;
COMPILER_STRIP_GATE(0x804C68F4, &lit_5887);
#pragma pop

/* 804C68F8-804C68FC 000430 0004+00 0/1 0/0 0/0 .rodata          @5888 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5888 = 120.0f;
COMPILER_STRIP_GATE(0x804C68F8, &lit_5888);
#pragma pop

/* 804BEDB8-804BEFA0 002C18 01E8+00 1/1 0/0 0/0 .text            setBodyPartPos__9daMidna_cFv */
void daMidna_c::setBodyPartPos() {
    // NONMATCHING
}

/* 804BEFA0-804BF070 002E00 00D0+00 1/1 0/0 0/0 .text            checkAppear__9daMidna_cFv */
void daMidna_c::checkAppear() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804C68FC-804C6908 000434 000C+00 0/1 0/0 0/0 .rodata          @5997 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5997[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x804C68FC, &lit_5997);
#pragma pop

/* 804C6908-804C690C 000440 0004+00 0/1 0/0 0/0 .rodata          @6386 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6386 = 72.0f;
COMPILER_STRIP_GATE(0x804C6908, &lit_6386);
#pragma pop

/* 804C690C-804C6910 000444 0004+00 0/1 0/0 0/0 .rodata          @6387 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6387 = 40000.0f;
COMPILER_STRIP_GATE(0x804C690C, &lit_6387);
#pragma pop

/* 804C6910-804C6918 000448 0008+00 0/4 0/0 0/0 .rodata          @6388 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6388[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x804C6910, &lit_6388);
#pragma pop

/* 804C6918-804C6920 000450 0008+00 0/4 0/0 0/0 .rodata          @6389 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6389[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x804C6918, &lit_6389);
#pragma pop

/* 804C6920-804C6928 000458 0008+00 0/4 0/0 0/0 .rodata          @6390 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6390[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x804C6920, &lit_6390);
#pragma pop

/* 804C6928-804C692C 000460 0004+00 0/2 0/0 0/0 .rodata          @6391 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6391 = 10.0f;
COMPILER_STRIP_GATE(0x804C6928, &lit_6391);
#pragma pop

/* 804C692C-804C6930 000464 0004+00 0/4 0/0 0/0 .rodata          @6392 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6392 = 0.5f;
COMPILER_STRIP_GATE(0x804C692C, &lit_6392);
#pragma pop

/* 804C6930-804C6934 000468 0004+00 0/1 0/0 0/0 .rodata          @6393 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6393 = 26.0f;
COMPILER_STRIP_GATE(0x804C6930, &lit_6393);
#pragma pop

/* 804C6934-804C6938 00046C 0004+00 0/1 0/0 0/0 .rodata          @6394 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6394 = 13.0f;
COMPILER_STRIP_GATE(0x804C6934, &lit_6394);
#pragma pop

/* 804C6938-804C6940 000470 0004+04 0/2 0/0 0/0 .rodata          @6395 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6395[1 + 1 /* padding */] = {
    4.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x804C6938, &lit_6395);
#pragma pop

/* 804BF070-804BFF80 002ED0 0F10+00 1/1 0/0 0/0 .text            checkMidnaPosState__9daMidna_cFv */
void daMidna_c::checkMidnaPosState() {
    // NONMATCHING
}

/* 804BFF80-804C0020 003DE0 00A0+00 3/3 0/0 0/0 .text            setUpperAnime__9daMidna_cFUsUs */
void daMidna_c::setUpperAnime(u16 param_0, u16 param_1) {
    // NONMATCHING
}

/* 804C0020-804C0094 003E80 0074+00 1/1 0/0 0/0 .text
 * setUpperAnimeAndSe__9daMidna_cFQ29daMidna_c11daMidna_ANM     */
void daMidna_c::setUpperAnimeAndSe(daMidna_c::daMidna_ANM param_0) {
    // NONMATCHING
}

/* 804C0094-804C0134 003EF4 00A0+00 1/1 0/0 0/0 .text            setFaceAnime__9daMidna_cFUsUs */
void daMidna_c::setFaceAnime(u16 param_0, u16 param_1) {
    // NONMATCHING
}

/* 804C0134-804C0238 003F94 0104+00 2/2 0/0 0/0 .text            endHighModel__9daMidna_cFv */
void daMidna_c::endHighModel() {
    // NONMATCHING
}

/* 804C0238-804C0BAC 004098 0974+00 1/1 0/0 0/0 .text            setDemoAnm__9daMidna_cFv */
void daMidna_c::setDemoAnm() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804C6940-804C6948 000478 0008+00 2/2 0/0 0/0 .rodata          @6968 */
SECTION_RODATA static u8 const lit_6968[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x804C6940, &lit_6968);

/* 804C0BAC-804C0C6C 004A0C 00C0+00 2/2 0/0 0/0 .text            setFaceBtp__9daMidna_cFUsi */
void daMidna_c::setFaceBtp(u16 param_0, int param_1) {
    // NONMATCHING
}

/* 804C0C6C-804C0D2C 004ACC 00C0+00 2/2 0/0 0/0 .text            setFaceBtk__9daMidna_cFUsi */
void daMidna_c::setFaceBtk(u16 param_0, int param_1) {
    // NONMATCHING
}

/* 804C0D2C-804C0E18 004B8C 00EC+00 2/2 0/0 0/0 .text            setLeftHandShape__9daMidna_cFUs */
void daMidna_c::setLeftHandShape(u16 param_0) {
    // NONMATCHING
}

/* 804C0E18-804C0F04 004C78 00EC+00 3/3 0/0 0/0 .text            setRightHandShape__9daMidna_cFUs */
void daMidna_c::setRightHandShape(u16 param_0) {
    // NONMATCHING
}

/* 804C0F04-804C0F24 004D64 0020+00 1/1 0/0 0/0 .text            checkHairOnlyAnime__9daMidna_cCFi
 */
void daMidna_c::checkHairOnlyAnime(int param_0) const {
    // NONMATCHING
}

/* 804C0F24-804C103C 004D84 0118+00 2/2 0/0 0/0 .text setBckAnime__9daMidna_cFP15J3DAnmTransformif
 */
void daMidna_c::setBckAnime(J3DAnmTransform* param_0, int param_1, f32 param_2) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804C6948-804C696C 000480 0024+00 0/1 0/0 0/0 .rodata          motionTable$7191 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const motionTable[36] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x18,
    0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x17,
};
COMPILER_STRIP_GATE(0x804C6948, &motionTable);
#pragma pop

/* 804C696C-804C6970 0004A4 0004+00 1/2 0/0 0/0 .rodata          @7990 */
SECTION_RODATA static f32 const lit_7990 = 5.0f;
COMPILER_STRIP_GATE(0x804C696C, &lit_7990);

/* 804C6970-804C6974 0004A8 0004+00 0/2 0/0 0/0 .rodata          @7991 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7991 = 19.0f;
COMPILER_STRIP_GATE(0x804C6970, &lit_7991);
#pragma pop

/* 804C6974-804C6978 0004AC 0004+00 0/1 0/0 0/0 .rodata          @7992 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7992 = 9.0f / 10.0f;
COMPILER_STRIP_GATE(0x804C6974, &lit_7992);
#pragma pop

/* 804C6978-804C697C 0004B0 0004+00 0/1 0/0 0/0 .rodata          @7993 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_7993 = 0x42103D92;
COMPILER_STRIP_GATE(0x804C6978, &lit_7993);
#pragma pop

/* 804C697C-804C6980 0004B4 0004+00 0/1 0/0 0/0 .rodata          @7994 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_7994 = 0xC168408A;
COMPILER_STRIP_GATE(0x804C697C, &lit_7994);
#pragma pop

/* 804C6980-804C6984 0004B8 0004+00 0/1 0/0 0/0 .rodata          @7995 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7995 = 1000.0f;
COMPILER_STRIP_GATE(0x804C6980, &lit_7995);
#pragma pop

/* 804C6984-804C6988 0004BC 0004+00 0/2 0/0 0/0 .rodata          @7996 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7996 = 9.0f;
COMPILER_STRIP_GATE(0x804C6984, &lit_7996);
#pragma pop

/* 804C6988-804C698C 0004C0 0004+00 0/2 0/0 0/0 .rodata          @7997 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7997 = 12.0f;
COMPILER_STRIP_GATE(0x804C6988, &lit_7997);
#pragma pop

/* 804C698C-804C6990 0004C4 0004+00 0/3 0/0 0/0 .rodata          @7998 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7998 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x804C698C, &lit_7998);
#pragma pop

/* 804C6990-804C6994 0004C8 0004+00 0/1 0/0 0/0 .rodata          @7999 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7999 = 95.0f;
COMPILER_STRIP_GATE(0x804C6990, &lit_7999);
#pragma pop

/* 804C6994-804C6998 0004CC 0004+00 0/2 0/0 0/0 .rodata          @8000 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8000 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x804C6994, &lit_8000);
#pragma pop

/* 804C6998-804C699C 0004D0 0004+00 0/1 0/0 0/0 .rodata          @8001 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8001 = 1.0f / 80.0f;
COMPILER_STRIP_GATE(0x804C6998, &lit_8001);
#pragma pop

/* 804C699C-804C69A0 0004D4 0004+00 0/1 0/0 0/0 .rodata          @8002 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8002 = 110.0f;
COMPILER_STRIP_GATE(0x804C699C, &lit_8002);
#pragma pop

/* 804C69A0-804C69A4 0004D8 0004+00 0/1 0/0 0/0 .rodata          @8003 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8003 = 15.0f;
COMPILER_STRIP_GATE(0x804C69A0, &lit_8003);
#pragma pop

/* 804C69A4-804C69A8 0004DC 0004+00 0/1 0/0 0/0 .rodata          @8004 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8004 = 53.0f;
COMPILER_STRIP_GATE(0x804C69A4, &lit_8004);
#pragma pop

/* 804C103C-804C287C 004E9C 1840+00 2/2 0/0 0/0 .text            setAnm__9daMidna_cFv */
void daMidna_c::setAnm() {
    // NONMATCHING
}

/* 804C287C-804C2A68 0066DC 01EC+00 1/1 0/0 0/0 .text getNeckAimAngle__9daMidna_cFPC4cXyzPsPsPsPs
 */
void daMidna_c::getNeckAimAngle(cXyz const* param_0, s16* param_1, s16* param_2, s16* param_3,
                                    s16* param_4) {
    // NONMATCHING
}

/* 804C2A68-804C2AB8 0068C8 0050+00 2/2 0/0 0/0 .text            clearEyeMove__9daMidna_cFv */
void daMidna_c::clearEyeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804C69A8-804C69AC 0004E0 0004+00 0/1 0/0 0/0 .rodata          @8185 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8185 = 75.0f;
COMPILER_STRIP_GATE(0x804C69A8, &lit_8185);
#pragma pop

/* 804C69AC-804C69B0 0004E4 0004+00 0/1 0/0 0/0 .rodata          @8186 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_8186 = 0x39000000;
COMPILER_STRIP_GATE(0x804C69AC, &lit_8186);
#pragma pop

/* 804C69B0-804C69B4 0004E8 0004+00 0/1 0/0 0/0 .rodata          @8187 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8187 = 8.0f;
COMPILER_STRIP_GATE(0x804C69B0, &lit_8187);
#pragma pop

/* 804C69B4-804C69B8 0004EC 0004+00 0/1 0/0 0/0 .rodata          @8188 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8188 = -1.0f / 5.0f;
COMPILER_STRIP_GATE(0x804C69B4, &lit_8188);
#pragma pop

/* 804C69B8-804C69BC 0004F0 0004+00 0/1 0/0 0/0 .rodata          @8189 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8189 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x804C69B8, &lit_8189);
#pragma pop

/* 804C69BC-804C69C0 0004F4 0004+00 0/1 0/0 0/0 .rodata          @8190 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8190 = 3.0f / 100.0f;
COMPILER_STRIP_GATE(0x804C69BC, &lit_8190);
#pragma pop

/* 804C2AB8-804C2EBC 006918 0404+00 1/1 0/0 0/0 .text            setEyeMove__9daMidna_cFPC4cXyzss */
void daMidna_c::setEyeMove(cXyz const* param_0, s16 param_1, s16 param_2) {
    // NONMATCHING
}

/* 804C2EBC-804C3168 006D1C 02AC+00 1/1 0/0 0/0 .text            setNeckAngle__9daMidna_cFv */
void daMidna_c::setNeckAngle() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804C69C0-804C69CC 0004F8 000C+00 0/1 0/0 0/0 .rodata          localOffset$8274 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const localOffset[12] = {
    0x00, 0x00, 0x00, 0x00, 0x43, 0x08, 0x00, 0x00, 0xC0, 0x19, 0x99, 0x9A,
};
COMPILER_STRIP_GATE(0x804C69C0, &localOffset);
#pragma pop

/* 804C69CC-804C69D0 000504 0004+00 0/2 0/0 0/0 .rodata          @8304 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8304 = 28.0f;
COMPILER_STRIP_GATE(0x804C69CC, &lit_8304);
#pragma pop

/* 804C3168-804C3298 006FC8 0130+00 1/1 0/0 0/0 .text            initHairAngle__9daMidna_cFv */
void daMidna_c::initHairAngle() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804C69D0-804C69DC 000508 000C+00 0/1 0/0 0/0 .rodata          hairOffset$8310 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const hairOffset[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0xE0, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x804C69D0, &hairOffset);
#pragma pop

/* 804C69DC-804C69E0 000514 0004+00 0/1 0/0 0/0 .rodata          @8646 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8646 = 0.75f;
COMPILER_STRIP_GATE(0x804C69DC, &lit_8646);
#pragma pop

/* 804C69E0-804C69E4 000518 0004+00 0/1 0/0 0/0 .rodata          @8647 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8647 = 1.0f / 25.0f;
COMPILER_STRIP_GATE(0x804C69E0, &lit_8647);
#pragma pop

/* 804C69E4-804C69E8 00051C 0004+00 0/1 0/0 0/0 .rodata          @8648 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8648 = 2048.0f;
COMPILER_STRIP_GATE(0x804C69E4, &lit_8648);
#pragma pop

/* 804C69E8-804C69EC 000520 0004+00 0/1 0/0 0/0 .rodata          @8649 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8649 = 4096.0f;
COMPILER_STRIP_GATE(0x804C69E8, &lit_8649);
#pragma pop

/* 804C69EC-804C69F0 000524 0004+00 0/1 0/0 0/0 .rodata          @8650 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8650 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x804C69EC, &lit_8650);
#pragma pop

/* 804C69F0-804C69F4 000528 0004+00 0/1 0/0 0/0 .rodata          @8651 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_8651 = 0xBFDDB22D;
COMPILER_STRIP_GATE(0x804C69F0, &lit_8651);
#pragma pop

/* 804C69F4-804C69F8 00052C 0004+00 0/1 0/0 0/0 .rodata          @8652 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_8652 = 0xBF13CE53;
COMPILER_STRIP_GATE(0x804C69F4, &lit_8652);
#pragma pop

/* 804C3298-804C3F04 0070F8 0C6C+00 2/2 0/0 0/0 .text            setHairAngle__9daMidna_cFv */
void daMidna_c::setHairAngle() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804C6A60-804C6A60 000598 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_804C6C11 = "Midna";
SECTION_DEAD static char const* const stringBase_804C6C17 = "pos";
SECTION_DEAD static char const* const stringBase_804C6C1B = "speed";
SECTION_DEAD static char const* const stringBase_804C6C21 = "angle";
SECTION_DEAD static char const* const stringBase_804C6C27 = "npos";
SECTION_DEAD static char const* const stringBase_804C6C2C = "fprm0";
#pragma pop

/* 804C3F04-804C4394 007D64 0490+00 1/1 0/0 0/0 .text            setDemoData__9daMidna_cFv */
void daMidna_c::setDemoData() {
    // NONMATCHING
}

/* 804C4394-804C4444 0081F4 00B0+00 1/1 0/0 0/0 .text setSimpleBrk__9daMidna_cFP12J3DModelDataUs
 */
void daMidna_c::setSimpleBrk(J3DModelData* param_0, u16 param_1) {
    // NONMATCHING
}

/* 804C4444-804C44CC 0082A4 0088+00 1/1 0/0 0/0 .text setSimpleBtk__9daMidna_cFP12J3DModelDataUs
 */
void daMidna_c::setSimpleBtk(J3DModelData* param_0, u16 param_1) {
    // NONMATCHING
}

/* 804C44CC-804C4750 00832C 0284+00 1/1 0/0 0/0 .text            initMidnaModel__9daMidna_cFv */
void daMidna_c::initMidnaModel() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804C69F8-804C69FC 000530 0004+00 0/1 0/0 0/0 .rodata          @9021 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9021 = 700.0f;
COMPILER_STRIP_GATE(0x804C69F8, &lit_9021);
#pragma pop

/* 804C4750-804C49B8 0085B0 0268+00 2/2 0/0 0/0 .text            daMidna_searchNpc__FP10fopAc_ac_cPv
 */
static void daMidna_searchNpc(fopAc_ac_c* param_0, void* param_1) {
    // NONMATCHING
}

/* 804C49B8-804C4AE8 008818 0130+00 2/2 0/0 0/0 .text            setMidnaNoDrawFlg__9daMidna_cFv */
void daMidna_c::setMidnaNoDrawFlg() {
    // NONMATCHING
}

/* 804C4AE8-804C4B68 008948 0080+00 1/0 0/0 0/0 .text checkMetamorphoseEnableBase__9daMidna_cFv */
void daMidna_c::checkMetamorphoseEnableBase() {
    // NONMATCHING
}

/* 804C4B68-804C4BC0 0089C8 0058+00 1/1 0/0 0/0 .text            checkNoDrawState__9daMidna_cFv */
void daMidna_c::checkNoDrawState() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804C69FC-804C6A1C 000534 0020+00 0/1 0/0 0/0 .rodata          anmSoundLabel$9101 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const anmSoundLabel[32] = {
    0x00, 0x06, 0x00, 0xDE, 0x00, 0x06, 0x00, 0xDF, 0x00, 0x06, 0x00, 0xE9, 0x00, 0x06, 0x00, 0xEA,
    0x00, 0x06, 0x00, 0xEB, 0x00, 0x06, 0x00, 0xEC, 0x00, 0x06, 0x00, 0xE0, 0x00, 0x06, 0x00, 0xE1,
};
COMPILER_STRIP_GATE(0x804C69FC, &anmSoundLabel);
#pragma pop

/* 804C6A1C-804C6A20 000554 0004+00 0/1 0/0 0/0 .rodata          @9219 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9219 = 83.0f;
COMPILER_STRIP_GATE(0x804C6A1C, &lit_9219);
#pragma pop

/* 804C6A20-804C6A24 000558 0004+00 0/1 0/0 0/0 .rodata          @9220 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9220 = 99.0f;
COMPILER_STRIP_GATE(0x804C6A20, &lit_9220);
#pragma pop

/* 804C6A24-804C6A28 00055C 0004+00 0/1 0/0 0/0 .rodata          @9221 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9221 = 66.0f;
COMPILER_STRIP_GATE(0x804C6A24, &lit_9221);
#pragma pop

/* 804C6A28-804C6A2C 000560 0004+00 0/1 0/0 0/0 .rodata          @9222 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9222 = 11.0f;
COMPILER_STRIP_GATE(0x804C6A28, &lit_9222);
#pragma pop

/* 804C6A2C-804C6A30 000564 0004+00 0/1 0/0 0/0 .rodata          @9223 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9223 = 35.0f;
COMPILER_STRIP_GATE(0x804C6A2C, &lit_9223);
#pragma pop

/* 804C6A30-804C6A34 000568 0004+00 0/1 0/0 0/0 .rodata          @9224 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9224 = 67.0f;
COMPILER_STRIP_GATE(0x804C6A30, &lit_9224);
#pragma pop

/* 804C6A34-804C6A38 00056C 0004+00 0/1 0/0 0/0 .rodata          @9225 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9225 = 34.0f;
COMPILER_STRIP_GATE(0x804C6A34, &lit_9225);
#pragma pop

/* 804C4BC0-804C4FDC 008A20 041C+00 1/1 0/0 0/0 .text            setSound__9daMidna_cFv */
void daMidna_c::setSound() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804C6A38-804C6A44 000570 000C+00 0/1 0/0 0/0 .rodata          throughEffectJoint$9352 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const throughEffectJoint[12] = {
    0x00, 0x04, 0x00, 0x02, 0x00, 0x14, 0x00, 0x04, 0x00, 0x02, 0x00, 0x14,
};
COMPILER_STRIP_GATE(0x804C6A38, &throughEffectJoint);
#pragma pop

/* 804C6A44-804C6A50 00057C 000C+00 0/1 0/0 0/0 .rodata          throughEffectName$9353 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const throughEffectName[12] = {
    0x84, 0xDA, 0x84, 0xD9, 0x84, 0xDB, 0x84, 0xDD, 0x84, 0xDC, 0x84, 0xDE,
};
COMPILER_STRIP_GATE(0x804C6A44, &throughEffectName);
#pragma pop

/* 804C4FDC-804C59E8 008E3C 0A0C+00 1/1 0/0 0/0 .text            execute__9daMidna_cFv */
void daMidna_c::execute() {
    // NONMATCHING
}

/* 804C59E8-804C5A08 009848 0020+00 1/0 0/0 0/0 .text            daMidna_Execute__FP9daMidna_c */
static void daMidna_Execute(daMidna_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804C6A50-804C6A54 000588 0004+00 0/1 0/0 0/0 .rodata          @9812 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9812 = -32.0f;
COMPILER_STRIP_GATE(0x804C6A50, &lit_9812);
#pragma pop

/* 804C6A54-804C6A58 00058C 0004+00 0/1 0/0 0/0 .rodata          @9813 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9813 = 200.0f;
COMPILER_STRIP_GATE(0x804C6A54, &lit_9813);
#pragma pop

/* 804C6A58-804C6A5C 000590 0004+00 0/1 0/0 0/0 .rodata          @9814 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9814 = 600.0f;
COMPILER_STRIP_GATE(0x804C6A58, &lit_9814);
#pragma pop

/* 804C6A5C-804C6A60 000594 0004+00 0/1 0/0 0/0 .rodata          @9815 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9815 = 40.0f;
COMPILER_STRIP_GATE(0x804C6A5C, &lit_9815);
#pragma pop

/* 804C5A08-804C6184 009868 077C+00 1/1 0/0 0/0 .text            draw__9daMidna_cFv */
void daMidna_c::draw() {
    // NONMATCHING
}

/* 804C6184-804C61A4 009FE4 0020+00 1/0 0/0 0/0 .text            daMidna_Draw__FP9daMidna_c */
static void daMidna_Draw(daMidna_c* param_0) {
    // NONMATCHING
}

/* 804C61A4-804C6324 00A004 0180+00 1/1 0/0 0/0 .text            __dt__9daMidna_cFv */
daMidna_c::~daMidna_c() {
    // NONMATCHING
}

/* 804C6324-804C634C 00A184 0028+00 1/0 0/0 0/0 .text            daMidna_Delete__FP9daMidna_c */
static void daMidna_Delete(daMidna_c* param_0) {
    // NONMATCHING
}

/* 804C634C-804C637C 00A1AC 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 804C637C-804C6398 00A1DC 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<Uc>__FPUc */
extern "C" void func_804C637C(void* _this, u8* param_0) {
    // NONMATCHING
}

/* 804C6398-804C63E0 00A1F8 0048+00 1/0 0/0 0/0 .text            __dt__20daMidna_McaMorfCB1_cFv */
daMidna_McaMorfCB1_c::~daMidna_McaMorfCB1_c() {
    // NONMATCHING
}

/* 804C63E0-804C64C0 00A240 00E0+00 1/0 0/0 0/0 .text            __dt__16daMidna_matAnm_cFv */
daMidna_matAnm_c::~daMidna_matAnm_c() {
    // NONMATCHING
}

/* 804C6A60-804C6A60 000598 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */