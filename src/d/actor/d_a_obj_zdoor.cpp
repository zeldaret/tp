/**
 * d_a_obj_zdoor.cpp
 *
 */

#include "d/actor/d_a_obj_zdoor.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" static void checkPlayerPos__FP9daZdoor_c();
extern "C" static void
doorCoHitCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" static void
doorTgHitCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" void init_cyl__9daZdoor_cFv();
extern "C" void set_cyl__9daZdoor_cFv();
extern "C" void setBaseMtx__9daZdoor_cFv();
extern "C" void Create__9daZdoor_cFv();
extern "C" void CreateHeap__9daZdoor_cFv();
extern "C" void create1st__9daZdoor_cFv();
extern "C" void Execute__9daZdoor_cFPPA3_A4_f();
extern "C" void Draw__9daZdoor_cFv();
extern "C" void Delete__9daZdoor_cFv();
extern "C" static void daZdoor_create1st__FP9daZdoor_c();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__8dCcD_CylFv();
extern "C" void __ct__8dCcD_CylFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" static void daZdoor_MoveBGDelete__FP9daZdoor_c();
extern "C" static void daZdoor_MoveBGExecute__FP9daZdoor_c();
extern "C" static void daZdoor_MoveBGDraw__FP9daZdoor_c();
extern "C" static void func_80D401D4();
extern "C" static void func_80D401DC();
extern "C" extern char const* const d_a_obj_zdoor__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci();
extern "C" void getObjectResName2Index__14dRes_control_cFPCcPCc();
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
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void Set__8cM3dGCylFRC9cM3dGCylS();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void __construct_array();
extern "C" void _savegpr_23();
extern "C" void _savegpr_26();
extern "C" void _savegpr_29();
extern "C" void _restgpr_23();
extern "C" void _restgpr_26();
extern "C" void _restgpr_29();
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

/* 80D401EC-80D40228 000000 003C+00 3/3 0/0 0/0 .rodata          l_cyl_data */
static const cM3dGCylS l_cyl_data[3] = {
    {{
         0.0f,
         0.0f,
         0.0f,
     },
     35.0f,
     400.0f},
    {{
         0.0f,
         0.0f,
         0.0f,
     },
     35.0f,
     350.0f},
    {{
         0.0f,
         0.0f,
         0.0f,
     },
     30.0f,
     150.0f},
};

/* 80D40228-80D40264 00003C 003C+00 1/1 0/0 0/0 .rodata          l_cyl_data2 */
static const cM3dGCylS l_cyl_data2[3] = {
    {{
         0.0f,
         0.0f,
         0.0f,
     },
     80.0f,
     400.0f},
    {{
         0.0f,
         0.0f,
         0.0f,
     },
     80.0f,
     350.0f},
    {{
         0.0f,
         0.0f,
         0.0f,
     },
     50.0f,
     150.0f},
};

/* 80D40264-80D4026C 000078 0006+02 0/1 0/0 0/0 .rodata          l_open_limit_max */
#pragma push
#pragma force_active on
static const s16 l_open_limit_max[3] = {
    0x4E20,
    0x5555,
    0,
};
#pragma pop

/* 80D4026C-80D40274 000080 0006+02 0/1 0/0 0/0 .rodata          l_open_limit_min */
#pragma push
#pragma force_active on
static const s16 l_open_limit_min[3] = {
    0x1388,
    0xAAAB,
    0xAE39,
};
#pragma pop

/* 80D40274-80D4027C 000088 0006+02 2/2 0/0 0/0 .rodata          l_open_speed */
static const s16 l_open_speed[3] = {
    0x00FA,
    0x0200,
    0x0200,
};

/* 80D4027C-80D40280 000090 0004+00 1/2 0/0 0/0 .rodata          @3658 */
SECTION_RODATA static u8 const lit_3658[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80D4027C, &lit_3658);

/* 80D3F438-80D3F4DC 000078 00A4+00 2/2 0/0 0/0 .text            checkPlayerPos__FP9daZdoor_c */
static BOOL checkPlayerPos(daZdoor_c* i_this) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D40280-80D40284 000094 0004+00 1/1 0/0 0/0 .rodata          @3679 */
SECTION_RODATA static f32 const lit_3679 = 3.0f;
COMPILER_STRIP_GATE(0x80D40280, &lit_3679);

/* 80D3F4DC-80D3F570 00011C 0094+00 1/1 0/0 0/0 .text
 * doorCoHitCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf */
static void doorCoHitCallBack(fopAc_ac_c* i_this, dCcD_GObjInf* param_1, fopAc_ac_c* param_2,
                                  dCcD_GObjInf* param_3) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D40284-80D4028C 000098 0004+04 1/1 0/0 0/0 .rodata          @3712 */
SECTION_RODATA static f32 const lit_3712[1 + 1 /* padding */] = {
    2.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80D40284, &lit_3712);

/* 80D4028C-80D40294 0000A0 0008+00 1/1 0/0 0/0 .rodata          @3714 */
SECTION_RODATA static u8 const lit_3714[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D4028C, &lit_3714);

/* 80D3F570-80D3F65C 0001B0 00EC+00 1/1 0/0 0/0 .text
 * doorTgHitCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf */
static void doorTgHitCallBack(fopAc_ac_c* i_this, dCcD_GObjInf* param_1, fopAc_ac_c* param_2,
                                  dCcD_GObjInf* param_3) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D40310-80D40354 000000 0044+00 1/1 0/0 0/0 .data            l_cyl_src */
static dCcD_SrcCyl l_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x11}, 0x19}},  // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},                  // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4},                  // mGObjTg
        {0x0},                                               // mGObjCo
    },                                                       // mObjInf
    {
        {0.0f, 0.0f, 0.0f},  // mCenter
        35.0f,               // mRadius
        400.0f               // mHeight
    }                        // mCyl
};

/* 80D40354-80D40398 000044 0044+00 1/1 0/0 0/0 .data            l_cyl_src2 */
static dCcD_SrcCyl l_cyl_src2 = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x0, 0x0}, 0x79}},  // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},          // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4},          // mGObjTg
        {0x0},                                       // mGObjCo
    },                                               // mObjInf
    {
        {0.0f, 0.0f, 0.0f},  // mCenter
        80.0f,               // mRadius
        400.0f               // mHeight
    }                        // mCyl
};

/* 80D3F65C-80D3F740 00029C 00E4+00 1/1 0/0 0/0 .text            init_cyl__9daZdoor_cFv */
void daZdoor_c::init_cyl() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D40294-80D40298 0000A8 0004+00 0/1 0/0 0/0 .rodata          @3796 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3796 = 60.0f;
COMPILER_STRIP_GATE(0x80D40294, &lit_3796);
#pragma pop

/* 80D40298-80D4029C 0000AC 0004+00 0/1 0/0 0/0 .rodata          @3797 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3797 = 120.0f;
COMPILER_STRIP_GATE(0x80D40298, &lit_3797);
#pragma pop

/* 80D4029C-80D402A0 0000B0 0004+00 0/1 0/0 0/0 .rodata          @3798 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3798 = 180.0f;
COMPILER_STRIP_GATE(0x80D4029C, &lit_3798);
#pragma pop

/* 80D402A0-80D402A4 0000B4 0004+00 0/1 0/0 0/0 .rodata          @3799 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3799 = 240.0f;
COMPILER_STRIP_GATE(0x80D402A0, &lit_3799);
#pragma pop

/* 80D3F740-80D3F884 000380 0144+00 1/1 0/0 0/0 .text            set_cyl__9daZdoor_cFv */
void daZdoor_c::set_cyl() {
    // NONMATCHING
}

/* 80D3F884-80D3F8F8 0004C4 0074+00 2/2 0/0 0/0 .text            setBaseMtx__9daZdoor_cFv */
void daZdoor_c::setBaseMtx() {
    // NONMATCHING
}

/* 80D3F8F8-80D3F970 000538 0078+00 1/0 0/0 0/0 .text            Create__9daZdoor_cFv */
int daZdoor_c::Create() {
    // NONMATCHING
}

/* 80D40398-80D403A4 -00001 000C+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName[3] = {
    "J_Zdoor",
    "J_Rdoor",
    "J_STdoa",
};

/* 80D403A4-80D403B0 -00001 000C+00 1/1 0/0 0/0 .data            l_bmdName */
static char* l_bmdName[3] = {
    "J_Zdoor.bmd",
    "J_Rdoor.bmd",
    "J_STdoa.bmd",
};

/* 80D3F970-80D3F9F0 0005B0 0080+00 1/0 0/0 0/0 .text            CreateHeap__9daZdoor_cFv */
int daZdoor_c::CreateHeap() {
    // NONMATCHING
}

/* 80D402A4-80D402A8 0000B8 0004+00 1/1 0/0 0/0 .rodata          estimateSizeTbl$3848 */
static const u16 estimateSizeTbl[2] = {
    0x0CF0,
    0x0D30,
};

/* 80D403B0-80D403BC -00001 000C+00 1/1 0/0 0/0 .data            l_dzbName */
static char* l_dzbName[3] = {
    "J_Zdoor.dzb",
    "J_Rdoor.dzb",
    "J_STdoa.dzb",
};

/* 80D3F9F0-80D3FACC 000630 00DC+00 1/1 0/0 0/0 .text            create1st__9daZdoor_cFv */
int daZdoor_c::create1st() {
    // NONMATCHING
}

/* 80D402A8-80D402AC 0000BC 0004+00 0/1 0/0 0/0 .rodata          @3906 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3906 = 1.0f;
COMPILER_STRIP_GATE(0x80D402A8, &lit_3906);
#pragma pop

/* 80D402AC-80D402B0 0000C0 0004+00 0/1 0/0 0/0 .rodata          @3907 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3907 = -1.0f;
COMPILER_STRIP_GATE(0x80D402AC, &lit_3907);
#pragma pop

/* 80D3FACC-80D3FCE8 00070C 021C+00 1/0 0/0 0/0 .text            Execute__9daZdoor_cFPPA3_A4_f */
int daZdoor_c::Execute(Mtx** i_mtx) {
    // NONMATCHING
}

/* 80D3FCE8-80D3FD8C 000928 00A4+00 1/0 0/0 0/0 .text            Draw__9daZdoor_cFv */
int daZdoor_c::Draw() {
    // NONMATCHING
}

/* 80D3FD8C-80D3FDCC 0009CC 0040+00 1/0 0/0 0/0 .text            Delete__9daZdoor_cFv */
int daZdoor_c::Delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D403BC-80D403DC -00001 0020+00 1/0 0/0 0/0 .data            daZdoor_METHODS */
static actor_method_class daZdoor_METHODS = {
    (process_method_func)daZdoor_create1st__FP9daZdoor_c,
    (process_method_func)daZdoor_MoveBGDelete__FP9daZdoor_c,
    (process_method_func)daZdoor_MoveBGExecute__FP9daZdoor_c,
    0,
    (process_method_func)daZdoor_MoveBGDraw__FP9daZdoor_c,
};

/* 80D403DC-80D4040C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_ZDoor */
extern actor_process_profile_definition g_profile_Obj_ZDoor = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_ZDoor,         // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daZdoor_c),      // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  24,                     // mPriority
  &daZdoor_METHODS,       // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80D4040C-80D40418 0000FC 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80D40418-80D40424 000108 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80D40424-80D40448 000114 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80D401DC,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80D401D4,
};

/* 80D40448-80D40470 000138 0028+00 1/1 0/0 0/0 .data            __vt__9daZdoor_c */
SECTION_DATA extern void* __vt__9daZdoor_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__9daZdoor_cFv,
    (void*)Create__9daZdoor_cFv,
    (void*)Execute__9daZdoor_cFPPA3_A4_f,
    (void*)Draw__9daZdoor_cFv,
    (void*)Delete__9daZdoor_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80D3FDCC-80D3FF18 000A0C 014C+00 1/0 0/0 0/0 .text            daZdoor_create1st__FP9daZdoor_c */
static int daZdoor_create1st(daZdoor_c* i_this) {
    // NONMATCHING
}

/* 80D3FF18-80D3FF60 000B58 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80D3FF60-80D3FFA8 000BA0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80D3FFA8-80D40074 000BE8 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_CylFv */
// dCcD_Cyl::~dCcD_Cyl() {
extern "C" void __dt__8dCcD_CylFv() {
    // NONMATCHING
}

/* 80D40074-80D400F8 000CB4 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_CylFv */
// dCcD_Cyl::dCcD_Cyl() {
extern "C" void __ct__8dCcD_CylFv() {
    // NONMATCHING
}

/* 80D400F8-80D40168 000D38 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch()
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80D40168-80D40188 000DA8 0020+00 1/0 0/0 0/0 .text            daZdoor_MoveBGDelete__FP9daZdoor_c
 */
static int daZdoor_MoveBGDelete(daZdoor_c* i_this) {
    // NONMATCHING
}

/* 80D40188-80D401A8 000DC8 0020+00 1/0 0/0 0/0 .text            daZdoor_MoveBGExecute__FP9daZdoor_c
 */
static int daZdoor_MoveBGExecute(daZdoor_c* i_this) {
    // NONMATCHING
}

/* 80D401A8-80D401D4 000DE8 002C+00 1/0 0/0 0/0 .text            daZdoor_MoveBGDraw__FP9daZdoor_c */
static int daZdoor_MoveBGDraw(daZdoor_c* i_this) {
    // NONMATCHING
}

/* 80D401D4-80D401DC 000E14 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80D401D4() {
    // NONMATCHING
}

/* 80D401DC-80D401E4 000E1C 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80D401DC() {
    // NONMATCHING
}