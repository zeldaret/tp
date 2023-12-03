/**
 * d_a_obj_well_cover.cpp
 *
 */

#include "rel/d/a/obj/d_a_obj_well_cover/d_a_obj_well_cover.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "d/bg/d_bg_w.h"
#include "d/d_procname.h"
#include "dol2asm.h"

class daObjWCover_c : public dBgS_MoveBgActor {
public:
    /* 80D36298 */ void initBaseMtx();
    /* 80D362D4 */ void setBaseMtx();
    /* 80D36348 */ int Create();
    /* 80D36394 */ int CreateHeap();
    /* 80D36404 */ int create();
    /* 80D364E0 */ int Execute(Mtx**);
    /* 80D3652C */ void action();
    /* 80D365B8 */ void modeWait();
    /* 80D36790 */ void init_modeBreak();
    /* 80D3689C */ void modeBreak();
    /* 80D368A0 */ int Draw();
    /* 80D36944 */ int Delete();

    u32 getSwNo() { return fopAcM_GetParam(this); }

    /* 0x5A0 */ request_of_phase_process_class mPhaseReq;
    /* 0x5A8 */ J3DModel* mpModel;
    /* 0x5AC */ u8 field_0x5AC[0x5B0 - 0x5AC];
    /* 0x5B0 */ u8 field_0x5b0;
};  // Size: 0x5B4

//
// Forward References:
//

extern "C" void initBaseMtx__13daObjWCover_cFv();
extern "C" void setBaseMtx__13daObjWCover_cFv();
extern "C" void Create__13daObjWCover_cFv();
extern "C" void CreateHeap__13daObjWCover_cFv();
extern "C" void create__13daObjWCover_cFv();
extern "C" void Execute__13daObjWCover_cFPPA3_A4_f();
extern "C" void action__13daObjWCover_cFv();
extern "C" void modeWait__13daObjWCover_cFv();
extern "C" void init_modeBreak__13daObjWCover_cFv();
extern "C" void modeBreak__13daObjWCover_cFv();
extern "C" void Draw__13daObjWCover_cFv();
extern "C" void Delete__13daObjWCover_cFv();
extern "C" static void daObjWCover_Draw__FP13daObjWCover_c();
extern "C" static void daObjWCover_Execute__FP13daObjWCover_c();
extern "C" static void daObjWCover_Delete__FP13daObjWCover_c();
extern "C" static void daObjWCover_Create__FP10fopAc_ac_c();
extern "C" extern char const* const d_a_obj_well_cover__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_26();
extern "C" void _savegpr_29();
extern "C" void _restgpr_26();
extern "C" void _restgpr_29();
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 data_80D36B18[4];

//
// Declarations:
//

/* 80D36298-80D362D4 000078 003C+00 1/1 0/0 0/0 .text            initBaseMtx__13daObjWCover_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWCover_c::initBaseMtx() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_well_cover/d_a_obj_well_cover/initBaseMtx__13daObjWCover_cFv.s"
}
#pragma pop

/* 80D362D4-80D36348 0000B4 0074+00 2/2 0/0 0/0 .text            setBaseMtx__13daObjWCover_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWCover_c::setBaseMtx() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_well_cover/d_a_obj_well_cover/setBaseMtx__13daObjWCover_cFv.s"
}
#pragma pop

/* 80D36348-80D36394 000128 004C+00 1/0 0/0 0/0 .text            Create__13daObjWCover_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjWCover_c::Create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_well_cover/d_a_obj_well_cover/Create__13daObjWCover_cFv.s"
}
#pragma pop

/* 80D36A4C-80D36A58 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80D36A58-80D36A6C 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80D36A6C-80D36A70 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "H_Idohuta";

/* 80D36394-80D36404 000174 0070+00 1/0 0/0 0/0 .text            CreateHeap__13daObjWCover_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjWCover_c::CreateHeap() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_well_cover/d_a_obj_well_cover/CreateHeap__13daObjWCover_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D36A70-80D36A7C -00001 000C+00 0/1 0/0 0/0 .data            @3731 */
#ifdef NONMATCHING
typedef void (daObjWCover_c::*modeFunc)();
static modeFunc l_func[] = {
    &daObjWCover_c::modeWait,
    &daObjWCover_c::modeBreak,
};
#else
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3731[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWait__13daObjWCover_cFv,
};
#pragma pop

/* 80D36A7C-80D36A88 -00001 000C+00 0/1 0/0 0/0 .data            @3732 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3732[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeBreak__13daObjWCover_cFv,
};
#pragma pop

/* 80D36A88-80D36AA0 00003C 0018+00 0/1 0/0 0/0 .data            l_func$3730 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_func[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop
#endif
/* 80D36AA0-80D36AC0 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjWCover_Method */
SECTION_DATA static void* l_daObjWCover_Method[8] = {
    (void*)daObjWCover_Create__FP10fopAc_ac_c,
    (void*)daObjWCover_Delete__FP13daObjWCover_c,
    (void*)daObjWCover_Execute__FP13daObjWCover_c,
    (void*)NULL,
    (void*)daObjWCover_Draw__FP13daObjWCover_c,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
};

/* 80D36AC0-80D36AF0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_WellCover */
SECTION_DATA extern void* g_profile_Obj_WellCover[12] = {
    (void*)0xFFFFFFFD, (void*)0x0003FFFD,
    (void*)0x00860000, (void*)&g_fpcLf_Method,
    (void*)0x000005B4, (void*)NULL,
    (void*)NULL,       (void*)&g_fopAc_Method,
    (void*)0x025E0000, (void*)&l_daObjWCover_Method,
    (void*)0x00040100, (void*)0x000E0000,
};

/* 80D36AF0-80D36B18 0000A4 0028+00 1/1 0/0 0/0 .data            __vt__13daObjWCover_c */
SECTION_DATA extern void* __vt__13daObjWCover_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__13daObjWCover_cFv,
    (void*)Create__13daObjWCover_cFv,
    (void*)Execute__13daObjWCover_cFPPA3_A4_f,
    (void*)Draw__13daObjWCover_cFv,
    (void*)Delete__13daObjWCover_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80D36404-80D364E0 0001E4 00DC+00 1/1 0/0 0/0 .text            create__13daObjWCover_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjWCover_c::create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_well_cover/d_a_obj_well_cover/func_80D36404.s"
}
#pragma pop

/* 80D364E0-80D3652C 0002C0 004C+00 1/0 0/0 0/0 .text            Execute__13daObjWCover_cFPPA3_A4_f
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjWCover_c::Execute(Mtx** i_mtx) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_well_cover/d_a_obj_well_cover/Execute__13daObjWCover_cFPPA3_A4_f.s"
}
#pragma pop

/* 80D3652C-80D365B8 00030C 008C+00 1/1 0/0 0/0 .text            action__13daObjWCover_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWCover_c::action() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_well_cover/d_a_obj_well_cover/action__13daObjWCover_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D36A0C-80D36A10 000000 0004+00 2/2 0/0 0/0 .rodata          @3794 */
SECTION_RODATA static f32 const lit_3794 = 150.0f;
COMPILER_STRIP_GATE(0x80D36A0C, &lit_3794);

/* 80D36A10-80D36A14 000004 0004+00 0/2 0/0 0/0 .rodata          @3795 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3795[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80D36A10, &lit_3795);
#pragma pop

/* 80D36A14-80D36A1C 000008 0008+00 0/1 0/0 0/0 .rodata          @3796 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3796[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D36A14, &lit_3796);
#pragma pop

/* 80D36A1C-80D36A24 000010 0008+00 0/1 0/0 0/0 .rodata          @3797 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3797[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D36A1C, &lit_3797);
#pragma pop

/* 80D36A24-80D36A2C 000018 0008+00 0/1 0/0 0/0 .rodata          @3798 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3798[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D36A24, &lit_3798);
#pragma pop

/* 80D36A2C-80D36A30 000020 0004+00 0/1 0/0 0/0 .rodata          @3799 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3799 = 80.0f;
COMPILER_STRIP_GATE(0x80D36A2C, &lit_3799);
#pragma pop

/* 80D36A30-80D36A34 000024 0004+00 0/1 0/0 0/0 .rodata          @3800 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3800 = 200.0f;
COMPILER_STRIP_GATE(0x80D36A30, &lit_3800);
#pragma pop

/* 80D365B8-80D36790 000398 01D8+00 1/0 0/0 0/0 .text            modeWait__13daObjWCover_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWCover_c::modeWait() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_well_cover/d_a_obj_well_cover/modeWait__13daObjWCover_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D36A34-80D36A3C 000028 0006+02 0/1 0/0 0/0 .rodata          particle_id$3806 */
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
COMPILER_STRIP_GATE(0x80D36A34, &particle_id);
#pragma pop

/* 80D36A3C-80D36A40 000030 0004+00 0/1 0/0 0/0 .rodata          @3833 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3833 = 1.0f;
COMPILER_STRIP_GATE(0x80D36A3C, &lit_3833);
#pragma pop

/* 80D36790-80D3689C 000570 010C+00 1/1 0/0 0/0 .text            init_modeBreak__13daObjWCover_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWCover_c::init_modeBreak() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_well_cover/d_a_obj_well_cover/init_modeBreak__13daObjWCover_cFv.s"
}
#pragma pop

/* 80D3689C-80D368A0 00067C 0004+00 1/0 0/0 0/0 .text            modeBreak__13daObjWCover_cFv */
void daObjWCover_c::modeBreak() {
    /* empty function */
}

/* 80D368A0-80D36944 000680 00A4+00 1/0 0/0 0/0 .text            Draw__13daObjWCover_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjWCover_c::Draw() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_well_cover/d_a_obj_well_cover/Draw__13daObjWCover_cFv.s"
}
#pragma pop

/* 80D36944-80D36978 000724 0034+00 1/0 0/0 0/0 .text            Delete__13daObjWCover_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjWCover_c::Delete() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_well_cover/d_a_obj_well_cover/Delete__13daObjWCover_cFv.s"
}
#pragma pop

/* 80D36978-80D369A4 000758 002C+00 1/0 0/0 0/0 .text            daObjWCover_Draw__FP13daObjWCover_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjWCover_Draw(daObjWCover_c* i_this) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_well_cover/d_a_obj_well_cover/daObjWCover_Draw__FP13daObjWCover_c.s"
}
#pragma pop

/* 80D369A4-80D369C4 000784 0020+00 1/0 0/0 0/0 .text daObjWCover_Execute__FP13daObjWCover_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjWCover_Execute(daObjWCover_c* i_this) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_well_cover/d_a_obj_well_cover/daObjWCover_Execute__FP13daObjWCover_c.s"
}
#pragma pop

/* 80D369C4-80D369E4 0007A4 0020+00 1/0 0/0 0/0 .text daObjWCover_Delete__FP13daObjWCover_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjWCover_Delete(daObjWCover_c* i_this) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_well_cover/d_a_obj_well_cover/daObjWCover_Delete__FP13daObjWCover_c.s"
}
#pragma pop

/* 80D369E4-80D36A04 0007C4 0020+00 1/0 0/0 0/0 .text            daObjWCover_Create__FP10fopAc_ac_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjWCover_Create(fopAc_ac_c* i_this) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_well_cover/d_a_obj_well_cover/daObjWCover_Create__FP10fopAc_ac_c.s"
}
#pragma pop
