/**
 * @file d_a_obj_lv6bemos.cpp
 * 
*/

#include "d/actor/d_a_obj_lv6bemos.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" static void nodeCallBack__FP8J3DJointi();
extern "C" void initBaseMtx__11daObjL6Bm_cFv();
extern "C" void setBaseMtx__11daObjL6Bm_cFv();
extern "C" void Create__11daObjL6Bm_cFv();
extern "C" void CreateHeap__11daObjL6Bm_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void create1st__11daObjL6Bm_cFv();
extern "C" void Execute__11daObjL6Bm_cFPPA3_A4_f();
extern "C" void action__11daObjL6Bm_cFv();
extern "C" void actionWait__11daObjL6Bm_cFv();
extern "C" void actionFindPlayer__11daObjL6Bm_cFv();
extern "C" void actionAttack__11daObjL6Bm_cFv();
extern "C" void Draw__11daObjL6Bm_cFv();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" void Delete__11daObjL6Bm_cFv();
extern "C" static void daObjL6Bm_create1st__FP11daObjL6Bm_c();
extern "C" void __dt__14dBgS_ObjGndChkFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" static void daObjL6Bm_MoveBGDelete__FP11daObjL6Bm_c();
extern "C" static void daObjL6Bm_MoveBGExecute__FP11daObjL6Bm_c();
extern "C" static void daObjL6Bm_MoveBGDraw__FP11daObjL6Bm_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void func_80C7DE90(void* _this, u8*);
extern "C" static void func_80C7DEAC();
extern "C" static void func_80C7DEB4();
extern "C" static void func_80C7DEBC();
extern "C" extern char const* const d_a_obj_lv6bemos__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void push__14mDoMtx_stack_cFv();
extern "C" void pop__14mDoMtx_stack_cFv();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb();
extern "C" void entry__13mDoExt_bckAnmFP12J3DModelDataf();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void setSimple__21dDlst_shadowControl_cFP4cXyzffP4cXyzsfP9_GXTexObj();
extern "C" void GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
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
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CpsFRC11dCcD_SrcCps();
extern "C" void CalcAtVec__8dCcD_CpsFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void cM_atan2s__Fff();
extern "C" void __ct__8cM3dGCpsFv();
extern "C" void Set__8cM3dGCpsFRC9cM3dGCpsS();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_25();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_25();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__8dCcD_Cps[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__12cCcD_CpsAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" extern u8 data_80C7E138[4];

//
// Declarations:
//

/* ############################################################################################## */
/* 80C7DECC-80C7DF0C 000000 0040+00 5/5 0/0 0/0 .rodata          l_sph_src */
const static dCcD_SrcSph l_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x1e}, {0xd8fbfdff, 0x11}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x8}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 50.0f} // mSph
    } // mSphAttr
};

/* 80C7DF0C-80C7DF10 000040 0004+00 0/1 0/0 0/0 .rodata          @3728 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3728 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C7DF0C, &lit_3728);
#pragma pop

/* 80C7DF10-80C7DF14 000044 0004+00 0/1 0/0 0/0 .rodata          @3729 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3729 = 20.0f;
COMPILER_STRIP_GATE(0x80C7DF10, &lit_3729);
#pragma pop

/* 80C7DF14-80C7DF18 000048 0004+00 0/1 0/0 0/0 .rodata          @3730 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3730 = 200.0f;
COMPILER_STRIP_GATE(0x80C7DF14, &lit_3730);
#pragma pop

/* 80C7DF18-80C7DF1C 00004C 0004+00 0/3 0/0 0/0 .rodata          @3731 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3731[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C7DF18, &lit_3731);
#pragma pop

/* 80C7DF1C-80C7DF24 000050 0008+00 0/1 0/0 0/0 .rodata          @3732 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3732[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C7DF1C, &lit_3732);
#pragma pop

/* 80C7DF24-80C7DF2C 000058 0008+00 0/1 0/0 0/0 .rodata          @3733 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3733[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C7DF24, &lit_3733);
#pragma pop

/* 80C7DF2C-80C7DF34 000060 0008+00 0/1 0/0 0/0 .rodata          @3734 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3734[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C7DF2C, &lit_3734);
#pragma pop

/* 80C7DF34-80C7DF38 000068 0004+00 0/1 0/0 0/0 .rodata          @3735 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3735 = 1200.0f;
COMPILER_STRIP_GATE(0x80C7DF34, &lit_3735);
#pragma pop

/* 80C7CB18-80C7CE24 000078 030C+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static void nodeCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80C7CE24-80C7CE60 000384 003C+00 1/1 0/0 0/0 .text            initBaseMtx__11daObjL6Bm_cFv */
void daObjL6Bm_c::initBaseMtx() {
    // NONMATCHING
}

/* 80C7CE60-80C7CED4 0003C0 0074+00 2/2 0/0 0/0 .text            setBaseMtx__11daObjL6Bm_cFv */
void daObjL6Bm_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C7DF6C-80C7DF6C 0000A0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C7DF6C = "Obj_lv6bm";
#pragma pop

/* 80C7DF78-80C7DF84 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80C7DF84-80C7DF98 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80C7DF98-80C7DF9C -00001 0004+00 4/4 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_lv6bemos__stringBase0;

/* 80C7DF9C-80C7DFB4 000024 0018+00 1/1 0/0 0/0 .data            l_cull_box */
SECTION_DATA static u8 l_cull_box[24] = {
    0xC3, 0x48, 0x00, 0x00, 0xC2, 0xC8, 0x00, 0x00, 0xC3, 0x48, 0x00, 0x00,
    0x43, 0x48, 0x00, 0x00, 0x42, 0xC8, 0x00, 0x00, 0x43, 0x48, 0x00, 0x00,
};

/* 80C7DFB4-80C7E000 00003C 004C+00 1/1 0/0 0/0 .data            l_cps_src */
static dCcD_SrcCps l_cps_src = {
    {
        {0x0, {{0x100, 0x1, 0x1d}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_SWORD, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, {0.0f, 0.0f, 0.0f}, 50.0f}, // mCps
    } // mCpsAttr
};

/* 80C7CED4-80C7CFD0 000434 00FC+00 1/0 0/0 0/0 .text            Create__11daObjL6Bm_cFv */
void daObjL6Bm_c::Create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C7DF38-80C7DF3C 00006C 0004+00 2/4 0/0 0/0 .rodata          @3880 */
SECTION_RODATA static f32 const lit_3880 = 1.0f;
COMPILER_STRIP_GATE(0x80C7DF38, &lit_3880);

/* 80C7DF3C-80C7DF44 000070 0008+00 1/1 0/0 0/0 .rodata          @3882 */
SECTION_RODATA static u8 const lit_3882[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C7DF3C, &lit_3882);

/* 80C7E000-80C7E00C -00001 000C+00 0/1 0/0 0/0 .data            @3939 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3939[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionWait__11daObjL6Bm_cFv,
};
#pragma pop

/* 80C7E00C-80C7E018 -00001 000C+00 0/1 0/0 0/0 .data            @3940 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3940[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionFindPlayer__11daObjL6Bm_cFv,
};
#pragma pop

/* 80C7E018-80C7E024 -00001 000C+00 0/1 0/0 0/0 .data            @3941 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3941[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionAttack__11daObjL6Bm_cFv,
};
#pragma pop

/* 80C7E024-80C7E048 0000AC 0024+00 0/1 0/0 0/0 .data            l_func$3938 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_func[36] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80C7E048-80C7E068 -00001 0020+00 1/0 0/0 0/0 .data            daObjL6Bm_METHODS */
static actor_method_class daObjL6Bm_METHODS = {
    (process_method_func)daObjL6Bm_create1st__FP11daObjL6Bm_c,
    (process_method_func)daObjL6Bm_MoveBGDelete__FP11daObjL6Bm_c,
    (process_method_func)daObjL6Bm_MoveBGExecute__FP11daObjL6Bm_c,
    0,
    (process_method_func)daObjL6Bm_MoveBGDraw__FP11daObjL6Bm_c,
};

/* 80C7E068-80C7E098 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv6bemos */
extern actor_process_profile_definition g_profile_Obj_Lv6bemos = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Lv6bemos,      // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjL6Bm_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  630,                    // mPriority
  &daObjL6Bm_METHODS,     // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80C7E098-80C7E0A4 000120 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80C7E0A4-80C7E0B0 00012C 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80C7E0B0-80C7E0E0 000138 0030+00 2/2 0/0 0/0 .data            __vt__14dBgS_ObjGndChk */
SECTION_DATA extern void* __vt__14dBgS_ObjGndChk[12] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14dBgS_ObjGndChkFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C7DEAC,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C7DEBC,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C7DEB4,
};

/* 80C7E0E0-80C7E0EC 000168 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80C7E0EC-80C7E0F8 000174 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80C7E0F8-80C7E104 000180 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 80C7E104-80C7E110 00018C 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80C7CFD0-80C7D2B0 000530 02E0+00 1/0 0/0 0/0 .text            CreateHeap__11daObjL6Bm_cFv */
void daObjL6Bm_c::CreateHeap() {
    // NONMATCHING
}

/* 80C7D2B0-80C7D2F8 000810 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80C7D2F8-80C7D3A4 000858 00AC+00 1/1 0/0 0/0 .text            create1st__11daObjL6Bm_cFv */
void daObjL6Bm_c::create1st() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C7DF44-80C7DF50 000078 000C+00 1/1 0/0 0/0 .rodata          l_particle_id$3914 */
SECTION_RODATA static u8 const l_particle_id[12] = {
    0x82, 0x8F, 0x82, 0x90, 0x82, 0x91, 0x82, 0x92, 0x82, 0x93, 0x82, 0x94,
};
COMPILER_STRIP_GATE(0x80C7DF44, &l_particle_id);

/* 80C7D3A4-80C7D4F4 000904 0150+00 1/0 0/0 0/0 .text            Execute__11daObjL6Bm_cFPPA3_A4_f */
void daObjL6Bm_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* 80C7D4F4-80C7D598 000A54 00A4+00 1/1 0/0 0/0 .text            action__11daObjL6Bm_cFv */
void daObjL6Bm_c::action() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C7DF50-80C7DF54 000084 0004+00 0/2 0/0 0/0 .rodata          @3993 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3993 = 50.0f;
COMPILER_STRIP_GATE(0x80C7DF50, &lit_3993);
#pragma pop

/* 80C7DF54-80C7DF5C 000088 0004+04 0/2 0/0 0/0 .rodata          @3994 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3994[1 + 1 /* padding */] = {
    1000.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80C7DF54, &lit_3994);
#pragma pop

/* 80C7DF5C-80C7DF64 000090 0008+00 0/2 0/0 0/0 .rodata          @3996 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3996[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C7DF5C, &lit_3996);
#pragma pop

/* 80C7D598-80C7D6CC 000AF8 0134+00 1/0 0/0 0/0 .text            actionWait__11daObjL6Bm_cFv */
void daObjL6Bm_c::actionWait() {
    // NONMATCHING
}

/* 80C7D6CC-80C7D894 000C2C 01C8+00 1/0 0/0 0/0 .text            actionFindPlayer__11daObjL6Bm_cFv
 */
void daObjL6Bm_c::actionFindPlayer() {
    // NONMATCHING
}

/* 80C7D894-80C7D898 000DF4 0004+00 1/0 0/0 0/0 .text            actionAttack__11daObjL6Bm_cFv */
void daObjL6Bm_c::actionAttack() {
    /* empty function */
}

/* ############################################################################################## */
/* 80C7DF64-80C7DF68 000098 0004+00 0/1 0/0 0/0 .rodata          @4160 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4160 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80C7DF64, &lit_4160);
#pragma pop

/* 80C7DF68-80C7DF6C 00009C 0004+00 0/1 0/0 0/0 .rodata          @4161 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4161 = 120.0f;
COMPILER_STRIP_GATE(0x80C7DF68, &lit_4161);
#pragma pop

/* 80C7D898-80C7DA74 000DF8 01DC+00 1/0 0/0 0/0 .text            Draw__11daObjL6Bm_cFv */
void daObjL6Bm_c::Draw() {
    // NONMATCHING
}

/* 80C7DA74-80C7DABC 000FD4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
// cM3dGPla::~cM3dGPla() {
extern "C" void __dt__8cM3dGPlaFv() {
    // NONMATCHING
}

/* 80C7DABC-80C7DAF0 00101C 0034+00 1/0 0/0 0/0 .text            Delete__11daObjL6Bm_cFv */
void daObjL6Bm_c::Delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C7E110-80C7E138 000198 0028+00 1/1 0/0 0/0 .data            __vt__11daObjL6Bm_c */
SECTION_DATA extern void* __vt__11daObjL6Bm_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__11daObjL6Bm_cFv,
    (void*)Create__11daObjL6Bm_cFv,
    (void*)Execute__11daObjL6Bm_cFPPA3_A4_f,
    (void*)Draw__11daObjL6Bm_cFv,
    (void*)Delete__11daObjL6Bm_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80C7DAF0-80C7DC78 001050 0188+00 1/0 0/0 0/0 .text daObjL6Bm_create1st__FP11daObjL6Bm_c */
static void daObjL6Bm_create1st(daObjL6Bm_c* param_0) {
    // NONMATCHING
}

/* 80C7DC78-80C7DCF0 0011D8 0078+00 4/3 0/0 0/0 .text            __dt__14dBgS_ObjGndChkFv */
// dBgS_ObjGndChk::~dBgS_ObjGndChk() {
extern "C" void __dt__14dBgS_ObjGndChkFv() {
    // NONMATCHING
}

/* 80C7DCF0-80C7DD38 001250 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80C7DD38-80C7DD80 001298 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80C7DD80-80C7DDDC 0012E0 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80C7DDDC-80C7DDFC 00133C 0020+00 1/0 0/0 0/0 .text daObjL6Bm_MoveBGDelete__FP11daObjL6Bm_c */
static void daObjL6Bm_MoveBGDelete(daObjL6Bm_c* param_0) {
    // NONMATCHING
}

/* 80C7DDFC-80C7DE1C 00135C 0020+00 1/0 0/0 0/0 .text daObjL6Bm_MoveBGExecute__FP11daObjL6Bm_c */
static void daObjL6Bm_MoveBGExecute(daObjL6Bm_c* param_0) {
    // NONMATCHING
}

/* 80C7DE1C-80C7DE48 00137C 002C+00 1/0 0/0 0/0 .text daObjL6Bm_MoveBGDraw__FP11daObjL6Bm_c */
static void daObjL6Bm_MoveBGDraw(daObjL6Bm_c* param_0) {
    // NONMATCHING
}

/* 80C7DE48-80C7DE90 0013A8 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80C7DE90-80C7DEAC 0013F0 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<Uc>__FPUc */
extern "C" void func_80C7DE90(void* _this, u8* param_0) {
    // NONMATCHING
}

/* 80C7DEAC-80C7DEB4 00140C 0008+00 1/0 0/0 0/0 .text            @20@__dt__14dBgS_ObjGndChkFv */
static void func_80C7DEAC() {
    // NONMATCHING
}

/* 80C7DEB4-80C7DEBC 001414 0008+00 1/0 0/0 0/0 .text            @76@__dt__14dBgS_ObjGndChkFv */
static void func_80C7DEB4() {
    // NONMATCHING
}

/* 80C7DEBC-80C7DEC4 00141C 0008+00 1/0 0/0 0/0 .text            @60@__dt__14dBgS_ObjGndChkFv */
static void func_80C7DEBC() {
    // NONMATCHING
}

/* 80C7DF6C-80C7DF6C 0000A0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
