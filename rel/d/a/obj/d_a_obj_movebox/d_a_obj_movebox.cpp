/**
 * @file d_a_obj_movebox.cpp
 *
 */

#include "rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox.h"
#include "d/d_path.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __ct__Q212daObjMovebox5Bgc_cFv();
extern "C" void __dt__4cXyzFv();
extern "C" void __ct__4cXyzFv();
extern "C" void
gnd_pos__Q212daObjMovebox5Bgc_cFPCQ212daObjMovebox5Act_cPCQ212daObjMovebox8BgcSrc_cif();
extern "C" void wrt_pos__Q212daObjMovebox5Bgc_cFRC4cXyz();
extern "C" void
wall_pos__Q212daObjMovebox5Bgc_cFPCQ212daObjMovebox5Act_cPCQ212daObjMovebox8BgcSrc_cisf();
extern "C" void proc_vertical__Q212daObjMovebox5Bgc_cFPQ212daObjMovebox5Act_c();
extern "C" void
chk_wall_pre__Q212daObjMovebox5Bgc_cFPCQ212daObjMovebox5Act_cPCQ212daObjMovebox8BgcSrc_cis();
extern "C" void
chk_wall_touch__Q212daObjMovebox5Bgc_cFPCQ212daObjMovebox5Act_cPCQ212daObjMovebox8BgcSrc_cs();
extern "C" void
chk_wall_touch2__Q212daObjMovebox5Bgc_cFPCQ212daObjMovebox5Act_cPCQ212daObjMovebox8BgcSrc_cis();
extern "C" void prm_get_swSave1__Q212daObjMovebox5Act_cCFv();
extern "C" void prmZ_init__Q212daObjMovebox5Act_cFv();
extern "C" void prmX_init__Q212daObjMovebox5Act_cFv();
extern "C" void attr__Q212daObjMovebox5Act_cCFv();
extern "C" void set_mtx__Q212daObjMovebox5Act_cFv();
extern "C" void init_mtx__Q212daObjMovebox5Act_cFv();
extern "C" void path_init__Q212daObjMovebox5Act_cFv();
extern "C" void path_save__Q212daObjMovebox5Act_cFv();
extern "C" void CreateHeap__Q212daObjMovebox5Act_cFv();
extern "C" void RideCallBack__Q212daObjMovebox5Act_cFP4dBgWP10fopAc_ac_cP10fopAc_ac_c();
extern "C" void
PPCallBack__Q212daObjMovebox5Act_cFP10fopAc_ac_cP10fopAc_ac_csQ29dBgW_Base13PushPullLabel();
extern "C" void Create__Q212daObjMovebox5Act_cFv();
extern "C" void afl_sway__Q212daObjMovebox5Act_cFv();
extern "C" void check_to_walk__Q212daObjMovebox5Act_cFv();
extern "C" void clr_moment_cnt__Q212daObjMovebox5Act_cFv();
extern "C" void chk_appear__Q212daObjMovebox5Act_cCFv();
extern "C" void eff_smoke_slip_start__Q212daObjMovebox5Act_cFv();
extern "C" void mode_wait_init__Q212daObjMovebox5Act_cFv();
extern "C" void mode_wait__Q212daObjMovebox5Act_cFv();
extern "C" void mode_walk_init__Q212daObjMovebox5Act_cFv();
extern "C" void mode_walk__Q212daObjMovebox5Act_cFv();
extern "C" void mode_afl_init__Q212daObjMovebox5Act_cFv();
extern "C" void mode_afl__Q212daObjMovebox5Act_cFv();
extern "C" void __dt__14dBgS_ObjGndChkFv();
extern "C" void sound_slip__Q212daObjMovebox5Act_cFv();
extern "C" void sound_limit__Q212daObjMovebox5Act_cFv();
extern "C" void sound_land__Q212daObjMovebox5Act_cFv();
extern "C" void vib_land__Q212daObjMovebox5Act_cFv();
extern "C" void eff_land_smoke__Q212daObjMovebox5Act_cFv();
extern "C" void Execute__Q212daObjMovebox5Act_cFPPA3_A4_f();
extern "C" void Draw__Q212daObjMovebox5Act_cFv();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" void Delete__Q212daObjMovebox5Act_cFv();
extern "C" static void func_80480920();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" static void func_80480BC0();
extern "C" static void func_80480C18();
extern "C" static void func_80480C38();
extern "C" static void func_80480C64();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void func_80480CD8(void* _this, fopAc_ac_c const*, daObjMovebox::Act_c::Prm_e,
                              daObjMovebox::Act_c::Prm_e);
extern "C" void __sinit_d_a_obj_movebox_cpp();
extern "C" void func_80480DA0();
extern "C" void __dt__11dBgS_WtrChkFv();
extern "C" void func_80480E50();
extern "C" void __ct__14dBgS_ObjGndChkFv();
extern "C" static void func_80480EE4();
extern "C" static void func_80480EEC();
extern "C" static void func_80480EF4();
extern "C" static void func_80480EFC();
extern "C" static void func_80480F04();
extern "C" static void func_80480F0C();
extern "C" u8 const M_lin5__Q212daObjMovebox5Bgc_c[80];
extern "C" u8 const M_lin20__Q212daObjMovebox5Bgc_c[368];
extern "C" void* const M_arcname__Q212daObjMovebox5Act_c[8];
extern "C" u8 const M_cyl_src__Q212daObjMovebox5Act_c[68];
extern "C" u8 const M_attr__Q212daObjMovebox5Act_c[1280];
extern "C" extern char const* const d_a_obj_movebox__stringBase0;
extern "C" u8 M_gnd_work__Q212daObjMovebox5Bgc_c[1932];
extern "C" u8 M_wrt_work__Q212daObjMovebox5Bgc_c[84];
extern "C" u8 M_wall_work__Q212daObjMovebox5Bgc_c[2576];

//
// External References:
//

extern "C" void mDoMtx_XrotS__FPA4_fs();
extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void transM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void quatM__14mDoMtx_stack_cFPC10Quaternion();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void offSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void posMoveF_stream__5daObjFP10fopAc_ac_cPC4cXyzPC4cXyzff();
extern "C" void quat_rotBaseY__5daObjFP10QuaternionRC4cXyz();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci();
extern "C" void
setModel__18dPa_modelEcallBackFP14JPABaseEmitterP12J3DModelDataRC12dKy_tevstr_cUcPvUcUc();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void dPath_GetPnt__FPC5dPathi();
extern "C" void dPath_GetRoomPath__Fii();
extern "C" void setSimple__21dDlst_shadowControl_cFP4cXyzffP4cXyzsfP9_GXTexObj();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void GetActorPointer__4cBgSCFi();
extern "C" void GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla();
extern "C" void GetPolyColor__4dBgSFRC13cBgS_PolyInfo();
extern "C" void SplGrpChk__4dBgSFP14dBgS_SplGrpChk();
extern "C" void dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void dBgS_MoveBGProc_Trans__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void RideCallBack__4dBgSFRC13cBgS_PolyInfoP10fopAc_ac_c();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void __ct__14dBgS_ObjLinChkFv();
extern "C" void __dt__14dBgS_ObjLinChkFv();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void Set__14dBgS_SplGrpChkFR4cXyzf();
extern "C" void __dt__14dBgS_SplGrpChkFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__11dBgS_WtrChkFv();
extern "C" void Move__4dBgWFv();
extern "C" void GetAc__22dCcD_GAtTgCoCommonBaseFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitGObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void MoveCTg__8dCcD_CylFR4cXyz();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_pol_sound_get__FPC13cBgS_PolyInfo();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void cM_rnd__Fv();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_15();
extern "C" void _savegpr_20();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_15();
extern "C" void _restgpr_20();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" f32 Zero__4cXyz[3];
extern "C" u8 BaseY__4cXyz[12];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mEcallback__18dPa_modelEcallBack[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void* M_dir_base__Q212daObjMovebox5Act_c[2];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80480F28-80480F78 000000 0050+00 14/14 0/0 0/0 .rodata          M_lin5__Q212daObjMovebox5Bgc_c */
SECTION_RODATA const daObjMovebox::BgcSrc_c daObjMovebox::Bgc_c::M_lin5[] = {
    {0.0f, 0.0f, 0.0f, 0.0f},   {-0.5f, -0.5f, 1.0f, 1.0f}, {0.5f, -0.5f, -1.0f, 1.0f},
    {0.5f, 0.5f, -1.0f, -1.0f}, {-0.5f, 0.5f, 1.0f, -1.0f},
};
COMPILER_STRIP_GATE(0x80480F28, &daObjMovebox::Bgc_c::M_lin5);

/* 80480F78-804810E8 000050 0170+00 0/4 0/0 0/0 .rodata          M_lin20__Q212daObjMovebox5Bgc_c */
#pragma push
#pragma force_active on
SECTION_RODATA const daObjMovebox::BgcSrc_c daObjMovebox::Bgc_c::M_lin20[] = {
    {0.0f, 0.0f, 0.0f, 0.0f},    {-0.25f, -0.25f, 0.0f, 0.0f}, {-0.5f, -0.5f, 1.0f, 1.0f},
    {0.0f, -0.5f, -1.0f, 1.0f},  {0.0f, 0.0f, -1.0f, -1.0f},   {-0.5f, 0.0f, 1.0f, -1.0f},
    {0.25f, -0.25f, 0.0f, 0.0f}, {0.0f, -0.5f, 1.0f, 1.0f},    {0.5f, -0.5f, -1.0f, 1.0f},
    {0.5f, 0.0f, -1.0f, -1.0f},  {0.0f, 0.0f, 1.0f, -1.0f},    {0.25f, 0.25f, 0.0f, 0.0f},
    {0.0f, 0.0f, 1.0f, 1.0f},    {0.5f, 0.0f, -1.0f, 1.0f},    {0.5f, 0.5f, -1.0f, -1.0f},
    {0.0f, 0.5f, 1.0f, -1.0f},   {-0.25f, 0.25f, 0.0f, 0.0f},  {-0.5f, 0.0f, 1.0f, 1.0f},
    {0.0f, 0.0f, -1.0f, 1.0f},   {0.0f, 0.5f, -1.0f, -1.0f},   {-0.5f, 0.5f, 1.0f, -1.0f},
    {-0.75f, 0.25f, 0.0f, 0.0f}, {-0.75f, -0.25f, 0.0f, 0.0f},
};
COMPILER_STRIP_GATE(0x80480F78, &daObjMovebox::Bgc_c::M_lin20);
#pragma pop

/* 804810E8-804810EC 0001C0 0004+00 7/16 0/0 0/0 .rodata          @3687 */
SECTION_RODATA static u8 const lit_3687[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x804810E8, &lit_3687);

/* 8047DAEC-8047DBB0 0000EC 00C4+00 1/1 0/0 0/0 .text            __ct__Q212daObjMovebox5Bgc_cFv */
// matches with literals
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daObjMovebox::Bgc_c::Bgc_c() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/__ct__Q212daObjMovebox5Bgc_cFv.s"
}
#pragma pop

/* 8047DBB0-8047DBEC 0001B0 003C+00 3/3 0/0 0/0 .text            __dt__4cXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// cXyz::~cXyz()
extern "C" asm void __dt__4cXyzFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/__dt__4cXyzFv.s"
}
#pragma pop

/* 8047DBEC-8047DBF0 0001EC 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz()
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* ############################################################################################## */
/* 804810EC-804810F0 0001C4 0004+00 1/2 0/0 0/0 .rodata          @3728 */
SECTION_RODATA static f32 const lit_3728 = -1000000000.0f;
COMPILER_STRIP_GATE(0x804810EC, &lit_3728);

/* 80481888-8048188C 000008 0001+03 4/4 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 8048188C-80481890 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 80481890-80481894 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 80481894-80481898 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 80481898-8048189C 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 8048189C-804818A0 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 804818A0-804818A4 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 804818A4-804818A8 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 804818A8-804818AC 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 804818AC-804818B0 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 804818B0-804818B4 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 804818B4-804818B8 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 804818B8-804818BC 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 804818BC-804818C0 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 804818C0-804818C4 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 804818C4-804818C8 000044 0001+03 0/0 0/0 0/0 .bss             @1009 */
#pragma push
#pragma force_active on
static u8 lit_1009[1 + 3 /* padding */];
#pragma pop

/* 804818C8-804818D4 000048 000C+00 0/1 0/0 0/0 .bss             @3669 */
#pragma push
#pragma force_active on
static u8 lit_3669[12];
#pragma pop

/* 804818D4-80482060 000054 078C+00 7/8 0/0 0/0 .bss             M_gnd_work__Q212daObjMovebox5Bgc_c
 */
u8 daObjMovebox::Bgc_c::M_gnd_work[1932];

/* 8047DBF0-8047DD88 0001F0 0198+00 1/1 0/0 0/0 .text
 * gnd_pos__Q212daObjMovebox5Bgc_cFPCQ212daObjMovebox5Act_cPCQ212daObjMovebox8BgcSrc_cif */
// matches with literals
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjMovebox::Bgc_c::gnd_pos(daObjMovebox::Act_c const* param_0,
                                      daObjMovebox::BgcSrc_c const* param_1, int param_2,
                                      f32 param_3){nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/func_8047DBF0.s"
}
#pragma pop

/* ############################################################################################## */
/* 804810F0-804810F4 0001C8 0004+00 1/1 0/0 0/0 .rodata          @3754 */
SECTION_RODATA static f32 const lit_3754 = 400.0f;
COMPILER_STRIP_GATE(0x804810F0, &lit_3754);

/* 804810F4-804810F8 0001CC 0004+00 1/2 0/0 0/0 .rodata          @3755 */
SECTION_RODATA static f32 const lit_3755 = 100.0f;
COMPILER_STRIP_GATE(0x804810F4, &lit_3755);

/* 80482060-8048206C 0007E0 000C+00 0/1 0/0 0/0 .bss             @3670 */
#pragma push
#pragma force_active on
static u8 lit_3670[12];
#pragma pop

/* 8048206C-804820C0 0007EC 0054+00 1/2 0/0 0/0 .bss             M_wrt_work__Q212daObjMovebox5Bgc_c
 */
u8 daObjMovebox::Bgc_c::M_wrt_work[84];

/* 8047DD88-8047DE58 000388 00D0+00 1/1 0/0 0/0 .text wrt_pos__Q212daObjMovebox5Bgc_cFRC4cXyz */
// matches with literals
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjMovebox::Bgc_c::wrt_pos(cXyz const& param_0){nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/wrt_pos__Q212daObjMovebox5Bgc_cFRC4cXyz.s"
}
#pragma pop

/* ############################################################################################## */
/* 804810F8-804810FC 0001D0 0004+00 1/4 0/0 0/0 .rodata          @3831 */
SECTION_RODATA static f32 const lit_3831 = 0.5f;
COMPILER_STRIP_GATE(0x804810F8, &lit_3831);

/* 804820C0-804820CC 000840 000C+00 0/1 0/0 0/0 .bss             @3672 */
#pragma push
#pragma force_active on
static u8 lit_3672[12];
#pragma pop

/* 804820CC-80482ADC 00084C 0A10+00 3/4 0/0 0/0 .bss             M_wall_work__Q212daObjMovebox5Bgc_c
 */
u8 daObjMovebox::Bgc_c::M_wall_work[2576];

/* 8047DE58-8047E134 000458 02DC+00 1/1 0/0 0/0 .text
 * wall_pos__Q212daObjMovebox5Bgc_cFPCQ212daObjMovebox5Act_cPCQ212daObjMovebox8BgcSrc_cisf */
// matches with literals
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjMovebox::Bgc_c::wall_pos(daObjMovebox::Act_c const* param_0,
                                       daObjMovebox::BgcSrc_c const* param_1, int param_2,
                                       s16 param_3, f32 param_4) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/func_8047DE58.s"
}
#pragma pop

/* 8047E134-8047E2D4 000734 01A0+00 2/2 0/0 0/0 .text
 * proc_vertical__Q212daObjMovebox5Bgc_cFPQ212daObjMovebox5Act_c */
// matches with literals
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjMovebox::Bgc_c::proc_vertical(daObjMovebox::Act_c* param_0){nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/proc_vertical__Q212daObjMovebox5Bgc_cFPQ212daObjMovebox5Act_c.s"
}
#pragma pop

/* ############################################################################################## */
/* 804810FC-80481100 0001D4 0004+00 3/10 0/0 0/0 .rodata          @3902 */
SECTION_RODATA static f32 const lit_3902 = 1.0f;
COMPILER_STRIP_GATE(0x804810FC, &lit_3902);

/* 8047E2D4-8047E350 0008D4 007C+00 2/2 0/0 0/0 .text
 * chk_wall_pre__Q212daObjMovebox5Bgc_cFPCQ212daObjMovebox5Act_cPCQ212daObjMovebox8BgcSrc_cis */
// matches with literals
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daObjMovebox::Bgc_c::chk_wall_pre(daObjMovebox::Act_c const* param_0,
                                           daObjMovebox::BgcSrc_c const* param_1, int param_2,
                                           s16 param_3){nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/func_8047E2D4.s"
}
#pragma pop

/* ############################################################################################## */
/* 80481100-80481104 0001D8 0004+00 0/1 0/0 0/0 .rodata          @3960 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3960 = 10.0f;
COMPILER_STRIP_GATE(0x80481100, &lit_3960);
#pragma pop

/* 80482ADC-80482AEC 00125C 000C+04 0/1 0/0 0/0 .bss             @3909 */
#pragma push
#pragma force_active on
static u8 lit_3909[12 + 4 /* padding */];
#pragma pop

/* 80482AEC-80482B5C 00126C 0070+00 0/1 0/0 0/0 .bss             touch_work$3908 */
#pragma push
#pragma force_active on
static u8 touch_work[112];
#pragma pop

/* 8047E350-8047E5A0 000950 0250+00 1/1 0/0 0/0 .text
 * chk_wall_touch__Q212daObjMovebox5Bgc_cFPCQ212daObjMovebox5Act_cPCQ212daObjMovebox8BgcSrc_cs */
// matches with literals
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daObjMovebox::Bgc_c::chk_wall_touch(daObjMovebox::Act_c const* param_0,
                                             daObjMovebox::BgcSrc_c const* param_1, s16 param_2) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/func_8047E350.s"
}
#pragma pop

/* 8047E5A0-8047E628 000BA0 0088+00 1/1 0/0 0/0 .text
 * chk_wall_touch2__Q212daObjMovebox5Bgc_cFPCQ212daObjMovebox5Act_cPCQ212daObjMovebox8BgcSrc_cis */
// matches with literals
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daObjMovebox::Bgc_c::chk_wall_touch2(daObjMovebox::Act_c const* param_0,
                                              daObjMovebox::BgcSrc_c const* param_1, int param_2,
                                              s16 param_3) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/func_8047E5A0.s"
}
#pragma pop

/* 8047E628-8047E650 000C28 0028+00 4/4 0/0 0/0 .text prm_get_swSave1__Q212daObjMovebox5Act_cCFv
 */
// matches with literals
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjMovebox::Act_c::prm_get_swSave1() const {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/prm_get_swSave1__Q212daObjMovebox5Act_cCFv.s"
}
#pragma pop

/* 8047E650-8047E680 000C50 0030+00 1/1 0/0 0/0 .text            prmZ_init__Q212daObjMovebox5Act_cFv
 */
// matches with literals
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjMovebox::Act_c::prmZ_init() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/prmZ_init__Q212daObjMovebox5Act_cFv.s"
}
#pragma pop

/* 8047E680-8047E6B0 000C80 0030+00 1/1 0/0 0/0 .text            prmX_init__Q212daObjMovebox5Act_cFv
 */
// matches with literals
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjMovebox::Act_c::prmX_init() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/prmX_init__Q212daObjMovebox5Act_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 804816A4-804816AD 00077C 0009+00 2/1 0/0 0/0 .rodata          None */
extern "C" char const* const stringBase_804816A4;

/* 804816AD-804816B4 000785 0007+00 1/0 0/0 0/0 .rodata          None */
extern "C" char const* const stringBase_804816AD;

/* 804816B4-804816BC 00078C 0008+00 1/0 0/0 0/0 .rodata          None */
extern "C" char const* const stringBase_804816B4;

/* 804816BC-804816C6 000794 000A+00 1/0 0/0 0/0 .rodata          None */
extern "C" char const* const stringBase_804816BC;

/* 804816C6-804816CF 00079E 0009+00 1/0 0/0 0/0 .rodata          None */
extern "C" char const* const stringBase_804816C6;

/* 804816CF-804816D9 0007A7 000A+00 1/0 0/0 0/0 .rodata          None */
extern "C" char const* const stringBase_804816CF;

/* 804816D9-804816E3 0007B1 000A+00 1/0 0/0 0/0 .rodata          None */
extern "C" char const* const stringBase_804816D9;

/* 804816E3-804816EA 0007BB 0007+00 1/0 0/0 0/0 .rodata          None */
extern "C" char const* const stringBase_804816E3;

/* 80481104-80481124 -00001 0020+00 3/3 0/0 0/0 .rodata          M_arcname__Q212daObjMovebox5Act_c
 */
const char* const daObjMovebox::Act_c::M_arcname[8] = {
    "Kkiba_00", "Osiblk", "H_Box20", "A_SMBlock", "P_Lv4blk", "P_Lv4blk2", "H_OsiHaka", "dummy4",
};
COMPILER_STRIP_GATE(0x80481104, &daObjMovebox::Act_c::M_arcname);

/* 80481124-80481168 0001FC 0044+00 0/1 0/0 0/0 .rodata          M_cyl_src__Q212daObjMovebox5Act_c
 */
#pragma push
#pragma force_active on
SECTION_RODATA const dCcD_SrcCyl daObjMovebox::Act_c::M_cyl_src = {
    {
        0,
        {{0, 0, 0}, {0xD8FAFDBF, 0x11}, {0x78}},  // mObj
        {dCcD_SE_NONE, 0, 0, 0, 0},               // mGObjAt
        {dCcD_SE_NONE, 0, 0, 0, 0},               // mGObjTg
        {0},                                      // mGObjCo
    },                                            // mObjInf
    {
        {0.0f, 0.0f, 0.0f},  // mCenter
        75.0f,               // mRadius
        150.0f,              // mHeight
    }  // mCyl
};
COMPILER_STRIP_GATE(0x80481124, &daObjMovebox::Act_c::M_cyl_src);
#pragma pop

/* 80481168-80481668 000240 0500+00 6/18 0/0 0/0 .rodata          M_attr__Q212daObjMovebox5Act_c */
SECTION_RODATA const daObjMovebox::Hio_c::Attr_c daObjMovebox::Act_c::M_attr[8] = {
    {
        0x6,     0xE,     0xA,     0x6,           0xE,    0xA,           75.0f,  90.0f,   -3.0f,
        0.005f,  0.001f,  0.0f,    1.8f,          3.9f,   -0.39f,        -0.2f,  0.02f,   0x3E8,
        0.04f,   0.013f,  0.15f,   0.1f,          0.1f,   0.06f,         0.075f, 4,       7,
        0xC00,   150.0f,  150.0f,  0.0066666668f, 150.0f, 0.0066666668f, 150.0f, 0x8013C, 0x8013D,
        0x80151, 0x8002A, 0x8002D, 0xFFA6,        0xFFFF, 0xFFA6,        0x5A,   0x97,    0x5A,
        0,       0,       0,
    },
    {
        0x8,     0x13,    0xD,     0x8,           0x13,   0xD,           75.0f,  90.0f,   -5.0f,
        0.005f,  0.001f,  0.0f,    1.8f,          4.5f,   -0.5f,         -0.2f,  0.02f,   0x3E8,
        0.04f,   0.013f,  0.15f,   0.1f,          0.1f,   0.06f,         0.075f, 4,       7,
        0xC00,   150.0f,  150.0f,  0.0066666668f, 150.0f, 0.0066666668f, 150.0f, 0x20038, 0x20039,
        0x8002F, 0x8002B, 0x8002E, 0xFFA6,        0xFFFF, 0xFFA6,        0x5A,   0x97,    0x5A,
        0,       0,       0,
    },
    {
        0x8,    0x13,   0xD,    0x8,    0x13,    0xD,     50.0f,   110.0f,  -5.0f,   0.005f,
        0.001f, 0.0f,   1.8f,   4.5f,   -0.5f,   -0.2f,   0.02f,   0x3E8,   0.04f,   0.013f,
        0.15f,  0.1f,   0.1f,   0.06f,  0.075f,  4,       7,       0x1000,  200.0f,  200.0f,
        0.005f, 200.0f, 0.005f, 200.0f, 0x80154, 0x80155, 0x8002F, 0x8002B, 0x8002E, 0xFF92,
        0xFFFF, 0xFF92, 0x6E,   0xD2,   0x6E,    0,       1,       0,
    },
    {
        0x8,     0x13,    0xD,     0x8,           0x13,   0xD,           75.0f,  180.0f,  -5.0f,
        0.005f,  0.001f,  0.0f,    1.8f,          4.5f,   -0.5f,         -0.2f,  0.02f,   0x3E8,
        0.04f,   0.013f,  0.15f,   0.1f,          0.1f,   0.06f,         0.075f, 4,       7,
        0xC00,   300.0f,  300.0f,  0.0033333334f, 300.0f, 0.0033333334f, 300.0f, 0x20038, 0x20039,
        0x8002F, 0x8002B, 0x8002E, 0xFF4C,        0xFFFF, 0xFF4C,        0xB4,   0x136,   0xB4,
        0,       0,       0,
    },
    {
        0x8,     0x13,    0xD,     0x8,           0x13,   0xD,           75.0f,  180.0f,  -5.0f,
        0.005f,  0.001f,  0.0f,    1.8f,          4.5f,   -0.5f,         -0.2f,  0.02f,   0x3E8,
        0.04f,   0.013f,  0.15f,   0.1f,          0.1f,   0.06f,         0.075f, 4,       7,
        0x2670,  300.0f,  300.0f,  0.0033333334f, 300.0f, 0.0033333334f, 300.0f, 0x20038, 0x20039,
        0x8002F, 0x8002B, 0x8002E, 0xFF4C,        0xFFFF, 0xFF4C,        0xB4,   0x136,   0xB4,
        0,       0,       0,
    },
    {
        0x8,     0x13,    0xD,     0x8,           0x13,   0xD,           75.0f,  90.0f,   -5.0f,
        0.005f,  0.001f,  0.0f,    1.8f,          4.5f,   -0.5f,         -0.2f,  0.02f,   0x3E8,
        0.04f,   0.013f,  0.15f,   0.1f,          0.1f,   0.06f,         0.075f, 4,       7,
        0xC00,   150.0f,  150.0f,  0.0066666668f, 150.0f, 0.0066666668f, 150.0f, 0x20038, 0x20039,
        0x8002F, 0x8002B, 0x8002E, 0xFFA6,        0xFFFF, 0xFFA6,        0x5A,   0x168,   0x5A,
        0,       0,       0,
    },
    {
        0x8,    0x13,   0xD,           0x8,    0x13,    0xD,     50.0f,   90.0f,   -3.0f,   0.005f,
        0.001f, 0.0f,   1.8f,          3.9f,   -0.39f,  -0.2f,   0.02f,   0x3E8,   0.04f,   0.013f,
        0.15f,  0.1f,   0.1f,          0.06f,  0.075f,  4,       7,       0x1620,  200.0f,  200.0f,
        0.005f, 230.0f, 0.0043478259f, 100.0f, 0x8013C, 0x8013D, 0x80151, 0x8002A, 0x8002D, 0xFF7E,
        0xFFF6, 0xFFC4, 0x82,          0xD2,   0x3C,    0,       1,       0,
    },
    {
        0x4,     0x4,     0x14,    0x4,           0x4,    0x14,          75.0f,  90.0f,   -3.0f,
        0.005f,  0.001f,  0.0f,    1.8f,          3.9f,   -0.39f,        -0.2f,  0.02f,   0x3E8,
        0.04f,   0.013f,  0.15f,   0.1f,          0.1f,   0.06f,         0.075f, 4,       7,
        0x1620,  150.0f,  150.0f,  0.0066666668f, 150.0f, 0.0066666668f, 150.0f, 0x8013C, 0x8013D,
        0x80151, 0x8002A, 0x8002D, 0xFFA6,        0xFFFF, 0xFFA6,        0x5A,   0x97,    0x5A,
        0,       0,       0,
    },
};
COMPILER_STRIP_GATE(0x80481168, &daObjMovebox::Act_c::M_attr);

/* 804816A4-804816A4 00077C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_804816A4 = "Kkiba_00";
SECTION_DEAD static char const* const stringBase_804816AD = "Osiblk";
SECTION_DEAD static char const* const stringBase_804816B4 = "H_Box20";
SECTION_DEAD static char const* const stringBase_804816BC = "A_SMBlock";
SECTION_DEAD static char const* const stringBase_804816C6 = "P_Lv4blk";
SECTION_DEAD static char const* const stringBase_804816CF = "P_Lv4blk2";
SECTION_DEAD static char const* const stringBase_804816D9 = "H_OsiHaka";
SECTION_DEAD static char const* const stringBase_804816E3 = "dummy4";
#pragma pop

/* 8047E6B0-8047E6C8 000CB0 0018+00 5/5 0/0 0/0 .text            attr__Q212daObjMovebox5Act_cCFv */
// matches with literals
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm const daObjMovebox::Hio_c::Attr_c& daObjMovebox::Act_c::attr() const {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/attr__Q212daObjMovebox5Act_cCFv.s"
}
#pragma pop

/* 8047E6C8-8047E7B0 000CC8 00E8+00 2/2 0/0 0/0 .text            set_mtx__Q212daObjMovebox5Act_cFv
 */
// matches with literals
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjMovebox::Act_c::set_mtx() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/set_mtx__Q212daObjMovebox5Act_cFv.s"
}
#pragma pop

/* 8047E7B0-8047E7F4 000DB0 0044+00 1/1 0/0 0/0 .text            init_mtx__Q212daObjMovebox5Act_cFv
 */
// matches with literals
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjMovebox::Act_c::init_mtx() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/init_mtx__Q212daObjMovebox5Act_cFv.s"
}
#pragma pop

/* 8047E7F4-8047E92C 000DF4 0138+00 1/1 0/0 0/0 .text            path_init__Q212daObjMovebox5Act_cFv
 */
// matches with literals
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjMovebox::Act_c::path_init(){nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/path_init__Q212daObjMovebox5Act_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80481668-8048166C 000740 0004+00 1/1 0/0 0/0 .rodata          @4161 */
SECTION_RODATA static f32 const lit_4161 = 9.0f;
COMPILER_STRIP_GATE(0x80481668, &lit_4161);

/* 8047E92C-8047EB48 000F2C 021C+00 1/1 0/0 0/0 .text            path_save__Q212daObjMovebox5Act_cFv
 */
// matches with literals
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjMovebox::Act_c::path_save() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/path_save__Q212daObjMovebox5Act_cFv.s"
}
#pragma pop

/* 8047EB48-8047EBEC 001148 00A4+00 1/0 0/0 0/0 .text CreateHeap__Q212daObjMovebox5Act_cFv */
// matches with literals
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm int daObjMovebox::Act_c::CreateHeap() {
extern "C" asm void CreateHeap__Q212daObjMovebox5Act_cFv(){nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/CreateHeap__Q212daObjMovebox5Act_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 8048166C-80481670 000744 0004+00 0/1 0/0 0/0 .rodata          @4214 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4214 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x8048166C, &lit_4214);
#pragma pop

/* 80481670-80481678 000748 0004+04 0/1 0/0 0/0 .rodata          @4215 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4215[1 + 1 /* padding */] = {
    9.0f / 10.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80481670, &lit_4215);
#pragma pop

/* 8047EBEC-8047ED10 0011EC 0124+00 1/1 0/0 0/0 .text
 * RideCallBack__Q212daObjMovebox5Act_cFP4dBgWP10fopAc_ac_cP10fopAc_ac_c */
// matches with literals
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjMovebox::Act_c::RideCallBack(dBgW* param_0, fopAc_ac_c* param_1,
                                           fopAc_ac_c* param_2) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/RideCallBack__Q212daObjMovebox5Act_cFP4dBgWP10fopAc_ac_cP10fopAc_ac_c.s"
}
#pragma pop

/* 8047ED10-8047EE0C 001310 00FC+00 1/1 0/0 0/0 .text
 * PPCallBack__Q212daObjMovebox5Act_cFP10fopAc_ac_cP10fopAc_ac_csQ29dBgW_Base13PushPullLabel */
// matches with literals
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm fopAc_ac_c* daObjMovebox::Act_c::PPCallBack(fopAc_ac_c* param_0, fopAc_ac_c* param_1,
                                                s16 param_2,
                                                dBgW_Base::PushPullLabel param_3){nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/func_8047ED10.s"
}
#pragma pop

/* ############################################################################################## */
/* 80481678-80481680 000750 0008+00 0/4 0/0 0/0 .rodata          @4354 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4354[8] = {
    0x43,
    0x30,
    0x00,
    0x00,
    0x80,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80481678, &lit_4354);
#pragma pop

/* 8047EE0C-8047F11C 00140C 0310+00 1/0 0/0 0/0 .text            Create__Q212daObjMovebox5Act_cFv */
// matches with literals
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjMovebox::Act_c::Create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/Create__Q212daObjMovebox5Act_cFv.s"
}
#pragma pop

/* 8047F11C-8047F38C 00171C 0270+00 1/1 0/0 0/0 .text            afl_sway__Q212daObjMovebox5Act_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjMovebox::Act_c::afl_sway() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/afl_sway__Q212daObjMovebox5Act_cFv.s"
}
#pragma pop

/* 8047F38C-8047F50C 00198C 0180+00 1/1 0/0 0/0 .text check_to_walk__Q212daObjMovebox5Act_cFv */
// matches with literals
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjMovebox::Act_c::check_to_walk() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/check_to_walk__Q212daObjMovebox5Act_cFv.s"
}
#pragma pop

/* 8047F50C-8047F530 001B0C 0024+00 3/3 0/0 0/0 .text clr_moment_cnt__Q212daObjMovebox5Act_cFv */
// matches with literals
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjMovebox::Act_c::clr_moment_cnt() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/clr_moment_cnt__Q212daObjMovebox5Act_cFv.s"
}
#pragma pop

/* 8047F530-8047F5CC 001B30 009C+00 1/1 0/0 0/0 .text chk_appear__Q212daObjMovebox5Act_cCFv */
// matches with literals
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daObjMovebox::Act_c::chk_appear() const {nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/chk_appear__Q212daObjMovebox5Act_cCFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80481680-80481684 000758 0004+00 1/1 0/0 0/0 .rodata          @4514 */
SECTION_RODATA static f32 const lit_4514 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x80481680, &lit_4514);

/* 80482B5C-80482B6C 0012DC 000C+04 0/1 0/0 0/0 .bss             @4501 */
#pragma push
#pragma force_active on
static u8 lit_4501[12 + 4 /* padding */];
#pragma pop

/* 80482B6C-80482B78 0012EC 000C+00 0/1 0/0 0/0 .bss             scl$4500 */
#pragma push
#pragma force_active on
static u8 scl[12];
#pragma pop

/* 8047F5CC-8047F634 001BCC 0068+00 1/1 0/0 0/0 .text
 * eff_smoke_slip_start__Q212daObjMovebox5Act_cFv               */
// matches with literals
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjMovebox::Act_c::eff_smoke_slip_start() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/eff_smoke_slip_start__Q212daObjMovebox5Act_cFv.s"
}
#pragma pop

/* 8047F634-8047F6A8 001C34 0074+00 3/3 0/0 0/0 .text mode_wait_init__Q212daObjMovebox5Act_cFv */
// matches with literals
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjMovebox::Act_c::mode_wait_init(){nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/mode_wait_init__Q212daObjMovebox5Act_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80481684-80481688 00075C 0004+00 0/1 0/0 0/0 .rodata          @4562 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4562 = 32768.0f;
COMPILER_STRIP_GATE(0x80481684, &lit_4562);
#pragma pop

/* 8047F6A8-8047F8D4 001CA8 022C+00 1/0 0/0 0/0 .text            mode_wait__Q212daObjMovebox5Act_cFv
 */
// matches with literals
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjMovebox::Act_c::mode_wait() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/mode_wait__Q212daObjMovebox5Act_cFv.s"
}
#pragma pop

/* 8047F8D4-8047F8F4 001ED4 0020+00 1/1 0/0 0/0 .text mode_walk_init__Q212daObjMovebox5Act_cFv */
// matches with literals
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjMovebox::Act_c::mode_walk_init(){nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/mode_walk_init__Q212daObjMovebox5Act_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80481688-8048168C 000760 0004+00 0/5 0/0 0/0 .rodata          @4681 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4681 = -1.0f;
COMPILER_STRIP_GATE(0x80481688, &lit_4681);
#pragma pop

/* 80482B78-80482B88 0012F8 000C+04 0/1 0/0 0/0 .bss             @4574 */
#pragma push
#pragma force_active on
static u8 lit_4574[12 + 4 /* padding */];
#pragma pop

/* 80482B88-80482B94 001308 000C+00 0/1 0/0 0/0 .bss             @4577 */
#pragma push
#pragma force_active on
static u8 lit_4577[12];
#pragma pop

/* 80482B94-80482BA0 001314 000C+00 0/1 0/0 0/0 .bss             @4578 */
#pragma push
#pragma force_active on
static u8 lit_4578[12];
#pragma pop

/* 80482BA0-80482BAC 001320 000C+00 0/1 0/0 0/0 .bss             @4579 */
#pragma push
#pragma force_active on
static u8 lit_4579[12];
#pragma pop

/* 80482BAC-80482BDC 00132C 0030+00 0/1 0/0 0/0 .bss             dir_vec$4573 */
#pragma push
#pragma force_active on
static u8 dir_vec[48];
#pragma pop

/* 8047F8F4-8047FCBC 001EF4 03C8+00 1/0 0/0 0/0 .text            mode_walk__Q212daObjMovebox5Act_cFv
 */
// matches with literals
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjMovebox::Act_c::mode_walk() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/mode_walk__Q212daObjMovebox5Act_cFv.s"
}
#pragma pop

/* 8047FCBC-8047FCE4 0022BC 0028+00 1/1 0/0 0/0 .text mode_afl_init__Q212daObjMovebox5Act_cFv */
// matches with literals
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjMovebox::Act_c::mode_afl_init() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/mode_afl_init__Q212daObjMovebox5Act_cFv.s"
}
#pragma pop

/* 8047FCE4-8047FEE4 0022E4 0200+00 1/0 0/0 0/0 .text            mode_afl__Q212daObjMovebox5Act_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjMovebox::Act_c::mode_afl(){nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/mode_afl__Q212daObjMovebox5Act_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80481704-80481710 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
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

/* 80481710-80481724 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80481724-80481730 -00001 000C+00 0/1 0/0 0/0 .data            @4747 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4747[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)mode_wait__Q212daObjMovebox5Act_cFv,
};
#pragma pop

/* 80481730-8048173C -00001 000C+00 0/1 0/0 0/0 .data            @4748 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4748[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)mode_walk__Q212daObjMovebox5Act_cFv,
};
#pragma pop

/* 8048173C-80481748 -00001 000C+00 0/1 0/0 0/0 .data            @4749 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4749[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)mode_afl__Q212daObjMovebox5Act_cFv,
};
#pragma pop

/* 80481748-8048176C 000044 0024+00 1/1 0/0 0/0 .data
 * mode_proc$localstatic3$mode_proc_call__Q212daObjMovebox5Act_cFv */
SECTION_DATA static u8 data_80481748[36] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8048176C-8048178C -00001 0020+00 1/0 0/0 0/0 .data
 * Mthd_Table__Q212daObjMovebox29@unnamed@d_a_obj_movebox_cpp@  */
static actor_method_class data_8048176C = {
    (process_method_func)func_80480920, (process_method_func)func_80480BC0,
    (process_method_func)func_80480C18, (process_method_func)func_80480C64,
    (process_method_func)func_80480C38,
};

/* 8048178C-804817BC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Movebox */
extern actor_process_profile_definition g_profile_Obj_Movebox = {
    fpcLy_CURRENT_e,              // mLayerID
    3,                            // mListID
    fpcPi_CURRENT_e,              // mListPrio
    PROC_Obj_Movebox,             // mProcName
    &g_fpcLf_Method.mBase,        // sub_method
    sizeof(daObjMovebox::Act_c),  // mSize
    0,                            // mSizeOther
    0,                            // mParameters
    &g_fopAc_Method.base,         // sub_method
    17,                           // mPriority
    &data_8048176C,               // sub_method
    0x00040504,                   // mStatus
    fopAc_ACTOR_e,                // mActorType
    fopAc_CULLBOX_CUSTOM_e,       // cullType
};

/* 804817BC-804817C8 0000B8 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 804817C8-804817D4 0000C4 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 804817D4-804817E0 0000D0 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 804817E0-804817EC 0000DC 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 804817EC-804817F8 0000E8 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 804817F8-80481828 0000F4 0030+00 2/2 0/0 0/0 .data            __vt__14dBgS_ObjGndChk */
SECTION_DATA extern void* __vt__14dBgS_ObjGndChk[12] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14dBgS_ObjGndChkFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80480EFC,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80480F0C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80480F04,
};

/* 8047FEE4-8047FF5C 0024E4 0078+00 6/5 0/0 0/0 .text            __dt__14dBgS_ObjGndChkFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// dBgS_ObjGndChk::~dBgS_ObjGndChk()
extern "C" asm void __dt__14dBgS_ObjGndChkFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/__dt__14dBgS_ObjGndChkFv.s"
}
#pragma pop

/* 8047FF5C-80480020 00255C 00C4+00 1/1 0/0 0/0 .text sound_slip__Q212daObjMovebox5Act_cFv */
// matches with literals
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjMovebox::Act_c::sound_slip() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/sound_slip__Q212daObjMovebox5Act_cFv.s"
}
#pragma pop

/* 80480020-804800E4 002620 00C4+00 1/1 0/0 0/0 .text sound_limit__Q212daObjMovebox5Act_cFv */
// matches with literals
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjMovebox::Act_c::sound_limit() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/sound_limit__Q212daObjMovebox5Act_cFv.s"
}
#pragma pop

/* 804800E4-804801A8 0026E4 00C4+00 1/1 0/0 0/0 .text sound_land__Q212daObjMovebox5Act_cFv */
// matches with literals
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjMovebox::Act_c::sound_land() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/sound_land__Q212daObjMovebox5Act_cFv.s"
}
#pragma pop

/* 804801A8-804801FC 0027A8 0054+00 1/1 0/0 0/0 .text            vib_land__Q212daObjMovebox5Act_cFv
 */
// matches with literals
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjMovebox::Act_c::vib_land(){nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/vib_land__Q212daObjMovebox5Act_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 8048168C-80481690 000764 0004+00 0/0 0/0 0/0 .rodata          @4774 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4774 = 2.0f;
COMPILER_STRIP_GATE(0x8048168C, &lit_4774);
#pragma pop

/* 80481690-80481694 000768 0004+00 0/0 0/0 0/0 .rodata          @4775 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4775 = 75.0f;
COMPILER_STRIP_GATE(0x80481690, &lit_4775);
#pragma pop

/* 80481694-80481698 00076C 0004+00 1/1 0/0 0/0 .rodata          @4890 */
SECTION_RODATA static f32 const lit_4890 = 5.0f / 3.0f;
COMPILER_STRIP_GATE(0x80481694, &lit_4890);

/* 804801FC-8048027C 0027FC 0080+00 1/1 0/0 0/0 .text eff_land_smoke__Q212daObjMovebox5Act_cFv */
// matches with literals
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjMovebox::Act_c::eff_land_smoke(){nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/eff_land_smoke__Q212daObjMovebox5Act_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80481698-804816A0 000770 0006+02 0/1 0/0 0/0 .rodata          particle_id$4913 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const particle_id[6 + 2 /* padding */] = {
    0x82,
    0xAB,
    0x82,
    0xAC,
    0x82,
    0xAD,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80481698, &particle_id);
#pragma pop

/* 804816A4-804816A4 00077C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_804816EA = "Always";
SECTION_DEAD static char const* const stringBase_804816F1 = "BreakWoodBox.bmd";
#pragma pop

/* 80482BDC-80482BEC 00135C 000C+04 0/0 0/0 0/0 .bss             @4762 */
#pragma push
#pragma force_active on
static u8 lit_4762[12 + 4 /* padding */];
#pragma pop

/* 80482BEC-80482BF8 00136C 000C+00 0/0 0/0 0/0 .bss             particle_scale$4761 */
#pragma push
#pragma force_active on
static u8 particle_scale[12];
#pragma pop

/* 80482BF8-80482BFC 001378 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80482BF8[4];
#pragma pop

/* 80482BFC-80482C00 00137C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80482BFC[4];
#pragma pop

/* 80482C00-80482C04 001380 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80482C00[4];
#pragma pop

/* 80482C04-80482C08 001384 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80482C04[4];
#pragma pop

/* 80482C08-80482C0C 001388 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80482C08[4];
#pragma pop

/* 80482C0C-80482C10 00138C 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80482C0C[4];
#pragma pop

/* 80482C10-80482C14 001390 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80482C10[4];
#pragma pop

/* 80482C14-80482C18 001394 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80482C14[4];
#pragma pop

/* 80482C18-80482C1C 001398 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80482C18[4];
#pragma pop

/* 80482C1C-80482C20 00139C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80482C1C[4];
#pragma pop

/* 80482C20-80482C24 0013A0 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80482C20[4];
#pragma pop

/* 80482C24-80482C28 0013A4 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80482C24[4];
#pragma pop

/* 80482C28-80482C2C 0013A8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80482C28[4];
#pragma pop

/* 80482C2C-80482C30 0013AC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80482C2C[4];
#pragma pop

/* 80482C30-80482C34 0013B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80482C30[4];
#pragma pop

/* 80482C34-80482C38 0013B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80482C34[4];
#pragma pop

/* 80482C38-80482C3C 0013B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80482C38[4];
#pragma pop

/* 80482C3C-80482C40 0013BC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80482C3C[4];
#pragma pop

/* 80482C40-80482C44 0013C0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_80482C40[4];
#pragma pop

/* 80482C44-80482C48 0013C4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_80482C44[4];
#pragma pop

/* 80482C48-80482C4C 0013C8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80482C48[4];
#pragma pop

/* 80482C4C-80482C50 0013CC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80482C4C[4];
#pragma pop

/* 80482C50-80482C54 0013D0 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80482C50[4];
#pragma pop

/* 80482C54-80482C58 0013D4 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80482C54[4];
#pragma pop

/* 80482C58-80482C5C 0013D8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80482C58[4];
#pragma pop

/* 80482C5C-80482C60 0013DC 0004+00 1/1 0/0 0/0 .bss             None */
static u8 data_80482C5C[4];

/* 8048027C-80480728 00287C 04AC+00 1/0 0/0 0/0 .text Execute__Q212daObjMovebox5Act_cFPPA3_A4_f */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjMovebox::Act_c::Execute(f32 (**param_0)[3][4]){nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/Execute__Q212daObjMovebox5Act_cFPPA3_A4_f.s"
}
#pragma pop

/* ############################################################################################## */
/* 804816A0-804816A4 000778 0004+00 0/1 0/0 0/0 .rodata          @5051 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5051 = -2.0f / 5.0f;
COMPILER_STRIP_GATE(0x804816A0, &lit_5051);
#pragma pop

/* 80480728-804808B4 002D28 018C+00 1/0 0/0 0/0 .text            Draw__Q212daObjMovebox5Act_cFv */
// matches with literals
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjMovebox::Act_c::Draw() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/Draw__Q212daObjMovebox5Act_cFv.s"
}
#pragma pop

/* 804808B4-804808FC 002EB4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// cM3dGPla::~cM3dGPla()
extern "C" asm void __dt__8cM3dGPlaFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/__dt__8cM3dGPlaFv.s"
}
#pragma pop

/* 804808FC-80480920 002EFC 0024+00 1/0 0/0 0/0 .text            Delete__Q212daObjMovebox5Act_cFv */
// matches with literals
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjMovebox::Act_c::Delete(){nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/Delete__Q212daObjMovebox5Act_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80481828-80481850 000124 0028+00 1/1 0/0 0/0 .data            __vt__Q212daObjMovebox5Act_c */
SECTION_DATA extern void* __vt__Q212daObjMovebox5Act_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__Q212daObjMovebox5Act_cFv,
    (void*)Create__Q212daObjMovebox5Act_cFv,
    (void*)Execute__Q212daObjMovebox5Act_cFPPA3_A4_f,
    (void*)Draw__Q212daObjMovebox5Act_cFv,
    (void*)Delete__Q212daObjMovebox5Act_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80480920-80480AD4 002F20 01B4+00 1/0 0/0 0/0 .text
 * Mthd_Create__Q212daObjMovebox29@unnamed@d_a_obj_movebox_cpp@FPv */
// matches with literals
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80480920() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/func_80480920.s"
}
#pragma pop

/* 80480AD4-80480B1C 0030D4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// cM3dGCyl::~cM3dGCyl()
extern "C" asm void __dt__8cM3dGCylFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/__dt__8cM3dGCylFv.s"
}
#pragma pop

/* 80480B1C-80480B64 00311C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// cM3dGAab::~cM3dGAab()
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 80480B64-80480BC0 003164 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// dCcD_GStts::~dCcD_GStts()
extern "C" asm void __dt__10dCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/__dt__10dCcD_GSttsFv.s"
}
#pragma pop

/* 80480BC0-80480C18 0031C0 0058+00 1/0 0/0 0/0 .text
 * Mthd_Delete__Q212daObjMovebox29@unnamed@d_a_obj_movebox_cpp@FPv */
// matches with literals
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80480BC0() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/func_80480BC0.s"
}
#pragma pop

/* 80480C18-80480C38 003218 0020+00 1/0 0/0 0/0 .text
 * Mthd_Execute__Q212daObjMovebox29@unnamed@d_a_obj_movebox_cpp@FPv */
// matches with literals
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80480C18() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/func_80480C18.s"
}
#pragma pop

/* 80480C38-80480C64 003238 002C+00 1/0 0/0 0/0 .text
 * Mthd_Draw__Q212daObjMovebox29@unnamed@d_a_obj_movebox_cpp@FPv */
// matches with literals
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80480C38() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/func_80480C38.s"
}
#pragma pop

/* 80480C64-80480C90 003264 002C+00 1/0 0/0 0/0 .text
 * Mthd_IsDelete__Q212daObjMovebox29@unnamed@d_a_obj_movebox_cpp@FPv */
// matches with literals
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80480C64() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/func_80480C64.s"
}
#pragma pop

/* 80480C90-80480CD8 003290 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// cCcD_GStts::~cCcD_GStts()
extern "C" asm void __dt__10cCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/__dt__10cCcD_GSttsFv.s"
}
#pragma pop

/* 80480CD8-80480CF4 0032D8 001C+00 4/4 0/0 0/0 .text
 * PrmAbstract<Q312daObjMovebox5Act_c5Prm_e>__5daObjFPC10fopAc_ac_cQ312daObjMovebox5Act_c5Prm_eQ312daObjMovebox5Act_c5Prm_e
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void func_80480CD8(void* _this, fopAc_ac_c const* param_0,
                                  daObjMovebox::Act_c::Prm_e param_1,
                                  daObjMovebox::Act_c::Prm_e param_2) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/func_80480CD8.s"
}
#pragma pop

/* 80480CF4-80480DA0 0032F4 00AC+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_movebox_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_a_obj_movebox_cpp(){nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/__sinit_d_a_obj_movebox_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80480CF4, __sinit_d_a_obj_movebox_cpp);
#pragma pop

/* 80480DA0-80480DD8 0033A0 0038+00 1/1 0/0 0/0 .text            __arraydtor$3671 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void func_80480DA0(){nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/func_80480DA0.s"
}
#pragma pop

/* ############################################################################################## */
/* 80481850-80481880 00014C 0030+00 1/1 0/0 0/0 .data            __vt__11dBgS_WtrChk */
SECTION_DATA extern void* __vt__11dBgS_WtrChk[12] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__11dBgS_WtrChkFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80480EE4,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80480EF4,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80480EEC,
};

/* 80480DD8-80480E50 0033D8 0078+00 5/4 0/0 0/0 .text            __dt__11dBgS_WtrChkFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// dBgS_WtrChk::~dBgS_WtrChk()
extern "C" asm void __dt__11dBgS_WtrChkFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/__dt__11dBgS_WtrChkFv.s"
}
#pragma pop

/* 80480E50-80480E88 003450 0038+00 1/1 0/0 0/0 .text            __arraydtor$3668 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void func_80480E50() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/func_80480E50.s"
}
#pragma pop

/* 80480E88-80480EE4 003488 005C+00 1/1 0/0 0/0 .text            __ct__14dBgS_ObjGndChkFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// dBgS_ObjGndChk::dBgS_ObjGndChk()
extern "C" asm void __ct__14dBgS_ObjGndChkFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/__ct__14dBgS_ObjGndChkFv.s"
}
#pragma pop

/* 80480EE4-80480EEC 0034E4 0008+00 1/0 0/0 0/0 .text            @16@__dt__11dBgS_WtrChkFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80480EE4() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/func_80480EE4.s"
}
#pragma pop

/* 80480EEC-80480EF4 0034EC 0008+00 1/0 0/0 0/0 .text            @52@__dt__11dBgS_WtrChkFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80480EEC() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/func_80480EEC.s"
}
#pragma pop

/* 80480EF4-80480EFC 0034F4 0008+00 1/0 0/0 0/0 .text            @36@__dt__11dBgS_WtrChkFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80480EF4() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/func_80480EF4.s"
}
#pragma pop

/* 80480EFC-80480F04 0034FC 0008+00 1/0 0/0 0/0 .text            @20@__dt__14dBgS_ObjGndChkFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80480EFC() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/func_80480EFC.s"
}
#pragma pop

/* 80480F04-80480F0C 003504 0008+00 1/0 0/0 0/0 .text            @76@__dt__14dBgS_ObjGndChkFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80480F04() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/func_80480F04.s"
}
#pragma pop

/* 80480F0C-80480F14 00350C 0008+00 1/0 0/0 0/0 .text            @60@__dt__14dBgS_ObjGndChkFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80480F0C() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_movebox/d_a_obj_movebox/func_80480F0C.s"
}
#pragma pop
