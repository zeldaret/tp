/**
 * @file d_a_obj_fchain.cpp
 * 
*/

#include "rel/d/a/obj/d_a_obj_fchain/d_a_obj_fchain.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void createHeap__13daObjFchain_cFv();
extern "C" static void daObjFchain_createHeap__FP10fopAc_ac_c();
extern "C" void create__13daObjFchain_cFv();
extern "C" void __dt__5csXyzFv();
extern "C" void __ct__5csXyzFv();
extern "C" void __dt__4cXyzFv();
extern "C" void __ct__4cXyzFv();
extern "C" static void daObjFchain_Create__FP10fopAc_ac_c();
extern "C" void __dt__13daObjFchain_cFv();
extern "C" static void daObjFchain_Delete__FP13daObjFchain_c();
extern "C" void checkPlayerFoot__13daObjFchain_cFPC4cXyzPC4cXyzP4cXyz();
extern "C" void setGroundVec__13daObjFchain_cFP4cXyzf();
extern "C" void execute__13daObjFchain_cFv();
extern "C" static void daObjFchain_Execute__FP13daObjFchain_c();
extern "C" void draw__19daObjFchain_shape_cFv();
extern "C" void draw__13daObjFchain_cFv();
extern "C" static void daObjFchain_Draw__FP13daObjFchain_c();
extern "C" void __dt__19daObjFchain_shape_cFv();
extern "C" extern char const* const d_a_obj_fchain__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void isEventBit__11dSv_event_cCFUs();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getRunEventName__16dEvent_manager_cFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_setLight_again__Fv();
extern "C" void dKy_GxFog_tevstr_set__FP12dKy_tevstr_c();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void normalizeZP__4cXyzFv();
extern "C" void atan2sX_Z__4cXyzCFv();
extern "C" void atan2sY_XZ__4cXyzCFv();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rnd__Fv();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void __dl__FPv();
extern "C" bool entry__9J3DPacketFP13J3DDrawBuffer();
extern "C" void loadPreDrawSetting__8J3DShapeCFv();
extern "C" void entryImm__13J3DDrawBufferFP9J3DPacketUs();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
extern "C" extern void* __vt__9J3DPacket[5];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" f32 Zero__4cXyz[3];
extern "C" extern u32 g_whiteColor;
extern "C" extern u8 mStayNo__20dStage_roomControl_c[4];
extern "C" u8 sOldVcdVatCmd__8J3DShape[4];

//
// Declarations:
//

/* ############################################################################################## */
/* 80BE7438-80BE7440 000000 0007+01 6/6 0/0 0/0 .rodata          l_arcName */
SECTION_RODATA static u8 const l_arcName[7 + 1 /* padding */] = {
    0x46,
    0x63,
    0x68,
    0x61,
    0x69,
    0x6E,
    0x00,
    /* padding */
    0x00,
};
COMPILER_STRIP_GATE(0x80BE7438, &l_arcName);

/* 80BE5FF8-80BE6054 000078 005C+00 1/1 0/0 0/0 .text            createHeap__13daObjFchain_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjFchain_c::createHeap() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_fchain/d_a_obj_fchain/createHeap__13daObjFchain_cFv.s"
}
#pragma pop

/* 80BE6054-80BE6074 0000D4 0020+00 1/1 0/0 0/0 .text daObjFchain_createHeap__FP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjFchain_createHeap(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_fchain/d_a_obj_fchain/daObjFchain_createHeap__FP10fopAc_ac_c.s"
}
#pragma pop

/* ############################################################################################## */
/* 80BE7440-80BE744C 000008 000C+00 0/1 0/0 0/0 .rodata          localVec$3662 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const localVec[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0x10, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BE7440, &localVec);
#pragma pop

/* 80BE744C-80BE7450 000014 0004+00 0/2 0/0 0/0 .rodata          @3710 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3710 = 3.0f;
COMPILER_STRIP_GATE(0x80BE744C, &lit_3710);
#pragma pop

/* 80BE7450-80BE7454 000018 0004+00 0/2 0/0 0/0 .rodata          @3711 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3711 = 4096.0f;
COMPILER_STRIP_GATE(0x80BE7450, &lit_3711);
#pragma pop

/* 80BE7454-80BE7458 00001C 0004+00 0/2 0/0 0/0 .rodata          @3712 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3712 = 2048.0f;
COMPILER_STRIP_GATE(0x80BE7454, &lit_3712);
#pragma pop

/* 80BE7458-80BE745C 000020 0004+00 0/2 0/0 0/0 .rodata          @3713 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3713 = -4096.0f;
COMPILER_STRIP_GATE(0x80BE7458, &lit_3713);
#pragma pop

/* 80BE745C-80BE7460 000024 0004+00 0/3 0/0 0/0 .rodata          @3714 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3714 = 1.0f;
COMPILER_STRIP_GATE(0x80BE745C, &lit_3714);
#pragma pop

/* 80BE7460-80BE7464 000028 0004+00 0/2 0/0 0/0 .rodata          @3715 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3715 = -1.0f;
COMPILER_STRIP_GATE(0x80BE7460, &lit_3715);
#pragma pop

/* 80BE7464-80BE7468 00002C 0004+00 0/2 0/0 0/0 .rodata          @3716 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3716 = 0.5f;
COMPILER_STRIP_GATE(0x80BE7464, &lit_3716);
#pragma pop

/* 80BE7468-80BE746C 000030 0004+00 0/1 0/0 0/0 .rodata          @3717 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3717 = 1024.0f;
COMPILER_STRIP_GATE(0x80BE7468, &lit_3717);
#pragma pop

/* 80BE746C-80BE7470 000034 0004+00 0/1 0/0 0/0 .rodata          @3718 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3718 = 3072.0f;
COMPILER_STRIP_GATE(0x80BE746C, &lit_3718);
#pragma pop

/* 80BE7470-80BE7478 000038 0008+00 0/2 0/0 0/0 .rodata          @3720 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3720[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BE7470, &lit_3720);
#pragma pop

/* 80BE74D8-80BE74F8 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjFchain_Method */
static actor_method_class l_daObjFchain_Method = {
    (process_method_func)daObjFchain_Create__FP10fopAc_ac_c,
    (process_method_func)daObjFchain_Delete__FP13daObjFchain_c,
    (process_method_func)daObjFchain_Execute__FP13daObjFchain_c,
    0,
    (process_method_func)daObjFchain_Draw__FP13daObjFchain_c,
};

/* 80BE74F8-80BE7528 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Fchain */
extern actor_process_profile_definition g_profile_Obj_Fchain = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Fchain,        // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daObjFchain_c),  // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  246,                    // mPriority
  &l_daObjFchain_Method,  // sub_method
  0x00060000,             // mStatus
  fopAc_ENV_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80BE7528-80BE753C 000050 0014+00 3/3 0/0 0/0 .data            __vt__19daObjFchain_shape_c */
SECTION_DATA extern void* __vt__19daObjFchain_shape_c[5] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)entry__9J3DPacketFP13J3DDrawBuffer,
    (void*)draw__19daObjFchain_shape_cFv,
    (void*)__dt__19daObjFchain_shape_cFv,
};

/* 80BE6074-80BE6328 0000F4 02B4+00 1/1 0/0 0/0 .text            create__13daObjFchain_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjFchain_c::create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_fchain/d_a_obj_fchain/create__13daObjFchain_cFv.s"
}
#pragma pop

/* 80BE6328-80BE6364 0003A8 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm csXyz::~csXyz() {
extern "C" asm void __dt__5csXyzFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_fchain/d_a_obj_fchain/__dt__5csXyzFv.s"
}
#pragma pop

/* 80BE6364-80BE6368 0003E4 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" asm void __ct__5csXyzFv() {
    /* empty function */
}

/* 80BE6368-80BE63A4 0003E8 003C+00 2/2 0/0 0/0 .text            __dt__4cXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cXyz::~cXyz() {
extern "C" asm void __dt__4cXyzFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_fchain/d_a_obj_fchain/__dt__4cXyzFv.s"
}
#pragma pop

/* 80BE63A4-80BE63A8 000424 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" asm void __ct__4cXyzFv() {
    /* empty function */
}

/* 80BE63A8-80BE63C8 000428 0020+00 1/0 0/0 0/0 .text            daObjFchain_Create__FP10fopAc_ac_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjFchain_Create(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_fchain/d_a_obj_fchain/daObjFchain_Create__FP10fopAc_ac_c.s"
}
#pragma pop

/* 80BE63C8-80BE64B8 000448 00F0+00 1/1 0/0 0/0 .text            __dt__13daObjFchain_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daObjFchain_c::~daObjFchain_c() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_fchain/d_a_obj_fchain/__dt__13daObjFchain_cFv.s"
}
#pragma pop

/* 80BE64B8-80BE64E0 000538 0028+00 1/0 0/0 0/0 .text daObjFchain_Delete__FP13daObjFchain_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjFchain_Delete(daObjFchain_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_fchain/d_a_obj_fchain/daObjFchain_Delete__FP13daObjFchain_c.s"
}
#pragma pop

/* ############################################################################################## */
/* 80BE7478-80BE7480 000040 0004+04 0/3 0/0 0/0 .rodata          @3809 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3809[4 + 4 /* padding */] = {
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
COMPILER_STRIP_GATE(0x80BE7478, &lit_3809);
#pragma pop

/* 80BE7480-80BE7488 000048 0008+00 0/3 0/0 0/0 .rodata          @3810 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3810[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BE7480, &lit_3810);
#pragma pop

/* 80BE7488-80BE7490 000050 0008+00 0/3 0/0 0/0 .rodata          @3811 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3811[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BE7488, &lit_3811);
#pragma pop

/* 80BE7490-80BE7498 000058 0008+00 0/3 0/0 0/0 .rodata          @3812 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3812[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BE7490, &lit_3812);
#pragma pop

/* 80BE7498-80BE749C 000060 0004+00 0/1 0/0 0/0 .rodata          @3813 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3813 = 5.0f;
COMPILER_STRIP_GATE(0x80BE7498, &lit_3813);
#pragma pop

/* 80BE749C-80BE74A0 000064 0004+00 0/1 0/0 0/0 .rodata          @3814 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3814 = 20.0f;
COMPILER_STRIP_GATE(0x80BE749C, &lit_3814);
#pragma pop

/* 80BE64E0-80BE66B4 000560 01D4+00 1/1 0/0 0/0 .text
 * checkPlayerFoot__13daObjFchain_cFPC4cXyzPC4cXyzP4cXyz        */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjFchain_c::checkPlayerFoot(cXyz const* param_0, cXyz const* param_1, cXyz* param_2) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_fchain/d_a_obj_fchain/checkPlayerFoot__13daObjFchain_cFPC4cXyzPC4cXyzP4cXyz.s"
}
#pragma pop

/* ############################################################################################## */
/* 80BE74A0-80BE74A4 000068 0004+00 0/1 0/0 0/0 .rodata          @3857 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3857 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80BE74A0, &lit_3857);
#pragma pop

/* 80BE66B4-80BE6868 000734 01B4+00 1/1 0/0 0/0 .text setGroundVec__13daObjFchain_cFP4cXyzf */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjFchain_c::setGroundVec(cXyz* param_0, f32 param_1) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_fchain/d_a_obj_fchain/setGroundVec__13daObjFchain_cFP4cXyzf.s"
}
#pragma pop

/* ############################################################################################## */
/* 80BE74A4-80BE74B0 00006C 000C+00 0/1 0/0 0/0 .rodata          wolfChainBaseOffset$3862 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const wolfChainBaseOffset[12] = {
    0x41, 0xB0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0x40, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BE74A4, &wolfChainBaseOffset);
#pragma pop

/* 80BE74B0-80BE74B4 000078 0004+00 0/1 0/0 0/0 .rodata          @4159 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4159 = -1.5f;
COMPILER_STRIP_GATE(0x80BE74B0, &lit_4159);
#pragma pop

/* 80BE74B4-80BE74B8 00007C 0004+00 0/1 0/0 0/0 .rodata          @4160 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4160 = 9.0f;
COMPILER_STRIP_GATE(0x80BE74B4, &lit_4160);
#pragma pop

/* 80BE74B8-80BE74BC 000080 0004+00 0/1 0/0 0/0 .rodata          @4161 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4161 = 198.0f;
COMPILER_STRIP_GATE(0x80BE74B8, &lit_4161);
#pragma pop

/* 80BE74BC-80BE74C0 000084 0004+00 0/1 0/0 0/0 .rodata          @4162 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4162 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80BE74BC, &lit_4162);
#pragma pop

/* 80BE74C0-80BE74C4 000088 0004+00 0/1 0/0 0/0 .rodata          @4163 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4163 = 3.5f;
COMPILER_STRIP_GATE(0x80BE74C0, &lit_4163);
#pragma pop

/* 80BE74C4-80BE74C8 00008C 0004+00 0/1 0/0 0/0 .rodata          @4164 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4164 = 1536.0f;
COMPILER_STRIP_GATE(0x80BE74C4, &lit_4164);
#pragma pop

/* 80BE74C8-80BE74CC 000090 0004+00 0/1 0/0 0/0 .rodata          @4165 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4165 = 2.0f;
COMPILER_STRIP_GATE(0x80BE74C8, &lit_4165);
#pragma pop

/* 80BE74CC-80BE74CC 000094 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80BE74CC = "demo06_01";
#pragma pop

/* 80BE6868-80BE7174 0008E8 090C+00 1/1 0/0 0/0 .text            execute__13daObjFchain_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjFchain_c::execute() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_fchain/d_a_obj_fchain/execute__13daObjFchain_cFv.s"
}
#pragma pop

/* 80BE7174-80BE7194 0011F4 0020+00 1/0 0/0 0/0 .text daObjFchain_Execute__FP13daObjFchain_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjFchain_Execute(daObjFchain_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_fchain/d_a_obj_fchain/daObjFchain_Execute__FP13daObjFchain_c.s"
}
#pragma pop

/* 80BE7194-80BE7324 001214 0190+00 1/0 0/0 0/0 .text            draw__19daObjFchain_shape_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjFchain_shape_c::draw() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_fchain/d_a_obj_fchain/draw__19daObjFchain_shape_cFv.s"
}
#pragma pop

/* 80BE7324-80BE73B4 0013A4 0090+00 1/1 0/0 0/0 .text            draw__13daObjFchain_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjFchain_c::draw() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_fchain/d_a_obj_fchain/draw__13daObjFchain_cFv.s"
}
#pragma pop

/* 80BE73B4-80BE73D4 001434 0020+00 1/0 0/0 0/0 .text            daObjFchain_Draw__FP13daObjFchain_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjFchain_Draw(daObjFchain_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_fchain/d_a_obj_fchain/daObjFchain_Draw__FP13daObjFchain_c.s"
}
#pragma pop

/* 80BE73D4-80BE7430 001454 005C+00 1/0 0/0 0/0 .text            __dt__19daObjFchain_shape_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daObjFchain_shape_c::~daObjFchain_shape_c() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_fchain/d_a_obj_fchain/__dt__19daObjFchain_shape_cFv.s"
}
#pragma pop

/* 80BE74CC-80BE74CC 000094 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
