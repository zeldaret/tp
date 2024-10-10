/**
 * @file d_a_obj_swhang.cpp
 * 
*/

#include "d/actor/d_a_obj_swhang.h"
#include "d/d_com_inf_game.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" static void nodeCallBack__FP8J3DJointi();
extern "C" void initBaseMtx__13daObjSwHang_cFv();
extern "C" void setBaseMtx__13daObjSwHang_cFv();
extern "C" void Create__13daObjSwHang_cFv();
extern "C" void CreateHeap__13daObjSwHang_cFv();
extern "C" void create1st__13daObjSwHang_cFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void calcHangPos__13daObjSwHang_cFv();
extern "C" void checkDown__13daObjSwHang_cFv();
extern "C" void changeOnStatus__13daObjSwHang_cFv();
extern "C" void changeOffStatus__13daObjSwHang_cFv();
extern "C" void Execute__13daObjSwHang_cFPPA3_A4_f();
extern "C" void action__13daObjSwHang_cFv();
extern "C" void checkDownSw__13daObjSwHang_cFv();
extern "C" void init_modeOffWait__13daObjSwHang_cFv();
extern "C" void modeOffWait__13daObjSwHang_cFv();
extern "C" void init_modeOnWait__13daObjSwHang_cFv();
extern "C" void modeOnWait__13daObjSwHang_cFv();
extern "C" void eventStart__13daObjSwHang_cFv();
extern "C" void Draw__13daObjSwHang_cFv();
extern "C" void Delete__13daObjSwHang_cFv();
extern "C" static void daObjSwHang_create1st__FP13daObjSwHang_c();
extern "C" static void daObjSwHang_MoveBGDelete__FP13daObjSwHang_c();
extern "C" static void daObjSwHang_MoveBGExecute__FP13daObjSwHang_c();
extern "C" static void daObjSwHang_MoveBGDraw__FP13daObjSwHang_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__17dEvLib_callback_cFv();
extern "C" bool eventStart__17dEvLib_callback_cFv();
extern "C" bool eventRun__17dEvLib_callback_cFv();
extern "C" bool eventEnd__17dEvLib_callback_cFv();
extern "C" void __dt__13daObjSwHang_cFv();
extern "C" void func_80CFD1A8(void* _this, u8*);
extern "C" static void func_80CFD1C4();
extern "C" static void func_80CFD1CC();
extern "C" extern char const* const d_a_obj_swhang__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void offSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void eventUpdate__17dEvLib_callback_cFv();
extern "C" void orderEvent__17dEvLib_callback_cFiii();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void __ct__16dBgS_MoveBgActorFv();
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
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void getName__10JUTNameTabCFUs();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__16dBgS_MoveBgActor[10];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" extern u8 data_80CFD4D0[4];

//
// Declarations:
//

/* ############################################################################################## */
/* 80CFD1DC-80CFD1F0 000000 0014+00 4/4 0/0 0/0 .rodata          l_bmdIdx */
SECTION_RODATA static u8 const l_bmdIdx[20] = {
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,
    0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04,
};
COMPILER_STRIP_GATE(0x80CFD1DC, &l_bmdIdx);

/* 80CFD1F0-80CFD204 000014 0014+00 1/1 0/0 0/0 .rodata          l_dzbIdx */
SECTION_RODATA static u8 const l_dzbIdx[20] = {
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00,
    0x00, 0x07, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x07,
};
COMPILER_STRIP_GATE(0x80CFD1F0, &l_dzbIdx);

/* 80CFD204-80CFD218 000028 0014+00 1/1 0/0 0/0 .rodata          l_dzbIdx2 */
SECTION_RODATA static u8 const l_dzbIdx2[20] = {
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00,
    0x00, 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08,
};
COMPILER_STRIP_GATE(0x80CFD204, &l_dzbIdx2);

/* 80CFD218-80CFD22C 00003C 0014+00 1/3 0/0 0/0 .rodata          l_pull_length */
SECTION_RODATA static u8 const l_pull_length[20] = {
    0x42, 0xC8, 0x00, 0x00, 0x42, 0xC8, 0x00, 0x00, 0x43, 0x02,
    0x00, 0x00, 0x42, 0xC8, 0x00, 0x00, 0x43, 0x48, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CFD218, &l_pull_length);

/* 80CFD22C-80CFD240 000050 0014+00 1/1 0/0 0/0 .rodata          l_heap_size */
SECTION_RODATA static u8 const l_heap_size[20] = {
    0x00, 0x00, 0x19, 0x80, 0x00, 0x00, 0x19, 0x80, 0x00, 0x00,
    0x19, 0x80, 0x00, 0x00, 0x20, 0x30, 0x00, 0x00, 0x20, 0x30,
};
COMPILER_STRIP_GATE(0x80CFD22C, &l_heap_size);

/* 80CFD240-80CFD244 000064 0004+00 2/4 0/0 0/0 .rodata          @3681 */
SECTION_RODATA static u8 const lit_3681[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80CFD240, &lit_3681);

/* 80CFB938-80CFB9D8 000078 00A0+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static void nodeCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80CFB9D8-80CFBA60 000118 0088+00 1/1 0/0 0/0 .text            initBaseMtx__13daObjSwHang_cFv */
void daObjSwHang_c::initBaseMtx() {
    // NONMATCHING
}

/* 80CFBA60-80CFBAC8 0001A0 0068+00 2/2 0/0 0/0 .text            setBaseMtx__13daObjSwHang_cFv */
void daObjSwHang_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CFD274-80CFD274 000098 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CFD274 = "S_bura_A";
SECTION_DEAD static char const* const stringBase_80CFD27D = "S_bura_B";
SECTION_DEAD static char const* const stringBase_80CFD286 = "S_bura_7a";
SECTION_DEAD static char const* const stringBase_80CFD290 = "S_bura_7b";
SECTION_DEAD static char const* const stringBase_80CFD29A = "S_bura_7c";
SECTION_DEAD static char const* const stringBase_80CFD2A4 = "totte";
SECTION_DEAD static char const* const stringBase_80CFD2AA = "hook";
SECTION_DEAD static char const* const stringBase_80CFD2AF = "tottel";
#pragma pop

/* 80CFD2B8-80CFD2C4 000000 000C+00 2/2 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80CFD2C4-80CFD2D8 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80CFD2D8-80CFD2EC -00001 0014+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName[5] = {
    (void*)&d_a_obj_swhang__stringBase0,
    (void*)(((char*)&d_a_obj_swhang__stringBase0) + 0x9),
    (void*)(((char*)&d_a_obj_swhang__stringBase0) + 0x12),
    (void*)(((char*)&d_a_obj_swhang__stringBase0) + 0x1C),
    (void*)(((char*)&d_a_obj_swhang__stringBase0) + 0x26),
};

/* 80CFD2EC-80CFD300 -00001 0014+00 0/1 0/0 0/0 .data            l_pull_jnt */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_pull_jnt[5] = {
    (void*)(((char*)&d_a_obj_swhang__stringBase0) + 0x30),
    (void*)(((char*)&d_a_obj_swhang__stringBase0) + 0x36),
    (void*)(((char*)&d_a_obj_swhang__stringBase0) + 0x36),
    (void*)(((char*)&d_a_obj_swhang__stringBase0) + 0x30),
    (void*)(((char*)&d_a_obj_swhang__stringBase0) + 0x3B),
};
#pragma pop

/* 80CFD300-80CFD33C 000048 003C+00 3/3 0/0 0/0 .data            l_hang_offset */
SECTION_DATA static u8 l_hang_offset[60] = {
    0x00, 0x00, 0x00, 0x00, 0xC3, 0xEB, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0xC3, 0x37, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC3, 0x48,
    0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC4, 0x02, 0x00, 0x00, 0x41,
    0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC4, 0x7C, 0x80, 0x00, 0x41, 0x20, 0x00, 0x00,
};

/* 80CFD33C-80CFD37C 000084 0040+00 0/1 0/0 0/0 .data            l_sph_src */
#pragma push
#pragma force_active on
static dCcD_SrcSph l_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x0, 0x10}, 0x19}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 80.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 80CFD37C-80CFD3BC 0000C4 0040+00 0/1 0/0 0/0 .data            l_sph_src2 */
#pragma push
#pragma force_active on
static dCcD_SrcSph l_sph_src2 = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x4000, 0x11}, 0x18}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 80.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 80CFBAC8-80CFBCB8 000208 01F0+00 1/0 0/0 0/0 .text            Create__13daObjSwHang_cFv */
int daObjSwHang_c::Create() {
    // NONMATCHING
}

/* 80CFBCB8-80CFBDD0 0003F8 0118+00 1/0 0/0 0/0 .text            CreateHeap__13daObjSwHang_cFv */
// int daObjSwHang_c::CreateHeap() {
extern "C" void CreateHeap__13daObjSwHang_cFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CFD3BC-80CFD3C8 -00001 000C+00 0/1 0/0 0/0 .data            @4064 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4064[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeOffWait__13daObjSwHang_cFv,
};
#pragma pop

/* 80CFD3C8-80CFD3D4 -00001 000C+00 0/1 0/0 0/0 .data            @4065 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4065[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeOnWait__13daObjSwHang_cFv,
};
#pragma pop

/* 80CFD3D4-80CFD3EC 00011C 0018+00 0/1 0/0 0/0 .data            l_func$4063 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_func[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80CFD3EC-80CFD40C -00001 0020+00 1/0 0/0 0/0 .data            daObjSwHang_METHODS */
static actor_method_class daObjSwHang_METHODS = {
    (process_method_func)daObjSwHang_create1st__FP13daObjSwHang_c,
    (process_method_func)daObjSwHang_MoveBGDelete__FP13daObjSwHang_c,
    (process_method_func)daObjSwHang_MoveBGExecute__FP13daObjSwHang_c,
    0,
    (process_method_func)daObjSwHang_MoveBGDraw__FP13daObjSwHang_c,
};

/* 80CFD40C-80CFD43C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_SwHang */
extern actor_process_profile_definition g_profile_Obj_SwHang = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_SwHang,        // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daObjSwHang_c),  // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  516,                    // mPriority
  &daObjSwHang_METHODS,   // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80CFD43C-80CFD448 000184 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80CFD448-80CFD454 000190 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80CFD454-80CFD460 00019C 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80CFD460-80CFD46C 0001A8 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80CFD46C-80CFD484 0001B4 0018+00 4/4 0/0 0/0 .data            __vt__17dEvLib_callback_c */
SECTION_DATA extern void* __vt__17dEvLib_callback_c[6] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17dEvLib_callback_cFv,
    (void*)eventStart__17dEvLib_callback_cFv,
    (void*)eventRun__17dEvLib_callback_cFv,
    (void*)eventEnd__17dEvLib_callback_cFv,
};

/* 80CFD484-80CFD4CC 0001CC 0048+00 3/3 0/0 0/0 .data            __vt__13daObjSwHang_c */
SECTION_DATA extern void* __vt__13daObjSwHang_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__13daObjSwHang_cFv,
    (void*)Create__13daObjSwHang_cFv,
    (void*)Execute__13daObjSwHang_cFPPA3_A4_f,
    (void*)Draw__13daObjSwHang_cFv,
    (void*)Delete__13daObjSwHang_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80CFD1CC,
    (void*)func_80CFD1C4,
    (void*)eventRun__17dEvLib_callback_cFv,
    (void*)eventEnd__17dEvLib_callback_cFv,
    (void*)eventStart__13daObjSwHang_cFv,
    (void*)__dt__13daObjSwHang_cFv,
};

/* 80CFBDD0-80CFBF60 000510 0190+00 1/1 0/0 0/0 .text            create1st__13daObjSwHang_cFv */
void daObjSwHang_c::create1st() {
    // NONMATCHING
}

/* 80CFBF60-80CFBFA8 0006A0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80CFBFA8-80CFBFF0 0006E8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80CFBFF0-80CFC04C 000730 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80CFC04C-80CFC114 00078C 00C8+00 1/1 0/0 0/0 .text            calcHangPos__13daObjSwHang_cFv */
void daObjSwHang_c::calcHangPos() {
    // NONMATCHING
}

/* 80CFC114-80CFC194 000854 0080+00 4/4 0/0 0/0 .text            checkDown__13daObjSwHang_cFv */
void daObjSwHang_c::checkDown() {
    // NONMATCHING
}

/* 80CFC194-80CFC1F4 0008D4 0060+00 2/2 0/0 0/0 .text            changeOnStatus__13daObjSwHang_cFv
 */
void daObjSwHang_c::changeOnStatus() {
    // NONMATCHING
}

/* 80CFC1F4-80CFC254 000934 0060+00 1/1 0/0 0/0 .text            changeOffStatus__13daObjSwHang_cFv
 */
void daObjSwHang_c::changeOffStatus() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CFD244-80CFD248 000068 0004+00 0/3 0/0 0/0 .rodata          @4056 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4056 = 1.0f;
COMPILER_STRIP_GATE(0x80CFD244, &lit_4056);
#pragma pop

/* 80CFD248-80CFD24C 00006C 0004+00 0/3 0/0 0/0 .rodata          @4057 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4057 = -1.0f;
COMPILER_STRIP_GATE(0x80CFD248, &lit_4057);
#pragma pop

/* 80CFD24C-80CFD250 000070 0004+00 0/1 0/0 0/0 .rodata          @4058 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4058 = 100.0f;
COMPILER_STRIP_GATE(0x80CFD24C, &lit_4058);
#pragma pop

/* 80CFD250-80CFD254 000074 0004+00 0/1 0/0 0/0 .rodata          @4059 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4059 = 150.0f;
COMPILER_STRIP_GATE(0x80CFD250, &lit_4059);
#pragma pop

/* 80CFC254-80CFC4C4 000994 0270+00 1/0 0/0 0/0 .text            Execute__13daObjSwHang_cFPPA3_A4_f
 */
int daObjSwHang_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* 80CFC4C4-80CFC550 000C04 008C+00 1/1 0/0 0/0 .text            action__13daObjSwHang_cFv */
void daObjSwHang_c::action() {
    // NONMATCHING
}

/* 80CFC550-80CFC698 000C90 0148+00 1/1 0/0 0/0 .text            checkDownSw__13daObjSwHang_cFv */
void daObjSwHang_c::checkDownSw() {
    // NONMATCHING
}

/* 80CFC698-80CFC6AC 000DD8 0014+00 2/2 0/0 0/0 .text            init_modeOffWait__13daObjSwHang_cFv
 */
void daObjSwHang_c::init_modeOffWait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CFD254-80CFD258 000078 0004+00 0/1 0/0 0/0 .rodata          @4224 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4224 = 5.0f;
COMPILER_STRIP_GATE(0x80CFD254, &lit_4224);
#pragma pop

/* 80CFD258-80CFD25C 00007C 0004+00 0/1 0/0 0/0 .rodata          @4225 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4225 = -3.0f / 5.0f;
COMPILER_STRIP_GATE(0x80CFD258, &lit_4225);
#pragma pop

/* 80CFD25C-80CFD260 000080 0004+00 0/1 0/0 0/0 .rodata          @4226 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4226 = 15.0f;
COMPILER_STRIP_GATE(0x80CFD25C, &lit_4226);
#pragma pop

/* 80CFD260-80CFD264 000084 0004+00 0/1 0/0 0/0 .rodata          @4227 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4227 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80CFD260, &lit_4227);
#pragma pop

/* 80CFD264-80CFD268 000088 0004+00 0/2 0/0 0/0 .rodata          @4228 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4228 = -7.0f;
COMPILER_STRIP_GATE(0x80CFD264, &lit_4228);
#pragma pop

/* 80CFD268-80CFD26C 00008C 0004+00 0/2 0/0 0/0 .rodata          @4229 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4229 = -3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80CFD268, &lit_4229);
#pragma pop

/* 80CFD26C-80CFD274 000090 0008+00 0/1 0/0 0/0 .rodata          @4232 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4232[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CFD26C, &lit_4232);
#pragma pop

/* 80CFC6AC-80CFCA34 000DEC 0388+00 1/0 0/0 0/0 .text            modeOffWait__13daObjSwHang_cFv */
void daObjSwHang_c::modeOffWait() {
    // NONMATCHING
}

/* 80CFCA34-80CFCA40 001174 000C+00 2/2 0/0 0/0 .text            init_modeOnWait__13daObjSwHang_cFv
 */
void daObjSwHang_c::init_modeOnWait() {
    // NONMATCHING
}

/* 80CFCA40-80CFCCE0 001180 02A0+00 1/0 0/0 0/0 .text            modeOnWait__13daObjSwHang_cFv */
void daObjSwHang_c::modeOnWait() {
    // NONMATCHING
}

/* 80CFCCE0-80CFCD04 001420 0024+00 2/1 0/0 0/0 .text            eventStart__13daObjSwHang_cFv */
void daObjSwHang_c::eventStart() {
    // NONMATCHING
}

/* 80CFCD04-80CFCD98 001444 0094+00 1/0 0/0 0/0 .text            Draw__13daObjSwHang_cFv */
int daObjSwHang_c::Draw() {
    // NONMATCHING
}

/* 80CFCD98-80CFCE0C 0014D8 0074+00 1/0 0/0 0/0 .text            Delete__13daObjSwHang_cFv */
int daObjSwHang_c::Delete() {
    // NONMATCHING
}

/* 80CFCE0C-80CFCF20 00154C 0114+00 1/0 0/0 0/0 .text daObjSwHang_create1st__FP13daObjSwHang_c */
static void daObjSwHang_create1st(daObjSwHang_c* param_0) {
    // NONMATCHING
}

/* 80CFCF20-80CFCF40 001660 0020+00 1/0 0/0 0/0 .text daObjSwHang_MoveBGDelete__FP13daObjSwHang_c
 */
static void daObjSwHang_MoveBGDelete(daObjSwHang_c* param_0) {
    // NONMATCHING
}

/* 80CFCF40-80CFCF60 001680 0020+00 1/0 0/0 0/0 .text daObjSwHang_MoveBGExecute__FP13daObjSwHang_c
 */
static void daObjSwHang_MoveBGExecute(daObjSwHang_c* param_0) {
    // NONMATCHING
}

/* 80CFCF60-80CFCF8C 0016A0 002C+00 1/0 0/0 0/0 .text daObjSwHang_MoveBGDraw__FP13daObjSwHang_c */
static void daObjSwHang_MoveBGDraw(daObjSwHang_c* param_0) {
    // NONMATCHING
}

/* 80CFCF8C-80CFCFD4 0016CC 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80CFCFD4-80CFD01C 001714 0048+00 1/0 0/0 0/0 .text            __dt__17dEvLib_callback_cFv */
// dEvLib_callback_c::~dEvLib_callback_c() {
extern "C" void __dt__17dEvLib_callback_cFv() {
    // NONMATCHING
}

/* 80CFD01C-80CFD024 00175C 0008+00 1/0 0/0 0/0 .text            eventStart__17dEvLib_callback_cFv
 */
// int dEvLib_callback_c::eventStart() {
extern "C" bool eventStart__17dEvLib_callback_cFv() {
    return true;
}

/* 80CFD024-80CFD02C 001764 0008+00 2/0 0/0 0/0 .text            eventRun__17dEvLib_callback_cFv */
// int dEvLib_callback_c::eventRun() {
extern "C" bool eventRun__17dEvLib_callback_cFv() {
    return true;
}

/* 80CFD02C-80CFD034 00176C 0008+00 2/0 0/0 0/0 .text            eventEnd__17dEvLib_callback_cFv */
// int dEvLib_callback_c::eventEnd() {
extern "C" bool eventEnd__17dEvLib_callback_cFv() {
    return true;
}

/* 80CFD034-80CFD1A8 001774 0174+00 2/1 0/0 0/0 .text            __dt__13daObjSwHang_cFv */
daObjSwHang_c::~daObjSwHang_c() {
    // NONMATCHING
}

/* 80CFD1A8-80CFD1C4 0018E8 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<Uc>__FPUc */
extern "C" void func_80CFD1A8(void* _this, u8* param_0) {
    // NONMATCHING
}

/* 80CFD1C4-80CFD1CC 001904 0008+00 1/0 0/0 0/0 .text            @1440@eventStart__13daObjSwHang_cFv
 */
static void func_80CFD1C4() {
    // NONMATCHING
}

/* 80CFD1CC-80CFD1D4 00190C 0008+00 1/0 0/0 0/0 .text            @1440@__dt__13daObjSwHang_cFv */
static void func_80CFD1CC() {
    // NONMATCHING
}

/* 80CFD274-80CFD274 000098 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */