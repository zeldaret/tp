/**
 * @file d_a_b_zant_magic.cpp
 * 
*/

#include "rel/d/a/b/d_a_b_zant_magic/d_a_b_zant_magic.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void draw__11daB_ZANTM_cFv();
extern "C" static void daB_ZANTM_Draw__FP11daB_ZANTM_c();
extern "C" void setMagicEffect__11daB_ZANTM_cFv();
extern "C" void setMagicHitEffect__11daB_ZANTM_cFv();
extern "C" void executeSmall__11daB_ZANTM_cFv();
extern "C" void cc_set__11daB_ZANTM_cFv();
extern "C" void execute__11daB_ZANTM_cFv();
extern "C" static void daB_ZANTM_Execute__FP11daB_ZANTM_c();
extern "C" static bool daB_ZANTM_IsDelete__FP11daB_ZANTM_c();
extern "C" bool _delete__11daB_ZANTM_cFv();
extern "C" static void daB_ZANTM_Delete__FP11daB_ZANTM_c();
extern "C" void create__11daB_ZANTM_cFv();
extern "C" void __ct__11daB_ZANTM_cFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" static void daB_ZANTM_Create__FP11daB_ZANTM_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" static void func_80650484();
extern "C" static void func_8065048C();

//
// External References:
//

extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_SearchByID__FUiPP10fopAc_ac_c();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
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
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CpsFRC11dCcD_SrcCps();
extern "C" void CalcAtVec__8dCcD_CpsFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void checkMasterSwordEquip__9daPy_py_cFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __ml__4cXyzCFf();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void __ct__8cM3dGCpsFv();
extern "C" void Set__8cM3dGCpsFRC4cXyzRC4cXyzf();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_targetAngleX__FPC4cXyzPC4cXyz();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void _savegpr_23();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_29();
extern "C" void _restgpr_23();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__8dCcD_Cps[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__12cCcD_CpsAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" extern u8 mStayNo__20dStage_roomControl_c[4];
extern "C" u8 mParticleTracePCB__13dPa_control_c[4 + 4 /* padding */];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void getMagicSpeed__10daB_ZANT_cFv();
extern "C" void getMagicWaterSpeed__10daB_ZANT_cFv();

//
// Declarations:
//

/* 8064F778-8064F7B4 000078 003C+00 1/1 0/0 0/0 .text            draw__11daB_ZANTM_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_ZANTM_c::draw() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_zant_magic/d_a_b_zant_magic/draw__11daB_ZANTM_cFv.s"
}
#pragma pop

/* 8064F7B4-8064F7D4 0000B4 0020+00 1/0 0/0 0/0 .text            daB_ZANTM_Draw__FP11daB_ZANTM_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daB_ZANTM_Draw(daB_ZANTM_c* param_0) {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_zant_magic/d_a_b_zant_magic/daB_ZANTM_Draw__FP11daB_ZANTM_c.s"
}
#pragma pop

/* ############################################################################################## */
/* 8065049C-806504A0 000000 0004+00 5/5 0/0 0/0 .rodata          @3721 */
SECTION_RODATA static f32 const lit_3721 = 0.5f;
COMPILER_STRIP_GATE(0x8065049C, &lit_3721);

/* 806504A0-806504A4 000004 0004+00 0/1 0/0 0/0 .rodata          @3722 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3722 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x806504A0, &lit_3722);
#pragma pop

/* 806504A4-806504A8 000008 0004+00 0/3 0/0 0/0 .rodata          @3723 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3723 = 1.0f;
COMPILER_STRIP_GATE(0x806504A4, &lit_3723);
#pragma pop

/* 806504E8-806504F4 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 806504F4-80650508 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80650508-80650554 000020 004C+00 0/1 0/0 0/0 .data
 * cc_zant_src__30@unnamed@d_a_b_zant_magic_cpp@                */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_80650508[76] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1D,
    0xD8, 0xFB, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x01, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00,
};
#pragma pop

/* 80650554-80650594 00006C 0040+00 0/1 0/0 0/0 .data
 * cc_zant_src2__30@unnamed@d_a_b_zant_magic_cpp@               */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_80650554[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x60, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};
#pragma pop

/* 80650594-806505D4 0000AC 0040+00 0/1 0/0 0/0 .data
 * cc_zant_src3__30@unnamed@d_a_b_zant_magic_cpp@               */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_80650594[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};
#pragma pop

/* 806505D4-806505DC 0000EC 0008+00 1/1 0/0 0/0 .data            magic_effect_id$3667 */
SECTION_DATA static u8 magic_effect_id_3667[8] = {
    0x89, 0x0D, 0x89, 0x0E, 0x89, 0x0F, 0x89, 0x10,
};

/* 8064F7D4-8064F938 0000D4 0164+00 1/1 0/0 0/0 .text            setMagicEffect__11daB_ZANTM_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_ZANTM_c::setMagicEffect() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_zant_magic/d_a_b_zant_magic/setMagicEffect__11daB_ZANTM_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 806504A8-806504AC 00000C 0004+00 0/2 0/0 0/0 .rodata          @3753 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3753 = -1.0f;
COMPILER_STRIP_GATE(0x806504A8, &lit_3753);
#pragma pop

/* 806504AC-806504B0 000010 0004+00 0/1 0/0 0/0 .rodata          @3754 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3754 = 25.0f;
COMPILER_STRIP_GATE(0x806504AC, &lit_3754);
#pragma pop

/* 806505DC-806505E4 0000F4 0008+00 1/1 0/0 0/0 .data            magic_effect_id$3729 */
SECTION_DATA static u8 magic_effect_id_3729[8] = {
    0x88, 0x62, 0x88, 0x63, 0x88, 0x64, 0x88, 0x65,
};

/* 8064F938-8064FA50 000238 0118+00 1/1 0/0 0/0 .text            setMagicHitEffect__11daB_ZANTM_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_ZANTM_c::setMagicHitEffect() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_zant_magic/d_a_b_zant_magic/setMagicHitEffect__11daB_ZANTM_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 806504B0-806504B4 000014 0004+00 0/1 0/0 0/0 .rodata          @3858 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3858 = 40.0f;
COMPILER_STRIP_GATE(0x806504B0, &lit_3858);
#pragma pop

/* 806504B4-806504B8 000018 0004+00 0/1 0/0 0/0 .rodata          @3859 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3859 = 100.0f;
COMPILER_STRIP_GATE(0x806504B4, &lit_3859);
#pragma pop

/* 806504B8-806504BC 00001C 0004+00 0/2 0/0 0/0 .rodata          @3860 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3860[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x806504B8, &lit_3860);
#pragma pop

/* 806504BC-806504C0 000020 0004+00 0/1 0/0 0/0 .rodata          @3861 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3861 = 60.0f;
COMPILER_STRIP_GATE(0x806504BC, &lit_3861);
#pragma pop

/* 806504C0-806504C4 000024 0004+00 0/1 0/0 0/0 .rodata          @3862 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3862 = 260.0f;
COMPILER_STRIP_GATE(0x806504C0, &lit_3862);
#pragma pop

/* 806504C4-806504CC 000028 0004+04 0/1 0/0 0/0 .rodata          @3863 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3863[1 + 1 /* padding */] = {
    1.0f / 10.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x806504C4, &lit_3863);
#pragma pop

/* 806504CC-806504D4 000030 0008+00 0/1 0/0 0/0 .rodata          @3865 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3865[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806504CC, &lit_3865);
#pragma pop

/* 8064FA50-8064FD6C 000350 031C+00 1/1 0/0 0/0 .text            executeSmall__11daB_ZANTM_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_ZANTM_c::executeSmall() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_zant_magic/d_a_b_zant_magic/executeSmall__11daB_ZANTM_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 806504D4-806504D8 000038 0004+00 0/1 0/0 0/0 .rodata          @3878 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3878 = 30.0f;
COMPILER_STRIP_GATE(0x806504D4, &lit_3878);
#pragma pop

/* 806504D8-806504DC 00003C 0004+00 0/2 0/0 0/0 .rodata          @3879 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3879 = 20.0f;
COMPILER_STRIP_GATE(0x806504D8, &lit_3879);
#pragma pop

/* 806504DC-806504E0 000040 0004+00 0/1 0/0 0/0 .rodata          @3880 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3880 = 50.0f;
COMPILER_STRIP_GATE(0x806504DC, &lit_3880);
#pragma pop

/* 8064FD6C-8064FE6C 00066C 0100+00 1/1 0/0 0/0 .text            cc_set__11daB_ZANTM_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_ZANTM_c::cc_set() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_zant_magic/d_a_b_zant_magic/cc_set__11daB_ZANTM_cFv.s"
}
#pragma pop

/* 8064FE6C-8064FF04 00076C 0098+00 1/1 0/0 0/0 .text            execute__11daB_ZANTM_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_ZANTM_c::execute() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_zant_magic/d_a_b_zant_magic/execute__11daB_ZANTM_cFv.s"
}
#pragma pop

/* 8064FF04-8064FF24 000804 0020+00 1/0 0/0 0/0 .text            daB_ZANTM_Execute__FP11daB_ZANTM_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daB_ZANTM_Execute(daB_ZANTM_c* param_0) {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_zant_magic/d_a_b_zant_magic/daB_ZANTM_Execute__FP11daB_ZANTM_c.s"
}
#pragma pop

/* 8064FF24-8064FF2C 000824 0008+00 1/0 0/0 0/0 .text            daB_ZANTM_IsDelete__FP11daB_ZANTM_c
 */
static bool daB_ZANTM_IsDelete(daB_ZANTM_c* param_0) {
    return true;
}

/* 8064FF2C-8064FF34 00082C 0008+00 1/1 0/0 0/0 .text            _delete__11daB_ZANTM_cFv */
bool daB_ZANTM_c::_delete() {
    return true;
}

/* 8064FF34-8064FF54 000834 0020+00 1/0 0/0 0/0 .text            daB_ZANTM_Delete__FP11daB_ZANTM_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daB_ZANTM_Delete(daB_ZANTM_c* param_0) {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_zant_magic/d_a_b_zant_magic/daB_ZANTM_Delete__FP11daB_ZANTM_c.s"
}
#pragma pop

/* ############################################################################################## */
/* 806504E0-806504E4 000044 0004+00 0/1 0/0 0/0 .rodata          @3939 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3939 = -400.0f;
COMPILER_STRIP_GATE(0x806504E0, &lit_3939);
#pragma pop

/* 806504E4-806504E8 000048 0004+00 0/1 0/0 0/0 .rodata          @3940 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3940 = 400.0f;
COMPILER_STRIP_GATE(0x806504E4, &lit_3940);
#pragma pop

/* 8064FF54-806500A8 000854 0154+00 1/1 0/0 0/0 .text            create__11daB_ZANTM_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_ZANTM_c::create() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_zant_magic/d_a_b_zant_magic/create__11daB_ZANTM_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 806505E4-80650604 -00001 0020+00 1/0 0/0 0/0 .data            l_daB_ZANTM_Method */
static actor_method_class l_daB_ZANTM_Method = {
    (process_method_func)daB_ZANTM_Create__FP11daB_ZANTM_c,
    (process_method_func)daB_ZANTM_Delete__FP11daB_ZANTM_c,
    (process_method_func)daB_ZANTM_Execute__FP11daB_ZANTM_c,
    (process_method_func)daB_ZANTM_IsDelete__FP11daB_ZANTM_c,
    (process_method_func)daB_ZANTM_Draw__FP11daB_ZANTM_c,
};

/* 80650604-80650634 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_B_ZANTM */
extern actor_process_profile_definition g_profile_B_ZANTM = {
  fpcLy_CURRENT_e,        // mLayerID
  4,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_B_ZANTM,           // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daB_ZANTM_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  227,                    // mPriority
  &l_daB_ZANTM_Method,    // sub_method
  0x00040100,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80650634-80650640 00014C 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80650640-8065064C 000158 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 8065064C-80650658 000164 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80650658-80650664 000170 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80650664-80650670 00017C 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80650670-80650694 000188 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8065048C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80650484,
};

/* 806500A8-80650250 0009A8 01A8+00 1/1 0/0 0/0 .text            __ct__11daB_ZANTM_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daB_ZANTM_c::daB_ZANTM_c() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_zant_magic/d_a_b_zant_magic/__ct__11daB_ZANTM_cFv.s"
}
#pragma pop

/* 80650250-80650298 000B50 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGSph::~cM3dGSph() {
extern "C" asm void __dt__8cM3dGSphFv() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_zant_magic/d_a_b_zant_magic/__dt__8cM3dGSphFv.s"
}
#pragma pop

/* 80650298-806502E0 000B98 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_zant_magic/d_a_b_zant_magic/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 806502E0-8065033C 000BE0 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_GStts::~dCcD_GStts() {
extern "C" asm void __dt__10dCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_zant_magic/d_a_b_zant_magic/__dt__10dCcD_GSttsFv.s"
}
#pragma pop

/* 8065033C-806503AC 000C3C 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" asm void __dt__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_zant_magic/d_a_b_zant_magic/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* 806503AC-8065041C 000CAC 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" asm void __dt__12dBgS_AcchCirFv() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_zant_magic/d_a_b_zant_magic/__dt__12dBgS_AcchCirFv.s"
}
#pragma pop

/* 8065041C-8065043C 000D1C 0020+00 1/0 0/0 0/0 .text            daB_ZANTM_Create__FP11daB_ZANTM_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daB_ZANTM_Create(daB_ZANTM_c* param_0) {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_zant_magic/d_a_b_zant_magic/daB_ZANTM_Create__FP11daB_ZANTM_c.s"
}
#pragma pop

/* 8065043C-80650484 000D3C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cCcD_GStts::~cCcD_GStts() {
extern "C" asm void __dt__10cCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_zant_magic/d_a_b_zant_magic/__dt__10cCcD_GSttsFv.s"
}
#pragma pop

/* 80650484-8065048C 000D84 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80650484() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_zant_magic/d_a_b_zant_magic/func_80650484.s"
}
#pragma pop

/* 8065048C-80650494 000D8C 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_8065048C() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_zant_magic/d_a_b_zant_magic/func_8065048C.s"
}
#pragma pop
