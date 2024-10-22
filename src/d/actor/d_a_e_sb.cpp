/**
 * @file d_a_e_sb.cpp
 * 
*/

#include "d/actor/d_a_e_sb.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__12daE_SB_HIO_cFv();
extern "C" void CreateHeap__8daE_SB_cFv();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void initCcCylinder__8daE_SB_cFv();
extern "C" void setCcCylinder__8daE_SB_cFv();
extern "C" void ctrlJoint__8daE_SB_cFP8J3DJointP8J3DModel();
extern "C" static void JointCallBack__FP8J3DJointi();
extern "C" void Particle_Set__8daE_SB_cFUs();
extern "C" void SetAnm__8daE_SB_cFiiff();
extern "C" void MemberClear__8daE_SB_cFv();
extern "C" static void other_bg_check__FP8daE_SB_cP10fopAc_ac_c();
extern "C" static void s_obj_sub__FPvPv();
extern "C" static void s_bomb_sub__FPvPv();
extern "C" void Shield_Motion__8daE_SB_cFv();
extern "C" void AttackStop__8daE_SB_cFv();
extern "C" void AttackSetSP__8daE_SB_cFv();
extern "C" void AttackAngle__8daE_SB_cFv();
extern "C" void AttackSpeedMotion__8daE_SB_cFv();
extern "C" void Attack_Motion__8daE_SB_cFv();
extern "C" void Bomb_Death_Motion__8daE_SB_cFv();
extern "C" void BombJumpSet__8daE_SB_cFv();
extern "C" void GetHomeSet__8daE_SB_cFv();
extern "C" void HomeJumpMotion__8daE_SB_cFv();
extern "C" void Jump_Normal_Set__8daE_SB_cFv();
extern "C" void Jump_Set__8daE_SB_cFv();
extern "C" void JumpMiddleMotion__8daE_SB_cFv();
extern "C" void Jump_Motion__8daE_SB_cFv();
extern "C" void Death_Motion__8daE_SB_cFv();
extern "C" void Hanekaeri__8daE_SB_cFv();
extern "C" void Hit__8daE_SB_cFv();
extern "C" void ActionCheck__8daE_SB_cFv();
extern "C" void Search__8daE_SB_cFv();
extern "C" void Wait_Motion__8daE_SB_cFv();
extern "C" void Attack__8daE_SB_cFv();
extern "C" void Shield__8daE_SB_cFv();
extern "C" void Anm_Motion__8daE_SB_cFv();
extern "C" void Search_Bomb__8daE_SB_cFv();
extern "C" void ChanceMotion__8daE_SB_cFv();
extern "C" void NoChanceMotion__8daE_SB_cFv();
extern "C" void Obj_Damage__8daE_SB_cFv();
extern "C" void HashiraVib__8daE_SB_cFv();
extern "C" void Yazirushi__8daE_SB_cFv();
extern "C" void setGroundAngle__8daE_SB_cFv();
extern "C" void Execute__8daE_SB_cFv();
extern "C" void Draw__8daE_SB_cFv();
extern "C" void Delete__8daE_SB_cFv();
extern "C" void setBaseMtx__8daE_SB_cFv();
extern "C" static void daE_SB_Draw__FP8daE_SB_c();
extern "C" static void daE_SB_Execute__FP8daE_SB_c();
extern "C" static bool daE_SB_IsDelete__FP8daE_SB_c();
extern "C" static void daE_SB_Delete__FP8daE_SB_c();
extern "C" void Create__8daE_SB_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" static void daE_SB_Create__FP10fopAc_ac_c();
extern "C" void __dt__12daE_SB_HIO_cFv();
extern "C" void __sinit_d_a_e_sb_cpp();
extern "C" static void func_80784D44();
extern "C" static void func_80784D4C();
extern "C" extern char const* const d_a_e_sb__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void checkMasterSwordEquip__9daPy_py_cFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setLinkSearch__15Z2CreatureEnemyFb();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
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
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" f32 mGroundY__11fopAcM_gc_c;
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80784D68-80784D6C 000000 0004+00 18/18 0/0 0/0 .rodata          @3658 */
SECTION_RODATA static f32 const lit_3658 = 1100.0f;
COMPILER_STRIP_GATE(0x80784D68, &lit_3658);

/* 80784D6C-80784D70 000004 0004+00 0/1 0/0 0/0 .rodata          @3659 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3659 = 600.0f;
COMPILER_STRIP_GATE(0x80784D6C, &lit_3659);
#pragma pop

/* 80784D70-80784D74 000008 0004+00 0/1 0/0 0/0 .rodata          @3660 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3660 = 40.0f;
COMPILER_STRIP_GATE(0x80784D70, &lit_3660);
#pragma pop

/* 80784D74-80784D78 00000C 0004+00 0/1 0/0 0/0 .rodata          @3661 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3661 = 35.0f;
COMPILER_STRIP_GATE(0x80784D74, &lit_3661);
#pragma pop

/* 80784D78-80784D7C 000010 0004+00 0/1 0/0 0/0 .rodata          @3662 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3662 = 75.0f;
COMPILER_STRIP_GATE(0x80784D78, &lit_3662);
#pragma pop

/* 80784D7C-80784D80 000014 0004+00 0/5 0/0 0/0 .rodata          @3663 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3663 = 30.0f;
COMPILER_STRIP_GATE(0x80784D7C, &lit_3663);
#pragma pop

/* 80784D80-80784D84 000018 0004+00 0/1 0/0 0/0 .rodata          @3664 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3664 = 83.0f / 100.0f;
COMPILER_STRIP_GATE(0x80784D80, &lit_3664);
#pragma pop

/* 80784D84-80784D88 00001C 0004+00 3/7 0/0 0/0 .rodata          @3665 */
SECTION_RODATA static f32 const lit_3665 = 1.0f;
COMPILER_STRIP_GATE(0x80784D84, &lit_3665);

/* 80784D88-80784D8C 000020 0004+00 0/2 0/0 0/0 .rodata          @3666 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3666 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80784D88, &lit_3666);
#pragma pop

/* 80784D8C-80784D90 000024 0004+00 0/1 0/0 0/0 .rodata          @3667 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3667 = 7.0f / 5.0f;
COMPILER_STRIP_GATE(0x80784D8C, &lit_3667);
#pragma pop

/* 80784D90-80784D94 000028 0004+00 0/3 0/0 0/0 .rodata          @3668 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3668 = 1000.0f;
COMPILER_STRIP_GATE(0x80784D90, &lit_3668);
#pragma pop

/* 80784E6C-80784E88 -00001 001C+00 1/1 0/0 0/0 .data            @4468 */
SECTION_DATA static void* lit_4468[7] = {
    (void*)(((char*)Anm_Motion__8daE_SB_cFv) + 0x4C),
    (void*)(((char*)Anm_Motion__8daE_SB_cFv) + 0x44),
    (void*)(((char*)Anm_Motion__8daE_SB_cFv) + 0x64),
    (void*)(((char*)Anm_Motion__8daE_SB_cFv) + 0xE4),
    (void*)(((char*)Anm_Motion__8daE_SB_cFv) + 0x54),
    (void*)(((char*)Anm_Motion__8daE_SB_cFv) + 0x5C),
    (void*)(((char*)Anm_Motion__8daE_SB_cFv) + 0xEC),
};

/* 80784E88-80784EA8 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_SB_Method */
static actor_method_class l_daE_SB_Method = {
    (process_method_func)daE_SB_Create__FP10fopAc_ac_c,
    (process_method_func)daE_SB_Delete__FP8daE_SB_c,
    (process_method_func)daE_SB_Execute__FP8daE_SB_c,
    (process_method_func)daE_SB_IsDelete__FP8daE_SB_c,
    (process_method_func)daE_SB_Draw__FP8daE_SB_c,
};

/* 80784EA8-80784ED8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_SB */
extern actor_process_profile_definition g_profile_E_SB = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_SB,              // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daE_SB_c),       // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  125,                    // mPriority
  &l_daE_SB_Method,       // sub_method
  0x00040100,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80784ED8-80784EE4 00006C 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80784EE4-80784EF0 000078 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80784EF0-80784EFC 000084 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80784EFC-80784F20 000090 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80784D4C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80784D44,
};

/* 80784F20-80784F2C 0000B4 000C+00 2/2 0/0 0/0 .data            __vt__12daE_SB_HIO_c */
SECTION_DATA extern void* __vt__12daE_SB_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_SB_HIO_cFv,
};

/* 8078164C-807816D8 0000EC 008C+00 1/1 0/0 0/0 .text            __ct__12daE_SB_HIO_cFv */
daE_SB_HIO_c::daE_SB_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80784E64-80784E64 0000FC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80784E64 = "E_SB";
#pragma pop

/* 807816D8-807817D0 000178 00F8+00 1/1 0/0 0/0 .text            CreateHeap__8daE_SB_cFv */
void daE_SB_c::CreateHeap() {
    // NONMATCHING
}

/* 807817D0-807817F0 000270 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80784D94-80784DD8 00002C 0044+00 1/1 0/0 0/0 .rodata          ccCylSrc$3693 */
const static dCcD_SrcCyl ccCylSrc = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x2, 0xd}, {0x6032, 0x11}, 0x75}}, // mObj
        {dCcD_SE_STONE, 0x0, 0x0, 0x0, 0x1}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x1}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        80.0f, // mRadius
        130.0f // mHeight
    } // mCyl
};

/* 807817F0-80781850 000290 0060+00 1/1 0/0 0/0 .text            initCcCylinder__8daE_SB_cFv */
void daE_SB_c::initCcCylinder() {
    // NONMATCHING
}

/* 80781850-80781898 0002F0 0048+00 1/1 0/0 0/0 .text            setCcCylinder__8daE_SB_cFv */
void daE_SB_c::setCcCylinder() {
    // NONMATCHING
}

/* 80781898-80781990 000338 00F8+00 1/1 0/0 0/0 .text ctrlJoint__8daE_SB_cFP8J3DJointP8J3DModel */
void daE_SB_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* 80781990-807819DC 000430 004C+00 1/1 0/0 0/0 .text            JointCallBack__FP8J3DJointi */
static void JointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 807819DC-80781A4C 00047C 0070+00 6/6 0/0 0/0 .text            Particle_Set__8daE_SB_cFUs */
void daE_SB_c::Particle_Set(u16 param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80784DD8-80784DDC 000070 0004+00 7/17 0/0 0/0 .rodata          @3758 */
SECTION_RODATA static u8 const lit_3758[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80784DD8, &lit_3758);

/* 80784DDC-80784DE0 000074 0004+00 1/6 0/0 0/0 .rodata          @3759 */
SECTION_RODATA static f32 const lit_3759 = -1.0f;
COMPILER_STRIP_GATE(0x80784DDC, &lit_3759);

/* 80781A4C-80781AF8 0004EC 00AC+00 8/8 0/0 0/0 .text            SetAnm__8daE_SB_cFiiff */
void daE_SB_c::SetAnm(int param_0, int param_1, f32 param_2, f32 param_3) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80784DE0-80784DE4 000078 0004+00 1/4 0/0 0/0 .rodata          @3768 */
SECTION_RODATA static f32 const lit_3768 = -9.0f;
COMPILER_STRIP_GATE(0x80784DE0, &lit_3768);

/* 80781AF8-80781B54 000598 005C+00 8/8 0/0 0/0 .text            MemberClear__8daE_SB_cFv */
void daE_SB_c::MemberClear() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80784DE4-80784DE8 00007C 0004+00 1/6 0/0 0/0 .rodata          @3831 */
SECTION_RODATA static f32 const lit_3831 = 100.0f;
COMPILER_STRIP_GATE(0x80784DE4, &lit_3831);

/* 80781B54-80781C2C 0005F4 00D8+00 2/2 0/0 0/0 .text other_bg_check__FP8daE_SB_cP10fopAc_ac_c */
static void other_bg_check(daE_SB_c* param_0, fopAc_ac_c* param_1) {
    // NONMATCHING
}

/* 80781C2C-80781D34 0006CC 0108+00 2/2 0/0 0/0 .text            s_obj_sub__FPvPv */
static void s_obj_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80781D34-80781DD4 0007D4 00A0+00 1/1 0/0 0/0 .text            s_bomb_sub__FPvPv */
static void s_bomb_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80784DE8-80784DEC 000080 0004+00 4/11 0/0 0/0 .rodata          @3906 */
SECTION_RODATA static f32 const lit_3906 = 5.0f;
COMPILER_STRIP_GATE(0x80784DE8, &lit_3906);

/* 80784DEC-80784DF0 000084 0004+00 0/2 0/0 0/0 .rodata          @3907 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3907 = -5.0f;
COMPILER_STRIP_GATE(0x80784DEC, &lit_3907);
#pragma pop

/* 80784F38-80784F3C 000008 0001+03 2/2 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 80784F3C-80784F40 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 80784F40-80784F44 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 80784F44-80784F48 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 80784F48-80784F4C 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 80784F4C-80784F50 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 80784F50-80784F54 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 80784F54-80784F58 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 80784F58-80784F5C 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 80784F5C-80784F60 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 80784F60-80784F64 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 80784F64-80784F68 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 80784F68-80784F6C 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 80784F6C-80784F70 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 80784F70-80784F74 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 80784F74-80784F78 -00001 0004+00 2/2 0/0 0/0 .bss             None */
/* 80784F74 0001+00 data_80784F74 @1009 */
/* 80784F75 0003+00 data_80784F75 None */
static u8 struct_80784F74[4];

/* 80784F78-80784F84 000048 000C+00 1/1 0/0 0/0 .bss             @3653 */
static u8 lit_3653[12];

/* 80784F84-80784FC4 000054 0040+00 14/16 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[64];

/* 80784FC4-80784FC8 000094 0004+00 2/2 0/0 0/0 .bss             s_Bomb__22@unnamed@d_a_e_sb_cpp@ */
static u8 data_80784FC4[4];

/* 80784FC8-80784FCC 000098 0002+02 3/5 0/0 0/0 .bss s_TargetAngle__22@unnamed@d_a_e_sb_cpp@ */
static u8 data_80784FC8[2 + 2 /* padding */];

/* 80784FCC-80784FD0 00009C 0004+00 5/7 0/0 0/0 .bss             s_LinkPos__22@unnamed@d_a_e_sb_cpp@
 */
static u8 data_80784FCC[4];

/* 80781DD4-80781F30 000874 015C+00 1/1 0/0 0/0 .text            Shield_Motion__8daE_SB_cFv */
void daE_SB_c::Shield_Motion() {
    // NONMATCHING
}

/* 80781F30-80781F80 0009D0 0050+00 1/1 0/0 0/0 .text            AttackStop__8daE_SB_cFv */
void daE_SB_c::AttackStop() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80784DF0-80784DF4 000088 0004+00 0/5 0/0 0/0 .rodata          @3954 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3954 = 200.0f;
COMPILER_STRIP_GATE(0x80784DF0, &lit_3954);
#pragma pop

/* 80784DF4-80784DF8 00008C 0004+00 0/3 0/0 0/0 .rodata          @3955 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3955 = -200.0f;
COMPILER_STRIP_GATE(0x80784DF4, &lit_3955);
#pragma pop

/* 80784DF8-80784DFC 000090 0004+00 0/1 0/0 0/0 .rodata          @3956 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3956 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x80784DF8, &lit_3956);
#pragma pop

/* 80784DFC-80784E00 000094 0004+00 1/4 0/0 0/0 .rodata          @3957 */
SECTION_RODATA static f32 const lit_3957 = 0.5f;
COMPILER_STRIP_GATE(0x80784DFC, &lit_3957);

/* 80781F80-80782180 000A20 0200+00 1/1 0/0 0/0 .text            AttackSetSP__8daE_SB_cFv */
void daE_SB_c::AttackSetSP() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80784E00-80784E04 000098 0004+00 1/1 0/0 0/0 .rodata          @3975 */
SECTION_RODATA static f32 const lit_3975 = 1792.0f;
COMPILER_STRIP_GATE(0x80784E00, &lit_3975);

/* 80782180-80782264 000C20 00E4+00 1/1 0/0 0/0 .text            AttackAngle__8daE_SB_cFv */
void daE_SB_c::AttackAngle() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80784E04-80784E08 00009C 0004+00 0/3 0/0 0/0 .rodata          @3981 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3981 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80784E04, &lit_3981);
#pragma pop

/* 80782264-807822B8 000D04 0054+00 1/1 0/0 0/0 .text            AttackSpeedMotion__8daE_SB_cFv */
void daE_SB_c::AttackSpeedMotion() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80784E08-80784E0C 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4064 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4064 = 53.0f;
COMPILER_STRIP_GATE(0x80784E08, &lit_4064);
#pragma pop

/* 80784E0C-80784E10 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4065 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4065 = 64.0f;
COMPILER_STRIP_GATE(0x80784E0C, &lit_4065);
#pragma pop

/* 80784E10-80784E18 0000A8 0004+04 0/1 0/0 0/0 .rodata          @4066 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4066[1 + 1 /* padding */] = {
    2.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80784E10, &lit_4066);
#pragma pop

/* 807822B8-80782650 000D58 0398+00 1/1 0/0 0/0 .text            Attack_Motion__8daE_SB_cFv */
void daE_SB_c::Attack_Motion() {
    // NONMATCHING
}

/* 80782650-80782714 0010F0 00C4+00 1/1 0/0 0/0 .text            Bomb_Death_Motion__8daE_SB_cFv */
void daE_SB_c::Bomb_Death_Motion() {
    // NONMATCHING
}

/* 80782714-8078273C 0011B4 0028+00 1/1 0/0 0/0 .text            BombJumpSet__8daE_SB_cFv */
void daE_SB_c::BombJumpSet() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80784E18-80784E20 0000B0 0008+00 0/2 0/0 0/0 .rodata          @4130 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4130[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80784E18, &lit_4130);
#pragma pop

/* 80784E20-80784E28 0000B8 0008+00 0/2 0/0 0/0 .rodata          @4131 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4131[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80784E20, &lit_4131);
#pragma pop

/* 80784E28-80784E30 0000C0 0008+00 0/2 0/0 0/0 .rodata          @4132 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4132[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80784E28, &lit_4132);
#pragma pop

/* 80784E30-80784E34 0000C8 0004+00 0/2 0/0 0/0 .rodata          @4133 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4133 = 300.0f;
COMPILER_STRIP_GATE(0x80784E30, &lit_4133);
#pragma pop

/* 8078273C-8078294C 0011DC 0210+00 1/1 0/0 0/0 .text            GetHomeSet__8daE_SB_cFv */
void daE_SB_c::GetHomeSet() {
    // NONMATCHING
}

/* 8078294C-807829E8 0013EC 009C+00 1/1 0/0 0/0 .text            HomeJumpMotion__8daE_SB_cFv */
void daE_SB_c::HomeJumpMotion() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80784E34-80784E38 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4166 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4166 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x80784E34, &lit_4166);
#pragma pop

/* 807829E8-80782B7C 001488 0194+00 1/1 0/0 0/0 .text            Jump_Normal_Set__8daE_SB_cFv */
void daE_SB_c::Jump_Normal_Set() {
    // NONMATCHING
}

/* 80782B7C-80782BD4 00161C 0058+00 1/1 0/0 0/0 .text            Jump_Set__8daE_SB_cFv */
void daE_SB_c::Jump_Set() {
    // NONMATCHING
}

/* 80782BD4-80782CC8 001674 00F4+00 1/1 0/0 0/0 .text            JumpMiddleMotion__8daE_SB_cFv */
void daE_SB_c::JumpMiddleMotion() {
    // NONMATCHING
}

/* 80782CC8-80782E90 001768 01C8+00 1/1 0/0 0/0 .text            Jump_Motion__8daE_SB_cFv */
void daE_SB_c::Jump_Motion() {
    // NONMATCHING
}

/* 80782E90-80782ED4 001930 0044+00 1/1 0/0 0/0 .text            Death_Motion__8daE_SB_cFv */
void daE_SB_c::Death_Motion() {
    // NONMATCHING
}

/* 80782ED4-80782EF4 001974 0020+00 1/1 0/0 0/0 .text            Hanekaeri__8daE_SB_cFv */
void daE_SB_c::Hanekaeri() {
    // NONMATCHING
}

/* 80782EF4-80782F10 001994 001C+00 1/1 0/0 0/0 .text            Hit__8daE_SB_cFv */
void daE_SB_c::Hit() {
    // NONMATCHING
}

/* 80782F10-80783010 0019B0 0100+00 5/5 0/0 0/0 .text            ActionCheck__8daE_SB_cFv */
void daE_SB_c::ActionCheck() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80784E38-80784E3C 0000D0 0004+00 0/2 0/0 0/0 .rodata          @4370 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4370 = 400.0f;
COMPILER_STRIP_GATE(0x80784E38, &lit_4370);
#pragma pop

/* 80783010-80783404 001AB0 03F4+00 1/1 0/0 0/0 .text            Search__8daE_SB_cFv */
void daE_SB_c::Search() {
    // NONMATCHING
}

/* 80783404-807834FC 001EA4 00F8+00 1/1 0/0 0/0 .text            Wait_Motion__8daE_SB_cFv */
void daE_SB_c::Wait_Motion() {
    // NONMATCHING
}

/* 807834FC-807835A0 001F9C 00A4+00 1/1 0/0 0/0 .text            Attack__8daE_SB_cFv */
void daE_SB_c::Attack() {
    // NONMATCHING
}

/* 807835A0-80783678 002040 00D8+00 1/1 0/0 0/0 .text            Shield__8daE_SB_cFv */
void daE_SB_c::Shield() {
    // NONMATCHING
}

/* 80783678-80783854 002118 01DC+00 2/1 0/0 0/0 .text            Anm_Motion__8daE_SB_cFv */
void daE_SB_c::Anm_Motion() {
    // NONMATCHING
}

/* 80783854-80783914 0022F4 00C0+00 1/1 0/0 0/0 .text            Search_Bomb__8daE_SB_cFv */
void daE_SB_c::Search_Bomb() {
    // NONMATCHING
}

/* 80783914-80783A9C 0023B4 0188+00 1/1 0/0 0/0 .text            ChanceMotion__8daE_SB_cFv */
void daE_SB_c::ChanceMotion() {
    // NONMATCHING
}

/* 80783A9C-80783B4C 00253C 00B0+00 1/1 0/0 0/0 .text            NoChanceMotion__8daE_SB_cFv */
void daE_SB_c::NoChanceMotion() {
    // NONMATCHING
}

/* 80783B4C-80783FBC 0025EC 0470+00 5/5 0/0 0/0 .text            Obj_Damage__8daE_SB_cFv */
void daE_SB_c::Obj_Damage() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80784E3C-80784E40 0000D4 0004+00 0/0 0/0 0/0 .rodata          @4467 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4467 = 49.5f;
COMPILER_STRIP_GATE(0x80784E3C, &lit_4467);
#pragma pop

/* 80784E40-80784E44 0000D8 0004+00 0/1 0/0 0/0 .rodata          @4656 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4656 = 6000.0f;
COMPILER_STRIP_GATE(0x80784E40, &lit_4656);
#pragma pop

/* 80784E44-80784E48 0000DC 0004+00 0/1 0/0 0/0 .rodata          @4657 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4657 = 9.0f / 10.0f;
COMPILER_STRIP_GATE(0x80784E44, &lit_4657);
#pragma pop

/* 80784E48-80784E50 0000E0 0004+04 0/1 0/0 0/0 .rodata          @4658 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4658[1 + 1 /* padding */] = {
    8192.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80784E48, &lit_4658);
#pragma pop

/* 80784E50-80784E58 0000E8 0008+00 0/1 0/0 0/0 .rodata          @4660 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4660[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80784E50, &lit_4660);
#pragma pop

/* 80783FBC-80784144 002A5C 0188+00 1/1 0/0 0/0 .text            HashiraVib__8daE_SB_cFv */
void daE_SB_c::HashiraVib() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80784E58-80784E5C 0000F0 0004+00 1/2 0/0 0/0 .rodata          @4682 */
SECTION_RODATA static f32 const lit_4682 = 80.0f;
COMPILER_STRIP_GATE(0x80784E58, &lit_4682);

/* 80784144-807841CC 002BE4 0088+00 1/1 0/0 0/0 .text            Yazirushi__8daE_SB_cFv */
void daE_SB_c::Yazirushi() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80784E5C-80784E60 0000F4 0004+00 0/1 0/0 0/0 .rodata          @4738 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4738 = 50.0f;
COMPILER_STRIP_GATE(0x80784E5C, &lit_4738);
#pragma pop

/* 80784E60-80784E64 0000F8 0004+00 0/1 0/0 0/0 .rodata          @4739 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4739 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80784E60, &lit_4739);
#pragma pop

/* 807841CC-80784390 002C6C 01C4+00 1/1 0/0 0/0 .text            setGroundAngle__8daE_SB_cFv */
void daE_SB_c::setGroundAngle() {
    // NONMATCHING
}

/* 80784390-807844BC 002E30 012C+00 1/1 0/0 0/0 .text            Execute__8daE_SB_cFv */
void daE_SB_c::Execute() {
    // NONMATCHING
}

/* 807844BC-807845D8 002F5C 011C+00 1/1 0/0 0/0 .text            Draw__8daE_SB_cFv */
void daE_SB_c::Draw() {
    // NONMATCHING
}

/* 807845D8-80784640 003078 0068+00 1/1 0/0 0/0 .text            Delete__8daE_SB_cFv */
void daE_SB_c::Delete() {
    // NONMATCHING
}

/* 80784640-807846B8 0030E0 0078+00 1/1 0/0 0/0 .text            setBaseMtx__8daE_SB_cFv */
void daE_SB_c::setBaseMtx() {
    // NONMATCHING
}

/* 807846B8-807846D8 003158 0020+00 1/0 0/0 0/0 .text            daE_SB_Draw__FP8daE_SB_c */
static void daE_SB_Draw(daE_SB_c* param_0) {
    // NONMATCHING
}

/* 807846D8-807846F8 003178 0020+00 2/1 0/0 0/0 .text            daE_SB_Execute__FP8daE_SB_c */
static void daE_SB_Execute(daE_SB_c* param_0) {
    // NONMATCHING
}

/* 807846F8-80784700 003198 0008+00 1/0 0/0 0/0 .text            daE_SB_IsDelete__FP8daE_SB_c */
static bool daE_SB_IsDelete(daE_SB_c* param_0) {
    return true;
}

/* 80784700-80784720 0031A0 0020+00 1/0 0/0 0/0 .text            daE_SB_Delete__FP8daE_SB_c */
static void daE_SB_Delete(daE_SB_c* param_0) {
    // NONMATCHING
}

/* 80784720-80784B58 0031C0 0438+00 1/1 0/0 0/0 .text            Create__8daE_SB_cFv */
void daE_SB_c::Create() {
    // NONMATCHING
}

/* 80784B58-80784BA0 0035F8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80784BA0-80784BE8 003640 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80784BE8-80784C30 003688 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80784C30-80784CA0 0036D0 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80784CA0-80784CC0 003740 0020+00 1/0 0/0 0/0 .text            daE_SB_Create__FP10fopAc_ac_c */
static void daE_SB_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80784CC0-80784D08 003760 0048+00 2/1 0/0 0/0 .text            __dt__12daE_SB_HIO_cFv */
daE_SB_HIO_c::~daE_SB_HIO_c() {
    // NONMATCHING
}

/* 80784D08-80784D44 0037A8 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_sb_cpp */
void __sinit_d_a_e_sb_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80784D08, __sinit_d_a_e_sb_cpp);
#pragma pop

/* 80784D44-80784D4C 0037E4 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80784D44() {
    // NONMATCHING
}

/* 80784D4C-80784D54 0037EC 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80784D4C() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80784FD0-80784FD4 0000A0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80784FD0[4];
#pragma pop

/* 80784FD4-80784FD8 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80784FD4[4];
#pragma pop

/* 80784FD8-80784FDC 0000A8 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80784FD8[4];
#pragma pop

/* 80784FDC-80784FE0 0000AC 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80784FDC[4];
#pragma pop

/* 80784FE0-80784FE4 0000B0 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80784FE0[4];
#pragma pop

/* 80784FE4-80784FE8 0000B4 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80784FE4[4];
#pragma pop

/* 80784FE8-80784FEC 0000B8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80784FE8[4];
#pragma pop

/* 80784FEC-80784FF0 0000BC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80784FEC[4];
#pragma pop

/* 80784FF0-80784FF4 0000C0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80784FF0[4];
#pragma pop

/* 80784FF4-80784FF8 0000C4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80784FF4[4];
#pragma pop

/* 80784FF8-80784FFC 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80784FF8[4];
#pragma pop

/* 80784FFC-80785000 0000CC 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80784FFC[4];
#pragma pop

/* 80785000-80785004 0000D0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80785000[4];
#pragma pop

/* 80785004-80785008 0000D4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80785004[4];
#pragma pop

/* 80785008-8078500C 0000D8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80785008[4];
#pragma pop

/* 8078500C-80785010 0000DC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_8078500C[4];
#pragma pop

/* 80785010-80785014 0000E0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80785010[4];
#pragma pop

/* 80785014-80785018 0000E4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80785014[4];
#pragma pop

/* 80785018-8078501C 0000E8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_80785018[4];
#pragma pop

/* 8078501C-80785020 0000EC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_8078501C[4];
#pragma pop

/* 80785020-80785024 0000F0 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80785020[4];
#pragma pop

/* 80785024-80785028 0000F4 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80785024[4];
#pragma pop

/* 80785028-8078502C 0000F8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80785028[4];
#pragma pop

/* 8078502C-80785030 0000FC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8078502C[4];
#pragma pop

/* 80785030-80785034 000100 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80785030[4];
#pragma pop

/* 80784E64-80784E64 0000FC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */