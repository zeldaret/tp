/**
 * @file d_a_e_sh.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_e_sh.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"
#include "f_op/f_op_actor_enemy.h"


//
// Forward References:
//

extern "C" void __ct__12daE_SH_HIO_cFv();
extern "C" static void anm_init__FP10e_sh_classifUcf();
extern "C" static void nodeCallBack__FP8J3DJointi();
extern "C" static void daE_SH_Draw__FP10e_sh_class();
extern "C" static void damage_check__FP10e_sh_class();
extern "C" static void e_sh_stop__FP10e_sh_class();
extern "C" static void e_sh_appear__FP10e_sh_class();
extern "C" static void e_sh_move__FP10e_sh_class();
extern "C" static void e_sh_attack__FP10e_sh_class();
extern "C" static void e_sh_disappear__FP10e_sh_class();
extern "C" static void e_sh_damage__FP10e_sh_class();
extern "C" static void e_sh_dead__FP10e_sh_class();
extern "C" static void action__FP10e_sh_class();
extern "C" static void eff_set__FP10e_sh_class();
extern "C" static void anm_se_set__FP10e_sh_class();
extern "C" static void daE_SH_Execute__FP10e_sh_class();
extern "C" static bool daE_SH_IsDelete__FP10e_sh_class();
extern "C" static void daE_SH_Delete__FP10e_sh_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daE_SH_Create__FP10fopAc_ac_c();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_SH_HIO_cFv();
extern "C" void __sinit_d_a_e_sh_cpp();
extern "C" static void func_80791938();
extern "C" static void func_80791940();
extern "C" extern char const* const d_a_e_sh__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxTrans__FfffUc();
extern "C" void MtxScale__FfffUc();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void MtxPush__Fv();
extern "C" void MtxPull__Fv();
extern "C" void func_802807E0();
extern "C" void func_80280808();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void __construct_array();
extern "C" void _savegpr_19();
extern "C" void _savegpr_21();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_21();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80791D9C-80791DA0 00002C 0004+00 0/1 0/0 0/0 .rodata          @3923 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3923 = 23.0f / 20.0f;
COMPILER_STRIP_GATE(0x80791D9C, &lit_3923);
#pragma pop

/* 80791DA0-80791DA4 000030 0004+00 0/6 0/0 0/0 .rodata          @3924 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3924 = 5.0f;
COMPILER_STRIP_GATE(0x80791DA0, &lit_3924);
#pragma pop

/* 80791DA4-80791DA8 000034 0004+00 0/2 0/0 0/0 .rodata          @3925 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3925 = 20.0f;
COMPILER_STRIP_GATE(0x80791DA4, &lit_3925);
#pragma pop

/* 80791DA8-80791DAC 000038 0004+00 0/1 0/0 0/0 .rodata          @3926 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3926 = 600.0f;
COMPILER_STRIP_GATE(0x80791DA8, &lit_3926);
#pragma pop

/* 80791DAC-80791DB0 00003C 0004+00 0/1 0/0 0/0 .rodata          @3927 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3927 = 700.0f;
COMPILER_STRIP_GATE(0x80791DAC, &lit_3927);
#pragma pop

/* 80791DB0-80791DB4 000040 0004+00 0/1 0/0 0/0 .rodata          @3928 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3928 = 800.0f;
COMPILER_STRIP_GATE(0x80791DB0, &lit_3928);
#pragma pop

/* 80791DB4-80791DB8 000044 0004+00 0/1 0/0 0/0 .rodata          @3929 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3929 = 900.0f;
COMPILER_STRIP_GATE(0x80791DB4, &lit_3929);
#pragma pop

/* 80791DB8-80791DBC 000048 0004+00 0/2 0/0 0/0 .rodata          @3930 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3930 = 500.0f;
COMPILER_STRIP_GATE(0x80791DB8, &lit_3930);
#pragma pop

/* 80791F00-80791F08 000038 0006+02 1/1 0/0 0/0 .data            ap_name$4188 */
SECTION_DATA static u8 ap_name[6 + 2 /* padding */] = {
    0x81,
    0xCD,
    0x81,
    0xCE,
    0x81,
    0xCF,
    /* padding */
    0x00,
    0x00,
};

/* 80791F08-80791F10 000040 0006+02 1/1 0/0 0/0 .data            dp_name$4457 */
SECTION_DATA static u8 dp_name[6 + 2 /* padding */] = {
    0x81,
    0xD0,
    0x81,
    0xD1,
    0x81,
    0xD2,
    /* padding */
    0x00,
    0x00,
};

/* 80791F10-80791F40 -00001 0030+00 1/1 0/0 0/0 .data            @4637 */
SECTION_DATA static void* lit_4637[12] = {
    (void*)(((char*)action__FP10e_sh_class) + 0x84),
    (void*)(((char*)action__FP10e_sh_class) + 0x94),
    (void*)(((char*)action__FP10e_sh_class) + 0xA4),
    (void*)(((char*)action__FP10e_sh_class) + 0xB4),
    (void*)(((char*)action__FP10e_sh_class) + 0xF0),
    (void*)(((char*)action__FP10e_sh_class) + 0xC4),
    (void*)(((char*)action__FP10e_sh_class) + 0xF0),
    (void*)(((char*)action__FP10e_sh_class) + 0xF0),
    (void*)(((char*)action__FP10e_sh_class) + 0xF0),
    (void*)(((char*)action__FP10e_sh_class) + 0xF0),
    (void*)(((char*)action__FP10e_sh_class) + 0xD8),
    (void*)(((char*)action__FP10e_sh_class) + 0xE4),
};

/* 80791F40-80791F44 000078 0004+00 1/1 0/0 0/0 .data            p_name$4647 */
SECTION_DATA static u8 p_name[4] = {
    0x81,
    0xD4,
    0x81,
    0xD5,
};

/* 80791F44-80791F4C 00007C 0008+00 1/1 0/0 0/0 .data            p_idx$4648 */
SECTION_DATA static u8 p_idx[8] = {
    0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x0E,
};

/* 80791F4C-80791FB0 000084 0064+00 1/1 0/0 0/0 .data            time_scale$4874 */
SECTION_DATA static u8 time_scale[100] = {
    0x3F, 0x80, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x3F, 0x80, 0x00,
    0x00, 0x3F, 0x4C, 0xCC, 0xCD, 0x3F, 0x19, 0x99, 0x9A, 0x3E, 0xCC, 0xCC, 0xCD, 0x3E, 0x4C,
    0xCC, 0xCD, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3E, 0x4C, 0xCC,
    0xCD, 0x3E, 0xCC, 0xCC, 0xCD, 0x3F, 0x19, 0x99, 0x9A, 0x3F, 0x4C, 0xCC, 0xCD, 0x3F, 0x80,
    0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00,
};

/* 80791FB0-80791FF0 0000E8 0040+00 1/1 0/0 0/0 .data            cc_sph_src$5107 */
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x3}, 0x75}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 80791FF0-80792030 000128 0040+00 1/1 0/0 0/0 .data            at_sph_src$5108 */
static dCcD_SrcSph at_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x1, 0xd}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_HARD_BODY, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 80792030-80792050 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_SH_Method */
static actor_method_class l_daE_SH_Method = {
    (process_method_func)daE_SH_Create__FP10fopAc_ac_c,
    (process_method_func)daE_SH_Delete__FP10e_sh_class,
    (process_method_func)daE_SH_Execute__FP10e_sh_class,
    (process_method_func)daE_SH_IsDelete__FP10e_sh_class,
    (process_method_func)daE_SH_Draw__FP10e_sh_class,
};

/* 80792050-80792080 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_SH */
extern actor_process_profile_definition g_profile_E_SH = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_SH,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(e_sh_class),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  126,                    // mPriority
  &l_daE_SH_Method,       // sub_method
  0x00040100,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80792080-8079208C 0001B8 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 8079208C-80792098 0001C4 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80792098-807920A4 0001D0 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 807920A4-807920B0 0001DC 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 807920B0-807920BC 0001E8 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 807920BC-807920E0 0001F4 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80791940,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80791938,
};

/* 807920E0-807920EC 000218 000C+00 2/2 0/0 0/0 .data            __vt__12daE_SH_HIO_c */
SECTION_DATA extern void* __vt__12daE_SH_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_SH_HIO_cFv,
};

/* 8078E34C-8078E3B4 0000EC 0068+00 1/1 0/0 0/0 .text            __ct__12daE_SH_HIO_cFv */
daE_SH_HIO_c::daE_SH_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80791DBC-80791DC0 00004C 0004+00 1/1 0/0 0/0 .rodata          @3944 */
SECTION_RODATA static f32 const lit_3944 = -1.0f;
COMPILER_STRIP_GATE(0x80791DBC, &lit_3944);

/* 80791EC0-80791EC0 000150 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80791EC0 = "E_sh";
#pragma pop

/* 8078E3B4-8078E460 000154 00AC+00 6/6 0/0 0/0 .text            anm_init__FP10e_sh_classifUcf */
static void anm_init(e_sh_class* param_0, int param_1, f32 param_2, u8 param_3, f32 param_4) {
    // NONMATCHING
}

/* 8078E460-8078E6B8 000200 0258+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static void nodeCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80791DC0-80791DC4 000050 0004+00 0/3 0/0 0/0 .rodata          @4060 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4060 = 50.0f;
COMPILER_STRIP_GATE(0x80791DC0, &lit_4060);
#pragma pop

/* 80791DC4-80791DC8 000054 0004+00 0/1 0/0 0/0 .rodata          @4061 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4061 = 1000.0f;
COMPILER_STRIP_GATE(0x80791DC4, &lit_4061);
#pragma pop

/* 8078E6B8-8078E868 000458 01B0+00 1/0 0/0 0/0 .text            daE_SH_Draw__FP10e_sh_class */
static void daE_SH_Draw(e_sh_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80791DC8-80791DCC 000058 0004+00 1/1 0/0 0/0 .rodata          @4144 */
SECTION_RODATA static f32 const lit_4144 = 45.0f;
COMPILER_STRIP_GATE(0x80791DC8, &lit_4144);

/* 80791DCC-80791DD0 00005C 0004+00 1/2 0/0 0/0 .rodata          @4145 */
SECTION_RODATA static f32 const lit_4145 = 30.0f;
COMPILER_STRIP_GATE(0x80791DCC, &lit_4145);

/* 8078E868-8078EA58 000608 01F0+00 1/1 0/0 0/0 .text            damage_check__FP10e_sh_class */
static void damage_check(e_sh_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80791DD0-80791DD4 000060 0004+00 0/4 0/0 0/0 .rodata          @4214 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4214 = 15.0f;
COMPILER_STRIP_GATE(0x80791DD0, &lit_4214);
#pragma pop

/* 807920F8-807920FC 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_807920F8[4];

/* 807920FC-80792108 00000C 000C+00 1/1 0/0 0/0 .bss             @3918 */
static u8 lit_3918[12];

/* 80792108-80792134 000018 002C+00 8/8 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[44];

/* 8078EA58-8078EC04 0007F8 01AC+00 1/1 0/0 0/0 .text            e_sh_stop__FP10e_sh_class */
static void e_sh_stop(e_sh_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80791DD4-80791DD8 000064 0004+00 1/1 0/0 0/0 .rodata          @4237 */
SECTION_RODATA static f32 const lit_4237 = 34.0f;
COMPILER_STRIP_GATE(0x80791DD4, &lit_4237);

/* 8078EC04-8078ECCC 0009A4 00C8+00 1/1 0/0 0/0 .text            e_sh_appear__FP10e_sh_class */
static void e_sh_appear(e_sh_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80791DD8-80791DDC 000068 0004+00 0/2 0/0 0/0 .rodata          @4378 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4378 = 0.5f;
COMPILER_STRIP_GATE(0x80791DD8, &lit_4378);
#pragma pop

/* 80791DDC-80791DE0 00006C 0004+00 0/2 0/0 0/0 .rodata          @4379 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4379 = 10.0f;
COMPILER_STRIP_GATE(0x80791DDC, &lit_4379);
#pragma pop

/* 80791DE0-80791DE4 000070 0004+00 0/2 0/0 0/0 .rodata          @4380 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4380 = 1.5f;
COMPILER_STRIP_GATE(0x80791DE0, &lit_4380);
#pragma pop

/* 80791DE4-80791DE8 000074 0004+00 0/2 0/0 0/0 .rodata          @4381 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4381 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80791DE4, &lit_4381);
#pragma pop

/* 80791DE8-80791DEC 000078 0004+00 0/1 0/0 0/0 .rodata          @4382 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4382 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80791DE8, &lit_4382);
#pragma pop

/* 80791DEC-80791DF0 00007C 0004+00 0/3 0/0 0/0 .rodata          @4383 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4383 = 4.0f;
COMPILER_STRIP_GATE(0x80791DEC, &lit_4383);
#pragma pop

/* 80791DF0-80791DF4 000080 0004+00 0/1 0/0 0/0 .rodata          @4384 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4384 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80791DF0, &lit_4384);
#pragma pop

/* 80791DF4-80791DF8 000084 0004+00 0/1 0/0 0/0 .rodata          @4385 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4385 = 0x3EAA7EFA;
COMPILER_STRIP_GATE(0x80791DF4, &lit_4385);
#pragma pop

/* 80791DF8-80791DFC 000088 0004+00 0/2 0/0 0/0 .rodata          @4386 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4386 = 200.0f;
COMPILER_STRIP_GATE(0x80791DF8, &lit_4386);
#pragma pop

/* 80791DFC-80791E00 00008C 0004+00 0/1 0/0 0/0 .rodata          @4387 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4387 = 0x3E0A3D71;
COMPILER_STRIP_GATE(0x80791DFC, &lit_4387);
#pragma pop

/* 80791E00-80791E04 000090 0004+00 0/3 0/0 0/0 .rodata          @4388 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4388 = 2.0f;
COMPILER_STRIP_GATE(0x80791E00, &lit_4388);
#pragma pop

/* 80791E04-80791E08 000094 0004+00 0/4 0/0 0/0 .rodata          @4389 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4389 = 3.0f;
COMPILER_STRIP_GATE(0x80791E04, &lit_4389);
#pragma pop

/* 80791E08-80791E0C 000098 0004+00 0/2 0/0 0/0 .rodata          @4390 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4390 = 0.75f;
COMPILER_STRIP_GATE(0x80791E08, &lit_4390);
#pragma pop

/* 80791E0C-80791E10 00009C 0004+00 0/1 0/0 0/0 .rodata          @4391 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4391 = 0x3FACCCCC;
COMPILER_STRIP_GATE(0x80791E0C, &lit_4391);
#pragma pop

/* 80791E10-80791E14 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4392 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4392 = 1.125f;
COMPILER_STRIP_GATE(0x80791E10, &lit_4392);
#pragma pop

/* 8078ECCC-8078F728 000A6C 0A5C+00 1/1 0/0 0/0 .text            e_sh_move__FP10e_sh_class */
static void e_sh_move(e_sh_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80791E14-80791E18 0000A4 0004+00 0/2 0/0 0/0 .rodata          @4449 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4449 = 40.0f;
COMPILER_STRIP_GATE(0x80791E14, &lit_4449);
#pragma pop

/* 80791E18-80791E1C 0000A8 0004+00 0/2 0/0 0/0 .rodata          @4450 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4450 = -5.0f;
COMPILER_STRIP_GATE(0x80791E18, &lit_4450);
#pragma pop

/* 8078F728-8078FA38 0014C8 0310+00 1/1 0/0 0/0 .text            e_sh_attack__FP10e_sh_class */
static void e_sh_attack(e_sh_class* param_0) {
    // NONMATCHING
}

/* 8078FA38-8078FBC8 0017D8 0190+00 1/1 0/0 0/0 .text            e_sh_disappear__FP10e_sh_class */
static void e_sh_disappear(e_sh_class* param_0) {
    // NONMATCHING
}

/* 8078FBC8-8078FCC0 001968 00F8+00 1/1 0/0 0/0 .text            e_sh_damage__FP10e_sh_class */
static void e_sh_damage(e_sh_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80791E1C-80791E20 0000AC 0004+00 0/2 0/0 0/0 .rodata          @4534 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4534 = 7.0f;
COMPILER_STRIP_GATE(0x80791E1C, &lit_4534);
#pragma pop

/* 8078FCC0-8078FDB0 001A60 00F0+00 1/1 0/0 0/0 .text            e_sh_dead__FP10e_sh_class */
static void e_sh_dead(e_sh_class* param_0) {
    // NONMATCHING
}

/* 8078FDB0-80790278 001B50 04C8+00 2/1 0/0 0/0 .text            action__FP10e_sh_class */
static void action(e_sh_class* param_0) {
    // NONMATCHING
}

/* 80790278-80790498 002018 0220+00 1/1 0/0 0/0 .text            eff_set__FP10e_sh_class */
static void eff_set(e_sh_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80791E20-80791E24 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4633 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4633 = 6.0f;
COMPILER_STRIP_GATE(0x80791E20, &lit_4633);
#pragma pop

/* 80791E24-80791E28 0000B4 0004+00 0/0 0/0 0/0 .rodata          @4634 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4634 = -60.0f;
COMPILER_STRIP_GATE(0x80791E24, &lit_4634);
#pragma pop

/* 80791E28-80791E2C 0000B8 0004+00 0/0 0/0 0/0 .rodata          @4635 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4635 = -25.0f;
COMPILER_STRIP_GATE(0x80791E28, &lit_4635);
#pragma pop

/* 80791E2C-80791E30 0000BC 0004+00 0/0 0/0 0/0 .rodata          @4636 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4636 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80791E2C, &lit_4636);
#pragma pop

/* 80791E30-80791E34 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4842 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4842 = 42.0f;
COMPILER_STRIP_GATE(0x80791E30, &lit_4842);
#pragma pop

/* 80791E34-80791E38 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4843 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4843 = 44.0f;
COMPILER_STRIP_GATE(0x80791E34, &lit_4843);
#pragma pop

/* 80791E38-80791E3C 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4844 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4844 = 61.0f;
COMPILER_STRIP_GATE(0x80791E38, &lit_4844);
#pragma pop

/* 80791E3C-80791E40 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4845 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4845 = 17.0f;
COMPILER_STRIP_GATE(0x80791E3C, &lit_4845);
#pragma pop

/* 80791E40-80791E44 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4846 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4846 = 18.0f;
COMPILER_STRIP_GATE(0x80791E40, &lit_4846);
#pragma pop

/* 80791E44-80791E48 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4847 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4847 = 9.0f;
COMPILER_STRIP_GATE(0x80791E44, &lit_4847);
#pragma pop

/* 80791E48-80791E4C 0000D8 0004+00 0/1 0/0 0/0 .rodata          @4848 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4848 = 14.0f;
COMPILER_STRIP_GATE(0x80791E48, &lit_4848);
#pragma pop

/* 80791E4C-80791E50 0000DC 0004+00 0/1 0/0 0/0 .rodata          @4849 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4849 = 19.0f;
COMPILER_STRIP_GATE(0x80791E4C, &lit_4849);
#pragma pop

/* 80791E50-80791E54 0000E0 0004+00 0/2 0/0 0/0 .rodata          @4850 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4850 = 8.0f;
COMPILER_STRIP_GATE(0x80791E50, &lit_4850);
#pragma pop

/* 80791E54-80791E58 0000E4 0004+00 0/1 0/0 0/0 .rodata          @4851 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4851 = 4.5f;
COMPILER_STRIP_GATE(0x80791E54, &lit_4851);
#pragma pop

/* 80791E58-80791E5C 0000E8 0004+00 0/1 0/0 0/0 .rodata          @4852 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4852 = 11.5f;
COMPILER_STRIP_GATE(0x80791E58, &lit_4852);
#pragma pop

/* 80791E5C-80791E60 0000EC 0004+00 0/1 0/0 0/0 .rodata          @4853 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4853 = 13.5f;
COMPILER_STRIP_GATE(0x80791E5C, &lit_4853);
#pragma pop

/* 80791E60-80791E64 0000F0 0004+00 0/1 0/0 0/0 .rodata          @4854 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4854 = 9.5f;
COMPILER_STRIP_GATE(0x80791E60, &lit_4854);
#pragma pop

/* 80791E64-80791E68 0000F4 0004+00 0/1 0/0 0/0 .rodata          @4855 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4855 = 14.5f;
COMPILER_STRIP_GATE(0x80791E64, &lit_4855);
#pragma pop

/* 80791E68-80791E6C 0000F8 0004+00 0/1 0/0 0/0 .rodata          @4856 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4856 = 19.5f;
COMPILER_STRIP_GATE(0x80791E68, &lit_4856);
#pragma pop

/* 80791E6C-80791E70 0000FC 0004+00 0/1 0/0 0/0 .rodata          @4857 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4857 = 12.5f;
COMPILER_STRIP_GATE(0x80791E6C, &lit_4857);
#pragma pop

/* 80791E70-80791E74 000100 0004+00 0/1 0/0 0/0 .rodata          @4858 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4858 = 16.0f;
COMPILER_STRIP_GATE(0x80791E70, &lit_4858);
#pragma pop

/* 80791E74-80791E78 000104 0004+00 0/1 0/0 0/0 .rodata          @4859 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4859 = 21.0f;
COMPILER_STRIP_GATE(0x80791E74, &lit_4859);
#pragma pop

/* 80791E78-80791E7C 000108 0004+00 0/1 0/0 0/0 .rodata          @4860 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4860 = 28.0f;
COMPILER_STRIP_GATE(0x80791E78, &lit_4860);
#pragma pop

/* 80791E7C-80791E80 00010C 0004+00 0/1 0/0 0/0 .rodata          @4861 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4861 = 33.0f;
COMPILER_STRIP_GATE(0x80791E7C, &lit_4861);
#pragma pop

/* 80790498-80790950 002238 04B8+00 1/1 0/0 0/0 .text            anm_se_set__FP10e_sh_class */
static void anm_se_set(e_sh_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80791E80-80791E84 000110 0004+00 0/1 0/0 0/0 .rodata          @5014 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5014 = 1.0f / 50.0f;
COMPILER_STRIP_GATE(0x80791E80, &lit_5014);
#pragma pop

/* 80791E84-80791E88 000114 0004+00 0/1 0/0 0/0 .rodata          @5015 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5015 = 3.5f;
COMPILER_STRIP_GATE(0x80791E84, &lit_5015);
#pragma pop

/* 80791E88-80791E8C 000118 0004+00 0/1 0/0 0/0 .rodata          @5016 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5016 = 0x3A83126F;
COMPILER_STRIP_GATE(0x80791E88, &lit_5016);
#pragma pop

/* 80791E8C-80791E90 00011C 0004+00 0/1 0/0 0/0 .rodata          @5017 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5017 = -8.0f;
COMPILER_STRIP_GATE(0x80791E8C, &lit_5017);
#pragma pop

/* 80791E90-80791E94 000120 0004+00 0/1 0/0 0/0 .rodata          @5018 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5018 = 15000.0f;
COMPILER_STRIP_GATE(0x80791E90, &lit_5018);
#pragma pop

/* 80791E94-80791E98 000124 0004+00 0/1 0/0 0/0 .rodata          @5019 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5019 = -14000.0f;
COMPILER_STRIP_GATE(0x80791E94, &lit_5019);
#pragma pop

/* 80791E98-80791E9C 000128 0004+00 0/1 0/0 0/0 .rodata          @5020 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5020 = 23000.0f;
COMPILER_STRIP_GATE(0x80791E98, &lit_5020);
#pragma pop

/* 80791E9C-80791EA0 00012C 0004+00 0/1 0/0 0/0 .rodata          @5021 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5021 = -20.0f;
COMPILER_STRIP_GATE(0x80791E9C, &lit_5021);
#pragma pop

/* 80791EA0-80791EA4 000130 0004+00 0/1 0/0 0/0 .rodata          @5022 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5022 = -10.0f;
COMPILER_STRIP_GATE(0x80791EA0, &lit_5022);
#pragma pop

/* 80791EA4-80791EA8 000134 0004+00 0/1 0/0 0/0 .rodata          @5023 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5023 = 35.0f;
COMPILER_STRIP_GATE(0x80791EA4, &lit_5023);
#pragma pop

/* 80790950-80790FC0 0026F0 0670+00 2/1 0/0 0/0 .text            daE_SH_Execute__FP10e_sh_class */
static void daE_SH_Execute(e_sh_class* param_0) {
    // NONMATCHING
}

/* 80790FC0-80790FC8 002D60 0008+00 1/0 0/0 0/0 .text            daE_SH_IsDelete__FP10e_sh_class */
static bool daE_SH_IsDelete(e_sh_class* param_0) {
    return true;
}

/* 80790FC8-80791030 002D68 0068+00 1/0 0/0 0/0 .text            daE_SH_Delete__FP10e_sh_class */
static void daE_SH_Delete(e_sh_class* param_0) {
    // NONMATCHING
}

/* 80791030-807911D8 002DD0 01A8+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80791EA8-80791EAC 000138 0004+00 0/1 0/0 0/0 .rodata          @5189 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5189 = 100000.0f;
COMPILER_STRIP_GATE(0x80791EA8, &lit_5189);
#pragma pop

/* 80791EAC-80791EB0 00013C 0004+00 0/1 0/0 0/0 .rodata          @5190 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5190 = -200.0f;
COMPILER_STRIP_GATE(0x80791EAC, &lit_5190);
#pragma pop

/* 80791EB0-80791EB8 000140 0004+04 0/1 0/0 0/0 .rodata          @5191 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5191[1 + 1 /* padding */] = {
    60.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80791EB0, &lit_5191);
#pragma pop

/* 80791EB8-80791EC0 000148 0008+00 0/1 0/0 0/0 .rodata          @5193 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5193[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80791EB8, &lit_5193);
#pragma pop

/* 807911D8-80791550 002F78 0378+00 1/0 0/0 0/0 .text            daE_SH_Create__FP10fopAc_ac_c */
static void daE_SH_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80791550-80791598 0032F0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80791598-807915E0 003338 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 807915E0-807916AC 003380 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

/* 807916AC-80791730 00344C 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
extern "C" void __ct__8dCcD_SphFv() {
    // NONMATCHING
}

/* 80791730-8079178C 0034D0 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 8079178C-807917FC 00352C 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 807917FC-8079186C 00359C 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 8079186C-807918B4 00360C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 807918B4-807918FC 003654 0048+00 2/1 0/0 0/0 .text            __dt__12daE_SH_HIO_cFv */
daE_SH_HIO_c::~daE_SH_HIO_c() {
    // NONMATCHING
}

/* 807918FC-80791938 00369C 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_sh_cpp */
void __sinit_d_a_e_sh_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x807918FC, __sinit_d_a_e_sh_cpp);
#pragma pop

/* 80791938-80791940 0036D8 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80791938() {
    // NONMATCHING
}

/* 80791940-80791948 0036E0 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80791940() {
    // NONMATCHING
}

/* 80791EC0-80791EC0 000150 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
