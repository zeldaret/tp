/**
 * @file d_a_obj_tobyhouse.cpp
 * 
*/

#include "rel/d/a/obj/d_a_obj_tobyhouse/d_a_obj_tobyhouse.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" static void s_b_sub__FPvPv();
extern "C" static void nodeCallBack__FP8J3DJointi();
extern "C" static void eventCallBack__FPvi();
extern "C" void initBaseMtx__16daObjTobyHouse_cFv();
extern "C" void setBaseMtx__16daObjTobyHouse_cFv();
extern "C" void Create__16daObjTobyHouse_cFv();
extern "C" void CreateHeap__16daObjTobyHouse_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void create1st__16daObjTobyHouse_cFv();
extern "C" void Execute__16daObjTobyHouse_cFPPA3_A4_f();
extern "C" void action__16daObjTobyHouse_cFv();
extern "C" void actionWait__16daObjTobyHouse_cFv();
extern "C" void actionOrderEvent__16daObjTobyHouse_cFv();
extern "C" void actionEvent__16daObjTobyHouse_cFv();
extern "C" void actionDead__16daObjTobyHouse_cFv();
extern "C" void demoProc__16daObjTobyHouse_cFv();
extern "C" void sceneChange__16daObjTobyHouse_cFv();
extern "C" void Draw__16daObjTobyHouse_cFv();
extern "C" void checkLODModel__16daObjTobyHouse_cFv();
extern "C" void Delete__16daObjTobyHouse_cFv();
extern "C" static void daObjTobyHouse_create1st__FP16daObjTobyHouse_c();
extern "C" static void daObjTobyHouse_MoveBGDelete__FP16daObjTobyHouse_c();
extern "C" static void daObjTobyHouse_MoveBGExecute__FP16daObjTobyHouse_c();
extern "C" static void daObjTobyHouse_MoveBGDraw__FP16daObjTobyHouse_c();
extern "C" void func_80D176E4(void* _this, u8*);
extern "C" void __dt__4cXyzFv();
extern "C" extern char const* const d_a_obj_tobyhouse__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_MtxToRot__FPA4_CfP5csXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb();
extern "C" void entry__13mDoExt_bckAnmFP12J3DModelDataf();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_setupShareTexture__FP12J3DModelDataP12J3DModelData();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs();
extern "C" void waterCheck__11fopAcM_wt_cFPC4cXyz();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcSch_JudgeForPName__FPvPv();
extern "C" void dStage_changeScene__FifUlScsi();
extern "C" void getLayerNo__14dComIfG_play_cFi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGs_offOneZoneSwitch__Fii();
extern "C" void dComIfGs_isOneZoneSwitch__Fii();
extern "C" void onEventBit__11dSv_event_cFUs();
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
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void dCam_getAngleY__FP12camera_class();
extern "C" void dCam_getAngleX__FP12camera_class();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __ct__5csXyzFsss();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void JPAGetXYZRotateMtx__FsssPA4_f();
extern "C" void func_802807E0();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void bgmStreamPrepare__8Z2SeqMgrFUl();
extern "C" void bgmStreamPlay__8Z2SeqMgrFv();
extern "C" void bgmStreamStop__8Z2SeqMgrFUl();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void getName__10JUTNameTabCFUs();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_22();
extern "C" void _savegpr_23();
extern "C" void _savegpr_26();
extern "C" void _savegpr_29();
extern "C" void _restgpr_22();
extern "C" void _restgpr_23();
extern "C" void _restgpr_26();
extern "C" void _restgpr_29();
extern "C" u8 saveBitLabels__16dSv_event_flag_c[1644 + 4 /* padding */];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" f32 mWaterY__11fopAcM_wt_c[1 + 1 /* padding */];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80D1774C-80D17754 000000 0008+00 4/4 0/0 0/0 .rodata          l_bmd */
SECTION_RODATA static u8 const l_bmd[8] = {
    0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x05,
};
COMPILER_STRIP_GATE(0x80D1774C, &l_bmd);

/* 80D17754-80D1775C 000008 0008+00 1/1 0/0 0/0 .rodata          l_dzb */
SECTION_RODATA static u8 const l_dzb[8] = {
    0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x08,
};
COMPILER_STRIP_GATE(0x80D17754, &l_dzb);

/* 80D1775C-80D17764 000010 0008+00 0/1 0/0 0/0 .rodata          l_LodBmd */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_LodBmd[8] = {
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x04,
};
COMPILER_STRIP_GATE(0x80D1775C, &l_LodBmd);
#pragma pop

/* 80D17764-80D17770 000018 000C+00 0/1 0/0 0/0 .rodata          l_bck */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_bck[12] = {
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x08,
};
COMPILER_STRIP_GATE(0x80D17764, &l_bck);
#pragma pop

/* 80D17770-80D17774 000024 0004+00 1/4 0/0 0/0 .rodata          @4046 */
SECTION_RODATA static u8 const lit_4046[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80D17770, &lit_4046);

/* 80D17774-80D1777C 000028 0008+00 0/2 0/0 0/0 .rodata          @4047 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4047[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D17774, &lit_4047);
#pragma pop

/* 80D1777C-80D17784 000030 0008+00 0/2 0/0 0/0 .rodata          @4048 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4048[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D1777C, &lit_4048);
#pragma pop

/* 80D17784-80D1778C 000038 0008+00 0/2 0/0 0/0 .rodata          @4049 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4049[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D17784, &lit_4049);
#pragma pop

/* 80D1778C-80D17790 000040 0004+00 0/1 0/0 0/0 .rodata          @4050 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4050 = 1000.0f;
COMPILER_STRIP_GATE(0x80D1778C, &lit_4050);
#pragma pop

/* 80D15AAC-80D15DA8 0000EC 02FC+00 1/1 0/0 0/0 .text            s_b_sub__FPvPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void s_b_sub(void* param_0, void* param_1) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tobyhouse/d_a_obj_tobyhouse/s_b_sub__FPvPv.s"
}
#pragma pop

/* 80D15DA8-80D15E98 0003E8 00F0+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void nodeCallBack(J3DJoint* param_0, int param_1) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tobyhouse/d_a_obj_tobyhouse/nodeCallBack__FP8J3DJointi.s"
}
#pragma pop

/* 80D15E98-80D15F0C 0004D8 0074+00 1/1 0/0 0/0 .text            eventCallBack__FPvi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void eventCallBack(void* param_0, int param_1) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tobyhouse/d_a_obj_tobyhouse/eventCallBack__FPvi.s"
}
#pragma pop

/* 80D15F0C-80D15F48 00054C 003C+00 1/1 0/0 0/0 .text            initBaseMtx__16daObjTobyHouse_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTobyHouse_c::initBaseMtx() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tobyhouse/d_a_obj_tobyhouse/initBaseMtx__16daObjTobyHouse_cFv.s"
}
#pragma pop

/* 80D15F48-80D15FE0 000588 0098+00 2/2 0/0 0/0 .text            setBaseMtx__16daObjTobyHouse_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTobyHouse_c::setBaseMtx() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tobyhouse/d_a_obj_tobyhouse/setBaseMtx__16daObjTobyHouse_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D17790-80D17794 000044 0004+00 1/1 0/0 0/0 .rodata          @4193 */
SECTION_RODATA static f32 const lit_4193 = 10.0f;
COMPILER_STRIP_GATE(0x80D17790, &lit_4193);

/* 80D17794-80D17798 000048 0004+00 1/1 0/0 0/0 .rodata          @4194 */
SECTION_RODATA static f32 const lit_4194 = 200.0f;
COMPILER_STRIP_GATE(0x80D17794, &lit_4194);

/* 80D177C0-80D177C0 000074 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80D177C0 = "M_THouse";
SECTION_DEAD static char const* const stringBase_80D177C9 = "U_THouse";
SECTION_DEAD static char const* const stringBase_80D177D2 = "thouse";
SECTION_DEAD static char const* const stringBase_80D177D9 = "TOBY_HOUSE_FIRE_TO_RAKKA";
SECTION_DEAD static char const* const stringBase_80D177F2 = "TOBY_HOUSE_FIRE_TO_DESERT";
SECTION_DEAD static char const* const stringBase_80D1780C = "Birl_P";
SECTION_DEAD static char const* const stringBase_80D17813 = "Birl_Cannon";
#pragma pop

/* 80D17858-80D17864 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80D17864-80D17878 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
#pragma push
#pragma force_active on
SECTION_DATA static u32 lit_1787[1 + 4 /* padding */] = {
    0x02000201,
    /* padding */
    0x40080000,
    0x00000000,
    0x3FE00000,
    0x00000000,
};
#pragma pop

/* 80D17878-80D17880 -00001 0008+00 4/4 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName[2] = {
    (void*)&d_a_obj_tobyhouse__stringBase0,
    (void*)(((char*)&d_a_obj_tobyhouse__stringBase0) + 0x9),
};

/* 80D17880-80D17884 -00001 0004+00 1/1 0/0 0/0 .data            l_staff_name */
SECTION_DATA static void* l_staff_name = (void*)(((char*)&d_a_obj_tobyhouse__stringBase0) + 0x12);

/* 80D17884-80D1788C -00001 0008+00 1/1 0/0 0/0 .data            l_event_name */
SECTION_DATA static void* l_event_name[2] = {
    (void*)(((char*)&d_a_obj_tobyhouse__stringBase0) + 0x19),
    (void*)(((char*)&d_a_obj_tobyhouse__stringBase0) + 0x32),
};

/* 80D15FE0-80D161A4 000620 01C4+00 1/0 0/0 0/0 .text            Create__16daObjTobyHouse_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTobyHouse_c::Create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tobyhouse/d_a_obj_tobyhouse/Create__16daObjTobyHouse_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D17798-80D1779C 00004C 0004+00 0/1 0/0 0/0 .rodata          @4251 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4251 = 1.0f;
COMPILER_STRIP_GATE(0x80D17798, &lit_4251);
#pragma pop

/* 80D177C0-80D177C0 000074 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80D1781F = "WAIT";
SECTION_DEAD static char const* const stringBase_80D17824 = "CLOSE";
SECTION_DEAD static char const* const stringBase_80D1782A = "CHANGE";
SECTION_DEAD static char const* const stringBase_80D17831 = "HLIGHT";
SECTION_DEAD static char const* const stringBase_80D17838 = "ROTATE";
SECTION_DEAD static char const* const stringBase_80D1783F = "SCENE_CHG";
SECTION_DEAD static char const* const stringBase_80D17849 = "EFF_LINE";
#pragma pop

/* 80D1788C-80D17898 -00001 000C+00 0/1 0/0 0/0 .data            @4292 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4292[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionWait__16daObjTobyHouse_cFv,
};
#pragma pop

/* 80D17898-80D178A4 -00001 000C+00 0/1 0/0 0/0 .data            @4293 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4293[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionOrderEvent__16daObjTobyHouse_cFv,
};
#pragma pop

/* 80D178A4-80D178B0 -00001 000C+00 0/1 0/0 0/0 .data            @4294 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4294[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionEvent__16daObjTobyHouse_cFv,
};
#pragma pop

/* 80D178B0-80D178BC -00001 000C+00 0/1 0/0 0/0 .data            @4295 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4295[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionDead__16daObjTobyHouse_cFv,
};
#pragma pop

/* 80D178BC-80D178EC 000064 0030+00 0/1 0/0 0/0 .data            l_func$4291 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_func[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80D178EC-80D17908 -00001 001C+00 1/1 0/0 0/0 .data            action_table$4349 */
SECTION_DATA static void* action_table[7] = {
    (void*)(((char*)&d_a_obj_tobyhouse__stringBase0) + 0x5F),
    (void*)(((char*)&d_a_obj_tobyhouse__stringBase0) + 0x64),
    (void*)(((char*)&d_a_obj_tobyhouse__stringBase0) + 0x6A),
    (void*)(((char*)&d_a_obj_tobyhouse__stringBase0) + 0x71),
    (void*)(((char*)&d_a_obj_tobyhouse__stringBase0) + 0x78),
    (void*)(((char*)&d_a_obj_tobyhouse__stringBase0) + 0x7F),
    (void*)(((char*)&d_a_obj_tobyhouse__stringBase0) + 0x89),
};

/* 80D17908-80D17914 0000B0 000C+00 0/0 0/0 0/0 .data            l_shotSmokeOffset$4354 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_shotSmokeOffset[12] = {
    0x00, 0x00, 0x00, 0x00, 0x45, 0x1C, 0x40, 0x00, 0xC4, 0x16, 0x00, 0x00,
};
#pragma pop

/* 80D17914-80D17930 -00001 001C+00 1/1 0/0 0/0 .data            @4774 */
SECTION_DATA static void* lit_4774[7] = {
    (void*)(((char*)demoProc__16daObjTobyHouse_cFv) + 0x150),
    (void*)(((char*)demoProc__16daObjTobyHouse_cFv) + 0x18C),
    (void*)(((char*)demoProc__16daObjTobyHouse_cFv) + 0x21C),
    (void*)(((char*)demoProc__16daObjTobyHouse_cFv) + 0x28C),
    (void*)(((char*)demoProc__16daObjTobyHouse_cFv) + 0x4D0),
    (void*)(((char*)demoProc__16daObjTobyHouse_cFv) + 0x4B8),
    (void*)(((char*)demoProc__16daObjTobyHouse_cFv) + 0x4D0),
};

/* 80D17930-80D17950 -00001 0020+00 1/0 0/0 0/0 .data            daObjTobyHouse_METHODS */
static actor_method_class daObjTobyHouse_METHODS = {
    (process_method_func)daObjTobyHouse_create1st__FP16daObjTobyHouse_c,
    (process_method_func)daObjTobyHouse_MoveBGDelete__FP16daObjTobyHouse_c,
    (process_method_func)daObjTobyHouse_MoveBGExecute__FP16daObjTobyHouse_c,
    0,
    (process_method_func)daObjTobyHouse_MoveBGDraw__FP16daObjTobyHouse_c,
};

/* 80D17950-80D17980 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_TobyHouse */
extern actor_process_profile_definition g_profile_Obj_TobyHouse = {
  fpcLy_CURRENT_e,          // mLayerID
  3,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_Obj_TobyHouse,       // mProcName
  &g_fpcLf_Method.mBase,    // sub_method
  sizeof(daObjTobyHouse_c), // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  546,                      // mPriority
  &daObjTobyHouse_METHODS,  // sub_method
  0x00040100,               // mStatus
  fopAc_ACTOR_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};

/* 80D17980-80D1798C 000128 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80D161A4-80D163A8 0007E4 0204+00 1/0 0/0 0/0 .text            CreateHeap__16daObjTobyHouse_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTobyHouse_c::CreateHeap() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tobyhouse/d_a_obj_tobyhouse/CreateHeap__16daObjTobyHouse_cFv.s"
}
#pragma pop

/* 80D163A8-80D163F0 0009E8 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" asm void __dt__12J3DFrameCtrlFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tobyhouse/d_a_obj_tobyhouse/__dt__12J3DFrameCtrlFv.s"
}
#pragma pop

/* 80D163F0-80D164C0 000A30 00D0+00 1/1 0/0 0/0 .text            create1st__16daObjTobyHouse_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTobyHouse_c::create1st() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tobyhouse/d_a_obj_tobyhouse/create1st__16daObjTobyHouse_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D1779C-80D177A0 000050 0004+00 1/1 0/0 0/0 .rodata          @4287 */
SECTION_RODATA static f32 const lit_4287 = 20.0f;
COMPILER_STRIP_GATE(0x80D1779C, &lit_4287);

/* 80D164C0-80D16560 000B00 00A0+00 1/0 0/0 0/0 .text Execute__16daObjTobyHouse_cFPPA3_A4_f */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTobyHouse_c::Execute(f32 (**param_0)[3][4]) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tobyhouse/d_a_obj_tobyhouse/Execute__16daObjTobyHouse_cFPPA3_A4_f.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D179C0-80D179C4 000008 0001+03 1/1 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 80D179C4-80D179C8 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 80D179C8-80D179CC 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 80D179CC-80D179D0 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 80D179D0-80D179D4 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 80D179D4-80D179D8 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 80D179D8-80D179DC 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 80D179DC-80D179E0 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 80D179E0-80D179E4 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 80D179E4-80D179E8 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 80D179E8-80D179EC 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 80D179EC-80D179F0 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 80D179F0-80D179F4 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 80D179F4-80D179F8 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 80D179F8-80D179FC 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 80D179FC-80D17A00 -00001 0004+00 1/1 0/0 0/0 .bss             None */
/* 80D179FC 0001+00 data_80D179FC @1009 */
/* 80D179FD 0003+00 data_80D179FD None */
static u8 struct_80D179FC[4];

/* 80D16560-80D1661C 000BA0 00BC+00 1/1 0/0 0/0 .text            action__16daObjTobyHouse_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTobyHouse_c::action() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tobyhouse/d_a_obj_tobyhouse/action__16daObjTobyHouse_cFv.s"
}
#pragma pop

/* 80D1661C-80D166E0 000C5C 00C4+00 1/0 0/0 0/0 .text            actionWait__16daObjTobyHouse_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTobyHouse_c::actionWait() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tobyhouse/d_a_obj_tobyhouse/actionWait__16daObjTobyHouse_cFv.s"
}
#pragma pop

/* 80D166E0-80D167BC 000D20 00DC+00 1/0 0/0 0/0 .text actionOrderEvent__16daObjTobyHouse_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTobyHouse_c::actionOrderEvent() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tobyhouse/d_a_obj_tobyhouse/actionOrderEvent__16daObjTobyHouse_cFv.s"
}
#pragma pop

/* 80D167BC-80D16860 000DFC 00A4+00 1/0 0/0 0/0 .text            actionEvent__16daObjTobyHouse_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTobyHouse_c::actionEvent() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tobyhouse/d_a_obj_tobyhouse/actionEvent__16daObjTobyHouse_cFv.s"
}
#pragma pop

/* 80D16860-80D16864 000EA0 0004+00 1/0 0/0 0/0 .text            actionDead__16daObjTobyHouse_cFv */
void daObjTobyHouse_c::actionDead() {
    /* empty function */
}

/* ############################################################################################## */
/* 80D177A0-80D177A4 000054 0004+00 0/1 0/0 0/0 .rodata          @4769 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4769 = 8.0f;
COMPILER_STRIP_GATE(0x80D177A0, &lit_4769);
#pragma pop

/* 80D177A4-80D177A8 000058 0004+00 0/1 0/0 0/0 .rodata          @4770 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4770 = -600.0f;
COMPILER_STRIP_GATE(0x80D177A4, &lit_4770);
#pragma pop

/* 80D177A8-80D177AC 00005C 0004+00 0/1 0/0 0/0 .rodata          @4771 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4771 = 70.0f;
COMPILER_STRIP_GATE(0x80D177A8, &lit_4771);
#pragma pop

/* 80D177AC-80D177B0 000060 0004+00 0/1 0/0 0/0 .rodata          @4772 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4772 = 380.0f;
COMPILER_STRIP_GATE(0x80D177AC, &lit_4772);
#pragma pop

/* 80D177C0-80D177C0 000074 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80D17852 = "Timer";
#pragma pop

/* 80D17A00-80D17A10 000048 000C+04 0/1 0/0 0/0 .bss             @4351 */
#pragma push
#pragma force_active on
static u8 lit_4351[12 + 4 /* padding */];
#pragma pop

/* 80D17A10-80D17A1C 000058 000C+00 0/1 0/0 0/0 .bss             l_shotSmokeScale$4350 */
#pragma push
#pragma force_active on
static u8 l_shotSmokeScale[12];
#pragma pop

/* 80D16864-80D171C0 000EA4 095C+00 2/1 0/0 0/0 .text            demoProc__16daObjTobyHouse_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTobyHouse_c::demoProc() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tobyhouse/d_a_obj_tobyhouse/demoProc__16daObjTobyHouse_cFv.s"
}
#pragma pop

/* 80D171C0-80D17230 001800 0070+00 2/2 0/0 0/0 .text            sceneChange__16daObjTobyHouse_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTobyHouse_c::sceneChange() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tobyhouse/d_a_obj_tobyhouse/sceneChange__16daObjTobyHouse_cFv.s"
}
#pragma pop

/* 80D17230-80D17374 001870 0144+00 1/0 0/0 0/0 .text            Draw__16daObjTobyHouse_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTobyHouse_c::Draw() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tobyhouse/d_a_obj_tobyhouse/Draw__16daObjTobyHouse_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D177B0-80D177B4 000064 0004+00 0/0 0/0 0/0 .rodata          @4773 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4773 = -1.0f;
COMPILER_STRIP_GATE(0x80D177B0, &lit_4773);
#pragma pop

/* 80D177B4-80D177BC 000068 0008+00 0/0 0/0 0/0 .rodata          @4776 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4776[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D177B4, &lit_4776);
#pragma pop

/* 80D177BC-80D177C0 000070 0004+00 0/1 0/0 0/0 .rodata          @4905 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4905 = 20000.0f;
COMPILER_STRIP_GATE(0x80D177BC, &lit_4905);
#pragma pop

/* 80D17374-80D174F8 0019B4 0184+00 1/1 0/0 0/0 .text            checkLODModel__16daObjTobyHouse_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTobyHouse_c::checkLODModel() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tobyhouse/d_a_obj_tobyhouse/checkLODModel__16daObjTobyHouse_cFv.s"
}
#pragma pop

/* 80D174F8-80D17618 001B38 0120+00 1/0 0/0 0/0 .text            Delete__16daObjTobyHouse_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTobyHouse_c::Delete() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tobyhouse/d_a_obj_tobyhouse/Delete__16daObjTobyHouse_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D1798C-80D179B4 000134 0028+00 1/1 0/0 0/0 .data            __vt__16daObjTobyHouse_c */
SECTION_DATA extern void* __vt__16daObjTobyHouse_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__16daObjTobyHouse_cFv,
    (void*)Create__16daObjTobyHouse_cFv,
    (void*)Execute__16daObjTobyHouse_cFPPA3_A4_f,
    (void*)Draw__16daObjTobyHouse_cFv,
    (void*)Delete__16daObjTobyHouse_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80D17618-80D17678 001C58 0060+00 1/0 0/0 0/0 .text
 * daObjTobyHouse_create1st__FP16daObjTobyHouse_c               */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjTobyHouse_create1st(daObjTobyHouse_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tobyhouse/d_a_obj_tobyhouse/daObjTobyHouse_create1st__FP16daObjTobyHouse_c.s"
}
#pragma pop

/* 80D17678-80D17698 001CB8 0020+00 1/0 0/0 0/0 .text
 * daObjTobyHouse_MoveBGDelete__FP16daObjTobyHouse_c            */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjTobyHouse_MoveBGDelete(daObjTobyHouse_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tobyhouse/d_a_obj_tobyhouse/daObjTobyHouse_MoveBGDelete__FP16daObjTobyHouse_c.s"
}
#pragma pop

/* 80D17698-80D176B8 001CD8 0020+00 1/0 0/0 0/0 .text
 * daObjTobyHouse_MoveBGExecute__FP16daObjTobyHouse_c           */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjTobyHouse_MoveBGExecute(daObjTobyHouse_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tobyhouse/d_a_obj_tobyhouse/daObjTobyHouse_MoveBGExecute__FP16daObjTobyHouse_c.s"
}
#pragma pop

/* 80D176B8-80D176E4 001CF8 002C+00 1/0 0/0 0/0 .text
 * daObjTobyHouse_MoveBGDraw__FP16daObjTobyHouse_c              */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjTobyHouse_MoveBGDraw(daObjTobyHouse_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tobyhouse/d_a_obj_tobyhouse/daObjTobyHouse_MoveBGDraw__FP16daObjTobyHouse_c.s"
}
#pragma pop

/* 80D176E4-80D17700 001D24 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<Uc>__FPUc */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void func_80D176E4(void* _this, u8* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tobyhouse/d_a_obj_tobyhouse/func_80D176E4.s"
}
#pragma pop

/* 80D17700-80D1773C 001D40 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cXyz::~cXyz() {
extern "C" asm void __dt__4cXyzFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tobyhouse/d_a_obj_tobyhouse/__dt__4cXyzFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D17A1C-80D17A20 000064 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80D17A1C[4];
#pragma pop

/* 80D17A20-80D17A24 000068 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80D17A20[4];
#pragma pop

/* 80D17A24-80D17A28 00006C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80D17A24[4];
#pragma pop

/* 80D17A28-80D17A2C 000070 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80D17A28[4];
#pragma pop

/* 80D17A2C-80D17A30 000074 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80D17A2C[4];
#pragma pop

/* 80D17A30-80D17A34 000078 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80D17A30[4];
#pragma pop

/* 80D17A34-80D17A38 00007C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80D17A34[4];
#pragma pop

/* 80D17A38-80D17A3C 000080 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80D17A38[4];
#pragma pop

/* 80D17A3C-80D17A40 000084 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80D17A3C[4];
#pragma pop

/* 80D17A40-80D17A44 000088 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80D17A40[4];
#pragma pop

/* 80D17A44-80D17A48 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80D17A44[4];
#pragma pop

/* 80D17A48-80D17A4C 000090 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80D17A48[4];
#pragma pop

/* 80D17A4C-80D17A50 000094 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80D17A4C[4];
#pragma pop

/* 80D17A50-80D17A54 000098 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80D17A50[4];
#pragma pop

/* 80D17A54-80D17A58 00009C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80D17A54[4];
#pragma pop

/* 80D17A58-80D17A5C 0000A0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80D17A58[4];
#pragma pop

/* 80D17A5C-80D17A60 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80D17A5C[4];
#pragma pop

/* 80D17A60-80D17A64 0000A8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80D17A60[4];
#pragma pop

/* 80D17A64-80D17A68 0000AC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_80D17A64[4];
#pragma pop

/* 80D17A68-80D17A6C 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_80D17A68[4];
#pragma pop

/* 80D17A6C-80D17A70 0000B4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80D17A6C[4];
#pragma pop

/* 80D17A70-80D17A74 0000B8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80D17A70[4];
#pragma pop

/* 80D17A74-80D17A78 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80D17A74[4];
#pragma pop

/* 80D17A78-80D17A7C 0000C0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80D17A78[4];
#pragma pop

/* 80D17A7C-80D17A80 0000C4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80D17A7C[4];
#pragma pop

/* 80D177C0-80D177C0 000074 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
