/**
 * @file d_a_e_zm.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_e_zm.h"
#include "dol2asm.h"
#include "f_op/f_op_actor_enemy.h"


//
// Forward References:
//

extern "C" void __ct__12daE_ZM_HIO_cFv();
extern "C" void draw__8daE_ZM_cFv();
extern "C" static void daE_ZM_Draw__FP8daE_ZM_c();
extern "C" void setBck__8daE_ZM_cFiUcff();
extern "C" void setActionMode__8daE_ZM_cFii();
extern "C" void damage_check__8daE_ZM_cFv();
extern "C" void mCutTypeCheck__8daE_ZM_cFv();
extern "C" static void s_PointSearch__FPvPv();
extern "C" void executeSearchPoint__8daE_ZM_cFv();
extern "C" void executeWait__8daE_ZM_cFv();
extern "C" void executeMove__8daE_ZM_cFv();
extern "C" void executeAttack__8daE_ZM_cFv();
extern "C" void executeDamage__8daE_ZM_cFv();
extern "C" void executeDead__8daE_ZM_cFv();
extern "C" void executeBullet__8daE_ZM_cFv();
extern "C" void action__8daE_ZM_cFv();
extern "C" void mtx_set__8daE_ZM_cFv();
extern "C" void cc_set__8daE_ZM_cFv();
extern "C" void execute__8daE_ZM_cFv();
extern "C" static void daE_ZM_Execute__FP8daE_ZM_c();
extern "C" static bool daE_ZM_IsDelete__FP8daE_ZM_c();
extern "C" void _delete__8daE_ZM_cFv();
extern "C" static void daE_ZM_Delete__FP8daE_ZM_c();
extern "C" void CreateHeap__8daE_ZM_cFv();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void create__8daE_ZM_cFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __ct__4cXyzFv();
extern "C" static void daE_ZM_Create__FP8daE_ZM_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_ZM_HIO_cFv();
extern "C" void __sinit_d_a_e_zm_cpp();
extern "C" static void func_80832884();
extern "C" static void func_8083288C();
extern "C" void __dt__4cXyzFv();
extern "C" extern char const* const d_a_e_zm__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_SearchByID__FUiPP10fopAc_ac_c();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void SetGroundUpY__9dBgS_AcchFf();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void SetVsGrp__10cCcD_ObjCoFUl();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void atan2sX_Z__4cXyzCFv();
extern "C" void atan2sY_XZ__4cXyzCFv();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rnd__Fv();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void __construct_array();
extern "C" void _savegpr_19();
extern "C" void _savegpr_23();
extern "C" void _savegpr_25();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_23();
extern "C" void _restgpr_25();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80832D24-80832D28 00002C 0004+00 0/4 0/0 0/0 .rodata          @3810 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3810 = 2.0f;
COMPILER_STRIP_GATE(0x80832D24, &lit_3810);
#pragma pop

/* 80832D28-80832D2C 000030 0004+00 0/1 0/0 0/0 .rodata          @3811 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3811 = 35.0f;
COMPILER_STRIP_GATE(0x80832D28, &lit_3811);
#pragma pop

/* 80832D2C-80832D30 000034 0004+00 0/2 0/0 0/0 .rodata          @3812 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3812 = 300.0f;
COMPILER_STRIP_GATE(0x80832D2C, &lit_3812);
#pragma pop

/* 80832DFC-80832E40 000038 0044+00 1/1 0/0 0/0 .data            cc_zm_src__22@unnamed@d_a_e_zm_cpp@
 */
SECTION_DATA static u8 data_80832DFC[68] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0xD8, 0xFB, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00, 0x45,
    0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x25, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00,
};

/* 80832E40-80832E80 00007C 0040+00 1/1 0/0 0/0 .data cc_zm_at_src__22@unnamed@d_a_e_zm_cpp@ */
SECTION_DATA static u8 data_80832E40[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D,
    0xD8, 0xFB, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};

/* 80832E80-80832E84 0000BC 0004+00 1/1 0/0 0/0 .data            eff_delete_id$4116 */
SECTION_DATA static u8 eff_delete_id[4] = {
    0x88,
    0x69,
    0x88,
    0x6A,
};

/* 80832E84-80832E8C 0000C0 0006+02 1/1 0/0 0/0 .data            eff_bullet_id$4543 */
SECTION_DATA static u8 eff_bullet_id[6 + 2 /* padding */] = {
    0x88,
    0x66,
    0x88,
    0x67,
    0x88,
    0x68,
    /* padding */
    0x00,
    0x00,
};

/* 80832E8C-80832E94 0000C8 0008+00 1/1 0/0 0/0 .data            eff_bullet_delete_id$4544 */
SECTION_DATA static u8 eff_bullet_delete_id[8] = {
    0x88, 0x62, 0x88, 0x63, 0x88, 0x64, 0x88, 0x65,
};

/* 80832E94-80832EB0 -00001 001C+00 1/1 0/0 0/0 .data            @4712 */
SECTION_DATA static void* lit_4712[7] = {
    (void*)(((char*)action__8daE_ZM_cFv) + 0x48), (void*)(((char*)action__8daE_ZM_cFv) + 0x54),
    (void*)(((char*)action__8daE_ZM_cFv) + 0x60), (void*)(((char*)action__8daE_ZM_cFv) + 0x6C),
    (void*)(((char*)action__8daE_ZM_cFv) + 0x78), (void*)(((char*)action__8daE_ZM_cFv) + 0x84),
    (void*)(((char*)action__8daE_ZM_cFv) + 0x90),
};

/* 80832EB0-80832ED0 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_ZM_Method */
static actor_method_class l_daE_ZM_Method = {
    (process_method_func)daE_ZM_Create__FP8daE_ZM_c,
    (process_method_func)daE_ZM_Delete__FP8daE_ZM_c,
    (process_method_func)daE_ZM_Execute__FP8daE_ZM_c,
    (process_method_func)daE_ZM_IsDelete__FP8daE_ZM_c,
    (process_method_func)daE_ZM_Draw__FP8daE_ZM_c,
};

/* 80832ED0-80832F00 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_ZM */
extern actor_process_profile_definition g_profile_E_ZM = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_ZM,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daE_ZM_c),       // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  174,                    // mPriority
  &l_daE_ZM_Method,       // sub_method
  0x00040120,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80832F00-80832F0C 00013C 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80832F0C-80832F18 000148 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80832F18-80832F24 000154 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80832F24-80832F30 000160 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80832F30-80832F3C 00016C 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80832F3C-80832F48 000178 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80832F48-80832F6C 000184 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8083288C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80832884,
};

/* 80832F6C-80832F78 0001A8 000C+00 2/2 0/0 0/0 .data            __vt__12daE_ZM_HIO_c */
SECTION_DATA extern void* __vt__12daE_ZM_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_ZM_HIO_cFv,
};

/* 8082F94C-8082F9A0 0000EC 0054+00 1/1 0/0 0/0 .text            __ct__12daE_ZM_HIO_cFv */
daE_ZM_HIO_c::daE_ZM_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80832D30-80832D34 000038 0004+00 0/2 0/0 0/0 .rodata          @3885 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3885 = 10.0f;
COMPILER_STRIP_GATE(0x80832D30, &lit_3885);
#pragma pop

/* 80832D34-80832D38 00003C 0004+00 0/2 0/0 0/0 .rodata          @3886 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3886 = 70.0f;
COMPILER_STRIP_GATE(0x80832D34, &lit_3886);
#pragma pop

/* 80832F80-80832F84 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_80832F80[4];

/* 80832F84-80832F90 00000C 000C+00 1/1 0/0 0/0 .bss             @3805 */
static u8 lit_3805[12];

/* 80832F90-80832FAC 000018 001C+00 11/11 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[28];

/* 8082F9A0-8082FBB4 000140 0214+00 1/1 0/0 0/0 .text            draw__8daE_ZM_cFv */
void daE_ZM_c::draw() {
    // NONMATCHING
}

/* 8082FBB4-8082FBD4 000354 0020+00 1/0 0/0 0/0 .text            daE_ZM_Draw__FP8daE_ZM_c */
static void daE_ZM_Draw(daE_ZM_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80832D38-80832D3C 000040 0004+00 1/3 0/0 0/0 .rodata          @3900 */
SECTION_RODATA static f32 const lit_3900 = -1.0f;
COMPILER_STRIP_GATE(0x80832D38, &lit_3900);

/* 80832DB8-80832DB8 0000C0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80832DB8 = "E_ZM";
#pragma pop

/* 8082FBD4-8082FC80 000374 00AC+00 6/6 0/0 0/0 .text            setBck__8daE_ZM_cFiUcff */
void daE_ZM_c::setBck(int param_0, u8 param_1, f32 param_2, f32 param_3) {
    // NONMATCHING
}

/* 8082FC80-8082FC8C 000420 000C+00 7/7 0/0 0/0 .text            setActionMode__8daE_ZM_cFii */
void daE_ZM_c::setActionMode(int param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80832D3C-80832D40 000044 0004+00 1/6 0/0 0/0 .rodata          @4050 */
SECTION_RODATA static f32 const lit_4050 = 3.0f;
COMPILER_STRIP_GATE(0x80832D3C, &lit_4050);

/* 80832D40-80832D44 000048 0004+00 0/3 0/0 0/0 .rodata          @4051 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4051 = 200.0f;
COMPILER_STRIP_GATE(0x80832D40, &lit_4051);
#pragma pop

/* 8082FC8C-808301E0 00042C 0554+00 1/1 0/0 0/0 .text            damage_check__8daE_ZM_cFv */
void daE_ZM_c::damage_check() {
    // NONMATCHING
}

/* 808301E0-80830288 000980 00A8+00 1/1 0/0 0/0 .text            mCutTypeCheck__8daE_ZM_cFv */
void daE_ZM_c::mCutTypeCheck() {
    // NONMATCHING
}

/* 80830288-8083033C 000A28 00B4+00 1/1 0/0 0/0 .text            s_PointSearch__FPvPv */
static void s_PointSearch(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 8083033C-80830398 000ADC 005C+00 1/1 0/0 0/0 .text            executeSearchPoint__8daE_ZM_cFv */
void daE_ZM_c::executeSearchPoint() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80832D44-80832D48 00004C 0004+00 0/2 0/0 0/0 .rodata          @4251 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4251 = 5.0f;
COMPILER_STRIP_GATE(0x80832D44, &lit_4251);
#pragma pop

/* 80832D48-80832D4C 000050 0004+00 0/1 0/0 0/0 .rodata          @4252 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4252 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80832D48, &lit_4252);
#pragma pop

/* 80832D4C-80832D50 000054 0004+00 0/3 0/0 0/0 .rodata          @4253 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4253 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x80832D4C, &lit_4253);
#pragma pop

/* 80832D50-80832D58 000058 0004+04 0/1 0/0 0/0 .rodata          @4254 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4254[1 + 1 /* padding */] = {
    1.0f / 10.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80832D50, &lit_4254);
#pragma pop

/* 80832D58-80832D60 000060 0008+00 0/3 0/0 0/0 .rodata          @4256 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4256[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80832D58, &lit_4256);
#pragma pop

/* 80830398-808309DC 000B38 0644+00 1/1 0/0 0/0 .text            executeWait__8daE_ZM_cFv */
void daE_ZM_c::executeWait() {
    // NONMATCHING
}

/* 808309DC-80830AB8 00117C 00DC+00 1/1 0/0 0/0 .text            executeMove__8daE_ZM_cFv */
void daE_ZM_c::executeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80832D60-80832D64 000068 0004+00 0/2 0/0 0/0 .rodata          @4389 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4389 = 60.0f;
COMPILER_STRIP_GATE(0x80832D60, &lit_4389);
#pragma pop

/* 80830AB8-80830E28 001258 0370+00 1/1 0/0 0/0 .text            executeAttack__8daE_ZM_cFv */
void daE_ZM_c::executeAttack() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80832D64-80832D68 00006C 0004+00 0/1 0/0 0/0 .rodata          @4448 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4448 = 4000.0f;
COMPILER_STRIP_GATE(0x80832D64, &lit_4448);
#pragma pop

/* 80832D68-80832D6C 000070 0004+00 0/1 0/0 0/0 .rodata          @4449 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4449 = 12000.0f;
COMPILER_STRIP_GATE(0x80832D68, &lit_4449);
#pragma pop

/* 80832D6C-80832D70 000074 0004+00 0/2 0/0 0/0 .rodata          @4450 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4450 = 500.0f;
COMPILER_STRIP_GATE(0x80832D6C, &lit_4450);
#pragma pop

/* 80832D70-80832D74 000078 0004+00 0/1 0/0 0/0 .rodata          @4451 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4451 = -500.0f;
COMPILER_STRIP_GATE(0x80832D70, &lit_4451);
#pragma pop

/* 80830E28-808310C4 0015C8 029C+00 1/1 0/0 0/0 .text            executeDamage__8daE_ZM_cFv */
void daE_ZM_c::executeDamage() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80832D74-80832D78 00007C 0004+00 0/1 0/0 0/0 .rodata          @4528 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4528 = 40.0f;
COMPILER_STRIP_GATE(0x80832D74, &lit_4528);
#pragma pop

/* 80832D78-80832D7C 000080 0004+00 0/2 0/0 0/0 .rodata          @4529 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4529 = -20.0f;
COMPILER_STRIP_GATE(0x80832D78, &lit_4529);
#pragma pop

/* 80832D7C-80832D80 000084 0004+00 0/1 0/0 0/0 .rodata          @4530 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4530 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80832D7C, &lit_4530);
#pragma pop

/* 80832D80-80832D84 000088 0004+00 0/1 0/0 0/0 .rodata          @4531 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4531 = 9.0f / 10.0f;
COMPILER_STRIP_GATE(0x80832D80, &lit_4531);
#pragma pop

/* 80832D84-80832D88 00008C 0004+00 0/1 0/0 0/0 .rodata          @4532 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4532 = 30.0f;
COMPILER_STRIP_GATE(0x80832D84, &lit_4532);
#pragma pop

/* 80832D88-80832D8C 000090 0004+00 0/1 0/0 0/0 .rodata          @4533 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4533 = -6.0f;
COMPILER_STRIP_GATE(0x80832D88, &lit_4533);
#pragma pop

/* 808310C4-80831474 001864 03B0+00 1/1 0/0 0/0 .text            executeDead__8daE_ZM_cFv */
void daE_ZM_c::executeDead() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80832D8C-80832D90 000094 0004+00 0/1 0/0 0/0 .rodata          @4677 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4677 = 20.0f;
COMPILER_STRIP_GATE(0x80832D8C, &lit_4677);
#pragma pop

/* 80832D90-80832D94 000098 0004+00 0/1 0/0 0/0 .rodata          @4678 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4678 = 250.0f;
COMPILER_STRIP_GATE(0x80832D90, &lit_4678);
#pragma pop

/* 80832D94-80832D98 00009C 0004+00 0/1 0/0 0/0 .rodata          @4679 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4679 = 0.5f;
COMPILER_STRIP_GATE(0x80832D94, &lit_4679);
#pragma pop

/* 80832D98-80832D9C 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4680 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4680 = 1.5f;
COMPILER_STRIP_GATE(0x80832D98, &lit_4680);
#pragma pop

/* 80831474-80831930 001C14 04BC+00 1/1 0/0 0/0 .text            executeBullet__8daE_ZM_cFv */
void daE_ZM_c::executeBullet() {
    // NONMATCHING
}

/* 80831930-80831B08 0020D0 01D8+00 2/1 0/0 0/0 .text            action__8daE_ZM_cFv */
void daE_ZM_c::action() {
    // NONMATCHING
}

/* 80831B08-80831B9C 0022A8 0094+00 2/2 0/0 0/0 .text            mtx_set__8daE_ZM_cFv */
void daE_ZM_c::mtx_set() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80832D9C-80832DA0 0000A4 0004+00 0/0 0/0 0/0 .rodata          @4711 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4711 = 1000.0f;
COMPILER_STRIP_GATE(0x80832D9C, &lit_4711);
#pragma pop

/* 80832DA0-80832DA8 0000A8 0008+00 0/0 0/0 0/0 .rodata          @4714 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4714[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80832DA0, &lit_4714);
#pragma pop

/* 80832DA8-80832DAC 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4772 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4772 = -60.0f;
COMPILER_STRIP_GATE(0x80832DA8, &lit_4772);
#pragma pop

/* 80832DAC-80832DB0 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4773 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4773 = 140.0f;
COMPILER_STRIP_GATE(0x80832DAC, &lit_4773);
#pragma pop

/* 80831B9C-80831D64 00233C 01C8+00 1/1 0/0 0/0 .text            cc_set__8daE_ZM_cFv */
void daE_ZM_c::cc_set() {
    // NONMATCHING
}

/* 80831D64-80831E74 002504 0110+00 1/1 0/0 0/0 .text            execute__8daE_ZM_cFv */
void daE_ZM_c::execute() {
    // NONMATCHING
}

/* 80831E74-80831E94 002614 0020+00 1/0 0/0 0/0 .text            daE_ZM_Execute__FP8daE_ZM_c */
static void daE_ZM_Execute(daE_ZM_c* param_0) {
    // NONMATCHING
}

/* 80831E94-80831E9C 002634 0008+00 1/0 0/0 0/0 .text            daE_ZM_IsDelete__FP8daE_ZM_c */
static bool daE_ZM_IsDelete(daE_ZM_c* param_0) {
    return true;
}

/* 80831E9C-80831F2C 00263C 0090+00 1/1 0/0 0/0 .text            _delete__8daE_ZM_cFv */
void daE_ZM_c::_delete() {
    // NONMATCHING
}

/* 80831F2C-80831F4C 0026CC 0020+00 1/0 0/0 0/0 .text            daE_ZM_Delete__FP8daE_ZM_c */
static void daE_ZM_Delete(daE_ZM_c* param_0) {
    // NONMATCHING
}

/* 80831F4C-80832044 0026EC 00F8+00 1/1 0/0 0/0 .text            CreateHeap__8daE_ZM_cFv */
void daE_ZM_c::CreateHeap() {
    // NONMATCHING
}

/* 80832044-80832064 0027E4 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80832DB0-80832DB4 0000B8 0004+00 0/1 0/0 0/0 .rodata          @5031 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5031 = -400.0f;
COMPILER_STRIP_GATE(0x80832DB0, &lit_5031);
#pragma pop

/* 80832DB4-80832DB8 0000BC 0004+00 0/1 0/0 0/0 .rodata          @5032 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5032 = 400.0f;
COMPILER_STRIP_GATE(0x80832DB4, &lit_5032);
#pragma pop

/* 80832DB8-80832DB8 0000C0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80832DBD = "E_zm";
#pragma pop

/* 80832064-80832580 002804 051C+00 1/1 0/0 0/0 .text            create__8daE_ZM_cFv */
void daE_ZM_c::create() {
    // NONMATCHING
}

/* 80832580-808325C8 002D20 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 808325C8-80832610 002D68 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80832610-80832658 002DB0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80832658-808326B4 002DF8 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 808326B4-80832724 002E54 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80832724-80832794 002EC4 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80832794-80832798 002F34 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80832798-808327B8 002F38 0020+00 1/0 0/0 0/0 .text            daE_ZM_Create__FP8daE_ZM_c */
static void daE_ZM_Create(daE_ZM_c* param_0) {
    // NONMATCHING
}

/* 808327B8-80832800 002F58 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80832800-80832848 002FA0 0048+00 2/1 0/0 0/0 .text            __dt__12daE_ZM_HIO_cFv */
daE_ZM_HIO_c::~daE_ZM_HIO_c() {
    // NONMATCHING
}

/* 80832848-80832884 002FE8 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_zm_cpp */
void __sinit_d_a_e_zm_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80832848, __sinit_d_a_e_zm_cpp);
#pragma pop

/* 80832884-8083288C 003024 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80832884() {
    // NONMATCHING
}

/* 8083288C-80832894 00302C 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_8083288C() {
    // NONMATCHING
}

/* 80832CA8-80832CE4 003448 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80832DB8-80832DB8 0000C0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
