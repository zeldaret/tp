/**
 * @file d_a_obj_rotBridge.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_rotBridge.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__17daRotBridge_HIO_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" void setBaseMtx__13daRotBridge_cFv();
extern "C" void CreateHeap__13daRotBridge_cFv();
extern "C" void create__13daRotBridge_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void rideCallBack__13daRotBridge_cFP4dBgWP10fopAc_ac_cP10fopAc_ac_c();
extern "C" void Execute__13daRotBridge_cFPPA3_A4_f();
extern "C" void playerAreaCheck__13daRotBridge_cFv();
extern "C" void moveBridge__13daRotBridge_cFv();
extern "C" void Draw__13daRotBridge_cFv();
extern "C" void Delete__13daRotBridge_cFv();
extern "C" static void daRotBridge_Draw__FP13daRotBridge_c();
extern "C" static void daRotBridge_Execute__FP13daRotBridge_c();
extern "C" static void daRotBridge_Delete__FP13daRotBridge_c();
extern "C" static void daRotBridge_Create__FP10fopAc_ac_c();
extern "C" void __dt__17daRotBridge_HIO_cFv();
extern "C" void __sinit_d_a_obj_rotBridge_cpp();
extern "C" extern char const* const d_a_obj_rotBridge__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_MtxToRot__FPA4_CfP5csXyz();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb();
extern "C" void entry__13mDoExt_bckAnmFP12J3DModelDataf();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
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
extern "C" void Set__4cBgWFP6cBgD_tUlPA3_A4_f();
extern "C" void __ct__4dBgWFv();
extern "C" void Move__4dBgWFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void calcAnmMtx__8J3DModelFv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void _savegpr_29();
extern "C" void _restgpr_29();
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80CBF668-80CBF66C 000000 0004+00 4/4 0/0 0/0 .rodata          @3626 */
SECTION_RODATA static f32 const lit_3626 = 1500.0f;
COMPILER_STRIP_GATE(0x80CBF668, &lit_3626);

/* 80CBF6C4-80CBF6C4 00005C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CBF6C4 = "P_Mbridge";
SECTION_DEAD static char const* const stringBase_80CBF6CE = "P_Mbrid9";
#pragma pop

/* 80CBF6D8-80CBF6E4 -00001 000C+00 3/3 0/0 0/0 .data            l_resNameIdx */
SECTION_DATA static void* l_resNameIdx[3] = {
    (void*)&d_a_obj_rotBridge__stringBase0,
    (void*)&d_a_obj_rotBridge__stringBase0,
    (void*)(((char*)&d_a_obj_rotBridge__stringBase0) + 0xA),
};

/* 80CBF6E4-80CBF704 -00001 0020+00 1/0 0/0 0/0 .data            l_daRotBridge_Method */
static actor_method_class l_daRotBridge_Method = {
    (process_method_func)daRotBridge_Create__FP10fopAc_ac_c,
    (process_method_func)daRotBridge_Delete__FP13daRotBridge_c,
    (process_method_func)daRotBridge_Execute__FP13daRotBridge_c,
    0,
    (process_method_func)daRotBridge_Draw__FP13daRotBridge_c,
};

/* 80CBF704-80CBF734 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_RotBridge */
extern actor_process_profile_definition g_profile_Obj_RotBridge = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_RotBridge,     // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daRotBridge_c),  // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  490,                    // mPriority
  &l_daRotBridge_Method,  // sub_method
  0x00040000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80CBF734-80CBF740 00005C 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80CBF740-80CBF768 000068 0028+00 1/1 0/0 0/0 .data            __vt__13daRotBridge_c */
SECTION_DATA extern void* __vt__13daRotBridge_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__13daRotBridge_cFv,
    (void*)Create__16dBgS_MoveBgActorFv,
    (void*)Execute__13daRotBridge_cFPPA3_A4_f,
    (void*)Draw__13daRotBridge_cFv,
    (void*)Delete__13daRotBridge_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80CBF768-80CBF774 000090 000C+00 2/2 0/0 0/0 .data            __vt__17daRotBridge_HIO_c */
SECTION_DATA extern void* __vt__17daRotBridge_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17daRotBridge_HIO_cFv,
};

/* 80CBF774-80CBF780 00009C 000C+00 3/3 0/0 0/0 .data            __vt__14mDoHIO_entry_c */
SECTION_DATA extern void* __vt__14mDoHIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14mDoHIO_entry_cFv,
};

/* 80CBE98C-80CBE9DC 0000EC 0050+00 1/1 0/0 0/0 .text            __ct__17daRotBridge_HIO_cFv */
daRotBridge_HIO_c::daRotBridge_HIO_c() {
    // NONMATCHING
}

/* 80CBE9DC-80CBEA24 00013C 0048+00 1/0 0/0 0/0 .text            __dt__14mDoHIO_entry_cFv */
// mDoHIO_entry_c::~mDoHIO_entry_c() {
extern "C" void __dt__14mDoHIO_entry_cFv() {
    // NONMATCHING
}

/* 80CBEA24-80CBEB38 000184 0114+00 2/2 0/0 0/0 .text            setBaseMtx__13daRotBridge_cFv */
void daRotBridge_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CBF66C-80CBF678 000004 000C+00 0/1 0/0 0/0 .rodata          l_bmdIdx */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_bmdIdx[12] = {
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08,
};
COMPILER_STRIP_GATE(0x80CBF66C, &l_bmdIdx);
#pragma pop

/* 80CBF678-80CBF684 000010 000C+00 1/1 0/0 0/0 .rodata          l_dzbIdx */
SECTION_RODATA static u8 const l_dzbIdx[12] = {
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0B,
};
COMPILER_STRIP_GATE(0x80CBF678, &l_dzbIdx);

/* 80CBF684-80CBF690 00001C 000C+00 0/1 0/0 0/0 .rodata          l_bckIdx */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_bckIdx[12] = {
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x05,
};
COMPILER_STRIP_GATE(0x80CBF684, &l_bckIdx);
#pragma pop

/* 80CBF690-80CBF698 000028 0004+04 2/4 0/0 0/0 .rodata          @3694 */
SECTION_RODATA static f32 const lit_3694[1 + 1 /* padding */] = {
    1.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80CBF690, &lit_3694);

/* 80CBEB38-80CBECBC 000298 0184+00 1/0 0/0 0/0 .text            CreateHeap__13daRotBridge_cFv */
void daRotBridge_c::CreateHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CBF698-80CBF6A0 000030 0008+00 1/2 0/0 0/0 .rodata          @3776 */
SECTION_RODATA static u8 const lit_3776[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CBF698, &lit_3776);

/* 80CBECBC-80CBEED4 00041C 0218+00 1/1 0/0 0/0 .text            create__13daRotBridge_cFv */
void daRotBridge_c::create() {
    // NONMATCHING
}

/* 80CBEED4-80CBEF1C 000634 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80CBEF1C-80CBEF34 00067C 0018+00 1/1 0/0 0/0 .text
 * rideCallBack__13daRotBridge_cFP4dBgWP10fopAc_ac_cP10fopAc_ac_c */
void daRotBridge_c::rideCallBack(dBgW* param_0, fopAc_ac_c* param_1, fopAc_ac_c* param_2) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CBF6A0-80CBF6A4 000038 0004+00 1/2 0/0 0/0 .rodata          @3833 */
SECTION_RODATA static f32 const lit_3833 = -1.0f;
COMPILER_STRIP_GATE(0x80CBF6A0, &lit_3833);

/* 80CBEF34-80CBF050 000694 011C+00 1/0 0/0 0/0 .text            Execute__13daRotBridge_cFPPA3_A4_f
 */
void daRotBridge_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CBF6A4-80CBF6A8 00003C 0004+00 0/2 0/0 0/0 .rodata          @3878 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3878[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80CBF6A4, &lit_3878);
#pragma pop

/* 80CBF6A8-80CBF6B0 000040 0008+00 0/1 0/0 0/0 .rodata          @3879 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3879[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CBF6A8, &lit_3879);
#pragma pop

/* 80CBF6B0-80CBF6B8 000048 0008+00 0/1 0/0 0/0 .rodata          @3880 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3880[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CBF6B0, &lit_3880);
#pragma pop

/* 80CBF6B8-80CBF6C0 000050 0008+00 0/1 0/0 0/0 .rodata          @3881 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3881[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CBF6B8, &lit_3881);
#pragma pop

/* 80CBF788-80CBF794 000008 000C+00 1/1 0/0 0/0 .bss             @3620 */
static u8 lit_3620[12];

/* 80CBF794-80CBF7AC 000014 0018+00 3/3 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[24];

/* 80CBF050-80CBF1EC 0007B0 019C+00 1/1 0/0 0/0 .text            playerAreaCheck__13daRotBridge_cFv
 */
void daRotBridge_c::playerAreaCheck() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CBF6C0-80CBF6C4 000058 0004+00 0/1 0/0 0/0 .rodata          @3939 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3939 = 10.0f;
COMPILER_STRIP_GATE(0x80CBF6C0, &lit_3939);
#pragma pop

/* 80CBF1EC-80CBF404 00094C 0218+00 1/1 0/0 0/0 .text            moveBridge__13daRotBridge_cFv */
void daRotBridge_c::moveBridge() {
    // NONMATCHING
}

/* 80CBF404-80CBF4BC 000B64 00B8+00 1/0 0/0 0/0 .text            Draw__13daRotBridge_cFv */
void daRotBridge_c::Draw() {
    // NONMATCHING
}

/* 80CBF4BC-80CBF530 000C1C 0074+00 1/0 0/0 0/0 .text            Delete__13daRotBridge_cFv */
void daRotBridge_c::Delete() {
    // NONMATCHING
}

/* 80CBF530-80CBF55C 000C90 002C+00 1/0 0/0 0/0 .text            daRotBridge_Draw__FP13daRotBridge_c
 */
static void daRotBridge_Draw(daRotBridge_c* param_0) {
    // NONMATCHING
}

/* 80CBF55C-80CBF57C 000CBC 0020+00 1/0 0/0 0/0 .text daRotBridge_Execute__FP13daRotBridge_c */
static void daRotBridge_Execute(daRotBridge_c* param_0) {
    // NONMATCHING
}

/* 80CBF57C-80CBF59C 000CDC 0020+00 1/0 0/0 0/0 .text daRotBridge_Delete__FP13daRotBridge_c */
static void daRotBridge_Delete(daRotBridge_c* param_0) {
    // NONMATCHING
}

/* 80CBF59C-80CBF5BC 000CFC 0020+00 1/0 0/0 0/0 .text            daRotBridge_Create__FP10fopAc_ac_c
 */
static void daRotBridge_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80CBF5BC-80CBF618 000D1C 005C+00 2/1 0/0 0/0 .text            __dt__17daRotBridge_HIO_cFv */
daRotBridge_HIO_c::~daRotBridge_HIO_c() {
    // NONMATCHING
}

/* 80CBF618-80CBF654 000D78 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_rotBridge_cpp */
void __sinit_d_a_obj_rotBridge_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80CBF618, __sinit_d_a_obj_rotBridge_cpp);
#pragma pop

/* 80CBF6C4-80CBF6C4 00005C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
