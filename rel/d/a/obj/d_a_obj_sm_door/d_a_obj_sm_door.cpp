/**
 * @file d_a_obj_sm_door.cpp
 * 
*/

#include "rel/d/a/obj/d_a_obj_sm_door/d_a_obj_sm_door.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" static void daObjSM_DOOR_Create__FP10fopAc_ac_c();
extern "C" static void daObjSM_DOOR_Delete__FP14daObjSM_DOOR_c();
extern "C" static void s_obj_sub__FPvPv();
extern "C" void ChangeModel__14daObjSM_DOOR_cFv();
extern "C" void Action__14daObjSM_DOOR_cFv();
extern "C" void SetDzb__14daObjSM_DOOR_cFv();
extern "C" void ReleaceDzb__14daObjSM_DOOR_cFv();
extern "C" void DrawChk1__14daObjSM_DOOR_cFv();
extern "C" void DrawChk2__14daObjSM_DOOR_cFv();
extern "C" void setBaseMtx__14daObjSM_DOOR_cFv();
extern "C" static void daObjSM_DOOR_Draw__FP14daObjSM_DOOR_c();
extern "C" static void daObjSM_DOOR_Execute__FP14daObjSM_DOOR_c();
extern "C" void create__14daObjSM_DOOR_cFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" static bool daObjSM_DOOR_IsDelete__FP14daObjSM_DOOR_c();
extern "C" void CreateHeap__14daObjSM_DOOR_cFv();
extern "C" void Create__14daObjSM_DOOR_cFv();
extern "C" void Execute__14daObjSM_DOOR_cFPPA3_A4_f();
extern "C" void Draw__14daObjSM_DOOR_cFv();
extern "C" void Delete__14daObjSM_DOOR_cFv();
extern "C" static void func_80CD9578();
extern "C" static void func_80CD9580();
extern "C" extern char const* const d_a_obj_sm_door__stringBase0;

//
// External References:
//

extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci();
extern "C" void getObjectResName2Index__14dRes_control_cFPCcPCc();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" f32 mGroundY__11fopAcM_gc_c;
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* 80CD85B8-80CD85D8 000078 0020+00 1/0 0/0 0/0 .text            daObjSM_DOOR_Create__FP10fopAc_ac_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjSM_DOOR_Create(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sm_door/d_a_obj_sm_door/daObjSM_DOOR_Create__FP10fopAc_ac_c.s"
}
#pragma pop

/* 80CD85D8-80CD85FC 000098 0024+00 1/0 0/0 0/0 .text daObjSM_DOOR_Delete__FP14daObjSM_DOOR_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjSM_DOOR_Delete(daObjSM_DOOR_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sm_door/d_a_obj_sm_door/daObjSM_DOOR_Delete__FP14daObjSM_DOOR_c.s"
}
#pragma pop

/* ############################################################################################## */
/* 80CD9590-80CD9598 000000 0004+04 4/4 0/0 0/0 .rodata          @3697 */
SECTION_RODATA static u8 const lit_3697[4 + 4 /* padding */] = {
    0x00,
    0x00,
    0x00,
    0x00,
    /* padding */
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80CD9590, &lit_3697);

/* 80CD9598-80CD95A0 000008 0008+00 0/2 0/0 0/0 .rodata          @3698 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3698[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CD9598, &lit_3698);
#pragma pop

/* 80CD95A0-80CD95A8 000010 0008+00 0/2 0/0 0/0 .rodata          @3699 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3699[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CD95A0, &lit_3699);
#pragma pop

/* 80CD95A8-80CD95B0 000018 0008+00 0/2 0/0 0/0 .rodata          @3700 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3700[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CD95A8, &lit_3700);
#pragma pop

/* 80CD95B0-80CD95B4 000020 0004+00 0/1 0/0 0/0 .rodata          @3701 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3701 = 800.0f;
COMPILER_STRIP_GATE(0x80CD95B0, &lit_3701);
#pragma pop

/* 80CD85FC-80CD8784 0000BC 0188+00 1/1 0/0 0/0 .text            s_obj_sub__FPvPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void s_obj_sub(void* param_0, void* param_1) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sm_door/d_a_obj_sm_door/s_obj_sub__FPvPv.s"
}
#pragma pop

/* 80CD8784-80CD8790 000244 000C+00 1/1 0/0 0/0 .text            ChangeModel__14daObjSM_DOOR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjSM_DOOR_c::ChangeModel() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sm_door/d_a_obj_sm_door/ChangeModel__14daObjSM_DOOR_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80CD95B4-80CD95B8 000024 0004+00 0/2 0/0 0/0 .rodata          @3753 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3753 = 1000.0f;
COMPILER_STRIP_GATE(0x80CD95B4, &lit_3753);
#pragma pop

/* 80CD95B8-80CD95BC 000028 0004+00 0/1 0/0 0/0 .rodata          @3829 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3829 = 600.0f;
COMPILER_STRIP_GATE(0x80CD95B8, &lit_3829);
#pragma pop

/* 80CD95BC-80CD95C0 00002C 0004+00 0/1 0/0 0/0 .rodata          @3830 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3830 = 1.0f;
COMPILER_STRIP_GATE(0x80CD95BC, &lit_3830);
#pragma pop

/* 80CD95C0-80CD95C4 000030 0004+00 0/1 0/0 0/0 .rodata          @3831 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3831 = -1.0f;
COMPILER_STRIP_GATE(0x80CD95C0, &lit_3831);
#pragma pop

/* 80CD95C4-80CD95C8 000034 0004+00 0/1 0/0 0/0 .rodata          @3832 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3832 = 3.0f;
COMPILER_STRIP_GATE(0x80CD95C4, &lit_3832);
#pragma pop

/* 80CD95C8-80CD95D0 000038 0008+00 0/1 0/0 0/0 .rodata          @3834 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3834[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CD95C8, &lit_3834);
#pragma pop

/* 80CD8790-80CD8A40 000250 02B0+00 1/1 0/0 0/0 .text            Action__14daObjSM_DOOR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjSM_DOOR_c::Action() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sm_door/d_a_obj_sm_door/Action__14daObjSM_DOOR_cFv.s"
}
#pragma pop

/* 80CD8A40-80CD8A90 000500 0050+00 2/2 0/0 0/0 .text            SetDzb__14daObjSM_DOOR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjSM_DOOR_c::SetDzb() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sm_door/d_a_obj_sm_door/SetDzb__14daObjSM_DOOR_cFv.s"
}
#pragma pop

/* 80CD8A90-80CD8AF8 000550 0068+00 3/3 0/0 0/0 .text            ReleaceDzb__14daObjSM_DOOR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjSM_DOOR_c::ReleaceDzb() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sm_door/d_a_obj_sm_door/ReleaceDzb__14daObjSM_DOOR_cFv.s"
}
#pragma pop

/* 80CD8AF8-80CD8BBC 0005B8 00C4+00 1/1 0/0 0/0 .text            DrawChk1__14daObjSM_DOOR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjSM_DOOR_c::DrawChk1() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sm_door/d_a_obj_sm_door/DrawChk1__14daObjSM_DOOR_cFv.s"
}
#pragma pop

/* 80CD8BBC-80CD8C80 00067C 00C4+00 1/1 0/0 0/0 .text            DrawChk2__14daObjSM_DOOR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjSM_DOOR_c::DrawChk2() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sm_door/d_a_obj_sm_door/DrawChk2__14daObjSM_DOOR_cFv.s"
}
#pragma pop

/* 80CD8C80-80CD8D00 000740 0080+00 1/1 0/0 0/0 .text            setBaseMtx__14daObjSM_DOOR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjSM_DOOR_c::setBaseMtx() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sm_door/d_a_obj_sm_door/setBaseMtx__14daObjSM_DOOR_cFv.s"
}
#pragma pop

/* 80CD8D00-80CD8D2C 0007C0 002C+00 1/0 0/0 0/0 .text daObjSM_DOOR_Draw__FP14daObjSM_DOOR_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjSM_DOOR_Draw(daObjSM_DOOR_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sm_door/d_a_obj_sm_door/daObjSM_DOOR_Draw__FP14daObjSM_DOOR_c.s"
}
#pragma pop

/* 80CD8D2C-80CD8D4C 0007EC 0020+00 2/1 0/0 0/0 .text daObjSM_DOOR_Execute__FP14daObjSM_DOOR_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjSM_DOOR_Execute(daObjSM_DOOR_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sm_door/d_a_obj_sm_door/daObjSM_DOOR_Execute__FP14daObjSM_DOOR_c.s"
}
#pragma pop

/* ############################################################################################## */
/* 80CD95D0-80CD95D4 000040 0004+00 0/1 0/0 0/0 .rodata          @4060 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4060 = -9.0f;
COMPILER_STRIP_GATE(0x80CD95D0, &lit_4060);
#pragma pop

/* 80CD95D4-80CD95D8 000044 0004+00 0/1 0/0 0/0 .rodata          @4061 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4061 = 100.0f;
COMPILER_STRIP_GATE(0x80CD95D4, &lit_4061);
#pragma pop

/* 80CD95D8-80CD95DC 000048 0004+00 0/2 0/0 0/0 .rodata          @4062 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4062 = -1000.0f;
COMPILER_STRIP_GATE(0x80CD95D8, &lit_4062);
#pragma pop

/* 80CD95DC-80CD95E0 00004C 0004+00 0/2 0/0 0/0 .rodata          @4063 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4063 = -500.0f;
COMPILER_STRIP_GATE(0x80CD95DC, &lit_4063);
#pragma pop

/* 80CD95E0-80CD95E4 000050 0004+00 0/2 0/0 0/0 .rodata          @4064 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4064 = 500.0f;
COMPILER_STRIP_GATE(0x80CD95E0, &lit_4064);
#pragma pop

/* 80CD95E4-80CD95E4 000054 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CD95E4 = "sm_door";
SECTION_DEAD static char const* const stringBase_80CD95EC = "A_SM_DoorA.dzb";
SECTION_DEAD static char const* const stringBase_80CD95FB = "A_SM_DoorBl.dzb";
SECTION_DEAD static char const* const stringBase_80CD960B = "A_SM_DoorWo.dzb";
#pragma pop

/* 80CD968C-80CD9690 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_sm_door__stringBase0;

/* 80CD9690-80CD96B0 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjSM_DOOR_Method */
static actor_method_class l_daObjSM_DOOR_Method = {
    (process_method_func)daObjSM_DOOR_Create__FP10fopAc_ac_c,
    (process_method_func)daObjSM_DOOR_Delete__FP14daObjSM_DOOR_c,
    (process_method_func)daObjSM_DOOR_Execute__FP14daObjSM_DOOR_c,
    (process_method_func)daObjSM_DOOR_IsDelete__FP14daObjSM_DOOR_c,
    (process_method_func)daObjSM_DOOR_Draw__FP14daObjSM_DOOR_c,
};

/* 80CD96B0-80CD96E0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_SM_DOOR */
extern actor_process_profile_definition g_profile_Obj_SM_DOOR = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_SM_DOOR,       // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daObjSM_DOOR_c), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  476,                    // mPriority
  &l_daObjSM_DOOR_Method, // sub_method
  0x00044100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80CD96E0-80CD9704 000054 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80CD9580,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80CD9578,
};

/* 80CD9704-80CD972C 000078 0028+00 1/1 0/0 0/0 .data            __vt__14daObjSM_DOOR_c */
SECTION_DATA extern void* __vt__14daObjSM_DOOR_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__14daObjSM_DOOR_cFv,
    (void*)Create__14daObjSM_DOOR_cFv,
    (void*)Execute__14daObjSM_DOOR_cFPPA3_A4_f,
    (void*)Draw__14daObjSM_DOOR_cFv,
    (void*)Delete__14daObjSM_DOOR_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80CD8D4C-80CD902C 00080C 02E0+00 1/1 0/0 0/0 .text            create__14daObjSM_DOOR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjSM_DOOR_c::create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sm_door/d_a_obj_sm_door/create__14daObjSM_DOOR_cFv.s"
}
#pragma pop

/* 80CD902C-80CD909C 000AEC 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" asm void __dt__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sm_door/d_a_obj_sm_door/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* 80CD909C-80CD90A4 000B5C 0008+00 1/0 0/0 0/0 .text daObjSM_DOOR_IsDelete__FP14daObjSM_DOOR_c */
static bool daObjSM_DOOR_IsDelete(daObjSM_DOOR_c* param_0) {
    return true;
}

/* ############################################################################################## */
/* 80CD95E4-80CD95E4 000054 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CD961B = "A_SM_DoorA.bmd";
SECTION_DEAD static char const* const stringBase_80CD962A = "A_SM_DoorA_Alpha.bmd";
SECTION_DEAD static char const* const stringBase_80CD963F = "A_SM_DoorBl.bmd";
SECTION_DEAD static char const* const stringBase_80CD964F = "A_SM_DoorBl_Alpha.bmd";
SECTION_DEAD static char const* const stringBase_80CD9665 = "A_SM_DoorWo.bmd";
SECTION_DEAD static char const* const stringBase_80CD9675 = "A_SM_DoorWo_Alpha.bmd";
#pragma pop

/* 80CD90A4-80CD9258 000B64 01B4+00 1/0 0/0 0/0 .text            CreateHeap__14daObjSM_DOOR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjSM_DOOR_c::CreateHeap() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sm_door/d_a_obj_sm_door/CreateHeap__14daObjSM_DOOR_cFv.s"
}
#pragma pop

/* 80CD9258-80CD929C 000D18 0044+00 1/0 0/0 0/0 .text            Create__14daObjSM_DOOR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjSM_DOOR_c::Create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sm_door/d_a_obj_sm_door/func_80CD9258.s"
}
#pragma pop

/* 80CD929C-80CD930C 000D5C 0070+00 1/0 0/0 0/0 .text            Execute__14daObjSM_DOOR_cFPPA3_A4_f
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjSM_DOOR_c::Execute(f32 (**param_0)[3][4]) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sm_door/d_a_obj_sm_door/Execute__14daObjSM_DOOR_cFPPA3_A4_f.s"
}
#pragma pop

/* 80CD930C-80CD9544 000DCC 0238+00 1/0 0/0 0/0 .text            Draw__14daObjSM_DOOR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjSM_DOOR_c::Draw() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sm_door/d_a_obj_sm_door/Draw__14daObjSM_DOOR_cFv.s"
}
#pragma pop

/* 80CD9544-80CD9578 001004 0034+00 1/0 0/0 0/0 .text            Delete__14daObjSM_DOOR_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjSM_DOOR_c::Delete() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sm_door/d_a_obj_sm_door/Delete__14daObjSM_DOOR_cFv.s"
}
#pragma pop

/* 80CD9578-80CD9580 001038 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80CD9578() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sm_door/d_a_obj_sm_door/func_80CD9578.s"
}
#pragma pop

/* 80CD9580-80CD9588 001040 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80CD9580() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sm_door/d_a_obj_sm_door/func_80CD9580.s"
}
#pragma pop

/* 80CD95E4-80CD95E4 000054 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
