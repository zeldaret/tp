/**
 * @file d_a_obj_scannon.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_scannon.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" static void eventCallBack__FPvi();
extern "C" static void daSCannon_c_createHeap__FP10fopAc_ac_c();
extern "C" void __ct__11daSCannon_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void __dt__11daSCannon_cFv();
extern "C" void create__11daSCannon_cFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void execute__11daSCannon_cFv();
extern "C" void draw__11daSCannon_cFv();
extern "C" void Delete__11daSCannon_cFv();
extern "C" void setModelMtx__11daSCannon_cFv();
extern "C" void setPtlModelMtx__11daSCannon_cFv();
extern "C" void createHeap__11daSCannon_cFv();
extern "C" void middleExe__11daSCannon_cFv();
extern "C" void orderEvtInit__11daSCannon_cFv();
extern "C" void exeModeWait__11daSCannon_cFv();
extern "C" void exeModeOrderEvt__11daSCannon_cFv();
extern "C" void exeModeActionEvt__11daSCannon_cFv();
extern "C" void exeModeEnd__11daSCannon_cFv();
extern "C" void demoExe__11daSCannon_cFv();
extern "C" void demoModeInit__11daSCannon_cFi();
extern "C" void demoInitLinkIn__11daSCannon_cFv();
extern "C" void demoExeLinkIn__11daSCannon_cFv();
extern "C" void demoInitSet__11daSCannon_cFv();
extern "C" void demoExeSet__11daSCannon_cFv();
extern "C" void demoInitMove__11daSCannon_cFv();
extern "C" void demoExeMove__11daSCannon_cFv();
extern "C" void demoInitFire__11daSCannon_cFv();
extern "C" void demoExeFire__11daSCannon_cFv();
extern "C" void demoInitFinish__11daSCannon_cFv();
extern "C" void demoExeFinish__11daSCannon_cFv();
extern "C" void demoInitWarpEndWait__11daSCannon_cFv();
extern "C" void demoExeWarpEndWait__11daSCannon_cFv();
extern "C" void demoInitWarpEndMove__11daSCannon_cFv();
extern "C" void demoExeWarpEndMove__11daSCannon_cFv();
extern "C" void changeScene__11daSCannon_cFv();
extern "C" void init__11daSCannon_cFv();
extern "C" void initEmtRt__11daSCannon_cFUsiPCUsPP14JPABaseEmitter();
extern "C" void exeEmtRt__11daSCannon_cFUsiPP14JPABaseEmitter();
extern "C" void initEmtLine__11daSCannon_cFv();
extern "C" void exeEmtLine__11daSCannon_cFv();
extern "C" void delEmtAll__11daSCannon_cFv();
extern "C" void setCannonRepair__11daSCannon_cFv();
extern "C" static void daSCannon_create__FP11daSCannon_c();
extern "C" static void daSCannon_Delete__FP11daSCannon_c();
extern "C" static void daSCannon_execute__FP11daSCannon_c();
extern "C" static void daSCannon_draw__FP11daSCannon_c();
extern "C" void func_80CC8F14(void* _this, int*);
extern "C" void __sinit_d_a_obj_scannon_cpp();
extern "C" static void func_80CC916C();
extern "C" static void func_80CC9174();
extern "C" void* const s_demoTable__11daSCannon_c[12];
extern "C" extern char const* const d_a_obj_scannon__stringBase0;
extern "C" u8 s_exeProc__11daSCannon_c[48];
extern "C" u8 s_demoExeProc_WarpEnd__11daSCannon_c[48];
extern "C" u8 s_demoExeProc_FireTks__11daSCannon_c[72];
extern "C" u8 s_demoExeProc_FireFirst__11daSCannon_c[24];
extern "C" u8 s_demoExeProc_FireSecond__11daSCannon_c[96];

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb();
extern "C" void entry__13mDoExt_bckAnmFP12J3DModelDataf();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs();
extern "C" void dStage_changeScene__FifUlScsi();
extern "C" void getLayerNo__14dComIfG_play_cFi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void onSwitch__12dSv_memBit_cFi();
extern "C" void offSwitch__12dSv_memBit_cFi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void setSkipProc__14dEvt_control_cFPvPFPvi_ii();
extern "C" void getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void StartQuake__12dVibration_cFii4cXyz();
extern "C" void StopQuake__12dVibration_cFi();
extern "C" void CheckQuake__12dVibration_cFv();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void Set__4cBgWFP6cBgD_tUlPA3_A4_f();
extern "C" void __ct__4dBgWFv();
extern "C" void dCam_getAngleY__FP12camera_class();
extern "C" void dCam_getAngleX__FP12camera_class();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __ct__13cBgS_PolyInfoFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void JPAGetXYZRotateMtx__FsssPA4_f();
extern "C" void func_802807E0();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void getName__10JUTNameTabCFUs();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey();
extern "C" void __ptmf_test();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern u8 const __ptmf_null[12 + 4 /* padding */];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* 80CC6A98-80CC6AEC 000078 0054+00 1/1 0/0 0/0 .text            eventCallBack__FPvi */
static void eventCallBack(void* param_0, int param_1) {
    // NONMATCHING
}

/* 80CC6AEC-80CC6B0C 0000CC 0020+00 1/1 0/0 0/0 .text daSCannon_c_createHeap__FP10fopAc_ac_c */
static void daSCannon_c_createHeap(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CC9224-80CC9224 00009C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CC9224 = "SkyCannon";
SECTION_DEAD static char const* const stringBase_80CC922E = "SCanHai";
SECTION_DEAD static char const* const stringBase_80CC9236 = "SCanZev";
SECTION_DEAD static char const* const stringBase_80CC923E = "SCanPtl";
SECTION_DEAD static char const* const stringBase_80CC9246 = "SCannon";
SECTION_DEAD static char const* const stringBase_80CC924E = "SKY_CANNON_WARP_END";
SECTION_DEAD static char const* const stringBase_80CC9262 = "SKY_CANNON_FIRE_FIRST";
SECTION_DEAD static char const* const stringBase_80CC9278 = "SKY_CANNON_FIRE_TKS";
SECTION_DEAD static char const* const stringBase_80CC928C = "SKY_CANNON_FIRE_SECOND";
SECTION_DEAD static char const* const stringBase_80CC92A3 = "head";
SECTION_DEAD static char const* const stringBase_80CC92A8 = "Ni_SkyCannon_crash";
SECTION_DEAD static char const* const stringBase_80CC92BB = "Tks";
SECTION_DEAD static char const* const stringBase_80CC92BF = "WAIT";
SECTION_DEAD static char const* const stringBase_80CC92C4 = "MOVE";
SECTION_DEAD static char const* const stringBase_80CC92C9 = "0001_WAIT";
SECTION_DEAD static char const* const stringBase_80CC92D3 = "0002_RUN";
SECTION_DEAD static char const* const stringBase_80CC92DC = "0003_JUMP";
SECTION_DEAD static char const* const stringBase_80CC92E6 = "LINK_IN";
SECTION_DEAD static char const* const stringBase_80CC92EE = "SET";
SECTION_DEAD static char const* const stringBase_80CC92F2 = "FIRE";
SECTION_DEAD static char const* const stringBase_80CC92F7 = "FINISH";
#pragma pop

/* 80CC9324-80CC9328 -00001 0004+00 0/3 0/0 0/0 .data            l_arcName_Comp */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_arcName_Comp = (void*)&d_a_obj_scannon__stringBase0;
#pragma pop

/* 80CC9328-80CC932C -00001 0004+00 0/3 0/0 0/0 .data            l_arcName_Crash */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_arcName_Crash = (void*)(((char*)&d_a_obj_scannon__stringBase0) + 0xA);
#pragma pop

/* 80CC932C-80CC9330 -00001 0004+00 1/3 0/0 0/0 .data            l_arcName_Zev */
SECTION_DATA static void* l_arcName_Zev = (void*)(((char*)&d_a_obj_scannon__stringBase0) + 0x12);

/* 80CC9330-80CC9334 -00001 0004+00 0/3 0/0 0/0 .data            l_arcName_Ptl */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_arcName_Ptl = (void*)(((char*)&d_a_obj_scannon__stringBase0) + 0x1A);
#pragma pop

/* 80CC9334-80CC9338 -00001 0004+00 1/1 0/0 0/0 .data            l_staffName */
SECTION_DATA static void* l_staffName = (void*)(((char*)&d_a_obj_scannon__stringBase0) + 0x22);

/* 80CC9338-80CC9348 -00001 0010+00 1/1 0/0 0/0 .data            l_eventName */
SECTION_DATA static void* l_eventName[4] = {
    (void*)(((char*)&d_a_obj_scannon__stringBase0) + 0x2A),
    (void*)(((char*)&d_a_obj_scannon__stringBase0) + 0x3E),
    (void*)(((char*)&d_a_obj_scannon__stringBase0) + 0x54),
    (void*)(((char*)&d_a_obj_scannon__stringBase0) + 0x68),
};

/* 80CC9348-80CC9354 -00001 000C+00 0/1 0/0 0/0 .data            @4249 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4249[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)exeModeWait__11daSCannon_cFv,
};
#pragma pop

/* 80CC9354-80CC9360 -00001 000C+00 0/1 0/0 0/0 .data            @4250 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4250[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)exeModeOrderEvt__11daSCannon_cFv,
};
#pragma pop

/* 80CC9360-80CC936C -00001 000C+00 0/1 0/0 0/0 .data            @4251 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4251[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)exeModeActionEvt__11daSCannon_cFv,
};
#pragma pop

/* 80CC936C-80CC9378 -00001 000C+00 0/1 0/0 0/0 .data            @4252 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4252[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)exeModeEnd__11daSCannon_cFv,
};
#pragma pop

/* 80CC9378-80CC93A8 000074 0030+00 1/2 0/0 0/0 .data            s_exeProc__11daSCannon_c */
SECTION_DATA u8 daSCannon_c::s_exeProc[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80CC93A8-80CC93B0 -00001 0008+00 1/0 0/0 0/0 .data            CUT_TYPE_TABLE_WARP_END */
SECTION_DATA static void* CUT_TYPE_TABLE_WARP_END[2] = {
    (void*)(((char*)&d_a_obj_scannon__stringBase0) + 0x9B),
    (void*)(((char*)&d_a_obj_scannon__stringBase0) + 0xA0),
};

/* 80CC93B0-80CC93BC -00001 000C+00 1/0 0/0 0/0 .data            CUT_TYPE_TABLE_FIRE_TKS */
SECTION_DATA static void* CUT_TYPE_TABLE_FIRE_TKS[3] = {
    (void*)(((char*)&d_a_obj_scannon__stringBase0) + 0xA5),
    (void*)(((char*)&d_a_obj_scannon__stringBase0) + 0xAF),
    (void*)(((char*)&d_a_obj_scannon__stringBase0) + 0xB8),
};

/* 80CC93BC-80CC93C0 -00001 0004+00 1/0 0/0 0/0 .data            CUT_TYPE_TABLE_FIRE_FIRST */
SECTION_DATA static void* CUT_TYPE_TABLE_FIRE_FIRST =
    (void*)(((char*)&d_a_obj_scannon__stringBase0) + 0xC2);

/* 80CC93C0-80CC93D0 -00001 0010+00 1/0 0/0 0/0 .data            CUT_TYPE_TABLE_FIRE_SECOND */
SECTION_DATA static void* CUT_TYPE_TABLE_FIRE_SECOND[4] = {
    (void*)(((char*)&d_a_obj_scannon__stringBase0) + 0xCA),
    (void*)(((char*)&d_a_obj_scannon__stringBase0) + 0xA0),
    (void*)(((char*)&d_a_obj_scannon__stringBase0) + 0xCE),
    (void*)(((char*)&d_a_obj_scannon__stringBase0) + 0xD3),
};

/* 80CC93D0-80CC93DC -00001 000C+00 0/1 0/0 0/0 .data            @4406 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4406[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoInitWarpEndWait__11daSCannon_cFv,
};
#pragma pop

/* 80CC93DC-80CC93E8 -00001 000C+00 0/1 0/0 0/0 .data            @4407 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4407[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoExeWarpEndWait__11daSCannon_cFv,
};
#pragma pop

/* 80CC93E8-80CC93F4 -00001 000C+00 0/1 0/0 0/0 .data            @4408 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4408[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoInitWarpEndMove__11daSCannon_cFv,
};
#pragma pop

/* 80CC93F4-80CC9400 -00001 000C+00 0/1 0/0 0/0 .data            @4409 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4409[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoExeWarpEndMove__11daSCannon_cFv,
};
#pragma pop

/* 80CC9400-80CC9430 0000FC 0030+00 1/1 0/0 0/0 .data s_demoExeProc_WarpEnd__11daSCannon_c */
SECTION_DATA u8 daSCannon_c::s_demoExeProc_WarpEnd[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80CC9430-80CC9478 00012C 0048+00 1/1 0/0 0/0 .data s_demoExeProc_FireTks__11daSCannon_c */
SECTION_DATA u8 daSCannon_c::s_demoExeProc_FireTks[72] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80CC9478-80CC9484 -00001 000C+00 0/1 0/0 0/0 .data            @4410 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4410[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoInitLinkIn__11daSCannon_cFv,
};
#pragma pop

/* 80CC9484-80CC9490 -00001 000C+00 0/1 0/0 0/0 .data            @4411 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4411[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoExeLinkIn__11daSCannon_cFv,
};
#pragma pop

/* 80CC9490-80CC94A8 00018C 0018+00 1/1 0/0 0/0 .data s_demoExeProc_FireFirst__11daSCannon_c */
SECTION_DATA u8 daSCannon_c::s_demoExeProc_FireFirst[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80CC94A8-80CC94B4 -00001 000C+00 0/1 0/0 0/0 .data            @4412 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4412[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoInitSet__11daSCannon_cFv,
};
#pragma pop

/* 80CC94B4-80CC94C0 -00001 000C+00 0/1 0/0 0/0 .data            @4413 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4413[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoExeSet__11daSCannon_cFv,
};
#pragma pop

/* 80CC94C0-80CC94CC -00001 000C+00 0/1 0/0 0/0 .data            @4414 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4414[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoInitMove__11daSCannon_cFv,
};
#pragma pop

/* 80CC94CC-80CC94D8 -00001 000C+00 0/1 0/0 0/0 .data            @4415 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4415[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoExeMove__11daSCannon_cFv,
};
#pragma pop

/* 80CC94D8-80CC94E4 -00001 000C+00 0/1 0/0 0/0 .data            @4416 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4416[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoInitFire__11daSCannon_cFv,
};
#pragma pop

/* 80CC94E4-80CC94F0 -00001 000C+00 0/1 0/0 0/0 .data            @4417 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4417[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoExeFire__11daSCannon_cFv,
};
#pragma pop

/* 80CC94F0-80CC94FC -00001 000C+00 0/1 0/0 0/0 .data            @4418 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4418[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoInitFinish__11daSCannon_cFv,
};
#pragma pop

/* 80CC94FC-80CC9508 -00001 000C+00 0/1 0/0 0/0 .data            @4419 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4419[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoExeFinish__11daSCannon_cFv,
};
#pragma pop

/* 80CC9508-80CC9568 000204 0060+00 1/1 0/0 0/0 .data s_demoExeProc_FireSecond__11daSCannon_c */
SECTION_DATA u8 daSCannon_c::s_demoExeProc_FireSecond[96] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80CC9568-80CC9588 -00001 0020+00 1/0 0/0 0/0 .data            daSCannon_METHODS */
static actor_method_class daSCannon_METHODS = {
    (process_method_func)daSCannon_create__FP11daSCannon_c,
    (process_method_func)daSCannon_Delete__FP11daSCannon_c,
    (process_method_func)daSCannon_execute__FP11daSCannon_c,
    0,
    (process_method_func)daSCannon_draw__FP11daSCannon_c,
};

/* 80CC9588-80CC95B8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_SCannon */
extern actor_process_profile_definition g_profile_Obj_SCannon = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_SCannon,       // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daSCannon_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  734,                    // mPriority
  &daSCannon_METHODS,     // sub_method
  0x00044180,             // mStatus
  fopAc_ENV_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80CC95B8-80CC95C4 0002B4 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80CC95C4-80CC95E8 0002C0 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80CC9174,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80CC916C,
};

/* 80CC95E8-80CC95F4 0002E4 000C+00 2/2 0/0 0/0 .data            __vt__11daSCannon_c */
SECTION_DATA extern void* __vt__11daSCannon_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__11daSCannon_cFv,
};

/* 80CC95F4-80CC9600 0002F0 000C+00 4/4 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80CC6B0C-80CC6BC8 0000EC 00BC+00 2/2 0/0 0/0 .text            __ct__11daSCannon_cFv */
daSCannon_c::daSCannon_c() {
    // NONMATCHING
}

/* 80CC6BC8-80CC6C10 0001A8 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80CC6C10-80CC6D10 0001F0 0100+00 1/0 0/0 0/0 .text            __dt__11daSCannon_cFv */
daSCannon_c::~daSCannon_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CC9188-80CC9194 000000 000C+00 11/11 0/0 0/0 .rodata          TKS_SET_POS */
SECTION_RODATA static u8 const TKS_SET_POS[12] = {
    0xC7, 0xC0, 0x5D, 0x9D, 0xC6, 0x8F, 0x55, 0x96, 0x47, 0x4B, 0x59, 0x28,
};
COMPILER_STRIP_GATE(0x80CC9188, &TKS_SET_POS);

/* 80CC9194-80CC919C 00000C 0006+02 0/1 0/0 0/0 .rodata          SMK_PARTICLE_NAME */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const SMK_PARTICLE_NAME[6 + 2 /* padding */] = {
    0x89,
    0xD9,
    0x89,
    0xDA,
    0x89,
    0xDB,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80CC9194, &SMK_PARTICLE_NAME);
#pragma pop

/* 80CC919C-80CC91A4 000014 0006+02 0/1 0/0 0/0 .rodata          APP_PARTICLE_NAME */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const APP_PARTICLE_NAME[6 + 2 /* padding */] = {
    0x8B,
    0x28,
    0x8B,
    0x29,
    0x8B,
    0x2A,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80CC919C, &APP_PARTICLE_NAME);
#pragma pop

/* 80CC91A4-80CC91A8 00001C 0004+00 0/1 0/0 0/0 .rodata          @3992 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3992 = 5.0f;
COMPILER_STRIP_GATE(0x80CC91A4, &lit_3992);
#pragma pop

/* 80CC91A8-80CC91AC 000020 0004+00 0/1 0/0 0/0 .rodata          @3993 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3993 = 500.0f;
COMPILER_STRIP_GATE(0x80CC91A8, &lit_3993);
#pragma pop

/* 80CC91AC-80CC91B0 000024 0004+00 4/11 0/0 0/0 .rodata          @3994 */
SECTION_RODATA static u8 const lit_3994[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80CC91AC, &lit_3994);

/* 80CC91B0-80CC91B4 000028 0004+00 0/1 0/0 0/0 .rodata          @3995 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3995 = 10.0f;
COMPILER_STRIP_GATE(0x80CC91B0, &lit_3995);
#pragma pop

/* 80CC6D10-80CC7124 0002F0 0414+00 1/1 0/0 0/0 .text            create__11daSCannon_cFv */
void daSCannon_c::create() {
    // NONMATCHING
}

/* 80CC7124-80CC7194 000704 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80CC7194-80CC7204 000774 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80CC7204-80CC7228 0007E4 0024+00 2/2 0/0 0/0 .text            execute__11daSCannon_cFv */
void daSCannon_c::execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CC91B4-80CC91B8 00002C 0004+00 0/1 0/0 0/0 .rodata          @4113 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4113 = 2500.0f;
COMPILER_STRIP_GATE(0x80CC91B4, &lit_4113);
#pragma pop

/* 80CC91B8-80CC91BC 000030 0004+00 4/12 0/0 0/0 .rodata          @4114 */
SECTION_RODATA static f32 const lit_4114 = 1.0f;
COMPILER_STRIP_GATE(0x80CC91B8, &lit_4114);

/* 80CC7228-80CC747C 000808 0254+00 1/1 0/0 0/0 .text            draw__11daSCannon_cFv */
void daSCannon_c::draw() {
    // NONMATCHING
}

/* 80CC747C-80CC7508 000A5C 008C+00 1/1 0/0 0/0 .text            Delete__11daSCannon_cFv */
void daSCannon_c::Delete() {
    // NONMATCHING
}

/* 80CC7508-80CC7578 000AE8 0070+00 3/3 0/0 0/0 .text            setModelMtx__11daSCannon_cFv */
void daSCannon_c::setModelMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CC91BC-80CC91C0 000034 0004+00 1/1 0/0 0/0 .rodata          @4157 */
SECTION_RODATA static f32 const lit_4157 = 1800.0f;
COMPILER_STRIP_GATE(0x80CC91BC, &lit_4157);

/* 80CC91C0-80CC91C4 000038 0004+00 1/1 0/0 0/0 .rodata          @4158 */
SECTION_RODATA static f32 const lit_4158 = 4.0f;
COMPILER_STRIP_GATE(0x80CC91C0, &lit_4158);

/* 80CC7578-80CC7608 000B58 0090+00 1/1 0/0 0/0 .text            setPtlModelMtx__11daSCannon_cFv */
void daSCannon_c::setPtlModelMtx() {
    // NONMATCHING
}

/* 80CC7608-80CC7970 000BE8 0368+00 1/1 0/0 0/0 .text            createHeap__11daSCannon_cFv */
void daSCannon_c::createHeap() {
    // NONMATCHING
}

/* 80CC7970-80CC7A10 000F50 00A0+00 1/1 0/0 0/0 .text            middleExe__11daSCannon_cFv */
void daSCannon_c::middleExe() {
    // NONMATCHING
}

/* 80CC7A10-80CC7AB8 000FF0 00A8+00 1/1 0/0 0/0 .text            orderEvtInit__11daSCannon_cFv */
void daSCannon_c::orderEvtInit() {
    // NONMATCHING
}

/* 80CC7AB8-80CC7C48 001098 0190+00 1/0 0/0 0/0 .text            exeModeWait__11daSCannon_cFv */
void daSCannon_c::exeModeWait() {
    // NONMATCHING
}

/* 80CC7C48-80CC7D14 001228 00CC+00 1/0 0/0 0/0 .text            exeModeOrderEvt__11daSCannon_cFv */
void daSCannon_c::exeModeOrderEvt() {
    // NONMATCHING
}

/* 80CC7D14-80CC7EBC 0012F4 01A8+00 1/0 0/0 0/0 .text            exeModeActionEvt__11daSCannon_cFv
 */
void daSCannon_c::exeModeActionEvt() {
    // NONMATCHING
}

/* 80CC7EBC-80CC7EC0 00149C 0004+00 1/0 0/0 0/0 .text            exeModeEnd__11daSCannon_cFv */
void daSCannon_c::exeModeEnd() {
    /* empty function */
}

/* ############################################################################################## */
/* 80CC93A8-80CC93B0 -00001 0008+00 1/0 0/0 0/0 .data            CUT_TYPE_TABLE_WARP_END */
extern "C" void* CUT_TYPE_TABLE_WARP_END[2];

/* 80CC93B0-80CC93BC -00001 000C+00 1/0 0/0 0/0 .data            CUT_TYPE_TABLE_FIRE_TKS */
extern "C" void* CUT_TYPE_TABLE_FIRE_TKS[3];

/* 80CC93BC-80CC93C0 -00001 0004+00 1/0 0/0 0/0 .data            CUT_TYPE_TABLE_FIRE_FIRST */
extern "C" void* CUT_TYPE_TABLE_FIRE_FIRST;

/* 80CC93C0-80CC93D0 -00001 0010+00 1/0 0/0 0/0 .data            CUT_TYPE_TABLE_FIRE_SECOND */
extern "C" void* CUT_TYPE_TABLE_FIRE_SECOND[4];

/* 80CC9400-80CC9430 0000FC 0030+00 1/1 0/0 0/0 .data s_demoExeProc_WarpEnd__11daSCannon_c */
extern "C" u8 s_demoExeProc_WarpEnd__11daSCannon_c[48];

/* 80CC9430-80CC9478 00012C 0048+00 1/1 0/0 0/0 .data s_demoExeProc_FireTks__11daSCannon_c */
extern "C" u8 s_demoExeProc_FireTks__11daSCannon_c[72];

/* 80CC9490-80CC94A8 00018C 0018+00 1/1 0/0 0/0 .data s_demoExeProc_FireFirst__11daSCannon_c */
extern "C" u8 s_demoExeProc_FireFirst__11daSCannon_c[24];

/* 80CC9508-80CC9568 000204 0060+00 1/1 0/0 0/0 .data s_demoExeProc_FireSecond__11daSCannon_c */
extern "C" u8 s_demoExeProc_FireSecond__11daSCannon_c[96];

/* 80CC91C4-80CC91F4 -00001 0030+00 2/2 0/0 0/0 .rodata          s_demoTable__11daSCannon_c */
SECTION_RODATA void* const daSCannon_c::s_demoTable[12] = {
    (void*)&daSCannon_c::s_demoExeProc_WarpEnd,
    (void*)&CUT_TYPE_TABLE_WARP_END,
    (void*)0x00000002,
    (void*)&daSCannon_c::s_demoExeProc_FireFirst,
    (void*)&CUT_TYPE_TABLE_FIRE_FIRST,
    (void*)0x00000001,
    (void*)&daSCannon_c::s_demoExeProc_FireTks,
    (void*)&CUT_TYPE_TABLE_FIRE_TKS,
    (void*)0x00000003,
    (void*)&daSCannon_c::s_demoExeProc_FireSecond,
    (void*)&CUT_TYPE_TABLE_FIRE_SECOND,
    (void*)0x00000004,
};
COMPILER_STRIP_GATE(0x80CC91C4, &daSCannon_c::s_demoTable);

/* 80CC7EC0-80CC7FAC 0014A0 00EC+00 1/1 0/0 0/0 .text            demoExe__11daSCannon_cFv */
void daSCannon_c::demoExe() {
    // NONMATCHING
}

/* 80CC7FAC-80CC8044 00158C 0098+00 2/2 0/0 0/0 .text            demoModeInit__11daSCannon_cFi */
void daSCannon_c::demoModeInit(int param_0) {
    // NONMATCHING
}

/* 80CC8044-80CC8048 001624 0004+00 1/0 0/0 0/0 .text            demoInitLinkIn__11daSCannon_cFv */
void daSCannon_c::demoInitLinkIn() {
    /* empty function */
}

/* ############################################################################################## */
/* 80CC91F4-80CC91F8 00006C 0004+00 0/1 0/0 0/0 .rodata          @4476 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4476 = 0xC7C758B8;
COMPILER_STRIP_GATE(0x80CC91F4, &lit_4476);
#pragma pop

/* 80CC91F8-80CC91FC 000070 0004+00 0/1 0/0 0/0 .rodata          @4477 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4477 = 0xC68C6BC9;
COMPILER_STRIP_GATE(0x80CC91F8, &lit_4477);
#pragma pop

/* 80CC91FC-80CC9200 000074 0004+00 0/1 0/0 0/0 .rodata          @4478 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4478 = 0x4752DDA4;
COMPILER_STRIP_GATE(0x80CC91FC, &lit_4478);
#pragma pop

/* 80CC8048-80CC8108 001628 00C0+00 1/0 0/0 0/0 .text            demoExeLinkIn__11daSCannon_cFv */
void daSCannon_c::demoExeLinkIn() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CC9200-80CC9204 000078 0004+00 0/4 0/0 0/0 .rodata          @4499 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4499 = -1.0f;
COMPILER_STRIP_GATE(0x80CC9200, &lit_4499);
#pragma pop

/* 80CC8108-80CC81DC 0016E8 00D4+00 1/0 0/0 0/0 .text            demoInitSet__11daSCannon_cFv */
void daSCannon_c::demoInitSet() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CC9204-80CC9208 00007C 0004+00 0/1 0/0 0/0 .rodata          @4515 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4515 = 84.0f;
COMPILER_STRIP_GATE(0x80CC9204, &lit_4515);
#pragma pop

/* 80CC81DC-80CC8274 0017BC 0098+00 1/0 0/0 0/0 .text            demoExeSet__11daSCannon_cFv */
void daSCannon_c::demoExeSet() {
    // NONMATCHING
}

/* 80CC8274-80CC8278 001854 0004+00 1/0 0/0 0/0 .text            demoInitMove__11daSCannon_cFv */
void daSCannon_c::demoInitMove() {
    /* empty function */
}

/* ############################################################################################## */
/* 80CC9208-80CC920C 000080 0004+00 0/1 0/0 0/0 .rodata          @4545 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4545 = 104.0f;
COMPILER_STRIP_GATE(0x80CC9208, &lit_4545);
#pragma pop

/* 80CC920C-80CC9210 000084 0004+00 0/1 0/0 0/0 .rodata          @4546 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4546 = 120.0f;
COMPILER_STRIP_GATE(0x80CC920C, &lit_4546);
#pragma pop

/* 80CC9210-80CC9214 000088 0004+00 0/1 0/0 0/0 .rodata          @4547 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4547 = 130.0f;
COMPILER_STRIP_GATE(0x80CC9210, &lit_4547);
#pragma pop

/* 80CC8278-80CC8378 001858 0100+00 1/0 0/0 0/0 .text            demoExeMove__11daSCannon_cFv */
void daSCannon_c::demoExeMove() {
    // NONMATCHING
}

/* 80CC8378-80CC83CC 001958 0054+00 1/0 0/0 0/0 .text            demoInitFire__11daSCannon_cFv */
void daSCannon_c::demoInitFire() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CC9214-80CC9218 00008C 0004+00 1/1 0/0 0/0 .rodata          @4566 */
SECTION_RODATA static f32 const lit_4566 = 235.0f;
COMPILER_STRIP_GATE(0x80CC9214, &lit_4566);

/* 80CC83CC-80CC8430 0019AC 0064+00 1/0 0/0 0/0 .text            demoExeFire__11daSCannon_cFv */
void daSCannon_c::demoExeFire() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CC9224-80CC9224 00009C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CC92FE = "Timer";
#pragma pop

/* 80CC8430-80CC8538 001A10 0108+00 1/0 0/0 0/0 .text            demoInitFinish__11daSCannon_cFv */
void daSCannon_c::demoInitFinish() {
    // NONMATCHING
}

/* 80CC8538-80CC8648 001B18 0110+00 1/0 0/0 0/0 .text            demoExeFinish__11daSCannon_cFv */
void daSCannon_c::demoExeFinish() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CC9218-80CC921C 000090 0004+00 0/1 0/0 0/0 .rodata          @4642 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4642 = 0xC7C731DA;
COMPILER_STRIP_GATE(0x80CC9218, &lit_4642);
#pragma pop

/* 80CC921C-80CC9220 000094 0004+00 0/1 0/0 0/0 .rodata          @4643 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4643 = -18470.0f;
COMPILER_STRIP_GATE(0x80CC921C, &lit_4643);
#pragma pop

/* 80CC9220-80CC9224 000098 0004+00 0/1 0/0 0/0 .rodata          @4644 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4644 = 0x475A37D0;
COMPILER_STRIP_GATE(0x80CC9220, &lit_4644);
#pragma pop

/* 80CC8648-80CC8714 001C28 00CC+00 1/0 0/0 0/0 .text demoInitWarpEndWait__11daSCannon_cFv */
void daSCannon_c::demoInitWarpEndWait() {
    // NONMATCHING
}

/* 80CC8714-80CC8804 001CF4 00F0+00 1/0 0/0 0/0 .text            demoExeWarpEndWait__11daSCannon_cFv
 */
void daSCannon_c::demoExeWarpEndWait() {
    // NONMATCHING
}

/* 80CC8804-80CC8818 001DE4 0014+00 1/0 0/0 0/0 .text demoInitWarpEndMove__11daSCannon_cFv */
void daSCannon_c::demoInitWarpEndMove() {
    // NONMATCHING
}

/* 80CC8818-80CC88A8 001DF8 0090+00 1/0 0/0 0/0 .text            demoExeWarpEndMove__11daSCannon_cFv
 */
void daSCannon_c::demoExeWarpEndMove() {
    // NONMATCHING
}

/* 80CC88A8-80CC8998 001E88 00F0+00 2/2 0/0 0/0 .text            changeScene__11daSCannon_cFv */
void daSCannon_c::changeScene() {
    // NONMATCHING
}

/* 80CC8998-80CC8A30 001F78 0098+00 1/1 0/0 0/0 .text            init__11daSCannon_cFv */
void daSCannon_c::init() {
    // NONMATCHING
}

/* 80CC8A30-80CC8B60 002010 0130+00 2/2 0/0 0/0 .text
 * initEmtRt__11daSCannon_cFUsiPCUsPP14JPABaseEmitter           */
void daSCannon_c::initEmtRt(u16 param_0, int param_1, u16 const* param_2,
                                JPABaseEmitter** param_3) {
    // NONMATCHING
}

/* 80CC8B60-80CC8BF4 002140 0094+00 6/6 0/0 0/0 .text
 * exeEmtRt__11daSCannon_cFUsiPP14JPABaseEmitter                */
void daSCannon_c::exeEmtRt(u16 param_0, int param_1, JPABaseEmitter** param_2) {
    // NONMATCHING
}

/* 80CC8BF4-80CC8CDC 0021D4 00E8+00 1/1 0/0 0/0 .text            initEmtLine__11daSCannon_cFv */
void daSCannon_c::initEmtLine() {
    // NONMATCHING
}

/* 80CC8CDC-80CC8DA0 0022BC 00C4+00 1/1 0/0 0/0 .text            exeEmtLine__11daSCannon_cFv */
void daSCannon_c::exeEmtLine() {
    // NONMATCHING
}

/* 80CC8DA0-80CC8DDC 002380 003C+00 1/1 0/0 0/0 .text            delEmtAll__11daSCannon_cFv */
void daSCannon_c::delEmtAll() {
    // NONMATCHING
}

/* 80CC8DDC-80CC8E60 0023BC 0084+00 0/0 0/0 1/1 .text            setCannonRepair__11daSCannon_cFv */
void daSCannon_c::setCannonRepair() {
    // NONMATCHING
}

/* 80CC8E60-80CC8EB4 002440 0054+00 1/0 0/0 0/0 .text            daSCannon_create__FP11daSCannon_c
 */
static void daSCannon_create(daSCannon_c* param_0) {
    // NONMATCHING
}

/* 80CC8EB4-80CC8ED4 002494 0020+00 1/0 0/0 0/0 .text            daSCannon_Delete__FP11daSCannon_c
 */
static void daSCannon_Delete(daSCannon_c* param_0) {
    // NONMATCHING
}

/* 80CC8ED4-80CC8EF4 0024B4 0020+00 1/0 0/0 0/0 .text            daSCannon_execute__FP11daSCannon_c
 */
static void daSCannon_execute(daSCannon_c* param_0) {
    // NONMATCHING
}

/* 80CC8EF4-80CC8F14 0024D4 0020+00 1/0 0/0 0/0 .text            daSCannon_draw__FP11daSCannon_c */
static void daSCannon_draw(daSCannon_c* param_0) {
    // NONMATCHING
}

/* 80CC8F14-80CC8F30 0024F4 001C+00 2/2 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_80CC8F14(void* _this, int* param_0) {
    // NONMATCHING
}

/* 80CC8F30-80CC916C 002510 023C+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_scannon_cpp */
void __sinit_d_a_obj_scannon_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80CC8F30, __sinit_d_a_obj_scannon_cpp);
#pragma pop

/* 80CC916C-80CC9174 00274C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80CC916C() {
    // NONMATCHING
}

/* 80CC9174-80CC917C 002754 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80CC9174() {
    // NONMATCHING
}

/* 80CC9224-80CC9224 00009C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
