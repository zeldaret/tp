/**
 * @file d_a_obj_sekidoor.cpp
 * 
*/

#include "rel/d/a/obj/d_a_obj_sekidoor/d_a_obj_sekidoor.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void create__16daObj_SekiDoor_cFv();
extern "C" void CreateHeap__16daObj_SekiDoor_cFv();
extern "C" void Create__16daObj_SekiDoor_cFv();
extern "C" void Delete__16daObj_SekiDoor_cFv();
extern "C" void Execute__16daObj_SekiDoor_cFPPA3_A4_f();
extern "C" static void dComIfGp_event_runCheck__Fv();
extern "C" void Draw__16daObj_SekiDoor_cFv();
extern "C" void evtSkip__16daObj_SekiDoor_cFv();
extern "C" void setPrtcls__16daObj_SekiDoor_cFv();
extern "C" void initBaseMtx__16daObj_SekiDoor_cFv();
extern "C" void setBaseMtx__16daObj_SekiDoor_cFv();
extern "C" static void daObj_SekiDoor_Create__FPv();
extern "C" static void daObj_SekiDoor_Delete__FPv();
extern "C" static void daObj_SekiDoor_Execute__FPv();
extern "C" static void daObj_SekiDoor_Draw__FPv();
extern "C" static bool daObj_SekiDoor_IsDelete__FPv();
extern "C" void __sinit_d_a_obj_sekidoor_cpp();
extern "C" void __dt__22daObj_SekiDoor_Param_cFv();
extern "C" u8 const m__22daObj_SekiDoor_Param_c[1 + 3 /* padding */];
extern "C" extern char const* const d_a_obj_sekidoor__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void StopQuake__12dVibration_cFi();
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
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
extern "C" void cLib_chaseS__FPsss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void _savegpr_24();
extern "C" void _restgpr_24();
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80CCDA30-80CCDA30 000028 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CCDA30 = "";
SECTION_DEAD static char const* const stringBase_80CCDA31 = "SekiDoor";
#pragma pop

/* 80CCDA3C-80CCDA48 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80CCDA48-80CCDA5C 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80CCDA5C-80CCDA64 000020 0008+00 2/3 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[8] = {
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x01,
};

/* 80CCDA64-80CCDA6C 000028 0008+00 0/1 0/0 0/0 .data            l_dzbData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_dzbData[8] = {
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x01,
};
#pragma pop

/* 80CCDA6C-80CCDA74 -00001 0008+00 2/3 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[2] = {
    (void*)&d_a_obj_sekidoor__stringBase0,
    (void*)(((char*)&d_a_obj_sekidoor__stringBase0) + 0x1),
};

/* 80CCDA74-80CCDA94 -00001 0020+00 1/0 0/0 0/0 .data            daObj_SekiDoor_MethodTable */
static actor_method_class daObj_SekiDoor_MethodTable = {
    (process_method_func)daObj_SekiDoor_Create__FPv,
    (process_method_func)daObj_SekiDoor_Delete__FPv,
    (process_method_func)daObj_SekiDoor_Execute__FPv,
    (process_method_func)daObj_SekiDoor_IsDelete__FPv,
    (process_method_func)daObj_SekiDoor_Draw__FPv,
};

/* 80CCDA94-80CCDAC4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_SEKIDOOR */
extern actor_process_profile_definition g_profile_OBJ_SEKIDOOR = {
  fpcLy_CURRENT_e,             // mLayerID
  7,                           // mListID
  fpcPi_CURRENT_e,             // mListPrio
  PROC_OBJ_SEKIDOOR,           // mProcName
  &g_fpcLf_Method.mBase,       // sub_method
  sizeof(daObj_SekiDoor_c),    // mSize
  0,                           // mSizeOther
  0,                           // mParameters
  &g_fopAc_Method.base,        // sub_method
  87,                          // mPriority
  &daObj_SekiDoor_MethodTable, // sub_method
  0x00044000,                  // mStatus
  fopAc_ACTOR_e,               // mActorType
  fopAc_CULLBOX_CUSTOM_e,      // cullType
};

/* 80CCDAC4-80CCDAEC 000088 0028+00 1/1 0/0 0/0 .data            __vt__16daObj_SekiDoor_c */
SECTION_DATA extern void* __vt__16daObj_SekiDoor_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__16daObj_SekiDoor_cFv,
    (void*)Create__16daObj_SekiDoor_cFv,
    (void*)Execute__16daObj_SekiDoor_cFPPA3_A4_f,
    (void*)Draw__16daObj_SekiDoor_cFv,
    (void*)Delete__16daObj_SekiDoor_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80CCD02C-80CCD154 0000EC 0128+00 1/1 0/0 0/0 .text            create__16daObj_SekiDoor_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObj_SekiDoor_c::create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sekidoor/d_a_obj_sekidoor/create__16daObj_SekiDoor_cFv.s"
}
#pragma pop

/* 80CCD154-80CCD1F0 000214 009C+00 1/0 0/0 0/0 .text            CreateHeap__16daObj_SekiDoor_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObj_SekiDoor_c::CreateHeap() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sekidoor/d_a_obj_sekidoor/CreateHeap__16daObj_SekiDoor_cFv.s"
}
#pragma pop

/* 80CCD1F0-80CCD23C 0002B0 004C+00 1/0 0/0 0/0 .text            Create__16daObj_SekiDoor_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObj_SekiDoor_c::Create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sekidoor/d_a_obj_sekidoor/func_80CCD1F0.s"
}
#pragma pop

/* 80CCD23C-80CCD290 0002FC 0054+00 1/0 0/0 0/0 .text            Delete__16daObj_SekiDoor_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObj_SekiDoor_c::Delete() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sekidoor/d_a_obj_sekidoor/Delete__16daObj_SekiDoor_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80CCDA08-80CCDA0C 000000 0001+03 2/2 0/0 0/0 .rodata          m__22daObj_SekiDoor_Param_c */
SECTION_RODATA u8 const daObj_SekiDoor_Param_c::m[1 + 3 /* padding */] = {
    0x00,
    /* padding */
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80CCDA08, &daObj_SekiDoor_Param_c::m);

/* 80CCDA0C-80CCDA10 000004 0004+00 1/3 0/0 0/0 .rodata          @3956 */
SECTION_RODATA static f32 const lit_3956 = 460.0f;
COMPILER_STRIP_GATE(0x80CCDA0C, &lit_3956);

/* 80CCDA10-80CCDA14 000008 0004+00 0/1 0/0 0/0 .rodata          @3957 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3957 = 4.0f;
COMPILER_STRIP_GATE(0x80CCDA10, &lit_3957);
#pragma pop

/* 80CCDA14-80CCDA18 00000C 0004+00 0/2 0/0 0/0 .rodata          @3958 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3958 = 1.0f;
COMPILER_STRIP_GATE(0x80CCDA14, &lit_3958);
#pragma pop

/* 80CCDA18-80CCDA1C 000010 0004+00 0/1 0/0 0/0 .rodata          @3959 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3959 = -1.0f;
COMPILER_STRIP_GATE(0x80CCDA18, &lit_3959);
#pragma pop

/* 80CCDA1C-80CCDA20 000014 0004+00 0/1 0/0 0/0 .rodata          @3960 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3960[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80CCDA1C, &lit_3960);
#pragma pop

/* 80CCDA20-80CCDA28 000018 0008+00 0/1 0/0 0/0 .rodata          @3962 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3962[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CCDA20, &lit_3962);
#pragma pop

/* 80CCD290-80CCD51C 000350 028C+00 1/0 0/0 0/0 .text Execute__16daObj_SekiDoor_cFPPA3_A4_f */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObj_SekiDoor_c::Execute(f32 (**param_0)[3][4]) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sekidoor/d_a_obj_sekidoor/Execute__16daObj_SekiDoor_cFPPA3_A4_f.s"
}
#pragma pop

/* 80CCD51C-80CCD538 0005DC 001C+00 1/0 0/0 0/0 .text            dComIfGp_event_runCheck__Fv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void dComIfGp_event_runCheck() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sekidoor/d_a_obj_sekidoor/dComIfGp_event_runCheck__Fv.s"
}
#pragma pop

/* 80CCD538-80CCD5DC 0005F8 00A4+00 1/0 0/0 0/0 .text            Draw__16daObj_SekiDoor_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObj_SekiDoor_c::Draw() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sekidoor/d_a_obj_sekidoor/Draw__16daObj_SekiDoor_cFv.s"
}
#pragma pop

/* 80CCD5DC-80CCD64C 00069C 0070+00 0/0 0/0 1/1 .text            evtSkip__16daObj_SekiDoor_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObj_SekiDoor_c::evtSkip() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sekidoor/d_a_obj_sekidoor/evtSkip__16daObj_SekiDoor_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80CCDA28-80CCDA30 000020 0008+00 0/1 0/0 0/0 .rodata          id$4006 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const id[8] = {
    0x8B, 0x85, 0x8B, 0x86, 0x8B, 0x87, 0x8B, 0x88,
};
COMPILER_STRIP_GATE(0x80CCDA28, &id);
#pragma pop

/* 80CCD64C-80CCD810 00070C 01C4+00 1/1 0/0 0/0 .text            setPrtcls__16daObj_SekiDoor_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObj_SekiDoor_c::setPrtcls() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sekidoor/d_a_obj_sekidoor/setPrtcls__16daObj_SekiDoor_cFv.s"
}
#pragma pop

/* 80CCD810-80CCD84C 0008D0 003C+00 1/1 0/0 0/0 .text            initBaseMtx__16daObj_SekiDoor_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObj_SekiDoor_c::initBaseMtx() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sekidoor/d_a_obj_sekidoor/initBaseMtx__16daObj_SekiDoor_cFv.s"
}
#pragma pop

/* 80CCD84C-80CCD8D8 00090C 008C+00 2/2 0/0 0/0 .text            setBaseMtx__16daObj_SekiDoor_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObj_SekiDoor_c::setBaseMtx() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sekidoor/d_a_obj_sekidoor/setBaseMtx__16daObj_SekiDoor_cFv.s"
}
#pragma pop

/* 80CCD8D8-80CCD8F8 000998 0020+00 1/0 0/0 0/0 .text            daObj_SekiDoor_Create__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObj_SekiDoor_Create(void* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sekidoor/d_a_obj_sekidoor/daObj_SekiDoor_Create__FPv.s"
}
#pragma pop

/* 80CCD8F8-80CCD918 0009B8 0020+00 1/0 0/0 0/0 .text            daObj_SekiDoor_Delete__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObj_SekiDoor_Delete(void* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sekidoor/d_a_obj_sekidoor/daObj_SekiDoor_Delete__FPv.s"
}
#pragma pop

/* 80CCD918-80CCD938 0009D8 0020+00 1/0 0/0 0/0 .text            daObj_SekiDoor_Execute__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObj_SekiDoor_Execute(void* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sekidoor/d_a_obj_sekidoor/daObj_SekiDoor_Execute__FPv.s"
}
#pragma pop

/* 80CCD938-80CCD964 0009F8 002C+00 1/0 0/0 0/0 .text            daObj_SekiDoor_Draw__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObj_SekiDoor_Draw(void* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sekidoor/d_a_obj_sekidoor/daObj_SekiDoor_Draw__FPv.s"
}
#pragma pop

/* 80CCD964-80CCD96C 000A24 0008+00 1/0 0/0 0/0 .text            daObj_SekiDoor_IsDelete__FPv */
static bool daObj_SekiDoor_IsDelete(void* param_0) {
    return true;
}

/* ############################################################################################## */
/* 80CCDAEC-80CCDAF8 0000B0 000C+00 2/2 0/0 0/0 .data            __vt__22daObj_SekiDoor_Param_c */
SECTION_DATA extern void* __vt__22daObj_SekiDoor_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daObj_SekiDoor_Param_cFv,
};

/* 80CCDB00-80CCDB0C 000008 000C+00 1/1 0/0 0/0 .bss             @3803 */
static u8 lit_3803[12];

/* 80CCDB0C-80CCDB10 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80CCD96C-80CCD9AC 000A2C 0040+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_sekidoor_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_a_obj_sekidoor_cpp() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sekidoor/d_a_obj_sekidoor/__sinit_d_a_obj_sekidoor_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80CCD96C, __sinit_d_a_obj_sekidoor_cpp);
#pragma pop

/* 80CCD9AC-80CCD9F4 000A6C 0048+00 2/1 0/0 0/0 .text            __dt__22daObj_SekiDoor_Param_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daObj_SekiDoor_Param_c::~daObj_SekiDoor_Param_c() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_sekidoor/d_a_obj_sekidoor/__dt__22daObj_SekiDoor_Param_cFv.s"
}
#pragma pop

/* 80CCDA30-80CCDA30 000028 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
