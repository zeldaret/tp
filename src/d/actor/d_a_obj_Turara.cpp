/**
 * @file d_a_obj_Turara.cpp
 * 
*/

#include "d/actor/d_a_obj_Turara.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void __ct__14daTurara_HIO_cFv();
extern "C" void __dt__18fOpAcm_HIO_entry_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" void setBaseMtx__10daTurara_cFv();
extern "C" void CreateHeap__10daTurara_cFv();
extern "C" void create__10daTurara_cFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void setFallStat__10daTurara_cFv();
extern "C" void Execute__10daTurara_cFPPA3_A4_f();
extern "C" void move__10daTurara_cFv();
extern "C" void init_modeWait__10daTurara_cFv();
extern "C" void modeWait__10daTurara_cFv();
extern "C" void eventStart__10daTurara_cFv();
extern "C" void init_modeDropInit__10daTurara_cFv();
extern "C" void modeDropInit__10daTurara_cFv();
extern "C" void init_modeDrop__10daTurara_cFv();
extern "C" void modeDrop__10daTurara_cFv();
extern "C" void bgCheck__10daTurara_cFv();
extern "C" void init_modeDropEnd__10daTurara_cFv();
extern "C" void modeDropEnd__10daTurara_cFv();
extern "C" void init_modeDropEnd2__10daTurara_cFv();
extern "C" void modeDropEnd2__10daTurara_cFv();
extern "C" void Draw__10daTurara_cFv();
extern "C" void Delete__10daTurara_cFv();
extern "C" static void daTurara_Draw__FP10daTurara_c();
extern "C" static void daTurara_Execute__FP10daTurara_c();
extern "C" static void daTurara_Delete__FP10daTurara_c();
extern "C" static void daTurara_Create__FP10fopAc_ac_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__14daTurara_HIO_cFv();
extern "C" void __sinit_d_a_obj_Turara_cpp();
extern "C" static void func_80B9E690();
extern "C" static void func_80B9E698();
extern "C" static void func_80B9E6A0();
extern "C" static void func_80B9E6A8();
extern "C" void __dt__17dEvLib_callback_cFv();
extern "C" bool eventStart__17dEvLib_callback_cFv();
extern "C" bool eventRun__17dEvLib_callback_cFv();
extern "C" bool eventEnd__17dEvLib_callback_cFv();
extern "C" void __dt__10daTurara_cFv();
extern "C" u8 const mCcDObjInfo__10daTurara_c[48];
extern "C" extern char const* const d_a_obj_Turara__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_createItemFromTable__FPC4cXyziiiPC5csXyziPC4cXyzPfPfb();
extern "C" void fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void eventUpdate__17dEvLib_callback_cFv();
extern "C" void orderEvent__17dEvLib_callback_cFiii();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool Create__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void Set__4cBgWFP6cBgD_tUlPA3_A4_f();
extern "C" void __ct__4dBgWFv();
extern "C" void Move__4dBgWFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitGObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __ct__5csXyzFsss();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__16dBgS_MoveBgActor[10];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* 80B9E97C-80B9E988 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80B9E988-80B9E99C 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80B9E99C-80B9E9E0 000020 0044+00 2/2 0/0 0/0 .data            mCcDCyl__10daTurara_c */
dCcD_SrcCyl daTurara_c::mCcDCyl = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        0.0f, // mRadius
        0.0f // mHeight
    } // mCyl
};

/* 80B9E9E0-80B9E9EC -00001 000C+00 0/1 0/0 0/0 .data            @3924 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3924[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWait__10daTurara_cFv,
};
#pragma pop

/* 80B9E9EC-80B9E9F8 -00001 000C+00 0/1 0/0 0/0 .data            @3925 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3925[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeDropInit__10daTurara_cFv,
};
#pragma pop

/* 80B9E9F8-80B9EA04 -00001 000C+00 0/1 0/0 0/0 .data            @3926 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3926[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeDrop__10daTurara_cFv,
};
#pragma pop

/* 80B9EA04-80B9EA10 -00001 000C+00 0/1 0/0 0/0 .data            @3927 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3927[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeDropEnd__10daTurara_cFv,
};
#pragma pop

/* 80B9EA10-80B9EA1C -00001 000C+00 0/1 0/0 0/0 .data            @3928 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3928[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeDropEnd2__10daTurara_cFv,
};
#pragma pop

/* 80B9EA1C-80B9EA58 0000A0 003C+00 0/1 0/0 0/0 .data            mode_proc$3923 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 mode_proc[60] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

static void daTurara_Draw(daTurara_c*);
static void daTurara_Execute(daTurara_c*);
static void daTurara_Delete(daTurara_c*);
static void daTurara_Create(fopAc_ac_c*);

/* 80B9EA58-80B9EA78 -00001 0020+00 1/0 0/0 0/0 .data            l_daTurara_Method */
static actor_method_class l_daTurara_Method = {
    (process_method_func)daTurara_Draw,
    (process_method_func)daTurara_Execute,
    (process_method_func)daTurara_Delete,
    0,
    (process_method_func)daTurara_Create,
};

/* 80B9EA78-80B9EAA8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Turara */
extern actor_process_profile_definition g_profile_Obj_Turara = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Turara,        // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daTurara_c),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  545,                    // mPriority
  &l_daTurara_Method,     // sub_method
  0x00044100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80B9EAA8-80B9EAB4 00012C 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80B9EAB4-80B9EAC0 000138 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80B9EAC0-80B9EACC 000144 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80B9EACC-80B9EAF0 000150 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B9E6A8,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B9E6A0,
};

/* 80B9EAF0-80B9EAFC 000174 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80B9EAFC-80B9EB08 000180 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80B9EB08-80B9EB20 00018C 0018+00 3/3 0/0 0/0 .data            __vt__17dEvLib_callback_c */
SECTION_DATA extern void* __vt__17dEvLib_callback_c[6] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17dEvLib_callback_cFv,
    (void*)eventStart__17dEvLib_callback_cFv,
    (void*)eventRun__17dEvLib_callback_cFv,
    (void*)eventEnd__17dEvLib_callback_cFv,
};

/* 80B9EB20-80B9EB68 0001A4 0048+00 2/2 0/0 0/0 .data            __vt__10daTurara_c */
SECTION_DATA extern void* __vt__10daTurara_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__10daTurara_cFv,
    (void*)Create__16dBgS_MoveBgActorFv,
    (void*)Execute__10daTurara_cFPPA3_A4_f,
    (void*)Draw__10daTurara_cFv,
    (void*)Delete__10daTurara_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B9E698,
    (void*)func_80B9E690,
    (void*)eventRun__17dEvLib_callback_cFv,
    (void*)eventEnd__17dEvLib_callback_cFv,
    (void*)__dt__10daTurara_cFv,
    (void*)eventStart__10daTurara_cFv,
};

/* 80B9EB68-80B9EB74 0001EC 000C+00 2/2 0/0 0/0 .data            __vt__14daTurara_HIO_c */
SECTION_DATA extern void* __vt__14daTurara_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14daTurara_HIO_cFv,
};

/* 80B9EB74-80B9EB80 0001F8 000C+00 3/3 0/0 0/0 .data            __vt__18fOpAcm_HIO_entry_c */
SECTION_DATA extern void* __vt__18fOpAcm_HIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18fOpAcm_HIO_entry_cFv,
};

/* 80B9EB80-80B9EB8C 000204 000C+00 4/4 0/0 0/0 .data            __vt__14mDoHIO_entry_c */
SECTION_DATA extern void* __vt__14mDoHIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14mDoHIO_entry_cFv,
};

/* 80B9CB8C-80B9CBF8 0000EC 006C+00 1/1 0/0 0/0 .text            __ct__14daTurara_HIO_cFv */
daTurara_HIO_c::daTurara_HIO_c() {
    // NONMATCHING
    field_0x04 = 450.f;
    mGravity = 10.0f;
    mMaxGravity = 200.0f;
    mWaitTime = 0x1e;
    field_0x14 = 5.0f;
    field_0x11 = 0x4;
    field_0x18 = 3.0f;
    field_0x1c = 5.0f;
}

/* 80B9CC9C-80B9CD74 0001FC 00D8+00 2/2 0/0 0/0 .text            setBaseMtx__10daTurara_cFv */
void daTurara_c::setBaseMtx() {
    // NONMATCHING
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(0, shape_angle.y, 0);
    mDoMtx_stack_c::ZXYrotM(field_0x750, field_0x752, field_0x754);
    mDoMtx_stack_c::transM(field_0x758, field_0x75c, field_0x760);
    mpModel[field_0x984]->setBaseScale(scale);
    mpModel[field_0x984]->setBaseTRMtx(mDoMtx_stack_c::get());
    // FIXME: Shouldn't the following be C_MTXCopy for shield debug?
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
}

/* ############################################################################################## */
/* 80B9E908-80B9E938 000014 0030+00 1/1 0/0 0/0 .rodata          mCcDObjInfo__10daTurara_c */
SECTION_RODATA u8 const daTurara_c::mCcDObjInfo[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1F,
    0xF8, 0x40, 0x00, 0x22, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x79, 0x01, 0x00, 0x01, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B9E908, &daTurara_c::mCcDObjInfo);

/* 80B9E938-80B9E940 000044 0008+00 1/1 0/0 0/0 .rodata          l_bmdIdx */
static u32 const l_bmdIdx[2] = {5, 8};

/* 80B9CD74-80B9CED8 0002D4 0164+00 1/0 0/0 0/0 .text            CreateHeap__10daTurara_cFv */
int daTurara_c::CreateHeap() {
    // NONMATCHING
    J3DModelData* modelData = (J3DModelData*) dComIfG_getObjectRes("M_Turara", l_bmdIdx[field_0x98c]);

    if (modelData == NULL) {
        // FIXME: For shield decomp matching, needs a JUT assert.
    }
    if (field_0x98c == 0) {
        mpModel[0] = mDoExt_J3DModel__create(modelData, 0, 0x11000084);
    } else {
        mpModel[0] = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    }
    if (mpModel[0] == NULL) {
        return 0;
    }

    modelData = (J3DModelData*) dComIfG_getObjectRes("M_Turara", 9);
    if (modelData == NULL) {
        // FIXME: For shield decomp matching, needs a JUT assert.
    }
    mpModel[1] = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel[1] == NULL) {
        return 0;
    }
    dBgW* my_dBgW = new dBgW;
    field_0x980 = my_dBgW;
    if (field_0x980 == NULL || field_0x980->Set((cBgD_t *)dComIfG_getObjectRes("M_Turara", 0xd),
                                                1, &mBgMtx) != 0) {
        field_0x980 = NULL;
        return 0;
    }
    return 1;
}

/* 80B9CED8-80B9D29C 000438 03C4+00 1/1 0/0 0/0 .text            create__10daTurara_cFv */
int daTurara_c::create() {
    // NONMATCHING
    fopAcM_SetupActor(this, daTurara_c);
    u8 my_bit = getSwBit3();
    if (fopAcM_isSwitch(this, my_bit)) {
        return cPhs_ERROR_e;
    }
    int phase = dComIfG_resLoad(&mPhaseReq,"M_Turara");
    if (phase == cPhs_COMPLEATE_e) {
        u8 my_bool = 0;
        field_0x98c = shape_angle.x;
        if (field_0x98c != 0) {
            if (field_0x98c == 1) {
                my_bool = 1;
                u8 my_bit1 = getSwBit1();
                fopAcM_onSwitch(this, my_bit1);
            }
            fopAcM_SetGroup(this,0);
            field_0x98c = 1;
        } else {
            fopAcM_SetGroup(this,2);
        }
        if (MoveBGCreate("M_Turara", 0xc, dBgS_MoveBGProc_TypicalRotY, 0x2180, NULL) == cPhs_ERROR_e) {
            return cPhs_ERROR_e;
        }
        mAcchCir.SetWall(150.0f, 150.0f);
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
                  fopAcM_GetSpeed_p(this), NULL, NULL);
        mAcch.SetWaterCheckOffset(10000.0f);
        field_0x748 = 0;
        field_0x750 = 0;
        field_0x752 = 0;
        field_0x754 = 0;
        field_0x758 = 0.0f;
        field_0x75c = 0.0f;
        field_0x760 = 0.0f;
        mColliderStts.Init(0xff, 0xff, this);
        mCylCollider.Set(mCcDCyl);
        mCylCollider.SetStts(&mColliderStts);
        mCylCollider.OffAtSetBit();
        u8 my_bit1 = getSwBit1();
        if (fopAcM_isSwitch(this, my_bit1)) {
            field_0x984 = 1;
            mCylCollider.OffCoSetBit();
            if (mpBgW) {
                dComIfG_Bgsp().Release(mpBgW);
            }
            if (field_0x980) {
                dComIfG_Bgsp().Regist(field_0x980, this);
                field_0x980->Move();
            }
            if (my_bool) {
                mMode = 3;
            } else {
                setFallStat();
            }
        } else {
            field_0x984 = 0;
            field_0x5c9 = getSwBit2();
            init_modeWait();
        }
        fopAcM_SetMtx(this, mpModel[field_0x984]->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mpModel[field_0x984]->getModelData());
        setBaseMtx();
        field_0x994 = 1;
        // FIXME: Needs entryHIO here.
    }
    return phase;
}

/* 80B9D468-80B9D4CC 0009C8 0064+00 1/1 0/0 0/0 .text            setFallStat__10daTurara_cFv */
void daTurara_c::setFallStat() {
    // NONMATCHING
    mAcch.CrrPos(dComIfG_Bgsp());
    current.pos.y = mAcch.GetGroundH();
    mAcch.CrrPos(dComIfG_Bgsp());
    mMode = 3;
}

/* 80B9D4CC-80B9D548 000A2C 007C+00 1/0 0/0 0/0 .text            Execute__10daTurara_cFPPA3_A4_f */
int daTurara_c::Execute(Mtx** i_mtx) {
    // NONMATCHING
    eventUpdate();
    move();
    *i_mtx = &mpModel[field_0x984]->getBaseTRMtx();
    mInWater = mAcch.ChkWaterIn();
    setBaseMtx();
    mColliderStts.Move();
    return 1;
}

/* ############################################################################################## */
/* 80B9E94C-80B9E950 000058 0004+00 0/1 0/0 0/0 .rodata          @3949 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3949 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80B9E94C, &lit_3949);
#pragma pop

/* 80B9E950-80B9E954 00005C 0004+00 0/1 0/0 0/0 .rodata          @3950 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3950 = 170.0f;
COMPILER_STRIP_GATE(0x80B9E950, &lit_3950);
#pragma pop

/* 80B9E954-80B9E958 000060 0004+00 0/1 0/0 0/0 .rodata          @3951 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3951 = 130.0f;
COMPILER_STRIP_GATE(0x80B9E954, &lit_3951);
#pragma pop

/* 80B9E958-80B9E95C 000064 0004+00 0/1 0/0 0/0 .rodata          @3952 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3952 = 510.0f;
COMPILER_STRIP_GATE(0x80B9E958, &lit_3952);
#pragma pop

/* 80B9E95C-80B9E960 000068 0004+00 0/1 0/0 0/0 .rodata          @3953 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3953 = 50.0f;
COMPILER_STRIP_GATE(0x80B9E95C, &lit_3953);
#pragma pop

/* 80B9EB98-80B9EBA4 000008 000C+00 1/1 0/0 0/0 .bss             @3653 */
static u8 lit_3653[12];

/* 80B9EBA4-80B9EBC4 000014 0020+00 5/5 0/0 0/0 .bss             l_HIO */
static daTurara_HIO_c l_HIO;

/* 80B9EBC4-80B9EBC8 000034 0004+00 1/1 0/0 0/0 .bss             None */
static u8 data_80B9EBC4[4];

/* 80B9D548-80B9D72C 000AA8 01E4+00 1/1 0/0 0/0 .text            move__10daTurara_cFv */
void daTurara_c::move() {
    // NONMATCHING
}

/* 80B9D72C-80B9D738 000C8C 000C+00 1/1 0/0 0/0 .text            init_modeWait__10daTurara_cFv */
void daTurara_c::init_modeWait() {
    // NONMATCHING
    mMode = 0;
}

/* 80B9D738-80B9D998 000C98 0260+00 1/0 0/0 0/0 .text            modeWait__10daTurara_cFv */
void daTurara_c::modeWait() {
    // NONMATCHING
    if (field_0x5c9 != 0xff && fopAcM_isSwitch(this, field_0x5c9)) {
        if (getEvetID() != 0xff) {
            orderEvent(getEvetID(), 0xFF, 1);
        } else {
            eventStart();
        }
    }
    if (mCylCollider.ChkTgHit()) {
        dCcD_GObjInf* my_actor = mCylCollider.GetTgHitGObj();
        if (my_actor->GetAtType() == AT_TYPE_BOMB) {
            if (getEvetID() != 0xff) {
                orderEvent(getEvetID(), 0xFF, 1);
            } else {
                eventStart();
            }
        } else if (my_actor->GetAtType() == AT_TYPE_IRON_BALL) {
            dComIfGp_particle_set(0x8a8f, &current.pos, NULL, NULL, NULL, 0xff, NULL, -1, NULL, NULL, NULL);
            dComIfGp_particle_set(0x8a90, &current.pos, NULL, NULL, NULL, 0xff, NULL, -1, NULL, NULL, NULL);
            dComIfGp_particle_set(0x8a91, &current.pos, NULL, NULL, NULL, 0xff, NULL, -1, NULL, NULL, NULL);
            s8 roomNo = fopAcM_GetRoomNo(this);
            mDoAud_seStart(0x802ad, &current.pos, 0, dComIfGp_getReverb(roomNo));
            u8 swbit3 = getSwBit3();
            fopAcM_onSwitch(this, swbit3);
            fopAcM_delete(this);
        }
    }
}

/* 80B9D998-80B9D9BC 000EF8 0024+00 2/1 0/0 0/0 .text            eventStart__10daTurara_cFv */
BOOL daTurara_c::eventStart() {
    init_modeDropInit();
    return TRUE;
}

/* 80B9D9BC-80B9DA00 000F1C 0044+00 1/1 0/0 0/0 .text            init_modeDropInit__10daTurara_cFv
 */
void daTurara_c::init_modeDropInit() {
    if (field_0x98c == 0) {
        mWaitTime = getWaitTime();
    } else {
        mWaitTime = l_HIO.mWaitTime;
    }
    field_0x74c = l_HIO.field_0x04;
    mMode = 1;
}

/* 80B9DA00-80B9DA44 000F60 0044+00 1/0 0/0 0/0 .text            modeDropInit__10daTurara_cFv */
void daTurara_c::modeDropInit() {
    if (mWaitTime != 0) {
        mWaitTime -= 1;
    } else {
        field_0x74c = 0.0f;
        init_modeDrop();
    }
}

/* 80B9DA44-80B9DB44 000FA4 0100+00 1/1 0/0 0/0 .text            init_modeDrop__10daTurara_cFv */
void daTurara_c::init_modeDrop() {
    // NONMATCHING
    fopAcM_SetGravity(this, -l_HIO.mGravity);
    fopAcM_SetMaxFallSpeed(this, -l_HIO.mMaxGravity);
    fopAcM_SetSpeedF(this, 0.0f);
    fopAcM_SetMtx(this, mpModel[field_0x984]->getBaseTRMtx());
    fopAcM_setCullSizeBox2(this, mpModel[field_0x984]->getModelData());
    mCylCollider.OnAtSetBit();
    //mpBgW->OffRoofRegist();
    s8 roomNo = fopAcM_GetRoomNo(this);
    mDoAud_seStart(0x802ab, &current.pos, 0, dComIfGp_getReverb(roomNo));
    mMode = 2;
}

/* 80B9DB44-80B9DB90 0010A4 004C+00 1/0 0/0 0/0 .text            modeDrop__10daTurara_cFv */
void daTurara_c::modeDrop() {
    // NONMATCHING
}

/* 80B9DB90-80B9DBD0 0010F0 0040+00 1/1 0/0 0/0 .text            bgCheck__10daTurara_cFv */
void daTurara_c::bgCheck() {
    // NONMATCHING
}

/* 80B9DBD0-80B9DE48 001130 0278+00 1/1 0/0 0/0 .text            init_modeDropEnd__10daTurara_cFv */
void daTurara_c::init_modeDropEnd() {
    // NONMATCHING
}

/* 80B9DE48-80B9E078 0013A8 0230+00 1/0 0/0 0/0 .text            modeDropEnd__10daTurara_cFv */
void daTurara_c::modeDropEnd() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B9E968-80B9E96C 000074 0004+00 0/1 0/0 0/0 .rodata          @4263 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4263 = 100.0f;
COMPILER_STRIP_GATE(0x80B9E968, &lit_4263);
#pragma pop

/* 80B9E96C-80B9E970 000078 0004+00 0/1 0/0 0/0 .rodata          @4264 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4264 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80B9E96C, &lit_4264);
#pragma pop

/* 80B9E078-80B9E338 0015D8 02C0+00 1/1 0/0 0/0 .text            init_modeDropEnd2__10daTurara_cFv
 */
void daTurara_c::init_modeDropEnd2() {
    // NONMATCHING
}

/* 80B9E338-80B9E388 001898 0050+00 1/0 0/0 0/0 .text            modeDropEnd2__10daTurara_cFv */
void daTurara_c::modeDropEnd2() {
    // NONMATCHING
}

/* 80B9E388-80B9E478 0018E8 00F0+00 1/0 0/0 0/0 .text            Draw__10daTurara_cFv */
int daTurara_c::Draw() {
    // NONMATCHING
    return 0;
}

/* 80B9E478-80B9E4E0 0019D8 0068+00 1/0 0/0 0/0 .text            Delete__10daTurara_cFv */
int daTurara_c::Delete() {
    // NONMATCHING
    return 0;
}

/* 80B9E4E0-80B9E50C 001A40 002C+00 1/0 0/0 0/0 .text            daTurara_Draw__FP10daTurara_c */
static void daTurara_Draw(daTurara_c* param_0) {
    // NONMATCHING
}

/* 80B9E50C-80B9E52C 001A6C 0020+00 1/0 0/0 0/0 .text            daTurara_Execute__FP10daTurara_c */
static void daTurara_Execute(daTurara_c* param_0) {
    // NONMATCHING
}

/* 80B9E52C-80B9E54C 001A8C 0020+00 1/0 0/0 0/0 .text            daTurara_Delete__FP10daTurara_c */
static void daTurara_Delete(daTurara_c* param_0) {
    // NONMATCHING
}

/* 80B9E54C-80B9E56C 001AAC 0020+00 1/0 0/0 0/0 .text            daTurara_Create__FP10fopAc_ac_c */
static void daTurara_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80B9E5B4-80B9E620 001B14 006C+00 2/1 0/0 0/0 .text            __dt__14daTurara_HIO_cFv */
daTurara_HIO_c::~daTurara_HIO_c() {
    // NONMATCHING
}

/* 80B9E710-80B9E8E0 001C70 01D0+00 2/1 0/0 0/0 .text            __dt__10daTurara_cFv */
daTurara_c::~daTurara_c() {
    // NONMATCHING
}

/* 80B9E970-80B9E970 00007C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
