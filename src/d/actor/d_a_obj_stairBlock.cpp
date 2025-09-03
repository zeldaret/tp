/**
 * @file d_a_obj_stairBlock.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_stairBlock.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__18daStairBlock_HIO_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" void setBaseMtx__14daStairBlock_cFv();
extern "C" void CreateHeap__14daStairBlock_cFv();
extern "C" void create__14daStairBlock_cFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__13mDoExt_bckAnmFv();
extern "C" void __ct__13mDoExt_bckAnmFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void createHeapCallBack__14daStairBlock_cFP10fopAc_ac_c();
extern "C" void Execute__14daStairBlock_cFv();
extern "C" void Draw__14daStairBlock_cFv();
extern "C" void Delete__14daStairBlock_cFv();
extern "C" static void daStairBlock_Draw__FP14daStairBlock_c();
extern "C" static void daStairBlock_Execute__FP14daStairBlock_c();
extern "C" static void daStairBlock_Delete__FP14daStairBlock_c();
extern "C" static void daStairBlock_Create__FP10fopAc_ac_c();
extern "C" void __dt__18daStairBlock_HIO_cFv();
extern "C" void __sinit_d_a_obj_stairBlock_cpp();
extern "C" u8 const mCcDObjInfo__14daStairBlock_c[48];
extern "C" extern char const* const d_a_obj_stairBlock__stringBase0;
extern "C" u8 mCcDSph__14daStairBlock_c[64];

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb();
extern "C" void entry__13mDoExt_bckAnmFP12J3DModelDataf();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_setupShareTexture__FP12J3DModelDataP12J3DModelData();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkCoHit__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void __construct_array();
extern "C" void _savegpr_18();
extern "C" void _savegpr_20();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_27();
extern "C" void _restgpr_18();
extern "C" void _restgpr_20();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_27();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80CE8DBC-80CE8DC0 000000 0004+00 3/4 0/0 0/0 .rodata          @3651 */
SECTION_RODATA static u8 const lit_3651[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80CE8DBC, &lit_3651);

/* 80CE8ED8-80CE8F18 000000 0040+00 2/2 0/0 0/0 .data            mCcDSph__14daStairBlock_c */
SECTION_DATA u8 daStairBlock_c::mCcDSph[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00,
};

/* 80CE8F18-80CE8F38 -00001 0020+00 1/0 0/0 0/0 .data            l_daStairBlock_Method */
static actor_method_class l_daStairBlock_Method = {
    (process_method_func)daStairBlock_Create__FP10fopAc_ac_c,
    (process_method_func)daStairBlock_Delete__FP14daStairBlock_c,
    (process_method_func)daStairBlock_Execute__FP14daStairBlock_c,
    0,
    (process_method_func)daStairBlock_Draw__FP14daStairBlock_c,
};

/* 80CE8F38-80CE8F68 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_StairBlock */
extern actor_process_profile_definition g_profile_Obj_StairBlock = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_StairBlock,    // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daStairBlock_c), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  500,                    // mPriority
  &l_daStairBlock_Method, // sub_method
  0x00044000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80CE8F68-80CE8F74 000090 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80CE8F74-80CE8F80 00009C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80CE8F80-80CE8F8C 0000A8 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80CE8F8C-80CE8FA4 0000B4 0018+00 1/1 0/0 0/0 .data            __vt__14daStairBlock_c */
SECTION_DATA extern void* __vt__14daStairBlock_c[6] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__14daStairBlock_cFv,
    (void*)Execute__14daStairBlock_cFv,
    (void*)Draw__14daStairBlock_cFv,
    (void*)Delete__14daStairBlock_cFv,
};

/* 80CE8FA4-80CE8FB0 0000CC 000C+00 2/2 0/0 0/0 .data            __vt__18daStairBlock_HIO_c */
SECTION_DATA extern void* __vt__18daStairBlock_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daStairBlock_HIO_cFv,
};

/* 80CE8FB0-80CE8FBC 0000D8 000C+00 3/3 0/0 0/0 .data            __vt__14mDoHIO_entry_c */
SECTION_DATA extern void* __vt__14mDoHIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14mDoHIO_entry_cFv,
};

/* 80CE816C-80CE81AC 0000EC 0040+00 1/1 0/0 0/0 .text            __ct__18daStairBlock_HIO_cFv */
daStairBlock_HIO_c::daStairBlock_HIO_c() {
    // NONMATCHING
}

/* 80CE81AC-80CE81F4 00012C 0048+00 1/0 0/0 0/0 .text            __dt__14mDoHIO_entry_cFv */
// mDoHIO_entry_c::~mDoHIO_entry_c() {
extern "C" void __dt__14mDoHIO_entry_cFv() {
    // NONMATCHING
}

/* 80CE81F4-80CE82A0 000174 00AC+00 1/1 0/0 0/0 .text            setBaseMtx__14daStairBlock_cFv */
void daStairBlock_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CE8DC0-80CE8DF0 000004 0030+00 1/1 0/0 0/0 .rodata          mCcDObjInfo__14daStairBlock_c */
SECTION_RODATA u8 const daStairBlock_c::mCcDObjInfo[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CE8DC0, &daStairBlock_c::mCcDObjInfo);

/* 80CE8DF0-80CE8E18 000034 0028+00 0/1 0/0 0/0 .rodata          l_bmdIdx */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_bmdIdx[40] = {
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00,
    0x00, 0x13, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x16,
    0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x19,
};
COMPILER_STRIP_GATE(0x80CE8DF0, &l_bmdIdx);
#pragma pop

/* 80CE8E18-80CE8E40 00005C 0028+00 0/1 0/0 0/0 .rodata          l_bckIdx */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_bckIdx[40] = {
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00,
    0x00, 0x07, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x0A,
    0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0D,
};
COMPILER_STRIP_GATE(0x80CE8E18, &l_bckIdx);
#pragma pop

/* 80CE8E40-80CE8EB8 000084 0078+00 0/1 0/0 0/0 .rodata          centerPos */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const centerPos[120] = {
    0x46, 0xDC, 0x6D, 0x48, 0xC5, 0x21, 0x05, 0x58, 0x45, 0xE7, 0xA3, 0x44, 0x46, 0xDC, 0x73,
    0x7D, 0xC5, 0x27, 0x99, 0xDF, 0x45, 0xE7, 0x05, 0x79, 0x46, 0xDD, 0x61, 0x7C, 0xC5, 0x25,
    0x15, 0x7D, 0x45, 0xE5, 0x0C, 0xD7, 0x46, 0xD9, 0xFA, 0x72, 0xC5, 0x1D, 0xEF, 0x2F, 0x45,
    0xDB, 0xA0, 0x14, 0x46, 0xD9, 0xEA, 0x04, 0xC5, 0x22, 0xCA, 0x98, 0x45, 0xDF, 0x36, 0x6A,
    0x46, 0xDB, 0x08, 0x4B, 0xC5, 0x1F, 0xB0, 0x29, 0x45, 0xDF, 0x28, 0xA4, 0x46, 0xDA, 0xA3,
    0x3E, 0xC5, 0x25, 0x41, 0xD7, 0x45, 0xDA, 0x40, 0x9A, 0x46, 0xDA, 0xA3, 0x3E, 0xC5, 0x25,
    0x41, 0xD7, 0x45, 0xDA, 0x40, 0x9A, 0x46, 0xDA, 0xA3, 0x3E, 0xC5, 0x25, 0x41, 0xD7, 0x45,
    0xDA, 0x40, 0x9A, 0x46, 0xDA, 0xA3, 0x3E, 0xC5, 0x25, 0x41, 0xD7, 0x45, 0xDA, 0x40, 0x9A,
};
COMPILER_STRIP_GATE(0x80CE8E40, &centerPos);
#pragma pop

/* 80CE8EB8-80CE8EBC 0000FC 0004+00 0/2 0/0 0/0 .rodata          @3705 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3705 = 1.0f;
COMPILER_STRIP_GATE(0x80CE8EB8, &lit_3705);
#pragma pop

/* 80CE8EBC-80CE8EC4 000100 0008+00 0/1 0/0 0/0 .rodata          @3707 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3707[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CE8EBC, &lit_3707);
#pragma pop

/* 80CE8ECC-80CE8ECC 000110 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CE8ECC = "StaBlock";
#pragma pop

/* 80CE82A0-80CE83F0 000220 0150+00 1/0 0/0 0/0 .text            CreateHeap__14daStairBlock_cFv */
void daStairBlock_c::CreateHeap() {
    // NONMATCHING
}

/* 80CE83F0-80CE85B0 000370 01C0+00 1/1 0/0 0/0 .text            create__14daStairBlock_cFv */
void daStairBlock_c::create() {
    // NONMATCHING
}

/* 80CE85B0-80CE867C 000530 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

/* 80CE867C-80CE8700 0005FC 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
extern "C" void __ct__8dCcD_SphFv() {
    // NONMATCHING
}

/* 80CE8700-80CE8748 000680 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80CE8748-80CE8790 0006C8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80CE8790-80CE87E4 000710 0054+00 1/1 0/0 0/0 .text            __dt__13mDoExt_bckAnmFv */
// mDoExt_bckAnm::~mDoExt_bckAnm() {
extern "C" void __dt__13mDoExt_bckAnmFv() {
    // NONMATCHING
}

/* 80CE87E4-80CE882C 000764 0048+00 1/1 0/0 0/0 .text            __ct__13mDoExt_bckAnmFv */
// mDoExt_bckAnm::mDoExt_bckAnm() {
extern "C" void __ct__13mDoExt_bckAnmFv() {
    // NONMATCHING
}

/* 80CE882C-80CE8874 0007AC 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80CE8874-80CE88A0 0007F4 002C+00 1/1 0/0 0/0 .text
 * createHeapCallBack__14daStairBlock_cFP10fopAc_ac_c           */
void daStairBlock_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CE8EC4-80CE8EC8 000108 0004+00 0/1 0/0 0/0 .rodata          @3942 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3942 = -1.0f;
COMPILER_STRIP_GATE(0x80CE8EC4, &lit_3942);
#pragma pop

/* 80CE8EC8-80CE8ECC 00010C 0004+00 0/1 0/0 0/0 .rodata          @3943 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3943 = 200.0f;
COMPILER_STRIP_GATE(0x80CE8EC8, &lit_3943);
#pragma pop

/* 80CE8FC8-80CE8FD4 000008 000C+00 1/1 0/0 0/0 .bss             @3640 */
static u8 lit_3640[12];

/* 80CE8FD4-80CE9000 000014 002C+00 2/2 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[44];

/* 80CE88A0-80CE8B24 000820 0284+00 1/0 0/0 0/0 .text            Execute__14daStairBlock_cFv */
void daStairBlock_c::Execute() {
    // NONMATCHING
}

/* 80CE8B24-80CE8C08 000AA4 00E4+00 1/0 0/0 0/0 .text            Draw__14daStairBlock_cFv */
void daStairBlock_c::Draw() {
    // NONMATCHING
}

/* 80CE8C08-80CE8C38 000B88 0030+00 1/0 0/0 0/0 .text            Delete__14daStairBlock_cFv */
void daStairBlock_c::Delete() {
    // NONMATCHING
}

/* 80CE8C38-80CE8C64 000BB8 002C+00 1/0 0/0 0/0 .text daStairBlock_Draw__FP14daStairBlock_c */
static void daStairBlock_Draw(daStairBlock_c* param_0) {
    // NONMATCHING
}

/* 80CE8C64-80CE8C90 000BE4 002C+00 1/0 0/0 0/0 .text daStairBlock_Execute__FP14daStairBlock_c */
static void daStairBlock_Execute(daStairBlock_c* param_0) {
    // NONMATCHING
}

/* 80CE8C90-80CE8CBC 000C10 002C+00 1/0 0/0 0/0 .text daStairBlock_Delete__FP14daStairBlock_c */
static void daStairBlock_Delete(daStairBlock_c* param_0) {
    // NONMATCHING
}

/* 80CE8CBC-80CE8CDC 000C3C 0020+00 1/0 0/0 0/0 .text            daStairBlock_Create__FP10fopAc_ac_c
 */
static void daStairBlock_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80CE8CDC-80CE8D38 000C5C 005C+00 2/1 0/0 0/0 .text            __dt__18daStairBlock_HIO_cFv */
daStairBlock_HIO_c::~daStairBlock_HIO_c() {
    // NONMATCHING
}

/* 80CE8D38-80CE8DA8 000CB8 0070+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_stairBlock_cpp */
void __sinit_d_a_obj_stairBlock_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80CE8D38, __sinit_d_a_obj_stairBlock_cpp);
#pragma pop

/* 80CE8ECC-80CE8ECC 000110 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
