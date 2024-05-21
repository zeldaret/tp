/**
 * @file d_a_e_tk2.cpp
 * 
*/

#include "rel/d/a/e/d_a_e_tk2/d_a_e_tk2.h"
#include "d/cc/d_cc_d.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__13daE_TK2_HIO_cFv();
extern "C" static void anm_init__FP11e_tk2_classifUcf();
extern "C" static void daE_TK2_Draw__FP11e_tk2_class();
extern "C" static void other_bg_check__FP11e_tk2_classP10fopAc_ac_c();
extern "C" static void pl_check__FP11e_tk2_classfs();
extern "C" static void damage_check__FP11e_tk2_class();
extern "C" static void e_tk2_wait_0__FP11e_tk2_class();
extern "C" static void e_tk2_find__FP11e_tk2_class();
extern "C" static void e_tk2_attack__FP11e_tk2_class();
extern "C" static void e_tk2_s_damage__FP11e_tk2_class();
extern "C" static void e_tk2_damage__FP11e_tk2_class();
extern "C" static void action__FP11e_tk2_class();
extern "C" static void daE_TK2_Execute__FP11e_tk2_class();
extern "C" static bool daE_TK2_IsDelete__FP11e_tk2_class();
extern "C" static void daE_TK2_Delete__FP11e_tk2_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daE_TK2_Create__FP10fopAc_ac_c();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__13daE_TK2_HIO_cFv();
extern "C" void __sinit_d_a_e_tk2_cpp();
extern "C" static void func_807BBD84();
extern "C" static void func_807BBD8C();
extern "C" extern char const* const d_a_e_tk2__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
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
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void at_power_check__FP11dCcU_AtInfo();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setLinkSearch__15Z2CreatureEnemyFb();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" extern void* calc_mtx[1 + 1 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 807BBDA8-807BBDAC 000000 0004+00 7/7 0/0 0/0 .rodata          @3762 */
SECTION_RODATA static f32 const lit_3762 = 23.0f / 10.0f;
COMPILER_STRIP_GATE(0x807BBDA8, &lit_3762);

/* 807BBDAC-807BBDB0 000004 0004+00 0/1 0/0 0/0 .rodata          @3763 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3763 = 1400.0f;
COMPILER_STRIP_GATE(0x807BBDAC, &lit_3763);
#pragma pop

/* 807BBDB0-807BBDB4 000008 0004+00 0/1 0/0 0/0 .rodata          @3764 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3764 = 500.0f;
COMPILER_STRIP_GATE(0x807BBDB0, &lit_3764);
#pragma pop

/* 807BBDB4-807BBDB8 00000C 0004+00 0/3 0/0 0/0 .rodata          @3765 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3765 = 10.0f;
COMPILER_STRIP_GATE(0x807BBDB4, &lit_3765);
#pragma pop

/* 807BBDB8-807BBDBC 000010 0004+00 0/1 0/0 0/0 .rodata          @3766 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3766 = 25.0f;
COMPILER_STRIP_GATE(0x807BBDB8, &lit_3766);
#pragma pop

/* 807BBE28-807BBE5C -00001 0034+00 1/1 0/0 0/0 .data            @3947 */
SECTION_DATA static void* lit_3947[13] = {
    (void*)(((char*)e_tk2_find__FP11e_tk2_class) + 0x44),
    (void*)(((char*)e_tk2_find__FP11e_tk2_class) + 0x64),
    (void*)(((char*)e_tk2_find__FP11e_tk2_class) + 0xD8),
    (void*)(((char*)e_tk2_find__FP11e_tk2_class) + 0xF8),
    (void*)(((char*)e_tk2_find__FP11e_tk2_class) + 0x118),
    (void*)(((char*)e_tk2_find__FP11e_tk2_class) + 0x2E4),
    (void*)(((char*)e_tk2_find__FP11e_tk2_class) + 0x2E4),
    (void*)(((char*)e_tk2_find__FP11e_tk2_class) + 0x2E4),
    (void*)(((char*)e_tk2_find__FP11e_tk2_class) + 0x2E4),
    (void*)(((char*)e_tk2_find__FP11e_tk2_class) + 0x2E4),
    (void*)(((char*)e_tk2_find__FP11e_tk2_class) + 0x17C),
    (void*)(((char*)e_tk2_find__FP11e_tk2_class) + 0x19C),
    (void*)(((char*)e_tk2_find__FP11e_tk2_class) + 0x208),
};

/* 807BBE5C-807BBE9C 000034 0040+00 1/1 0/0 0/0 .data            cc_sph_src$4256 */
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0xd}, {0xd8fbfdff, 0x3}, 0x75}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 807BBE9C-807BBEBC -00001 0020+00 1/0 0/0 0/0 .data            l_daE_TK2_Method */
static actor_method_class l_daE_TK2_Method = {
    (process_method_func)daE_TK2_Create__FP10fopAc_ac_c,
    (process_method_func)daE_TK2_Delete__FP11e_tk2_class,
    (process_method_func)daE_TK2_Execute__FP11e_tk2_class,
    (process_method_func)daE_TK2_IsDelete__FP11e_tk2_class,
    (process_method_func)daE_TK2_Draw__FP11e_tk2_class,
};

/* 807BBEBC-807BBEEC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_TK2 */
extern actor_process_profile_definition g_profile_E_TK2 = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_TK2,             // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(e_tk2_class),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  150,                    // mPriority
  &l_daE_TK2_Method,      // sub_method
  0x00040100,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 807BBEEC-807BBEF8 0000C4 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 807BBEF8-807BBF04 0000D0 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 807BBF04-807BBF28 0000DC 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_807BBD8C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_807BBD84,
};

/* 807BBF28-807BBF34 000100 000C+00 2/2 0/0 0/0 .data            __vt__13daE_TK2_HIO_c */
SECTION_DATA extern void* __vt__13daE_TK2_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daE_TK2_HIO_cFv,
};

/* 807BA56C-807BA5B4 0000EC 0048+00 1/1 0/0 0/0 .text            __ct__13daE_TK2_HIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daE_TK2_HIO_c::daE_TK2_HIO_c() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_tk2/d_a_e_tk2/__ct__13daE_TK2_HIO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 807BBDBC-807BBDC0 000014 0004+00 1/4 0/0 0/0 .rodata          @3780 */
SECTION_RODATA static u8 const lit_3780[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x807BBDBC, &lit_3780);

/* 807BBDC0-807BBDC4 000018 0004+00 1/1 0/0 0/0 .rodata          @3781 */
SECTION_RODATA static f32 const lit_3781 = -1.0f;
COMPILER_STRIP_GATE(0x807BBDC0, &lit_3781);

/* 807BBE20-807BBE20 000078 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_807BBE20 = "E_tk2";
#pragma pop

/* 807BA5B4-807BA660 000134 00AC+00 4/4 0/0 0/0 .text            anm_init__FP11e_tk2_classifUcf */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void anm_init(e_tk2_class* param_0, int param_1, f32 param_2, u8 param_3, f32 param_4) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_tk2/d_a_e_tk2/anm_init__FP11e_tk2_classifUcf.s"
}
#pragma pop

/* 807BA660-807BA6D0 0001E0 0070+00 1/0 0/0 0/0 .text            daE_TK2_Draw__FP11e_tk2_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daE_TK2_Draw(e_tk2_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_tk2/d_a_e_tk2/daE_TK2_Draw__FP11e_tk2_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 807BBDC4-807BBDC8 00001C 0004+00 1/2 0/0 0/0 .rodata          @3820 */
SECTION_RODATA static f32 const lit_3820 = 100.0f;
COMPILER_STRIP_GATE(0x807BBDC4, &lit_3820);

/* 807BA6D0-807BA7A8 000250 00D8+00 1/1 0/0 0/0 .text other_bg_check__FP11e_tk2_classP10fopAc_ac_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void other_bg_check(e_tk2_class* param_0, fopAc_ac_c* param_1) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_tk2/d_a_e_tk2/other_bg_check__FP11e_tk2_classP10fopAc_ac_c.s"
}
#pragma pop

/* 807BA7A8-807BA824 000328 007C+00 2/2 0/0 0/0 .text            pl_check__FP11e_tk2_classfs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void pl_check(e_tk2_class* param_0, f32 param_1, s16 param_2) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_tk2/d_a_e_tk2/pl_check__FP11e_tk2_classfs.s"
}
#pragma pop

/* 807BA824-807BA940 0003A4 011C+00 1/1 0/0 0/0 .text            damage_check__FP11e_tk2_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void damage_check(e_tk2_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_tk2/d_a_e_tk2/damage_check__FP11e_tk2_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 807BBF40-807BBF44 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_807BBF40[4];

/* 807BBF44-807BBF50 00000C 000C+00 1/1 0/0 0/0 .bss             @3757 */
static u8 lit_3757[12];

/* 807BBF50-807BBF6C 000018 001C+00 6/6 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[28];

/* 807BA940-807BA9E8 0004C0 00A8+00 1/1 0/0 0/0 .text            e_tk2_wait_0__FP11e_tk2_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_tk2_wait_0(e_tk2_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_tk2/d_a_e_tk2/e_tk2_wait_0__FP11e_tk2_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 807BBDC8-807BBDCC 000020 0004+00 0/2 0/0 0/0 .rodata          @3938 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3938 = 3.0f;
COMPILER_STRIP_GATE(0x807BBDC8, &lit_3938);
#pragma pop

/* 807BBDCC-807BBDD0 000024 0004+00 1/6 0/0 0/0 .rodata          @3939 */
SECTION_RODATA static f32 const lit_3939 = 1.0f;
COMPILER_STRIP_GATE(0x807BBDCC, &lit_3939);

/* 807BA9E8-807BACF8 000568 0310+00 2/1 0/0 0/0 .text            e_tk2_find__FP11e_tk2_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_tk2_find(e_tk2_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_tk2/d_a_e_tk2/e_tk2_find__FP11e_tk2_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 807BBDD0-807BBDD4 000028 0004+00 0/2 0/0 0/0 .rodata          @3940 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3940 = 30.0f;
COMPILER_STRIP_GATE(0x807BBDD0, &lit_3940);
#pragma pop

/* 807BBDD4-807BBDD8 00002C 0004+00 0/0 0/0 0/0 .rodata          @3941 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3941 = 4.0f;
COMPILER_STRIP_GATE(0x807BBDD4, &lit_3941);
#pragma pop

/* 807BBDD8-807BBDDC 000030 0004+00 0/3 0/0 0/0 .rodata          @3942 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3942 = 2.0f;
COMPILER_STRIP_GATE(0x807BBDD8, &lit_3942);
#pragma pop

/* 807BBDDC-807BBDE0 000034 0004+00 0/0 0/0 0/0 .rodata          @3943 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3943 = 3.0f / 20.0f;
COMPILER_STRIP_GATE(0x807BBDDC, &lit_3943);
#pragma pop

/* 807BBDE0-807BBDE4 000038 0004+00 0/0 0/0 0/0 .rodata          @3944 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3944 = 6.0f / 5.0f;
COMPILER_STRIP_GATE(0x807BBDE0, &lit_3944);
#pragma pop

/* 807BBDE4-807BBDE8 00003C 0004+00 0/1 0/0 0/0 .rodata          @3945 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3945 = 20.0f;
COMPILER_STRIP_GATE(0x807BBDE4, &lit_3945);
#pragma pop

/* 807BBDE8-807BBDEC 000040 0004+00 0/0 0/0 0/0 .rodata          @3946 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3946 = 8000.0f;
COMPILER_STRIP_GATE(0x807BBDE8, &lit_3946);
#pragma pop

/* 807BBDEC-807BBDF0 000044 0004+00 0/1 0/0 0/0 .rodata          @3988 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3988 = 70.0f;
COMPILER_STRIP_GATE(0x807BBDEC, &lit_3988);
#pragma pop

/* 807BBDF0-807BBDF4 000048 0004+00 0/2 0/0 0/0 .rodata          @3989 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3989 = 50.0f;
COMPILER_STRIP_GATE(0x807BBDF0, &lit_3989);
#pragma pop

/* 807BACF8-807BAED0 000878 01D8+00 1/1 0/0 0/0 .text            e_tk2_attack__FP11e_tk2_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_tk2_attack(e_tk2_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_tk2/d_a_e_tk2/e_tk2_attack__FP11e_tk2_class.s"
}
#pragma pop

/* 807BAED0-807BAF60 000A50 0090+00 1/1 0/0 0/0 .text            e_tk2_s_damage__FP11e_tk2_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_tk2_s_damage(e_tk2_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_tk2/d_a_e_tk2/e_tk2_s_damage__FP11e_tk2_class.s"
}
#pragma pop

/* 807BAF60-807BB028 000AE0 00C8+00 1/1 0/0 0/0 .text            e_tk2_damage__FP11e_tk2_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_tk2_damage(e_tk2_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_tk2/d_a_e_tk2/e_tk2_damage__FP11e_tk2_class.s"
}
#pragma pop

/* 807BB028-807BB128 000BA8 0100+00 1/1 0/0 0/0 .text            action__FP11e_tk2_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void action(e_tk2_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_tk2/d_a_e_tk2/action__FP11e_tk2_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 807BBDF4-807BBDF8 00004C 0004+00 0/1 0/0 0/0 .rodata          @4204 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4204 = 200.0f;
COMPILER_STRIP_GATE(0x807BBDF4, &lit_4204);
#pragma pop

/* 807BBDF8-807BBDFC 000050 0004+00 0/1 0/0 0/0 .rodata          @4205 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4205 = 6.0f;
COMPILER_STRIP_GATE(0x807BBDF8, &lit_4205);
#pragma pop

/* 807BBDFC-807BBE00 000054 0004+00 0/1 0/0 0/0 .rodata          @4206 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4206 = 12.0f;
COMPILER_STRIP_GATE(0x807BBDFC, &lit_4206);
#pragma pop

/* 807BBE00-807BBE04 000058 0004+00 0/1 0/0 0/0 .rodata          @4207 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4207 = 18.0f;
COMPILER_STRIP_GATE(0x807BBE00, &lit_4207);
#pragma pop

/* 807BBE04-807BBE08 00005C 0004+00 0/1 0/0 0/0 .rodata          @4208 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4208 = 24.0f;
COMPILER_STRIP_GATE(0x807BBE04, &lit_4208);
#pragma pop

/* 807BBE08-807BBE0C 000060 0004+00 0/1 0/0 0/0 .rodata          @4209 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4209 = 5.0f;
COMPILER_STRIP_GATE(0x807BBE08, &lit_4209);
#pragma pop

/* 807BBE0C-807BBE10 000064 0004+00 0/1 0/0 0/0 .rodata          @4210 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4210 = 27.0f;
COMPILER_STRIP_GATE(0x807BBE0C, &lit_4210);
#pragma pop

/* 807BBE10-807BBE14 000068 0004+00 0/1 0/0 0/0 .rodata          @4211 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4211 = 35.0f;
COMPILER_STRIP_GATE(0x807BBE10, &lit_4211);
#pragma pop

/* 807BB128-807BB7E4 000CA8 06BC+00 2/1 0/0 0/0 .text            daE_TK2_Execute__FP11e_tk2_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daE_TK2_Execute(e_tk2_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_tk2/d_a_e_tk2/daE_TK2_Execute__FP11e_tk2_class.s"
}
#pragma pop

/* 807BB7E4-807BB7EC 001364 0008+00 1/0 0/0 0/0 .text            daE_TK2_IsDelete__FP11e_tk2_class
 */
static bool daE_TK2_IsDelete(e_tk2_class* param_0) {
    return true;
}

/* 807BB7EC-807BB854 00136C 0068+00 1/0 0/0 0/0 .text            daE_TK2_Delete__FP11e_tk2_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daE_TK2_Delete(e_tk2_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_tk2/d_a_e_tk2/daE_TK2_Delete__FP11e_tk2_class.s"
}
#pragma pop

/* 807BB854-807BB94C 0013D4 00F8+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void useHeapInit(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_tk2/d_a_e_tk2/useHeapInit__FP10fopAc_ac_c.s"
}
#pragma pop

/* ############################################################################################## */
/* 807BBE14-807BBE18 00006C 0004+00 0/1 0/0 0/0 .rodata          @4328 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4328 = -100.0f;
COMPILER_STRIP_GATE(0x807BBE14, &lit_4328);
#pragma pop

/* 807BBE18-807BBE1C 000070 0004+00 0/1 0/0 0/0 .rodata          @4329 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4329 = -50.0f;
COMPILER_STRIP_GATE(0x807BBE18, &lit_4329);
#pragma pop

/* 807BBE1C-807BBE20 000074 0004+00 0/1 0/0 0/0 .rodata          @4330 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4330 = 60.0f;
COMPILER_STRIP_GATE(0x807BBE1C, &lit_4330);
#pragma pop

/* 807BB94C-807BBC00 0014CC 02B4+00 1/0 0/0 0/0 .text            daE_TK2_Create__FP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daE_TK2_Create(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_tk2/d_a_e_tk2/daE_TK2_Create__FP10fopAc_ac_c.s"
}
#pragma pop

/* 807BBC00-807BBC48 001780 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGSph::~cM3dGSph() {
extern "C" asm void __dt__8cM3dGSphFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_tk2/d_a_e_tk2/__dt__8cM3dGSphFv.s"
}
#pragma pop

/* 807BBC48-807BBC90 0017C8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_tk2/d_a_e_tk2/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 807BBC90-807BBD00 001810 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" asm void __dt__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_tk2/d_a_e_tk2/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* 807BBD00-807BBD48 001880 0048+00 2/1 0/0 0/0 .text            __dt__13daE_TK2_HIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daE_TK2_HIO_c::~daE_TK2_HIO_c() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_tk2/d_a_e_tk2/__dt__13daE_TK2_HIO_cFv.s"
}
#pragma pop

/* 807BBD48-807BBD84 0018C8 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_tk2_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_a_e_tk2_cpp() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_tk2/d_a_e_tk2/__sinit_d_a_e_tk2_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x807BBD48, __sinit_d_a_e_tk2_cpp);
#pragma pop

/* 807BBD84-807BBD8C 001904 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_807BBD84() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_tk2/d_a_e_tk2/func_807BBD84.s"
}
#pragma pop

/* 807BBD8C-807BBD94 00190C 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_807BBD8C() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_tk2/d_a_e_tk2/func_807BBD8C.s"
}
#pragma pop

/* 807BBE20-807BBE20 000078 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
