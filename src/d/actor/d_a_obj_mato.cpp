/**
 * @file d_a_obj_mato.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_mato.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void setAction__11daObjMATO_cFM11daObjMATO_cFPCvPvi_vi();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daObjMATO_Create__FP10fopAc_ac_c();
extern "C" static void daObjMATO_Delete__FP11daObjMATO_c();
extern "C" void action__11daObjMATO_cFv();
extern "C" void hit_check__11daObjMATO_cFv();
extern "C" void start_wait__11daObjMATO_cFi();
extern "C" void wait__11daObjMATO_cFi();
extern "C" void disappear__11daObjMATO_cFi();
extern "C" void getRupee__11daObjMATO_cFi();
extern "C" void execute__11daObjMATO_cFv();
extern "C" void _delete__11daObjMATO_cFv();
extern "C" void setBaseMtx__11daObjMATO_cFv();
extern "C" static void daObjMATO_Draw__FP11daObjMATO_c();
extern "C" static void daObjMATO_Execute__FP11daObjMATO_c();
extern "C" void mato_init__11daObjMATO_cFv();
extern "C" void create__11daObjMATO_cFv();
extern "C" void __dt__10MatoData_sFv();
extern "C" void __ct__10MatoData_sFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" static bool daObjMATO_IsDelete__FP11daObjMATO_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" extern char const* const d_a_obj_mato__stringBase0;

//
// External References:
//

extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_createItemForSimpleDemo__FPC4cXyziiPC5csXyzPC4cXyzff();
extern "C" void addSimpleModel__14dComIfG_play_cFP12J3DModelDataiUc();
extern "C" void removeSimpleModel__14dComIfG_play_cFP12J3DModelDatai();
extern "C" void entrySimpleModel__14dComIfG_play_cFP8J3DModeli();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void dPath_GetRoomPath__Fii();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkCoHit__12dCcD_GObjInfFv();
extern "C" void GetCoHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void GetAc__8cCcD_ObjFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_chaseF__FPfff();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void __construct_array();
extern "C" void __ptmf_test();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_22();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _restgpr_22();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* 80C91B58-80C91C1C 000078 00C4+00 5/5 0/0 0/0 .text
 * setAction__11daObjMATO_cFM11daObjMATO_cFPCvPvi_vi            */
void daObjMATO_c::setAction(void (daObjMATO_c::*param_0)(int), int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C92C50-80C92C6C 000000 001C+00 6/6 0/0 0/0 .rodata          l_B_ling_bmd_table */
SECTION_RODATA static u8 const l_B_ling_bmd_table[28] = {
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,
    0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04,
};
COMPILER_STRIP_GATE(0x80C92C50, &l_B_ling_bmd_table);

/* 80C92CD4-80C92CD4 000084 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C92CD4 = "B_ling";
#pragma pop

/* 80C91C1C-80C91D04 00013C 00E8+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C91D04-80C91D24 000224 0020+00 1/0 0/0 0/0 .text            daObjMATO_Create__FP10fopAc_ac_c */
static void daObjMATO_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C91D24-80C91D48 000244 0024+00 1/0 0/0 0/0 .text            daObjMATO_Delete__FP11daObjMATO_c
 */
static void daObjMATO_Delete(daObjMATO_c* param_0) {
    // NONMATCHING
}

/* 80C91D48-80C91DE4 000268 009C+00 1/1 0/0 0/0 .text            action__11daObjMATO_cFv */
void daObjMATO_c::action() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C92CDC-80C92D20 000000 0044+00 1/1 0/0 0/0 .data cc_cyl_src__26@unnamed@d_a_obj_mato_cpp@ */
SECTION_DATA static u8 data_80C92CDC[68] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x19,
    0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x43, 0x16, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00,
};

/* 80C92D20-80C92D2C -00001 000C+00 1/1 0/0 0/0 .data            @3843 */
SECTION_DATA static void* lit_3843[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)disappear__11daObjMATO_cFi,
};

/* 80C91DE4-80C91ECC 000304 00E8+00 1/1 0/0 0/0 .text            hit_check__11daObjMATO_cFv */
void daObjMATO_c::hit_check() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C92C6C-80C92C70 00001C 0004+00 2/4 0/0 0/0 .rodata          @3878 */
SECTION_RODATA static u8 const lit_3878[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C92C6C, &lit_3878);

/* 80C92D2C-80C92D38 -00001 000C+00 1/1 0/0 0/0 .data            @3867 */
SECTION_DATA static void* lit_3867[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daObjMATO_cFi,
};

/* 80C91ECC-80C91F74 0003EC 00A8+00 2/0 0/0 0/0 .text            start_wait__11daObjMATO_cFi */
void daObjMATO_c::start_wait(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C92C70-80C92C74 000020 0004+00 1/2 0/0 0/0 .rodata          @3900 */
SECTION_RODATA static f32 const lit_3900 = 1.0f;
COMPILER_STRIP_GATE(0x80C92C70, &lit_3900);

/* 80C92C74-80C92C78 000024 0004+00 1/1 0/0 0/0 .rodata          @3901 */
SECTION_RODATA static f32 const lit_3901 = 0.25f;
COMPILER_STRIP_GATE(0x80C92C74, &lit_3901);

/* 80C92D38-80C92D44 -00001 000C+00 1/1 0/0 0/0 .data            @3891 */
SECTION_DATA static void* lit_3891[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)disappear__11daObjMATO_cFi,
};

/* 80C91F74-80C92044 000494 00D0+00 1/0 0/0 0/0 .text            wait__11daObjMATO_cFi */
void daObjMATO_c::wait(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C92C78-80C92C94 000028 001C+00 0/1 0/0 0/0 .rodata          l_rupee_itemno_table */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_rupee_itemno_table[28] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00,
    0x00, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x07,
};
COMPILER_STRIP_GATE(0x80C92C78, &l_rupee_itemno_table);
#pragma pop

/* 80C92C94-80C92C9C 000044 0007+01 0/1 0/0 0/0 .rodata          l_rupee_count_table */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_rupee_count_table[7 + 1 /* padding */] = {
    0x01,
    0x05,
    0x0A,
    0x14,
    0x32,
    0x64,
    0xC8,
    /* padding */
    0x00,
};
COMPILER_STRIP_GATE(0x80C92C94, &l_rupee_count_table);
#pragma pop

/* 80C92C9C-80C92CB8 00004C 001C+00 0/1 0/0 0/0 .rodata          l_rupee_getse */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_rupee_getse[28] = {
    0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x00, 0x71, 0x00, 0x00, 0x00, 0x71, 0x00, 0x00,
    0x00, 0x72, 0x00, 0x00, 0x00, 0x72, 0x00, 0x00, 0x00, 0x72, 0x00, 0x00, 0x00, 0x72,
};
COMPILER_STRIP_GATE(0x80C92C9C, &l_rupee_getse);
#pragma pop

/* 80C92CB8-80C92CBC 000068 0004+00 0/1 0/0 0/0 .rodata          @3934 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3934 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C92CB8, &lit_3934);
#pragma pop

/* 80C92CBC-80C92CC0 00006C 0004+00 0/1 0/0 0/0 .rodata          @3935 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3935 = 1.5f;
COMPILER_STRIP_GATE(0x80C92CBC, &lit_3935);
#pragma pop

/* 80C92CC0-80C92CC4 000070 0004+00 0/1 0/0 0/0 .rodata          @3936 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3936 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80C92CC0, &lit_3936);
#pragma pop

/* 80C92D44-80C92D50 -00001 000C+00 1/1 0/0 0/0 .data            @3924 */
SECTION_DATA static void* lit_3924[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)start_wait__11daObjMATO_cFi,
};

/* 80C92044-80C921A8 000564 0164+00 2/0 0/0 0/0 .text            disappear__11daObjMATO_cFi */
void daObjMATO_c::disappear(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C92CC4-80C92CC8 000074 0004+00 0/1 0/0 0/0 .rodata          @3959 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3959 = -1.0f;
COMPILER_STRIP_GATE(0x80C92CC4, &lit_3959);
#pragma pop

/* 80C921A8-80C922AC 0006C8 0104+00 1/1 0/0 0/0 .text            getRupee__11daObjMATO_cFi */
void daObjMATO_c::getRupee(int param_0) {
    // NONMATCHING
}

/* 80C922AC-80C92380 0007CC 00D4+00 1/1 0/0 0/0 .text            execute__11daObjMATO_cFv */
void daObjMATO_c::execute() {
    // NONMATCHING
}

/* 80C92380-80C9243C 0008A0 00BC+00 1/1 0/0 0/0 .text            _delete__11daObjMATO_cFv */
void daObjMATO_c::_delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C92CC8-80C92CCC 000078 0004+00 0/1 0/0 0/0 .rodata          @4039 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4039 = 420.0f;
COMPILER_STRIP_GATE(0x80C92CC8, &lit_4039);
#pragma pop

/* 80C92CCC-80C92CD0 00007C 0004+00 0/1 0/0 0/0 .rodata          @4040 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4040 = 190.0f;
COMPILER_STRIP_GATE(0x80C92CCC, &lit_4040);
#pragma pop

/* 80C92CD0-80C92CD4 000080 0004+00 0/1 0/0 0/0 .rodata          @4041 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4041 = 840.0f;
COMPILER_STRIP_GATE(0x80C92CD0, &lit_4041);
#pragma pop

/* 80C9243C-80C92584 00095C 0148+00 1/1 0/0 0/0 .text            setBaseMtx__11daObjMATO_cFv */
void daObjMATO_c::setBaseMtx() {
    // NONMATCHING
}

/* 80C92584-80C92630 000AA4 00AC+00 1/0 0/0 0/0 .text            daObjMATO_Draw__FP11daObjMATO_c */
static void daObjMATO_Draw(daObjMATO_c* param_0) {
    // NONMATCHING
}

/* 80C92630-80C92650 000B50 0020+00 2/1 0/0 0/0 .text            daObjMATO_Execute__FP11daObjMATO_c
 */
static void daObjMATO_Execute(daObjMATO_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C92D50-80C92D5C -00001 000C+00 1/1 0/0 0/0 .data            @4104 */
SECTION_DATA static void* lit_4104[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)start_wait__11daObjMATO_cFi,
};

/* 80C92650-80C927AC 000B70 015C+00 1/1 0/0 0/0 .text            mato_init__11daObjMATO_cFv */
void daObjMATO_c::mato_init() {
    // NONMATCHING
}

/* 80C927AC-80C92924 000CCC 0178+00 1/1 0/0 0/0 .text            create__11daObjMATO_cFv */
void daObjMATO_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C92D5C-80C92D7C -00001 0020+00 1/0 0/0 0/0 .data            l_daObjMATO_Method */
static actor_method_class l_daObjMATO_Method = {
    (process_method_func)daObjMATO_Create__FP10fopAc_ac_c,
    (process_method_func)daObjMATO_Delete__FP11daObjMATO_c,
    (process_method_func)daObjMATO_Execute__FP11daObjMATO_c,
    (process_method_func)daObjMATO_IsDelete__FP11daObjMATO_c,
    (process_method_func)daObjMATO_Draw__FP11daObjMATO_c,
};

/* 80C92D7C-80C92DAC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Mato */
extern actor_process_profile_definition g_profile_Obj_Mato = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Mato,          // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjMATO_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  441,                    // mPriority
  &l_daObjMATO_Method,    // sub_method
  0x00040000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80C92DAC-80C92DB8 0000D0 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80C92DB8-80C92DC4 0000DC 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80C92DC4-80C92DD0 0000E8 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80C92DD0-80C92DDC 0000F4 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80C92924-80C92A50 000E44 012C+00 1/1 0/0 0/0 .text            __dt__10MatoData_sFv */
MatoData_s::~MatoData_s() {
    // NONMATCHING
}

/* 80C92A50-80C92B0C 000F70 00BC+00 1/1 0/0 0/0 .text            __ct__10MatoData_sFv */
MatoData_s::MatoData_s() {
    // NONMATCHING
}

/* 80C92B0C-80C92B54 00102C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80C92B54-80C92B9C 001074 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80C92B9C-80C92BF8 0010BC 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80C92BF8-80C92C00 001118 0008+00 1/0 0/0 0/0 .text            daObjMATO_IsDelete__FP11daObjMATO_c
 */
static bool daObjMATO_IsDelete(daObjMATO_c* param_0) {
    return true;
}

/* 80C92C00-80C92C48 001120 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80C92CD4-80C92CD4 000084 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
