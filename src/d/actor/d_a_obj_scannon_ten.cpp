/**
 * @file d_a_obj_scannon_ten.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_scannon_ten.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" static void eventCallBack__FPvi();
extern "C" static void daObjSCannonTen_c_createHeap__FP10fopAc_ac_c();
extern "C" void __ct__17daObjSCannonTen_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void __dt__17daObjSCannonTen_cFv();
extern "C" void createHeap__17daObjSCannonTen_cFv();
extern "C" void create__17daObjSCannonTen_cFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void Delete__17daObjSCannonTen_cFv();
extern "C" void draw__17daObjSCannonTen_cFv();
extern "C" void execute__17daObjSCannonTen_cFv();
extern "C" void middleExe__17daObjSCannonTen_cFv();
extern "C" void exeModeWait__17daObjSCannonTen_cFv();
extern "C" void exeModeOrderEvt__17daObjSCannonTen_cFv();
extern "C" void exeModeActionEvt__17daObjSCannonTen_cFv();
extern "C" void exeModeEnd__17daObjSCannonTen_cFv();
extern "C" void demoExe__17daObjSCannonTen_cFv();
extern "C" void demoModeInit__17daObjSCannonTen_cFi();
extern "C" void demoInitLinkIn__17daObjSCannonTen_cFv();
extern "C" void demoExeLinkIn__17daObjSCannonTen_cFv();
extern "C" void demoInitSet__17daObjSCannonTen_cFv();
extern "C" void demoExeSet__17daObjSCannonTen_cFv();
extern "C" void demoInitMove__17daObjSCannonTen_cFv();
extern "C" void demoExeMove__17daObjSCannonTen_cFv();
extern "C" void demoInitFire__17daObjSCannonTen_cFv();
extern "C" void demoExeFire__17daObjSCannonTen_cFv();
extern "C" void demoInitFireEnd__17daObjSCannonTen_cFv();
extern "C" void demoExeFireEnd__17daObjSCannonTen_cFv();
extern "C" void demoInitFinish__17daObjSCannonTen_cFv();
extern "C" void demoExeFinish__17daObjSCannonTen_cFv();
extern "C" void init__17daObjSCannonTen_cFv();
extern "C" void setModelMtx__17daObjSCannonTen_cFv();
extern "C" void changeScene__17daObjSCannonTen_cFv();
extern "C" void initEmtSmoke__17daObjSCannonTen_cFv();
extern "C" void exeEmtSmoke__17daObjSCannonTen_cFv();
extern "C" void initEmtLine__17daObjSCannonTen_cFv();
extern "C" void exeEmtLine__17daObjSCannonTen_cFv();
extern "C" void delEmtAll__17daObjSCannonTen_cFv();
extern "C" static void daObjSCannonTen_create__FP17daObjSCannonTen_c();
extern "C" static void daObjSCannonTen_Delete__FP17daObjSCannonTen_c();
extern "C" static void daObjSCannonTen_execute__FP17daObjSCannonTen_c();
extern "C" static void daObjSCannonTen_draw__FP17daObjSCannonTen_c();
extern "C" void func_80CCCA6C(void* _this, int*);
extern "C" void __sinit_d_a_obj_scannon_ten_cpp();
extern "C" static void func_80CCCC1C();
extern "C" static void func_80CCCC24();
extern "C" extern char const* const d_a_obj_scannon_ten__stringBase0;
extern "C" u8 s_exeProc__17daObjSCannonTen_c[48];
extern "C" u8 s_demoExeProc__17daObjSCannonTen_c[144];

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb();
extern "C" void entry__13mDoExt_bckAnmFP12J3DModelDataf();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs();
extern "C" void dStage_changeScene__FifUlScsi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
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
extern "C" void __ptmf_test();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* 80CCB318-80CCB344 000078 002C+00 1/1 0/0 0/0 .text            eventCallBack__FPvi */
static void eventCallBack(void* param_0, int param_1) {
    // NONMATCHING
}

/* 80CCB344-80CCB364 0000A4 0020+00 1/1 0/0 0/0 .text daObjSCannonTen_c_createHeap__FP10fopAc_ac_c
 */
static void daObjSCannonTen_c_createHeap(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CCCC80-80CCCC80 000048 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CCCC80 = "SCanTen";
SECTION_DEAD static char const* const stringBase_80CCCC88 = "SKY_CANNON_TEN_FIRE";
SECTION_DEAD static char const* const stringBase_80CCCC9C = "head";
SECTION_DEAD static char const* const stringBase_80CCCCA1 = "LINK_IN";
SECTION_DEAD static char const* const stringBase_80CCCCA9 = "SET";
SECTION_DEAD static char const* const stringBase_80CCCCAD = "MOVE";
SECTION_DEAD static char const* const stringBase_80CCCCB2 = "FIRE";
SECTION_DEAD static char const* const stringBase_80CCCCB7 = "FIRE_END";
SECTION_DEAD static char const* const stringBase_80CCCCC0 = "FINISH";
#pragma pop

/* 80CCCCF0-80CCCCF4 -00001 0004+00 4/4 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_scannon_ten__stringBase0;

/* 80CCCCF4-80CCCCF8 -00001 0004+00 1/1 0/0 0/0 .data            l_staffName */
SECTION_DATA static void* l_staffName = (void*)&d_a_obj_scannon_ten__stringBase0;

/* 80CCCCF8-80CCCCFC -00001 0004+00 1/1 0/0 0/0 .data            l_eventName */
SECTION_DATA static void* l_eventName = (void*)(((char*)&d_a_obj_scannon_ten__stringBase0) + 0x8);

/* 80CCCCFC-80CCCD08 -00001 000C+00 0/1 0/0 0/0 .data            @3994 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3994[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)exeModeWait__17daObjSCannonTen_cFv,
};
#pragma pop

/* 80CCCD08-80CCCD14 -00001 000C+00 0/1 0/0 0/0 .data            @3995 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3995[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)exeModeOrderEvt__17daObjSCannonTen_cFv,
};
#pragma pop

/* 80CCCD14-80CCCD20 -00001 000C+00 0/1 0/0 0/0 .data            @3996 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3996[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)exeModeActionEvt__17daObjSCannonTen_cFv,
};
#pragma pop

/* 80CCCD20-80CCCD2C -00001 000C+00 0/1 0/0 0/0 .data            @3997 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3997[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)exeModeEnd__17daObjSCannonTen_cFv,
};
#pragma pop

/* 80CCCD2C-80CCCD5C 00005C 0030+00 1/2 0/0 0/0 .data            s_exeProc__17daObjSCannonTen_c */
SECTION_DATA u8 daObjSCannonTen_c::s_exeProc[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80CCCD5C-80CCCD68 -00001 000C+00 0/1 0/0 0/0 .data            @4043 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4043[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoInitLinkIn__17daObjSCannonTen_cFv,
};
#pragma pop

/* 80CCCD68-80CCCD74 -00001 000C+00 0/1 0/0 0/0 .data            @4044 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4044[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoExeLinkIn__17daObjSCannonTen_cFv,
};
#pragma pop

/* 80CCCD74-80CCCD80 -00001 000C+00 0/1 0/0 0/0 .data            @4045 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4045[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoInitSet__17daObjSCannonTen_cFv,
};
#pragma pop

/* 80CCCD80-80CCCD8C -00001 000C+00 0/1 0/0 0/0 .data            @4046 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4046[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoExeSet__17daObjSCannonTen_cFv,
};
#pragma pop

/* 80CCCD8C-80CCCD98 -00001 000C+00 0/1 0/0 0/0 .data            @4047 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4047[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoInitMove__17daObjSCannonTen_cFv,
};
#pragma pop

/* 80CCCD98-80CCCDA4 -00001 000C+00 0/1 0/0 0/0 .data            @4048 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4048[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoExeMove__17daObjSCannonTen_cFv,
};
#pragma pop

/* 80CCCDA4-80CCCDB0 -00001 000C+00 0/1 0/0 0/0 .data            @4049 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4049[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoInitFire__17daObjSCannonTen_cFv,
};
#pragma pop

/* 80CCCDB0-80CCCDBC -00001 000C+00 0/1 0/0 0/0 .data            @4050 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4050[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoExeFire__17daObjSCannonTen_cFv,
};
#pragma pop

/* 80CCCDBC-80CCCDC8 -00001 000C+00 0/1 0/0 0/0 .data            @4051 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4051[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoInitFireEnd__17daObjSCannonTen_cFv,
};
#pragma pop

/* 80CCCDC8-80CCCDD4 -00001 000C+00 0/1 0/0 0/0 .data            @4052 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4052[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoExeFireEnd__17daObjSCannonTen_cFv,
};
#pragma pop

/* 80CCCDD4-80CCCDE0 -00001 000C+00 0/1 0/0 0/0 .data            @4053 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4053[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoInitFinish__17daObjSCannonTen_cFv,
};
#pragma pop

/* 80CCCDE0-80CCCDEC -00001 000C+00 0/1 0/0 0/0 .data            @4054 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4054[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoExeFinish__17daObjSCannonTen_cFv,
};
#pragma pop

/* 80CCCDEC-80CCCE7C 00011C 0090+00 2/3 0/0 0/0 .data            s_demoExeProc__17daObjSCannonTen_c
 */
SECTION_DATA u8 daObjSCannonTen_c::s_demoExeProc[144] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80CCCE7C-80CCCE94 -00001 0018+00 1/1 0/0 0/0 .data            CUT_TYPE_TABLE_FIRE_SECOND$4058 */
SECTION_DATA static void* CUT_TYPE_TABLE_FIRE_SECOND[6] = {
    (void*)(((char*)&d_a_obj_scannon_ten__stringBase0) + 0x21),
    (void*)(((char*)&d_a_obj_scannon_ten__stringBase0) + 0x29),
    (void*)(((char*)&d_a_obj_scannon_ten__stringBase0) + 0x2D),
    (void*)(((char*)&d_a_obj_scannon_ten__stringBase0) + 0x32),
    (void*)(((char*)&d_a_obj_scannon_ten__stringBase0) + 0x37),
    (void*)(((char*)&d_a_obj_scannon_ten__stringBase0) + 0x40),
};

/* 80CCCE94-80CCCEB4 -00001 0020+00 1/0 0/0 0/0 .data            daObjSCannonTen_METHODS */
static actor_method_class daObjSCannonTen_METHODS = {
    (process_method_func)daObjSCannonTen_create__FP17daObjSCannonTen_c,
    (process_method_func)daObjSCannonTen_Delete__FP17daObjSCannonTen_c,
    (process_method_func)daObjSCannonTen_execute__FP17daObjSCannonTen_c,
    0,
    (process_method_func)daObjSCannonTen_draw__FP17daObjSCannonTen_c,
};

/* 80CCCEB4-80CCCEE4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_SCannonTen */
extern actor_process_profile_definition g_profile_Obj_SCannonTen = {
  fpcLy_CURRENT_e,           // mLayerID
  7,                         // mListID
  fpcPi_CURRENT_e,           // mListPrio
  PROC_Obj_SCannonTen,       // mProcName
  &g_fpcLf_Method.base,     // sub_method
  sizeof(daObjSCannonTen_c), // mSize
  0,                         // mSizeOther
  0,                         // mParameters
  &g_fopAc_Method.base,      // sub_method
  746,                       // mPriority
  &daObjSCannonTen_METHODS,  // sub_method
  0x00040180,                // mStatus
  fopAc_ENV_e,               // mActorType
  fopAc_CULLBOX_CUSTOM_e,    // cullType
};

/* 80CCCEE4-80CCCEF0 000214 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80CCCEF0-80CCCF14 000220 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80CCCC24,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80CCCC1C,
};

/* 80CCCF14-80CCCF20 000244 000C+00 2/2 0/0 0/0 .data            __vt__17daObjSCannonTen_c */
SECTION_DATA extern void* __vt__17daObjSCannonTen_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17daObjSCannonTen_cFv,
};

/* 80CCCF20-80CCCF2C 000250 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80CCB364-80CCB3F4 0000C4 0090+00 2/2 0/0 0/0 .text            __ct__17daObjSCannonTen_cFv */
daObjSCannonTen_c::daObjSCannonTen_c() {
    // NONMATCHING
}

/* 80CCB3F4-80CCB43C 000154 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80CCB43C-80CCB4EC 00019C 00B0+00 1/0 0/0 0/0 .text            __dt__17daObjSCannonTen_cFv */
daObjSCannonTen_c::~daObjSCannonTen_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CCCC38-80CCCC3C 000000 0004+00 11/11 0/0 0/0 .rodata          @3832 */
SECTION_RODATA static u8 const lit_3832[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80CCCC38, &lit_3832);

/* 80CCB4EC-80CCB66C 00024C 0180+00 1/1 0/0 0/0 .text            createHeap__17daObjSCannonTen_cFv
 */
void daObjSCannonTen_c::createHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CCCC3C-80CCCC40 000004 0004+00 0/1 0/0 0/0 .rodata          @3931 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3931 = 5.0f;
COMPILER_STRIP_GATE(0x80CCCC3C, &lit_3931);
#pragma pop

/* 80CCCC40-80CCCC44 000008 0004+00 0/1 0/0 0/0 .rodata          @3932 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3932 = 500.0f;
COMPILER_STRIP_GATE(0x80CCCC40, &lit_3932);
#pragma pop

/* 80CCCC44-80CCCC48 00000C 0004+00 0/1 0/0 0/0 .rodata          @3933 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3933 = 10.0f;
COMPILER_STRIP_GATE(0x80CCCC44, &lit_3933);
#pragma pop

/* 80CCB66C-80CCB900 0003CC 0294+00 1/1 0/0 0/0 .text            create__17daObjSCannonTen_cFv */
void daObjSCannonTen_c::create() {
    // NONMATCHING
}

/* 80CCB900-80CCB970 000660 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80CCB970-80CCB9E0 0006D0 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80CCB9E0-80CCBA58 000740 0078+00 1/1 0/0 0/0 .text            Delete__17daObjSCannonTen_cFv */
void daObjSCannonTen_c::Delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CCCC48-80CCCC4C 000010 0004+00 0/1 0/0 0/0 .rodata          @3986 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3986 = 2500.0f;
COMPILER_STRIP_GATE(0x80CCCC48, &lit_3986);
#pragma pop

/* 80CCCC4C-80CCCC50 000014 0004+00 4/9 0/0 0/0 .rodata          @3987 */
SECTION_RODATA static f32 const lit_3987 = 1.0f;
COMPILER_STRIP_GATE(0x80CCCC4C, &lit_3987);

/* 80CCBA58-80CCBB6C 0007B8 0114+00 1/1 0/0 0/0 .text            draw__17daObjSCannonTen_cFv */
void daObjSCannonTen_c::draw() {
    // NONMATCHING
}

/* 80CCBB6C-80CCBB90 0008CC 0024+00 1/1 0/0 0/0 .text            execute__17daObjSCannonTen_cFv */
void daObjSCannonTen_c::execute() {
    // NONMATCHING
}

/* 80CCBB90-80CCBC08 0008F0 0078+00 1/1 0/0 0/0 .text            middleExe__17daObjSCannonTen_cFv */
void daObjSCannonTen_c::middleExe() {
    // NONMATCHING
}

/* 80CCBC08-80CCBCB0 000968 00A8+00 1/0 0/0 0/0 .text            exeModeWait__17daObjSCannonTen_cFv
 */
void daObjSCannonTen_c::exeModeWait() {
    // NONMATCHING
}

/* 80CCBCB0-80CCBD4C 000A10 009C+00 1/0 0/0 0/0 .text exeModeOrderEvt__17daObjSCannonTen_cFv */
void daObjSCannonTen_c::exeModeOrderEvt() {
    // NONMATCHING
}

/* 80CCBD4C-80CCBDCC 000AAC 0080+00 1/0 0/0 0/0 .text exeModeActionEvt__17daObjSCannonTen_cFv */
void daObjSCannonTen_c::exeModeActionEvt() {
    // NONMATCHING
}

/* 80CCBDCC-80CCBDD0 000B2C 0004+00 1/0 0/0 0/0 .text            exeModeEnd__17daObjSCannonTen_cFv
 */
void daObjSCannonTen_c::exeModeEnd() {
    /* empty function */
}

/* 80CCBDD0-80CCBE8C 000B30 00BC+00 1/1 0/0 0/0 .text            demoExe__17daObjSCannonTen_cFv */
void daObjSCannonTen_c::demoExe() {
    // NONMATCHING
}

/* 80CCBE8C-80CCBF00 000BEC 0074+00 2/2 0/0 0/0 .text            demoModeInit__17daObjSCannonTen_cFi
 */
void daObjSCannonTen_c::demoModeInit(int param_0) {
    // NONMATCHING
}

/* 80CCBF00-80CCBF04 000C60 0004+00 1/0 0/0 0/0 .text demoInitLinkIn__17daObjSCannonTen_cFv */
void daObjSCannonTen_c::demoInitLinkIn() {
    /* empty function */
}

/* ############################################################################################## */
/* 80CCCC50-80CCCC54 000018 0004+00 0/1 0/0 0/0 .rodata          @4110 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4110 = 0x41419A81;
COMPILER_STRIP_GATE(0x80CCCC50, &lit_4110);
#pragma pop

/* 80CCCC54-80CCCC58 00001C 0004+00 0/1 0/0 0/0 .rodata          @4111 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4111 = 0x438410D7;
COMPILER_STRIP_GATE(0x80CCCC54, &lit_4111);
#pragma pop

/* 80CCCC58-80CCCC5C 000020 0004+00 0/1 0/0 0/0 .rodata          @4112 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4112 = 0x463C9722;
COMPILER_STRIP_GATE(0x80CCCC58, &lit_4112);
#pragma pop

/* 80CCBF04-80CCBFC4 000C64 00C0+00 1/0 0/0 0/0 .text demoExeLinkIn__17daObjSCannonTen_cFv */
void daObjSCannonTen_c::demoExeLinkIn() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CCCC5C-80CCCC60 000024 0004+00 1/3 0/0 0/0 .rodata          @4133 */
SECTION_RODATA static f32 const lit_4133 = -1.0f;
COMPILER_STRIP_GATE(0x80CCCC5C, &lit_4133);

/* 80CCBFC4-80CCC088 000D24 00C4+00 1/0 0/0 0/0 .text            demoInitSet__17daObjSCannonTen_cFv
 */
void daObjSCannonTen_c::demoInitSet() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CCCC60-80CCCC64 000028 0004+00 0/1 0/0 0/0 .rodata          @4149 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4149 = 84.0f;
COMPILER_STRIP_GATE(0x80CCCC60, &lit_4149);
#pragma pop

/* 80CCC088-80CCC114 000DE8 008C+00 1/0 0/0 0/0 .text            demoExeSet__17daObjSCannonTen_cFv
 */
void daObjSCannonTen_c::demoExeSet() {
    // NONMATCHING
}

/* 80CCC114-80CCC118 000E74 0004+00 1/0 0/0 0/0 .text            demoInitMove__17daObjSCannonTen_cFv
 */
void daObjSCannonTen_c::demoInitMove() {
    /* empty function */
}

/* ############################################################################################## */
/* 80CCCC64-80CCCC68 00002C 0004+00 0/1 0/0 0/0 .rodata          @4179 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4179 = 104.0f;
COMPILER_STRIP_GATE(0x80CCCC64, &lit_4179);
#pragma pop

/* 80CCCC68-80CCCC6C 000030 0004+00 0/1 0/0 0/0 .rodata          @4180 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4180 = 120.0f;
COMPILER_STRIP_GATE(0x80CCCC68, &lit_4180);
#pragma pop

/* 80CCCC6C-80CCCC70 000034 0004+00 0/1 0/0 0/0 .rodata          @4181 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4181 = 138.0f;
COMPILER_STRIP_GATE(0x80CCCC6C, &lit_4181);
#pragma pop

/* 80CCC118-80CCC20C 000E78 00F4+00 1/0 0/0 0/0 .text            demoExeMove__17daObjSCannonTen_cFv
 */
void daObjSCannonTen_c::demoExeMove() {
    // NONMATCHING
}

/* 80CCC20C-80CCC260 000F6C 0054+00 1/0 0/0 0/0 .text            demoInitFire__17daObjSCannonTen_cFv
 */
void daObjSCannonTen_c::demoInitFire() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CCCC70-80CCCC74 000038 0004+00 1/1 0/0 0/0 .rodata          @4200 */
SECTION_RODATA static f32 const lit_4200 = 235.0f;
COMPILER_STRIP_GATE(0x80CCCC70, &lit_4200);

/* 80CCC260-80CCC2B8 000FC0 0058+00 1/0 0/0 0/0 .text            demoExeFire__17daObjSCannonTen_cFv
 */
void daObjSCannonTen_c::demoExeFire() {
    // NONMATCHING
}

/* 80CCC2B8-80CCC37C 001018 00C4+00 1/0 0/0 0/0 .text demoInitFireEnd__17daObjSCannonTen_cFv */
void daObjSCannonTen_c::demoInitFireEnd() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CCCC74-80CCCC78 00003C 0004+00 1/1 0/0 0/0 .rodata          @4228 */
SECTION_RODATA static f32 const lit_4228 = 255.0f;
COMPILER_STRIP_GATE(0x80CCCC74, &lit_4228);

/* 80CCC37C-80CCC3D4 0010DC 0058+00 1/0 0/0 0/0 .text demoExeFireEnd__17daObjSCannonTen_cFv */
void daObjSCannonTen_c::demoExeFireEnd() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CCCC80-80CCCC80 000048 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CCCCC7 = "Timer";
#pragma pop

/* 80CCC3D4-80CCC498 001134 00C4+00 1/0 0/0 0/0 .text demoInitFinish__17daObjSCannonTen_cFv */
void daObjSCannonTen_c::demoInitFinish() {
    // NONMATCHING
}

/* 80CCC498-80CCC528 0011F8 0090+00 1/0 0/0 0/0 .text demoExeFinish__17daObjSCannonTen_cFv */
void daObjSCannonTen_c::demoExeFinish() {
    // NONMATCHING
}

/* 80CCC528-80CCC53C 001288 0014+00 1/1 0/0 0/0 .text            init__17daObjSCannonTen_cFv */
void daObjSCannonTen_c::init() {
    // NONMATCHING
}

/* 80CCC53C-80CCC5A0 00129C 0064+00 2/2 0/0 0/0 .text            setModelMtx__17daObjSCannonTen_cFv
 */
void daObjSCannonTen_c::setModelMtx() {
    // NONMATCHING
}

/* 80CCC5A0-80CCC628 001300 0088+00 2/2 0/0 0/0 .text            changeScene__17daObjSCannonTen_cFv
 */
void daObjSCannonTen_c::changeScene() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CCCC78-80CCCC80 000040 0006+02 1/1 0/0 0/0 .rodata          PARTICLE_NAME$4297 */
SECTION_RODATA static u8 const PARTICLE_NAME[6 + 2 /* padding */] = {
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
COMPILER_STRIP_GATE(0x80CCCC78, &PARTICLE_NAME);

/* 80CCC628-80CCC74C 001388 0124+00 1/1 0/0 0/0 .text            initEmtSmoke__17daObjSCannonTen_cFv
 */
void daObjSCannonTen_c::initEmtSmoke() {
    // NONMATCHING
}

/* 80CCC74C-80CCC7D0 0014AC 0084+00 5/5 0/0 0/0 .text            exeEmtSmoke__17daObjSCannonTen_cFv
 */
void daObjSCannonTen_c::exeEmtSmoke() {
    // NONMATCHING
}

/* 80CCC7D0-80CCC8B8 001530 00E8+00 1/1 0/0 0/0 .text            initEmtLine__17daObjSCannonTen_cFv
 */
void daObjSCannonTen_c::initEmtLine() {
    // NONMATCHING
}

/* 80CCC8B8-80CCC97C 001618 00C4+00 1/1 0/0 0/0 .text            exeEmtLine__17daObjSCannonTen_cFv
 */
void daObjSCannonTen_c::exeEmtLine() {
    // NONMATCHING
}

/* 80CCC97C-80CCC9B8 0016DC 003C+00 1/1 0/0 0/0 .text            delEmtAll__17daObjSCannonTen_cFv */
void daObjSCannonTen_c::delEmtAll() {
    // NONMATCHING
}

/* 80CCC9B8-80CCCA0C 001718 0054+00 1/0 0/0 0/0 .text
 * daObjSCannonTen_create__FP17daObjSCannonTen_c                */
static void daObjSCannonTen_create(daObjSCannonTen_c* param_0) {
    // NONMATCHING
}

/* 80CCCA0C-80CCCA2C 00176C 0020+00 1/0 0/0 0/0 .text
 * daObjSCannonTen_Delete__FP17daObjSCannonTen_c                */
static void daObjSCannonTen_Delete(daObjSCannonTen_c* param_0) {
    // NONMATCHING
}

/* 80CCCA2C-80CCCA4C 00178C 0020+00 1/0 0/0 0/0 .text
 * daObjSCannonTen_execute__FP17daObjSCannonTen_c               */
static void daObjSCannonTen_execute(daObjSCannonTen_c* param_0) {
    // NONMATCHING
}

/* 80CCCA4C-80CCCA6C 0017AC 0020+00 1/0 0/0 0/0 .text daObjSCannonTen_draw__FP17daObjSCannonTen_c
 */
static void daObjSCannonTen_draw(daObjSCannonTen_c* param_0) {
    // NONMATCHING
}

/* 80CCCA6C-80CCCA88 0017CC 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_80CCCA6C(void* _this, int* param_0) {
    // NONMATCHING
}

/* 80CCCA88-80CCCC1C 0017E8 0194+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_scannon_ten_cpp */
void __sinit_d_a_obj_scannon_ten_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80CCCA88, __sinit_d_a_obj_scannon_ten_cpp);
#pragma pop

/* 80CCCC1C-80CCCC24 00197C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80CCCC1C() {
    // NONMATCHING
}

/* 80CCCC24-80CCCC2C 001984 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80CCCC24() {
    // NONMATCHING
}

/* 80CCCC80-80CCCC80 000048 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
