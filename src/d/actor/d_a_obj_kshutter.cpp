/**
 * @file d_a_obj_kshutter.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_kshutter.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void initBaseMtx__12daObjKshtr_cFv();
extern "C" void setBaseMtx__12daObjKshtr_cFv();
extern "C" void Create__12daObjKshtr_cFv();
extern "C" void offDzb__12daObjKshtr_cFv();
extern "C" void CreateHeap__12daObjKshtr_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void initKey__12daObjKshtr_cFv();
extern "C" void phase_0__12daObjKshtr_cFv();
extern "C" void phase_1__12daObjKshtr_cFv();
extern "C" s32 phase_2__12daObjKshtr_cFv();
extern "C" void create1st__12daObjKshtr_cFv();
extern "C" void event_proc_call__12daObjKshtr_cFv();
extern "C" void event_proc_call2__12daObjKshtr_cFv();
extern "C" void Execute__12daObjKshtr_cFPPA3_A4_f();
extern "C" void checkArea__12daObjKshtr_cFv();
extern "C" void checkOpen__12daObjKshtr_cFv();
extern "C" void getDemoAction__12daObjKshtr_cFv();
extern "C" void demoProc2__12daObjKshtr_cFv();
extern "C" void adjustmentProc__12daObjKshtr_cFv();
extern "C" void keyUnlockInit__12daObjKshtr_cFv();
extern "C" void keyUnlock__12daObjKshtr_cFv();
extern "C" void openInit__12daObjKshtr_cFv();
extern "C" void openProc__12daObjKshtr_cFv();
extern "C" void openProc_type1__12daObjKshtr_cFv();
extern "C" void openProc_type2__12daObjKshtr_cFv();
extern "C" void openProc_typeL3Boss__12daObjKshtr_cFv();
extern "C" void demoProc__12daObjKshtr_cFv();
extern "C" void demoJail1__12daObjKshtr_cFv();
extern "C" void demoJail2__12daObjKshtr_cFv();
extern "C" void demoJail11__12daObjKshtr_cFv();
extern "C" bool demoJail21__12daObjKshtr_cFv();
extern "C" void anmInit__12daObjKshtr_cFv();
extern "C" void actionWaitEvent__12daObjKshtr_cFv();
extern "C" void actionEvent__12daObjKshtr_cFv();
extern "C" void actionDead__12daObjKshtr_cFv();
extern "C" void actionWaitEvent2__12daObjKshtr_cFv();
extern "C" void actionOpen__12daObjKshtr_cFv();
extern "C" void actionEvent2__12daObjKshtr_cFv();
extern "C" void actionDead2__12daObjKshtr_cFv();
extern "C" void Draw__12daObjKshtr_cFv();
extern "C" void Delete__12daObjKshtr_cFv();
extern "C" static void daObjKshtr_create1st__FP12daObjKshtr_c();
extern "C" static void daObjKshtr_MoveBGDelete__FP12daObjKshtr_c();
extern "C" static void daObjKshtr_MoveBGExecute__FP12daObjKshtr_c();
extern "C" static void daObjKshtr_MoveBGDraw__FP12daObjKshtr_c();
extern "C" void func_80C49C84(void* _this, u8*);
extern "C" extern char const* const d_a_obj_kshutter__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb();
extern "C" void entry__13mDoExt_bckAnmFP12J3DModelDataf();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_createChildFromOffset__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void isDungeonItem__12dSv_memBit_cCFi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc();
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
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void normalize__4cXyzFv();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_25();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_25();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_meter2_info[248];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" extern u8 struct_80C4A0E8[4];
extern "C" extern u8 data_80C4A0EC[4];

//
// Declarations:
//

/* 80C47AB8-80C47B2C 000078 0074+00 1/1 0/0 0/0 .text            initBaseMtx__12daObjKshtr_cFv */
void daObjKshtr_c::initBaseMtx() {
    // NONMATCHING
}

/* 80C47B2C-80C47C14 0000EC 00E8+00 2/2 0/0 0/0 .text            setBaseMtx__12daObjKshtr_cFv */
void daObjKshtr_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C49CA8-80C49CBC 000000 0014+00 8/8 0/0 0/0 .rodata          l_bmd */
SECTION_RODATA static u8 const l_bmd[20] = {
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00,
    0x00, 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x08,
};
COMPILER_STRIP_GATE(0x80C49CA8, &l_bmd);

/* 80C49CBC-80C49CD0 000014 0014+00 1/1 0/0 0/0 .rodata          l_dzb */
SECTION_RODATA static u8 const l_dzb[20] = {
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00,
    0x00, 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x0B,
};
COMPILER_STRIP_GATE(0x80C49CBC, &l_dzb);

/* 80C49CD0-80C49CE4 000028 0014+00 1/1 0/0 0/0 .rodata          l_heap_size */
SECTION_RODATA static u8 const l_heap_size[20] = {
    0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00,
    0x13, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x20, 0xD0,
};
COMPILER_STRIP_GATE(0x80C49CD0, &l_heap_size);

/* 80C49CE4-80C49CFC 00003C 0018+00 0/1 0/0 0/0 .rodata          l_cull_box */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_cull_box[24] = {
    0xC3, 0xE1, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC2, 0x48, 0x00, 0x00,
    0x43, 0xE1, 0x00, 0x00, 0x44, 0x2F, 0x00, 0x00, 0x43, 0x16, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C49CE4, &l_cull_box);
#pragma pop

/* 80C49CFC-80C49D00 000054 0004+00 2/8 0/0 0/0 .rodata          @3779 */
SECTION_RODATA static u8 const lit_3779[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C49CFC, &lit_3779);

/* 80C49D00-80C49D04 000058 0004+00 0/1 0/0 0/0 .rodata          @3780 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3780 = 150.0f;
COMPILER_STRIP_GATE(0x80C49D00, &lit_3780);
#pragma pop

/* 80C49D04-80C49D08 00005C 0004+00 0/2 0/0 0/0 .rodata          @3781 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3781 = -450.0f;
COMPILER_STRIP_GATE(0x80C49D04, &lit_3781);
#pragma pop

/* 80C49D08-80C49D10 000060 0008+00 0/1 0/0 0/0 .rodata          @3783 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3783[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C49D08, &lit_3783);
#pragma pop

/* 80C49D44-80C49D44 00009C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C49D44 = "S_shut00";
SECTION_DEAD static char const* const stringBase_80C49D4D = "Lv3shut00";
SECTION_DEAD static char const* const stringBase_80C49D57 = "K_l3bdoor";
SECTION_DEAD static char const* const stringBase_80C49D61 = "V_Shutter";
SECTION_DEAD static char const* const stringBase_80C49D6B = "oj_DoorOpC.bck";
SECTION_DEAD static char const* const stringBase_80C49D7A = "md_oj_DoorOpC.bck";
SECTION_DEAD static char const* const stringBase_80C49D8C = "oj_DoorOpD.bck";
SECTION_DEAD static char const* const stringBase_80C49D9B = "md_oj_DoorOpD.bck";
SECTION_DEAD static char const* const stringBase_80C49DAD = "V_Shutter.bck";
SECTION_DEAD static char const* const stringBase_80C49DBB = "KEY_JAIL_00";
SECTION_DEAD static char const* const stringBase_80C49DC7 = "KEY_JAIL_WOLF_00";
SECTION_DEAD static char const* const stringBase_80C49DD8 = "KEY_JAIL_01";
SECTION_DEAD static char const* const stringBase_80C49DE4 = "KEY_JAIL_WOLF_01";
SECTION_DEAD static char const* const stringBase_80C49DF5 = "DEFAULT_BS_SHUTTER_L3_F";
#pragma pop

/* 80C49E80-80C49E94 -00001 0014+00 3/4 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName[5] = {
    (void*)&d_a_obj_kshutter__stringBase0,
    (void*)&d_a_obj_kshutter__stringBase0,
    (void*)(((char*)&d_a_obj_kshutter__stringBase0) + 0x9),
    (void*)(((char*)&d_a_obj_kshutter__stringBase0) + 0x13),
    (void*)(((char*)&d_a_obj_kshutter__stringBase0) + 0x1D),
};

/* 80C49E94-80C49EBC -00001 0028+00 1/2 0/0 0/0 .data            l_anmName */
SECTION_DATA static void* l_anmName[10] = {
    (void*)(((char*)&d_a_obj_kshutter__stringBase0) + 0x27),
    (void*)(((char*)&d_a_obj_kshutter__stringBase0) + 0x36),
    (void*)(((char*)&d_a_obj_kshutter__stringBase0) + 0x27),
    (void*)(((char*)&d_a_obj_kshutter__stringBase0) + 0x36),
    (void*)(((char*)&d_a_obj_kshutter__stringBase0) + 0x48),
    (void*)(((char*)&d_a_obj_kshutter__stringBase0) + 0x57),
    (void*)NULL,
    (void*)NULL,
    (void*)(((char*)&d_a_obj_kshutter__stringBase0) + 0x69),
    (void*)(((char*)&d_a_obj_kshutter__stringBase0) + 0x69),
};

/* 80C49EBC-80C49EE4 -00001 0028+00 1/1 0/0 0/0 .data            l_eventName */
SECTION_DATA static void* l_eventName[10] = {
    (void*)(((char*)&d_a_obj_kshutter__stringBase0) + 0x77),
    (void*)(((char*)&d_a_obj_kshutter__stringBase0) + 0x83),
    (void*)(((char*)&d_a_obj_kshutter__stringBase0) + 0x77),
    (void*)(((char*)&d_a_obj_kshutter__stringBase0) + 0x83),
    (void*)(((char*)&d_a_obj_kshutter__stringBase0) + 0x94),
    (void*)(((char*)&d_a_obj_kshutter__stringBase0) + 0xA0),
    (void*)(((char*)&d_a_obj_kshutter__stringBase0) + 0xB1),
    (void*)(((char*)&d_a_obj_kshutter__stringBase0) + 0xB1),
    (void*)NULL,
    (void*)NULL,
};

/* 80C47C14-80C47E54 0001D4 0240+00 1/0 0/0 0/0 .text            Create__12daObjKshtr_cFv */
void daObjKshtr_c::Create() {
    // NONMATCHING
}

/* 80C47E54-80C47EA8 000414 0054+00 4/4 0/0 0/0 .text            offDzb__12daObjKshtr_cFv */
void daObjKshtr_c::offDzb() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C49D10-80C49D14 000068 0004+00 4/8 0/0 0/0 .rodata          @3842 */
SECTION_RODATA static f32 const lit_3842 = 1.0f;
COMPILER_STRIP_GATE(0x80C49D10, &lit_3842);

/* 80C49D44-80C49D44 00009C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C49E0D = "DoorY00";
SECTION_DEAD static char const* const stringBase_80C49E15 = "DoorT00";
SECTION_DEAD static char const* const stringBase_80C49E1D = "WAIT";
SECTION_DEAD static char const* const stringBase_80C49E22 = "ADJUSTMENT";
SECTION_DEAD static char const* const stringBase_80C49E2D = "UNLOCK";
SECTION_DEAD static char const* const stringBase_80C49E34 = "OPEN";
SECTION_DEAD static char const* const stringBase_80C49E39 = "PLY_NODISP";
SECTION_DEAD static char const* const stringBase_80C49E44 = "PLY_DISP";
#pragma pop

/* 80C49EE4-80C49EF8 -00001 0014+00 3/4 0/0 0/0 .data            l_anmArcName */
SECTION_DATA static void* l_anmArcName[5] = {
    (void*)(((char*)&d_a_obj_kshutter__stringBase0) + 0xC9),
    (void*)(((char*)&d_a_obj_kshutter__stringBase0) + 0xC9),
    (void*)(((char*)&d_a_obj_kshutter__stringBase0) + 0xD1),
    (void*)NULL,
    (void*)(((char*)&d_a_obj_kshutter__stringBase0) + 0x1D),
};

/* 80C49EF8-80C49F04 -00001 000C+00 0/1 0/0 0/0 .data            @3932 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3932[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)phase_0__12daObjKshtr_cFv,
};
#pragma pop

/* 80C49F04-80C49F10 -00001 000C+00 0/1 0/0 0/0 .data            @3933 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3933[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)phase_1__12daObjKshtr_cFv,
};
#pragma pop

/* 80C49F10-80C49F1C -00001 000C+00 0/1 0/0 0/0 .data            @3934 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3934[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)phase_2__12daObjKshtr_cFv,
};
#pragma pop

/* 80C49F1C-80C49F40 0000BC 0024+00 0/1 0/0 0/0 .data            l_ct_func$3931 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_ct_func[36] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80C49F40-80C49F4C -00001 000C+00 0/1 0/0 0/0 .data            @3942 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3942[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionWaitEvent__12daObjKshtr_cFv,
};
#pragma pop

/* 80C49F4C-80C49F58 -00001 000C+00 0/1 0/0 0/0 .data            @3943 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3943[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionEvent__12daObjKshtr_cFv,
};
#pragma pop

/* 80C49F58-80C49F64 -00001 000C+00 0/1 0/0 0/0 .data            @3944 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3944[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionDead__12daObjKshtr_cFv,
};
#pragma pop

/* 80C49F64-80C49F88 000104 0024+00 0/1 0/0 0/0 .data            l_func$3941 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_func_3941[36] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80C49F88-80C49F94 -00001 000C+00 0/1 0/0 0/0 .data            @3952 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3952[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionWaitEvent2__12daObjKshtr_cFv,
};
#pragma pop

/* 80C49F94-80C49FA0 -00001 000C+00 0/1 0/0 0/0 .data            @3953 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3953[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionEvent2__12daObjKshtr_cFv,
};
#pragma pop

/* 80C49FA0-80C49FAC -00001 000C+00 0/1 0/0 0/0 .data            @3954 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3954[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionDead2__12daObjKshtr_cFv,
};
#pragma pop

/* 80C49FAC-80C49FB8 -00001 000C+00 0/1 0/0 0/0 .data            @3955 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3955[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionOpen__12daObjKshtr_cFv,
};
#pragma pop

/* 80C49FB8-80C49FE8 000158 0030+00 0/1 0/0 0/0 .data            l_func$3951 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_func_3951[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80C49FE8-80C4A000 -00001 0018+00 1/1 0/0 0/0 .data            action_table$4080 */
SECTION_DATA static void* action_table[6] = {
    (void*)(((char*)&d_a_obj_kshutter__stringBase0) + 0xD9),
    (void*)(((char*)&d_a_obj_kshutter__stringBase0) + 0xDE),
    (void*)(((char*)&d_a_obj_kshutter__stringBase0) + 0xE9),
    (void*)(((char*)&d_a_obj_kshutter__stringBase0) + 0xF0),
    (void*)(((char*)&d_a_obj_kshutter__stringBase0) + 0xF5),
    (void*)(((char*)&d_a_obj_kshutter__stringBase0) + 0x100),
};

/* 80C4A000-80C4A00C -00001 000C+00 0/1 0/0 0/0 .data            @4363 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4363[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoJail1__12daObjKshtr_cFv,
};
#pragma pop

/* 80C4A00C-80C4A018 -00001 000C+00 0/1 0/0 0/0 .data            @4364 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4364[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoJail2__12daObjKshtr_cFv,
};
#pragma pop

/* 80C4A018-80C4A030 0001B8 0018+00 0/1 0/0 0/0 .data            l_demoProc$4362 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_demoProc[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80C4A030-80C4A03C -00001 000C+00 0/1 0/0 0/0 .data            @4368 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4368[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoJail11__12daObjKshtr_cFv,
};
#pragma pop

/* 80C4A03C-80C4A048 -00001 000C+00 0/1 0/0 0/0 .data            @4369 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4369[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demoJail21__12daObjKshtr_cFv,
};
#pragma pop

/* 80C4A048-80C4A060 0001E8 0018+00 0/1 0/0 0/0 .data            l_demoProc2$4367 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_demoProc2[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80C4A060-80C4A080 -00001 0020+00 1/0 0/0 0/0 .data            daObjKshtr_METHODS */
static actor_method_class daObjKshtr_METHODS = {
    (process_method_func)daObjKshtr_create1st__FP12daObjKshtr_c,
    (process_method_func)daObjKshtr_MoveBGDelete__FP12daObjKshtr_c,
    (process_method_func)daObjKshtr_MoveBGExecute__FP12daObjKshtr_c,
    0,
    (process_method_func)daObjKshtr_MoveBGDraw__FP12daObjKshtr_c,
};

/* 80C4A080-80C4A0B0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Kshutter */
extern actor_process_profile_definition g_profile_Obj_Kshutter = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Kshutter,      // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjKshtr_c),   // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  443,                    // mPriority
  &daObjKshtr_METHODS,    // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80C4A0B0-80C4A0BC 000250 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80C47EA8-80C48008 000468 0160+00 1/0 0/0 0/0 .text            CreateHeap__12daObjKshtr_cFv */
void daObjKshtr_c::CreateHeap() {
    // NONMATCHING
}

/* 80C48008-80C48050 0005C8 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C49D14-80C49D18 00006C 0004+00 1/1 0/0 0/0 .rodata          @3877 */
SECTION_RODATA static f32 const lit_3877 = 35.0f;
COMPILER_STRIP_GATE(0x80C49D14, &lit_3877);

/* 80C48050-80C48148 000610 00F8+00 1/1 0/0 0/0 .text            initKey__12daObjKshtr_cFv */
void daObjKshtr_c::initKey() {
    // NONMATCHING
}

/* 80C48148-80C4827C 000708 0134+00 1/0 0/0 0/0 .text            phase_0__12daObjKshtr_cFv */
void daObjKshtr_c::phase_0() {
    // NONMATCHING
}

/* 80C4827C-80C48320 00083C 00A4+00 1/0 0/0 0/0 .text            phase_1__12daObjKshtr_cFv */
void daObjKshtr_c::phase_1() {
    // NONMATCHING
}

/* 80C48320-80C48328 0008E0 0008+00 1/0 0/0 0/0 .text            phase_2__12daObjKshtr_cFv */
s32 daObjKshtr_c::phase_2() {
    return 4;
}

/* 80C48328-80C483CC 0008E8 00A4+00 1/1 0/0 0/0 .text            create1st__12daObjKshtr_cFv */
void daObjKshtr_c::create1st() {
    // NONMATCHING
}

/* 80C483CC-80C48470 00098C 00A4+00 1/1 0/0 0/0 .text            event_proc_call__12daObjKshtr_cFv
 */
void daObjKshtr_c::event_proc_call() {
    // NONMATCHING
}

/* 80C48470-80C4852C 000A30 00BC+00 1/1 0/0 0/0 .text            event_proc_call2__12daObjKshtr_cFv
 */
void daObjKshtr_c::event_proc_call2() {
    // NONMATCHING
}

/* 80C4852C-80C48590 000AEC 0064+00 1/0 0/0 0/0 .text            Execute__12daObjKshtr_cFPPA3_A4_f
 */
void daObjKshtr_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C49D18-80C49D1C 000070 0004+00 0/1 0/0 0/0 .rodata          @4060 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4060 = 62500.0f;
COMPILER_STRIP_GATE(0x80C49D18, &lit_4060);
#pragma pop

/* 80C49D1C-80C49D20 000074 0004+00 0/1 0/0 0/0 .rodata          @4061 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4061 = 12100.0f;
COMPILER_STRIP_GATE(0x80C49D1C, &lit_4061);
#pragma pop

/* 80C48590-80C48708 000B50 0178+00 1/1 0/0 0/0 .text            checkArea__12daObjKshtr_cFv */
void daObjKshtr_c::checkArea() {
    // NONMATCHING
}

/* 80C48708-80C48798 000CC8 0090+00 1/1 0/0 0/0 .text            checkOpen__12daObjKshtr_cFv */
void daObjKshtr_c::checkOpen() {
    // NONMATCHING
}

/* 80C48798-80C487E0 000D58 0048+00 1/1 0/0 0/0 .text            getDemoAction__12daObjKshtr_cFv */
void daObjKshtr_c::getDemoAction() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C49D44-80C49D44 00009C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C49E4D = "JAIL_DOOR";
SECTION_DEAD static char const* const stringBase_80C49E57 = "Timer";
#pragma pop

/* 80C487E0-80C489E0 000DA0 0200+00 1/1 0/0 0/0 .text            demoProc2__12daObjKshtr_cFv */
void daObjKshtr_c::demoProc2() {
    // NONMATCHING
}

/* 80C489E0-80C48AC8 000FA0 00E8+00 1/1 0/0 0/0 .text            adjustmentProc__12daObjKshtr_cFv */
void daObjKshtr_c::adjustmentProc() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C49D20-80C49D24 000078 0004+00 2/6 0/0 0/0 .rodata          @4190 */
SECTION_RODATA static f32 const lit_4190 = -1.0f;
COMPILER_STRIP_GATE(0x80C49D20, &lit_4190);

/* 80C48AC8-80C48B84 001088 00BC+00 1/1 0/0 0/0 .text            keyUnlockInit__12daObjKshtr_cFv */
void daObjKshtr_c::keyUnlockInit() {
    // NONMATCHING
}

/* 80C48B84-80C48BD8 001144 0054+00 1/1 0/0 0/0 .text            keyUnlock__12daObjKshtr_cFv */
void daObjKshtr_c::keyUnlock() {
    // NONMATCHING
}

/* 80C48BD8-80C48D0C 001198 0134+00 2/2 0/0 0/0 .text            openInit__12daObjKshtr_cFv */
void daObjKshtr_c::openInit() {
    // NONMATCHING
}

/* 80C48D0C-80C48D80 0012CC 0074+00 2/2 0/0 0/0 .text            openProc__12daObjKshtr_cFv */
void daObjKshtr_c::openProc() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C49D24-80C49D28 00007C 0004+00 0/2 0/0 0/0 .rodata          @4300 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4300 = 17.0f;
COMPILER_STRIP_GATE(0x80C49D24, &lit_4300);
#pragma pop

/* 80C49D28-80C49D2C 000080 0004+00 0/1 0/0 0/0 .rodata          @4301 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4301 = 18.0f;
COMPILER_STRIP_GATE(0x80C49D28, &lit_4301);
#pragma pop

/* 80C48D80-80C48F94 001340 0214+00 1/1 0/0 0/0 .text            openProc_type1__12daObjKshtr_cFv */
void daObjKshtr_c::openProc_type1() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C49D2C-80C49D38 000084 000A+02 0/1 0/0 0/0 .rodata          l_eff_id$4307 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_eff_id[10 + 2 /* padding */] = {
    0x87,
    0x62,
    0x87,
    0x63,
    0x87,
    0x64,
    0x87,
    0x65,
    0x87,
    0x66,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C49D2C, &l_eff_id);
#pragma pop

/* 80C49D38-80C49D3C 000090 0004+00 0/1 0/0 0/0 .rodata          @4350 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4350 = 20.0f;
COMPILER_STRIP_GATE(0x80C49D38, &lit_4350);
#pragma pop

/* 80C48F94-80C490F8 001554 0164+00 1/1 0/0 0/0 .text            openProc_type2__12daObjKshtr_cFv */
void daObjKshtr_c::openProc_type2() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C49D3C-80C49D40 000094 0004+00 0/1 0/0 0/0 .rodata          @4357 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4357 = 30.0f;
COMPILER_STRIP_GATE(0x80C49D3C, &lit_4357);
#pragma pop

/* 80C49D40-80C49D44 000098 0004+00 0/1 0/0 0/0 .rodata          @4358 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4358 = 4.0f;
COMPILER_STRIP_GATE(0x80C49D40, &lit_4358);
#pragma pop

/* 80C490F8-80C49158 0016B8 0060+00 1/1 0/0 0/0 .text openProc_typeL3Boss__12daObjKshtr_cFv */
void daObjKshtr_c::openProc_typeL3Boss() {
    // NONMATCHING
}

/* 80C49158-80C4925C 001718 0104+00 1/1 0/0 0/0 .text            demoProc__12daObjKshtr_cFv */
void daObjKshtr_c::demoProc() {
    // NONMATCHING
}

/* 80C4925C-80C494A8 00181C 024C+00 1/0 0/0 0/0 .text            demoJail1__12daObjKshtr_cFv */
void daObjKshtr_c::demoJail1() {
    // NONMATCHING
}

/* 80C494A8-80C495A4 001A68 00FC+00 1/0 0/0 0/0 .text            demoJail2__12daObjKshtr_cFv */
void daObjKshtr_c::demoJail2() {
    // NONMATCHING
}

/* 80C495A4-80C496C8 001B64 0124+00 1/0 0/0 0/0 .text            demoJail11__12daObjKshtr_cFv */
void daObjKshtr_c::demoJail11() {
    // NONMATCHING
}

/* 80C496C8-80C496D0 001C88 0008+00 1/0 0/0 0/0 .text            demoJail21__12daObjKshtr_cFv */
bool daObjKshtr_c::demoJail21() {
    return true;
}

/* 80C496D0-80C497A0 001C90 00D0+00 4/4 0/0 0/0 .text            anmInit__12daObjKshtr_cFv */
void daObjKshtr_c::anmInit() {
    // NONMATCHING
}

/* 80C497A0-80C49880 001D60 00E0+00 1/0 0/0 0/0 .text            actionWaitEvent__12daObjKshtr_cFv
 */
void daObjKshtr_c::actionWaitEvent() {
    // NONMATCHING
}

/* 80C49880-80C49914 001E40 0094+00 1/0 0/0 0/0 .text            actionEvent__12daObjKshtr_cFv */
void daObjKshtr_c::actionEvent() {
    // NONMATCHING
}

/* 80C49914-80C49918 001ED4 0004+00 1/0 0/0 0/0 .text            actionDead__12daObjKshtr_cFv */
void daObjKshtr_c::actionDead() {
    /* empty function */
}

/* 80C49918-80C499CC 001ED8 00B4+00 1/0 0/0 0/0 .text            actionWaitEvent2__12daObjKshtr_cFv
 */
void daObjKshtr_c::actionWaitEvent2() {
    // NONMATCHING
}

/* 80C499CC-80C49A08 001F8C 003C+00 1/0 0/0 0/0 .text            actionOpen__12daObjKshtr_cFv */
void daObjKshtr_c::actionOpen() {
    // NONMATCHING
}

/* 80C49A08-80C49A70 001FC8 0068+00 1/0 0/0 0/0 .text            actionEvent2__12daObjKshtr_cFv */
void daObjKshtr_c::actionEvent2() {
    // NONMATCHING
}

/* 80C49A70-80C49A74 002030 0004+00 1/0 0/0 0/0 .text            actionDead2__12daObjKshtr_cFv */
void daObjKshtr_c::actionDead2() {
    /* empty function */
}

/* 80C49A74-80C49B4C 002034 00D8+00 1/0 0/0 0/0 .text            Draw__12daObjKshtr_cFv */
void daObjKshtr_c::Draw() {
    // NONMATCHING
}

/* 80C49B4C-80C49BB8 00210C 006C+00 1/0 0/0 0/0 .text            Delete__12daObjKshtr_cFv */
void daObjKshtr_c::Delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C4A0BC-80C4A0E4 00025C 0028+00 1/1 0/0 0/0 .data            __vt__12daObjKshtr_c */
SECTION_DATA extern void* __vt__12daObjKshtr_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__12daObjKshtr_cFv,
    (void*)Create__12daObjKshtr_cFv,
    (void*)Execute__12daObjKshtr_cFPPA3_A4_f,
    (void*)Draw__12daObjKshtr_cFv,
    (void*)Delete__12daObjKshtr_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80C49BB8-80C49C18 002178 0060+00 1/0 0/0 0/0 .text daObjKshtr_create1st__FP12daObjKshtr_c */
static void daObjKshtr_create1st(daObjKshtr_c* param_0) {
    // NONMATCHING
}

/* 80C49C18-80C49C38 0021D8 0020+00 1/0 0/0 0/0 .text daObjKshtr_MoveBGDelete__FP12daObjKshtr_c */
static void daObjKshtr_MoveBGDelete(daObjKshtr_c* param_0) {
    // NONMATCHING
}

/* 80C49C38-80C49C58 0021F8 0020+00 1/0 0/0 0/0 .text daObjKshtr_MoveBGExecute__FP12daObjKshtr_c
 */
static void daObjKshtr_MoveBGExecute(daObjKshtr_c* param_0) {
    // NONMATCHING
}

/* 80C49C58-80C49C84 002218 002C+00 1/0 0/0 0/0 .text daObjKshtr_MoveBGDraw__FP12daObjKshtr_c */
static void daObjKshtr_MoveBGDraw(daObjKshtr_c* param_0) {
    // NONMATCHING
}

/* 80C49C84-80C49CA0 002244 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<Uc>__FPUc */
extern "C" void func_80C49C84(void* _this, u8* param_0) {
    // NONMATCHING
}

/* 80C49D44-80C49D44 00009C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
