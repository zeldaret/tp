/**
 * @file d_a_e_hb.cpp
 * 
*/

#include "d/actor/d_a_e_hb.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"
UNK_REL_DATA;
#include "f_op/f_op_actor_enemy.h"


//
// Forward References:
//

extern "C" void __ct__12daE_HB_HIO_cFv();
extern "C" static void anm_init__FP10e_hb_classifUcf();
extern "C" static void leaf_anm_init__FP10e_hb_classifUcf();
extern "C" static void daE_HB_Draw__FP10e_hb_class();
extern "C" static void pl_check__FP10e_hb_classf();
extern "C" static void damage_check__FP10e_hb_class();
extern "C" static void e_hb_stay__FP10e_hb_class();
extern "C" static void e_hb_appear__FP10e_hb_class();
extern "C" static void e_hb_appear_v__FP10e_hb_class();
extern "C" static void e_hb_wait__FP10e_hb_class();
extern "C" static void e_hb_attack__FP10e_hb_class();
extern "C" static void e_hb_chance__FP10e_hb_class();
extern "C" static void e_hb_s_damage__FP10e_hb_class();
extern "C" static void e_hb_damage__FP10e_hb_class();
extern "C" static void kuki_control1__FP10e_hb_class();
extern "C" static void kuki_control2__FP10e_hb_class();
extern "C" static void kuki_control3__FP10e_hb_class();
extern "C" static void kuki_ha_set__FP10e_hb_class();
extern "C" static void action__FP10e_hb_class();
extern "C" static void eff_set__FP10e_hb_classi();
extern "C" static void anm_se_set__FP10e_hb_class();
extern "C" static void daE_HB_Execute__FP10e_hb_class();
extern "C" static bool daE_HB_IsDelete__FP10e_hb_class();
extern "C" static void daE_HB_Delete__FP10e_hb_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daE_HB_Create__FP10fopAc_ac_c();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __ct__5csXyzFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_HB_HIO_cFv();
extern "C" void __sinit_d_a_e_hb_cpp();
extern "C" static void func_80500654();
extern "C" static void func_8050065C();
extern "C" void __dt__5csXyzFv();
extern "C" void __dt__4cXyzFv();
extern "C" extern char const* const d_a_e_hb__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv();
extern "C" void play__14mDoExt_McaMorfFP3VecUlSc();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi();
extern "C" void update__19mDoExt_3DlineMat1_cFiR8_GXColorP12dKy_tevstr_c();
extern "C" void setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createBokkuri__FUsPC4cXyziiiPC4cXyzii();
extern "C" void fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void forceOnEventMove__Q213dPa_control_c7level_cFUl();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void StartCAt__8dCcD_SphFR4cXyz();
extern "C" void MoveCAt__8dCcD_SphFR4cXyz();
extern "C" void def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c();
extern "C" void at_power_check__FP11dCcU_AtInfo();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void GetAc__8cCcD_ObjFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxScale__FfffUc();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void deleteAllParticle__14JPABaseEmitterFv();
extern "C" void func_802807E0();
extern "C" void func_80280808();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setLinkSearch__15Z2CreatureEnemyFb();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void __construct_array();
extern "C" void _savegpr_19();
extern "C" void _savegpr_22();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_22();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__19mDoExt_3DlineMat1_c[5];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mGndCheck__11fopAcM_gc_c[84];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" f32 mGroundY__11fopAcM_gc_c;
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80500B30-80500B34 00002C 0004+00 1/4 0/0 0/0 .rodata          @3809 */
SECTION_RODATA static f32 const lit_3809 = 0.5f;
COMPILER_STRIP_GATE(0x80500B30, &lit_3809);

/* 80500C74-80500C78 000038 0004+00 1/1 0/0 0/0 .data            l_color$3841 */
SECTION_DATA static u8 l_color[4] = {
    0x14,
    0x0F,
    0x00,
    0xFF,
};

/* 80500C78-80500C90 00003C 0016+02 1/1 0/0 0/0 .data            pow_xa$4594 */
SECTION_DATA static u8 pow_xa[22 + 2 /* padding */] = {
    0x00,
    0x00,
    0x00,
    0x00,
    0x10,
    0x00,
    0x20,
    0x00,
    0x30,
    0x00,
    0x40,
    0x00,
    0x30,
    0x00,
    0x20,
    0x00,
    0x10,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    /* padding */
    0x00,
    0x00,
};

/* 80500C90-80500CB4 -00001 0024+00 1/1 0/0 0/0 .data            @4967 */
SECTION_DATA static void* lit_4967[9] = {
    (void*)(((char*)action__FP10e_hb_class) + 0x1CC),
    (void*)(((char*)action__FP10e_hb_class) + 0x1E0),
    (void*)(((char*)action__FP10e_hb_class) + 0x200),
    (void*)(((char*)action__FP10e_hb_class) + 0x220),
    (void*)(((char*)action__FP10e_hb_class) + 0x240),
    (void*)(((char*)action__FP10e_hb_class) + 0x2AC),
    (void*)(((char*)action__FP10e_hb_class) + 0x260),
    (void*)(((char*)action__FP10e_hb_class) + 0x280),
    (void*)(((char*)action__FP10e_hb_class) + 0x2A0),
};

/* 80500CB4-80500CBC 000078 0006+02 1/1 0/0 0/0 .data            p_name$4973 */
SECTION_DATA static u8 p_name[6 + 2 /* padding */] = {
    0x83,
    0x39,
    0x83,
    0x3A,
    0x83,
    0x3B,
    /* padding */
    0x00,
    0x00,
};

/* 80500CBC-80500CC8 000080 000C+00 1/1 0/0 0/0 .data            p_idx$4974 */
SECTION_DATA static u8 p_idx[12] = {
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06,
};

/* 80500CC8-80500D08 00008C 0040+00 0/1 0/0 0/0 .data            cc_sph_src$5310 */
#pragma push
#pragma force_active on
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0xd}, {0xd8fbfdff, 0x3}, 0x25}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_STONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 80500D08-80500D48 0000CC 0040+00 0/1 0/0 0/0 .data            at_sph_src$5311 */
#pragma push
#pragma force_active on
static dCcD_SrcSph at_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x1, 0xd}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_HARD_BODY, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 35.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 80500D48-80500D88 00010C 0040+00 0/1 0/0 0/0 .data            kuki_sph_src$5312 */
#pragma push
#pragma force_active on
static dCcD_SrcSph kuki_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0xd}, {0xd8fbfdff, 0x3}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 20.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 80500D88-80500DA8 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_HB_Method */
static actor_method_class l_daE_HB_Method = {
    (process_method_func)daE_HB_Create__FP10fopAc_ac_c,
    (process_method_func)daE_HB_Delete__FP10e_hb_class,
    (process_method_func)daE_HB_Execute__FP10e_hb_class,
    (process_method_func)daE_HB_IsDelete__FP10e_hb_class,
    (process_method_func)daE_HB_Draw__FP10e_hb_class,
};

/* 80500DA8-80500DD8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_HB */
extern actor_process_profile_definition g_profile_E_HB = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_HB,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(e_hb_class),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  140,                    // mPriority
  &l_daE_HB_Method,       // sub_method
  0x10050100,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80500DD8-80500DE4 00019C 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80500DE4-80500DF0 0001A8 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80500DF0-80500DFC 0001B4 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80500DFC-80500E20 0001C0 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8050065C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80500654,
};

/* 80500E20-80500E2C 0001E4 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80500E2C-80500E38 0001F0 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80500E38-80500E4C 0001FC 0014+00 1/1 0/0 0/0 .data            __vt__18mDoExt_3DlineMat_c */
SECTION_DATA extern void* __vt__18mDoExt_3DlineMat_c[5] = {
    (void*)NULL /* RTTI */, (void*)NULL, (void*)NULL, (void*)NULL, (void*)NULL,
};

/* 80500E4C-80500E58 000210 000C+00 2/2 0/0 0/0 .data            __vt__12daE_HB_HIO_c */
SECTION_DATA extern void* __vt__12daE_HB_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_HB_HIO_cFv,
};

/* 804FBD6C-804FBDB8 0000EC 004C+00 1/1 0/0 0/0 .text            __ct__12daE_HB_HIO_cFv */
daE_HB_HIO_c::daE_HB_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80500B34-80500B38 000030 0004+00 2/3 0/0 0/0 .rodata          @3823 */
SECTION_RODATA static f32 const lit_3823 = -1.0f;
COMPILER_STRIP_GATE(0x80500B34, &lit_3823);

/* 80500C34-80500C34 000130 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80500C34 = "E_hb";
#pragma pop

/* 804FBDB8-804FBE64 000138 00AC+00 8/8 0/0 0/0 .text            anm_init__FP10e_hb_classifUcf */
static void anm_init(e_hb_class* param_0, int param_1, f32 param_2, u8 param_3, f32 param_4) {
    // NONMATCHING
}

/* 804FBE64-804FBF3C 0001E4 00D8+00 8/8 0/0 0/0 .text            leaf_anm_init__FP10e_hb_classifUcf
 */
static void leaf_anm_init(e_hb_class* param_0, int param_1, f32 param_2, u8 param_3,
                              f32 param_4) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80500B38-80500B3C 000034 0004+00 0/6 0/0 0/0 .rodata          @3870 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3870 = 50.0f;
COMPILER_STRIP_GATE(0x80500B38, &lit_3870);
#pragma pop

/* 80500B3C-80500B40 000038 0004+00 0/1 0/0 0/0 .rodata          @3871 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3871 = 600.0f;
COMPILER_STRIP_GATE(0x80500B3C, &lit_3871);
#pragma pop

/* 804FBF3C-804FC0C0 0002BC 0184+00 1/0 0/0 0/0 .text            daE_HB_Draw__FP10e_hb_class */
static void daE_HB_Draw(e_hb_class* param_0) {
    // NONMATCHING
}

/* 804FC0C0-804FC118 000440 0058+00 2/2 0/0 0/0 .text            pl_check__FP10e_hb_classf */
static void pl_check(e_hb_class* param_0, f32 param_1) {
    // NONMATCHING
}

/* 804FC118-804FC504 000498 03EC+00 1/1 0/0 0/0 .text            damage_check__FP10e_hb_class */
static void damage_check(e_hb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80500B40-80500B44 00003C 0004+00 0/4 0/0 0/0 .rodata          @4035 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4035 = 10.0f;
COMPILER_STRIP_GATE(0x80500B40, &lit_4035);
#pragma pop

/* 80500B44-80500B48 000040 0004+00 0/2 0/0 0/0 .rodata          @4036 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4036 = -170.0f;
COMPILER_STRIP_GATE(0x80500B44, &lit_4036);
#pragma pop

/* 80500B48-80500B4C 000044 0004+00 0/4 0/0 0/0 .rodata          @4037 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4037 = 170.0f;
COMPILER_STRIP_GATE(0x80500B48, &lit_4037);
#pragma pop

/* 80500B4C-80500B50 000048 0004+00 0/4 0/0 0/0 .rodata          @4038 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4038 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80500B4C, &lit_4038);
#pragma pop

/* 80500B50-80500B54 00004C 0004+00 0/6 0/0 0/0 .rodata          @4039 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4039 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80500B50, &lit_4039);
#pragma pop

/* 80500B54-80500B58 000050 0004+00 0/5 0/0 0/0 .rodata          @4040 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4040 = 20.0f;
COMPILER_STRIP_GATE(0x80500B54, &lit_4040);
#pragma pop

/* 80500B58-80500B5C 000054 0004+00 0/1 0/0 0/0 .rodata          @4041 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4041 = 4.0f;
COMPILER_STRIP_GATE(0x80500B58, &lit_4041);
#pragma pop

/* 80500B5C-80500B60 000058 0004+00 0/1 0/0 0/0 .rodata          @4042 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4042 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x80500B5C, &lit_4042);
#pragma pop

/* 80500B60-80500B64 00005C 0004+00 0/1 0/0 0/0 .rodata          @4043 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4043 = 1.0f / 50.0f;
COMPILER_STRIP_GATE(0x80500B60, &lit_4043);
#pragma pop

/* 80500B64-80500B68 000060 0004+00 0/7 0/0 0/0 .rodata          @4044 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4044 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80500B64, &lit_4044);
#pragma pop

/* 80500E60-80500E64 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_80500E60[4];

/* 80500E64-80500E70 00000C 000C+00 1/1 0/0 0/0 .bss             @3804 */
static u8 lit_3804[12];

/* 80500E70-80500E8C 000018 001C+00 9/9 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[28];

/* 804FC504-804FC85C 000884 0358+00 1/1 0/0 0/0 .text            e_hb_stay__FP10e_hb_class */
static void e_hb_stay(e_hb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80500B68-80500B6C 000064 0004+00 0/5 0/0 0/0 .rodata          @4078 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4078 = 30.0f;
COMPILER_STRIP_GATE(0x80500B68, &lit_4078);
#pragma pop

/* 804FC85C-804FCB1C 000BDC 02C0+00 1/1 0/0 0/0 .text            e_hb_appear__FP10e_hb_class */
static void e_hb_appear(e_hb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80500B6C-80500B70 000068 0004+00 1/5 0/0 0/0 .rodata          @4108 */
SECTION_RODATA static f32 const lit_4108 = 5.0f;
COMPILER_STRIP_GATE(0x80500B6C, &lit_4108);

/* 80500B70-80500B74 00006C 0004+00 0/3 0/0 0/0 .rodata          @4109 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4109 = 15.0f;
COMPILER_STRIP_GATE(0x80500B70, &lit_4109);
#pragma pop

/* 80500B74-80500B78 000070 0004+00 0/3 0/0 0/0 .rodata          @4110 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4110 = 60.0f;
COMPILER_STRIP_GATE(0x80500B74, &lit_4110);
#pragma pop

/* 80500B78-80500B7C 000074 0004+00 0/3 0/0 0/0 .rodata          @4111 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4111 = 40.0f;
COMPILER_STRIP_GATE(0x80500B78, &lit_4111);
#pragma pop

/* 80500B7C-80500B80 000078 0004+00 0/2 0/0 0/0 .rodata          @4112 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4112 = 400.0f;
COMPILER_STRIP_GATE(0x80500B7C, &lit_4112);
#pragma pop

/* 80500B80-80500B84 00007C 0004+00 0/1 0/0 0/0 .rodata          @4113 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4113 = 3.0f / 20.0f;
COMPILER_STRIP_GATE(0x80500B80, &lit_4113);
#pragma pop

/* 804FCB1C-804FCCE8 000E9C 01CC+00 1/1 0/0 0/0 .text            e_hb_appear_v__FP10e_hb_class */
static void e_hb_appear_v(e_hb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80500B84-80500B88 000080 0004+00 0/1 0/0 0/0 .rodata          @4206 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4206 = 0.75f;
COMPILER_STRIP_GATE(0x80500B84, &lit_4206);
#pragma pop

/* 80500B88-80500B8C 000084 0004+00 0/1 0/0 0/0 .rodata          @4207 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4207 = 90.0f;
COMPILER_STRIP_GATE(0x80500B88, &lit_4207);
#pragma pop

/* 80500B8C-80500B90 000088 0004+00 0/2 0/0 0/0 .rodata          @4208 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4208 = -100.0f;
COMPILER_STRIP_GATE(0x80500B8C, &lit_4208);
#pragma pop

/* 80500B90-80500B94 00008C 0004+00 0/1 0/0 0/0 .rodata          @4209 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4209 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80500B90, &lit_4209);
#pragma pop

/* 80500B94-80500B9C 000090 0004+04 0/1 0/0 0/0 .rodata          @4210 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4210[1 + 1 /* padding */] = {
    700.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80500B94, &lit_4210);
#pragma pop

/* 80500B9C-80500BA4 000098 0008+00 1/3 0/0 0/0 .rodata          @4212 */
SECTION_RODATA static u8 const lit_4212[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80500B9C, &lit_4212);

/* 804FCCE8-804FD230 001068 0548+00 1/1 0/0 0/0 .text            e_hb_wait__FP10e_hb_class */
static void e_hb_wait(e_hb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80500BA4-80500BA8 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4405 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4405 = 350.0f;
COMPILER_STRIP_GATE(0x80500BA4, &lit_4405);
#pragma pop

/* 80500BA8-80500BAC 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4406 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4406 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x80500BA8, &lit_4406);
#pragma pop

/* 80500BAC-80500BB0 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4407 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4407 = 2.0f;
COMPILER_STRIP_GATE(0x80500BAC, &lit_4407);
#pragma pop

/* 80500BB0-80500BB4 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4408 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4408 = 2000.0f;
COMPILER_STRIP_GATE(0x80500BB0, &lit_4408);
#pragma pop

/* 80500BB4-80500BB8 0000B0 0004+00 0/2 0/0 0/0 .rodata          @4409 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4409 = 70.0f;
COMPILER_STRIP_GATE(0x80500BB4, &lit_4409);
#pragma pop

/* 80500BB8-80500BBC 0000B4 0004+00 0/3 0/0 0/0 .rodata          @4410 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4410 = -50.0f;
COMPILER_STRIP_GATE(0x80500BB8, &lit_4410);
#pragma pop

/* 80500BBC-80500BC0 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4411 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4411 = 200.0f;
COMPILER_STRIP_GATE(0x80500BBC, &lit_4411);
#pragma pop

/* 804FD230-804FDC90 0015B0 0A60+00 1/1 0/0 0/0 .text            e_hb_attack__FP10e_hb_class */
static void e_hb_attack(e_hb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80500BC0-80500BC4 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4464 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4464 = 230.0f;
COMPILER_STRIP_GATE(0x80500BC0, &lit_4464);
#pragma pop

/* 80500BC4-80500BC8 0000C0 0004+00 0/4 0/0 0/0 .rodata          @4465 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4465 = 3.0f;
COMPILER_STRIP_GATE(0x80500BC4, &lit_4465);
#pragma pop

/* 804FDC90-804FDF90 002010 0300+00 1/1 0/0 0/0 .text            e_hb_chance__FP10e_hb_class */
static void e_hb_chance(e_hb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80500BC8-80500BCC 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4510 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4510 = 250.0f;
COMPILER_STRIP_GATE(0x80500BC8, &lit_4510);
#pragma pop

/* 80500BCC-80500BD0 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4511 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4511 = 23.0f / 25.0f;
COMPILER_STRIP_GATE(0x80500BCC, &lit_4511);
#pragma pop

/* 804FDF90-804FE1E8 002310 0258+00 1/1 0/0 0/0 .text            e_hb_s_damage__FP10e_hb_class */
static void e_hb_s_damage(e_hb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80500BD0-80500BD4 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4588 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4588 = -20.0f;
COMPILER_STRIP_GATE(0x80500BD0, &lit_4588);
#pragma pop

/* 80500BD4-80500BD8 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4589 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4589 = 450.0f;
COMPILER_STRIP_GATE(0x80500BD4, &lit_4589);
#pragma pop

/* 80500BD8-80500BDC 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4590 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4590 = -1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80500BD8, &lit_4590);
#pragma pop

/* 804FE1E8-804FE5C8 002568 03E0+00 1/1 0/0 0/0 .text            e_hb_damage__FP10e_hb_class */
static void e_hb_damage(e_hb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80500BDC-80500BE0 0000D8 0004+00 0/1 0/0 0/0 .rodata          @4669 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4669 = -30.0f;
COMPILER_STRIP_GATE(0x80500BDC, &lit_4669);
#pragma pop

/* 80500BE0-80500BE4 0000DC 0004+00 0/1 0/0 0/0 .rodata          @4670 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4670 = -200.0f;
COMPILER_STRIP_GATE(0x80500BE0, &lit_4670);
#pragma pop

/* 804FE5C8-804FE8F8 002948 0330+00 1/1 0/0 0/0 .text            kuki_control1__FP10e_hb_class */
static void kuki_control1(e_hb_class* param_0) {
    // NONMATCHING
}

/* 804FE8F8-804FEA6C 002C78 0174+00 1/1 0/0 0/0 .text            kuki_control2__FP10e_hb_class */
static void kuki_control2(e_hb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80500BE4-80500BE8 0000E0 0004+00 1/1 0/0 0/0 .rodata          @4725 */
SECTION_RODATA static f32 const lit_4725 = 11.0f;
COMPILER_STRIP_GATE(0x80500BE4, &lit_4725);

/* 804FEA6C-804FEB48 002DEC 00DC+00 1/1 0/0 0/0 .text            kuki_control3__FP10e_hb_class */
static void kuki_control3(e_hb_class* param_0) {
    // NONMATCHING
}

/* 804FEB48-804FEC34 002EC8 00EC+00 1/1 0/0 0/0 .text            kuki_ha_set__FP10e_hb_class */
static void kuki_ha_set(e_hb_class* param_0) {
    // NONMATCHING
}

/* 804FEC34-804FF214 002FB4 05E0+00 2/1 0/0 0/0 .text            action__FP10e_hb_class */
static void action(e_hb_class* param_0) {
    // NONMATCHING
}

/* 804FF214-804FF5DC 003594 03C8+00 1/1 0/0 0/0 .text            eff_set__FP10e_hb_classi */
static void eff_set(e_hb_class* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80500BE8-80500BEC 0000E4 0004+00 0/0 0/0 0/0 .rodata          @4821 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4821 = -10.0f;
COMPILER_STRIP_GATE(0x80500BE8, &lit_4821);
#pragma pop

/* 80500BEC-80500BF0 0000E8 0004+00 0/1 0/0 0/0 .rodata          @4822 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4822 = 10000.0f;
COMPILER_STRIP_GATE(0x80500BEC, &lit_4822);
#pragma pop

/* 80500BF0-80500BF4 0000EC 0004+00 0/0 0/0 0/0 .rodata          @4823 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4823 = 65536.0f;
COMPILER_STRIP_GATE(0x80500BF0, &lit_4823);
#pragma pop

/* 80500BF4-80500BF8 0000F0 0004+00 0/0 0/0 0/0 .rodata          @4824 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4824 = -5.0f;
COMPILER_STRIP_GATE(0x80500BF4, &lit_4824);
#pragma pop

/* 80500BF8-80500BFC 0000F4 0004+00 0/0 0/0 0/0 .rodata          @4963 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4963 = 25.0f;
COMPILER_STRIP_GATE(0x80500BF8, &lit_4963);
#pragma pop

/* 80500BFC-80500C00 0000F8 0004+00 0/1 0/0 0/0 .rodata          @4964 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4964 = -30000.0f;
COMPILER_STRIP_GATE(0x80500BFC, &lit_4964);
#pragma pop

/* 80500C00-80500C04 0000FC 0004+00 0/0 0/0 0/0 .rodata          @4965 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4965 = 300000.0f;
COMPILER_STRIP_GATE(0x80500C00, &lit_4965);
#pragma pop

/* 80500C04-80500C08 000100 0004+00 0/0 0/0 0/0 .rodata          @4966 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4966 = 30000.0f;
COMPILER_STRIP_GATE(0x80500C04, &lit_4966);
#pragma pop

/* 80500C08-80500C0C 000104 0004+00 0/1 0/0 0/0 .rodata          @5136 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5136 = 22.0f;
COMPILER_STRIP_GATE(0x80500C08, &lit_5136);
#pragma pop

/* 80500C0C-80500C10 000108 0004+00 0/1 0/0 0/0 .rodata          @5137 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5137 = 21.0f;
COMPILER_STRIP_GATE(0x80500C0C, &lit_5137);
#pragma pop

/* 804FF5DC-804FF744 00395C 0168+00 1/1 0/0 0/0 .text            anm_se_set__FP10e_hb_class */
static void anm_se_set(e_hb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80500C10-80500C14 00010C 0004+00 0/1 0/0 0/0 .rodata          @5234 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5234 = -20000.0f;
COMPILER_STRIP_GATE(0x80500C10, &lit_5234);
#pragma pop

/* 804FF744-804FFAFC 003AC4 03B8+00 2/1 0/0 0/0 .text            daE_HB_Execute__FP10e_hb_class */
static void daE_HB_Execute(e_hb_class* param_0) {
    // NONMATCHING
}

/* 804FFAFC-804FFB04 003E7C 0008+00 1/0 0/0 0/0 .text            daE_HB_IsDelete__FP10e_hb_class */
static bool daE_HB_IsDelete(e_hb_class* param_0) {
    return true;
}

/* 804FFB04-804FFB6C 003E84 0068+00 1/0 0/0 0/0 .text            daE_HB_Delete__FP10e_hb_class */
static void daE_HB_Delete(e_hb_class* param_0) {
    // NONMATCHING
}

/* 804FFB6C-804FFD60 003EEC 01F4+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80500C14-80500C18 000110 0004+00 0/1 0/0 0/0 .rodata          @5440 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5440 = 500.0f;
COMPILER_STRIP_GATE(0x80500C14, &lit_5440);
#pragma pop

/* 80500C18-80500C1C 000114 0004+00 0/1 0/0 0/0 .rodata          @5441 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5441 = -300.0f;
COMPILER_STRIP_GATE(0x80500C18, &lit_5441);
#pragma pop

/* 80500C1C-80500C20 000118 0004+00 0/1 0/0 0/0 .rodata          @5442 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5442 = -400.0f;
COMPILER_STRIP_GATE(0x80500C1C, &lit_5442);
#pragma pop

/* 80500C20-80500C24 00011C 0004+00 0/1 0/0 0/0 .rodata          @5443 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5443 = 300.0f;
COMPILER_STRIP_GATE(0x80500C20, &lit_5443);
#pragma pop

/* 80500C24-80500C2C 000120 0004+04 0/1 0/0 0/0 .rodata          @5444 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5444[1 + 1 /* padding */] = {
    65535.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80500C24, &lit_5444);
#pragma pop

/* 80500C2C-80500C34 000128 0008+00 0/1 0/0 0/0 .rodata          @5446 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5446[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80500C2C, &lit_5446);
#pragma pop

/* 804FFD60-80500264 0040E0 0504+00 1/0 0/0 0/0 .text            daE_HB_Create__FP10fopAc_ac_c */
static void daE_HB_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80500264-805002D4 0045E4 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 805002D4-80500344 004654 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80500344-805003C8 0046C4 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
extern "C" void __ct__8dCcD_SphFv() {
    // NONMATCHING
}

/* 805003C8-80500494 004748 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

/* 80500494-805004DC 004814 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 805004DC-80500524 00485C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80500524-80500580 0048A4 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80500580-80500584 004900 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80500584-80500588 004904 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80500588-805005D0 004908 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 805005D0-80500618 004950 0048+00 2/1 0/0 0/0 .text            __dt__12daE_HB_HIO_cFv */
daE_HB_HIO_c::~daE_HB_HIO_c() {
    // NONMATCHING
}

/* 80500618-80500654 004998 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_hb_cpp */
void __sinit_d_a_e_hb_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80500618, __sinit_d_a_e_hb_cpp);
#pragma pop

/* 80500654-8050065C 0049D4 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80500654() {
    // NONMATCHING
}

/* 8050065C-80500664 0049DC 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_8050065C() {
    // NONMATCHING
}

/* 80500A78-80500AB4 004DF8 003C+00 1/1 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80500AB4-80500AF0 004E34 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80500C34-80500C34 000130 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
