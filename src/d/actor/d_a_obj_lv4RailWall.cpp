/**
 * @file d_a_obj_lv4RailWall.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_lv4RailWall.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" static void s_BossSearch__FPvPv();
extern "C" void initBaseMtx__14daObjLv4Wall_cFv();
extern "C" void setBaseMtx__14daObjLv4Wall_cFv();
extern "C" void Create__14daObjLv4Wall_cFv();
extern "C" void CreateHeap__14daObjLv4Wall_cFv();
extern "C" void create1st__14daObjLv4Wall_cFv();
extern "C" void Execute__14daObjLv4Wall_cFPPA3_A4_f();
extern "C" void action__14daObjLv4Wall_cFv();
extern "C" void mode_init_wait__14daObjLv4Wall_cFv();
extern "C" void mode_wait__14daObjLv4Wall_cFv();
extern "C" void mode_init_move__14daObjLv4Wall_cFv();
extern "C" void mode_move__14daObjLv4Wall_cFv();
extern "C" void mode_init_dead__14daObjLv4Wall_cFv();
extern "C" void mode_dead__14daObjLv4Wall_cFv();
extern "C" void eventStart__14daObjLv4Wall_cFv();
extern "C" void Draw__14daObjLv4Wall_cFv();
extern "C" void Delete__14daObjLv4Wall_cFv();
extern "C" static void daObjLv4Wall_create1st__FP14daObjLv4Wall_c();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" static void daObjLv4Wall_MoveBGDelete__FP14daObjLv4Wall_c();
extern "C" static void daObjLv4Wall_MoveBGExecute__FP14daObjLv4Wall_c();
extern "C" static void daObjLv4Wall_MoveBGDraw__FP14daObjLv4Wall_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__17dEvLib_callback_cFv();
extern "C" bool eventStart__17dEvLib_callback_cFv();
extern "C" bool eventRun__17dEvLib_callback_cFv();
extern "C" bool eventEnd__17dEvLib_callback_cFv();
extern "C" void __dt__14daObjLv4Wall_cFv();
extern "C" static void func_80C61B10();
extern "C" static void func_80C61B18();
extern "C" static void func_80C61B20();
extern "C" static void func_80C61B28();
extern "C" extern char const* const d_a_obj_lv4RailWall__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcSch_JudgeForPName__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void isDungeonItem__12dSv_memBit_cCFi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void eventUpdate__17dEvLib_callback_cFv();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void StartQuake__12dVibration_cFii4cXyz();
extern "C" void StopQuake__12dVibration_cFi();
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void cLib_chaseF__FPfff();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_29();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__16dBgS_MoveBgActor[10];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" extern u8 data_80C61D38[4];

//
// Declarations:
//

/* 80C60A78-80C60AC4 000078 004C+00 2/2 0/0 0/0 .text            s_BossSearch__FPvPv */
static void s_BossSearch(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80C60AC4-80C60B00 0000C4 003C+00 1/1 0/0 0/0 .text            initBaseMtx__14daObjLv4Wall_cFv */
void daObjLv4Wall_c::initBaseMtx() {
    // NONMATCHING
}

/* 80C60B00-80C60B7C 000100 007C+00 2/2 0/0 0/0 .text            setBaseMtx__14daObjLv4Wall_cFv */
void daObjLv4Wall_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C61B38-80C61B3C 000000 0004+00 2/2 0/0 0/0 .rodata          @3709 */
SECTION_RODATA static f32 const lit_3709 = 3375.0f;
COMPILER_STRIP_GATE(0x80C61B38, &lit_3709);

/* 80C61B3C-80C61B40 000004 0004+00 2/4 0/0 0/0 .rodata          @3710 */
SECTION_RODATA static u8 const lit_3710[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C61B3C, &lit_3710);

/* 80C61B40-80C61B44 000008 0004+00 1/2 0/0 0/0 .rodata          @3711 */
SECTION_RODATA static f32 const lit_3711 = 1700.0f;
COMPILER_STRIP_GATE(0x80C61B40, &lit_3711);

/* 80C60B7C-80C60CD0 00017C 0154+00 1/0 0/0 0/0 .text            Create__14daObjLv4Wall_cFv */
void daObjLv4Wall_c::Create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C61BB0-80C61BB0 000078 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C61BB0 = "P_L4Rwall";
#pragma pop

/* 80C61BDC-80C61BE0 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_lv4RailWall__stringBase0;

/* 80C60CD0-80C60D40 0002D0 0070+00 1/0 0/0 0/0 .text            CreateHeap__14daObjLv4Wall_cFv */
void daObjLv4Wall_c::CreateHeap() {
    // NONMATCHING
}

/* 80C60D40-80C60DC4 000340 0084+00 1/1 0/0 0/0 .text            create1st__14daObjLv4Wall_cFv */
void daObjLv4Wall_c::create1st() {
    // NONMATCHING
}

/* 80C60DC4-80C60E90 0003C4 00CC+00 1/0 0/0 0/0 .text            Execute__14daObjLv4Wall_cFPPA3_A4_f
 */
void daObjLv4Wall_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C61BE0-80C61BEC -00001 000C+00 0/1 0/0 0/0 .data            @3758 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3758[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)mode_wait__14daObjLv4Wall_cFv,
};
#pragma pop

/* 80C61BEC-80C61BF8 -00001 000C+00 0/1 0/0 0/0 .data            @3759 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3759[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)mode_move__14daObjLv4Wall_cFv,
};
#pragma pop

/* 80C61BF8-80C61C04 -00001 000C+00 0/1 0/0 0/0 .data            @3760 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3760[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)mode_dead__14daObjLv4Wall_cFv,
};
#pragma pop

/* 80C61C04-80C61C28 000048 0024+00 0/1 0/0 0/0 .data            l_func$3757 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_func[36] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80C60E90-80C60F4C 000490 00BC+00 1/1 0/0 0/0 .text            action__14daObjLv4Wall_cFv */
void daObjLv4Wall_c::action() {
    // NONMATCHING
}

/* 80C60F4C-80C60F58 00054C 000C+00 1/1 0/0 0/0 .text            mode_init_wait__14daObjLv4Wall_cFv
 */
void daObjLv4Wall_c::mode_init_wait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C61B44-80C61B48 00000C 0004+00 1/1 0/0 0/0 .rodata          @3782 */
SECTION_RODATA static f32 const lit_3782 = 4096.0f;
COMPILER_STRIP_GATE(0x80C61B44, &lit_3782);

/* 80C61B48-80C61B50 000010 0004+04 1/1 0/0 0/0 .rodata          @3783 */
SECTION_RODATA static f32 const lit_3783[1 + 1 /* padding */] = {
    7.0f / 10.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80C61B48, &lit_3783);

/* 80C61B50-80C61B58 000018 0008+00 1/1 0/0 0/0 .rodata          @3785 */
SECTION_RODATA static u8 const lit_3785[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C61B50, &lit_3785);

/* 80C60F58-80C61004 000558 00AC+00 1/0 0/0 0/0 .text            mode_wait__14daObjLv4Wall_cFv */
void daObjLv4Wall_c::mode_wait() {
    // NONMATCHING
}

/* 80C61004-80C61068 000604 0064+00 2/2 0/0 0/0 .text            mode_init_move__14daObjLv4Wall_cFv
 */
void daObjLv4Wall_c::mode_init_move() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C61B58-80C61B9C 000020 0044+00 0/1 0/0 0/0 .rodata          l_spd_tbl$3801 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_spd_tbl[68] = {
    0x00, 0x00, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x3F, 0xC0, 0x00, 0x00, 0x40, 0x0C,
    0xCC, 0xCD, 0x40, 0x6C, 0xCC, 0xCD, 0x40, 0xC0, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00,
    0x41, 0x60, 0x00, 0x00, 0x41, 0x88, 0x00, 0x00, 0x41, 0x88, 0x00, 0x00, 0x41, 0x70,
    0x00, 0x00, 0x41, 0x48, 0x00, 0x00, 0x41, 0x18, 0x00, 0x00, 0x40, 0xC0, 0x00, 0x00,
    0x40, 0x40, 0x00, 0x00, 0x40, 0x40, 0x00, 0x00, 0x40, 0x40, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C61B58, &l_spd_tbl);
#pragma pop

/* 80C61B9C-80C61BA0 000064 0004+00 0/1 0/0 0/0 .rodata          @3881 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3881 = 30.0f;
COMPILER_STRIP_GATE(0x80C61B9C, &lit_3881);
#pragma pop

/* 80C61BA0-80C61BA4 000068 0004+00 1/2 0/0 0/0 .rodata          @3882 */
SECTION_RODATA static f32 const lit_3882 = 1.0f;
COMPILER_STRIP_GATE(0x80C61BA0, &lit_3882);

/* 80C61BA4-80C61BA8 00006C 0004+00 0/1 0/0 0/0 .rodata          @3883 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3883 = 4.0f;
COMPILER_STRIP_GATE(0x80C61BA4, &lit_3883);
#pragma pop

/* 80C61BA8-80C61BAC 000070 0004+00 0/1 0/0 0/0 .rodata          @3884 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3884 = 10.0f;
COMPILER_STRIP_GATE(0x80C61BA8, &lit_3884);
#pragma pop

/* 80C61BAC-80C61BB0 000074 0004+00 0/1 0/0 0/0 .rodata          @3885 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3885 = -1.0f;
COMPILER_STRIP_GATE(0x80C61BAC, &lit_3885);
#pragma pop

/* 80C61068-80C613C0 000668 0358+00 1/0 0/0 0/0 .text            mode_move__14daObjLv4Wall_cFv */
void daObjLv4Wall_c::mode_move() {
    // NONMATCHING
}

/* 80C613C0-80C613CC 0009C0 000C+00 2/2 0/0 0/0 .text            mode_init_dead__14daObjLv4Wall_cFv
 */
void daObjLv4Wall_c::mode_init_dead() {
    // NONMATCHING
}

/* 80C613CC-80C613D0 0009CC 0004+00 1/0 0/0 0/0 .text            mode_dead__14daObjLv4Wall_cFv */
void daObjLv4Wall_c::mode_dead() {
    /* empty function */
}

/* 80C613D0-80C6143C 0009D0 006C+00 2/1 0/0 0/0 .text            eventStart__14daObjLv4Wall_cFv */
void daObjLv4Wall_c::eventStart() {
    // NONMATCHING
}

/* 80C6143C-80C614E0 000A3C 00A4+00 1/0 0/0 0/0 .text            Draw__14daObjLv4Wall_cFv */
void daObjLv4Wall_c::Draw() {
    // NONMATCHING
}

/* 80C614E0-80C61514 000AE0 0034+00 1/0 0/0 0/0 .text            Delete__14daObjLv4Wall_cFv */
void daObjLv4Wall_c::Delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C61C28-80C61C48 -00001 0020+00 1/0 0/0 0/0 .data            daObjLv4Wall_METHODS */
static actor_method_class daObjLv4Wall_METHODS = {
    (process_method_func)daObjLv4Wall_create1st__FP14daObjLv4Wall_c,
    (process_method_func)daObjLv4Wall_MoveBGDelete__FP14daObjLv4Wall_c,
    (process_method_func)daObjLv4Wall_MoveBGExecute__FP14daObjLv4Wall_c,
    0,
    (process_method_func)daObjLv4Wall_MoveBGDraw__FP14daObjLv4Wall_c,
};

/* 80C61C48-80C61C78 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv4RailWall */
extern actor_process_profile_definition g_profile_Obj_Lv4RailWall = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Lv4RailWall,   // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjLv4Wall_c), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  574,                    // mPriority
  &daObjLv4Wall_METHODS,  // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80C61C78-80C61C84 0000BC 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80C61C84-80C61C90 0000C8 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80C61C90-80C61C9C 0000D4 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80C61C9C-80C61CA8 0000E0 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80C61CA8-80C61CB4 0000EC 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80C61CB4-80C61CD8 0000F8 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C61B28,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C61B20,
};

/* 80C61CD8-80C61CF0 00011C 0018+00 3/3 0/0 0/0 .data            __vt__17dEvLib_callback_c */
SECTION_DATA extern void* __vt__17dEvLib_callback_c[6] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17dEvLib_callback_cFv,
    (void*)eventStart__17dEvLib_callback_cFv,
    (void*)eventRun__17dEvLib_callback_cFv,
    (void*)eventEnd__17dEvLib_callback_cFv,
};

/* 80C61CF0-80C61D38 000134 0048+00 2/2 0/0 0/0 .data            __vt__14daObjLv4Wall_c */
SECTION_DATA extern void* __vt__14daObjLv4Wall_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__14daObjLv4Wall_cFv,
    (void*)Create__14daObjLv4Wall_cFv,
    (void*)Execute__14daObjLv4Wall_cFPPA3_A4_f,
    (void*)Draw__14daObjLv4Wall_cFv,
    (void*)Delete__14daObjLv4Wall_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C61B18,
    (void*)func_80C61B10,
    (void*)eventRun__17dEvLib_callback_cFv,
    (void*)eventEnd__17dEvLib_callback_cFv,
    (void*)__dt__14daObjLv4Wall_cFv,
    (void*)eventStart__14daObjLv4Wall_cFv,
};

/* 80C61514-80C61660 000B14 014C+00 1/0 0/0 0/0 .text daObjLv4Wall_create1st__FP14daObjLv4Wall_c
 */
static void daObjLv4Wall_create1st(daObjLv4Wall_c* param_0) {
    // NONMATCHING
}

/* 80C61660-80C616A8 000C60 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80C616A8-80C616F0 000CA8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80C616F0-80C6174C 000CF0 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80C6174C-80C617BC 000D4C 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80C617BC-80C6182C 000DBC 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80C6182C-80C6184C 000E2C 0020+00 1/0 0/0 0/0 .text
 * daObjLv4Wall_MoveBGDelete__FP14daObjLv4Wall_c                */
static void daObjLv4Wall_MoveBGDelete(daObjLv4Wall_c* param_0) {
    // NONMATCHING
}

/* 80C6184C-80C6186C 000E4C 0020+00 1/0 0/0 0/0 .text
 * daObjLv4Wall_MoveBGExecute__FP14daObjLv4Wall_c               */
static void daObjLv4Wall_MoveBGExecute(daObjLv4Wall_c* param_0) {
    // NONMATCHING
}

/* 80C6186C-80C61898 000E6C 002C+00 1/0 0/0 0/0 .text daObjLv4Wall_MoveBGDraw__FP14daObjLv4Wall_c
 */
static void daObjLv4Wall_MoveBGDraw(daObjLv4Wall_c* param_0) {
    // NONMATCHING
}

/* 80C61898-80C618E0 000E98 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80C618E0-80C61928 000EE0 0048+00 1/0 0/0 0/0 .text            __dt__17dEvLib_callback_cFv */
// dEvLib_callback_c::~dEvLib_callback_c() {
extern "C" void __dt__17dEvLib_callback_cFv() {
    // NONMATCHING
}

/* 80C61928-80C61930 000F28 0008+00 1/0 0/0 0/0 .text            eventStart__17dEvLib_callback_cFv
 */
// bool dEvLib_callback_c::eventStart() {
extern "C" bool eventStart__17dEvLib_callback_cFv() {
    return true;
}

/* 80C61930-80C61938 000F30 0008+00 2/0 0/0 0/0 .text            eventRun__17dEvLib_callback_cFv */
// bool dEvLib_callback_c::eventRun() {
extern "C" bool eventRun__17dEvLib_callback_cFv() {
    return true;
}

/* 80C61938-80C61940 000F38 0008+00 2/0 0/0 0/0 .text            eventEnd__17dEvLib_callback_cFv */
// bool dEvLib_callback_c::eventEnd() {
extern "C" bool eventEnd__17dEvLib_callback_cFv() {
    return true;
}

/* 80C61940-80C61B10 000F40 01D0+00 2/1 0/0 0/0 .text            __dt__14daObjLv4Wall_cFv */
daObjLv4Wall_c::~daObjLv4Wall_c() {
    // NONMATCHING
}

/* 80C61B10-80C61B18 001110 0008+00 1/0 0/0 0/0 .text @1440@eventStart__14daObjLv4Wall_cFv */
static void func_80C61B10() {
    // NONMATCHING
}

/* 80C61B18-80C61B20 001118 0008+00 1/0 0/0 0/0 .text            @1440@__dt__14daObjLv4Wall_cFv */
static void func_80C61B18() {
    // NONMATCHING
}

/* 80C61B20-80C61B28 001120 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80C61B20() {
    // NONMATCHING
}

/* 80C61B28-80C61B30 001128 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80C61B28() {
    // NONMATCHING
}

/* 80C61BB0-80C61BB0 000078 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
