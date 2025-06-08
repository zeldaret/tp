/**
 * @file d_a_e_hp.cpp
 * 
*/

#include "d/actor/d_a_e_hp.h"
#include "dol2asm.h"
UNK_REL_DATA;
#include "f_op/f_op_actor_enemy.h"



//
// Forward References:
//

extern "C" void __ct__12daE_HP_HIO_cFv();
extern "C" void ctrlJoint__8daE_HP_cFP8J3DJointP8J3DModel();
extern "C" void JointCallBack__8daE_HP_cFP8J3DJointi();
extern "C" void LampCtrlJoint__8daE_HP_cFP8J3DJointP8J3DModel();
extern "C" void LampJointCallBack__8daE_HP_cFP8J3DJointi();
extern "C" void draw__8daE_HP_cFv();
extern "C" static void daE_HP_Draw__FP8daE_HP_c();
extern "C" void setBck__8daE_HP_cFiUcff();
extern "C" void setActionMode__8daE_HP_cFii();
extern "C" void mChkDistance__8daE_HP_cFf();
extern "C" void damage_check__8daE_HP_cFv();
extern "C" void executeWait__8daE_HP_cFv();
extern "C" void executeMove__8daE_HP_cFv();
extern "C" void executeRetMove__8daE_HP_cFv();
extern "C" void executeAttack__8daE_HP_cFv();
extern "C" void executeDamage__8daE_HP_cFv();
extern "C" void executeDown__8daE_HP_cFv();
extern "C" void executeDead__8daE_HP_cFv();
extern "C" void action__8daE_HP_cFv();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" void mtx_set__8daE_HP_cFv();
extern "C" void cc_set__8daE_HP_cFv();
extern "C" void execute__8daE_HP_cFv();
extern "C" static void daE_HP_Execute__FP8daE_HP_c();
extern "C" static bool daE_HP_IsDelete__FP8daE_HP_c();
extern "C" void _delete__8daE_HP_cFv();
extern "C" static void daE_HP_Delete__FP8daE_HP_c();
extern "C" void CreateHeap__8daE_HP_cFv();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void create__8daE_HP_cFv();
extern "C" void __ct__8daE_HP_cFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" static void daE_HP_Create__FP8daE_HP_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_HP_HIO_cFv();
extern "C" void __sinit_d_a_e_hp_cpp();
extern "C" static void func_806E9DBC();
extern "C" static void func_806E9DC4();
extern "C" extern char const* const d_a_e_hp__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void create__21mDoExt_invisibleModelFP8J3DModelUc();
extern "C" void entryDL__21mDoExt_invisibleModelFP4cXyz();
extern "C" void
__ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl();
extern "C" void play__14mDoExt_McaMorfFP3VecUlSc();
extern "C" void entryDL__14mDoExt_McaMorfFv();
extern "C" void modelCalc__14mDoExt_McaMorfFv();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void initBallModel__13fopEn_enemy_cFv();
extern "C" void checkBallModelDraw__13fopEn_enemy_cFv();
extern "C" void setBallModelEffect__13fopEn_enemy_cFP12dKy_tevstr_c();
extern "C" void drawBallModel__13fopEn_enemy_cFP12dKy_tevstr_c();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs();
extern "C" void fopAcM_getTalkEventPartner__FPC10fopAc_ac_c();
extern "C" void fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fpcEx_IsExist__FUi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void onEventBit__11dSv_event_cFUs();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void setPtT__14dEvt_control_cFPv();
extern "C" void setPtI_Id__14dEvt_control_cFUi();
extern "C" void getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void getRunEventName__16dEvent_manager_cFv();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void SetGroundUpY__9dBgS_AcchFf();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void __ct__14dBgS_ObjLinChkFv();
extern "C" void __dt__14dBgS_ObjLinChkFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void checkNowWolfEyeUp__9daPy_py_cFv();
extern "C" void dKy_daynight_check__Fv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void atan2sX_Z__4cXyzCFv();
extern "C" void atan2sY_XZ__4cXyzCFv();
extern "C" void cM_atan2s__Fff();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void func_802807E0();
extern "C" void func_80280808();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setLinkSearch__15Z2CreatureEnemyFb();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void _savegpr_19();
extern "C" void _savegpr_24();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_24();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 saveBitLabels__16dSv_event_flag_c[1644 + 4 /* padding */];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 806EA220-806EA224 00002C 0004+00 1/1 0/0 0/0 .rodata          @3926 */
SECTION_RODATA static f32 const lit_3926 = 6.0f / 5.0f;
COMPILER_STRIP_GATE(0x806EA220, &lit_3926);

/* 806EA320-806EA364 000038 0044+00 0/1 0/0 0/0 .data            cc_hp_src__22@unnamed@d_a_e_hp_cpp@
 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_806EA320[68] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0xD8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,
    0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00,
};
#pragma pop

/* 806EA364-806EA3A4 00007C 0040+00 0/1 0/0 0/0 .data cc_lamp_src__22@unnamed@d_a_e_hp_cpp@ */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_806EA364[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xD8, 0xFB, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00, 0x75, 0x0D, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};
#pragma pop

/* 806EA3A4-806EA3E8 0000BC 0044+00 0/1 0/0 0/0 .data cc_hp_at_src__22@unnamed@d_a_e_hp_cpp@ */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_806EA3A4[68] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x09, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00,
};
#pragma pop

/* 806EA3E8-806EA3EC 000100 0004+00 1/1 0/0 0/0 .data            particleNmaeDt$4030 */
SECTION_DATA static u8 particleNmaeDt[4] = {
    0x87,
    0x89,
    0x87,
    0x8A,
};

/* 806EA3EC-806EA408 -00001 001C+00 1/1 0/0 0/0 .data            @5058 */
SECTION_DATA static void* lit_5058[7] = {
    (void*)(((char*)action__8daE_HP_cFv) + 0x7C), (void*)(((char*)action__8daE_HP_cFv) + 0x88),
    (void*)(((char*)action__8daE_HP_cFv) + 0x98), (void*)(((char*)action__8daE_HP_cFv) + 0xA4),
    (void*)(((char*)action__8daE_HP_cFv) + 0xB4), (void*)(((char*)action__8daE_HP_cFv) + 0xC0),
    (void*)(((char*)action__8daE_HP_cFv) + 0xCC),
};

/* 806EA408-806EA428 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_HP_Method */
static actor_method_class l_daE_HP_Method = {
    (process_method_func)daE_HP_Create__FP8daE_HP_c,
    (process_method_func)daE_HP_Delete__FP8daE_HP_c,
    (process_method_func)daE_HP_Execute__FP8daE_HP_c,
    (process_method_func)daE_HP_IsDelete__FP8daE_HP_c,
    (process_method_func)daE_HP_Draw__FP8daE_HP_c,
};

/* 806EA428-806EA458 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_HP */
extern actor_process_profile_definition g_profile_E_HP = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_HP,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daE_HP_c),       // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  172,                    // mPriority
  &l_daE_HP_Method,       // sub_method
  0x00040100,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 806EA458-806EA464 000170 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 806EA464-806EA470 00017C 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 806EA470-806EA47C 000188 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 806EA47C-806EA488 000194 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 806EA488-806EA494 0001A0 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 806EA494-806EA4A0 0001AC 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 806EA4A0-806EA4C4 0001B8 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806E9DC4,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806E9DBC,
};

/* 806EA4C4-806EA4D0 0001DC 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 806EA4D0-806EA4DC 0001E8 000C+00 2/2 0/0 0/0 .data            __vt__12daE_HP_HIO_c */
SECTION_DATA extern void* __vt__12daE_HP_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_HP_HIO_cFv,
};

/* 806E5DEC-806E5E30 0000EC 0044+00 1/1 0/0 0/0 .text            __ct__12daE_HP_HIO_cFv */
daE_HP_HIO_c::daE_HP_HIO_c() {
    // NONMATCHING
}

/* 806E5E30-806E5ED0 000130 00A0+00 1/1 0/0 0/0 .text ctrlJoint__8daE_HP_cFP8J3DJointP8J3DModel */
void daE_HP_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* 806E5ED0-806E5F1C 0001D0 004C+00 1/1 0/0 0/0 .text JointCallBack__8daE_HP_cFP8J3DJointi */
void daE_HP_c::JointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 806E5F1C-806E5FCC 00021C 00B0+00 1/1 0/0 0/0 .text
 * LampCtrlJoint__8daE_HP_cFP8J3DJointP8J3DModel                */
void daE_HP_c::LampCtrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* 806E5FCC-806E6018 0002CC 004C+00 1/1 0/0 0/0 .text LampJointCallBack__8daE_HP_cFP8J3DJointi */
void daE_HP_c::LampJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806EA224-806EA228 000030 0004+00 0/1 0/0 0/0 .rodata          @4178 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4178 = 600.0f;
COMPILER_STRIP_GATE(0x806EA224, &lit_4178);
#pragma pop

/* 806EA228-806EA22C 000034 0004+00 0/3 0/0 0/0 .rodata          @4179 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4179 = 30.0f;
COMPILER_STRIP_GATE(0x806EA228, &lit_4179);
#pragma pop

/* 806EA22C-806EA230 000038 0004+00 0/1 0/0 0/0 .rodata          @4180 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4180 = -20.0f;
COMPILER_STRIP_GATE(0x806EA22C, &lit_4180);
#pragma pop

/* 806EA230-806EA234 00003C 0004+00 0/1 0/0 0/0 .rodata          @4181 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4181 = 40.0f;
COMPILER_STRIP_GATE(0x806EA230, &lit_4181);
#pragma pop

/* 806EA234-806EA238 000040 0004+00 0/4 0/0 0/0 .rodata          @4182 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4182 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x806EA234, &lit_4182);
#pragma pop

/* 806EA238-806EA23C 000044 0004+00 0/1 0/0 0/0 .rodata          @4183 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4183 = 4.0f;
COMPILER_STRIP_GATE(0x806EA238, &lit_4183);
#pragma pop

/* 806EA4E8-806EA4EC 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_806EA4E8[4];

/* 806EA4EC-806EA4F8 00000C 000C+00 1/1 0/0 0/0 .bss             @3921 */
static u8 lit_3921[12];

/* 806EA4F8-806EA50C 000018 0014+00 9/9 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[20];

/* 806E6018-806E64F4 000318 04DC+00 1/1 0/0 0/0 .text            draw__8daE_HP_cFv */
void daE_HP_c::draw() {
    // NONMATCHING
}

/* 806E64F4-806E6514 0007F4 0020+00 1/0 0/0 0/0 .text            daE_HP_Draw__FP8daE_HP_c */
static void daE_HP_Draw(daE_HP_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806EA23C-806EA240 000048 0004+00 1/1 0/0 0/0 .rodata          @4196 */
SECTION_RODATA static f32 const lit_4196 = -1.0f;
COMPILER_STRIP_GATE(0x806EA23C, &lit_4196);

/* 806EA2CC-806EA2CC 0000D8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_806EA2CC = "E_HP";
#pragma pop

/* 806E6514-806E65C0 000814 00AC+00 6/6 0/0 0/0 .text            setBck__8daE_HP_cFiUcff */
void daE_HP_c::setBck(int param_0, u8 param_1, f32 param_2, f32 param_3) {
    // NONMATCHING
}

/* 806E65C0-806E65CC 0008C0 000C+00 9/9 0/0 0/0 .text            setActionMode__8daE_HP_cFii */
void daE_HP_c::setActionMode(int param_0, int param_1) {
    // NONMATCHING
}

/* 806E65CC-806E673C 0008CC 0170+00 4/4 0/0 0/0 .text            mChkDistance__8daE_HP_cFf */
void daE_HP_c::mChkDistance(f32 param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806EA240-806EA244 00004C 0004+00 1/1 0/0 0/0 .rodata          @4301 */
SECTION_RODATA static f32 const lit_4301 = 250.0f;
COMPILER_STRIP_GATE(0x806EA240, &lit_4301);

/* 806E673C-806E6948 000A3C 020C+00 1/1 0/0 0/0 .text            damage_check__8daE_HP_cFv */
void daE_HP_c::damage_check() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806EA244-806EA248 000050 0004+00 0/5 0/0 0/0 .rodata          @4367 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4367 = 3.0f;
COMPILER_STRIP_GATE(0x806EA244, &lit_4367);
#pragma pop

/* 806EA248-806EA24C 000054 0004+00 0/2 0/0 0/0 .rodata          @4368 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4368 = 5.0f;
COMPILER_STRIP_GATE(0x806EA248, &lit_4368);
#pragma pop

/* 806E6948-806E6C74 000C48 032C+00 1/1 0/0 0/0 .text            executeWait__8daE_HP_cFv */
void daE_HP_c::executeWait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806EA24C-806EA250 000058 0004+00 0/2 0/0 0/0 .rodata          @4418 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4418 = 10.0f;
COMPILER_STRIP_GATE(0x806EA24C, &lit_4418);
#pragma pop

/* 806EA250-806EA254 00005C 0004+00 0/4 0/0 0/0 .rodata          @4419 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4419 = 20.0f;
COMPILER_STRIP_GATE(0x806EA250, &lit_4419);
#pragma pop

/* 806EA254-806EA258 000060 0004+00 0/4 0/0 0/0 .rodata          @4420 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4420 = 300.0f;
COMPILER_STRIP_GATE(0x806EA254, &lit_4420);
#pragma pop

/* 806E6C74-806E6ED8 000F74 0264+00 1/1 0/0 0/0 .text            executeMove__8daE_HP_cFv */
void daE_HP_c::executeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806EA258-806EA25C 000064 0004+00 0/1 0/0 0/0 .rodata          @4493 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4493 = 0.5f;
COMPILER_STRIP_GATE(0x806EA258, &lit_4493);
#pragma pop

/* 806E6ED8-806E7228 0011D8 0350+00 1/1 0/0 0/0 .text            executeRetMove__8daE_HP_cFv */
void daE_HP_c::executeRetMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806EA25C-806EA260 000068 0004+00 0/1 0/0 0/0 .rodata          @4562 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4562 = 32.0f;
COMPILER_STRIP_GATE(0x806EA25C, &lit_4562);
#pragma pop

/* 806E7228-806E7574 001528 034C+00 1/1 0/0 0/0 .text            executeAttack__8daE_HP_cFv */
void daE_HP_c::executeAttack() {
    // NONMATCHING
}

/* 806E7574-806E77C0 001874 024C+00 1/1 0/0 0/0 .text            executeDamage__8daE_HP_cFv */
void daE_HP_c::executeDamage() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806EA260-806EA264 00006C 0004+00 0/3 0/0 0/0 .rodata          @4781 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4781 = 200.0f;
COMPILER_STRIP_GATE(0x806EA260, &lit_4781);
#pragma pop

/* 806EA264-806EA268 000070 0004+00 0/1 0/0 0/0 .rodata          @4782 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4782 = 0x42424925;
COMPILER_STRIP_GATE(0x806EA264, &lit_4782);
#pragma pop

/* 806EA268-806EA26C 000074 0004+00 0/3 0/0 0/0 .rodata          @4783 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4783 = 170.0f;
COMPILER_STRIP_GATE(0x806EA268, &lit_4783);
#pragma pop

/* 806EA26C-806EA270 000078 0004+00 0/2 0/0 0/0 .rodata          @4784 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4784 = 1000.0f;
COMPILER_STRIP_GATE(0x806EA26C, &lit_4784);
#pragma pop

/* 806EA270-806EA274 00007C 0004+00 0/1 0/0 0/0 .rodata          @4785 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4785 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x806EA270, &lit_4785);
#pragma pop

/* 806EA274-806EA27C 000080 0004+04 0/3 0/0 0/0 .rodata          @4786 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4786[1 + 1 /* padding */] = {
    2000.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x806EA274, &lit_4786);
#pragma pop

/* 806EA27C-806EA284 000088 0008+00 0/2 0/0 0/0 .rodata          @4788 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4788[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806EA27C, &lit_4788);
#pragma pop

/* 806E77C0-806E7E94 001AC0 06D4+00 1/1 0/0 0/0 .text            executeDown__8daE_HP_cFv */
void daE_HP_c::executeDown() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806EA2CC-806EA2CC 0000D8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_806EA2D1 = "DEFAULT_GETITEM";
#pragma pop

/* 806E7E94-806E814C 002194 02B8+00 1/1 0/0 0/0 .text            executeDead__8daE_HP_cFv */
void daE_HP_c::executeDead() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806EA2CC-806EA2CC 0000D8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_806EA2E1 = "E_hp";
#pragma pop

/* 806E814C-806E8978 00244C 082C+00 2/1 0/0 0/0 .text            action__8daE_HP_cFv */
void daE_HP_c::action() {
    // NONMATCHING
}

/* 806E8978-806E89C0 002C78 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
// cM3dGPla::~cM3dGPla() {
extern "C" void __dt__8cM3dGPlaFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806EA284-806EA288 000090 0004+00 0/0 0/0 0/0 .rodata          @5054 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5054 = -1000000000.0f;
COMPILER_STRIP_GATE(0x806EA284, &lit_5054);
#pragma pop

/* 806EA288-806EA28C 000094 0004+00 0/0 0/0 0/0 .rodata          @5055 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5055 = -3.0f;
COMPILER_STRIP_GATE(0x806EA288, &lit_5055);
#pragma pop

/* 806EA28C-806EA290 000098 0004+00 0/1 0/0 0/0 .rodata          @5056 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5056 = 60.0f;
COMPILER_STRIP_GATE(0x806EA28C, &lit_5056);
#pragma pop

/* 806EA290-806EA294 00009C 0004+00 0/1 0/0 0/0 .rodata          @5057 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5057 = 255.0f;
COMPILER_STRIP_GATE(0x806EA290, &lit_5057);
#pragma pop

/* 806EA294-806EA298 0000A0 0004+00 0/1 0/0 0/0 .rodata          @5168 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5168 = 12.0f;
COMPILER_STRIP_GATE(0x806EA294, &lit_5168);
#pragma pop

/* 806EA298-806EA29C 0000A4 0004+00 0/1 0/0 0/0 .rodata          @5169 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5169 = 400.0f;
COMPILER_STRIP_GATE(0x806EA298, &lit_5169);
#pragma pop

/* 806EA29C-806EA2A0 0000A8 0004+00 0/1 0/0 0/0 .rodata          @5170 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5170 = 6000.0f;
COMPILER_STRIP_GATE(0x806EA29C, &lit_5170);
#pragma pop

/* 806EA2A0-806EA2A4 0000AC 0004+00 0/1 0/0 0/0 .rodata          @5171 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5171 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x806EA2A0, &lit_5171);
#pragma pop

/* 806EA2A4-806EA2A8 0000B0 0004+00 0/1 0/0 0/0 .rodata          @5172 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5172 = 2500.0f;
COMPILER_STRIP_GATE(0x806EA2A4, &lit_5172);
#pragma pop

/* 806E89C0-806E8DE0 002CC0 0420+00 2/2 0/0 0/0 .text            mtx_set__8daE_HP_cFv */
void daE_HP_c::mtx_set() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806EA2A8-806EA2AC 0000B4 0004+00 0/1 0/0 0/0 .rodata          @5243 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5243 = 25.0f;
COMPILER_STRIP_GATE(0x806EA2A8, &lit_5243);
#pragma pop

/* 806EA2AC-806EA2B0 0000B8 0004+00 0/1 0/0 0/0 .rodata          @5244 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5244 = -40.0f;
COMPILER_STRIP_GATE(0x806EA2AC, &lit_5244);
#pragma pop

/* 806EA2B0-806EA2B4 0000BC 0004+00 0/1 0/0 0/0 .rodata          @5245 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5245 = 120.0f;
COMPILER_STRIP_GATE(0x806EA2B0, &lit_5245);
#pragma pop

/* 806EA2B4-806EA2B8 0000C0 0004+00 0/1 0/0 0/0 .rodata          @5246 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5246 = 23.0f;
COMPILER_STRIP_GATE(0x806EA2B4, &lit_5246);
#pragma pop

/* 806EA2B8-806EA2BC 0000C4 0004+00 0/1 0/0 0/0 .rodata          @5247 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5247 = 42.0f;
COMPILER_STRIP_GATE(0x806EA2B8, &lit_5247);
#pragma pop

/* 806E8DE0-806E8FEC 0030E0 020C+00 1/1 0/0 0/0 .text            cc_set__8daE_HP_cFv */
void daE_HP_c::cc_set() {
    // NONMATCHING
}

/* 806E8FEC-806E9170 0032EC 0184+00 1/1 0/0 0/0 .text            execute__8daE_HP_cFv */
void daE_HP_c::execute() {
    // NONMATCHING
}

/* 806E9170-806E9190 003470 0020+00 1/0 0/0 0/0 .text            daE_HP_Execute__FP8daE_HP_c */
static void daE_HP_Execute(daE_HP_c* param_0) {
    // NONMATCHING
}

/* 806E9190-806E9198 003490 0008+00 1/0 0/0 0/0 .text            daE_HP_IsDelete__FP8daE_HP_c */
static bool daE_HP_IsDelete(daE_HP_c* param_0) {
    return true;
}

/* 806E9198-806E9220 003498 0088+00 1/1 0/0 0/0 .text            _delete__8daE_HP_cFv */
void daE_HP_c::_delete() {
    // NONMATCHING
}

/* 806E9220-806E9240 003520 0020+00 1/0 0/0 0/0 .text            daE_HP_Delete__FP8daE_HP_c */
static void daE_HP_Delete(daE_HP_c* param_0) {
    // NONMATCHING
}

/* 806E9240-806E94FC 003540 02BC+00 1/1 0/0 0/0 .text            CreateHeap__8daE_HP_cFv */
void daE_HP_c::CreateHeap() {
    // NONMATCHING
}

/* 806E94FC-806E951C 0037FC 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806EA2BC-806EA2C4 0000C8 0004+04 0/1 0/0 0/0 .rodata          @5512 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5512[1 + 1 /* padding */] = {
    -200.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x806EA2BC, &lit_5512);
#pragma pop

/* 806EA2C4-806EA2CC 0000D0 0008+00 0/1 0/0 0/0 .rodata          @5514 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5514[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806EA2C4, &lit_5514);
#pragma pop

/* 806E951C-806E9900 00381C 03E4+00 1/1 0/0 0/0 .text            create__8daE_HP_cFv */
void daE_HP_c::create() {
    // NONMATCHING
}

/* 806E9900-806E9ABC 003C00 01BC+00 1/1 0/0 0/0 .text            __ct__8daE_HP_cFv */
daE_HP_c::daE_HP_c() {
    // NONMATCHING
}

/* 806E9ABC-806E9B04 003DBC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 806E9B04-806E9B4C 003E04 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 806E9B4C-806E9B94 003E4C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 806E9B94-806E9BF0 003E94 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 806E9BF0-806E9C60 003EF0 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 806E9C60-806E9CD0 003F60 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 806E9CD0-806E9CF0 003FD0 0020+00 1/0 0/0 0/0 .text            daE_HP_Create__FP8daE_HP_c */
static void daE_HP_Create(daE_HP_c* param_0) {
    // NONMATCHING
}

/* 806E9CF0-806E9D38 003FF0 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 806E9D38-806E9D80 004038 0048+00 2/1 0/0 0/0 .text            __dt__12daE_HP_HIO_cFv */
daE_HP_HIO_c::~daE_HP_HIO_c() {
    // NONMATCHING
}

/* 806E9D80-806E9DBC 004080 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_hp_cpp */
void __sinit_d_a_e_hp_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x806E9D80, __sinit_d_a_e_hp_cpp);
#pragma pop

/* 806E9DBC-806E9DC4 0040BC 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_806E9DBC() {
    // NONMATCHING
}

/* 806E9DC4-806E9DCC 0040C4 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_806E9DC4() {
    // NONMATCHING
}

/* 806EA2CC-806EA2CC 0000D8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
