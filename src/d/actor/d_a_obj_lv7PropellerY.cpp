/**
 * @file d_a_obj_lv7PropellerY.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_lv7PropellerY.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__13daPropY_HIO_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" void setBaseMtx__9daPropY_cFv();
extern "C" void CreateHeap__9daPropY_cFv();
extern "C" void create__9daPropY_cFv();
extern "C" void Execute__9daPropY_cFPPA3_A4_f();
extern "C" void procMain__9daPropY_cFv();
extern "C" void init_modeMoveWait__9daPropY_cFv();
extern "C" void modeMoveWait__9daPropY_cFv();
extern "C" void init_modeMove__9daPropY_cFv();
extern "C" void modeMove__9daPropY_cFv();
extern "C" void init_modeWait__9daPropY_cFv();
extern "C" void modeWait__9daPropY_cFv();
extern "C" void init_modeMove2__9daPropY_cFv();
extern "C" void modeMove2__9daPropY_cFv();
extern "C" void init_modeStop__9daPropY_cFv();
extern "C" void modeStop__9daPropY_cFv();
extern "C" void Draw__9daPropY_cFv();
extern "C" void Delete__9daPropY_cFv();
extern "C" static void daPropY_Draw__FP9daPropY_c();
extern "C" static void daPropY_Execute__FP9daPropY_c();
extern "C" static void daPropY_Delete__FP9daPropY_c();
extern "C" static void daPropY_Create__FP10fopAc_ac_c();
extern "C" void __dt__13daPropY_HIO_cFv();
extern "C" void __sinit_d_a_obj_lv7PropellerY_cpp();
extern "C" extern char const* const d_a_obj_lv7PropellerY__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool Create__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void __ptmf_scall();
extern "C" void __cvt_fp2unsigned();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80C86130-80C86134 000000 0004+00 7/7 0/0 0/0 .rodata          @3650 */
SECTION_RODATA static u8 const lit_3650[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C86130, &lit_3650);

/* 80C86134-80C86138 000004 0004+00 0/1 0/0 0/0 .rodata          @3651 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3651 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C86134, &lit_3651);
#pragma pop

/* 80C86138-80C8613C 000008 0004+00 0/1 0/0 0/0 .rodata          @3652 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_3652 = 0x3B449BA6;
COMPILER_STRIP_GATE(0x80C86138, &lit_3652);
#pragma pop

/* 80C8613C-80C86140 00000C 0004+00 0/4 0/0 0/0 .rodata          @3653 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3653 = 1.0f;
COMPILER_STRIP_GATE(0x80C8613C, &lit_3653);
#pragma pop

/* 80C86140-80C86144 000010 0004+00 0/1 0/0 0/0 .rodata          @3654 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3654 = 20.0f;
COMPILER_STRIP_GATE(0x80C86140, &lit_3654);
#pragma pop

/* 80C86160-80C86160 000030 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C86160 = "stickwl00";
SECTION_DEAD static char const* const stringBase_80C8616A = "stickwl01";
#pragma pop

/* 80C86194-80C8619C -00001 0008+00 3/3 0/0 0/0 .data            l_type */
SECTION_DATA static void* l_type[2] = {
    (void*)&d_a_obj_lv7PropellerY__stringBase0,
    (void*)(((char*)&d_a_obj_lv7PropellerY__stringBase0) + 0xA),
};

/* 80C8619C-80C861A4 000028 0008+00 1/1 0/0 0/0 .data            l_bmdIdx */
SECTION_DATA static u8 l_bmdIdx[8] = {
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04,
};

/* 80C861A4-80C861AC 000030 0008+00 1/1 0/0 0/0 .data            l_dzbIdx */
SECTION_DATA static u8 l_dzbIdx[8] = {
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x07,
};

/* 80C861AC-80C861B8 -00001 000C+00 0/1 0/0 0/0 .data            @3788 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3788[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeMoveWait__9daPropY_cFv,
};
#pragma pop

/* 80C861B8-80C861C4 -00001 000C+00 0/1 0/0 0/0 .data            @3789 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3789[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeMove__9daPropY_cFv,
};
#pragma pop

/* 80C861C4-80C861D0 -00001 000C+00 0/1 0/0 0/0 .data            @3790 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3790[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWait__9daPropY_cFv,
};
#pragma pop

/* 80C861D0-80C861DC -00001 000C+00 0/1 0/0 0/0 .data            @3791 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3791[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeMove2__9daPropY_cFv,
};
#pragma pop

/* 80C861DC-80C861E8 -00001 000C+00 0/1 0/0 0/0 .data            @3792 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3792[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeStop__9daPropY_cFv,
};
#pragma pop

/* 80C861E8-80C86224 000074 003C+00 0/1 0/0 0/0 .data            mode_proc$3787 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 mode_proc[60] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80C86224-80C86244 -00001 0020+00 1/0 0/0 0/0 .data            l_daPropY_Method */
static actor_method_class l_daPropY_Method = {
    (process_method_func)daPropY_Create__FP10fopAc_ac_c,
    (process_method_func)daPropY_Delete__FP9daPropY_c,
    (process_method_func)daPropY_Execute__FP9daPropY_c,
    0,
    (process_method_func)daPropY_Draw__FP9daPropY_c,
};

/* 80C86244-80C86274 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv7PropY */
extern actor_process_profile_definition g_profile_Obj_Lv7PropY = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Lv7PropY,      // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daPropY_c),      // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  641,                    // mPriority
  &l_daPropY_Method,      // sub_method
  0x00040000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80C86274-80C8629C 000100 0028+00 1/1 0/0 0/0 .data            __vt__9daPropY_c */
SECTION_DATA extern void* __vt__9daPropY_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__9daPropY_cFv,
    (void*)Create__16dBgS_MoveBgActorFv,
    (void*)Execute__9daPropY_cFPPA3_A4_f,
    (void*)Draw__9daPropY_cFv,
    (void*)Delete__9daPropY_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80C8629C-80C862A8 000128 000C+00 2/2 0/0 0/0 .data            __vt__13daPropY_HIO_c */
SECTION_DATA extern void* __vt__13daPropY_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daPropY_HIO_cFv,
};

/* 80C862A8-80C862B4 000134 000C+00 3/3 0/0 0/0 .data            __vt__14mDoHIO_entry_c */
SECTION_DATA extern void* __vt__14mDoHIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14mDoHIO_entry_cFv,
};

/* 80C8546C-80C854C4 0000EC 0058+00 1/1 0/0 0/0 .text            __ct__13daPropY_HIO_cFv */
daPropY_HIO_c::daPropY_HIO_c() {
    // NONMATCHING
}

/* 80C854C4-80C8550C 000144 0048+00 1/0 0/0 0/0 .text            __dt__14mDoHIO_entry_cFv */
// mDoHIO_entry_c::~mDoHIO_entry_c() {
extern "C" void __dt__14mDoHIO_entry_cFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C862C0-80C862CC 000008 000C+00 1/1 0/0 0/0 .bss             @3644 */
static u8 lit_3644[12];

/* 80C862CC-80C862EC 000014 0020+00 7/7 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[32];

/* 80C8550C-80C855A4 00018C 0098+00 2/2 0/0 0/0 .text            setBaseMtx__9daPropY_cFv */
void daPropY_c::setBaseMtx() {
    // NONMATCHING
}

/* 80C855A4-80C85624 000224 0080+00 1/0 0/0 0/0 .text            CreateHeap__9daPropY_cFv */
void daPropY_c::CreateHeap() {
    // NONMATCHING
}

/* 80C85624-80C85810 0002A4 01EC+00 1/1 0/0 0/0 .text            create__9daPropY_cFv */
void daPropY_c::create() {
    // NONMATCHING
}

/* 80C85810-80C85860 000490 0050+00 1/0 0/0 0/0 .text            Execute__9daPropY_cFPPA3_A4_f */
void daPropY_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C862EC-80C862F0 000034 0004+00 1/1 0/0 0/0 .bss             None */
static u8 data_80C862EC[4];

/* 80C85860-80C859B4 0004E0 0154+00 1/1 0/0 0/0 .text            procMain__9daPropY_cFv */
void daPropY_c::procMain() {
    // NONMATCHING
}

/* 80C859B4-80C859C0 000634 000C+00 2/2 0/0 0/0 .text            init_modeMoveWait__9daPropY_cFv */
void daPropY_c::init_modeMoveWait() {
    // NONMATCHING
}

/* 80C859C0-80C859C4 000640 0004+00 1/0 0/0 0/0 .text            modeMoveWait__9daPropY_cFv */
void daPropY_c::modeMoveWait() {
    /* empty function */
}

/* 80C859C4-80C859E0 000644 001C+00 2/2 0/0 0/0 .text            init_modeMove__9daPropY_cFv */
void daPropY_c::init_modeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C86144-80C86148 000014 0004+00 0/2 0/0 0/0 .rodata          @3845 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3845 = 360.0f;
COMPILER_STRIP_GATE(0x80C86144, &lit_3845);
#pragma pop

/* 80C86148-80C8614C 000018 0004+00 0/2 0/0 0/0 .rodata          @3846 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3846 = 30.0f;
COMPILER_STRIP_GATE(0x80C86148, &lit_3846);
#pragma pop

/* 80C8614C-80C86150 00001C 0004+00 0/4 0/0 0/0 .rodata          @3847 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_3847 = 0x43360B61;
COMPILER_STRIP_GATE(0x80C8614C, &lit_3847);
#pragma pop

/* 80C86150-80C86154 000020 0004+00 0/2 0/0 0/0 .rodata          @3848 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3848 = 127.0f;
COMPILER_STRIP_GATE(0x80C86150, &lit_3848);
#pragma pop

/* 80C86154-80C86158 000024 0004+00 0/3 0/0 0/0 .rodata          @3849 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3849 = -1.0f;
COMPILER_STRIP_GATE(0x80C86154, &lit_3849);
#pragma pop

/* 80C859E0-80C85B08 000660 0128+00 1/0 0/0 0/0 .text            modeMove__9daPropY_cFv */
void daPropY_c::modeMove() {
    // NONMATCHING
}

/* 80C85B08-80C85B24 000788 001C+00 2/2 0/0 0/0 .text            init_modeWait__9daPropY_cFv */
void daPropY_c::init_modeWait() {
    // NONMATCHING
}

/* 80C85B24-80C85B5C 0007A4 0038+00 1/0 0/0 0/0 .text            modeWait__9daPropY_cFv */
void daPropY_c::modeWait() {
    // NONMATCHING
}

/* 80C85B5C-80C85B84 0007DC 0028+00 2/2 0/0 0/0 .text            init_modeMove2__9daPropY_cFv */
void daPropY_c::init_modeMove2() {
    // NONMATCHING
}

/* 80C85B84-80C85CAC 000804 0128+00 1/0 0/0 0/0 .text            modeMove2__9daPropY_cFv */
void daPropY_c::modeMove2() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C86158-80C86160 000028 0008+00 0/2 0/0 0/0 .rodata          @3913 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3913[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C86158, &lit_3913);
#pragma pop

/* 80C85CAC-80C85DD0 00092C 0124+00 1/1 0/0 0/0 .text            init_modeStop__9daPropY_cFv */
void daPropY_c::init_modeStop() {
    // NONMATCHING
}

/* 80C85DD0-80C85F14 000A50 0144+00 1/0 0/0 0/0 .text            modeStop__9daPropY_cFv */
void daPropY_c::modeStop() {
    // NONMATCHING
}

/* 80C85F14-80C85FB8 000B94 00A4+00 1/0 0/0 0/0 .text            Draw__9daPropY_cFv */
void daPropY_c::Draw() {
    // NONMATCHING
}

/* 80C85FB8-80C85FF8 000C38 0040+00 1/0 0/0 0/0 .text            Delete__9daPropY_cFv */
void daPropY_c::Delete() {
    // NONMATCHING
}

/* 80C85FF8-80C86024 000C78 002C+00 1/0 0/0 0/0 .text            daPropY_Draw__FP9daPropY_c */
static void daPropY_Draw(daPropY_c* param_0) {
    // NONMATCHING
}

/* 80C86024-80C86044 000CA4 0020+00 1/0 0/0 0/0 .text            daPropY_Execute__FP9daPropY_c */
static void daPropY_Execute(daPropY_c* param_0) {
    // NONMATCHING
}

/* 80C86044-80C86064 000CC4 0020+00 1/0 0/0 0/0 .text            daPropY_Delete__FP9daPropY_c */
static void daPropY_Delete(daPropY_c* param_0) {
    // NONMATCHING
}

/* 80C86064-80C86084 000CE4 0020+00 1/0 0/0 0/0 .text            daPropY_Create__FP10fopAc_ac_c */
static void daPropY_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C86084-80C860E0 000D04 005C+00 2/1 0/0 0/0 .text            __dt__13daPropY_HIO_cFv */
daPropY_HIO_c::~daPropY_HIO_c() {
    // NONMATCHING
}

/* 80C860E0-80C8611C 000D60 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_lv7PropellerY_cpp
 */
void __sinit_d_a_obj_lv7PropellerY_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80C860E0, __sinit_d_a_obj_lv7PropellerY_cpp);
#pragma pop

/* 80C86160-80C86160 000030 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
