/**
 * @file d_a_npc_worm.cpp
 * 
*/

#include "rel/d/a/npc/d_a_npc_worm/d_a_npc_worm.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" static void nodeCallBack__FP8J3DJointi();
extern "C" static void daNPC_WORM_Draw__FP14npc_worm_class();
extern "C" static void npc_worm_ground__FP14npc_worm_class();
extern "C" static void npc_worm_normal__FP14npc_worm_class();
extern "C" static void npc_worm_dive__FP14npc_worm_class();
extern "C" static void npc_worm_binwait__FP14npc_worm_class();
extern "C" static void action__FP14npc_worm_class();
extern "C" static void daNPC_WORM_Execute__FP14npc_worm_class();
extern "C" static bool daNPC_WORM_IsDelete__FP14npc_worm_class();
extern "C" static void daNPC_WORM_Delete__FP14npc_worm_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daNPC_WORM_Create__FP10fopAc_ac_c();
extern "C" void getLeftHandPos__9daPy_py_cCFv();
extern "C" void Insect_Release__9dInsect_cFv();
extern "C" extern char const* const d_a_npc_worm__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotS__FPA4_fs();
extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void request__11dAttCatch_cFP10fopAc_ac_cUcfffsi();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void __ct__9dInsect_cFv();
extern "C" void setLookPos__9daPy_py_cFP4cXyz();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void _savegpr_24();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_24();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];

//
// Declarations:
//

/* 80B2DE78-80B2DF4C 000078 00D4+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void nodeCallBack(J3DJoint* param_0, int param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_worm/d_a_npc_worm/nodeCallBack__FP8J3DJointi.s"
}
#pragma pop

/* ############################################################################################## */
/* 80B2F080-80B2F084 000000 0004+00 7/7 0/0 0/0 .rodata          @3717 */
SECTION_RODATA static f32 const lit_3717 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x80B2F080, &lit_3717);

/* 80B2DF4C-80B2E044 00014C 00F8+00 1/0 0/0 0/0 .text            daNPC_WORM_Draw__FP14npc_worm_class
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daNPC_WORM_Draw(npc_worm_class* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_worm/d_a_npc_worm/daNPC_WORM_Draw__FP14npc_worm_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 80B2F084-80B2F088 000004 0004+00 0/5 0/0 0/0 .rodata          @3774 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3774[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B2F084, &lit_3774);
#pragma pop

/* 80B2F088-80B2F090 000008 0008+00 0/1 0/0 0/0 .rodata          @3775 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3775[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B2F088, &lit_3775);
#pragma pop

/* 80B2F090-80B2F098 000010 0008+00 0/1 0/0 0/0 .rodata          @3776 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3776[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B2F090, &lit_3776);
#pragma pop

/* 80B2F098-80B2F0A0 000018 0008+00 0/1 0/0 0/0 .rodata          @3777 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3777[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B2F098, &lit_3777);
#pragma pop

/* 80B2F0A0-80B2F0A4 000020 0004+00 0/1 0/0 0/0 .rodata          @3778 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3778 = 35.0f;
COMPILER_STRIP_GATE(0x80B2F0A0, &lit_3778);
#pragma pop

/* 80B2F0A4-80B2F0A8 000024 0004+00 0/3 0/0 0/0 .rodata          @3779 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3779 = 10.0f;
COMPILER_STRIP_GATE(0x80B2F0A4, &lit_3779);
#pragma pop

/* 80B2F0A8-80B2F0AC 000028 0004+00 0/3 0/0 0/0 .rodata          @3780 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3780 = 5.0f;
COMPILER_STRIP_GATE(0x80B2F0A8, &lit_3780);
#pragma pop

/* 80B2F0AC-80B2F0B0 00002C 0004+00 0/1 0/0 0/0 .rodata          @3781 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3781 = 20.0f;
COMPILER_STRIP_GATE(0x80B2F0AC, &lit_3781);
#pragma pop

/* 80B2E044-80B2E2C4 000244 0280+00 1/1 0/0 0/0 .text            npc_worm_ground__FP14npc_worm_class
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void npc_worm_ground(npc_worm_class* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_worm/d_a_npc_worm/npc_worm_ground__FP14npc_worm_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 80B2F0B0-80B2F0B4 000030 0004+00 0/1 0/0 0/0 .rodata          @3812 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3812 = 65536.0f;
COMPILER_STRIP_GATE(0x80B2F0B0, &lit_3812);
#pragma pop

/* 80B2F0B4-80B2F0B8 000034 0004+00 0/1 0/0 0/0 .rodata          @3813 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3813 = 16000.0f;
COMPILER_STRIP_GATE(0x80B2F0B4, &lit_3813);
#pragma pop

/* 80B2F0B8-80B2F0BC 000038 0004+00 0/1 0/0 0/0 .rodata          @3814 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3814 = 130.0f;
COMPILER_STRIP_GATE(0x80B2F0B8, &lit_3814);
#pragma pop

/* 80B2F0BC-80B2F0C0 00003C 0004+00 0/2 0/0 0/0 .rodata          @3815 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3815 = 60.0f;
COMPILER_STRIP_GATE(0x80B2F0BC, &lit_3815);
#pragma pop

/* 80B2F0C0-80B2F0C4 000040 0004+00 0/3 0/0 0/0 .rodata          @3816 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3816 = 3.0f;
COMPILER_STRIP_GATE(0x80B2F0C0, &lit_3816);
#pragma pop

/* 80B2F0C4-80B2F0C8 000044 0004+00 0/1 0/0 0/0 .rodata          @3817 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3817 = 15.0f;
COMPILER_STRIP_GATE(0x80B2F0C4, &lit_3817);
#pragma pop

/* 80B2F0C8-80B2F0CC 000048 0004+00 0/1 0/0 0/0 .rodata          @3818 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3818 = 4.0f;
COMPILER_STRIP_GATE(0x80B2F0C8, &lit_3818);
#pragma pop

/* 80B2F0CC-80B2F0D0 00004C 0004+00 0/1 0/0 0/0 .rodata          @3819 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3819 = 2.0f;
COMPILER_STRIP_GATE(0x80B2F0CC, &lit_3819);
#pragma pop

/* 80B2F0D0-80B2F0D4 000050 0004+00 0/1 0/0 0/0 .rodata          @3820 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3820 = 20000.0f;
COMPILER_STRIP_GATE(0x80B2F0D0, &lit_3820);
#pragma pop

/* 80B2F0D4-80B2F0D8 000054 0004+00 0/1 0/0 0/0 .rodata          @3821 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3821 = 0.5f;
COMPILER_STRIP_GATE(0x80B2F0D4, &lit_3821);
#pragma pop

/* 80B2F0D8-80B2F0DC 000058 0004+00 0/1 0/0 0/0 .rodata          @3822 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3822 = 0.75f;
COMPILER_STRIP_GATE(0x80B2F0D8, &lit_3822);
#pragma pop

/* 80B2F0DC-80B2F0E0 00005C 0004+00 0/2 0/0 0/0 .rodata          @3823 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3823 = 200.0f;
COMPILER_STRIP_GATE(0x80B2F0DC, &lit_3823);
#pragma pop

/* 80B2F0E0-80B2F0E4 000060 0004+00 0/2 0/0 0/0 .rodata          @3824 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3824 = 100.0f;
COMPILER_STRIP_GATE(0x80B2F0E0, &lit_3824);
#pragma pop

/* 80B2F0E4-80B2F0E8 000064 0004+00 0/1 0/0 0/0 .rodata          @3825 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3825 = -150.0f;
COMPILER_STRIP_GATE(0x80B2F0E4, &lit_3825);
#pragma pop

/* 80B2E2C4-80B2E544 0004C4 0280+00 1/1 0/0 0/0 .text            npc_worm_normal__FP14npc_worm_class
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void npc_worm_normal(npc_worm_class* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_worm/d_a_npc_worm/npc_worm_normal__FP14npc_worm_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 80B2F0E8-80B2F0EC 000068 0004+00 0/1 0/0 0/0 .rodata          @3850 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3850 = -1.0f;
COMPILER_STRIP_GATE(0x80B2F0E8, &lit_3850);
#pragma pop

/* 80B2F0EC-80B2F0F0 00006C 0004+00 0/3 0/0 0/0 .rodata          @3851 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3851 = 1.0f;
COMPILER_STRIP_GATE(0x80B2F0EC, &lit_3851);
#pragma pop

/* 80B2F0F0-80B2F0F4 000070 0004+00 0/2 0/0 0/0 .rodata          @3852 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3852 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80B2F0F0, &lit_3852);
#pragma pop

/* 80B2F0F4-80B2F0F8 000074 0004+00 0/1 0/0 0/0 .rodata          @3853 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3853 = 1.0f / 50.0f;
COMPILER_STRIP_GATE(0x80B2F0F4, &lit_3853);
#pragma pop

/* 80B2E544-80B2E678 000744 0134+00 1/1 0/0 0/0 .text            npc_worm_dive__FP14npc_worm_class
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void npc_worm_dive(npc_worm_class* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_worm/d_a_npc_worm/npc_worm_dive__FP14npc_worm_class.s"
}
#pragma pop

/* 80B2E678-80B2E6C4 000878 004C+00 1/1 0/0 0/0 .text npc_worm_binwait__FP14npc_worm_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void npc_worm_binwait(npc_worm_class* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_worm/d_a_npc_worm/npc_worm_binwait__FP14npc_worm_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 80B2F0F8-80B2F0FC 000078 0004+00 0/1 0/0 0/0 .rodata          @3990 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3990 = 8000.0f;
COMPILER_STRIP_GATE(0x80B2F0F8, &lit_3990);
#pragma pop

/* 80B2F0FC-80B2F100 00007C 0004+00 0/1 0/0 0/0 .rodata          @3991 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3991 = 4000.0f;
COMPILER_STRIP_GATE(0x80B2F0FC, &lit_3991);
#pragma pop

/* 80B2F100-80B2F104 000080 0004+00 0/1 0/0 0/0 .rodata          @3992 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3992 = 2000.0f;
COMPILER_STRIP_GATE(0x80B2F100, &lit_3992);
#pragma pop

/* 80B2F104-80B2F108 000084 0004+00 0/1 0/0 0/0 .rodata          @3993 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3993 = 17.0f / 100.0f;
COMPILER_STRIP_GATE(0x80B2F104, &lit_3993);
#pragma pop

/* 80B2F108-80B2F10C 000088 0004+00 0/1 0/0 0/0 .rodata          @3994 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3994 = -50.0f;
COMPILER_STRIP_GATE(0x80B2F108, &lit_3994);
#pragma pop

/* 80B2F10C-80B2F110 00008C 0004+00 0/1 0/0 0/0 .rodata          @3995 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3995 = 50.0f;
COMPILER_STRIP_GATE(0x80B2F10C, &lit_3995);
#pragma pop

/* 80B2F110-80B2F114 000090 0004+00 0/1 0/0 0/0 .rodata          @3996 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3996 = -10.0f;
COMPILER_STRIP_GATE(0x80B2F110, &lit_3996);
#pragma pop

/* 80B2E6C4-80B2EBF4 0008C4 0530+00 1/1 0/0 0/0 .text            action__FP14npc_worm_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void action(npc_worm_class* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_worm/d_a_npc_worm/action__FP14npc_worm_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 80B2F114-80B2F118 000094 0004+00 0/1 0/0 0/0 .rodata          @4054 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4054 = 2.5f;
COMPILER_STRIP_GATE(0x80B2F114, &lit_4054);
#pragma pop

/* 80B2F118-80B2F11C 000098 0004+00 0/1 0/0 0/0 .rodata          @4055 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4055 = 2.0f / 25.0f;
COMPILER_STRIP_GATE(0x80B2F118, &lit_4055);
#pragma pop

/* 80B2F11C-80B2F120 00009C 0004+00 0/1 0/0 0/0 .rodata          @4056 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4056 = 11.0f / 10.0f;
COMPILER_STRIP_GATE(0x80B2F11C, &lit_4056);
#pragma pop

/* 80B2EBF4-80B2EDD0 000DF4 01DC+00 2/1 0/0 0/0 .text daNPC_WORM_Execute__FP14npc_worm_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daNPC_WORM_Execute(npc_worm_class* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_worm/d_a_npc_worm/daNPC_WORM_Execute__FP14npc_worm_class.s"
}
#pragma pop

/* 80B2EDD0-80B2EDD8 000FD0 0008+00 1/0 0/0 0/0 .text daNPC_WORM_IsDelete__FP14npc_worm_class */
static bool daNPC_WORM_IsDelete(npc_worm_class* param_0) {
    return true;
}

/* ############################################################################################## */
/* 80B2F124-80B2F124 0000A4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B2F124 = "Alink";
#pragma pop

/* 80B2EDD8-80B2EE08 000FD8 0030+00 1/0 0/0 0/0 .text daNPC_WORM_Delete__FP14npc_worm_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daNPC_WORM_Delete(npc_worm_class* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_worm/d_a_npc_worm/daNPC_WORM_Delete__FP14npc_worm_class.s"
}
#pragma pop

/* 80B2EE08-80B2EEC0 001008 00B8+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void useHeapInit(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_worm/d_a_npc_worm/useHeapInit__FP10fopAc_ac_c.s"
}
#pragma pop

/* ############################################################################################## */
/* 80B2F120-80B2F124 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4126 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4126 = 65535.0f;
COMPILER_STRIP_GATE(0x80B2F120, &lit_4126);
#pragma pop

/* 80B2F12C-80B2F14C -00001 0020+00 1/0 0/0 0/0 .data            l_daNPC_WORM_Method */
static actor_method_class l_daNPC_WORM_Method = {
    (process_method_func)daNPC_WORM_Create__FP10fopAc_ac_c,
    (process_method_func)daNPC_WORM_Delete__FP14npc_worm_class,
    (process_method_func)daNPC_WORM_Execute__FP14npc_worm_class,
    (process_method_func)daNPC_WORM_IsDelete__FP14npc_worm_class,
    (process_method_func)daNPC_WORM_Draw__FP14npc_worm_class,
};

/* 80B2F14C-80B2F17C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_WORM */
extern actor_process_profile_definition g_profile_NPC_WORM = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_WORM,          // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(npc_worm_class), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  429,                    // mPriority
  &l_daNPC_WORM_Method,   // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_0_e,      // cullType
};

/* 80B2F17C-80B2F188 000050 000C+00 1/1 0/0 0/0 .data            __vt__14npc_worm_class */
SECTION_DATA extern void* __vt__14npc_worm_class[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)Insect_Release__9dInsect_cFv,
};

/* 80B2EEC0-80B2F050 0010C0 0190+00 1/0 0/0 0/0 .text            daNPC_WORM_Create__FP10fopAc_ac_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daNPC_WORM_Create(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_worm/d_a_npc_worm/daNPC_WORM_Create__FP10fopAc_ac_c.s"
}
#pragma pop

/* 80B2F050-80B2F06C 001250 001C+00 1/1 0/0 0/0 .text            getLeftHandPos__9daPy_py_cCFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void daPy_py_c::getLeftHandPos() const {
extern "C" asm void getLeftHandPos__9daPy_py_cCFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_worm/d_a_npc_worm/getLeftHandPos__9daPy_py_cCFv.s"
}
#pragma pop

/* 80B2F06C-80B2F078 00126C 000C+00 1/0 0/0 0/0 .text            Insect_Release__9dInsect_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void dInsect_c::Insect_Release() {
extern "C" asm void Insect_Release__9dInsect_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_worm/d_a_npc_worm/Insect_Release__9dInsect_cFv.s"
}
#pragma pop

/* 80B2F124-80B2F124 0000A4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
