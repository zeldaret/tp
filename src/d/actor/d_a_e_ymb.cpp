/**
 * @file d_a_e_ymb.cpp
 * 
*/

#include "d/actor/d_a_e_ymb.h"
#include "d/actor/d_a_obj_drop.h"
#include "d/actor/d_a_player.h"
#include "d/d_com_inf_game.h"
#include "dol2asm.h"
#include <cmath.h>
#include "Z2AudioLib/Z2Instances.h"

//
// Forward References:
//

extern "C" void __ct__13daE_YMB_HIO_cFv();
extern "C" void ctrlJoint__9daE_YMB_cFP8J3DJointP8J3DModel();
extern "C" void __dt__4cXyzFv();
extern "C" void JointCallBack__9daE_YMB_cFP8J3DJointi();
extern "C" static void rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c();
extern "C" void draw__9daE_YMB_cFv();
extern "C" static void daE_YMB_Draw__FP9daE_YMB_c();
extern "C" void setBck__9daE_YMB_cFiUcff();
extern "C" void checkBck__9daE_YMB_cFi();
extern "C" void setActionMode__9daE_YMB_cFii();
extern "C" void setLastDamage__9daE_YMB_cFv();
extern "C" void damage_check__9daE_YMB_cFv();
extern "C" void setCameraSwitch__9daE_YMB_cFv();
extern "C" void checkWaterPos__9daE_YMB_cFv();
extern "C" void checkGroundPos__9daE_YMB_cFv();
extern "C" void setFlyWaitVoice__9daE_YMB_cFv();
extern "C" void setDownWaitVoice__9daE_YMB_cFv();
extern "C" void setHitBoardSe__9daE_YMB_cFv();
extern "C" void setElecEffect1__9daE_YMB_cFv();
extern "C" void setElecEffect2__9daE_YMB_cFv();
extern "C" void setWaterEffect1__9daE_YMB_cFv();
extern "C" void setWaterEffect2__9daE_YMB_cFv();
extern "C" void setBoilEffect__9daE_YMB_cFi();
extern "C" void setDamageEffect__9daE_YMB_cFi();
extern "C" void setDownHamonEffect__9daE_YMB_cFv();
extern "C" void setFlyBlurEffect__9daE_YMB_cFv();
extern "C" void setRockDamageEffect__9daE_YMB_cFv();
extern "C" void setDeathEffect__9daE_YMB_cFv();
extern "C" static void search_drop__FPvPv();
extern "C" void executeWait__9daE_YMB_cFv();
extern "C" void setBitePos__9daE_YMB_cFi();
extern "C" void setInclination__9daE_YMB_cFv();
extern "C" void setBodyAngle__9daE_YMB_cFv();
extern "C" void checkWolfLockIn__9daE_YMB_cFv();
extern "C" void executeFly__9daE_YMB_cFv();
extern "C" void executeFlyAttack__9daE_YMB_cFv();
extern "C" void executeRunAway__9daE_YMB_cFv();
extern "C" void executeGuard__9daE_YMB_cFv();
extern "C" void executeSwim__9daE_YMB_cFv();
extern "C" void executeWaterJump__9daE_YMB_cFv();
extern "C" void getNearDownPos__9daE_YMB_cFv();
extern "C" void executeDamage__9daE_YMB_cFv();
extern "C" void setMidnaBindInit__9daE_YMB_cFP4cXyz();
extern "C" void setMidnaBindLevel__9daE_YMB_cFi();
extern "C" void setWolfLockEffect__9daE_YMB_cFv();
extern "C" void initDownToWater__9daE_YMB_cFv();
extern "C" void calcDownToWater__9daE_YMB_cFv();
extern "C" void executeDown__9daE_YMB_cFv();
extern "C" void setCreateDrop__9daE_YMB_cFv();
extern "C" void executeDeath__9daE_YMB_cFv();
extern "C" void demo_skip__9daE_YMB_cFi();
extern "C" void DemoSkipCallBack__9daE_YMB_cFPvi();
extern "C" void calcLakeDemoPlayerPos__9daE_YMB_cFv();
extern "C" void executeLakeDemo__9daE_YMB_cFv();
extern "C" void executeStartDemo__9daE_YMB_cFv();
extern "C" void checkStartBattleDemo__9daE_YMB_cFv();
extern "C" void executeBattleDemo__9daE_YMB_cFv();
extern "C" void action__9daE_YMB_cFv();
extern "C" void mtx_set__9daE_YMB_cFv();
extern "C" void getBellyBitePos__9daE_YMB_cFP4cXyz();
extern "C" void getDownLockPoint__9daE_YMB_cFv();
extern "C" void setAttentionPos__9daE_YMB_cFv();
extern "C" void cc_set__9daE_YMB_cFv();
extern "C" void execute__9daE_YMB_cFv();
extern "C" static void daE_YMB_Execute__FP9daE_YMB_c();
extern "C" static bool daE_YMB_IsDelete__FP9daE_YMB_c();
extern "C" void _delete__9daE_YMB_cFv();
extern "C" static void daE_YMB_Delete__FP9daE_YMB_c();
extern "C" void CreateHeap__9daE_YMB_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void create__9daE_YMB_cFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" static void daE_YMB_Create__FP9daE_YMB_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__13daE_YMB_HIO_cFv();
extern "C" void __sinit_d_a_e_ymb_cpp();
extern "C" void setPos__11daObjDrop_cF4cXyz();
extern "C" extern char const* const d_a_e_ymb__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_MtxToRot__FPA4_CfP5csXyz();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void create__21mDoExt_invisibleModelFP8J3DModelUc();
extern "C" void entryDL__21mDoExt_invisibleModelFP4cXyz();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcM_IsCreating__FUi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGs_onOneZoneSwitch__Fii();
extern "C" void dComIfGs_offOneZoneSwitch__Fii();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void onSwitch__12dSv_memBit_cFi();
extern "C" void isSwitch__12dSv_memBit_cCFi();
extern "C" void onEventBit__11dSv_event_cFUs();
extern "C" void isEventBit__11dSv_event_cCFUs();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void offSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void setSkipProc__14dEvt_control_cFPvPFPvi_ii();
extern "C" void setPtT__14dEvt_control_cFPv();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void StartQuake__12dVibration_cFii4cXyz();
extern "C" void StartQuake__12dVibration_cFPCUcii4cXyz();
extern "C" void StopQuake__12dVibration_cFi();
extern "C" void LockonTarget__12dAttention_cFl();
extern "C" void LockonTruth__12dAttention_cFv();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __ct__18dBgS_ObjGndChk_SplFv();
extern "C" void __dt__18dBgS_ObjGndChk_SplFv();
extern "C" void Set__4cBgWFP6cBgD_tUlPA3_A4_f();
extern "C" void __ct__4dBgWFv();
extern "C" void Move__4dBgWFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void GetAtHitObj__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void ResetTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void checkNowWolfEyeUp__9daPy_py_cFv();
extern "C" void Start__9dCamera_cFv();
extern "C" void Stop__9dCamera_cFv();
extern "C" void SetTrimSize__9dCamera_cFl();
extern "C" void Set__9dCamera_cF4cXyz4cXyzfs();
extern "C" void Reset__9dCamera_cF4cXyz4cXyz();
extern "C" void Eye__9dCamera_cFv();
extern "C" void Center__9dCamera_cFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void GetAc__8cCcD_ObjFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rnd__Fv();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC3Vec();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_chasePos__FP4cXyzRC4cXyzf();
extern "C" void cLib_chasePosXZ__FP4cXyzRC4cXyzf();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_targetAngleX__FPC4cXyzPC4cXyz();
extern "C" void cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz();
extern "C" void func_80280808();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void subBgmStart__8Z2SeqMgrFUl();
extern "C" void subBgmStop__8Z2SeqMgrFv();
extern "C" void changeSubBgmStatus__8Z2SeqMgrFl();
extern "C" void setBattleBgmOff__8Z2SeqMgrFb();
extern "C" void setForceBattleArea__13Z2SoundObjMgrFbUsUsUs();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setLinkSearch__15Z2CreatureEnemyFb();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void __construct_array();
extern "C" void _savegpr_22();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_22();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 saveBitLabels__16dSv_event_flag_c[1644 + 4 /* padding */];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
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

UNK_REL_DATA;

namespace {
    /* 80821B30-80821B70 000020 0040+00 0/1 0/0 0/0 .data cc_ymb_src__23@unnamed@d_a_e_ymb_cpp@ */
    static dCcD_SrcSph cc_ymb_src = {
        {{0x0, {{AT_TYPE_CSTATUE_SWING, 0x2, 0xD}, {0xD8FBFDFF, 0x3}, 0x75}}, // mObj
        {dCcD_SE_METAL, 0x0, 0x1, 0x7, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x6}, // mGObjTg
        {0x0}, // mGObjCo
        }, // mObjInf
        {
            {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
        } // mSphAttr
    };

    /* 80821B70-80821BB0 000060 0040+00 0/1 0/0 0/0 .data cc_ymb_at_src__23@unnamed@d_a_e_ymb_cpp@ */
    static dCcD_SrcSph cc_ymb_at_src = {
        {{0x0, {{AT_TYPE_CSTATUE_SWING, 0x2, 0xD}, {0xD8FBFDFF, 0x0}, 0x0}}, // mObj
        {dCcD_SE_METAL, 0x0, 0x1, 0x7, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
        }, // mObjInf
        {
            {{0.0f, 0.0f, 0.0f}, 40.0f}, // mSph
        } // mSphAttr
    };

    /* 80821BB0-80821BF0 0000A0 0040+00 0/1 0/0 0/0 .data cc_ymb_eye_src__23@unnamed@d_a_e_ymb_cpp@ */
    static dCcD_SrcSph cc_ymb_eye_src = {
        {{0x0, {{AT_TYPE_0, 0x0, 0x0}, {0x80000000, 0x3}, 0x0}}, // mObj
        {dCcD_SE_METAL, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
        }, // mObjInf
        {
            {{0.0f, 0.0f, 0.0f}, 40.0f}, // mSph
        } // mSphAttr
    };

    /* 80821BF0-80821C30 0000E0 0040+00 0/1 0/0 0/0 .data cc_ymb_tube_src__23@unnamed@d_a_e_ymb_cpp@ */
    static dCcD_SrcSph cc_ymb_tube_src = {
        {{0x0, {{AT_TYPE_0, 0x0, 0x0}, {0xD8FBFDFF, 0x2}, 0x75}}, // mObj
        {dCcD_SE_METAL, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x7}, // mGObjTg
        }, // mObjInf
        {
            {{0.0f, 0.0f, 0.0f}, 40.0f}, // mSph
        } // mSphAttr
    };

    /* 80821C30-80821C48 000120 0018+00 3/4 0/0 0/0 .data YMB_DOWN_ATT_JNT__23@unnamed@d_a_e_ymb_cpp@ */
    static int YMB_DOWN_ATT_JNT[6] = {
        20, 28, 26, 22, 24, 30,
    };

    /* 80821C48-80821C54 000138 000C+00 0/0 0/0 0/0 .data YMB_DROP_JNT__23@unnamed@d_a_e_ymb_cpp@ */
    #pragma push
    #pragma force_active on
    SECTION_DATA static u8 data_80821C48[12] = {
        0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x01,
    };
    #pragma pop
}

/* 80821C54-80821C5C 000144 0008+00 1/1 0/0 0/0 .data            w_eff_id$4417 */
// SECTION_DATA static u8 w_eff_id_4417[8] = {
//     0x86, 0x30, 0x86, 0x31, 0x86, 0x32, 0x86, 0x33,
// };

/* 80821C5C-80821C68 00014C 000C+00 1/1 0/0 0/0 .data            w_eff_id$4497 */
// static u16 w_eff_id[6] = {
//     0x8636, 0x8637, 0x8638, 0x8639, 0x863A, 0x863B,
// };

/* 80821C68-80821C78 000158 000E+02 1/1 0/0 0/0 .data            w_eff_id$4533 */
// static u16 w_eff[7] = {
//     0x863C, 0x863D, 0x863E, 0x863F, 0x8640, 0x8641, 0x8642,
// };

/* 80821C78-80821C88 000168 000E+02 1/1 0/0 0/0 .data            w_eff_id$4569 */
// static u16 w_eff_id[7] = {
//     0x8652, 0x8653, 0x8654, 0x8655, 0x8656, 0x8650, 0x8651,
// };

/* 80821C88-80821C8C 000178 0004+00 1/1 0/0 0/0 .data            w_eff_id$4611 */
// static u16 w_eff_id[2] = {
//     0x8643, 0x8646,
// };

/* 80821C8C-80821C90 00017C 0004+00 1/1 0/0 0/0 .data            w_eff_id$4637 */
// static u16 w_eff_id[2] = {
//     0x8634, 0x8635,
// };

/* 80821C90-80821C94 000180 0004+00 1/1 0/0 0/0 .data            w_eff_id$4677 */
// static u16 w_eff_id[2] = {
//     0x865F, 0x8660,
// };

/* 80821C94-80821C98 000184 0004+00 1/1 0/0 0/0 .data            w_eff_id$4777 */
// static u16 w_eff_id[2] = {
//     0x865D, 0x865E,
// };

/* 80821C98-80821CA0 000188 0006+02 1/1 0/0 0/0 .data            ymb_chance_time$5424 */
// static s16 ymb_chance_time[3] = {
//     0x006E, 0x0050, 0x0032,
// };

/* 80821CA0-80821CD0 -00001 0030+00 1/1 0/0 0/0 .data            @5575 */
SECTION_DATA static void* lit_5575[12] = {
    (void*)(((char*)executeFlyAttack__9daE_YMB_cFv) + 0x84),
    (void*)(((char*)executeFlyAttack__9daE_YMB_cFv) + 0x148),
    (void*)(((char*)executeFlyAttack__9daE_YMB_cFv) + 0x1D8),
    (void*)(((char*)executeFlyAttack__9daE_YMB_cFv) + 0x9A8),
    (void*)(((char*)executeFlyAttack__9daE_YMB_cFv) + 0x5CC),
    (void*)(((char*)executeFlyAttack__9daE_YMB_cFv) + 0x684),
    (void*)(((char*)executeFlyAttack__9daE_YMB_cFv) + 0x9A8),
    (void*)(((char*)executeFlyAttack__9daE_YMB_cFv) + 0x9A8),
    (void*)(((char*)executeFlyAttack__9daE_YMB_cFv) + 0x9A8),
    (void*)(((char*)executeFlyAttack__9daE_YMB_cFv) + 0x7C8),
    (void*)(((char*)executeFlyAttack__9daE_YMB_cFv) + 0x7C8),
    (void*)(((char*)executeFlyAttack__9daE_YMB_cFv) + 0x980),
};

/* 80821CD0-80821CF8 -00001 0028+00 1/1 0/0 0/0 .data            @6089 */
SECTION_DATA static void* lit_6089[10] = {
    (void*)(((char*)executeSwim__9daE_YMB_cFv) + 0x90),
    (void*)(((char*)executeSwim__9daE_YMB_cFv) + 0xB8),
    (void*)(((char*)executeSwim__9daE_YMB_cFv) + 0x14C),
    (void*)(((char*)executeSwim__9daE_YMB_cFv) + 0x398),
    (void*)(((char*)executeSwim__9daE_YMB_cFv) + 0x398),
    (void*)(((char*)executeSwim__9daE_YMB_cFv) + 0x894),
    (void*)(((char*)executeSwim__9daE_YMB_cFv) + 0x894),
    (void*)(((char*)executeSwim__9daE_YMB_cFv) + 0xA5C),
    (void*)(((char*)executeSwim__9daE_YMB_cFv) + 0xCAC),
    (void*)(((char*)executeSwim__9daE_YMB_cFv) + 0xDB4),
};

/* 80821CF8-80821CFC 0001E8 0004+00 1/1 0/0 0/0 .data            e_prim$6362 */
SECTION_DATA static u8 e_prim_6362[4] = {
    0xFF,
    0x64,
    0x78,
    0x00,
};

/* 80821CFC-80821D00 0001EC 0004+00 1/1 0/0 0/0 .data            e_env$6363 */
SECTION_DATA static u8 e_env_6363[4] = {
    0x3C,
    0x1E,
    0x1E,
    0x00,
};

/* 80821D00-80821D04 0001F0 0004+00 0/1 0/0 0/0 .data            e_prim$6449 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_prim_6449[4] = {
    0xFF,
    0x64,
    0x78,
    0x00,
};
#pragma pop

/* 80821D04-80821D08 0001F4 0004+00 0/1 0/0 0/0 .data            e_env$6450 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_env_6450[4] = {
    0x3C,
    0x1E,
    0x1E,
    0x00,
};
#pragma pop

/* 80821D08-80821D10 0001F8 0006+02 0/1 0/0 0/0 .data            eff_id$6451 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 eff_id[6 + 2 /* padding */] = {
    0x02,
    0x9D,
    0x02,
    0x9E,
    0x02,
    0x9F,
    /* padding */
    0x00,
    0x00,
};
#pragma pop

/* 80821D10-80821D40 -00001 0030+00 1/1 0/0 0/0 .data            @7505 */
SECTION_DATA static void* lit_7505[12] = {
    (void*)(((char*)executeStartDemo__9daE_YMB_cFv) + 0x64),
    (void*)(((char*)executeStartDemo__9daE_YMB_cFv) + 0x1C0),
    (void*)(((char*)executeStartDemo__9daE_YMB_cFv) + 0x434),
    (void*)(((char*)executeStartDemo__9daE_YMB_cFv) + 0x514),
    (void*)(((char*)executeStartDemo__9daE_YMB_cFv) + 0x5D0),
    (void*)(((char*)executeStartDemo__9daE_YMB_cFv) + 0xB2C),
    (void*)(((char*)executeStartDemo__9daE_YMB_cFv) + 0xB2C),
    (void*)(((char*)executeStartDemo__9daE_YMB_cFv) + 0xB2C),
    (void*)(((char*)executeStartDemo__9daE_YMB_cFv) + 0x6E0),
    (void*)(((char*)executeStartDemo__9daE_YMB_cFv) + 0x86C),
    (void*)(((char*)executeStartDemo__9daE_YMB_cFv) + 0x928),
    (void*)(((char*)executeStartDemo__9daE_YMB_cFv) + 0xA24),
};

/* 80821D40-80821D74 -00001 0034+00 1/1 0/0 0/0 .data            @7867 */
SECTION_DATA static void* lit_7867[13] = {
    (void*)(((char*)action__9daE_YMB_cFv) + 0x1AC), (void*)(((char*)action__9daE_YMB_cFv) + 0x1B8),
    (void*)(((char*)action__9daE_YMB_cFv) + 0x1C4), (void*)(((char*)action__9daE_YMB_cFv) + 0x1D0),
    (void*)(((char*)action__9daE_YMB_cFv) + 0x1DC), (void*)(((char*)action__9daE_YMB_cFv) + 0x1E8),
    (void*)(((char*)action__9daE_YMB_cFv) + 0x1F4), (void*)(((char*)action__9daE_YMB_cFv) + 0x200),
    (void*)(((char*)action__9daE_YMB_cFv) + 0x20C), (void*)(((char*)action__9daE_YMB_cFv) + 0x218),
    (void*)(((char*)action__9daE_YMB_cFv) + 0x224), (void*)(((char*)action__9daE_YMB_cFv) + 0x230),
    (void*)(((char*)action__9daE_YMB_cFv) + 0x23C),
};

/* 80821DC4-80821DD0 0002B4 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80821DD0-80821DDC 0002C0 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80821DDC-80821DE8 0002CC 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80821DE8-80821DF4 0002D8 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80821DF4-80821E00 0002E4 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80821E00-80821E0C 0002F0 000C+00 2/2 0/0 0/0 .data            __vt__13daE_YMB_HIO_c */
SECTION_DATA extern void* __vt__13daE_YMB_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daE_YMB_HIO_cFv,
};

/* 8081610C-8081615C 0000EC 0050+00 1/1 0/0 0/0 .text            __ct__13daE_YMB_HIO_cFv */
daE_YMB_HIO_c::daE_YMB_HIO_c() {
    field_0x4 = -1;
    model_size = 1.0f;
    fly_movement_speed = 10.0f;
    swim_attack_speed = 70.0f;
    fly_attack_speed = 40.0f;
    rollover_time = 750.0f;
    fly_height_adjust = 400.0f;
}

/* 8081615C-808164B4 00013C 0358+00 1/1 0/0 0/0 .text ctrlJoint__9daE_YMB_cFP8J3DJointP8J3DModel */
int daE_YMB_c::ctrlJoint(J3DJoint* i_joint, J3DModel* i_model) {
    // NONMATCHING
    int jntNo = i_joint->getJntNo();
    cXyz sp54, sp60;
    csXyz local_8c, local_94;

    mDoMtx_stack_c::copy(i_model->getAnmMtx(jntNo));

    if (jntNo < 0x1F && jntNo < 0x13) {
        int iVar1 = (jntNo - 0x13) / 2;
        if (field_0x668[iVar1] != 0.0f) {
            if (((u16)jntNo & 1) != 0) {
                mDoMtx_stack_c::multVecZero(&sp54);
                mDoMtx_MtxToRot(mDoMtx_stack_c::get(), &local_8c);
                s16 sVar1 = (s16)(0x4000 - local_8c.z) * field_0x668[iVar1];
                mDoMtx_stack_c::transS(sp54);
                mDoMtx_stack_c::ZXYrotM(local_8c.x, local_8c.y, local_8c.z + sVar1);
                mDoMtx_stack_c::scaleM(1.0f, 1.0f, 1.0f);
            } else {
                mDoMtx_stack_c::multVecZero(&sp54);
                mDoMtx_MtxToRot(mDoMtx_stack_c::get(), &local_8c);
                mDoMtx_stack_c::copy(i_model->getAnmMtx(jntNo - 1));
                mDoMtx_stack_c::transM(-100.0f, 0.0f, 0.0f);
                mDoMtx_stack_c::multVecZero(&sp60);

                mDoMtx_MtxToRot(mDoMtx_stack_c::get(), &local_94);
                sp54 = ((sp54 * (1.0f - field_0x668[iVar1])) + (sp60 * field_0x668[iVar1]));
                local_8c.set(local_8c.x * (1.0f - field_0x668[iVar1]) + local_94.x * field_0x668[iVar1],
                             local_8c.y * (1.0f - field_0x668[iVar1]) + local_94.y * field_0x668[iVar1],
                             local_8c.z * (1.0f - field_0x668[iVar1]) + local_94.z * field_0x668[iVar1]);
                mDoMtx_stack_c::transS(sp54);
                mDoMtx_stack_c::ZXYrotM(local_8c);
                mDoMtx_stack_c::scaleM(1.0f, 1.0f, 1.0f);
            }
        }
    }

    i_model->setAnmMtx(jntNo, mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
    return 1;
}

/* 808164F0-8081653C 0004D0 004C+00 1/1 0/0 0/0 .text            JointCallBack__9daE_YMB_cFP8J3DJointi */
int daE_YMB_c::JointCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        J3DModel* model = j3dSys.getModel();
        daE_YMB_c* i_this = (daE_YMB_c*)model->getUserArea();
        if (i_this != NULL) {
            i_this->ctrlJoint(i_joint, model);
        }
    }

    return 1;
}

/* 8081653C-80816554 00051C 0018+00 1/1 0/0 0/0 .text            rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c */
static void rideCallBack(dBgW* param_1, fopAc_ac_c* aActor_p, fopAc_ac_c* param_3) {
    if (fopAcM_GetName(param_3) == PROC_ALINK) {
        ((daE_YMB_c*)aActor_p)->field_0x724 = 20;
    }
}

/* 80816554-8081695C 000534 0408+00 1/1 0/0 0/0 .text            draw__9daE_YMB_cFv */
int daE_YMB_c::draw() {
    g_env_light.settingTevStruct(6, &current.pos, &tevStr);

    if (!field_0x6d8 || field_0x710 != 0) {
        return 1;
    }

    J3DModel* model = mpMorf->getModel();
    J3DShape* shape = model->getModelData()->getMaterialNodePointer(4)->getShape();
    if (shape != NULL) {
        if (field_0x717 != 0) {
            shape->show();
        } else {
            shape->hide();
        }
    }

    g_env_light.setLightTevColorType_MAJI(model, &tevStr);
    J3DModelData* modelData = model->getModelData();
    for (u16 i = 0; i < modelData->getMaterialNum(); i++) {
        J3DMaterial* matNodeP = modelData->getMaterialNodePointer(i);
        if (i == 4) {
            matNodeP->getTevKColor(3)->a = field_0x6dc;
        } else if (i == 3) {
            matNodeP->getTevKColor(3)->a = field_0x6d8;
        } else if (field_0x6d8 >= 255.0f) {
            matNodeP->setMaterialMode(1);
            matNodeP->getZMode()->setUpdateEnable(1);
            matNodeP->getBlend()->setType(0);
        } else {
            matNodeP->setMaterialMode(4);
            matNodeP->getZMode()->setUpdateEnable(0);
            matNodeP->getBlend()->setType(1);
            matNodeP->getTevKColor(3)->a = field_0x6d8;
        }

        if (i == 0 || i == 1) {
            matNodeP->getTevColor(0)->r = field_0x6e0;
            matNodeP->getTevColor(0)->b = field_0x6e0;
            matNodeP->getTevColor(0)->g = field_0x6e0;
        }
    }

    mpBrkAnm->entry(model->getModelData());

    if (field_0x6d8 >= 255.0f) {
        dComIfGd_setListDark();
        mpMorf->entryDL();
        dComIfGd_setList();
    } else {
        mInvisModel.entryDL(NULL);
    }

    cXyz sp58;
    sp58.set(current.pos.x, current.pos.y + 100.0f, current.pos.z);
    tevStr.field_0x344 = (tevStr.field_0x344 * field_0x6d8) / 255.0f;
    mShadowKey = dComIfGd_setShadow(mShadowKey, 0, model, &sp58, 2500.0f, 0.0f, 
                                    current.pos.y, field_0x6d4, mGndChk, &tevStr, 0, 
                                    1.0f, dDlst_shadowControl_c::getSimpleTex());

    return 1;
}

/* 8081695C-8081697C 00093C 0020+00 1/0 0/0 0/0 .text            daE_YMB_Draw__FP9daE_YMB_c */
static int daE_YMB_Draw(daE_YMB_c* i_this) {
    return i_this->draw();
}

/* 8081697C-80816A20 00095C 00A4+00 14/14 0/0 0/0 .text            setBck__9daE_YMB_cFiUcff */
void daE_YMB_c::setBck(int i_index, u8 i_attr, f32 i_morf, f32 i_rate) {
    mpMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_YB", i_index), i_attr, i_morf, i_rate, 0.0f, -1.0f);
}

/* 80816A20-80816A7C 000A00 005C+00 5/5 0/0 0/0 .text            checkBck__9daE_YMB_cFi */
bool daE_YMB_c::checkBck(int i_index) {
    return mpMorf->getAnm() == (J3DAnmTransform*)dComIfG_getObjectRes("E_YB", i_index);
}

/* 80816A7C-80816A88 000A5C 000C+00 15/15 0/0 0/0 .text            setActionMode__9daE_YMB_cFii */
void daE_YMB_c::setActionMode(int i_action, int i_mode) {
    mAction = i_action;
    mMode = i_mode;
}

/* 80816A88-80816B7C 000A68 00F4+00 1/1 0/0 0/0 .text            setLastDamage__9daE_YMB_cFv */
void daE_YMB_c::setLastDamage() {
    setRockDamageEffect();

    field_0x6f4++;
    if (field_0x6f4 > 6) {
        health = 0;
    }

    mSound.startCollisionSE(Z2SE_HIT_WOLFBITE, 0x20);
    dComIfGp_setHitMark(3, this, &eyePos, NULL, NULL, 0);
    field_0x6f8 = 3;
    setBck(0xC, 0, 3.0f, 1.0f);
    dComIfGp_getVibration().StartShock(3, 31, cXyz(0.0f, 1.0f, 0.0f));
}

/* 80816B7C-80816E78 000B5C 02FC+00 1/1 0/0 0/0 .text            damage_check__9daE_YMB_cFv */
void daE_YMB_c::damage_check() {
    cCcD_Obj* tgHitObj;
    daPy_py_c* player = daPy_getPlayerActorClass();

    if (field_0x6f8 == 0) {
        if (field_0xa9c.ChkTgHit() && field_0x704 == 0) {
            mAtInfo.mpCollider = field_0xa9c.GetTgHitObj();
            health = 100;
            cc_at_check(this, &mAtInfo);
            if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_UNK)) {
                field_0x6f8 = 20;
            } else {
                field_0x6f8 = 10;
            }

            if (mAtInfo.mAttackPower <= 1) {
                field_0x6f8 = 10;
            }

            if (mAction != 8 && player->getCutType() != daPy_py_c::CUT_TYPE_WOLF_B_LEFT && player->getCutType() != daPy_py_c::CUT_TYPE_WOLF_B_RIGHT &&
                mAtInfo.mpCollider->ChkAtType(AT_TYPE_WOLF_ATTACK) && player->onWolfEnemyHangBite(this)) {
                setActionMode(7, 0);
                return;
            }
        }

        tgHitObj = NULL;
        if (field_0x82c[0].ChkTgShield() && field_0x82c[0].ChkTgHit()) {
            tgHitObj = field_0x82c[0].GetTgHitObj();
        }

        if (field_0x82c[1].ChkTgShield() && field_0x82c[1].ChkTgHit()) {
            tgHitObj = field_0x82c[1].GetTgHitObj();
        }

        if (field_0xa9c.ChkTgShield() && field_0xa9c.ChkTgHit()) {
            tgHitObj = field_0xa9c.GetTgHitObj();
        }

        if (tgHitObj != NULL && ((mAction == 1 || mAction == 2) || mAction == 4)) {
            setActionMode(4, 0);
        }
    }

    int iVar1 = 0;
    for (int i = 0; i < 6; i++) {
        if (field_0xbd4[i].ChkTgHit()) {
            tgHitObj = field_0xbd4[i].GetTgHitObj();
            if (!tgHitObj->ChkAtType(AT_TYPE_MIDNA_LOCK)) {
                mAtInfo.mpCollider = field_0xbd4[i].GetTgHitObj();
                health = 100;
                mAtInfo.field_0x18 = 30;
                cc_at_check(this, &mAtInfo);

                cXyz sp28;
                mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(i * 2 + 20));
                mDoMtx_stack_c::multVecZero(&sp28);
                dComIfGp_setHitMark(1, this, &sp28, NULL, NULL, 0);

                field_0x680[i] = 30;

                if (tgHitObj->ChkAtType(AT_TYPE_WOLF_CUT_TURN)) {
                    iVar1++;
                    field_0x698 = 30;
                }

                field_0xbd4[i].ResetTgHit();
                if (iVar1 >= 4) {
                    return;
                }
            }
        }
    }
}

/* 80816E78-80817064 000E58 01EC+00 1/1 0/0 0/0 .text            setCameraSwitch__9daE_YMB_cFv */
void daE_YMB_c::setCameraSwitch() {
    field_0x713 = 0;
    daPy_py_c* player = daPy_getPlayerActorClass();

    if (field_0x69c.absXZ(player->current.pos) < 3000.0f) {
        field_0x713 = 1;
    }

    if (field_0x713 != 0) {
        dComIfGs_onSwitch(5, fopAcM_GetRoomNo(this));
    } else {
        dComIfGs_offSwitch(5, fopAcM_GetRoomNo(this));
    }

    if (field_0x714 != 0) {
        dComIfGs_onOneZoneSwitch(15, fopAcM_GetRoomNo(this));
    } else {
        dComIfGs_offOneZoneSwitch(15, fopAcM_GetRoomNo(this));
    }
}

UNK_REL_BSS;

/* 80821E54-80821E58 -00001 0004+00 2/2 0/0 0/0 .bss             None */
/* 80821E54 0001+00 data_80821E54 @1009 */
/* 80821E55 0003+00 data_80821E55 None */
static u8 l_initHIO;

/* 80821E64-80821E84 000054 0020+00 12/20 0/0 0/0 .bss             l_HIO */
static daE_YMB_HIO_c l_HIO;

/* 80817064-80817164 001044 0100+00 1/1 0/0 0/0 .text            checkWaterPos__9daE_YMB_cFv */
void daE_YMB_c::checkWaterPos() {
    // NONMATCHING
    Vec pos;
    pos.x = current.pos.x;
    pos.z = current.pos.z;
    pos.y = current.pos.y + 1000.0f;

    dBgS_ObjGndChk_Spl wtr_chk;
    wtr_chk.SetPos(&pos);
    f32 wtr_pos = dComIfG_Bgsp().GroundCross(&wtr_chk);
    if (wtr_pos != -1000000000.0f) {
        field_0x6cc = wtr_pos;
        field_0x69c.y = wtr_pos + 1000.0f + l_HIO.fly_height_adjust;

        #ifdef DEBUG
        abs(field_0x6cc - current.pos.y);
        #endif
        
        if (current.pos.y + 200.0f < field_0x6cc) {
            if (field_0x715 == 0) {
                setWaterEffect1();
            }

            field_0x715 = 1;
        } else {
            field_0x715 = 0;
        }
    }
}

/* 80817164-80817200 001144 009C+00 1/1 0/0 0/0 .text            checkGroundPos__9daE_YMB_cFv */
void daE_YMB_c::checkGroundPos() {
    cXyz pos(current.pos);
    pos.y += 500.0f;
    field_0x6d0 = field_0x6cc;
    mGndChk.SetPos(&pos);
    f32 fVar1 = dComIfG_Bgsp().GroundCross(&mGndChk);
    field_0x6d4 = fVar1;
    if (fVar1 != -1000000000.0f && field_0x6d0 < fVar1) {
        field_0x6d0 = fVar1;
    }
}

/* 80817200-8081727C 0011E0 007C+00 6/6 0/0 0/0 .text            setFlyWaitVoice__9daE_YMB_cFv */
void daE_YMB_c::setFlyWaitVoice() {
    if (checkBck(0x11) && mpMorf->checkFrame(0.0f)) {
        mSound.startCreatureVoice(Z2SE_EN_YB_V_FLY_WAIT, -1);
    }
}

/* 8081727C-808172F8 00125C 007C+00 1/1 0/0 0/0 .text            setDownWaitVoice__9daE_YMB_cFv */
void daE_YMB_c::setDownWaitVoice() {
    if (checkBck(0xE) && mpMorf->checkFrame(0.0f)) {
        mSound.startCreatureVoice(Z2SE_EN_YB_V_DOWN_WAIT, -1);
    }
}

/* 808172F8-808173B0 0012D8 00B8+00 0/0 0/0 1/1 .text            setHitBoardSe__9daE_YMB_cFv */
void daE_YMB_c::setHitBoardSe() {
    if (field_0x722 == 0 && mAction == 5 && mMode >= 3 && mMode <= 7) {
        if (current.pos.y > field_0x6cc - 150.0f - 200.0f) {
            mSound.startCreatureSound(Z2SE_EN_YB_HIT_FLOATBOARD, 0, -1);
            field_0x722 = 1;
            field_0x723 = 10;
        }
    }
}

/* 808173B0-8081756C 001390 01BC+00 4/4 0/0 0/0 .text            setElecEffect1__9daE_YMB_cFv */
void daE_YMB_c::setElecEffect1() {
    MtxP mtx = mpMorf->getModel()->getAnmMtx(15);
    cXyz sp28(mtx[0][3], mtx[1][3], mtx[2][3]);
    cXyz sp34(l_HIO.model_size, l_HIO.model_size, l_HIO.model_size);

    field_0x1480[0] = dComIfGp_particle_set(field_0x1480[0], 0x8630, &sp28, &tevStr, &shape_angle, &sp34, 0xFF, NULL, -1, NULL, NULL, NULL);
    JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(field_0x1480[0]);
    if (emitter != NULL) {
        emitter->setRate(0.2f);
        emitter->setGlobalAlpha(field_0x6c4);
    }

    field_0x1480[1] = dComIfGp_particle_set(field_0x1480[1], 0x8631, &sp28, &tevStr, &shape_angle, &sp34, 0xFF, NULL, -1, NULL, NULL, NULL);
    emitter = dComIfGp_particle_getEmitter(field_0x1480[1]);
    if (emitter != NULL) {
        emitter->setRate(20.0f);
        emitter->setGlobalAlpha(field_0x6c4);
    }

    mSound.startCreatureSoundLevel(Z2SE_EN_YB_ELECTRIC, 0, -1);
}

/* 8081756C-80817744 00154C 01D8+00 6/6 0/0 0/0 .text            setElecEffect2__9daE_YMB_cFv */
void daE_YMB_c::setElecEffect2() {
    // NONMATCHING
    static u16 w_eff_id[4] = {
        0x8630, 0x8631, 0x8632, 0x8633,
    };

    field_0x1324.OnAtSetBit();
    field_0x82c[0].OnAtSetBit();
    field_0x82c[1].OnAtSetBit();

    MtxP mtx = mpMorf->getModel()->getAnmMtx(15);
    cXyz sp34(mtx[0][3], mtx[1][3], mtx[2][3]);
    cXyz sp40(l_HIO.model_size, l_HIO.model_size, l_HIO.model_size);

    for (int i = 0; i < 4; i++) {
        field_0x1480[i] = dComIfGp_particle_set(field_0x1480[i], w_eff_id[i], &sp34, &tevStr, &shape_angle, &sp40, 0xFF, NULL, -1, NULL, NULL, NULL);
        JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(field_0x1480[i]);
        if (emitter != NULL) {
            emitter->setGlobalAlpha(field_0x6c4);
            if (i == 0) {
                emitter->setRate(2.0f);
            } else if (i == 1) {
                emitter->setRate(60.0f);
            }
        }
    }

    if (field_0x6c1 == 1) {
        mSound.startCreatureSoundLevel(Z2SE_EN_YB_ELECTRIC_LOOP_WTR, 0, -1);
    } else {
        mSound.startCreatureSoundLevel(Z2SE_EN_YB_ELECTRIC_LOOP, 0, -1);
    }
}

/* ############################################################################################## */
/* 80821E84-80821E90 000074 000C+00 0/1 0/0 0/0 .bss             @3797 */
#pragma push
#pragma force_active on
static u8 lit_3797[12];
#pragma pop

/* 80821E90-80821E9C 000080 000C+00 0/1 0/0 0/0 .bss             @3798 */
#pragma push
#pragma force_active on
static u8 lit_3798[12];
#pragma pop

/* 80821E9C-80821EA8 00008C 000C+00 0/1 0/0 0/0 .bss             @3799 */
#pragma push
#pragma force_active on
static u8 lit_3799[12];
#pragma pop

/* 80821EA8-80821EB4 000098 000C+00 0/1 0/0 0/0 .bss             @3800 */
#pragma push
#pragma force_active on
static u8 lit_3800[12];
#pragma pop

/* 80821EB4-80821EC0 0000A4 000C+00 0/1 0/0 0/0 .bss             @3801 */
#pragma push
#pragma force_active on
static u8 lit_3801[12];
#pragma pop

/* 80821EC0-80821ECC 0000B0 000C+00 0/1 0/0 0/0 .bss             @3802 */
#pragma push
#pragma force_active on
static u8 lit_3802[12];
#pragma pop

/* 80821ECC-80821ED8 0000BC 000C+00 0/1 0/0 0/0 .bss             @3803 */
#pragma push
#pragma force_active on
static u8 lit_3803[12];
#pragma pop

/* 80821ED8-80821EE4 0000C8 000C+00 0/1 0/0 0/0 .bss             @3804 */
#pragma push
#pragma force_active on
static u8 lit_3804[12];
#pragma pop

/* 80821EE4-80821EF0 0000D4 000C+00 0/1 0/0 0/0 .bss             @3805 */
#pragma push
#pragma force_active on
static u8 lit_3805[12];
#pragma pop

/* 80821EF0-80821EFC 0000E0 000C+00 0/1 0/0 0/0 .bss             @3806 */
#pragma push
#pragma force_active on
static u8 lit_3806[12];
#pragma pop

/* 80821EFC-80821F08 0000EC 000C+00 0/1 0/0 0/0 .bss             @3807 */
#pragma push
#pragma force_active on
static u8 lit_3807[12];
#pragma pop

/* 80821F08-80821F14 0000F8 000C+00 0/1 0/0 0/0 .bss             @3808 */
#pragma push
#pragma force_active on
static u8 lit_3808[12];
#pragma pop

/* 80821F14-80821F20 000104 000C+00 0/1 0/0 0/0 .bss             @3809 */
#pragma push
#pragma force_active on
static u8 lit_3809[12];
#pragma pop

/* 80821F20-80821F2C 000110 000C+00 0/1 0/0 0/0 .bss             @3810 */
#pragma push
#pragma force_active on
static u8 lit_3810[12];
#pragma pop

/* 80821F2C-80821F38 00011C 000C+00 0/1 0/0 0/0 .bss             @3811 */
#pragma push
#pragma force_active on
static u8 lit_3811[12];
#pragma pop

/* 80821F38-80821FEC 000128 00B4+00 4/5 0/0 0/0 .bss YMB_DOWN_POS__23@unnamed@d_a_e_ymb_cpp@ */
static u8 data_80821F38[180];

/* 80817744-8081785C 001724 0118+00 4/4 0/0 0/0 .text            setWaterEffect1__9daE_YMB_cFv */
void daE_YMB_c::setWaterEffect1() {
    // NONMATCHING
    cXyz sp28(current.pos.x, field_0x6cc, current.pos.z);
    static cXyz sc(l_HIO.model_size, l_HIO.model_size, l_HIO.model_size);
    static u16 w_eff_id[6] = {
        0x8636, 0x8637, 0x8638, 0x8639, 0x863A, 0x863B,
    };

    for (int i = 0; i < 6; i++) {
        field_0x14d8[i] = dComIfGp_particle_set(field_0x14d8[i], w_eff_id[i], &sp28, &tevStr, NULL, &sc, 0xFF, NULL, -1, NULL, NULL, NULL);
    }
}

/* 8081785C-80817974 00183C 0118+00 2/2 0/0 0/0 .text            setWaterEffect2__9daE_YMB_cFv */
void daE_YMB_c::setWaterEffect2() {
    // NONMATCHING
    cXyz sp28(current.pos.x, field_0x6cc, current.pos.z);
    static cXyz sc(l_HIO.model_size, l_HIO.model_size, l_HIO.model_size);
    static u16 w_eff_id[7] = {
        0x863C, 0x863D, 0x863E, 0x863F, 0x8640, 0x8641, 0x8642,
    };

    for (int i = 0; i < 7; i++) {
        field_0x14f0[i] = dComIfGp_particle_set(field_0x14f0[i], w_eff_id[i], &sp28, &tevStr, &shape_angle, &sc, 0xFF, NULL, -1, NULL, NULL, NULL);
    }
}

/* 80817974-80817AEC 001954 0178+00 1/1 0/0 0/0 .text            setBoilEffect__9daE_YMB_cFi */
void daE_YMB_c::setBoilEffect(int param_1) {
    // NONMATCHING
    cXyz sp30(current.pos.x, field_0x6cc, current.pos.z);
    static cXyz sc(l_HIO.model_size, l_HIO.model_size, l_HIO.model_size);
    static u16 w_eff_id[7] = {
        0x8652, 0x8653, 0x8654, 0x8655, 0x8656, 0x8650, 0x8651,
    };
    int iVar1 = param_1 == 0 ? 7 : 5;

    for (int i = 0; i < iVar1; i++) {
        field_0x14f0[i] = dComIfGp_particle_set(field_0x14f0[i], w_eff_id[i], &sp30, &tevStr, NULL, &sc, 0xFF, NULL, -1, NULL, NULL, NULL);
    }

    Z2GetAudioMgr()->seStartLevel(Z2SE_EN_YB_ABUKU, &sp30, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
}

/* 80817AEC-80817BD8 001ACC 00EC+00 1/1 0/0 0/0 .text            setDamageEffect__9daE_YMB_cFi */
void daE_YMB_c::setDamageEffect(int param_1) {
    // NONMATCHING
    static cXyz sc(l_HIO.model_size, l_HIO.model_size, l_HIO.model_size);
    static u16 w_eff_id[2] = {
        0x8643, 0x8646,
    };
    cXyz pos;
    getBellyBitePos(&pos);
    field_0x151c = dComIfGp_particle_set(field_0x151c, w_eff_id[param_1], &pos, &tevStr, &shape_angle, &sc, 0xFF, NULL, -1, NULL, NULL, NULL);
}

/* 80817BD8-80817CF0 001BB8 0118+00 2/2 0/0 0/0 .text            setDownHamonEffect__9daE_YMB_cFv */
void daE_YMB_c::setDownHamonEffect() {
    // NONMATCHING
    cXyz pos(current.pos.x, field_0x6cc, current.pos.z);
    static cXyz sc(l_HIO.model_size, l_HIO.model_size, l_HIO.model_size);
    static u16 w_eff_id[2] = {
        0x8634, 0x8635,
    };
    for (int i = 0; i < 2; i++) {
        field_0x150c[i] = dComIfGp_particle_set(field_0x150c[i], w_eff_id[i], &pos, &tevStr, NULL, &sc, 0xFF, NULL, -1, NULL, NULL, NULL);
    }
}

/* 80817CF0-80817E7C 001CD0 018C+00 1/1 0/0 0/0 .text            setFlyBlurEffect__9daE_YMB_cFv */
void daE_YMB_c::setFlyBlurEffect() {
    // NONMATCHING
    static u16 w_eff_id[2] = {
        0x865F, 0x8660,
    };

    if (field_0x717 == 0) {
        return;
    }

    if (!field_0x6dc && field_0x6d8) {
        switch (field_0x710) {
            case 0:
                J3DModel* model = mpMorf->getModel();
                cXyz pos;
                mDoMtx_stack_c::copy(model->getAnmMtx(1));
                mDoMtx_stack_c::multVecZero(&pos);
                if (pos.y < field_0x6cc) {
                    return;
                }

                for (int i = 0; i < 2; i++) {
                    field_0x1514[i] = dComIfGp_particle_set(field_0x1514[i], w_eff_id[i], &pos, &tevStr);
                    JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(field_0x1514[i]);
                    if (emitter != NULL) {
                        emitter->setGlobalSRTMatrix(model->getAnmMtx(1));
                    }
                }
                break;
        }
    }
}

/* 80817E7C-80817FDC 001E5C 0160+00 1/1 0/0 0/0 .text            setRockDamageEffect__9daE_YMB_cFv */
void daE_YMB_c::setRockDamageEffect() {
    cXyz pos;
    int iVar1 = field_0x6f4 - 1;
    if (iVar1 < 0) {
        iVar1 = 0;
    }

    if (iVar1 > 5) {
        iVar1 = 5;
    }

    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(YMB_DOWN_ATT_JNT[iVar1]));
    mDoMtx_stack_c::multVecZero(&pos);
    static cXyz sc(l_HIO.model_size, l_HIO.model_size, l_HIO.model_size);

    dComIfGp_particle_set(0x8661, &pos, &tevStr, NULL, &sc, 0xFF, NULL, -1, NULL, NULL, NULL);
    mSound.startCreatureVoice(Z2SE_EN_YB_V_DOWN_DAMAGE, -1);
}

/* 80817FDC-80818158 001FBC 017C+00 1/1 0/0 0/0 .text            setDeathEffect__9daE_YMB_cFv */
void daE_YMB_c::setDeathEffect() {
    // NONMATCHING
    cXyz pos;
    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(15));
    mDoMtx_stack_c::multVecZero(&pos);
    static cXyz sc(l_HIO.model_size, l_HIO.model_size, l_HIO.model_size);
    static u16 w_eff_id[2] = {
        0x865D, 0x865E,
    };
    for (int i = 0; i < 2; i++) {
        dComIfGp_particle_set(w_eff_id[i], &pos, &tevStr, NULL, &sc, 0xFF, NULL, -1, NULL, NULL, NULL);
    }
    fopAcM_seStart(this, Z2SE_DARK_VANISH, 0);
}

/* 80818158-808181F4 002138 009C+00 1/1 0/0 0/0 .text            search_drop__FPvPv */
static void* search_drop(void* i_actor, void* i_data) {
    if (fopAc_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_Obj_Drop) {
        if (!fpcM_IsCreating(fopAcM_GetID(i_actor))) {
            u8 switchBit = ((daE_YMB_c*)i_data)->getSwitchBit();
            if (switchBit == 0xFF) {
                return NULL;
            }

            if (((daObjDrop_c*)i_actor)->getYmSwbit() == switchBit) {
                return i_actor;
            }
        }
    }

    return NULL;
}

/* 808181F4-80818328 0021D4 0134+00 1/1 0/0 0/0 .text            executeWait__9daE_YMB_cFv */
void daE_YMB_c::executeWait() {
    switch (mMode) {
        case 0:
            setActionMode(1, 0);
            field_0x70c = cM_rndF(150.0f) + 300.0f;
            field_0x708 = cM_rndF(100.0f) + 150.0f;
            break;

        case 1:
            if (field_0x6fc == 0) {
                field_0x6fc = 30;
                mMode = 2;
            }
            break;

        case 2:
            setElecEffect1();
            if (field_0x6fc == 0) {
                field_0x6fc = 60;
                mMode = 3;
            }
            break;

        case 3:
            setElecEffect2();
            if (field_0x6fc == 0) {
                mMode = 1;
                field_0x6fc = (s16)(cM_rndF(300.0f) + 300.0f);
            }
            break;
    }
}

/* 80818328-80818370 002308 0048+00 1/1 0/0 0/0 .text            setBitePos__9daE_YMB_cFi */
void daE_YMB_c::setBitePos(int param_1) {
    cXyz pos;
    getBellyBitePos(&pos);
    mDownPos = pos;
}

/* 80818370-80818518 002350 01A8+00 1/1 0/0 0/0 .text            setInclination__9daE_YMB_cFv */
void daE_YMB_c::setInclination() {
    s16 sVar1 = cM_atan2s(speedF, speed.y) - 0x4000;
    f32 fVar1 = speed.abs();
    if (fVar1 > 50.0f) {
        fVar1 = 50.0f;
    }

    s16 sVar2 = sVar1 * (fVar1 / 50.0f);
    if (sVar2 < -6000) {
        sVar2 = -6000;
    }

    if (sVar2 > 6000) {
        sVar2 = 6000;
    }

    cLib_chaseAngleS(&field_0x6ea, sVar2, 0x180);
}

/* 80818518-80818930 0024F8 0418+00 3/3 0/0 0/0 .text            setBodyAngle__9daE_YMB_cFv */
void daE_YMB_c::setBodyAngle() {
    s16 sVar1 = current.angle.y - shape_angle.y;
    cLib_chaseAngleS(&shape_angle.z, std::abs(cM_scos(current.angle.x)) * (speed.abs() * -32.0f * cM_ssin(sVar1)), 0x100);

    f32 fVar1 = std::abs(cM_ssin(current.angle.x));
    f32 fVar2 = std::abs(cM_scos(current.angle.x));
    if (fVar2 >= fVar1) {
        cLib_chaseAngleS(&field_0x6ea, std::abs(cM_scos(current.angle.x)) * (speed.abs() * 48.0f * cM_scos(sVar1)), 0x200);
    } else {
        cLib_chaseAngleS(&field_0x6ea, speed.abs() * 48.0f * std::abs(cM_ssin(current.angle.x)), 0x200);
    }
}

/* 80818930-80818AE8 002910 01B8+00 3/3 0/0 0/0 .text            checkWolfLockIn__9daE_YMB_cFv */
bool daE_YMB_c::checkWolfLockIn() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    if (field_0x764 != 0 && dComIfGp_checkPlayerStatus1(0, 0x800000)) {
        f32 fVar1 = player->getSearchBallScale() + 100.0f;
        if (player->current.pos.absXZ(current.pos) < fVar1) {
            return true;
        }
    }

    return false;
}

/* 80818AE8-80819610 002AC8 0B28+00 1/1 0/0 0/0 .text            executeFly__9daE_YMB_cFv */
void daE_YMB_c::executeFly() {
    // NONMATCHING
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz sp44(player->current.pos);
    s16 playerAngleY = fopAcM_searchPlayerAngleY(this);
    cXyz sp50;

    mSound.startCreatureSoundLevel(Z2SE_EN_YB_FLY, 0, -1);
    setFlyWaitVoice();

    f32 fVar1, fVar2;
    s16 sVar1;
    if (!checkStartBattleDemo()) {
        field_0x712 = 1;
        switch (mMode) {
            case 1:
                field_0x82c[0].OnTgSetBit();
                field_0x82c[1].OnTgSetBit();
                field_0xa9c.OnTgSetBit();

                if (field_0x70c < 60) {
                    field_0x70c = 60;
                }
                // fallthrough
            case 0:
                if (!checkBck(0x11)) {
                    setBck(0x11, 2, 5.0f, 1.0f);
                }

                mMode = 2;
                // fallthrough
            case 2:
                fVar1 = current.pos.absXZ(field_0x69c);
                fVar2 = sp44.absXZ(field_0x69c);
                if (fVar2 > 3000.0f || fVar1 > 3000.0f) {
                    field_0x6a8 = field_0x69c;
                } else if (fVar1 > 2200.0f) {
                    playerAngleY = cLib_targetAngleY(&current.pos, &field_0x69c);
                } else {
                    if (fVar1 > 1800.0f) {
                        sVar1 = playerAngleY + 0x8000 + cM_rndFX(2048.0f);
                        if ((s16)(cLib_targetAngleY(&current.pos, &field_0x69c) - playerAngleY) > 0) {
                            playerAngleY = sVar1 - 0x1800;
                        } else {
                            playerAngleY = sVar1 + 0x1800;
                        }
                    } else {
                        sVar1 = playerAngleY + 0x8000 + cM_rndFX(2048.0f);
                        if (cM_rnd() < 0.5f) {
                            playerAngleY = sVar1 + 0x1800;
                        } else {
                            playerAngleY = sVar1 - 0x1800;
                        }
                    }

                    sp50.set(0.0f, 0.0f, 1000.0f);
                    cLib_offsetPos(&field_0x6a8, &sp44, playerAngleY, &sp50);
                    field_0x6a8.y = field_0x69c.y;
                }
                
                current.angle.y = cLib_targetAngleY(&current.pos, &field_0x6a8);
                current.angle.x = cLib_targetAngleX(&current.pos, &field_0x6a8);
                speed.y = 0.0f;
                speedF = 0.0f;
                field_0x6c8 = 0.0f;
                field_0x6fc = 30;
                mMode = 3;

                if (std::abs(field_0x69c.y - current.pos.y) < 200.0f) {
                    field_0x6f0 = 0;
                } else {
                    field_0x6f0 = 1;
                }
                break;

            case 3:
                current.angle.y = cLib_targetAngleY(&current.pos, &field_0x6a8);
                current.angle.x = cLib_targetAngleX(&current.pos, &field_0x6a8);

                if (field_0x6f0 == 0) {
                    cLib_chaseF(&field_0x6c8, l_HIO.fly_movement_speed, 1.0f);
                } else {
                    cLib_chaseF(&field_0x6c8, l_HIO.fly_movement_speed + 10.0f, 1.0f);
                }

                cLib_chaseF(&speedF, field_0x6c8 * std::abs(cM_scos(current.angle.x)), 1.0f);
                cLib_chaseAngleS(&shape_angle.y, cLib_targetAngleY(&current.pos, &sp44), 0x400);
                cLib_chaseF(&speed.y, field_0x6c8 * cM_ssin(current.angle.x), 1.0f);
                setBodyAngle();

                if (std::abs(current.pos.y - field_0x6a8.y) < 50.0f) {
                    if (field_0x6a8.absXZ(current.pos) < 100.0f || field_0x6fc == 0) {
                        field_0x6fc = 30;
                        mMode = 4;
                    }
                }
                break;

            case 4:
                if (current.pos.y < field_0x6d0 + 650.0f) {
                    current.pos.y = field_0x6d0 + 650.0f;
                }

                cLib_chaseAngleS(&shape_angle.y, cLib_targetAngleY(&current.pos, &sp44), 0x800);
                cLib_chaseAngleS(&field_0x6ea, 0, 0x400);
                cLib_chaseAngleS(&shape_angle.z, 0, 0x400);
                cLib_chaseF(&speedF, 0.0f, 1.0f);
                cLib_chaseF(&speed.y, 0.0f, 1.0f);

                if (current.pos.y < field_0x6cc) {
                    current.pos.y = field_0x6cc;
                }

                if (checkWolfLockIn()) {
                    setActionMode(3, 0);
                    break;
                }

                if (field_0x6fc == 0) {
                    speed.y = 0.0f;
                    speedF = 0.0f;
                    mMode = 2;
                }

                if (field_0x764 == 0) {
                    break;
                }

                if (field_0x70c != 0) {
                    break;
                }

                if (sp44.absXZ(field_0x69c) < 2000.0f) {
                    if (sp44.absXZ(current.pos) > 700.0f) {
                        if (std::abs(field_0x69c.y - current.pos.y) < 200.0f) {
                            speed.y = 0.0f;
                            speedF = 0.0f;
                            setActionMode(2, 0);
                        }
                    }
                }
                break;
        }
    }
}

/* 80819610-80819FD0 0035F0 09C0+00 2/1 0/0 0/0 .text            executeFlyAttack__9daE_YMB_cFv */
void daE_YMB_c::executeFlyAttack() {
    // NONMATCHING
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz sp28;
    
    mSound.startCreatureSoundLevel(Z2SE_EN_YB_FLY, 0, -1);
    setFlyWaitVoice();

    s16 sVar1;
    fopAc_ac_c* actor;
    switch (mMode) {
        case 0:
            field_0x70c = cM_rndF(150.0f) + 300.0f;
            field_0x6e4 = 0;
            mSound.startCreatureVoice(Z2SE_EN_YB_V_ATTACK, -1);
            setBck(6, 0, 5.0f, 1.0f);
            mMode = 1;
            field_0x6a8 = player->current.pos;
            field_0x6a8.y = field_0x6d0 + 650.0f - 100.0f;

            sVar1 = fopAcM_searchPlayerAngleY(this);
            shape_angle.y = sVar1;
            current.angle.y= sVar1;
            speed.y = 15.0f;
            speedF = -15.0f;
            // fallthrough
        case 1:
            setElecEffect1();
            cLib_chaseAngleS(&field_0x6ea, 0, 0x400);
            cLib_chaseAngleS(&shape_angle.z, 0, 0x400);

            sVar1 = fopAcM_searchPlayerAngleY(this);
            shape_angle.y = sVar1;
            current.angle.y = sVar1;

            cLib_chaseF(&speed.y, 0.0f, 1.0f);
            cLib_chaseF(&speedF, 0.0f, 1.0f);

            if (mpMorf->checkFrame(15.0f)) {
                mMode = 2;
                setElecEffect2();
                field_0x6fc = 10;
            }
            break;

        case 2:
            if (mpMorf->isStop()) {
                setBck(7, 2, 0.0f, 1.0f);
            }

            setElecEffect2();
            field_0x704 = 3;
            sp28 = field_0x6a8 - current.pos;
            cLib_chaseAngleS(&shape_angle.y, cLib_targetAngleY(&current.pos, &field_0x6a8), 0x800);
            current.angle.y = shape_angle.y;
            sVar1 = cM_atan2s(sp28.absXZ(), sp28.y);
            cLib_chaseF(&speedF, l_HIO.fly_attack_speed * (cM_ssin(sVar1)), 3.0f);
            cLib_chaseF(&speed.y, l_HIO.fly_attack_speed * cM_scos(sVar1), 5.0f);

            if (field_0x6fc != 0) {
                speed.y += 5.0f;
            }

            if (current.pos.y < field_0x6d0 + 650.0f - 200.0f) {
                current.pos.y += 15.0f;
                if (speed.y < 0.0f) {
                    cLib_chaseF(&speed.y, 0.0f, 7.0f);
                }
            }

            if (field_0x1324.ChkAtHit()) {
                actor = dCc_GetAc(field_0x1324.GetAtHitObj()->GetAc());
                if (fopAcM_GetName(actor) == PROC_ALINK) {
                    field_0x6fc = 30;
                    speed.y = 0.0f;
                    speedF = 0.0f;
                    mMode = 5;
                    setBck(8, 0, 5.0f, 1.0f);
                    current.angle.y = cLib_targetAngleY(&current.pos, &field_0x69c);
                    field_0x6ea = 0;
                    return;
                }
            }

            if (sp28.abs() < 100.0f) {
                mMode = 4;
                field_0x6fc = 10;
            }

            setInclination();
            break;

        case 4:
            setElecEffect2();
            field_0x704 = 3;
            cLib_chaseF(&speed.y, 0.0f, 3.0f);
            cLib_chaseF(&speedF, 10.0f, 3.0f);

            if (current.pos.y < field_0x6d0 + 650.0f - 150.0f) {
                current.pos.y += 15.0f;
                if (speed.y < 0.0f) {
                    cLib_chaseF(&speed.y, 0.0f, 7.0f);
                }
            }

            if (field_0x6fc == 0) {
                setBck(8, 0, 5.0f, 1.0f);
                mMode = 5;
                field_0x6fc = 30;
            }

            setInclination();
            break;

        case 5:
            setElecEffect2();
            field_0x704 = 3;
            field_0x712 = 1;
            field_0x6e4 += 0x800;
            cLib_chaseF(&speed.y, 0.0f, 3.0f);
            cLib_chaseF(&speedF, 0.0f, 3.0f);

            if (current.pos.y < field_0x6d0 + 650.0f) {
                current.pos.y += 15.0f;
                if (speed.y < 0.0f) {
                    cLib_chaseF(&speed.y, 0.0f, 7.0f);
                }
            }

            if (checkBck(8)) {
                if (mpMorf->isStop()) {
                    setBck(0x11, 2, 5.0f, 1.0f);
                }
            } else {
                cLib_chaseAngleS(&shape_angle.y, fopAcM_searchPlayerAngleY(this), 0x400);
            }

            static s16 ymb_chance_time[3] = {
                0x006E, 0x0050, 0x0032,
            };
            if (field_0x6fc == 0) {
                mMode = 9;
                speedF = 0.0f;
                speed.y = 0.0f;
                field_0x6fc = ymb_chance_time[field_0x6ec];
            }

            setInclination();
            break;

        case 9:
        case 10:
            field_0x712 = 1;
            if (checkWolfLockIn()) {
                setActionMode(3, 0);
            } else {
                sVar1 = fopAcM_searchPlayerAngleY(this);
                cLib_addCalcAngleS(&current.angle.y, sVar1 + 0x8000, 4, 0x1000, 0x100);
                cLib_addCalcAngleS(&shape_angle.y, sVar1, 8, 0x400, 0x80);

                if (mMode == 9) {
                    cLib_chaseF(&speed.y, 0.0f, 1.0f);
                    cLib_chaseF(&speedF, 0.0f, 1.0f);
                } else {
                    cLib_chaseF(&speed.y, 30.0f, 1.0f);
                    cLib_chaseF(&speedF, 10.0f, 1.0f);
                }

                if (current.pos.y < field_0x6d0 + 650.0f) {
                    current.pos.y += 10.0f;
                    if (speed.y < 0.0f) {
                        cLib_chaseF(&speed.y, 0.0f, 5.0f);
                    }
                }

                setInclination();

                if (checkBck(8) && mpMorf->isStop()) {
                    setBck(0x11, 2, 5.0f, 1.0f);
                }

                if (mMode == 9) {
                    if (field_0x6fc == 0) {
                        mMode = 10;
                    }
                } else if (std::abs(field_0x69c.y - current.pos.y) < 100.0f) {
                    mMode = 11;
                }
            }
            break;

        case 11:
            if (cLib_chaseF(&speed.y, 0.0f, 1.0f) != 0) {
                setActionMode(1, 0);
            }
            break;
    }
}

/* 80819FD0-8081A718 003FB0 0748+00 1/1 0/0 0/0 .text            executeRunAway__9daE_YMB_cFv */
void daE_YMB_c::executeRunAway() {
    // NONMATCHING
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz sp34(player->current.pos);
    s16 playerAngleY = fopAcM_searchPlayerAngleY(this);
    cXyz sp40;

    mSound.startCreatureSoundLevel(Z2SE_EN_YB_FLY, 0, -1);
    setFlyWaitVoice();
    field_0x712 = 1;

    s16 sVar1;
    switch (mMode) {
        case 0:
            setBck(0x11, 2, 5.0f, 1.0f);
            mMode = 1;
            // fallthrough
        case 1:
            if (current.pos.absXZ(field_0x69c) > 2200.0f) {
                playerAngleY = cLib_targetAngleY(&current.pos, &field_0x69c);
            } else if (current.pos.absXZ(field_0x69c) > 1800.0f) {
                sVar1 = playerAngleY + 0x8000 + cM_rndFX(2048.0f);
                if ((s16)(cLib_targetAngleY(&current.pos, &field_0x69c) - playerAngleY) > 0) {
                    playerAngleY = sVar1 - 0x1800;
                } else {
                    playerAngleY = sVar1 + 0x1800;
                }
            } else {
                sVar1 = playerAngleY + 0x8000 + cM_rndFX(2048.0f);
                if (cM_rnd() < 0.5f) {
                    playerAngleY = sVar1 + 0x1800;
                } else {
                    playerAngleY = sVar1 - 0x1800;
                }
            }

            sp40.set(0.0f, 0.0f, 1300.0f);
            cLib_offsetPos(&field_0x6a8, &sp34, playerAngleY, &sp40);
            field_0x6a8.y = field_0x69c.y;
            current.angle.y = cLib_targetAngleY(&current.pos, &field_0x6a8);
            current.angle.x = cLib_targetAngleX(&current.pos, &field_0x6a8);
            speed.y = 0.0f;
            speedF = 0.0f;
            field_0x6c8 = 0.0f;
            field_0x6fc = 30;
            mMode = 2;
            break;

        case 2:
            current.angle.y = cLib_targetAngleY(&current.pos, &field_0x6a8);
            current.angle.x = cLib_targetAngleX(&current.pos, &field_0x6a8);
            cLib_chaseF(&field_0x6c8, l_HIO.fly_attack_speed, 5.0f);
            cLib_chaseF(&speedF, field_0x6c8 * std::abs(cM_scos(current.angle.x)), 5.0f);
            cLib_chaseAngleS(&shape_angle.y, cLib_targetAngleY(&current.pos, &sp34), 0x400);
            cLib_chaseF(&speed.y, field_0x6c8 * cM_ssin(current.angle.x), 5.0f);
            setBodyAngle();

            if (field_0x6a8.absXZ(current.pos) < 100.0f || field_0x6fc == 0) {
                mMode = 3;
                field_0x6fc = 30;
            }
            break;

        case 3:
            if (current.pos.y < field_0x6d0 + 650.0f) {
                current.pos.y = field_0x6d0 + 650.0f;
            }

            cLib_chaseAngleS(&shape_angle.y, cLib_targetAngleY(&current.pos, &sp34), 0x800);
            cLib_chaseAngleS(&field_0x6ea, 0, 0x400);
            cLib_chaseAngleS(&shape_angle.z, 0, 0x400);
            cLib_chaseF(&speedF, 0.0f, 3.0f);
            cLib_chaseF(&speed.y, 0.0f, 3.0f);

            if (current.pos.y < field_0x6cc) {
                current.pos.y = field_0x6cc;
            }

            if (checkWolfLockIn()) {
                mMode = 1;
            }

            if (field_0x6fc == 0) {
                setActionMode(1, 0);
            }
            break;
    }
}

/* 8081A718-8081A88C 0046F8 0174+00 1/1 0/0 0/0 .text            executeGuard__9daE_YMB_cFv */
void daE_YMB_c::executeGuard() {
    mSound.startCreatureSoundLevel(Z2SE_EN_YB_FLY, 0, -1);

    switch (mMode) {
        case 0:
            mSound.startCreatureVoice(Z2SE_EN_YB_V_GUARD, -1);
            setBck(0x12, 0, 3.0f, 1.0f);
            current.angle.y = fopAcM_searchPlayerAngleY(this) - 0x8000;
            speedF = 10.0f;
            speed.y = 10.0f;
            mMode = 1;
            // fallthrough
        case 1:
            cLib_chaseF(&speedF, 0.0f, 0.3f);
            cLib_chaseF(&speed.y, 0.0f, 0.3f);
            cLib_chaseAngleS(&shape_angle.y, fopAcM_searchPlayerAngleY(this), 0x400);

            if (mpMorf->isStop()) {
                setActionMode(1, 0);
            }
            break;
    }
}

/* 8081A88C-8081B78C 00486C 0F00+00 2/1 0/0 0/0 .text            executeSwim__9daE_YMB_cFv */
void daE_YMB_c::executeSwim() {
    // NONMATCHING
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    s16 camAngleY = fopCamM_GetAngleY(camera);
    s16 playerAngleY = (s16)fopAcM_searchPlayerAngleY(this);
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz player_pos(player->current.pos);
    cXyz sp40;

    switch (mMode) {
        case 0:
            setBck(0x14, 2, 5.0f, 1.0f);
            mMode = 1;
            field_0x6fc = 60;
            // fallthrough
        case 1:
            mSound.startCreatureSoundLevel(Z2SE_EN_YB_MOVE_UNDERWATER, 0, -1);
            cLib_addCalcAngleS(&field_0x6ea, 0, 8, 0x800, 0x100);
            cLib_chaseF(&speedF, 0.0f, 1.0f);
            cLib_chaseF(&speed.y, 0.0f, 1.0f);

            if (field_0x6fc == 0 && abs(field_0x6ea) < 0x1000) {
                mMode = 2;
                speedF = 0.0f;
            }
            break;

        case 2:
            mSound.startCreatureSoundLevel(Z2SE_EN_YB_MOVE_UNDERWATER, 0, -1);
            setElecEffect1();
            cLib_chaseF(&speedF, l_HIO.swim_attack_speed, 5.0f);
            cLib_chaseF(&speed.y, 0.0f, 1.0f);
            cLib_addCalcAngleS(&shape_angle.y, fopAcM_searchPlayerAngleY(this) + 0x8000, 8, 0x1000, 0x100);
            current.angle.y = shape_angle.y;

            if (player_pos.absXZ(current.pos) < 500.0f) {
                field_0x6fc = 30;
            } else if (field_0x6fc == 0) {
                mMode = 3;
                field_0x700 = 150;
                field_0x6fc = 0;
                field_0x6f0 = 0;
                field_0x6e6 = cM_rndF(8192.0f) + 16384.0f;
                field_0x6e4 = field_0x6e6 + fopAcM_searchPlayerAngleY(this);
                field_0x6e8 = cM_rndF(1536.0f) + 512.0f;
            }
            break;

        case 3:
        case 4:
            field_0x71f = 1;
            setElecEffect2();

            if (field_0x6f0 == 0) {
                mSound.startCreatureSoundLevel(Z2SE_EN_YB_MOVE_UNDERWATER, 0, -1);
                cLib_chaseF(&speed.y, 10.0f, 1.0f);

                if (current.pos.y > field_0x6cc - 150.0f) {
                    field_0x6f0 = 1;
                    setBck(0x15, 2, 5.0f, 1.0f);
                }
            } else {
                mSound.startCreatureSoundLevel(Z2SE_EN_YB_FLY, 0, -1);
                mSound.startCreatureSoundLevel(Z2SE_EN_YB_MOVE_ONWATER, 0, -1);
                setWaterEffect2();
                cLib_chaseF(&speed.y, -10.0f, 1.0f);

                if (current.pos.y < field_0x6cc - 150.0f) {
                    speed.y = 0.0f;
                    cLib_chaseF(&current.pos.y, field_0x6cc - 150.0f, 2.0f);
                }
            }

            cLib_chaseF(&speedF, l_HIO.swim_attack_speed, 5.0f);
            sp40.set(0.0f, 0.0f, 1000.0f);
            cLib_offsetPos(&field_0x6a8, &player_pos, field_0x6e4, &sp40);

            if (mMode == 3) {
                cLib_addCalcAngleS(&shape_angle.y, cLib_targetAngleY(&current.pos, &field_0x6a8), 8, field_0x6e8, 0x40);
                current.angle.y = shape_angle.y;

                if (abs((s16)(shape_angle.y - cLib_targetAngleY(&current.pos, &field_0x6a8))) > 0x3000) {
                    field_0x6e4 = field_0x6e6 + fopAcM_searchPlayerAngleY(this);
                }

                if (current.pos.absXZ(field_0x6a8) < 500.0f) {
                    mMode = 4;
                    field_0x6fc = 30;
                }
            } else if (mMode == 4 && field_0x6fc == 0 && current.pos.absXZ(field_0x6a8) > 500.0f) {
                if (field_0x700 != 0) {
                    mMode = 3;
                    field_0x6e6 = cM_rndF(8192.0f) + 16384.0f;
                    field_0x6e4 = field_0x6e6 + fopAcM_searchPlayerAngleY(this);
                    field_0x6e8 = cM_rndF(1536.0f) + 512.0f;
                } else {
                    mMode = 5;
                    field_0x6fc = 30;
                    field_0x6e4 = fopAcM_searchPlayerAngleY(this) + 0x7000;
                }
            }
            break;

        case 5:
        case 6:
            mSound.startCreatureSoundLevel(Z2SE_EN_YB_MOVE_ONWATER, 0, -1);
            setWaterEffect2();
            setElecEffect2();
            if (abs(field_0x6e4 - (fopAcM_searchPlayerAngleY(this) - 0x8000)) < 0x1000) {
                field_0x6e4 -= 0x180;
            }

            if (mMode == 5) {
                sp40.set(0.0f, 0.0f, 3000.0f);
            } else {
                sp40.set(0.0f, 0.0f, 4000.0f);
            }

            cLib_offsetPos(&field_0x6a8, &player_pos, field_0x6e4, &sp40);
            cLib_chaseF(&speedF, l_HIO.swim_attack_speed, 5.0f);
            cLib_addCalcAngleS(&shape_angle.y, cLib_targetAngleY(&current.pos, &field_0x6a8), 8, 0x800, 0x100);
            current.angle.y = shape_angle.y;

            if (mMode == 5) {
                if (field_0x6fc == 0) {
                    bool bVar1 = false;
                    if (dComIfGp_getAttention()->LockonTruth()) {
                        if (dComIfGp_getAttention()->LockonTarget(0) == this) {
                            bVar1 = true;
                        }
                    }

                    if (bVar1 || abs((int)(s16)(camAngleY - playerAngleY)) > 0x5800) {
                        mMode = 6;
                        field_0x6fc = 45;
                    }
                }
            } else if (field_0x6fc == 0) {
                mMode = 7;
                field_0x6a8 = player_pos;
                setBck(6, 0, 10.0f, 1.0f);
            }
            break;

        case 7:
            mSound.startCreatureSoundLevel(Z2SE_EN_YB_FLY, 0, -1);
            if (mpMorf->isStop()) {
                setBck(7, 2, 3.0f, 1.0f);
            }

            mSound.startCreatureSoundLevel(Z2SE_EN_YB_MOVE_ONWATER, 0, -1);
            setWaterEffect2();
            setElecEffect2();
            cLib_chaseF(&speedF, l_HIO.swim_attack_speed, 5.0f);
            cLib_chaseF(&current.pos.y, field_0x6d0 + 650.0f, 10.0f);
            cLib_addCalcAngleS(&shape_angle.y, cLib_targetAngleY(&current.pos, &field_0x6a8), 8, 0x800, 0x40);
            current.angle.y = shape_angle.y;

            if (current.pos.absXZ(field_0x6a8) < 500.0f) {
                mMode = 8;
                field_0x6fc = 10;
                field_0x6e4 = 0;
            }
            break;

        case 8:
            mSound.startCreatureSoundLevel(Z2SE_EN_YB_FLY, 0, -1);
            setElecEffect2();
            cLib_chaseF(&current.pos.y, field_0x6d0 + 650.0f, 10.0f);
            field_0x6c8 = l_HIO.swim_attack_speed;
            cLib_chaseF(&speedF, field_0x6c8 * std::abs(cM_scos(field_0x6e4)), 1.0f);
            cLib_chaseF(&speed.y, field_0x6c8 * cM_ssin(field_0x6e4), 1.0f);
            cLib_chaseAngleS(&field_0x6e4, 0x4000, 0x400);

            if (field_0x6fc == 0) {
                mMode = 9;
                setBck(0x11, 2, 5.0f, 1.0f);
                field_0x6c8 = l_HIO.swim_attack_speed;
                field_0x714 = 0;
            }
            break;

        case 9:
            mSound.startCreatureSoundLevel(Z2SE_EN_YB_FLY, 0, -1);
            setFlyWaitVoice();

            if (current.pos.y < field_0x69c.y - 500.0f) {
                cLib_chaseF(&field_0x6c8, l_HIO.fly_movement_speed, 3.0f);
            } else {
                cLib_chaseF(&field_0x6c8, 0.0f, 3.0f);
            }

            cLib_chaseAngleS(&field_0x6e4, 0x4000, 0x400);
            cLib_chaseF(&speedF, field_0x6c8 * std::abs(cM_scos(field_0x6e4)), 3.0f);
            cLib_chaseF(&speed.y, field_0x6c8 * cM_ssin(field_0x6e4), 3.0f);
            cLib_addCalcAngleS(&shape_angle.y, fopAcM_searchPlayerAngleY(this), 8, 0x1000, 0x100);

            if (!speedF && !speed.y) {
                setActionMode(1, 1);
            }
            break;
    }
}

/* 8081B78C-8081BC10 00576C 0484+00 1/1 0/0 0/0 .text            executeWaterJump__9daE_YMB_cFv */
void daE_YMB_c::executeWaterJump() {
    switch (mMode) {
        case 0:
            setBck(0x14, 2, 5.0f, 1.0f);
            mMode = 1;
            shape_angle.y += 0x100;
            field_0x6a8 = current.pos;
            // fallthrough
        case 1:
            mSound.startCreatureSoundLevel(Z2SE_EN_YB_MOVE_UNDERWATER, 0, -1);
            cLib_addCalcAngleS(&field_0x6ea, 0x4000, 8, 0x400, 0x100);
            cLib_chaseF(&speed.y, -50.0f, 5.0f);

            if (current.pos.y < field_0x6cc - 1000.0f - 500.0f) {
                mMode = 2;
                field_0x6fc = 60;
                speedF = 0.0f;
            }
            break;

        case 2:
            mSound.startCreatureSoundLevel(Z2SE_EN_YB_MOVE_UNDERWATER, 0, -1);
            cLib_addCalcAngleS(&field_0x6ea, -0x4000, 8, 0x400, 0x100);
            cLib_addCalcAngleS(&shape_angle.y, fopAcM_searchPlayerAngleY(this), 8, 0x1000, 0x100);
            current.angle.y = shape_angle.y;
            cLib_chaseF(&speed.y, 80.0f, 5.0f);

            if (field_0x6fc < 30) {
                setElecEffect1();
            }

            if (current.pos.y > field_0x6cc - 1000.0f) {
                shape_angle.y = fopAcM_searchPlayerAngleY(this);
                current.angle.y = shape_angle.y;
                field_0x6ea = 0;
                mMode = 3;
                speed.y = 80.0f;
                field_0x6f0 = 0;
                field_0x6fc = 25;
                setBck(0x13, 2, 0.0f, 1.0f);
            }
            break;

        case 3:
            setElecEffect2();
            if (field_0x6f0 == 0 && current.pos.y > field_0x6cc - 500.0f) {
                field_0x6f0 = 1;
                setWaterEffect1();
                mSound.startCreatureSound(Z2SE_EN_YB_SPLASH, 0, -1);
                mSound.startCreatureVoice(Z2SE_EN_YB_V_RISE, -1);
                field_0x714 = 0;
            }

            if (field_0x715 != 0) {
                mSound.startCreatureSoundLevel(Z2SE_EN_YB_MOVE_UNDERWATER, 0, -1);
            } else {
                mSound.startCreatureSoundLevel(Z2SE_EN_YB_FLY, 0, -1);
                if (field_0x6fc == 0) {
                    cLib_chaseF(&speed.y, -30.0f, 3.0f);
                    if (speed.y <= 24.0f) {
                        setBck(0x16, 0, 3.0f, 1.0f);
                        mMode = 4;
                    }
                }
            }
            break;

        case 4:
            mSound.startCreatureSoundLevel(Z2SE_EN_YB_FLY, 0, -1);
            if (cLib_chaseF(&speed.y, -30.0f, 3.0f) != 0) {
                field_0x6fc = 10;
                mMode = 5;
            }
            break;

        case 5:
            mSound.startCreatureSoundLevel(Z2SE_EN_YB_FLY, 0, -1);
            
            if (field_0x6fc == 0 && cLib_chaseF(&speed.y, 0.0f, 3.0f) != 0 && mpMorf->isStop()) {
                setActionMode(1, 1);
            }
            break;
    }
}

/* ############################################################################################## */
/* 8082199C-808219A0 0000F0 0004+00 0/1 0/0 0/0 .rodata          @6254 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6254 = 1500.0f;
COMPILER_STRIP_GATE(0x8082199C, &lit_6254);
#pragma pop

/* 8081BC10-8081BEE8 005BF0 02D8+00 1/1 0/0 0/0 .text            getNearDownPos__9daE_YMB_cFv */
void daE_YMB_c::getNearDownPos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 808219A0-808219A4 0000F4 0004+00 0/1 0/0 0/0 .rodata          @6356 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6356 = -20.0f;
COMPILER_STRIP_GATE(0x808219A0, &lit_6356);
#pragma pop

/* 8081BEE8-8081C4EC 005EC8 0604+00 1/2 0/0 0/0 .text            executeDamage__9daE_YMB_cFv */
void daE_YMB_c::executeDamage() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 808219A4-808219A8 0000F8 0004+00 0/2 0/0 0/0 .rodata          @6445 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6445 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x808219A4, &lit_6445);
#pragma pop

/* 8081C4EC-8081C7D0 0064CC 02E4+00 1/1 0/0 0/0 .text            setMidnaBindInit__9daE_YMB_cFP4cXyz
 */
void daE_YMB_c::setMidnaBindInit(cXyz* param_0) {
    // NONMATCHING
}

/* 8081C7D0-8081C908 0067B0 0138+00 1/1 0/0 0/0 .text            setMidnaBindLevel__9daE_YMB_cFi */
void daE_YMB_c::setMidnaBindLevel(int param_0) {
    // NONMATCHING
}

/* 8081C908-8081CC14 0068E8 030C+00 1/1 0/0 0/0 .text            setWolfLockEffect__9daE_YMB_cFv */
void daE_YMB_c::setWolfLockEffect() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 808219A8-808219AC 0000FC 0004+00 0/1 0/0 0/0 .rodata          @6596 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6596 = 16.0f;
COMPILER_STRIP_GATE(0x808219A8, &lit_6596);
#pragma pop

/* 8081CC14-8081CD00 006BF4 00EC+00 2/2 0/0 0/0 .text            initDownToWater__9daE_YMB_cFv */
void daE_YMB_c::initDownToWater() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 808219AC-808219B0 000100 0004+00 0/1 0/0 0/0 .rodata          @6654 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6654 = -60.0f;
COMPILER_STRIP_GATE(0x808219AC, &lit_6654);
#pragma pop

/* 8081CD00-8081CE6C 006CE0 016C+00 2/2 0/0 0/0 .text            calcDownToWater__9daE_YMB_cFv */
void daE_YMB_c::calcDownToWater() {
    // NONMATCHING
}

/* 8081CE6C-8081D4D8 006E4C 066C+00 1/1 0/0 0/0 .text            executeDown__9daE_YMB_cFv */
void daE_YMB_c::executeDown() {
    // NONMATCHING
}

/* 8081D4D8-8081D594 0074B8 00BC+00 1/1 0/0 0/0 .text            setCreateDrop__9daE_YMB_cFv */
void daE_YMB_c::setCreateDrop() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 808219B0-808219B4 000104 0004+00 0/1 0/0 0/0 .rodata          @7019 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7019 = -88400.0f;
COMPILER_STRIP_GATE(0x808219B0, &lit_7019);
#pragma pop

/* 808219B4-808219B8 000108 0004+00 0/1 0/0 0/0 .rodata          @7020 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7020 = 39000.0f;
COMPILER_STRIP_GATE(0x808219B4, &lit_7020);
#pragma pop

/* 808219B8-808219BC 00010C 0004+00 0/1 0/0 0/0 .rodata          @7021 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7021 = -87900.0f;
COMPILER_STRIP_GATE(0x808219B8, &lit_7021);
#pragma pop

/* 808219BC-808219C0 000110 0004+00 0/1 0/0 0/0 .rodata          @7022 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7022 = -18800.0f;
COMPILER_STRIP_GATE(0x808219BC, &lit_7022);
#pragma pop

/* 808219C0-808219C4 000114 0004+00 0/1 0/0 0/0 .rodata          @7023 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7023 = 38050.0f;
COMPILER_STRIP_GATE(0x808219C0, &lit_7023);
#pragma pop

/* 808219C4-808219C8 000118 0004+00 0/1 0/0 0/0 .rodata          @7024 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7024 = 263.0f;
COMPILER_STRIP_GATE(0x808219C4, &lit_7024);
#pragma pop

/* 808219C8-808219CC 00011C 0004+00 0/1 0/0 0/0 .rodata          @7025 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7025 = 280.0f;
COMPILER_STRIP_GATE(0x808219C8, &lit_7025);
#pragma pop

/* 808219CC-808219D0 000120 0004+00 0/1 0/0 0/0 .rodata          @7026 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7026 = -87893.0f;
COMPILER_STRIP_GATE(0x808219CC, &lit_7026);
#pragma pop

/* 808219D0-808219D4 000124 0004+00 0/1 0/0 0/0 .rodata          @7027 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7027 = -18731.0f;
COMPILER_STRIP_GATE(0x808219D0, &lit_7027);
#pragma pop

/* 808219D4-808219D8 000128 0004+00 0/1 0/0 0/0 .rodata          @7028 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7028 = 37578.0f;
COMPILER_STRIP_GATE(0x808219D4, &lit_7028);
#pragma pop

/* 808219D8-808219DC 00012C 0004+00 0/1 0/0 0/0 .rodata          @7029 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7029 = -5.0f;
COMPILER_STRIP_GATE(0x808219D8, &lit_7029);
#pragma pop

/* 8081D594-8081DBD0 007574 063C+00 1/1 0/0 0/0 .text            executeDeath__9daE_YMB_cFv */
void daE_YMB_c::executeDeath() {
    // NONMATCHING
}

/* 8081DBD0-8081DDE0 007BB0 0210+00 1/1 0/0 0/0 .text            demo_skip__9daE_YMB_cFi */
void daE_YMB_c::demo_skip(int param_0) {
    // NONMATCHING
}

/* 8081DDE0-8081DE14 007DC0 0034+00 3/3 0/0 0/0 .text            DemoSkipCallBack__9daE_YMB_cFPvi */
void daE_YMB_c::DemoSkipCallBack(void* param_0, int param_1) {
    // NONMATCHING
}

/* 8081DE14-8081DE84 007DF4 0070+00 1/1 0/0 0/0 .text            calcLakeDemoPlayerPos__9daE_YMB_cFv
 */
void daE_YMB_c::calcLakeDemoPlayerPos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 808219DC-808219E0 000130 0004+00 0/1 0/0 0/0 .rodata          @7205 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7205 = -300.0f;
COMPILER_STRIP_GATE(0x808219DC, &lit_7205);
#pragma pop

/* 808219E0-808219E4 000134 0004+00 0/1 0/0 0/0 .rodata          @7206 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7206 = -81000.0f;
COMPILER_STRIP_GATE(0x808219E0, &lit_7206);
#pragma pop

/* 808219E4-808219E8 000138 0004+00 0/1 0/0 0/0 .rodata          @7207 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7207 = -17000.0f;
COMPILER_STRIP_GATE(0x808219E4, &lit_7207);
#pragma pop

/* 808219E8-808219EC 00013C 0004+00 0/1 0/0 0/0 .rodata          @7208 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7208 = 33000.0f;
COMPILER_STRIP_GATE(0x808219E8, &lit_7208);
#pragma pop

/* 808219EC-808219F0 000140 0004+00 0/1 0/0 0/0 .rodata          @7209 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7209 = -700.0f;
COMPILER_STRIP_GATE(0x808219EC, &lit_7209);
#pragma pop

/* 808219F0-808219F4 000144 0004+00 0/1 0/0 0/0 .rodata          @7210 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7210 = 3500.0f;
COMPILER_STRIP_GATE(0x808219F0, &lit_7210);
#pragma pop

/* 8081DE84-8081E5B4 007E64 0730+00 1/1 0/0 0/0 .text            executeLakeDemo__9daE_YMB_cFv */
void daE_YMB_c::executeLakeDemo() {
    // NONMATCHING
}

/* 8081E5B4-8081F140 008594 0B8C+00 2/1 0/0 0/0 .text            executeStartDemo__9daE_YMB_cFv */
void daE_YMB_c::executeStartDemo() {
    // NONMATCHING
}

/* 8081F140-8081F2E0 009120 01A0+00 1/1 0/0 0/0 .text            checkStartBattleDemo__9daE_YMB_cFv */
bool daE_YMB_c::checkStartBattleDemo() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 808219F4-808219FC 000148 0006+02 0/0 0/0 0/0 .rodata          @7228 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_7228[6 + 2 /* padding */] = {
    0x00,
    0x20,
    0x01,
    0x00,
    0x20,
    0x04,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x808219F4, &lit_7228);
#pragma pop

/* 808219FC-80821A00 000150 0004+00 0/0 0/0 0/0 .rodata          @7482 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7482 = -89100.0f;
COMPILER_STRIP_GATE(0x808219FC, &lit_7482);
#pragma pop

/* 80821A00-80821A04 000154 0004+00 0/0 0/0 0/0 .rodata          @7483 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7483 = 39410.0f;
COMPILER_STRIP_GATE(0x80821A00, &lit_7483);
#pragma pop

/* 80821A04-80821A08 000158 0004+00 0/0 0/0 0/0 .rodata          @7484 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7484 = -88463.0f;
COMPILER_STRIP_GATE(0x80821A04, &lit_7484);
#pragma pop

/* 80821A08-80821A0C 00015C 0004+00 0/0 0/0 0/0 .rodata          @7485 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7485 = 38868.0f;
COMPILER_STRIP_GATE(0x80821A08, &lit_7485);
#pragma pop

/* 80821A0C-80821A10 000160 0004+00 0/0 0/0 0/0 .rodata          @7486 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7486 = -88660.0f;
COMPILER_STRIP_GATE(0x80821A0C, &lit_7486);
#pragma pop

/* 80821A10-80821A14 000164 0004+00 0/0 0/0 0/0 .rodata          @7487 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7487 = -18918.0f;
COMPILER_STRIP_GATE(0x80821A10, &lit_7487);
#pragma pop

/* 80821A14-80821A18 000168 0004+00 0/0 0/0 0/0 .rodata          @7488 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7488 = 38981.0f;
COMPILER_STRIP_GATE(0x80821A14, &lit_7488);
#pragma pop

/* 80821A18-80821A1C 00016C 0004+00 0/0 0/0 0/0 .rodata          @7489 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7489 = -89144.0f;
COMPILER_STRIP_GATE(0x80821A18, &lit_7489);
#pragma pop

/* 80821A1C-80821A20 000170 0004+00 0/0 0/0 0/0 .rodata          @7490 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7490 = -18551.0f;
COMPILER_STRIP_GATE(0x80821A1C, &lit_7490);
#pragma pop

/* 80821A20-80821A24 000174 0004+00 0/0 0/0 0/0 .rodata          @7491 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7491 = 39753.0f;
COMPILER_STRIP_GATE(0x80821A20, &lit_7491);
#pragma pop

/* 80821A24-80821A28 000178 0004+00 0/0 0/0 0/0 .rodata          @7492 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7492 = 120.0f;
COMPILER_STRIP_GATE(0x80821A24, &lit_7492);
#pragma pop

/* 80821A28-80821A2C 00017C 0004+00 0/0 0/0 0/0 .rodata          @7493 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7493 = 1.5f;
COMPILER_STRIP_GATE(0x80821A28, &lit_7493);
#pragma pop

/* 80821A2C-80821A30 000180 0004+00 0/0 0/0 0/0 .rodata          @7494 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7494 = -88800.0f;
COMPILER_STRIP_GATE(0x80821A2C, &lit_7494);
#pragma pop

/* 80821A30-80821A34 000184 0004+00 0/0 0/0 0/0 .rodata          @7495 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7495 = -18266.0f;
COMPILER_STRIP_GATE(0x80821A30, &lit_7495);
#pragma pop

/* 80821A34-80821A38 000188 0004+00 0/0 0/0 0/0 .rodata          @7496 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7496 = 39412.0f;
COMPILER_STRIP_GATE(0x80821A34, &lit_7496);
#pragma pop

/* 80821A38-80821A3C 00018C 0004+00 0/0 0/0 0/0 .rodata          @7497 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7497 = 17.0f / 10.0f;
COMPILER_STRIP_GATE(0x80821A38, &lit_7497);
#pragma pop

/* 80821A3C-80821A40 000190 0004+00 0/0 0/0 0/0 .rodata          @7498 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7498 = 11.0f / 5.0f;
COMPILER_STRIP_GATE(0x80821A3C, &lit_7498);
#pragma pop

/* 80821A40-80821A44 000194 0004+00 0/0 0/0 0/0 .rodata          @7499 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7499 = -89000.0f;
COMPILER_STRIP_GATE(0x80821A40, &lit_7499);
#pragma pop

/* 80821A44-80821A48 000198 0004+00 0/0 0/0 0/0 .rodata          @7500 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7500 = -18583.0f;
COMPILER_STRIP_GATE(0x80821A44, &lit_7500);
#pragma pop

/* 80821A48-80821A4C 00019C 0004+00 0/0 0/0 0/0 .rodata          @7501 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7501 = 39350.0f;
COMPILER_STRIP_GATE(0x80821A48, &lit_7501);
#pragma pop

/* 80821A4C-80821A50 0001A0 0004+00 0/0 0/0 0/0 .rodata          @7502 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7502 = -89260.0f;
COMPILER_STRIP_GATE(0x80821A4C, &lit_7502);
#pragma pop

/* 80821A50-80821A54 0001A4 0004+00 0/0 0/0 0/0 .rodata          @7503 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7503 = -18650.0f;
COMPILER_STRIP_GATE(0x80821A50, &lit_7503);
#pragma pop

/* 80821A54-80821A58 0001A8 0004+00 0/0 0/0 0/0 .rodata          @7504 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7504 = 39500.0f;
COMPILER_STRIP_GATE(0x80821A54, &lit_7504);
#pragma pop

/* 80821A58-80821A5C 0001AC 0004+00 0/1 0/0 0/0 .rodata          @7738 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7738 = -200.0f;
COMPILER_STRIP_GATE(0x80821A58, &lit_7738);
#pragma pop

/* 80821A5C-80821A60 0001B0 0004+00 0/1 0/0 0/0 .rodata          @7739 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7739 = 600.0f;
COMPILER_STRIP_GATE(0x80821A5C, &lit_7739);
#pragma pop

/* 8081F2E0-8081FAC8 0092C0 07E8+00 1/1 0/0 0/0 .text            executeBattleDemo__9daE_YMB_cFv */
void daE_YMB_c::executeBattleDemo() {
    // NONMATCHING
}

/* 8081FAC8-8081FF88 009AA8 04C0+00 2/1 0/0 0/0 .text            action__9daE_YMB_cFv */
void daE_YMB_c::action() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80821A60-80821A64 0001B4 0004+00 0/1 0/0 0/0 .rodata          @7903 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7903 = -250.0f;
COMPILER_STRIP_GATE(0x80821A60, &lit_7903);
#pragma pop

/* 80821A64-80821A68 0001B8 0004+00 0/1 0/0 0/0 .rodata          @7904 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7904 = 250.0f;
COMPILER_STRIP_GATE(0x80821A64, &lit_7904);
#pragma pop

/* 8081FF88-808200A0 009F68 0118+00 1/1 0/0 0/0 .text            mtx_set__9daE_YMB_cFv */
void daE_YMB_c::mtx_set() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80821A68-80821A6C 0001BC 0004+00 0/1 0/0 0/0 .rodata          @7922 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7922 = -120.0f;
COMPILER_STRIP_GATE(0x80821A68, &lit_7922);
#pragma pop

/* 808200A0-80820128 00A080 0088+00 3/3 0/0 0/0 .text            getBellyBitePos__9daE_YMB_cFP4cXyz
 */
void daE_YMB_c::getBellyBitePos(cXyz* param_0) {
    // NONMATCHING
}

/* 80820128-808203D8 00A108 02B0+00 2/2 0/0 0/0 .text            getDownLockPoint__9daE_YMB_cFv */
void daE_YMB_c::getDownLockPoint() {
    // NONMATCHING
}

/* 808203D8-80820668 00A3B8 0290+00 1/1 0/0 0/0 .text            setAttentionPos__9daE_YMB_cFv */
void daE_YMB_c::setAttentionPos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80821A6C-80821A70 0001C0 0004+00 0/1 0/0 0/0 .rodata          @8122 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8122 = 180.0f;
COMPILER_STRIP_GATE(0x80821A6C, &lit_8122);
#pragma pop

/* 80821A70-80821A74 0001C4 0004+00 0/1 0/0 0/0 .rodata          @8123 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8123 = 240.0f;
COMPILER_STRIP_GATE(0x80821A70, &lit_8123);
#pragma pop

/* 80821A74-80821A78 0001C8 0004+00 0/1 0/0 0/0 .rodata          @8124 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8124 = 360.0f;
COMPILER_STRIP_GATE(0x80821A74, &lit_8124);
#pragma pop

/* 80820668-808207AC 00A648 0144+00 1/1 0/0 0/0 .text            cc_set__9daE_YMB_cFv */
void daE_YMB_c::cc_set() {
    // NONMATCHING
}

/* 808207AC-80820A18 00A78C 026C+00 1/1 0/0 0/0 .text            execute__9daE_YMB_cFv */
int daE_YMB_c::execute() {
    // NONMATCHING
    BOOL bVar1 = FALSE;
    if (mAction == 9 || ((mAction == 8 && mMode >= 3) || daPy_py_c::checkNowWolfEyeUp())) {
        bVar1 = TRUE;
    }

    if (bVar1) {
        cLib_chaseF(&field_0x6d8, 255.0f, 8.0f);
        cLib_chaseF(&field_0x6dc, 150.0f, 6.0f);
    } else {
        cLib_chaseF(&field_0x6d8, 0.0f, 20.0f);
        cLib_chaseF(&field_0x6dc, 0.0f, 15.0f);
    }

    if (dComIfGp_event_runCheck() && !eventInfo.checkCommandDemoAccrpt()) {
        return 1;
    }

    if (field_0x6fc != 0) {
        field_0x6fc--;
    }

    if (field_0x700 != 0) {
        field_0x700--;
    }

    if (field_0x6f8 != 0) {
        field_0x6f8--;
    }

    if (field_0x704 != 0) {
        field_0x704--;
    }

    if (field_0x708 != 0) {
        field_0x708--;
    }

    if (field_0x70c != 0) {
        field_0x70c--;
    }

    if (field_0x723 != 0) {
        field_0x723--;
        if (field_0x723 == 0) {
            field_0x722 = 0;
        }
    }

    for (int i = 0; i < 6; i++) {
        if (field_0x680[i] != 0) {
            field_0x680[i]--;
            cLib_addCalc(&field_0x668[i], 1.0f, 0.5f, 0.3f, 0.01f);
        } else {
            cLib_addCalc(&field_0x668[i], 0.0f, 0.5f, 0.3f, 0.01f);
        }
    }

    if (field_0x698 != 0) {
        field_0x698--;
    }

    if (field_0x724 != 0) {
        field_0x724--;
    }

    if (field_0x764 == 0 || !field_0x6d8 || mAction == 9) {
        attention_info.flags &= 0xfffffffb;
    } else {
        attention_info.flags |= 4;
    }

    action();
    mtx_set();
    cc_set();

    return 1;
}

/* 80820A18-80820A38 00A9F8 0020+00 2/1 0/0 0/0 .text            daE_YMB_Execute__FP9daE_YMB_c */
static int daE_YMB_Execute(daE_YMB_c* i_this) {
    return i_this->execute();
}

/* 80820A38-80820A40 00AA18 0008+00 1/0 0/0 0/0 .text            daE_YMB_IsDelete__FP9daE_YMB_c */
static int daE_YMB_IsDelete(daE_YMB_c* i_this) {
    return 1;
}

/* 80820A40-80820AD0 00AA20 0090+00 1/1 0/0 0/0 .text            _delete__9daE_YMB_cFv */
int daE_YMB_c::_delete() {
    // NONMATCHING
    dComIfG_resDelete(&mPhase, "E_YB");

    if (field_0x1520 != 0) {
        l_initHIO = 0;
    }

    if (heap != NULL) {
        mSound.deleteObject();
    }

    if (mpBgW != NULL) {
        dComIfG_Bgsp().Release(mpBgW);
    }

    return 1;
}

/* 80820AD0-80820AF0 00AAB0 0020+00 1/0 0/0 0/0 .text            daE_YMB_Delete__FP9daE_YMB_c */
static int daE_YMB_Delete(daE_YMB_c* i_this) {
    return i_this->_delete();
}

/* 80820AF0-80820D68 00AAD0 0278+00 1/1 0/0 0/0 .text            CreateHeap__9daE_YMB_cFv */
int daE_YMB_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("E_YB", 0x19);
    JUT_ASSERT(4196, modelData != 0);
    mpMorf = new mDoExt_McaMorfSO(modelData, NULL, NULL, (J3DAnmTransform*)dComIfG_getObjectRes("E_YB", 0x11),
                                  2, 1.0f, 0, -1, &mSound, 0x80000, 0x31000084);
    if (mpMorf == NULL || mpMorf->getModel() == NULL) {
        return 0;
    }

    if (mInvisModel.create(mpMorf->getModel(), 1) == 0) {
        return 0;
    }

    J3DModel* model = mpMorf->getModel();
    model->setUserArea((u32)this);
    for (u16 i = 1; i < model->getModelData()->getJointNum(); i++) {
        model->getModelData()->getJointNodePointer(i)->setCallBack(JointCallBack);
    }

    mpBrkAnm = new mDoExt_brkAnm();
    if (mpBrkAnm == NULL) {
        return 0;
    }

    if (mpBrkAnm->init(mpMorf->getModel()->getModelData(), (J3DAnmTevRegKey*)dComIfG_getObjectRes("E_YB", 0x1c), 1, 2, 1.0f, 0, -1) == 0) {
        return 0;
    }

    mpBgW = new dBgW();
    if (mpBgW == NULL) {
        return 0;
    }

    if (mpBgW->Set((cBgD_t*)dComIfG_getObjectRes("E_YB", 0x1f), 1, &field_0x768) == 1) {
        return 0;
    }

    mpBgW->SetCrrFunc(dBgS_MoveBGProc_Typical);
    
    return 1;
}

/* 80820DB0-80820DD0 00AD90 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* a_this) {
    daE_YMB_c* i_this = (daE_YMB_c*)a_this;
    return i_this->CreateHeap();
}

/* 80820DD0-808211BC 00ADB0 03EC+00 1/1 0/0 0/0 .text            create__9daE_YMB_cFv */
cPhs__Step daE_YMB_c::create() {
    // NONMATCHING
    fopAcM_SetupActor(this, daE_YMB_c);

    mSwitchBit = fopAcM_GetParam(this);
    if (mSwitchBit != 0xFF) {
        if (dComIfGs_isSwitch(mSwitchBit, fopAcM_GetRoomNo(this))) {
            OS_REPORT("E_YMB やられ後なので再セットしません\n") // E_YMB I'm not going to reset it because I've been defeated\n
            return cPhs_ERROR_e;
        }
    }

    cPhs__Step phase = (cPhs__Step)dComIfG_resLoad(&mPhase, "E_YB");
    if (phase == cPhs_COMPLEATE_e) {
        OS_REPORT("E_YMB PARAM %x\n", fopAcM_GetParam(this));
        if (!fopAcM_entrySolidHeap(this, useHeapInit, 0x5200)) {
            return cPhs_ERROR_e;
        }

        if (mpBgW != NULL) {
            if (dComIfG_Bgsp().Regist(mpBgW, this)) {
                return cPhs_ERROR_e;
            }
        }

        mpBgW->SetRideCallback(rideCallBack);

        if (l_initHIO == 0) {
            l_initHIO = 1;
            field_0x1520 = 1;
            l_HIO.field_0x4 = -1;
        }

        attention_info.flags = 4;
        attention_info.field_0xa = 0x50;
        fopAcM_SetMtx(this, mpMorf->getModel()->getBaseTRMtx());
        fopAcM_SetMin(this, -400.0f, -400.0f, -400.0f);
        fopAcM_SetMax(this, 400.0f, 400.0f, 400.0f);
        health = 100;
        field_0x560 = 100;

        mStts.Init(0xFF, 0, this);
        field_0x82c[0].Set(cc_ymb_src);
        field_0x82c[0].SetStts(&mStts);
        field_0x82c[1].Set(cc_ymb_src);
        field_0x82c[1].SetStts(&mStts);
        field_0x1324.Set(cc_ymb_at_src);
        field_0x1324.SetStts(&mStts);
        field_0xa9c.Set(cc_ymb_eye_src);
        field_0xa9c.SetStts(&mStts);

        for (int i = 0; i < 6; i++) {
            field_0xbd4[i].Set(cc_ymb_tube_src);
            field_0xbd4[i].SetStts(&mStts);
        }

        mSound.init(&current.pos, &eyePos, 5, 1);
        mSound.setEnemyName("E_ymb");
        mAtInfo.mpSound = &mSound;
        mAtInfo.mPowerType = 1;
        gravity = 0.0f;
        field_0x69c = home.pos;
        field_0x717 = 1;
        mAction = 10;

        if (mpBgW != NULL) {
            dComIfG_Bgsp().Release(mpBgW);
        }

        daE_YMB_Execute(this);
    }

    return phase;
}

/* 808213F8-80821418 00B3D8 0020+00 1/0 0/0 0/0 .text            daE_YMB_Create__FP9daE_YMB_c */
static int daE_YMB_Create(daE_YMB_c* i_this) {
    return i_this->create();
}

/* ############################################################################################## */
/* 80821A84-80821A88 0001D8 0004+00 0/1 0/0 0/0 .rodata          @8657 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8657 = -88457.0f;
COMPILER_STRIP_GATE(0x80821A84, &lit_8657);
#pragma pop

/* 80821A88-80821A8C 0001DC 0004+00 0/1 0/0 0/0 .rodata          @8658 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8658 = -18786.0f;
COMPILER_STRIP_GATE(0x80821A88, &lit_8658);
#pragma pop

/* 80821A8C-80821A90 0001E0 0004+00 0/1 0/0 0/0 .rodata          @8659 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8659 = 42166.0f;
COMPILER_STRIP_GATE(0x80821A8C, &lit_8659);
#pragma pop

/* 80821A90-80821A94 0001E4 0004+00 0/1 0/0 0/0 .rodata          @8660 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8660 = -89307.0f;
COMPILER_STRIP_GATE(0x80821A90, &lit_8660);
#pragma pop

/* 80821A94-80821A98 0001E8 0004+00 0/1 0/0 0/0 .rodata          @8661 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8661 = 41366.0f;
COMPILER_STRIP_GATE(0x80821A94, &lit_8661);
#pragma pop

/* 80821A98-80821A9C 0001EC 0004+00 0/1 0/0 0/0 .rodata          @8662 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8662 = -89389.0f;
COMPILER_STRIP_GATE(0x80821A98, &lit_8662);
#pragma pop

/* 80821A9C-80821AA0 0001F0 0004+00 0/1 0/0 0/0 .rodata          @8663 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8663 = -18785.0f;
COMPILER_STRIP_GATE(0x80821A9C, &lit_8663);
#pragma pop

/* 80821AA0-80821AA4 0001F4 0004+00 0/1 0/0 0/0 .rodata          @8664 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8664 = 37267.0f;
COMPILER_STRIP_GATE(0x80821AA0, &lit_8664);
#pragma pop

/* 80821AA4-80821AA8 0001F8 0004+00 0/1 0/0 0/0 .rodata          @8665 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8665 = -88442.0f;
COMPILER_STRIP_GATE(0x80821AA4, &lit_8665);
#pragma pop

/* 80821AA8-80821AAC 0001FC 0004+00 0/1 0/0 0/0 .rodata          @8666 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8666 = -18753.0f;
COMPILER_STRIP_GATE(0x80821AA8, &lit_8666);
#pragma pop

/* 80821AAC-80821AB0 000200 0004+00 0/1 0/0 0/0 .rodata          @8667 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8667 = 38460.0f;
COMPILER_STRIP_GATE(0x80821AAC, &lit_8667);
#pragma pop

/* 80821AB0-80821AB4 000204 0004+00 0/1 0/0 0/0 .rodata          @8668 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8668 = -87864.0f;
COMPILER_STRIP_GATE(0x80821AB0, &lit_8668);
#pragma pop

/* 80821AB4-80821AB8 000208 0004+00 0/1 0/0 0/0 .rodata          @8669 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8669 = 37112.0f;
COMPILER_STRIP_GATE(0x80821AB4, &lit_8669);
#pragma pop

/* 80821AB8-80821ABC 00020C 0004+00 0/1 0/0 0/0 .rodata          @8670 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8670 = -87639.0f;
COMPILER_STRIP_GATE(0x80821AB8, &lit_8670);
#pragma pop

/* 80821ABC-80821AC0 000210 0004+00 0/1 0/0 0/0 .rodata          @8671 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8671 = -18764.0f;
COMPILER_STRIP_GATE(0x80821ABC, &lit_8671);
#pragma pop

/* 80821AC0-80821AC4 000214 0004+00 0/1 0/0 0/0 .rodata          @8672 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8672 = 41016.0f;
COMPILER_STRIP_GATE(0x80821AC0, &lit_8672);
#pragma pop

/* 80821AC4-80821AC8 000218 0004+00 0/1 0/0 0/0 .rodata          @8673 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8673 = -88977.0f;
COMPILER_STRIP_GATE(0x80821AC4, &lit_8673);
#pragma pop

/* 80821AC8-80821ACC 00021C 0004+00 0/1 0/0 0/0 .rodata          @8674 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8674 = 40658.0f;
COMPILER_STRIP_GATE(0x80821AC8, &lit_8674);
#pragma pop

/* 80821ACC-80821AD0 000220 0004+00 0/1 0/0 0/0 .rodata          @8675 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8675 = -86467.0f;
COMPILER_STRIP_GATE(0x80821ACC, &lit_8675);
#pragma pop

/* 80821AD0-80821AD4 000224 0004+00 0/1 0/0 0/0 .rodata          @8676 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8676 = -18758.0f;
COMPILER_STRIP_GATE(0x80821AD0, &lit_8676);
#pragma pop

/* 80821AD4-80821AD8 000228 0004+00 0/1 0/0 0/0 .rodata          @8677 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8677 = 39379.0f;
COMPILER_STRIP_GATE(0x80821AD4, &lit_8677);
#pragma pop

/* 80821AD8-80821ADC 00022C 0004+00 0/1 0/0 0/0 .rodata          @8678 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8678 = -87372.0f;
COMPILER_STRIP_GATE(0x80821AD8, &lit_8678);
#pragma pop

/* 80821ADC-80821AE0 000230 0004+00 0/1 0/0 0/0 .rodata          @8679 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8679 = 40362.0f;
COMPILER_STRIP_GATE(0x80821ADC, &lit_8679);
#pragma pop

/* 80821AE0-80821AE4 000234 0004+00 0/1 0/0 0/0 .rodata          @8680 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8680 = -86980.0f;
COMPILER_STRIP_GATE(0x80821AE0, &lit_8680);
#pragma pop

/* 80821AE4-80821AE8 000238 0004+00 0/1 0/0 0/0 .rodata          @8681 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8681 = 37583.0f;
COMPILER_STRIP_GATE(0x80821AE4, &lit_8681);
#pragma pop

/* 80821AE8-80821AEC 00023C 0004+00 0/1 0/0 0/0 .rodata          @8682 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8682 = -90195.0f;
COMPILER_STRIP_GATE(0x80821AE8, &lit_8682);
#pragma pop

/* 80821AEC-80821AF0 000240 0004+00 0/1 0/0 0/0 .rodata          @8683 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8683 = -18754.0f;
COMPILER_STRIP_GATE(0x80821AEC, &lit_8683);
#pragma pop

/* 80821AF0-80821AF4 000244 0004+00 0/1 0/0 0/0 .rodata          @8684 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8684 = 39893.0f;
COMPILER_STRIP_GATE(0x80821AF0, &lit_8684);
#pragma pop

/* 80821AF4-80821AF8 000248 0004+00 0/1 0/0 0/0 .rodata          @8685 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8685 = -88342.0f;
COMPILER_STRIP_GATE(0x80821AF4, &lit_8685);
#pragma pop

/* 80821AF8-80821AFC 00024C 0004+00 0/1 0/0 0/0 .rodata          @8686 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8686 = 39785.0f;
COMPILER_STRIP_GATE(0x80821AF8, &lit_8686);
#pragma pop

/* 80821AFC-80821B00 000250 0004+00 0/1 0/0 0/0 .rodata          @8687 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8687 = -90200.0f;
COMPILER_STRIP_GATE(0x80821AFC, &lit_8687);
#pragma pop

/* 80821B00-80821B04 000254 0004+00 0/1 0/0 0/0 .rodata          @8688 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8688 = 38100.0f;
COMPILER_STRIP_GATE(0x80821B00, &lit_8688);
#pragma pop

/* 8082187C-80821898 00B85C 001C+00 1/1 0/0 0/0 .text            setPos__11daObjDrop_cF4cXyz */
// void daObjDrop_c::setPos(cXyz param_0) {
extern "C" void setPos__11daObjDrop_cF4cXyz() {
    // NONMATCHING
}

AUDIO_INSTANCES;

/* 80821D74-80821D94 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_YMB_Method */
static actor_method_class l_daE_YMB_Method = {
    (process_method_func)daE_YMB_Create,
    (process_method_func)daE_YMB_Delete,
    (process_method_func)daE_YMB_Execute,
    (process_method_func)daE_YMB_IsDelete,
    (process_method_func)daE_YMB_Draw,
};

/* 80821D94-80821DC4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_YMB */
extern actor_process_profile_definition g_profile_E_YMB = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_YMB,             // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daE_YMB_c),      // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  196,                    // mPriority
  &l_daE_YMB_Method,      // sub_method
  0x00044000,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
