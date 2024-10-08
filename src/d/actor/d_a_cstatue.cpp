/**
 * @file d_a_cstatue.cpp
 * 
*/

#include "d/actor/d_a_cstatue.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void atHitCallback__11daCstatue_cFP10fopAc_ac_c();
extern "C" static void
daCstatue_atHitCallback__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" void createHeap__11daCstatue_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__4cXyzFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" static void daCstatue_createHeap__FP10fopAc_ac_c();
extern "C" void create__11daCstatue_cFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__15dBgS_StatueAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void daCstatue_Create__FP10fopAc_ac_c();
extern "C" void __dt__11daCstatue_cFv();
extern "C" static void daCstatue_Delete__FP11daCstatue_c();
extern "C" void setRoomInfo__11daCstatue_cFv();
extern "C" void setMatrix__11daCstatue_cFv();
extern "C" void posMove__11daCstatue_cFv();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" void setCollision__11daCstatue_cFv();
extern "C" void checkHammerReverse__11daCstatue_cFv();
extern "C" void setDemo__11daCstatue_cFv();
extern "C" void setAnime__11daCstatue_cFv();
extern "C" void initBrk__11daCstatue_cFUs();
extern "C" void initStopBrkBtk__11daCstatue_cFv();
extern "C" void initStartBrkBtk__11daCstatue_cFv();
extern "C" void execute__11daCstatue_cFv();
extern "C" static void daCstatue_Execute__FP11daCstatue_c();
extern "C" void draw__11daCstatue_cFv();
extern "C" static void daCstatue_Draw__FP11daCstatue_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" static void func_80667678();
extern "C" static void func_80667680();
extern "C" u8 const m_bckIdxTable__11daCstatue_c[70 + 2 /* padding */];

//
// External References:
//

extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void mDoExt_modelEntryDL__FP8J3DModel();
extern "C" void create__21mDoExt_invisibleModelFP8J3DModelUc();
extern "C" void entryDL__21mDoExt_invisibleModelFP4cXyz();
extern "C" void setMorf__13mDoExt_morf_cFf();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void fopAcM_getPolygonAngle__FPC8cM3dGPlas();
extern "C" void lineCheck__11fopAcM_lc_cFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void onTbox__12dSv_memBit_cFi();
extern "C" void offTbox__12dSv_memBit_cFi();
extern "C" void isTbox__12dSv_memBit_cCFi();
extern "C" void onEventBit__11dSv_event_cFUs();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void init__7dPaPo_cFP9dBgS_Acchff();
extern "C" void setEffectCenter__7dPaPo_cFPC12dKy_tevstr_cPC4cXyzUlUlPC4cXyzPC5csXyzPC4cXyzScff();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla();
extern "C" void ChkMoveBG_NoDABg__4dBgSFRC13cBgS_PolyInfo();
extern "C" void GetPolyColor__4dBgSFRC13cBgS_PolyInfo();
extern "C" void GetWallCode__4dBgSFRC13cBgS_PolyInfo();
extern "C" void GetRoomId__4dBgSFRC13cBgS_PolyInfo();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP10fopAc_ac_ciP12dBgS_AcchCir();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void SetStatue__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ResetAtHit__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void ResetTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitGObj__12dCcD_GObjInfFv();
extern "C" void GetTgHitObjSe__12dCcD_GObjInfFv();
extern "C" void getHitSeID__12dCcD_GObjInfFUci();
extern "C" void ResetCoHit__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CpsFRC11dCcD_SrcCps();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void StartCAt__8dCcD_CylFR4cXyz();
extern "C" void MoveCAt__8dCcD_CylFR4cXyz();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void MoveCAt__8dCcD_SphFR4cXyz();
extern "C" void setPosition__7dTres_cFiUcPC3Veci();
extern "C" void getCopyRodBallDisMax__9daAlink_cCFv();
extern "C" void getCopyRodControllActor__9daAlink_cFv();
extern "C" void clearData__16daPy_actorKeep_cFv();
extern "C" void Start__9dCamera_cFv();
extern "C" void Stop__9dCamera_cFv();
extern "C" void SetTrimSize__9dCamera_cFl();
extern "C" void Set__9dCamera_cF4cXyz4cXyz();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_pol_sound_get__FPC13cBgS_PolyInfo();
extern "C" void ClrCcMove__9cCcD_SttsFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void atan2sX_Z__4cXyzCFv();
extern "C" void __ct__5csXyzFsss();
extern "C" void cM_atan2s__Fff();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void cBgW_CheckBWall__Ff();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void __ct__8cM3dGCpsFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void SetStartEnd__8cM3dGLinFRC4cXyzRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalcPosXZ__FP4cXyzRC4cXyzfff();
extern "C" void cLib_chaseF__FPfff();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void __dt__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void* __nwa__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void __construct_new_array();
extern "C" void _savegpr_21();
extern "C" void _savegpr_23();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_21();
extern "C" void _restgpr_23();
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
extern "C" u8 mGndCheck__11fopAcM_gc_c[84];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" f32 mGroundY__11fopAcM_gc_c;
extern "C" u8 Zero__5csXyz[4];
extern "C" void __register_global_object();

//
// Declarations:
//

/* 806636AC-806636C8 0000EC 001C+00 1/1 0/0 0/0 .text atHitCallback__11daCstatue_cFP10fopAc_ac_c
 */
void daCstatue_c::atHitCallback(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 806636C8-806636EC 000108 0024+00 1/1 0/0 0/0 .text
 * daCstatue_atHitCallback__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf */
static void daCstatue_atHitCallback(fopAc_ac_c* param_0, dCcD_GObjInf* param_1,
                                        fopAc_ac_c* param_2, dCcD_GObjInf* param_3) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80667698-806676A4 000000 000C+00 10/10 0/0 0/0 .rodata          @3768 */
SECTION_RODATA static u8 const lit_3768[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80667698, &lit_3768);

/* 806676A4-806676AC 00000C 0008+00 0/1 0/0 0/0 .rodata          l_arcName */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_arcName[8] = {
    0x43, 0x73, 0x74, 0x61, 0x74, 0x75, 0x65, 0x00,
};
COMPILER_STRIP_GATE(0x806676A4, &l_arcName);
#pragma pop

/* 806676AC-806676B4 000014 0007+01 0/1 0/0 0/0 .rodata          l_arcNameBS */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_arcNameBS[7 + 1 /* padding */] = {
    0x43,
    0x73,
    0x74,
    0x61,
    0x42,
    0x53,
    0x00,
    /* padding */
    0x00,
};
COMPILER_STRIP_GATE(0x806676AC, &l_arcNameBS);
#pragma pop

/* 806676B4-806676FC 00001C 0046+02 0/2 0/0 0/0 .rodata          m_bckIdxTable__11daCstatue_c */
#pragma push
#pragma force_active on
SECTION_RODATA u8 const daCstatue_c::m_bckIdxTable[70 + 2 /* padding */] = {
    0x00,
    0x0E,
    0x00,
    0x10,
    0x00,
    0x0E,
    0x00,
    0x0A,
    0x00,
    0x0D,
    0x00,
    0x0B,
    0x00,
    0x0F,
    0x00,
    0x08,
    0x00,
    0x09,
    0x00,
    0x08,
    0x00,
    0x07,
    0x00,
    0x09,
    0x00,
    0x09,
    0x00,
    0x08,
    0x00,
    0x0E,
    0x00,
    0x10,
    0x00,
    0x0E,
    0x00,
    0x0A,
    0x00,
    0x0D,
    0x00,
    0x0B,
    0x00,
    0x0F,
    0x00,
    0x0B,
    0x00,
    0x09,
    0x00,
    0x07,
    0x00,
    0x0B,
    0x00,
    0x0B,
    0x00,
    0x0B,
    0x00,
    0x0B,
    0x00,
    0x0A,
    0x00,
    0x08,
    0x00,
    0x06,
    0x00,
    0x0A,
    0x00,
    0x0A,
    0x00,
    0x0A,
    0x00,
    0x0A,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x806676B4, &daCstatue_c::m_bckIdxTable);
#pragma pop

/* 806676FC-80667738 000064 003C+00 0/1 0/0 0/0 .rodata          dataTbl$4169 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const dataTbl[60] = {
    0x00, 0x13, 0x00, 0x0D, 0x00, 0x1F, 0x00, 0x23, 0x11, 0x00, 0x02, 0x84, 0x00, 0x14, 0x00,
    0x08, 0x00, 0x1C, 0x00, 0x00, 0x11, 0x00, 0x00, 0x84, 0x00, 0x18, 0x00, 0x0D, 0x00, 0x1D,
    0x00, 0x22, 0x11, 0x00, 0x02, 0x84, 0x00, 0x0E, 0x00, 0x0B, 0x00, 0x12, 0x00, 0x15, 0x11,
    0x00, 0x02, 0x84, 0x00, 0x0E, 0x00, 0x0A, 0x00, 0x12, 0x00, 0x15, 0x11, 0x00, 0x02, 0x84,
};
COMPILER_STRIP_GATE(0x806676FC, &dataTbl);
#pragma pop

/* 80667738-8066773C 0000A0 0004+00 1/11 0/0 0/0 .rodata          @4286 */
SECTION_RODATA static u8 const lit_4286[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80667738, &lit_4286);

/* 8066773C-80667740 0000A4 0004+00 1/10 0/0 0/0 .rodata          @4287 */
SECTION_RODATA static f32 const lit_4287 = 1.0f;
COMPILER_STRIP_GATE(0x8066773C, &lit_4287);

/* 806679B0-806679BC 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 806679BC-806679D0 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 806679D0-80667A1C 000020 004C+00 0/1 0/0 0/0 .data            l_atCpsSrc */
#pragma push
#pragma force_active on
static dCcD_SrcCps l_atCpsSrc = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x4, 0x1f}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_STATUE_HAMMER, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, {0.0f, 0.0f, 0.0f}, 88.0f}, // mCps
    } // mCpsAttr
};
#pragma pop

/* 80667A1C-80667A60 00006C 0044+00 0/1 0/0 0/0 .data            l_cylSrc */
#pragma push
#pragma force_active on
static dCcD_SrcCyl l_cylSrc = {
    {
        {0x0, {{AT_TYPE_THROW_OBJ, 0x2, 0x12}, {0xd97afddf, 0x11}, 0x79}}, // mObj
        {dCcD_SE_STONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x5, 0x0, 0x0, 0x3}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        88.0f, // mRadius
        392.0f // mHeight
    } // mCyl
};
#pragma pop

/* 80667A60-80667AA0 0000B0 0040+00 0/1 0/0 0/0 .data            l_sphSrc */
#pragma push
#pragma force_active on
static dCcD_SrcSph l_sphSrc = {
    {
        {0x0, {{AT_TYPE_CSTATUE_BOSS_SWING, 0x4, 0x1e}, {0xd8fafddf, 0x11}, 0x79}}, // mObj
        {dCcD_SE_STONE, 0x0, 0x1, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x5, 0x0, 0x0, 0x3}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 100.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 80667AA0-80667AC0 -00001 0020+00 1/0 0/0 0/0 .data            l_daCstatue_Method */
static actor_method_class l_daCstatue_Method = {
    (process_method_func)daCstatue_Create__FP10fopAc_ac_c,
    (process_method_func)daCstatue_Delete__FP11daCstatue_c,
    (process_method_func)daCstatue_Execute__FP11daCstatue_c,
    0,
    (process_method_func)daCstatue_Draw__FP11daCstatue_c,
};

/* 80667AC0-80667AF0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_CSTATUE */
extern actor_process_profile_definition g_profile_CSTATUE = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_CSTATUE,           // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  0x00000B2C,             // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  271,                    // mPriority
  &l_daCstatue_Method,    // sub_method
  0x00060520,             // mStatus
  fopAc_ENV_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80667AF0-80667AFC 000140 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 80667AFC-80667B08 00014C 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80667B08-80667B14 000158 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80667B14-80667B20 000164 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80667B20-80667B44 000170 0024+00 3/3 0/0 0/0 .data            __vt__15dBgS_StatueAcch */
SECTION_DATA extern void* __vt__15dBgS_StatueAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15dBgS_StatueAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80667680,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80667678,
};

/* 80667B44-80667B50 000194 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80667B50-80667B5C 0001A0 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80667B5C-80667B68 0001AC 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80667B68-80667B74 0001B8 000C+00 6/6 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 806636EC-80663AA4 00012C 03B8+00 1/1 0/0 0/0 .text            createHeap__11daCstatue_cFv */
void daCstatue_c::createHeap() {
    // NONMATCHING
}

/* 80663AA4-80663AEC 0004E4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80663AEC-80663B34 00052C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80663B34-80663B70 000574 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80663B70-80663C3C 0005B0 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

/* 80663C3C-80663CC0 00067C 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
extern "C" void __ct__8dCcD_SphFv() {
    // NONMATCHING
}

/* 80663CC0-80663D08 000700 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80663D08-80663D28 000748 0020+00 1/1 0/0 0/0 .text daCstatue_createHeap__FP10fopAc_ac_c */
static void daCstatue_createHeap(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80667740-80667764 0000A8 0024+00 0/1 0/0 0/0 .rodata          bossSphR$4389 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const bossSphR[36] = {
    0x43, 0xE1, 0x00, 0x00, 0x43, 0x48, 0x00, 0x00, 0x43, 0x7A, 0x00, 0x00,
    0x43, 0x5C, 0x00, 0x00, 0x43, 0x8C, 0x00, 0x00, 0x43, 0x48, 0x00, 0x00,
    0x43, 0x7A, 0x00, 0x00, 0x43, 0x5C, 0x00, 0x00, 0x43, 0x8C, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80667740, &bossSphR);
#pragma pop

/* 80667764-80667778 0000CC 0014+00 0/1 0/0 0/0 .rodata          heapSize$4390 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const heapSize[20] = {
    0x00, 0x00, 0x11, 0x10, 0x00, 0x00, 0x08, 0xA0, 0x00, 0x00,
    0x12, 0x50, 0x00, 0x00, 0x18, 0x60, 0x00, 0x00, 0x18, 0x60,
};
COMPILER_STRIP_GATE(0x80667764, &heapSize);
#pragma pop

/* 80667778-8066777C 0000E0 0004+00 0/1 0/0 0/0 .rodata          @4735 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4735 = 8.0f / 5.0f;
COMPILER_STRIP_GATE(0x80667778, &lit_4735);
#pragma pop

/* 8066777C-80667780 0000E4 0004+00 0/1 0/0 0/0 .rodata          @4736 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4736 = 88.0f;
COMPILER_STRIP_GATE(0x8066777C, &lit_4736);
#pragma pop

/* 80667780-80667784 0000E8 0004+00 0/2 0/0 0/0 .rodata          @4737 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4737 = 384.0f;
COMPILER_STRIP_GATE(0x80667780, &lit_4737);
#pragma pop

/* 80667784-80667788 0000EC 0004+00 0/2 0/0 0/0 .rodata          @4738 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4738 = 200.0f;
COMPILER_STRIP_GATE(0x80667784, &lit_4738);
#pragma pop

/* 80667788-8066778C 0000F0 0004+00 0/1 0/0 0/0 .rodata          @4739 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4739 = 0x41F0147B;
COMPILER_STRIP_GATE(0x80667788, &lit_4739);
#pragma pop

/* 8066778C-80667790 0000F4 0004+00 0/1 0/0 0/0 .rodata          @4740 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4740 = 208.0f;
COMPILER_STRIP_GATE(0x8066778C, &lit_4740);
#pragma pop

/* 80667790-80667794 0000F8 0004+00 0/1 0/0 0/0 .rodata          @4741 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4741 = 288.0f;
COMPILER_STRIP_GATE(0x80667790, &lit_4741);
#pragma pop

/* 80667794-80667798 0000FC 0004+00 0/1 0/0 0/0 .rodata          @4742 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4742 = 392.0f;
COMPILER_STRIP_GATE(0x80667794, &lit_4742);
#pragma pop

/* 80667798-8066779C 000100 0004+00 0/1 0/0 0/0 .rodata          @4743 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4743 = 0x43D4CCCD;
COMPILER_STRIP_GATE(0x80667798, &lit_4743);
#pragma pop

/* 8066779C-806677A0 000104 0004+00 0/1 0/0 0/0 .rodata          @4744 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4744 = 528.0f;
COMPILER_STRIP_GATE(0x8066779C, &lit_4744);
#pragma pop

/* 806677A0-806677A4 000108 0004+00 0/1 0/0 0/0 .rodata          @4745 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4745 = 0xC3D4CCCD;
COMPILER_STRIP_GATE(0x806677A0, &lit_4745);
#pragma pop

/* 806677A4-806677A8 00010C 0004+00 0/1 0/0 0/0 .rodata          @4746 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4746 = 1440.0f;
COMPILER_STRIP_GATE(0x806677A4, &lit_4746);
#pragma pop

/* 806677A8-806677AC 000110 0004+00 0/1 0/0 0/0 .rodata          @4747 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4747 = -8.0f;
COMPILER_STRIP_GATE(0x806677A8, &lit_4747);
#pragma pop

/* 806677AC-806677B0 000114 0004+00 0/1 0/0 0/0 .rodata          @4748 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4748 = -100.0f;
COMPILER_STRIP_GATE(0x806677AC, &lit_4748);
#pragma pop

/* 806677B0-806677B4 000118 0004+00 0/1 0/0 0/0 .rodata          @4749 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4749 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x806677B0, &lit_4749);
#pragma pop

/* 806677B4-806677B8 00011C 0004+00 0/1 0/0 0/0 .rodata          @4750 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4750 = 35.0f;
COMPILER_STRIP_GATE(0x806677B4, &lit_4750);
#pragma pop

/* 806677B8-806677BC 000120 0004+00 0/3 0/0 0/0 .rodata          @4751 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4751 = 100.0f;
COMPILER_STRIP_GATE(0x806677B8, &lit_4751);
#pragma pop

/* 806677BC-806677C0 000124 0004+00 0/1 0/0 0/0 .rodata          @4752 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4752 = 145.0f;
COMPILER_STRIP_GATE(0x806677BC, &lit_4752);
#pragma pop

/* 806677C0-806677C4 000128 0004+00 0/1 0/0 0/0 .rodata          @4753 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4753 = 250.0f;
COMPILER_STRIP_GATE(0x806677C0, &lit_4753);
#pragma pop

/* 806677C4-806677C8 00012C 0004+00 0/1 0/0 0/0 .rodata          @4754 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4754 = -145.0f;
COMPILER_STRIP_GATE(0x806677C4, &lit_4754);
#pragma pop

/* 806677C8-806677CC 000130 0004+00 0/1 0/0 0/0 .rodata          @4755 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4755 = 300.0f;
COMPILER_STRIP_GATE(0x806677C8, &lit_4755);
#pragma pop

/* 806677CC-806677D0 000134 0004+00 0/1 0/0 0/0 .rodata          @4756 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4756 = -5.0f;
COMPILER_STRIP_GATE(0x806677CC, &lit_4756);
#pragma pop

/* 806677D0-806677D4 000138 0004+00 0/1 0/0 0/0 .rodata          @4757 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4757 = 4825.0f;
COMPILER_STRIP_GATE(0x806677D0, &lit_4757);
#pragma pop

/* 806677D4-806677D8 00013C 0004+00 0/2 0/0 0/0 .rodata          @4758 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4758 = 21.0f;
COMPILER_STRIP_GATE(0x806677D4, &lit_4758);
#pragma pop

/* 806677D8-806677DC 000140 0004+00 0/1 0/0 0/0 .rodata          @4759 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4759 = 600.0f;
COMPILER_STRIP_GATE(0x806677D8, &lit_4759);
#pragma pop

/* 806677DC-806677E0 000144 0004+00 0/1 0/0 0/0 .rodata          @4760 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4760 = 5500.0f;
COMPILER_STRIP_GATE(0x806677DC, &lit_4760);
#pragma pop

/* 806677E0-806677E4 000148 0004+00 0/1 0/0 0/0 .rodata          @4761 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4761 = 650000.0f;
COMPILER_STRIP_GATE(0x806677E0, &lit_4761);
#pragma pop

/* 806677E4-806677E8 00014C 0004+00 0/4 0/0 0/0 .rodata          @4762 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4762 = 30.0f;
COMPILER_STRIP_GATE(0x806677E4, &lit_4762);
#pragma pop

/* 806677E8-806677F0 000150 0008+00 0/4 0/0 0/0 .rodata          @4764 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4764[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806677E8, &lit_4764);
#pragma pop

/* 80663D28-8066469C 000768 0974+00 1/1 0/0 0/0 .text            create__11daCstatue_cFv */
void daCstatue_c::create() {
    // NONMATCHING
}

/* 8066469C-806646F8 0010DC 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 806646F8-80664768 001138 0070+00 3/2 0/0 0/0 .text            __dt__15dBgS_StatueAcchFv */
// dBgS_StatueAcch::~dBgS_StatueAcch() {
extern "C" void __dt__15dBgS_StatueAcchFv() {
    // NONMATCHING
}

/* 80664768-806647D8 0011A8 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 806647D8-80664820 001218 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80664820-80664840 001260 0020+00 1/0 0/0 0/0 .text            daCstatue_Create__FP10fopAc_ac_c */
static void daCstatue_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80664840-80664A78 001280 0238+00 1/1 0/0 0/0 .text            __dt__11daCstatue_cFv */
daCstatue_c::~daCstatue_c() {
    // NONMATCHING
}

/* 80664A78-80664AA0 0014B8 0028+00 1/0 0/0 0/0 .text            daCstatue_Delete__FP11daCstatue_c
 */
static void daCstatue_Delete(daCstatue_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806677F0-806677F4 000158 0004+00 1/3 0/0 0/0 .rodata          @4907 */
SECTION_RODATA static f32 const lit_4907 = -1000000000.0f;
COMPILER_STRIP_GATE(0x806677F0, &lit_4907);

/* 80664AA0-80664B38 0014E0 0098+00 2/2 0/0 0/0 .text            setRoomInfo__11daCstatue_cFv */
void daCstatue_c::setRoomInfo() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806677F4-80667800 00015C 000C+00 0/1 0/0 0/0 .rodata          normalLocalBallPos$4911 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const normalLocalBallPos[12] = {
    0x42, 0x8C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806677F4, &normalLocalBallPos);
#pragma pop

/* 80667800-8066780C 000168 000C+00 0/1 0/0 0/0 .rodata          smallLocalBallPos$4912 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const smallLocalBallPos[12] = {
    0x00, 0x00, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80667800, &smallLocalBallPos);
#pragma pop

/* 8066780C-80667818 000174 000C+00 0/1 0/0 0/0 .rodata          bossLocalBallPos$4913 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const bossLocalBallPos[12] = {
    0x43, 0xD2, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8066780C, &bossLocalBallPos);
#pragma pop

/* 80667818-8066781C 000180 0004+00 0/1 0/0 0/0 .rodata          @4965 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4965 = 140.0f;
COMPILER_STRIP_GATE(0x80667818, &lit_4965);
#pragma pop

/* 80664B38-80664C9C 001578 0164+00 2/2 0/0 0/0 .text            setMatrix__11daCstatue_cFv */
void daCstatue_c::setMatrix() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8066781C-80667820 000184 0004+00 0/1 0/0 0/0 .rodata          @5281 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5281 = 18.0f;
COMPILER_STRIP_GATE(0x8066781C, &lit_5281);
#pragma pop

/* 80667820-80667824 000188 0004+00 1/4 0/0 0/0 .rodata          @5282 */
SECTION_RODATA static f32 const lit_5282 = 0.5f;
COMPILER_STRIP_GATE(0x80667820, &lit_5282);

/* 80667824-80667828 00018C 0004+00 0/1 0/0 0/0 .rodata          @5283 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5283 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80667824, &lit_5283);
#pragma pop

/* 80667828-8066782C 000190 0004+00 0/3 0/0 0/0 .rodata          @5284 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5284 = -1.0f;
COMPILER_STRIP_GATE(0x80667828, &lit_5284);
#pragma pop

/* 8066782C-80667830 000194 0004+00 0/1 0/0 0/0 .rodata          @5285 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5285 = 6.0f;
COMPILER_STRIP_GATE(0x8066782C, &lit_5285);
#pragma pop

/* 80667830-80667834 000198 0004+00 0/1 0/0 0/0 .rodata          @5286 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5286 = 0.25f;
COMPILER_STRIP_GATE(0x80667830, &lit_5286);
#pragma pop

/* 80667834-80667838 00019C 0004+00 0/2 0/0 0/0 .rodata          @5287 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5287 = 7.0f;
COMPILER_STRIP_GATE(0x80667834, &lit_5287);
#pragma pop

/* 80667838-8066783C 0001A0 0004+00 0/3 0/0 0/0 .rodata          @5288 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5288 = 3.0f;
COMPILER_STRIP_GATE(0x80667838, &lit_5288);
#pragma pop

/* 8066783C-80667840 0001A4 0004+00 0/1 0/0 0/0 .rodata          @5289 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5289 = 12.0f;
COMPILER_STRIP_GATE(0x8066783C, &lit_5289);
#pragma pop

/* 80667840-80667848 0001A8 0004+04 0/1 0/0 0/0 .rodata          @5290 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5290[1 + 1 /* padding */] = {
    2.0f / 5.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80667840, &lit_5290);
#pragma pop

/* 80667848-80667850 0001B0 0008+00 0/2 0/0 0/0 .rodata          @5291 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5291[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80667848, &lit_5291);
#pragma pop

/* 80667850-80667858 0001B8 0008+00 0/2 0/0 0/0 .rodata          @5292 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5292[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80667850, &lit_5292);
#pragma pop

/* 80667858-80667860 0001C0 0008+00 0/2 0/0 0/0 .rodata          @5293 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5293[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80667858, &lit_5293);
#pragma pop

/* 80667860-80667864 0001C8 0004+00 0/2 0/0 0/0 .rodata          @5294 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5294 = -30.0f;
COMPILER_STRIP_GATE(0x80667860, &lit_5294);
#pragma pop

/* 80667864-80667868 0001CC 0004+00 0/2 0/0 0/0 .rodata          @5295 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5295 = 10.0f;
COMPILER_STRIP_GATE(0x80667864, &lit_5295);
#pragma pop

/* 80667868-8066786C 0001D0 0004+00 0/1 0/0 0/0 .rodata          @5296 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5296 = 0.75f;
COMPILER_STRIP_GATE(0x80667868, &lit_5296);
#pragma pop

/* 80664C9C-80665514 0016DC 0878+00 1/1 0/0 0/0 .text            posMove__11daCstatue_cFv */
void daCstatue_c::posMove() {
    // NONMATCHING
}

/* 80665514-8066555C 001F54 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
// cM3dGPla::~cM3dGPla() {
extern "C" void __dt__8cM3dGPlaFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8066786C-80667878 0001D4 000C+00 0/1 0/0 0/0 .rodata          localTop$5304 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const localTop[12] = {
    0x00, 0x00, 0x00, 0x00, 0x42, 0xB4, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8066786C, &localTop);
#pragma pop

/* 80667878-80667884 0001E0 000C+00 0/1 0/0 0/0 .rodata          localRoot$5305 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const localRoot[12] = {
    0x00, 0x00, 0x00, 0x00, 0xC1, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80667878, &localRoot);
#pragma pop

/* 80667884-80667890 0001EC 000C+00 0/1 0/0 0/0 .rodata          hammerSide0$5306 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const hammerSide0[12] = {
    0xC2, 0x20, 0x00, 0x00, 0x42, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80667884, &hammerSide0);
#pragma pop

/* 80667890-8066789C 0001F8 000C+00 0/1 0/0 0/0 .rodata          hammerSide1$5307 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const hammerSide1[12] = {
    0x42, 0x20, 0x00, 0x00, 0x42, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80667890, &hammerSide1);
#pragma pop

/* 8066789C-806678A4 000204 0008+00 0/1 0/0 0/0 .rodata          effName$5309 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const effName[8] = {
    0x09, 0xD0, 0x09, 0xD1, 0x09, 0xD2, 0x09, 0xD5,
};
COMPILER_STRIP_GATE(0x8066789C, &effName);
#pragma pop

/* 806678A4-806678B8 00020C 0012+02 0/1 0/0 0/0 .rodata          bossJntIdx$5353 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const bossJntIdx[18 + 2 /* padding */] = {
    0x00,
    0x02,
    0x00,
    0x06,
    0x00,
    0x07,
    0x00,
    0x07,
    0x00,
    0x08,
    0x00,
    0x03,
    0x00,
    0x04,
    0x00,
    0x04,
    0x00,
    0x05,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x806678A4, &bossJntIdx);
#pragma pop

/* 806678B8-80667924 000220 006C+00 0/1 0/0 0/0 .rodata          bossLocalOffset$5354 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const bossLocalOffset[108] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x43, 0x48, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x43, 0xBE, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x43, 0x48, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0xA0, 0x00, 0x00, 0x43, 0x48, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x43, 0xBE, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x43, 0x48, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0xA0, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806678B8, &bossLocalOffset);
#pragma pop

/* 80667924-80667928 00028C 0004+00 0/1 0/0 0/0 .rodata          @5620 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5620 = 36.0f;
COMPILER_STRIP_GATE(0x80667924, &lit_5620);
#pragma pop

/* 80667928-8066792C 000290 0004+00 0/1 0/0 0/0 .rodata          @5621 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5621 = 13.0f;
COMPILER_STRIP_GATE(0x80667928, &lit_5621);
#pragma pop

/* 8066792C-80667930 000294 0004+00 0/1 0/0 0/0 .rodata          @5622 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5622 = 17.0f;
COMPILER_STRIP_GATE(0x8066792C, &lit_5622);
#pragma pop

/* 80667930-80667934 000298 0004+00 0/1 0/0 0/0 .rodata          @5623 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5623 = 160000.0f;
COMPILER_STRIP_GATE(0x80667930, &lit_5623);
#pragma pop

/* 80667934-80667938 00029C 0004+00 0/1 0/0 0/0 .rodata          @5624 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5624 = 640000.0f;
COMPILER_STRIP_GATE(0x80667934, &lit_5624);
#pragma pop

/* 80667938-8066793C 0002A0 0004+00 0/1 0/0 0/0 .rodata          @5625 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5625 = 240.0f;
COMPILER_STRIP_GATE(0x80667938, &lit_5625);
#pragma pop

/* 8066793C-80667940 0002A4 0004+00 0/1 0/0 0/0 .rodata          @5626 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5626 = 2.0f;
COMPILER_STRIP_GATE(0x8066793C, &lit_5626);
#pragma pop

/* 80667B80-80667B84 000008 0001+03 1/1 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 80667B84-80667B88 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 80667B88-80667B8C 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 80667B8C-80667B90 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 80667B90-80667B94 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 80667B94-80667B98 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 80667B98-80667B9C 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 80667B9C-80667BA0 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 80667BA0-80667BA4 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 80667BA4-80667BA8 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 80667BA8-80667BAC 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 80667BAC-80667BB0 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 80667BB0-80667BB4 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 80667BB4-80667BB8 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 80667BB8-80667BBC 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 80667BBC-80667BC0 000044 0001+03 0/0 0/0 0/0 .bss             @1009 */
#pragma push
#pragma force_active on
static u8 lit_1009[1 + 3 /* padding */];
#pragma pop

/* 80667BC0-80667BD0 000048 000C+04 0/1 0/0 0/0 .bss             @5356 */
#pragma push
#pragma force_active on
static u8 lit_5356[12 + 4 /* padding */];
#pragma pop

/* 80667BD0-80667BDC 000058 000C+00 0/1 0/0 0/0 .bss             effScale$5355 */
#pragma push
#pragma force_active on
static u8 effScale[12];
#pragma pop

/* 8066555C-80665E14 001F9C 08B8+00 1/1 0/0 0/0 .text            setCollision__11daCstatue_cFv */
void daCstatue_c::setCollision() {
    // NONMATCHING
}

/* 80665E14-80665F80 002854 016C+00 1/1 0/0 0/0 .text            checkHammerReverse__11daCstatue_cFv
 */
void daCstatue_c::checkHammerReverse() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80667940-8066794C 0002A8 000C+00 0/1 0/0 0/0 .rodata          hitEffectCenter$5688 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const hitEffectCenter[12] = {
    0xC0, 0x01, 0xFB, 0xE7, 0x42, 0xF0, 0xE0, 0xC4, 0x43, 0xA0, 0x3B, 0xC8,
};
COMPILER_STRIP_GATE(0x80667940, &hitEffectCenter);
#pragma pop

/* 8066794C-80667958 0002B4 000C+00 0/1 0/0 0/0 .rodata          hitEffectEye$5689 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const hitEffectEye[12] = {
    0xC0, 0x01, 0xFB, 0xE7, 0xC2, 0xA1, 0x85, 0xA2, 0x44, 0x20, 0xB4, 0xFE,
};
COMPILER_STRIP_GATE(0x8066794C, &hitEffectEye);
#pragma pop

/* 80667958-80667964 0002C0 000C+00 0/1 0/0 0/0 .rodata          behindCenter$5690 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const behindCenter[12] = {
    0x41, 0xC3, 0xF9, 0xDB, 0x43, 0x4B, 0x1D, 0x30, 0xC2, 0xBE, 0xFA, 0x60,
};
COMPILER_STRIP_GATE(0x80667958, &behindCenter);
#pragma pop

/* 80667964-80667970 0002CC 000C+00 0/1 0/0 0/0 .rodata          behindEye$5691 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const behindEye[12] = {
    0x42, 0xF8, 0xCC, 0x4A, 0x43, 0x46, 0x44, 0x9C, 0xC3, 0xE7, 0x0B, 0x20,
};
COMPILER_STRIP_GATE(0x80667964, &behindEye);
#pragma pop

/* 80667970-8066797C 0002D8 000C+00 0/1 0/0 0/0 .rodata          startAnimeCenter$5692 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const startAnimeCenter[12] = {
    0x42, 0xA1, 0x35, 0x3F, 0x43, 0x86, 0x81, 0xCA, 0x43, 0x93, 0x19, 0xFC,
};
COMPILER_STRIP_GATE(0x80667970, &startAnimeCenter);
#pragma pop

/* 8066797C-80667988 0002E4 000C+00 0/1 0/0 0/0 .rodata          startAnimeEye$5693 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const startAnimeEye[12] = {
    0x43, 0x2A, 0xFE, 0xFA, 0x43, 0x88, 0x52, 0x6E, 0x44, 0x23, 0x8C, 0x18,
};
COMPILER_STRIP_GATE(0x8066797C, &startAnimeEye);
#pragma pop

/* 80665F80-80666390 0029C0 0410+00 1/1 0/0 0/0 .text            setDemo__11daCstatue_cFv */
void daCstatue_c::setDemo() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80667988-8066798C 0002F0 0004+00 0/1 0/0 0/0 .rodata          @6088 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6088 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80667988, &lit_6088);
#pragma pop

/* 8066798C-80667990 0002F4 0004+00 0/1 0/0 0/0 .rodata          @6089 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_6089 = 0x3A83126F;
COMPILER_STRIP_GATE(0x8066798C, &lit_6089);
#pragma pop

/* 80667990-80667994 0002F8 0004+00 0/2 0/0 0/0 .rodata          @6090 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6090 = 5.0f;
COMPILER_STRIP_GATE(0x80667990, &lit_6090);
#pragma pop

/* 80666390-80666B80 002DD0 07F0+00 1/1 0/0 0/0 .text            setAnime__11daCstatue_cFv */
void daCstatue_c::setAnime() {
    // NONMATCHING
}

/* 80666B80-80666BF8 0035C0 0078+00 3/3 0/0 0/0 .text            initBrk__11daCstatue_cFUs */
void daCstatue_c::initBrk(u16 param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80667994-806679A0 0002FC 000A+02 1/1 0/0 0/0 .rodata          brkIdx$6108 */
SECTION_RODATA static u8 const brkIdx_6108[10 + 2 /* padding */] = {
    0x00,
    0x1F,
    0x00,
    0x1C,
    0x00,
    0x1D,
    0x00,
    0x12,
    0x00,
    0x12,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80667994, &brkIdx_6108);

/* 80666BF8-80666C38 003638 0040+00 2/2 0/0 0/0 .text            initStopBrkBtk__11daCstatue_cFv */
void daCstatue_c::initStopBrkBtk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806679A0-806679AC 000308 000A+02 0/1 0/0 0/0 .rodata          brkIdx$6115 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const brkIdx_6115[10 + 2 /* padding */] = {
    0x00,
    0x1E,
    0x00,
    0x1B,
    0x00,
    0x1D,
    0x00,
    0x11,
    0x00,
    0x11,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x806679A0, &brkIdx_6115);
#pragma pop

/* 80666C38-80666DE8 003678 01B0+00 2/2 0/0 0/0 .text            initStartBrkBtk__11daCstatue_cFv */
void daCstatue_c::initStartBrkBtk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806679AC-806679B0 000314 0004+00 0/1 0/0 0/0 .rodata          @6396 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6396 = 50.0f;
COMPILER_STRIP_GATE(0x806679AC, &lit_6396);
#pragma pop

/* 80666DE8-80667418 003828 0630+00 1/1 0/0 0/0 .text            execute__11daCstatue_cFv */
void daCstatue_c::execute() {
    // NONMATCHING
}

/* 80667418-80667438 003E58 0020+00 1/0 0/0 0/0 .text            daCstatue_Execute__FP11daCstatue_c
 */
static void daCstatue_Execute(daCstatue_c* param_0) {
    // NONMATCHING
}

/* 80667438-80667610 003E78 01D8+00 1/1 0/0 0/0 .text            draw__11daCstatue_cFv */
void daCstatue_c::draw() {
    // NONMATCHING
}

/* 80667610-80667630 004050 0020+00 1/0 0/0 0/0 .text            daCstatue_Draw__FP11daCstatue_c */
static void daCstatue_Draw(daCstatue_c* param_0) {
    // NONMATCHING
}

/* 80667630-80667678 004070 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80667678-80667680 0040B8 0008+00 1/0 0/0 0/0 .text            @36@__dt__15dBgS_StatueAcchFv */
static void func_80667678() {
    // NONMATCHING
}

/* 80667680-80667688 0040C0 0008+00 1/0 0/0 0/0 .text            @20@__dt__15dBgS_StatueAcchFv */
static void func_80667680() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80667BDC-80667BE0 000064 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80667BDC[4];
#pragma pop

/* 80667BE0-80667BE4 000068 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80667BE0[4];
#pragma pop

/* 80667BE4-80667BE8 00006C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80667BE4[4];
#pragma pop

/* 80667BE8-80667BEC 000070 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80667BE8[4];
#pragma pop

/* 80667BEC-80667BF0 000074 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80667BEC[4];
#pragma pop

/* 80667BF0-80667BF4 000078 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80667BF0[4];
#pragma pop

/* 80667BF4-80667BF8 00007C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80667BF4[4];
#pragma pop

/* 80667BF8-80667BFC 000080 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80667BF8[4];
#pragma pop

/* 80667BFC-80667C00 000084 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80667BFC[4];
#pragma pop

/* 80667C00-80667C04 000088 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80667C00[4];
#pragma pop

/* 80667C04-80667C08 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80667C04[4];
#pragma pop

/* 80667C08-80667C0C 000090 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80667C08[4];
#pragma pop

/* 80667C0C-80667C10 000094 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80667C0C[4];
#pragma pop

/* 80667C10-80667C14 000098 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80667C10[4];
#pragma pop

/* 80667C14-80667C18 00009C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80667C14[4];
#pragma pop

/* 80667C18-80667C1C 0000A0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80667C18[4];
#pragma pop

/* 80667C1C-80667C20 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80667C1C[4];
#pragma pop

/* 80667C20-80667C24 0000A8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80667C20[4];
#pragma pop

/* 80667C24-80667C28 0000AC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_80667C24[4];
#pragma pop

/* 80667C28-80667C2C 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_80667C28[4];
#pragma pop

/* 80667C2C-80667C30 0000B4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80667C2C[4];
#pragma pop

/* 80667C30-80667C34 0000B8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80667C30[4];
#pragma pop

/* 80667C34-80667C38 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80667C34[4];
#pragma pop

/* 80667C38-80667C3C 0000C0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80667C38[4];
#pragma pop

/* 80667C3C-80667C40 0000C4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80667C3C[4];
#pragma pop

/* 80667C40-80667C44 0000C8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JAUSectionHeap>             */
#pragma push
#pragma force_active on
static u8 data_80667C40[4];
#pragma pop