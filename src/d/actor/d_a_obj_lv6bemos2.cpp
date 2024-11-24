/**
 * @file d_a_obj_lv6bemos2.cpp
 * 
*/

#include "d/actor/d_a_obj_lv6bemos2.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"
#include "d/d_camera.h"


//
// Forward References:
//

extern "C" static void nodeCallBack__FP8J3DJointi();
extern "C" void initBaseMtx__12daObjLv6Bm_cFv();
extern "C" void setBaseMtx__12daObjLv6Bm_cFv();
extern "C" void Create__12daObjLv6Bm_cFv();
extern "C" void CreateHeap__12daObjLv6Bm_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void create1st__12daObjLv6Bm_cFv();
extern "C" void Execute__12daObjLv6Bm_cFPPA3_A4_f();
extern "C" void action__12daObjLv6Bm_cFv();
extern "C" void calcBeam__12daObjLv6Bm_cFv();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" void checkFindPlayer__12daObjLv6Bm_cFv();
extern "C" void checkSearchPlayer__12daObjLv6Bm_cFv();
extern "C" void getSearchDistance__12daObjLv6Bm_cFv();
extern "C" void getBeamSearchDistance__12daObjLv6Bm_cFv();
extern "C" void effect_proc__12daObjLv6Bm_cFv();
extern "C" void effectWait__12daObjLv6Bm_cFv();
extern "C" void initEffectSet0__12daObjLv6Bm_cFv();
extern "C" void effectSet0__12daObjLv6Bm_cFv();
extern "C" void initActionSwWait__12daObjLv6Bm_cFv();
extern "C" void actionSwWait__12daObjLv6Bm_cFv();
extern "C" void initActionWarning__12daObjLv6Bm_cFv();
extern "C" void actionWarning__12daObjLv6Bm_cFv();
extern "C" void initActionFindPlayer__12daObjLv6Bm_cFv();
extern "C" void actionFindPlayer__12daObjLv6Bm_cFv();
extern "C" void initActionAttack__12daObjLv6Bm_cFv();
extern "C" void actionAttack__12daObjLv6Bm_cFv();
extern "C" void initActionDead__12daObjLv6Bm_cFv();
extern "C" void actionDead__12daObjLv6Bm_cFv();
extern "C" void initActionEnd__12daObjLv6Bm_cFv();
extern "C" void actionEnd__12daObjLv6Bm_cFv();
extern "C" void Draw__12daObjLv6Bm_cFv();
extern "C" void Delete__12daObjLv6Bm_cFv();
extern "C" static void daObjLv6Bm_create1st__FP12daObjLv6Bm_c();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" static void daObjLv6Bm_MoveBGDelete__FP12daObjLv6Bm_c();
extern "C" static void daObjLv6Bm_MoveBGExecute__FP12daObjLv6Bm_c();
extern "C" static void daObjLv6Bm_MoveBGDraw__FP12daObjLv6Bm_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void func_80C81BB0(void* _this, u16*);
extern "C" void func_80C81BCC(void* _this, u8*);
extern "C" void __sinit_d_a_obj_lv6bemos2_cpp();
extern "C" extern char const* const d_a_obj_lv6bemos2__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb();
extern "C" void entry__13mDoExt_bckAnmFP12J3DModelDataf();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_btkAnmRemove__FP12J3DModelData();
extern "C" void mDoExt_brkAnmRemove__FP12J3DModelData();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void lineCheck__11fopAcM_lc_cFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla();
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void GetAc__22dCcD_GAtTgCoCommonBaseFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CpsFRC11dCcD_SrcCps();
extern "C" void CalcAtVec__8dCcD_CpsFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void ForceLockOn__9dCamera_cFP10fopAc_ac_c();
extern "C" void dCam_getBody__Fv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void normalizeZP__4cXyzFv();
extern "C" bool __ne__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cBgW_CheckBGround__Ff();
extern "C" void __ct__8cM3dGCpsFv();
extern "C" void Set__8cM3dGCpsFRC4cXyzRC4cXyzf();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void cLib_chaseUC__FPUcUcUc();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_chasePos__FP4cXyzRC4cXyzf();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void func_802807E0();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void deleteObject__14Z2SoundObjBaseFv();
extern "C" void __ct__16Z2SoundObjSimpleFv();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void getName__10JUTNameTabCFUs();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__8dCcD_Cps[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__12cCcD_CpsAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mLineCheck__11fopAcM_lc_c[112];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" extern u8 struct_80C81FE8[4];

//
// Declarations:
//

/* 80C7E1B8-80C7E30C 000078 0154+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static void nodeCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C81C2C-80C81C38 000000 000C+00 9/9 0/0 0/0 .rodata          l_eye_offset */
SECTION_RODATA static u8 const l_eye_offset[12] = {
    0x00, 0x00, 0x00, 0x00, 0x43, 0xD7, 0x00, 0x00, 0x42, 0xA0, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C81C2C, &l_eye_offset);

/* 80C81C38-80C81C44 00000C 000C+00 0/1 0/0 0/0 .rodata          l_beam_offsetPos */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_beam_offsetPos[12] = {
    0x00, 0x00, 0x00, 0x00, 0x42, 0xC4, 0x00, 0x00, 0x42, 0xFA, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C81C38, &l_beam_offsetPos);
#pragma pop

/* 80C81C44-80C81C48 000018 0004+00 2/3 0/0 0/0 .rodata          @3854 */
SECTION_RODATA static f32 const lit_3854 = 0.5f;
COMPILER_STRIP_GATE(0x80C81C44, &lit_3854);

/* 80C81C48-80C81C4C 00001C 0004+00 10/15 0/0 0/0 .rodata          @3855 */
SECTION_RODATA static f32 const lit_3855 = 1.0f;
COMPILER_STRIP_GATE(0x80C81C48, &lit_3855);

/* 80C7E30C-80C7E374 0001CC 0068+00 1/1 0/0 0/0 .text            initBaseMtx__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::initBaseMtx() {
    // NONMATCHING
}

/* 80C7E374-80C7E448 000234 00D4+00 2/2 0/0 0/0 .text            setBaseMtx__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C81C4C-80C81C54 000020 0008+00 3/4 0/0 0/0 .rodata          @4012 */
SECTION_RODATA static u8 const lit_4012[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C81C4C, &lit_4012);

/* 80C81CCC-80C81CCC 0000A0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C81CCC = "E_bm6";
SECTION_DEAD static char const* const stringBase_80C81CD2 = "bm6_eye";
SECTION_DEAD static char const* const stringBase_80C81CDA = "head";
SECTION_DEAD static char const* const stringBase_80C81CDF = "cogRed";
SECTION_DEAD static char const* const stringBase_80C81CE6 = "cogBlue";
SECTION_DEAD static char const* const stringBase_80C81CEE = "cogGreen";
SECTION_DEAD static char const* const stringBase_80C81CF7 = "cogYellow";
#pragma pop

/* 80C81D04-80C81D10 000000 000C+00 4/4 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80C81D10-80C81D24 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80C81D24-80C81D28 -00001 0004+00 9/10 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_lv6bemos2__stringBase0;

/* 80C81D28-80C81D2C -00001 0004+00 0/1 0/0 0/0 .data            l_eye_matName */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_eye_matName = (void*)(((char*)&d_a_obj_lv6bemos2__stringBase0) + 0x6);
#pragma pop

/* 80C81D2C-80C81D30 -00001 0004+00 0/1 0/0 0/0 .data            l_head_joint */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_head_joint = (void*)(((char*)&d_a_obj_lv6bemos2__stringBase0) + 0xE);
#pragma pop

/* 80C81D30-80C81D34 -00001 0004+00 0/1 0/0 0/0 .data            l_bigGear_joint */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_bigGear_joint =
    (void*)(((char*)&d_a_obj_lv6bemos2__stringBase0) + 0x13);
#pragma pop

/* 80C81D34-80C81D38 -00001 0004+00 0/1 0/0 0/0 .data            l_smallGear0_joint */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_smallGear0_joint =
    (void*)(((char*)&d_a_obj_lv6bemos2__stringBase0) + 0x1A);
#pragma pop

/* 80C81D38-80C81D3C -00001 0004+00 0/1 0/0 0/0 .data            l_smallGear1_joint */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_smallGear1_joint =
    (void*)(((char*)&d_a_obj_lv6bemos2__stringBase0) + 0x22);
#pragma pop

/* 80C81D3C-80C81D40 -00001 0004+00 0/1 0/0 0/0 .data            l_smallGear2_joint */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_smallGear2_joint =
    (void*)(((char*)&d_a_obj_lv6bemos2__stringBase0) + 0x2B);
#pragma pop

/* 80C81D40-80C81D54 00003C 0014+00 0/2 0/0 0/0 .data            l_joint_table */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_joint_table[20] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80C81D54-80C81D6C 000050 0018+00 0/1 0/0 0/0 .data            l_cull_box */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_cull_box[24] = {
    0xC4, 0x96, 0x00, 0x00, 0xC2, 0xC8, 0x00, 0x00, 0xC4, 0x96, 0x00, 0x00,
    0x44, 0x96, 0x00, 0x00, 0x43, 0xC8, 0x00, 0x00, 0x44, 0x96, 0x00, 0x00,
};
#pragma pop

/* 80C81D6C-80C81DAC 000068 0040+00 0/1 0/0 0/0 .data            l_sph_src */
#pragma push
#pragma force_active on
static dCcD_SrcSph l_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x402420, 0x11}, 0x58}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 50.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 80C81DAC-80C81DF8 0000A8 004C+00 0/1 0/0 0/0 .data            l_cps_src */
#pragma push
#pragma force_active on
static dCcD_SrcCps l_cps_src = {
    {
        {0x0, {{0x100, 0x1, 0x1d}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_SWORD, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, {0.0f, 0.0f, 0.0f}, 20.0f}, // mCps
    } // mCpsAttr
};
#pragma pop

/* 80C81DF8-80C81E3C 0000F4 0044+00 0/1 0/0 0/0 .data            l_cyl_src */
#pragma push
#pragma force_active on
static dCcD_SrcCyl l_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x1e}, {0x400, 0x11}, 0x18}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_METAL, 0x2, 0x0, 0x0, 0x3}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        120.0f, // mRadius
        200.0f // mHeight
    } // mCyl
};
#pragma pop

/* 80C7E448-80C7E764 000308 031C+00 1/0 0/0 0/0 .text            Create__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::Create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C81E3C-80C81E48 -00001 000C+00 0/1 0/0 0/0 .data            @4181 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4181[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionSwWait__12daObjLv6Bm_cFv,
};
#pragma pop

/* 80C81E48-80C81E54 -00001 000C+00 0/1 0/0 0/0 .data            @4182 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4182[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionWarning__12daObjLv6Bm_cFv,
};
#pragma pop

/* 80C81E54-80C81E60 -00001 000C+00 0/1 0/0 0/0 .data            @4183 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4183[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionFindPlayer__12daObjLv6Bm_cFv,
};
#pragma pop

/* 80C81E60-80C81E6C -00001 000C+00 0/1 0/0 0/0 .data            @4184 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4184[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionAttack__12daObjLv6Bm_cFv,
};
#pragma pop

/* 80C81E6C-80C81E78 -00001 000C+00 0/1 0/0 0/0 .data            @4185 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4185[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionDead__12daObjLv6Bm_cFv,
};
#pragma pop

/* 80C81E78-80C81E84 -00001 000C+00 0/1 0/0 0/0 .data            @4186 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4186[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionEnd__12daObjLv6Bm_cFv,
};
#pragma pop

/* 80C81E84-80C81ECC 000180 0048+00 0/1 0/0 0/0 .data            l_func$4180 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_func[72] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80C81ECC-80C81ED8 -00001 000C+00 0/1 0/0 0/0 .data            @4562 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4562[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)effectWait__12daObjLv6Bm_cFv,
};
#pragma pop

/* 80C81ED8-80C81EE4 -00001 000C+00 0/1 0/0 0/0 .data            @4563 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4563[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)effectSet0__12daObjLv6Bm_cFv,
};
#pragma pop

/* 80C81EE4-80C81EFC 0001E0 0018+00 0/1 0/0 0/0 .data            l_eff_func$4561 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_eff_func[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80C81EFC-80C81F18 -00001 001C+00 1/1 0/0 0/0 .data            @5281 */
SECTION_DATA static void* lit_5281[7] = {
    (void*)(((char*)actionDead__12daObjLv6Bm_cFv) + 0x44),
    (void*)(((char*)actionDead__12daObjLv6Bm_cFv) + 0x60),
    (void*)(((char*)actionDead__12daObjLv6Bm_cFv) + 0xE4),
    (void*)(((char*)actionDead__12daObjLv6Bm_cFv) + 0x174),
    (void*)(((char*)actionDead__12daObjLv6Bm_cFv) + 0x188),
    (void*)(((char*)actionDead__12daObjLv6Bm_cFv) + 0x1B0),
    (void*)(((char*)actionDead__12daObjLv6Bm_cFv) + 0x274),
};

/* 80C81F18-80C81F38 -00001 0020+00 1/0 0/0 0/0 .data            daObjLv6Bm_METHODS */
static actor_method_class daObjLv6Bm_METHODS = {
    (process_method_func)daObjLv6Bm_create1st__FP12daObjLv6Bm_c,
    (process_method_func)daObjLv6Bm_MoveBGDelete__FP12daObjLv6Bm_c,
    (process_method_func)daObjLv6Bm_MoveBGExecute__FP12daObjLv6Bm_c,
    0,
    (process_method_func)daObjLv6Bm_MoveBGDraw__FP12daObjLv6Bm_c,
};

/* 80C81F38-80C81F68 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv6bemos2 */
extern actor_process_profile_definition g_profile_Obj_Lv6bemos2 = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Lv6bemos2,     // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjLv6Bm_c),   // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  631,                    // mPriority
  &daObjLv6Bm_METHODS,    // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80C81F68-80C81F74 000264 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80C81F74-80C81F80 000270 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80C81F80-80C81F8C 00027C 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80C81F8C-80C81F98 000288 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80C81F98-80C81FA4 000294 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80C81FA4-80C81FB0 0002A0 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 80C81FB0-80C81FBC 0002AC 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80C7E764-80C7EB34 000624 03D0+00 1/0 0/0 0/0 .text            CreateHeap__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::CreateHeap() {
    // NONMATCHING
}

/* 80C7EB34-80C7EB7C 0009F4 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80C7EB7C-80C7EC6C 000A3C 00F0+00 1/1 0/0 0/0 .text            create1st__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::create1st() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C81C54-80C81C58 000028 0004+00 4/10 0/0 0/0 .rodata          @4173 */
SECTION_RODATA static u8 const lit_4173[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C81C54, &lit_4173);

/* 80C81C58-80C81C5C 00002C 0004+00 0/1 0/0 0/0 .rodata          @4174 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4174 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C81C58, &lit_4174);
#pragma pop

/* 80C81C5C-80C81C60 000030 0004+00 2/3 0/0 0/0 .rodata          @4175 */
SECTION_RODATA static f32 const lit_4175 = 50.0f;
COMPILER_STRIP_GATE(0x80C81C5C, &lit_4175);

/* 80C81C60-80C81C64 000034 0004+00 0/1 0/0 0/0 .rodata          @4176 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4176 = 10.0f;
COMPILER_STRIP_GATE(0x80C81C60, &lit_4176);
#pragma pop

/* 80C7EC6C-80C7EE50 000B2C 01E4+00 1/0 0/0 0/0 .text            Execute__12daObjLv6Bm_cFPPA3_A4_f
 */
void daObjLv6Bm_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C81C64-80C81C6C 000038 0006+02 0/1 0/0 0/0 .rodata          l_particle_id$4205 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_particle_id[6 + 2 /* padding */] = {
    0x88,
    0xDB,
    0x88,
    0xDC,
    0x88,
    0xDD,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C81C64, &l_particle_id);
#pragma pop

/* 80C81C6C-80C81C70 000040 0004+00 2/4 0/0 0/0 .rodata          @4276 */
SECTION_RODATA static f32 const lit_4276 = -1.0f;
COMPILER_STRIP_GATE(0x80C81C6C, &lit_4276);

/* 80C81C70-80C81C74 000044 0004+00 1/2 0/0 0/0 .rodata          @4277 */
SECTION_RODATA static f32 const lit_4277 = 300.0f;
COMPILER_STRIP_GATE(0x80C81C70, &lit_4277);

/* 80C7EE50-80C7F2A4 000D10 0454+00 1/1 0/0 0/0 .text            action__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::action() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C81C74-80C81C7C 000048 0008+00 0/1 0/0 0/0 .rodata          @4452 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4452[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C81C74, &lit_4452);
#pragma pop

/* 80C81C7C-80C81C84 000050 0008+00 0/1 0/0 0/0 .rodata          @4453 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4453[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C81C7C, &lit_4453);
#pragma pop

/* 80C81C84-80C81C8C 000058 0008+00 0/1 0/0 0/0 .rodata          @4454 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4454[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C81C84, &lit_4454);
#pragma pop

/* 80C81C8C-80C81C90 000060 0004+00 0/1 0/0 0/0 .rodata          @4455 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4455 = 360.0f;
COMPILER_STRIP_GATE(0x80C81C8C, &lit_4455);
#pragma pop

/* 80C81C90-80C81C94 000064 0004+00 0/1 0/0 0/0 .rodata          @4456 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4456 = 1200.0f;
COMPILER_STRIP_GATE(0x80C81C90, &lit_4456);
#pragma pop

/* 80C81C94-80C81C98 000068 0004+00 0/1 0/0 0/0 .rodata          @4457 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4457 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x80C81C94, &lit_4457);
#pragma pop

/* 80C81C98-80C81C9C 00006C 0004+00 0/1 0/0 0/0 .rodata          @4458 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4458 = 20.0f;
COMPILER_STRIP_GATE(0x80C81C98, &lit_4458);
#pragma pop

/* 80C81C9C-80C81CA0 000070 0004+00 0/1 0/0 0/0 .rodata          @4459 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4459 = 60.0f;
COMPILER_STRIP_GATE(0x80C81C9C, &lit_4459);
#pragma pop

/* 80C7F2A4-80C7F8BC 001164 0618+00 1/1 0/0 0/0 .text            calcBeam__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::calcBeam() {
    // NONMATCHING
}

/* 80C7F8BC-80C7F904 00177C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
// cM3dGPla::~cM3dGPla() {
extern "C" void __dt__8cM3dGPlaFv() {
    // NONMATCHING
}

/* 80C7F904-80C7FA54 0017C4 0150+00 1/1 0/0 0/0 .text            checkFindPlayer__12daObjLv6Bm_cFv
 */
void daObjLv6Bm_c::checkFindPlayer() {
    // NONMATCHING
}

/* 80C7FA54-80C7FBA4 001914 0150+00 1/1 0/0 0/0 .text            checkSearchPlayer__12daObjLv6Bm_cFv
 */
void daObjLv6Bm_c::checkSearchPlayer() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C81CA0-80C81CA4 000074 0004+00 2/2 0/0 0/0 .rodata          @4543 */
SECTION_RODATA static f32 const lit_4543 = 1000.0f;
COMPILER_STRIP_GATE(0x80C81CA0, &lit_4543);

/* 80C81CA4-80C81CAC 000078 0008+00 2/2 0/0 0/0 .rodata          @4545 */
SECTION_RODATA static u8 const lit_4545[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C81CA4, &lit_4545);

/* 80C7FBA4-80C7FBFC 001A64 0058+00 2/2 0/0 0/0 .text            getSearchDistance__12daObjLv6Bm_cFv
 */
void daObjLv6Bm_c::getSearchDistance() {
    // NONMATCHING
}

/* 80C7FBFC-80C7FC54 001ABC 0058+00 1/1 0/0 0/0 .text getBeamSearchDistance__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::getBeamSearchDistance() {
    // NONMATCHING
}

/* 80C7FC54-80C7FD8C 001B14 0138+00 1/1 0/0 0/0 .text            effect_proc__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::effect_proc() {
    // NONMATCHING
}

/* 80C7FD8C-80C7FD90 001C4C 0004+00 1/0 0/0 0/0 .text            effectWait__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::effectWait() {
    /* empty function */
}

/* ############################################################################################## */
/* 80C81CAC-80C81CB0 000080 0004+00 1/1 0/0 0/0 .rodata          eff_id$4596 */
SECTION_RODATA static u8 const eff_id_4596[4] = {
    0x88,
    0xD9,
    0x88,
    0xDA,
};
COMPILER_STRIP_GATE(0x80C81CAC, &eff_id_4596);

/* 80C7FD90-80C7FEC4 001C50 0134+00 1/1 0/0 0/0 .text            initEffectSet0__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::initEffectSet0() {
    // NONMATCHING
}

/* 80C7FEC4-80C7FF78 001D84 00B4+00 1/0 0/0 0/0 .text            effectSet0__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::effectSet0() {
    // NONMATCHING
}

/* 80C7FF78-80C7FFB8 001E38 0040+00 1/1 0/0 0/0 .text            initActionSwWait__12daObjLv6Bm_cFv
 */
void daObjLv6Bm_c::initActionSwWait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C81CB0-80C81CB4 000084 0004+00 0/1 0/0 0/0 .rodata          @4764 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4764 = 200.0f;
COMPILER_STRIP_GATE(0x80C81CB0, &lit_4764);
#pragma pop

/* 80C7FFB8-80C802AC 001E78 02F4+00 1/0 0/0 0/0 .text            actionSwWait__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::actionSwWait() {
    // NONMATCHING
}

/* 80C802AC-80C802C0 00216C 0014+00 3/3 0/0 0/0 .text            initActionWarning__12daObjLv6Bm_cFv
 */
void daObjLv6Bm_c::initActionWarning() {
    // NONMATCHING
}

/* 80C802C0-80C803D8 002180 0118+00 1/0 0/0 0/0 .text            actionWarning__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::actionWarning() {
    // NONMATCHING
}

/* 80C803D8-80C80538 002298 0160+00 1/1 0/0 0/0 .text initActionFindPlayer__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::initActionFindPlayer() {
    // NONMATCHING
}

/* 80C80538-80C80684 0023F8 014C+00 1/0 0/0 0/0 .text            actionFindPlayer__12daObjLv6Bm_cFv
 */
void daObjLv6Bm_c::actionFindPlayer() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C81CB4-80C81CBC 000088 0008+00 0/1 0/0 0/0 .rodata          eff_id$4844 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const eff_id_4844[8] = {
    0x88, 0xD5, 0x88, 0xD6, 0x88, 0xD7, 0x88, 0xD8,
};
COMPILER_STRIP_GATE(0x80C81CB4, &eff_id_4844);
#pragma pop

/* 80C80684-80C8082C 002544 01A8+00 1/1 0/0 0/0 .text            initActionAttack__12daObjLv6Bm_cFv
 */
void daObjLv6Bm_c::initActionAttack() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C81CBC-80C81CC0 000090 0004+00 0/1 0/0 0/0 .rodata          l_eff_id$4949 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_eff_id[4] = {
    0x88,
    0xD3,
    0x88,
    0xD4,
};
COMPILER_STRIP_GATE(0x80C81CBC, &l_eff_id);
#pragma pop

/* 80C81CC0-80C81CC4 000094 0004+00 0/1 0/0 0/0 .rodata          @5133 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5133 = 5.0f;
COMPILER_STRIP_GATE(0x80C81CC0, &lit_5133);
#pragma pop

/* 80C81CC4-80C81CC8 000098 0004+00 0/1 0/0 0/0 .rodata          @5134 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5134 = 15.0f;
COMPILER_STRIP_GATE(0x80C81CC4, &lit_5134);
#pragma pop

/* 80C8082C-80C80F48 0026EC 071C+00 1/0 0/0 0/0 .text            actionAttack__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::actionAttack() {
    // NONMATCHING
}

/* 80C80F48-80C81154 002E08 020C+00 1/1 0/0 0/0 .text            initActionDead__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::initActionDead() {
    // NONMATCHING
}

/* 80C81154-80C81428 003014 02D4+00 2/0 0/0 0/0 .text            actionDead__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::actionDead() {
    // NONMATCHING
}

/* 80C81428-80C814FC 0032E8 00D4+00 1/1 0/0 0/0 .text            initActionEnd__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::initActionEnd() {
    // NONMATCHING
}

/* 80C814FC-80C81500 0033BC 0004+00 1/0 0/0 0/0 .text            actionEnd__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::actionEnd() {
    /* empty function */
}

/* 80C81500-80C816A8 0033C0 01A8+00 1/0 0/0 0/0 .text            Draw__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::Draw() {
    // NONMATCHING
}

/* 80C816A8-80C81808 003568 0160+00 1/0 0/0 0/0 .text            Delete__12daObjLv6Bm_cFv */
void daObjLv6Bm_c::Delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C81FBC-80C81FE4 0002B8 0028+00 1/1 0/0 0/0 .data            __vt__12daObjLv6Bm_c */
SECTION_DATA extern void* __vt__12daObjLv6Bm_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__12daObjLv6Bm_cFv,
    (void*)Create__12daObjLv6Bm_cFv,
    (void*)Execute__12daObjLv6Bm_cFPPA3_A4_f,
    (void*)Draw__12daObjLv6Bm_cFv,
    (void*)Delete__12daObjLv6Bm_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80C81808-80C819C8 0036C8 01C0+00 1/0 0/0 0/0 .text daObjLv6Bm_create1st__FP12daObjLv6Bm_c */
static void daObjLv6Bm_create1st(daObjLv6Bm_c* param_0) {
    // NONMATCHING
}

/* 80C819C8-80C81A10 003888 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80C81A10-80C81A58 0038D0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80C81A58-80C81AA0 003918 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80C81AA0-80C81AFC 003960 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80C81AFC-80C81B1C 0039BC 0020+00 1/0 0/0 0/0 .text daObjLv6Bm_MoveBGDelete__FP12daObjLv6Bm_c */
static void daObjLv6Bm_MoveBGDelete(daObjLv6Bm_c* param_0) {
    // NONMATCHING
}

/* 80C81B1C-80C81B3C 0039DC 0020+00 1/0 0/0 0/0 .text daObjLv6Bm_MoveBGExecute__FP12daObjLv6Bm_c
 */
static void daObjLv6Bm_MoveBGExecute(daObjLv6Bm_c* param_0) {
    // NONMATCHING
}

/* 80C81B3C-80C81B68 0039FC 002C+00 1/0 0/0 0/0 .text daObjLv6Bm_MoveBGDraw__FP12daObjLv6Bm_c */
static void daObjLv6Bm_MoveBGDraw(daObjLv6Bm_c* param_0) {
    // NONMATCHING
}

/* 80C81B68-80C81BB0 003A28 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80C81BB0-80C81BCC 003A70 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<Us>__FPUs */
extern "C" void func_80C81BB0(void* _this, u16* param_0) {
    // NONMATCHING
}

/* 80C81BCC-80C81BE8 003A8C 001C+00 3/3 0/0 0/0 .text            cLib_calcTimer<Uc>__FPUc */
extern "C" void func_80C81BCC(void* _this, u8* param_0) {
    // NONMATCHING
}

/* 80C81BE8-80C81C20 003AA8 0038+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_lv6bemos2_cpp */
void __sinit_d_a_obj_lv6bemos2_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80C81BE8, __sinit_d_a_obj_lv6bemos2_cpp);
#pragma pop

/* ############################################################################################## */
/* 80C81CC8-80C81CCC 00009C 0004+00 0/0 0/0 0/0 .rodata          @5280 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5280 = 6.0f;
COMPILER_STRIP_GATE(0x80C81CC8, &lit_5280);
#pragma pop

/* 80C81CCC-80C81CCC 0000A0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
