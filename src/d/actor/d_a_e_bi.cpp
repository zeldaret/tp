/**
 * @file d_a_e_bi.cpp
 * 
*/

#include "d/actor/d_a_e_bi.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"
UNK_REL_DATA;
#include "f_op/f_op_actor_enemy.h"


//
// Forward References:
//

extern "C" void __ct__12daE_BI_HIO_cFv();
extern "C" static void anm_init__FP10e_bi_classifUcf();
extern "C" static void daE_BI_Draw__FP10e_bi_class();
extern "C" static void pl_check__FP10e_bi_classf();
extern "C" static void damage_check__FP10e_bi_class();
extern "C" static void e_bi_wait__FP10e_bi_class();
extern "C" static void e_bi_up__FP10e_bi_class();
extern "C" static void e_bi_move__FP10e_bi_class();
extern "C" static void e_bi_ex__FP10e_bi_class();
extern "C" static void e_bi_water__FP10e_bi_class();
extern "C" static void e_bi_disap__FP10e_bi_class();
extern "C" static void water_check__FP10e_bi_class();
extern "C" static void action__FP10e_bi_class();
extern "C" static void s_fw_sub__FPvPv();
extern "C" static void ride_movebg_init__FP10e_bi_class();
extern "C" void __dt__14dBgS_ObjGndChkFv();
extern "C" static void daE_BI_Execute__FP10e_bi_class();
extern "C" static bool daE_BI_IsDelete__FP10e_bi_class();
extern "C" static void daE_BI_Delete__FP10e_bi_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daE_BI_Create__FP10fopAc_ac_c();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_BI_HIO_cFv();
extern "C" void __sinit_d_a_e_bi_cpp();
extern "C" static void func_8068D360();
extern "C" static void func_8068D368();
extern "C" static void func_8068D370();
extern "C" static void func_8068D378();
extern "C" static void func_8068D380();
extern "C" void __dt__4cXyzFv();
extern "C" extern char const* const d_a_e_bi__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_effHamonSet__FPUlPC4cXyzff();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void isDungeonItem__12dSv_memBit_cCFi();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
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
extern "C" void __ct__18dBgS_ObjGndChk_SplFv();
extern "C" void __dt__18dBgS_ObjGndChk_SplFv();
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
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void at_power_check__FP11dCcU_AtInfo();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC3Vec();
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
extern "C" void func_802807E0();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void _savegpr_19();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
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
extern "C" f32 mGroundY__11fopAcM_gc_c;
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 8068D818-8068D81C 00002C 0004+00 0/1 0/0 0/0 .rodata          @3924 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3924 = 400.0f;
COMPILER_STRIP_GATE(0x8068D818, &lit_3924);
#pragma pop

/* 8068D81C-8068D820 000030 0004+00 0/1 0/0 0/0 .rodata          @3925 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3925 = 600.0f;
COMPILER_STRIP_GATE(0x8068D81C, &lit_3925);
#pragma pop

/* 8068D820-8068D824 000034 0004+00 0/3 0/0 0/0 .rodata          @3926 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3926 = 10.0f;
COMPILER_STRIP_GATE(0x8068D820, &lit_3926);
#pragma pop

/* 8068D924-8068D930 000038 000A+02 1/1 0/0 0/0 .data            ex_eff_id$4336 */
SECTION_DATA static u8 ex_eff_id[10 + 2 /* padding */] = {
    0x0A,
    0x0D,
    0x0A,
    0x0E,
    0x0A,
    0x0F,
    0x0A,
    0x10,
    0x0A,
    0x11,
    /* padding */
    0x00,
    0x00,
};

/* 8068D930-8068D938 000044 0008+00 1/1 0/0 0/0 .data            w_eff_id$4525 */
SECTION_DATA static u8 w_eff_id[8] = {
    0x01, 0xB8, 0x01, 0xB9, 0x01, 0xBA, 0x01, 0xBB,
};

/* 8068D938-8068D958 -00001 0020+00 1/1 0/0 0/0 .data            @4662 */
SECTION_DATA static void* lit_4662[8] = {
    (void*)(((char*)action__FP10e_bi_class) + 0x17C),
    (void*)(((char*)action__FP10e_bi_class) + 0x18C),
    (void*)(((char*)action__FP10e_bi_class) + 0x198),
    (void*)(((char*)action__FP10e_bi_class) + 0x1DC),
    (void*)(((char*)action__FP10e_bi_class) + 0x1DC),
    (void*)(((char*)action__FP10e_bi_class) + 0x1A8),
    (void*)(((char*)action__FP10e_bi_class) + 0x1BC),
    (void*)(((char*)action__FP10e_bi_class) + 0x1D4),
};

/* 8068D958-8068D99C 00006C 0044+00 1/1 0/0 0/0 .data            cc_cyl_src$4970 */
static dCcD_SrcCyl cc_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x3}, 0x79}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        30.0f, // mRadius
        20.0f // mHeight
    } // mCyl
};

/* 8068D99C-8068D9DC 0000B0 0040+00 1/1 0/0 0/0 .data            at_sph_src$4971 */
static dCcD_SrcSph at_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x1, 0xd}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_METAL, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 35.0f} // mSph
    } // mSphAttr
};

/* 8068D9DC-8068D9FC -00001 0020+00 1/0 0/0 0/0 .data            l_daE_BI_Method */
static actor_method_class l_daE_BI_Method = {
    (process_method_func)daE_BI_Create__FP10fopAc_ac_c,
    (process_method_func)daE_BI_Delete__FP10e_bi_class,
    (process_method_func)daE_BI_Execute__FP10e_bi_class,
    (process_method_func)daE_BI_IsDelete__FP10e_bi_class,
    (process_method_func)daE_BI_Draw__FP10e_bi_class,
};

/* 8068D9FC-8068DA2C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_BI */
extern actor_process_profile_definition g_profile_E_BI = {
  fpcLy_CURRENT_e,        // mLayerID
  9,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_BI,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(e_bi_class),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  147,                    // mPriority
  &l_daE_BI_Method,       // sub_method
  0x100D0100,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 8068DA2C-8068DA38 000140 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 8068DA38-8068DA44 00014C 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 8068DA44-8068DA50 000158 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 8068DA50-8068DA74 000164 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8068D380,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8068D378,
};

/* 8068DA74-8068DA80 000188 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 8068DA80-8068DA8C 000194 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 8068DA8C-8068DA98 0001A0 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 8068DA98-8068DAC8 0001AC 0030+00 2/2 0/0 0/0 .data            __vt__14dBgS_ObjGndChk */
SECTION_DATA extern void* __vt__14dBgS_ObjGndChk[12] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14dBgS_ObjGndChkFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8068D360,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8068D370,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8068D368,
};

/* 8068DAC8-8068DAD4 0001DC 000C+00 2/2 0/0 0/0 .data            __vt__12daE_BI_HIO_c */
SECTION_DATA extern void* __vt__12daE_BI_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_BI_HIO_cFv,
};

/* 8068A5EC-8068A634 0000EC 0048+00 1/1 0/0 0/0 .text            __ct__12daE_BI_HIO_cFv */
daE_BI_HIO_c::daE_BI_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8068D824-8068D828 000038 0004+00 1/1 0/0 0/0 .rodata          @3940 */
SECTION_RODATA static f32 const lit_3940 = -1.0f;
COMPILER_STRIP_GATE(0x8068D824, &lit_3940);

/* 8068D8D8-8068D8D8 0000EC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8068D8D8 = "E_BI";
#pragma pop

/* 8068A634-8068A6E0 000134 00AC+00 6/6 0/0 0/0 .text            anm_init__FP10e_bi_classifUcf */
static void anm_init(e_bi_class* param_0, int param_1, f32 param_2, u8 param_3, f32 param_4) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8068D828-8068D82C 00003C 0004+00 0/1 0/0 0/0 .rodata          @4073 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4073 = 800.0f;
COMPILER_STRIP_GATE(0x8068D828, &lit_4073);
#pragma pop

/* 8068A6E0-8068A90C 0001E0 022C+00 1/0 0/0 0/0 .text            daE_BI_Draw__FP10e_bi_class */
static void daE_BI_Draw(e_bi_class* param_0) {
    // NONMATCHING
}

/* 8068A90C-8068A96C 00040C 0060+00 3/3 0/0 0/0 .text            pl_check__FP10e_bi_classf */
static void pl_check(e_bi_class* param_0, f32 param_1) {
    // NONMATCHING
}

/* 8068A96C-8068ABD8 00046C 026C+00 1/1 0/0 0/0 .text            damage_check__FP10e_bi_class */
static void damage_check(e_bi_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8068D82C-8068D830 000040 0004+00 0/4 0/0 0/0 .rodata          @4207 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4207 = 3.0f;
COMPILER_STRIP_GATE(0x8068D82C, &lit_4207);
#pragma pop

/* 8068D830-8068D834 000044 0004+00 0/4 0/0 0/0 .rodata          @4208 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4208 = 2.0f;
COMPILER_STRIP_GATE(0x8068D830, &lit_4208);
#pragma pop

/* 8068D834-8068D838 000048 0004+00 0/1 0/0 0/0 .rodata          @4209 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4209 = 5.0f;
COMPILER_STRIP_GATE(0x8068D834, &lit_4209);
#pragma pop

/* 8068D838-8068D83C 00004C 0004+00 1/2 0/0 0/0 .rodata          @4210 */
SECTION_RODATA static f32 const lit_4210 = 50.0f;
COMPILER_STRIP_GATE(0x8068D838, &lit_4210);

/* 8068DAE0-8068DAE4 000008 0001+03 1/1 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 8068DAE4-8068DAE8 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 8068DAE8-8068DAEC 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 8068DAEC-8068DAF0 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 8068DAF0-8068DAF4 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 8068DAF4-8068DAF8 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 8068DAF8-8068DAFC 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 8068DAFC-8068DB00 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 8068DB00-8068DB04 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 8068DB04-8068DB08 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 8068DB08-8068DB0C 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 8068DB0C-8068DB10 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 8068DB10-8068DB14 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 8068DB14-8068DB18 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 8068DB18-8068DB1C 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 8068DB1C-8068DB20 -00001 0004+00 2/2 0/0 0/0 .bss             None */
/* 8068DB1C 0001+00 data_8068DB1C @1009 */
/* 8068DB1D 0003+00 data_8068DB1D None */
static u8 struct_8068DB1C[4];

/* 8068DB20-8068DB2C 000048 000C+00 1/1 0/0 0/0 .bss             @3919 */
static u8 lit_3919[12];

/* 8068DB2C-8068DB48 000054 001C+00 6/6 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[28];

/* 8068ABD8-8068AED0 0006D8 02F8+00 1/1 0/0 0/0 .text            e_bi_wait__FP10e_bi_class */
static void e_bi_wait(e_bi_class* param_0) {
    // NONMATCHING
}

/* 8068AED0-8068B068 0009D0 0198+00 1/1 0/0 0/0 .text            e_bi_up__FP10e_bi_class */
static void e_bi_up(e_bi_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8068D83C-8068D840 000050 0004+00 0/1 0/0 0/0 .rodata          @4315 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4315 = 150.0f;
COMPILER_STRIP_GATE(0x8068D83C, &lit_4315);
#pragma pop

/* 8068D840-8068D844 000054 0004+00 0/2 0/0 0/0 .rodata          @4316 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4316 = 20.0f;
COMPILER_STRIP_GATE(0x8068D840, &lit_4316);
#pragma pop

/* 8068D844-8068D848 000058 0004+00 0/1 0/0 0/0 .rodata          @4317 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4317 = 1.5f;
COMPILER_STRIP_GATE(0x8068D844, &lit_4317);
#pragma pop

/* 8068B068-8068B428 000B68 03C0+00 1/1 0/0 0/0 .text            e_bi_move__FP10e_bi_class */
static void e_bi_move(e_bi_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8068D848-8068D84C 00005C 0004+00 0/2 0/0 0/0 .rodata          @4410 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4410 = 9.0f / 10.0f;
COMPILER_STRIP_GATE(0x8068D848, &lit_4410);
#pragma pop

/* 8068D84C-8068D850 000060 0004+00 0/2 0/0 0/0 .rodata          @4411 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4411 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x8068D84C, &lit_4411);
#pragma pop

/* 8068D850-8068D854 000064 0004+00 0/1 0/0 0/0 .rodata          @4412 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4412 = 3800.0f;
COMPILER_STRIP_GATE(0x8068D850, &lit_4412);
#pragma pop

/* 8068D854-8068D858 000068 0004+00 0/1 0/0 0/0 .rodata          @4413 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4413 = 23.0f;
COMPILER_STRIP_GATE(0x8068D854, &lit_4413);
#pragma pop

/* 8068D858-8068D85C 00006C 0004+00 0/1 0/0 0/0 .rodata          @4414 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4414 = 128.0f;
COMPILER_STRIP_GATE(0x8068D858, &lit_4414);
#pragma pop

/* 8068D85C-8068D860 000070 0004+00 0/1 0/0 0/0 .rodata          @4415 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4415 = 127.0f;
COMPILER_STRIP_GATE(0x8068D85C, &lit_4415);
#pragma pop

/* 8068B428-8068B764 000F28 033C+00 1/1 0/0 0/0 .text            e_bi_ex__FP10e_bi_class */
static void e_bi_ex(e_bi_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8068D860-8068D864 000074 0004+00 0/1 0/0 0/0 .rodata          @4454 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4454 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x8068D860, &lit_4454);
#pragma pop

/* 8068D864-8068D868 000078 0004+00 0/1 0/0 0/0 .rodata          @4455 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4455 = -2.0f;
COMPILER_STRIP_GATE(0x8068D864, &lit_4455);
#pragma pop

/* 8068D868-8068D86C 00007C 0004+00 0/1 0/0 0/0 .rodata          @4456 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4456 = 1.0f / 50.0f;
COMPILER_STRIP_GATE(0x8068D868, &lit_4456);
#pragma pop

/* 8068D86C-8068D870 000080 0004+00 0/1 0/0 0/0 .rodata          @4457 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4457 = 70.0f;
COMPILER_STRIP_GATE(0x8068D86C, &lit_4457);
#pragma pop

/* 8068B764-8068B938 001264 01D4+00 1/1 0/0 0/0 .text            e_bi_water__FP10e_bi_class */
static void e_bi_water(e_bi_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8068D870-8068D874 000084 0004+00 0/1 0/0 0/0 .rodata          @4473 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4473 = 40.0f;
COMPILER_STRIP_GATE(0x8068D870, &lit_4473);
#pragma pop

/* 8068D874-8068D87C 000088 0008+00 0/1 0/0 0/0 .rodata          @4476 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4476[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8068D874, &lit_4476);
#pragma pop

/* 8068B938-8068BA28 001438 00F0+00 1/1 0/0 0/0 .text            e_bi_disap__FP10e_bi_class */
static void e_bi_disap(e_bi_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8068D87C-8068D880 000090 0004+00 1/1 0/0 0/0 .rodata          @4485 */
SECTION_RODATA static f32 const lit_4485 = 300.0f;
COMPILER_STRIP_GATE(0x8068D87C, &lit_4485);

/* 8068BA28-8068BAE0 001528 00B8+00 1/1 0/0 0/0 .text            water_check__FP10e_bi_class */
static void water_check(e_bi_class* param_0) {
    // NONMATCHING
}

/* 8068BAE0-8068C068 0015E0 0588+00 2/1 0/0 0/0 .text            action__FP10e_bi_class */
static void action(e_bi_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8068D880-8068D884 000094 0004+00 0/0 0/0 0/0 .rodata          @4659 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4659 = 0.5f;
COMPILER_STRIP_GATE(0x8068D880, &lit_4659);
#pragma pop

/* 8068D884-8068D888 000098 0004+00 0/0 0/0 0/0 .rodata          @4660 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4660 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x8068D884, &lit_4660);
#pragma pop

/* 8068D888-8068D88C 00009C 0004+00 0/0 0/0 0/0 .rodata          @4661 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4661 = 0.75f;
COMPILER_STRIP_GATE(0x8068D888, &lit_4661);
#pragma pop

/* 8068D88C-8068D890 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4704 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4704 = 500.0f;
COMPILER_STRIP_GATE(0x8068D88C, &lit_4704);
#pragma pop

/* 8068C068-8068C1E8 001B68 0180+00 1/1 0/0 0/0 .text            s_fw_sub__FPvPv */
static void s_fw_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8068D890-8068D894 0000A4 0004+00 1/2 0/0 0/0 .rodata          @4738 */
SECTION_RODATA static f32 const lit_4738 = 200.0f;
COMPILER_STRIP_GATE(0x8068D890, &lit_4738);

/* 8068C1E8-8068C350 001CE8 0168+00 1/1 0/0 0/0 .text            ride_movebg_init__FP10e_bi_class */
static void ride_movebg_init(e_bi_class* param_0) {
    // NONMATCHING
}

/* 8068C350-8068C3C8 001E50 0078+00 4/3 0/0 0/0 .text            __dt__14dBgS_ObjGndChkFv */
// dBgS_ObjGndChk::~dBgS_ObjGndChk() {
extern "C" void __dt__14dBgS_ObjGndChkFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8068D894-8068D898 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4906 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4906 = 27.0f;
COMPILER_STRIP_GATE(0x8068D894, &lit_4906);
#pragma pop

/* 8068D898-8068D89C 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4907 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4907 = -27.0f;
COMPILER_STRIP_GATE(0x8068D898, &lit_4907);
#pragma pop

/* 8068D89C-8068D8A0 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4908 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4908 = 7.5f;
COMPILER_STRIP_GATE(0x8068D89C, &lit_4908);
#pragma pop

/* 8068D8A0-8068D8A4 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4909 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4909 = 26.0f;
COMPILER_STRIP_GATE(0x8068D8A0, &lit_4909);
#pragma pop

/* 8068D8A4-8068D8A8 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4910 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4910 = 7.0f;
COMPILER_STRIP_GATE(0x8068D8A4, &lit_4910);
#pragma pop

/* 8068D8A8-8068D8AC 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4911 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4911 = 18.0f;
COMPILER_STRIP_GATE(0x8068D8A8, &lit_4911);
#pragma pop

/* 8068D8AC-8068D8B0 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4912 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4912 = 8.0f;
COMPILER_STRIP_GATE(0x8068D8AC, &lit_4912);
#pragma pop

/* 8068D8B0-8068D8B4 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4913 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4913 = 15.0f;
COMPILER_STRIP_GATE(0x8068D8B0, &lit_4913);
#pragma pop

/* 8068D8B4-8068D8B8 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4914 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4914 = 45.0f;
COMPILER_STRIP_GATE(0x8068D8B4, &lit_4914);
#pragma pop

/* 8068D8B8-8068D8BC 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4915 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4915 = -20000.0f;
COMPILER_STRIP_GATE(0x8068D8B8, &lit_4915);
#pragma pop

/* 8068D8BC-8068D8C0 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4916 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4916 = 25.0f;
COMPILER_STRIP_GATE(0x8068D8BC, &lit_4916);
#pragma pop

/* 8068D8C0-8068D8C4 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4917 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4917 = 120.0f;
COMPILER_STRIP_GATE(0x8068D8C0, &lit_4917);
#pragma pop

/* 8068D8C4-8068D8C8 0000D8 0004+00 0/1 0/0 0/0 .rodata          @4918 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4918 = 90.0f;
COMPILER_STRIP_GATE(0x8068D8C4, &lit_4918);
#pragma pop

/* 8068D8C8-8068D8CC 0000DC 0004+00 0/1 0/0 0/0 .rodata          @4919 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4919 = 17000.0f;
COMPILER_STRIP_GATE(0x8068D8C8, &lit_4919);
#pragma pop

/* 8068D8CC-8068D8D0 0000E0 0004+00 0/2 0/0 0/0 .rodata          @4920 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4920 = 30.0f;
COMPILER_STRIP_GATE(0x8068D8CC, &lit_4920);
#pragma pop

/* 8068C3C8-8068CA98 001EC8 06D0+00 2/1 0/0 0/0 .text            daE_BI_Execute__FP10e_bi_class */
static void daE_BI_Execute(e_bi_class* param_0) {
    // NONMATCHING
}

/* 8068CA98-8068CAA0 002598 0008+00 1/0 0/0 0/0 .text            daE_BI_IsDelete__FP10e_bi_class */
static bool daE_BI_IsDelete(e_bi_class* param_0) {
    return true;
}

/* 8068CAA0-8068CB08 0025A0 0068+00 1/0 0/0 0/0 .text            daE_BI_Delete__FP10e_bi_class */
static void daE_BI_Delete(e_bi_class* param_0) {
    // NONMATCHING
}

/* 8068CB08-8068CC00 002608 00F8+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8068D8D0-8068D8D4 0000E4 0004+00 0/1 0/0 0/0 .rodata          @5096 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5096 = -200.0f;
COMPILER_STRIP_GATE(0x8068D8D0, &lit_5096);
#pragma pop

/* 8068D8D4-8068D8D8 0000E8 0004+00 0/1 0/0 0/0 .rodata          @5097 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5097 = 65535.0f;
COMPILER_STRIP_GATE(0x8068D8D4, &lit_5097);
#pragma pop

/* 8068D8D8-8068D8D8 0000EC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8068D8DD = "D_MN05A";
SECTION_DEAD static char const* const stringBase_8068D8E5 = "E_bi";
#pragma pop

/* 8068CC00-8068D080 002700 0480+00 1/0 0/0 0/0 .text            daE_BI_Create__FP10fopAc_ac_c */
static void daE_BI_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 8068D080-8068D0F0 002B80 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 8068D0F0-8068D160 002BF0 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 8068D160-8068D1A8 002C60 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 8068D1A8-8068D1F0 002CA8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 8068D1F0-8068D238 002CF0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 8068D238-8068D294 002D38 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 8068D294-8068D2DC 002D94 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 8068D2DC-8068D324 002DDC 0048+00 2/1 0/0 0/0 .text            __dt__12daE_BI_HIO_cFv */
daE_BI_HIO_c::~daE_BI_HIO_c() {
    // NONMATCHING
}

/* 8068D324-8068D360 002E24 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_bi_cpp */
void __sinit_d_a_e_bi_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x8068D324, __sinit_d_a_e_bi_cpp);
#pragma pop

/* 8068D360-8068D368 002E60 0008+00 1/0 0/0 0/0 .text            @20@__dt__14dBgS_ObjGndChkFv */
static void func_8068D360() {
    // NONMATCHING
}

/* 8068D368-8068D370 002E68 0008+00 1/0 0/0 0/0 .text            @76@__dt__14dBgS_ObjGndChkFv */
static void func_8068D368() {
    // NONMATCHING
}

/* 8068D370-8068D378 002E70 0008+00 1/0 0/0 0/0 .text            @60@__dt__14dBgS_ObjGndChkFv */
static void func_8068D370() {
    // NONMATCHING
}

/* 8068D378-8068D380 002E78 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_8068D378() {
    // NONMATCHING
}

/* 8068D380-8068D388 002E80 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_8068D380() {
    // NONMATCHING
}

/* 8068D79C-8068D7D8 00329C 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8068DB48-8068DB58 000070 000C+04 0/0 0/0 0/0 .bss             @4522 */
#pragma push
#pragma force_active on
static u8 lit_4522[12 + 4 /* padding */];
#pragma pop

/* 8068DB58-8068DB64 000080 000C+00 0/0 0/0 0/0 .bss             sc$4521 */
#pragma push
#pragma force_active on
static u8 sc[12];
#pragma pop

/* 8068DB64-8068DB68 00008C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_8068DB64[4];
#pragma pop

/* 8068DB68-8068DB6C 000090 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_8068DB68[4];
#pragma pop

/* 8068DB6C-8068DB70 000094 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_8068DB6C[4];
#pragma pop

/* 8068DB70-8068DB74 000098 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_8068DB70[4];
#pragma pop

/* 8068DB74-8068DB78 00009C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8068DB74[4];
#pragma pop

/* 8068DB78-8068DB7C 0000A0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8068DB78[4];
#pragma pop

/* 8068DB7C-8068DB80 0000A4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_8068DB7C[4];
#pragma pop

/* 8068DB80-8068DB84 0000A8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_8068DB80[4];
#pragma pop

/* 8068DB84-8068DB88 0000AC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_8068DB84[4];
#pragma pop

/* 8068DB88-8068DB8C 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_8068DB88[4];
#pragma pop

/* 8068DB8C-8068DB90 0000B4 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_8068DB8C[4];
#pragma pop

/* 8068DB90-8068DB94 0000B8 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_8068DB90[4];
#pragma pop

/* 8068DB94-8068DB98 0000BC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_8068DB94[4];
#pragma pop

/* 8068DB98-8068DB9C 0000C0 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8068DB98[4];
#pragma pop

/* 8068DB9C-8068DBA0 0000C4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_8068DB9C[4];
#pragma pop

/* 8068DBA0-8068DBA4 0000C8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_8068DBA0[4];
#pragma pop

/* 8068DBA4-8068DBA8 0000CC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_8068DBA4[4];
#pragma pop

/* 8068DBA8-8068DBAC 0000D0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_8068DBA8[4];
#pragma pop

/* 8068DBAC-8068DBB0 0000D4 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_8068DBAC[4];
#pragma pop

/* 8068DBB0-8068DBB4 0000D8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_8068DBB0[4];
#pragma pop

/* 8068DBB4-8068DBB8 0000DC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_8068DBB4[4];
#pragma pop

/* 8068DBB8-8068DBBC 0000E0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8068DBB8[4];
#pragma pop

/* 8068DBBC-8068DBC0 0000E4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8068DBBC[4];
#pragma pop

/* 8068DBC0-8068DBC4 0000E8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8068DBC0[4];
#pragma pop

/* 8068DBC4-8068DBC8 0000EC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_8068DBC4[4];
#pragma pop

/* 8068D8D8-8068D8D8 0000EC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
