/**
 * d_a_obj_zra_freeze.cpp
 *
 */

#include "rel/d/a/obj/d_a_obj_zra_freeze/d_a_obj_zra_freeze.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "SSystem/SComponent/c_math.h"
#include "d/a/d_a_player.h"
#include "d/d_procname.h"
#include "dol2asm.h"

class daZraFreeze_c : public fopAc_ac_c {
public:
    /* 80D440B8 */ void setBaseMtx();
    /* 80D44124 */ BOOL chkActorInScreen();
    /* 80D442BC */ int Create();
    /* 80D4443C */ int CreateHeap();
    /* 80D444C0 */ void setHitodamaPrtcl();
    /* 80D44698 */ int Execute();
    /* 80D449E0 */ int Draw();
    /* 80D44A84 */ int Delete();

    /* 0x568 */ request_of_phase_process_class mPhaseReq;
    /* 0x570 */ J3DModel* mpModel;
    /* 0x574 */ Mtx mMtx;
    /* 0x5A4 */ s32 field_0x5a4;
    /* 0x5A8 */ s32 field_0x5a8;
    /* 0x5AC */ s32 field_0x5ac;
    /* 0x5B0 */ u8 field_0x5b0;
    /* 0x5B1 */ u8 field_0x5b1;
    /* 0x5B2 */ u8 field_0x5b2;
    /* 0x5B3 */ u8 field_0x5B3[0x5B4 - 0x5B3];
    /* 0x5B4 */ cXyz field_0x5b4;
    /* 0x5C0 */ cXyz field_0x5c0;
    /* 0x5CC */ s16 field_0x5cc;
    /* 0x5CE */ u8 field_0x5ce;
    /* 0x5CF */ u8 field_0x5cf;
    /* 0x5D0 */ cXyz field_0x5d0;
    /* 0x5DC */ s16 field_0x5dc;
    /* 0x5DE */ s16 field_0x5de;
};

//
// Forward References:
//

extern "C" void setBaseMtx__13daZraFreeze_cFv();
extern "C" void chkActorInScreen__13daZraFreeze_cFv();
extern "C" static void createSolidHeap__FP10fopAc_ac_c();
extern "C" void Create__13daZraFreeze_cFv();
extern "C" void CreateHeap__13daZraFreeze_cFv();
extern "C" void setHitodamaPrtcl__13daZraFreeze_cFv();
extern "C" void Execute__13daZraFreeze_cFv();
extern "C" void Draw__13daZraFreeze_cFv();
extern "C" void Delete__13daZraFreeze_cFv();
extern "C" static void daZraFreeze_Draw__FP13daZraFreeze_c();
extern "C" static void daZraFreeze_Execute__FP13daZraFreeze_c();
extern "C" static bool daZraFreeze_IsDelete__FP13daZraFreeze_c();
extern "C" static void daZraFreeze_Delete__FP13daZraFreeze_c();
extern "C" static void daZraFreeze_create__FP10fopAc_ac_c();
extern "C" extern char const* const d_a_obj_zra_freeze__stringBase0;
extern "C" extern void* g_profile_OBJ_ZRAFREEZE[12];

//
// External References:
//

extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void XYZrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void mDoLib_project__FP3VecP3Vec();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGs_sense_type_change_Set__FSc();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci();
extern "C" void getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void checkNowWolfEyeUp__9daPy_py_cFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_rndF__Ff();
extern "C" void _savegpr_24();
extern "C" void _savegpr_29();
extern "C" void _restgpr_24();
extern "C" void _restgpr_29();
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 sincosTable___5JMath[65536];

//
// Declarations:
//

/* 80D440B8-80D44124 000078 006C+00 2/2 0/0 0/0 .text            setBaseMtx__13daZraFreeze_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daZraFreeze_c::setBaseMtx() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zra_freeze/d_a_obj_zra_freeze/setBaseMtx__13daZraFreeze_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D44B48-80D44B50 000000 0008+00 3/3 0/0 0/0 .rodata          l_DATA */
SECTION_RODATA static u8 const l_DATA[8] = {
    0x44, 0x48, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D44B48, &l_DATA);

/* 80D44B50-80D44B54 000008 0004+00 0/2 0/0 0/0 .rodata          @3763 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3763[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80D44B50, &lit_3763);
#pragma pop

/* 80D44B54-80D44B58 00000C 0004+00 0/1 0/0 0/0 .rodata          @3764 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3764 = 608.0f;
COMPILER_STRIP_GATE(0x80D44B54, &lit_3764);
#pragma pop

/* 80D44B58-80D44B5C 000010 0004+00 0/1 0/0 0/0 .rodata          @3765 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3765 = 448.0f;
COMPILER_STRIP_GATE(0x80D44B58, &lit_3765);
#pragma pop

/* 80D44124-80D4429C 0000E4 0178+00 1/1 0/0 0/0 .text            chkActorInScreen__13daZraFreeze_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daZraFreeze_c::chkActorInScreen() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zra_freeze/d_a_obj_zra_freeze/chkActorInScreen__13daZraFreeze_cFv.s"
}
#pragma pop

/* 80D4429C-80D442BC 00025C 0020+00 1/1 0/0 0/0 .text            createSolidHeap__FP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int createSolidHeap(fopAc_ac_c* i_this) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zra_freeze/d_a_obj_zra_freeze/createSolidHeap__FP10fopAc_ac_c.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D44B5C-80D44B60 000014 0004+00 1/1 0/0 0/0 .rodata          @3840 */
SECTION_RODATA static f32 const lit_3840 = 65536.0f;
COMPILER_STRIP_GATE(0x80D44B5C, &lit_3840);

/* 80D44BC4-80D44BC8 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "zrF";

/* 80D442BC-80D4443C 00027C 0180+00 1/1 0/0 0/0 .text            Create__13daZraFreeze_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daZraFreeze_c::Create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zra_freeze/d_a_obj_zra_freeze/Create__13daZraFreeze_cFv.s"
}
#pragma pop

/* 80D44BC8-80D44BD4 -00001 000C+00 1/1 0/0 0/0 .data            l_bmdName$3845 */
static char* l_bmdName[3] = {
    "zrA_a_TW.bmd",
    "zrA_pain_TW.bmd",
    "zrA_sol_TW.bmd",
};

/* 80D4443C-80D444C0 0003FC 0084+00 1/1 0/0 0/0 .text            CreateHeap__13daZraFreeze_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daZraFreeze_c::CreateHeap() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zra_freeze/d_a_obj_zra_freeze/CreateHeap__13daZraFreeze_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D44B60-80D44B64 000018 0004+00 0/1 0/0 0/0 .rodata          id$3856 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const id[4] = {
    0x84,
    0x97,
    0x84,
    0x98,
};
COMPILER_STRIP_GATE(0x80D44B60, &id);
#pragma pop

/* 80D44B64-80D44B68 00001C 0004+00 0/1 0/0 0/0 .rodata          @3917 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3917 = 8.0f;
COMPILER_STRIP_GATE(0x80D44B64, &lit_3917);
#pragma pop

/* 80D44B68-80D44B6C 000020 0004+00 0/1 0/0 0/0 .rodata          @3918 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3918 = 4.0f;
COMPILER_STRIP_GATE(0x80D44B68, &lit_3918);
#pragma pop

/* 80D44B6C-80D44B70 000024 0004+00 0/1 0/0 0/0 .rodata          @3919 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3919 = 1.0f;
COMPILER_STRIP_GATE(0x80D44B6C, &lit_3919);
#pragma pop

/* 80D444C0-80D44698 000480 01D8+00 1/1 0/0 0/0 .text            setHitodamaPrtcl__13daZraFreeze_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daZraFreeze_c::setHitodamaPrtcl() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zra_freeze/d_a_obj_zra_freeze/setHitodamaPrtcl__13daZraFreeze_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D44B70-80D44B78 000028 0008+00 0/1 0/0 0/0 .rodata          @4050 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4050[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D44B70, &lit_4050);
#pragma pop

/* 80D44B78-80D44B80 000030 0008+00 0/1 0/0 0/0 .rodata          @4051 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4051[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D44B78, &lit_4051);
#pragma pop

/* 80D44B80-80D44B88 000038 0008+00 0/1 0/0 0/0 .rodata          @4052 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4052[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D44B80, &lit_4052);
#pragma pop

/* 80D44B88-80D44B88 000040 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80D44BB8 = "zora_koori";
#pragma pop

/* 80D44698-80D449E0 000658 0348+00 1/1 0/0 0/0 .text            Execute__13daZraFreeze_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daZraFreeze_c::Execute() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zra_freeze/d_a_obj_zra_freeze/Execute__13daZraFreeze_cFv.s"
}
#pragma pop

/* 80D449E0-80D44A84 0009A0 00A4+00 1/1 0/0 0/0 .text            Draw__13daZraFreeze_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daZraFreeze_c::Draw() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zra_freeze/d_a_obj_zra_freeze/Draw__13daZraFreeze_cFv.s"
}
#pragma pop

/* 80D44A84-80D44AB8 000A44 0034+00 1/1 0/0 0/0 .text            Delete__13daZraFreeze_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daZraFreeze_c::Delete() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zra_freeze/d_a_obj_zra_freeze/Delete__13daZraFreeze_cFv.s"
}
#pragma pop

/* 80D44AB8-80D44AD8 000A78 0020+00 1/0 0/0 0/0 .text            daZraFreeze_Draw__FP13daZraFreeze_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int daZraFreeze_Draw(daZraFreeze_c* i_this) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zra_freeze/d_a_obj_zra_freeze/daZraFreeze_Draw__FP13daZraFreeze_c.s"
}
#pragma pop

/* 80D44AD8-80D44AF8 000A98 0020+00 1/0 0/0 0/0 .text daZraFreeze_Execute__FP13daZraFreeze_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int daZraFreeze_Execute(daZraFreeze_c* i_this) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zra_freeze/d_a_obj_zra_freeze/daZraFreeze_Execute__FP13daZraFreeze_c.s"
}
#pragma pop

/* 80D44AF8-80D44B00 000AB8 0008+00 1/0 0/0 0/0 .text daZraFreeze_IsDelete__FP13daZraFreeze_c */
static int daZraFreeze_IsDelete(daZraFreeze_c* i_this) {
    return 1;
}

/* 80D44B00-80D44B20 000AC0 0020+00 1/0 0/0 0/0 .text daZraFreeze_Delete__FP13daZraFreeze_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int daZraFreeze_Delete(daZraFreeze_c* i_this) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zra_freeze/d_a_obj_zra_freeze/daZraFreeze_Delete__FP13daZraFreeze_c.s"
}
#pragma pop

/* 80D44B20-80D44B40 000AE0 0020+00 1/0 0/0 0/0 .text            daZraFreeze_create__FP10fopAc_ac_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int daZraFreeze_create(fopAc_ac_c* i_this) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zra_freeze/d_a_obj_zra_freeze/daZraFreeze_create__FP10fopAc_ac_c.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D44BD4-80D44BF4 -00001 0020+00 1/0 0/0 0/0 .data            l_daZraFreeze_Method */
SECTION_DATA static void* l_daZraFreeze_Method[8] = {
    (void*)daZraFreeze_create__FP10fopAc_ac_c,
    (void*)daZraFreeze_Delete__FP13daZraFreeze_c,
    (void*)daZraFreeze_Execute__FP13daZraFreeze_c,
    (void*)daZraFreeze_IsDelete__FP13daZraFreeze_c,
    (void*)daZraFreeze_Draw__FP13daZraFreeze_c,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
};

/* 80D44BF4-80D44C24 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_ZRAFREEZE */
SECTION_DATA extern void* g_profile_OBJ_ZRAFREEZE[12] = {
    (void*)0xFFFFFFFD, (void*)0x0007FFFD,
    (void*)0x02820000, (void*)&g_fpcLf_Method,
    (void*)0x000005E0, (void*)NULL,
    (void*)NULL,       (void*)&g_fopAc_Method,
    (void*)0x01840000, (void*)&l_daZraFreeze_Method,
    (void*)0x00044100, (void*)0x000E0000,
};
