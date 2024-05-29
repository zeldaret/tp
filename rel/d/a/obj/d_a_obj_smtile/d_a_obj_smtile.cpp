/**
 * @file d_a_obj_smtile.cpp
 * 
*/

#include "rel/d/a/obj/d_a_obj_smtile/d_a_obj_smtile.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __dt__14daObj_SMTile_cFv();
extern "C" void __dt__4cXyzFv();
extern "C" void create__14daObj_SMTile_cFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void CreateHeap__14daObj_SMTile_cFv();
extern "C" void Delete__14daObj_SMTile_cFv();
extern "C" void Execute__14daObj_SMTile_cFv();
extern "C" void Draw__14daObj_SMTile_cFv();
extern "C" void createHeapCallBack__14daObj_SMTile_cFP10fopAc_ac_c();
extern "C" void setDstPos__14daObj_SMTile_cFv();
extern "C" void setPrtcls__14daObj_SMTile_cFii();
extern "C" void touchPrtcls__14daObj_SMTile_cFf();
extern "C" void setMtx__14daObj_SMTile_cFv();
extern "C" static void daObj_SMTile_Create__FPv();
extern "C" static void daObj_SMTile_Delete__FPv();
extern "C" static void daObj_SMTile_Execute__FPv();
extern "C" static void daObj_SMTile_Draw__FPv();
extern "C" static bool daObj_SMTile_IsDelete__FPv();
extern "C" void func_80CDE2A4(void* _this, int*);
extern "C" void __sinit_d_a_obj_smtile_cpp();
extern "C" void __dt__20daObj_SMTile_Param_cFv();
extern "C" u8 const m__20daObj_SMTile_Param_c[8];
extern "C" extern char const* const d_a_obj_smtile__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void _savegpr_20();
extern "C" void _savegpr_22();
extern "C" void _savegpr_26();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_20();
extern "C" void _restgpr_22();
extern "C" void _restgpr_26();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" extern u8 mStayNo__20dStage_roomControl_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80CDE388-80CDE388 00002C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CDE388 = "";
SECTION_DEAD static char const* const stringBase_80CDE389 = "A_SMTile";
#pragma pop

/* 80CDE394-80CDE39C 000000 0008+00 3/3 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[8] = {
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x01,
};

/* 80CDE39C-80CDE3A4 -00001 0008+00 3/3 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[2] = {
    (void*)&d_a_obj_smtile__stringBase0,
    (void*)(((char*)&d_a_obj_smtile__stringBase0) + 0x1),
};

/* 80CDE3A4-80CDE3F8 000010 0054+00 3/3 0/0 0/0 .data            l_tileMoveData */
SECTION_DATA static u8 l_tileMoveData[84] = {
    0x01, 0x03, 0x05, 0x01, 0x01, 0x02, 0x04, 0x01, 0x01, 0x01, 0x03, 0x01, 0x01, 0x02,
    0x04, 0x00, 0x00, 0x02, 0x03, 0x01, 0x01, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x01,
    0x00, 0xFF, 0x02, 0x01, 0x00, 0x01, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00,
    0x00, 0x04, 0x00, 0x00, 0x01, 0x03, 0x00, 0xFF, 0x02, 0x03, 0xFF, 0x02, 0x04, 0x00,
    0x00, 0x02, 0x03, 0x02, 0xFF, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x02, 0x00, 0xFF,
    0x02, 0x02, 0xFF, 0x03, 0x05, 0x02, 0xFF, 0x02, 0x04, 0x02, 0xFF, 0x01, 0x03, 0x02,
};

/* 80CDE3F8-80CDE418 -00001 0020+00 1/0 0/0 0/0 .data            daObj_SMTile_MethodTable */
static actor_method_class daObj_SMTile_MethodTable = {
    (process_method_func)daObj_SMTile_Create__FPv,
    (process_method_func)daObj_SMTile_Delete__FPv,
    (process_method_func)daObj_SMTile_Execute__FPv,
    (process_method_func)daObj_SMTile_IsDelete__FPv,
    (process_method_func)daObj_SMTile_Draw__FPv,
};

/* 80CDE418-80CDE448 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_SMTILE */
extern actor_process_profile_definition g_profile_OBJ_SMTILE = {
  fpcLy_CURRENT_e,           // mLayerID
  7,                         // mListID
  fpcPi_CURRENT_e,           // mListPrio
  PROC_OBJ_SMTILE,           // mProcName
  &g_fpcLf_Method.mBase,     // sub_method
  sizeof(daObj_SMTile_c),    // mSize
  0,                         // mSizeOther
  0,                         // mParameters
  &g_fopAc_Method.base,      // sub_method
  89,                        // mPriority
  &daObj_SMTile_MethodTable, // sub_method
  0x00044000,                // mStatus
  fopAc_ACTOR_e,             // mActorType
  fopAc_CULLBOX_CUSTOM_e,    // cullType
};

/* 80CDE448-80CDE454 0000B4 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80CDE454-80CDE460 0000C0 000C+00 2/2 0/0 0/0 .data            __vt__14daObj_SMTile_c */
SECTION_DATA extern void* __vt__14daObj_SMTile_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14daObj_SMTile_cFv,
};

/* 80CDD2AC-80CDD3AC 0000EC 0100+00 1/0 0/0 0/0 .text            __dt__14daObj_SMTile_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daObj_SMTile_c::~daObj_SMTile_c() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_smtile/d_a_obj_smtile/__dt__14daObj_SMTile_cFv.s"
}
#pragma pop

/* 80CDD3AC-80CDD3E8 0001EC 003C+00 2/2 0/0 0/0 .text            __dt__4cXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cXyz::~cXyz() {
extern "C" asm void __dt__4cXyzFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_smtile/d_a_obj_smtile/__dt__4cXyzFv.s"
}
#pragma pop

/* 80CDD3E8-80CDD580 000228 0198+00 1/1 0/0 0/0 .text            create__14daObj_SMTile_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObj_SMTile_c::create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_smtile/d_a_obj_smtile/create__14daObj_SMTile_cFv.s"
}
#pragma pop

/* 80CDD580-80CDD584 0003C0 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" asm void __ct__4cXyzFv() {
    /* empty function */
}

/* 80CDD584-80CDD5CC 0003C4 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" asm void __dt__12J3DFrameCtrlFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_smtile/d_a_obj_smtile/__dt__12J3DFrameCtrlFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80CDE35C-80CDE364 000000 0008+00 4/4 0/0 0/0 .rodata          m__20daObj_SMTile_Param_c */
SECTION_RODATA u8 const daObj_SMTile_Param_c::m[8] = {
    0x44, 0x16, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CDE35C, &daObj_SMTile_Param_c::m);

/* 80CDE364-80CDE368 000008 0004+00 1/4 0/0 0/0 .rodata          @3892 */
SECTION_RODATA static u8 const lit_3892[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80CDE364, &lit_3892);

/* 80CDD5CC-80CDD6E8 00040C 011C+00 1/1 0/0 0/0 .text            CreateHeap__14daObj_SMTile_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObj_SMTile_c::CreateHeap() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_smtile/d_a_obj_smtile/CreateHeap__14daObj_SMTile_cFv.s"
}
#pragma pop

/* 80CDD6E8-80CDD71C 000528 0034+00 1/1 0/0 0/0 .text            Delete__14daObj_SMTile_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObj_SMTile_c::Delete() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_smtile/d_a_obj_smtile/Delete__14daObj_SMTile_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80CDE368-80CDE36C 00000C 0004+00 0/4 0/0 0/0 .rodata          @3978 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3978 = 1.0f;
COMPILER_STRIP_GATE(0x80CDE368, &lit_3978);
#pragma pop

/* 80CDE36C-80CDE370 000010 0004+00 0/3 0/0 0/0 .rodata          @3979 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3979 = -1.0f;
COMPILER_STRIP_GATE(0x80CDE36C, &lit_3979);
#pragma pop

/* 80CDE370-80CDE374 000014 0004+00 0/1 0/0 0/0 .rodata          @3980 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3980 = 40.0f;
COMPILER_STRIP_GATE(0x80CDE370, &lit_3980);
#pragma pop

/* 80CDE374-80CDE37C 000018 0008+00 0/3 0/0 0/0 .rodata          @3982 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3982[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CDE374, &lit_3982);
#pragma pop

/* 80CDD71C-80CDDA98 00055C 037C+00 2/2 0/0 0/0 .text            Execute__14daObj_SMTile_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObj_SMTile_c::Execute() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_smtile/d_a_obj_smtile/Execute__14daObj_SMTile_cFv.s"
}
#pragma pop

/* 80CDDA98-80CDDB28 0008D8 0090+00 1/1 0/0 0/0 .text            Draw__14daObj_SMTile_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObj_SMTile_c::Draw() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_smtile/d_a_obj_smtile/Draw__14daObj_SMTile_cFv.s"
}
#pragma pop

/* 80CDDB28-80CDDB48 000968 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__14daObj_SMTile_cFP10fopAc_ac_c           */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObj_SMTile_c::createHeapCallBack(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_smtile/d_a_obj_smtile/createHeapCallBack__14daObj_SMTile_cFP10fopAc_ac_c.s"
}
#pragma pop

/* 80CDDB48-80CDDD28 000988 01E0+00 1/1 0/0 0/0 .text            setDstPos__14daObj_SMTile_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObj_SMTile_c::setDstPos() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_smtile/d_a_obj_smtile/setDstPos__14daObj_SMTile_cFv.s"
}
#pragma pop

/* 80CDDD28-80CDDEFC 000B68 01D4+00 1/1 0/0 0/0 .text            setPrtcls__14daObj_SMTile_cFii */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObj_SMTile_c::setPrtcls(int param_0, int param_1) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_smtile/d_a_obj_smtile/setPrtcls__14daObj_SMTile_cFii.s"
}
#pragma pop

/* ############################################################################################## */
/* 80CDE37C-80CDE384 000020 0008+00 0/1 0/0 0/0 .rodata          id$4105 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const id[8] = {
    0xFF, 0xFF, 0x86, 0xEC, 0x86, 0xED, 0x86, 0xEE,
};
COMPILER_STRIP_GATE(0x80CDE37C, &id);
#pragma pop

/* 80CDE384-80CDE388 000028 0004+00 0/1 0/0 0/0 .rodata          @4194 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4194 = 255.0f;
COMPILER_STRIP_GATE(0x80CDE384, &lit_4194);
#pragma pop

/* 80CDDEFC-80CDE1A8 000D3C 02AC+00 1/1 0/0 0/0 .text            touchPrtcls__14daObj_SMTile_cFf */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObj_SMTile_c::touchPrtcls(f32 param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_smtile/d_a_obj_smtile/touchPrtcls__14daObj_SMTile_cFf.s"
}
#pragma pop

/* 80CDE1A8-80CDE21C 000FE8 0074+00 1/1 0/0 0/0 .text            setMtx__14daObj_SMTile_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObj_SMTile_c::setMtx() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_smtile/d_a_obj_smtile/setMtx__14daObj_SMTile_cFv.s"
}
#pragma pop

/* 80CDE21C-80CDE23C 00105C 0020+00 1/0 0/0 0/0 .text            daObj_SMTile_Create__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObj_SMTile_Create(void* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_smtile/d_a_obj_smtile/daObj_SMTile_Create__FPv.s"
}
#pragma pop

/* 80CDE23C-80CDE25C 00107C 0020+00 1/0 0/0 0/0 .text            daObj_SMTile_Delete__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObj_SMTile_Delete(void* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_smtile/d_a_obj_smtile/daObj_SMTile_Delete__FPv.s"
}
#pragma pop

/* 80CDE25C-80CDE27C 00109C 0020+00 1/0 0/0 0/0 .text            daObj_SMTile_Execute__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObj_SMTile_Execute(void* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_smtile/d_a_obj_smtile/daObj_SMTile_Execute__FPv.s"
}
#pragma pop

/* 80CDE27C-80CDE29C 0010BC 0020+00 1/0 0/0 0/0 .text            daObj_SMTile_Draw__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObj_SMTile_Draw(void* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_smtile/d_a_obj_smtile/daObj_SMTile_Draw__FPv.s"
}
#pragma pop

/* 80CDE29C-80CDE2A4 0010DC 0008+00 1/0 0/0 0/0 .text            daObj_SMTile_IsDelete__FPv */
static bool daObj_SMTile_IsDelete(void* param_0) {
    return true;
}

/* 80CDE2A4-80CDE2C0 0010E4 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void func_80CDE2A4(void* _this, int* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_smtile/d_a_obj_smtile/func_80CDE2A4.s"
}
#pragma pop

/* ############################################################################################## */
/* 80CDE460-80CDE46C 0000CC 000C+00 2/2 0/0 0/0 .data            __vt__20daObj_SMTile_Param_c */
SECTION_DATA extern void* __vt__20daObj_SMTile_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__20daObj_SMTile_Param_cFv,
};

/* 80CDE478-80CDE484 000008 000C+00 1/1 0/0 0/0 .bss             @3805 */
static u8 lit_3805[12];

/* 80CDE484-80CDE488 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80CDE2C0-80CDE300 001100 0040+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_smtile_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_a_obj_smtile_cpp() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_smtile/d_a_obj_smtile/__sinit_d_a_obj_smtile_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80CDE2C0, __sinit_d_a_obj_smtile_cpp);
#pragma pop

/* 80CDE300-80CDE348 001140 0048+00 2/1 0/0 0/0 .text            __dt__20daObj_SMTile_Param_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daObj_SMTile_Param_c::~daObj_SMTile_Param_c() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_smtile/d_a_obj_smtile/__dt__20daObj_SMTile_Param_cFv.s"
}
#pragma pop

/* 80CDE388-80CDE388 00002C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
