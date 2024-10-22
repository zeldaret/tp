/**
 * @file d_a_obj_laundry.cpp
 * 
*/

#include "d/actor/d_a_obj_laundry.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void create_init__10daObjLdy_cFv();
extern "C" void initBaseMtx__10daObjLdy_cFv();
extern "C" void setBaseMtx__10daObjLdy_cFv();
extern "C" void getJointAngle__10daObjLdy_cFP5csXyzi();
extern "C" void setNormalClothPos__10daObjLdy_cFv();
extern "C" void calcJointAngle__10daObjLdy_cFv();
extern "C" bool divorceParent__10daObjLdy_cFv();
extern "C" static void nodeCallBack__FP8J3DJointi();
extern "C" static void createSolidHeap__FP10fopAc_ac_c();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void daObjLdy_Draw__FP10daObjLdy_c();
extern "C" static void daObjLdy_Execute__FP10daObjLdy_c();
extern "C" static bool daObjLdy_IsDelete__FP10daObjLdy_c();
extern "C" static void daObjLdy_Delete__FP10daObjLdy_c();
extern "C" void __dt__12LaundJoint_cFv();
extern "C" static void daObjLdy_Create__FP10fopAc_ac_c();
extern "C" void __ct__12LaundJoint_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" u8 const M_attr__10daObjLdy_c[52];
extern "C" extern char const* const d_a_obj_laundry__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void push__14mDoMtx_stack_cFv();
extern "C" void pop__14mDoMtx_stack_cFv();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci();
extern "C" void dKyw_get_AllWind_vecpow__FP4cXyz();
extern "C" void GetAc__22dCcD_GAtTgCoCommonBaseFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void ChkCoHit__12dCcD_GObjInfFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void normalizeZP__4cXyzFv();
extern "C" void isZero__4cXyzCFv();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rnd__Fv();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void _savegpr_25();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_25();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];

//
// Declarations:
//

/* ############################################################################################## */
/* 80C52000-80C52034 000000 0034+00 3/3 0/0 0/0 .rodata          M_attr__10daObjLdy_c */
SECTION_RODATA u8 const daObjLdy_c::M_attr[52] = {
    0x40, 0xA0, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00, 0x43, 0x02, 0x00, 0x00, 0xC2,
    0x48, 0x00, 0x00, 0x3E, 0x19, 0x99, 0x9A, 0x3E, 0xE6, 0x66, 0x66, 0x3E, 0x99,
    0x99, 0x9A, 0x44, 0x7A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00,
};
COMPILER_STRIP_GATE(0x80C52000, &daObjLdy_c::M_attr);

/* 80C52034-80C52038 000034 0004+00 0/1 0/0 0/0 .rodata          @3751 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3751 = -60.0f;
COMPILER_STRIP_GATE(0x80C52034, &lit_3751);
#pragma pop

/* 80C52038-80C5203C 000038 0004+00 0/1 0/0 0/0 .rodata          @3752 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3752 = -200.0f;
COMPILER_STRIP_GATE(0x80C52038, &lit_3752);
#pragma pop

/* 80C5203C-80C52040 00003C 0004+00 0/1 0/0 0/0 .rodata          @3753 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3753 = 60.0f;
COMPILER_STRIP_GATE(0x80C5203C, &lit_3753);
#pragma pop

/* 80C52040-80C52044 000040 0004+00 0/1 0/0 0/0 .rodata          @3754 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3754 = 50.0f;
COMPILER_STRIP_GATE(0x80C52040, &lit_3754);
#pragma pop

/* 80C52044-80C52048 000044 0004+00 0/1 0/0 0/0 .rodata          @3755 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3755 = 1.5f;
COMPILER_STRIP_GATE(0x80C52044, &lit_3755);
#pragma pop

/* 80C52048-80C52050 000048 0008+00 1/2 0/0 0/0 .rodata          @3757 */
SECTION_RODATA static u8 const lit_3757[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C52048, &lit_3757);

/* 80C50F98-80C51088 000078 00F0+00 1/1 0/0 0/0 .text            create_init__10daObjLdy_cFv */
void daObjLdy_c::create_init() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C52050-80C52054 000050 0004+00 1/3 0/0 0/0 .rodata          @3782 */
SECTION_RODATA static u8 const lit_3782[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C52050, &lit_3782);

/* 80C51088-80C510F8 000168 0070+00 1/1 0/0 0/0 .text            initBaseMtx__10daObjLdy_cFv */
void daObjLdy_c::initBaseMtx() {
    // NONMATCHING
}

/* 80C510F8-80C5116C 0001D8 0074+00 2/2 0/0 0/0 .text            setBaseMtx__10daObjLdy_cFv */
void daObjLdy_c::setBaseMtx() {
    // NONMATCHING
}

/* 80C5116C-80C51194 00024C 0028+00 1/1 0/0 0/0 .text getJointAngle__10daObjLdy_cFP5csXyzi */
void daObjLdy_c::getJointAngle(csXyz* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C52054-80C52098 000054 0044+00 0/0 0/0 0/0 .rodata          ccCylSrc$3800 */
#pragma push
#pragma force_active on
const static dCcD_SrcCyl ccCylSrc = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x16048, 0x11}, 0x149}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, -80.0f, 0.0f}, // mCenter
        25.0f, // mRadius
        25.0f // mHeight
    } // mCyl
};
#pragma pop

/* 80C52098-80C520A0 000098 0008+00 0/2 0/0 0/0 .rodata          @3855 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3855[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C52098, &lit_3855);
#pragma pop

/* 80C520A0-80C520A8 0000A0 0008+00 0/2 0/0 0/0 .rodata          @3856 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3856[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C520A0, &lit_3856);
#pragma pop

/* 80C520A8-80C520B0 0000A8 0008+00 0/2 0/0 0/0 .rodata          @3857 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3857[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C520A8, &lit_3857);
#pragma pop

/* 80C520B0-80C520B4 0000B0 0004+00 0/0 0/0 0/0 .rodata          @3858 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3858 = 40.0f;
COMPILER_STRIP_GATE(0x80C520B0, &lit_3858);
#pragma pop

/* 80C520B4-80C520B8 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4041 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4041 = 100.0f;
COMPILER_STRIP_GATE(0x80C520B4, &lit_4041);
#pragma pop

/* 80C520B8-80C520BC 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4042 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4042 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C520B8, &lit_4042);
#pragma pop

/* 80C520BC-80C520C0 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4043 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4043 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C520BC, &lit_4043);
#pragma pop

/* 80C51194-80C51644 000274 04B0+00 1/1 0/0 0/0 .text            setNormalClothPos__10daObjLdy_cFv
 */
void daObjLdy_c::setNormalClothPos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C520C0-80C520C4 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4097 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4097 = -1.0f;
COMPILER_STRIP_GATE(0x80C520C0, &lit_4097);
#pragma pop

/* 80C51644-80C5183C 000724 01F8+00 1/1 0/0 0/0 .text            calcJointAngle__10daObjLdy_cFv */
void daObjLdy_c::calcJointAngle() {
    // NONMATCHING
}

/* 80C5183C-80C51844 00091C 0008+00 1/1 0/0 0/0 .text            divorceParent__10daObjLdy_cFv */
bool daObjLdy_c::divorceParent() {
    return true;
}

/* 80C51844-80C518FC 000924 00B8+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static void nodeCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C520C4-80C520C8 0000C4 0004+00 1/1 0/0 0/0 .rodata          @4203 */
SECTION_RODATA static f32 const lit_4203 = 1.0f;
COMPILER_STRIP_GATE(0x80C520C4, &lit_4203);

/* 80C520C8-80C520C8 0000C8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C520C8 = "J_Sentaku";
SECTION_DEAD static char const* const stringBase_80C520D2 = "J_Sentaku.bmd";
SECTION_DEAD static char const* const stringBase_80C520E0 = "J_Sentaku.btk";
#pragma pop

/* 80C520F0-80C520F4 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_laundry__stringBase0;

/* 80C520F4-80C52114 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjLdy_Method */
static actor_method_class l_daObjLdy_Method = {
    (process_method_func)daObjLdy_Create__FP10fopAc_ac_c,
    (process_method_func)daObjLdy_Delete__FP10daObjLdy_c,
    (process_method_func)daObjLdy_Execute__FP10daObjLdy_c,
    (process_method_func)daObjLdy_IsDelete__FP10daObjLdy_c,
    (process_method_func)daObjLdy_Draw__FP10daObjLdy_c,
};

/* 80C52114-80C52144 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Laundry */
extern actor_process_profile_definition g_profile_Obj_Laundry = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Laundry,       // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daObjLdy_c),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  37,                     // mPriority
  &l_daObjLdy_Method,     // sub_method
  0x00040180,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80C52144-80C52150 000054 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80C52150-80C5215C 000060 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80C5215C-80C52168 00006C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80C52168-80C52174 000078 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80C52174-80C52180 000084 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80C518FC-80C51A98 0009DC 019C+00 1/1 0/0 0/0 .text            createSolidHeap__FP10fopAc_ac_c */
static void createSolidHeap(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C51A98-80C51AE0 000B78 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80C51AE0-80C51B9C 000BC0 00BC+00 1/0 0/0 0/0 .text            daObjLdy_Draw__FP10daObjLdy_c */
static void daObjLdy_Draw(daObjLdy_c* param_0) {
    // NONMATCHING
}

/* 80C51B9C-80C51BDC 000C7C 0040+00 1/0 0/0 0/0 .text            daObjLdy_Execute__FP10daObjLdy_c */
static void daObjLdy_Execute(daObjLdy_c* param_0) {
    // NONMATCHING
}

/* 80C51BDC-80C51BE4 000CBC 0008+00 1/0 0/0 0/0 .text            daObjLdy_IsDelete__FP10daObjLdy_c
 */
static bool daObjLdy_IsDelete(daObjLdy_c* param_0) {
    return true;
}

/* 80C51BE4-80C51D2C 000CC4 0148+00 1/0 0/0 0/0 .text            daObjLdy_Delete__FP10daObjLdy_c */
static void daObjLdy_Delete(daObjLdy_c* param_0) {
    // NONMATCHING
}

/* 80C51D2C-80C51D68 000E0C 003C+00 2/2 0/0 0/0 .text            __dt__12LaundJoint_cFv */
LaundJoint_c::~LaundJoint_c() {
    // NONMATCHING
}

/* 80C51D68-80C51EC0 000E48 0158+00 1/0 0/0 0/0 .text            daObjLdy_Create__FP10fopAc_ac_c */
static void daObjLdy_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C51EC0-80C51EC4 000FA0 0004+00 1/1 0/0 0/0 .text            __ct__12LaundJoint_cFv */
LaundJoint_c::LaundJoint_c() {
    /* empty function */
}

/* 80C51EC4-80C51F0C 000FA4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80C51F0C-80C51F54 000FEC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80C51F54-80C51FB0 001034 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80C51FB0-80C51FF8 001090 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80C520C8-80C520C8 0000C8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */