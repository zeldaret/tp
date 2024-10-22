/**
 * @file d_a_cstaF.cpp
 * 
*/

#include "d/actor/d_a_cstaF.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" static void daCstaF_rideCB__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c();
extern "C" void CreateHeap__9daCstaF_cFv();
extern "C" void checkCoverModel__9daCstaF_cFv();
extern "C" void create__9daCstaF_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__15dBgS_StatueAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void daCstaF_Create__FP10fopAc_ac_c();
extern "C" void __dt__9daCstaF_cFv();
extern "C" static void daCstaF_Delete__FP9daCstaF_c();
extern "C" void setRoomInfo__9daCstaF_cFv();
extern "C" void setMatrix__9daCstaF_cFv();
extern "C" void posMove__9daCstaF_cFv();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" void setCollision__9daCstaF_cFv();
extern "C" void setAnime__9daCstaF_cFv();
extern "C" void initBrk__9daCstaF_cFUs();
extern "C" void initStopBrkBtk__9daCstaF_cFv();
extern "C" void initStartBrkBtk__9daCstaF_cFv();
extern "C" void Execute__9daCstaF_cFPPA3_A4_f();
extern "C" static void daCstaF_Execute__FP9daCstaF_c();
extern "C" void Draw__9daCstaF_cFv();
extern "C" static void daCstaF_Draw__FP9daCstaF_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __sinit_d_a_cstaF_cpp();
extern "C" static void func_804DF89C();
extern "C" static void func_804DF8A4();
extern "C" u8 const m_bckIdxTable__9daCstaF_c[16];

//
// External References:
//

extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_modelEntryDL__FP8J3DModel();
extern "C" void setMorf__13mDoExt_morf_cFf();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs();
extern "C" void fopAcM_getPolygonAngle__FPC8cM3dGPlas();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void isEventBit__11dSv_event_cCFUs();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void init__7dPaPo_cFP9dBgS_Acchff();
extern "C" void setEffectCenter__7dPaPo_cFPC12dKy_tevstr_cPC4cXyzUlUlPC4cXyzPC5csXyzPC4cXyzScff();
extern "C" void GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla();
extern "C" void GetPolyColor__4dBgSFRC13cBgS_PolyInfo();
extern "C" void GetRoomId__4dBgSFRC13cBgS_PolyInfo();
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP10fopAc_ac_ciP12dBgS_AcchCir();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool Create__16dBgS_MoveBgActorFv();
extern "C" bool Delete__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void SetStatue__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitGObj__12dCcD_GObjInfFv();
extern "C" void GetTgHitObjSe__12dCcD_GObjInfFv();
extern "C" void getHitSeID__12dCcD_GObjInfFUci();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void StartCAt__8dCcD_CylFR4cXyz();
extern "C" void MoveCAt__8dCcD_CylFR4cXyz();
extern "C" void simpleAnmPlay__9daAlink_cFP10J3DAnmBase();
extern "C" void getCopyRodBallDisMax__9daAlink_cCFv();
extern "C" void getCopyRodControllActor__9daAlink_cFv();
extern "C" void clearData__16daPy_actorKeep_cFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_pol_sound_get__FPC13cBgS_PolyInfo();
extern "C" void ClrCcMove__9cCcD_SttsFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void atan2sX_Z__4cXyzCFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void cLib_chaseF__FPfff();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void __dt__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void searchUpdateMaterialID__19J3DAnmTextureSRTKeyFP12J3DModelData();
extern "C" void searchUpdateMaterialID__15J3DAnmTevRegKeyFP12J3DModelData();
extern "C" void entryTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey();
extern "C" void entryTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__16dBgS_MoveBgActor[10];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* 804DD958-804DD978 000078 0020+00 1/1 0/0 0/0 .text
 * daCstaF_rideCB__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c            */
static void daCstaF_rideCB(dBgW* param_0, fopAc_ac_c* param_1, fopAc_ac_c* param_2) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804DF8B8-804DF8C4 000000 000C+00 7/7 0/0 0/0 .rodata          @3765 */
SECTION_RODATA static u8 const lit_3765[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x804DF8B8, &lit_3765);

/* 804DF8C4-804DF8CC 00000C 0006+02 0/1 0/0 0/0 .rodata          l_arcNameF */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_arcNameF[6 + 2 /* padding */] = {
    0x43,
    0x73,
    0x74,
    0x61,
    0x46,
    0x00,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x804DF8C4, &l_arcNameF);
#pragma pop

/* 804DF8CC-804DF8D4 000014 0007+01 0/2 0/0 0/0 .rodata          l_arcNameFB */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_arcNameFB[7 + 1 /* padding */] = {
    0x43,
    0x73,
    0x74,
    0x61,
    0x46,
    0x42,
    0x00,
    /* padding */
    0x00,
};
COMPILER_STRIP_GATE(0x804DF8CC, &l_arcNameFB);
#pragma pop

/* 804DF8D4-804DF8DC 00001C 0008+00 1/1 0/0 0/0 .rodata          l_spStageName */
SECTION_RODATA static u8 const l_spStageName[8] = {
    0x52, 0x5F, 0x53, 0x50, 0x32, 0x30, 0x39, 0x00,
};
COMPILER_STRIP_GATE(0x804DF8D4, &l_spStageName);

/* 804DF8DC-804DF8EC 000024 0010+00 0/2 0/0 0/0 .rodata          m_bckIdxTable__9daCstaF_c */
#pragma push
#pragma force_active on
SECTION_RODATA u8 const daCstaF_c::m_bckIdxTable[16] = {
    0x00, 0x09, 0x00, 0x09, 0x00, 0x08, 0x00, 0x07, 0x00, 0x09, 0x00, 0x09, 0x00, 0x08, 0x00, 0x07,
};
COMPILER_STRIP_GATE(0x804DF8DC, &daCstaF_c::m_bckIdxTable);
#pragma pop

/* 804DF8EC-804DF8FC 000034 0010+00 0/1 0/0 0/0 .rodata          dataTbl$4160 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const dataTbl[16] = {
    0x00, 0x0C, 0x00, 0x09, 0x00, 0x10, 0x00, 0x13, 0x00, 0x0C, 0x00, 0x09, 0x00, 0x11, 0x00, 0x15,
};
COMPILER_STRIP_GATE(0x804DF8EC, &dataTbl);
#pragma pop

/* 804DF8FC-804DF900 000044 0004+00 1/7 0/0 0/0 .rodata          @4205 */
SECTION_RODATA static u8 const lit_4205[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x804DF8FC, &lit_4205);

/* 804DF900-804DF904 000048 0004+00 1/8 0/0 0/0 .rodata          @4206 */
SECTION_RODATA static f32 const lit_4206 = 1.0f;
COMPILER_STRIP_GATE(0x804DF900, &lit_4206);

/* 804DD978-804DDB48 000098 01D0+00 1/0 0/0 0/0 .text            CreateHeap__9daCstaF_cFv */
int daCstaF_c::CreateHeap() {
    // NONMATCHING
}

/* 804DDB48-804DDBB4 000268 006C+00 2/2 0/0 0/0 .text            checkCoverModel__9daCstaF_cFv */
void daCstaF_c::checkCoverModel() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804DF904-804DF908 00004C 0004+00 0/1 0/0 0/0 .rodata          @4359 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4359 = 0x41F0147B;
COMPILER_STRIP_GATE(0x804DF904, &lit_4359);
#pragma pop

/* 804DF908-804DF90C 000050 0004+00 0/1 0/0 0/0 .rodata          @4360 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4360 = 80.0f;
COMPILER_STRIP_GATE(0x804DF908, &lit_4360);
#pragma pop

/* 804DF90C-804DF910 000054 0004+00 0/1 0/0 0/0 .rodata          @4361 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4361 = 160.0f;
COMPILER_STRIP_GATE(0x804DF90C, &lit_4361);
#pragma pop

/* 804DF910-804DF914 000058 0004+00 0/1 0/0 0/0 .rodata          @4362 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4362 = 280.0f;
COMPILER_STRIP_GATE(0x804DF910, &lit_4362);
#pragma pop

/* 804DF914-804DF918 00005C 0004+00 0/1 0/0 0/0 .rodata          @4363 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4363 = 400.0f;
COMPILER_STRIP_GATE(0x804DF914, &lit_4363);
#pragma pop

/* 804DF918-804DF91C 000060 0004+00 0/1 0/0 0/0 .rodata          @4364 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4364 = 475.0f;
COMPILER_STRIP_GATE(0x804DF918, &lit_4364);
#pragma pop

/* 804DF91C-804DF920 000064 0004+00 0/1 0/0 0/0 .rodata          @4365 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4365 = 450.0f;
COMPILER_STRIP_GATE(0x804DF91C, &lit_4365);
#pragma pop

/* 804DF920-804DF924 000068 0004+00 0/1 0/0 0/0 .rodata          @4366 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4366 = -475.0f;
COMPILER_STRIP_GATE(0x804DF920, &lit_4366);
#pragma pop

/* 804DF924-804DF928 00006C 0004+00 0/1 0/0 0/0 .rodata          @4367 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4367 = -8.0f;
COMPILER_STRIP_GATE(0x804DF924, &lit_4367);
#pragma pop

/* 804DF928-804DF92C 000070 0004+00 0/1 0/0 0/0 .rodata          @4368 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4368 = -100.0f;
COMPILER_STRIP_GATE(0x804DF928, &lit_4368);
#pragma pop

/* 804DF92C-804DF930 000074 0004+00 0/2 0/0 0/0 .rodata          @4369 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4369 = 30.0f;
COMPILER_STRIP_GATE(0x804DF92C, &lit_4369);
#pragma pop

/* 804DF930-804DF938 000078 0008+00 0/3 0/0 0/0 .rodata          @4371 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4371[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x804DF930, &lit_4371);
#pragma pop

/* 804DF9A0-804DF9E4 000000 0044+00 1/1 0/0 0/0 .data            l_cylSrc */
static dCcD_SrcCyl l_cylSrc = {
    {
        {0x0, {{AT_TYPE_THROW_OBJ, 0x1, 0x12}, {0xd97afddf, 0x11}, 0x79}}, // mObj
        {dCcD_SE_STONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x5, 0x0, 0x0, 0x3}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        125.0f, // mRadius
        390.0f // mHeight
    } // mCyl
};

/* 804DF9E4-804DFA04 -00001 0020+00 1/0 0/0 0/0 .data            l_daCstaF_Method */
static actor_method_class l_daCstaF_Method = {
    (process_method_func)daCstaF_Create__FP10fopAc_ac_c,
    (process_method_func)daCstaF_Delete__FP9daCstaF_c,
    (process_method_func)daCstaF_Execute__FP9daCstaF_c,
    0,
    (process_method_func)daCstaF_Draw__FP9daCstaF_c,
};

/* 804DFA04-804DFA34 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_CSTAF */
extern actor_process_profile_definition g_profile_CSTAF = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_CSTAF,             // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  0x00000B38,             // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  272,                    // mPriority
  &l_daCstaF_Method,      // sub_method
  0x00040520,             // mStatus
  fopAc_ENV_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 804DFA34-804DFA40 000094 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 804DFA40-804DFA4C 0000A0 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 804DFA4C-804DFA58 0000AC 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 804DFA58-804DFA64 0000B8 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 804DFA64-804DFA70 0000C4 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 804DFA70-804DFA7C 0000D0 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 804DFA7C-804DFAA0 0000DC 0024+00 3/3 0/0 0/0 .data            __vt__15dBgS_StatueAcch */
SECTION_DATA extern void* __vt__15dBgS_StatueAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15dBgS_StatueAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_804DF8A4,
    (void*)NULL,
    (void*)NULL,
    (void*)func_804DF89C,
};

/* 804DFAA0-804DFAAC 000100 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 804DFAAC-804DFAD4 00010C 0028+00 2/2 0/0 0/0 .data            __vt__9daCstaF_c */
SECTION_DATA extern void* __vt__9daCstaF_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__9daCstaF_cFv,
    (void*)Create__16dBgS_MoveBgActorFv,
    (void*)Execute__9daCstaF_cFPPA3_A4_f,
    (void*)Draw__9daCstaF_cFv,
    (void*)Delete__16dBgS_MoveBgActorFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 804DDBB4-804DE0C4 0002D4 0510+00 1/1 0/0 0/0 .text            create__9daCstaF_cFv */
void daCstaF_c::create() {
    // NONMATCHING
}

/* 804DE0C4-804DE10C 0007E4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 804DE10C-804DE154 00082C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 804DE154-804DE1B0 000874 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 804DE1B0-804DE220 0008D0 0070+00 3/2 0/0 0/0 .text            __dt__15dBgS_StatueAcchFv */
// dBgS_StatueAcch::~dBgS_StatueAcch() {
extern "C" void __dt__15dBgS_StatueAcchFv() {
    // NONMATCHING
}

/* 804DE220-804DE290 000940 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 804DE290-804DE2D8 0009B0 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 804DE2D8-804DE2F8 0009F8 0020+00 1/0 0/0 0/0 .text            daCstaF_Create__FP10fopAc_ac_c */
static void daCstaF_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 804DE2F8-804DE51C 000A18 0224+00 1/1 0/0 0/0 .text            __dt__9daCstaF_cFv */
daCstaF_c::~daCstaF_c() {
    // NONMATCHING
}

/* 804DE51C-804DE558 000C3C 003C+00 1/0 0/0 0/0 .text            daCstaF_Delete__FP9daCstaF_c */
static void daCstaF_Delete(daCstaF_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804DF938-804DF93C 000080 0004+00 1/3 0/0 0/0 .rodata          @4543 */
SECTION_RODATA static f32 const lit_4543 = -1000000000.0f;
COMPILER_STRIP_GATE(0x804DF938, &lit_4543);

/* 804DE558-804DE5F0 000C78 0098+00 2/2 0/0 0/0 .text            setRoomInfo__9daCstaF_cFv */
void daCstaF_c::setRoomInfo() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804DF93C-804DF948 000084 000C+00 1/1 0/0 0/0 .rodata          fieldLocalBallPos$4547 */
SECTION_RODATA static u8 const fieldLocalBallPos[12] = {
    0x00, 0x00, 0x00, 0x00, 0x43, 0x48, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x804DF93C, &fieldLocalBallPos);

/* 804DE5F0-804DE698 000D10 00A8+00 2/2 0/0 0/0 .text            setMatrix__9daCstaF_cFv */
void daCstaF_c::setMatrix() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804DF948-804DF94C 000090 0004+00 0/1 0/0 0/0 .rodata          @4720 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4720 = 18.0f;
COMPILER_STRIP_GATE(0x804DF948, &lit_4720);
#pragma pop

/* 804DF94C-804DF950 000094 0004+00 0/1 0/0 0/0 .rodata          @4721 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4721 = 0.5f;
COMPILER_STRIP_GATE(0x804DF94C, &lit_4721);
#pragma pop

/* 804DF950-804DF958 000098 0004+04 0/1 0/0 0/0 .rodata          @4722 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4722[1 + 1 /* padding */] = {
    1.0f / 5.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x804DF950, &lit_4722);
#pragma pop

/* 804DF958-804DF960 0000A0 0008+00 0/1 0/0 0/0 .rodata          @4723 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4723[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x804DF958, &lit_4723);
#pragma pop

/* 804DF960-804DF968 0000A8 0008+00 0/1 0/0 0/0 .rodata          @4724 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4724[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x804DF960, &lit_4724);
#pragma pop

/* 804DF968-804DF970 0000B0 0008+00 0/1 0/0 0/0 .rodata          @4725 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4725[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x804DF968, &lit_4725);
#pragma pop

/* 804DF970-804DF974 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4726 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4726 = -30.0f;
COMPILER_STRIP_GATE(0x804DF970, &lit_4726);
#pragma pop

/* 804DF974-804DF978 0000BC 0004+00 1/2 0/0 0/0 .rodata          @4727 */
SECTION_RODATA static f32 const lit_4727 = 100.0f;
COMPILER_STRIP_GATE(0x804DF974, &lit_4727);

/* 804DF978-804DF97C 0000C0 0004+00 0/3 0/0 0/0 .rodata          @4728 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4728 = -1.0f;
COMPILER_STRIP_GATE(0x804DF978, &lit_4728);
#pragma pop

/* 804DE698-804DEB18 000DB8 0480+00 1/1 0/0 0/0 .text            posMove__9daCstaF_cFv */
void daCstaF_c::posMove() {
    // NONMATCHING
}

/* 804DEB18-804DEB60 001238 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
// cM3dGPla::~cM3dGPla() {
extern "C" void __dt__8cM3dGPlaFv() {
    // NONMATCHING
}

/* 804DEB60-804DEC14 001280 00B4+00 1/1 0/0 0/0 .text            setCollision__9daCstaF_cFv */
void daCstaF_c::setCollision() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804DF97C-804DF980 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4884 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4884 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x804DF97C, &lit_4884);
#pragma pop

/* 804DF980-804DF984 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4885 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4885 = 3.0f;
COMPILER_STRIP_GATE(0x804DF980, &lit_4885);
#pragma pop

/* 804DF984-804DF988 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4886 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4886 = 15.0f;
COMPILER_STRIP_GATE(0x804DF984, &lit_4886);
#pragma pop

/* 804DFAD8-804DFADC 000000 0004+00 2/2 0/0 0/0 .bss             l_cancelOffset */
static u8 l_cancelOffset[4];

/* 804DEC14-804DF0D8 001334 04C4+00 1/1 0/0 0/0 .text            setAnime__9daCstaF_cFv */
void daCstaF_c::setAnime() {
    // NONMATCHING
}

/* 804DF0D8-804DF150 0017F8 0078+00 3/3 0/0 0/0 .text            initBrk__9daCstaF_cFUs */
void daCstaF_c::initBrk(u16 param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804DF988-804DF98C 0000D0 0004+00 1/1 0/0 0/0 .rodata          brkIdx$4903 */
SECTION_RODATA static u8 const brkIdx[4] = {
    0x00,
    0x10,
    0x00,
    0x11,
};
COMPILER_STRIP_GATE(0x804DF988, &brkIdx);

/* 804DF150-804DF1A4 001870 0054+00 2/2 0/0 0/0 .text            initStopBrkBtk__9daCstaF_cFv */
void daCstaF_c::initStopBrkBtk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804DF98C-804DF990 0000D4 0004+00 0/1 0/0 0/0 .rodata          brIdx$4910 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const brIdx[4] = {
    0x00,
    0x0F,
    0x00,
    0x10,
};
COMPILER_STRIP_GATE(0x804DF98C, &brIdx);
#pragma pop

/* 804DF990-804DF994 0000D8 0004+00 0/1 0/0 0/0 .rodata          @4956 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4956 = 40.0f;
COMPILER_STRIP_GATE(0x804DF990, &lit_4956);
#pragma pop

/* 804DF994-804DF998 0000DC 0004+00 0/1 0/0 0/0 .rodata          @4957 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4957 = 2.0f;
COMPILER_STRIP_GATE(0x804DF994, &lit_4957);
#pragma pop

/* 804DF1A4-804DF37C 0018C4 01D8+00 1/1 0/0 0/0 .text            initStartBrkBtk__9daCstaF_cFv */
void daCstaF_c::initStartBrkBtk() {
    // NONMATCHING
}

/* 804DF37C-804DF6C4 001A9C 0348+00 1/0 0/0 0/0 .text            Execute__9daCstaF_cFPPA3_A4_f */
int daCstaF_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* 804DF6C4-804DF6E4 001DE4 0020+00 1/0 0/0 0/0 .text            daCstaF_Execute__FP9daCstaF_c */
static void daCstaF_Execute(daCstaF_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804DF998-804DF99C 0000E0 0004+00 0/1 0/0 0/0 .rodata          @5082 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5082 = 1000.0f;
COMPILER_STRIP_GATE(0x804DF998, &lit_5082);
#pragma pop

/* 804DF6E4-804DF800 001E04 011C+00 1/0 0/0 0/0 .text            Draw__9daCstaF_cFv */
int daCstaF_c::Draw() {
    // NONMATCHING
}

/* 804DF800-804DF82C 001F20 002C+00 1/0 0/0 0/0 .text            daCstaF_Draw__FP9daCstaF_c */
static void daCstaF_Draw(daCstaF_c* param_0) {
    // NONMATCHING
}

/* 804DF82C-804DF874 001F4C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804DF99C-804DF9A0 0000E4 0004+00 1/1 0/0 0/0 .rodata          @5096 */
SECTION_RODATA static u32 const lit_5096 = 0x478F0481;
COMPILER_STRIP_GATE(0x804DF99C, &lit_5096);

/* 804DF874-804DF89C 001F94 0028+00 0/0 1/0 0/0 .text            __sinit_d_a_cstaF_cpp */
void __sinit_d_a_cstaF_cpp(){// NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x804DF874, __sinit_d_a_cstaF_cpp);
#pragma pop

/* 804DF89C-804DF8A4 001FBC 0008+00 1/0 0/0 0/0 .text            @36@__dt__15dBgS_StatueAcchFv */
static void func_804DF89C() {
    // NONMATCHING
}

/* 804DF8A4-804DF8AC 001FC4 0008+00 1/0 0/0 0/0 .text            @20@__dt__15dBgS_StatueAcchFv */
static void func_804DF8A4() {
    // NONMATCHING
}