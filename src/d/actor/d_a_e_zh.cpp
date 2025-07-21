/**
 * @file d_a_e_zh.cpp
 * 
*/

#include "d/actor/d_a_e_zh.h"
#include "d/actor/d_a_obj_carry.h"
#include "d/d_com_inf_game.h"
#include "d/d_s_play.h"
#include "dol2asm.h"
#include "d/d_camera.h"

enum Action {
    /* 0x00 */ ACTION_EXECUTE_START_DEMO,
    /* 0x01 */ ACTION_EXECUTE_WAIT,
    /* 0x02 */ ACTION_EXECUTE_BALL_WAIT,
    /* 0x03 */ ACTION_EXECUTE_OPEN_START,
    /* 0x04 */ ACTION_EXECUTE_SEARCH_MOVE,
    /* 0x05 */ ACTION_EXECUTE_BG_HIT_SH_MOVE,
    /* 0x06 */ ACTION_EXECUTE_CATCH_MOVE,
    /* 0x07 */ ACTION_EXECUTE_CATCH_FLY_MOVE,
    /* 0x08 */ ACTION_EXECUTE_FLY_DELETE,
    /* 0x09 */ ACTION_EXECUTE_RETURN_DEMO,
    /* 0x0A */ ACTION_EXECUTE_DAMAGE,
    /* 0x0B */ ACTION_EXECUTE_DEAD_STOP,
};


//
// Forward References:
//

extern "C" void __ct__12daE_ZH_HIO_cFv();
extern "C" void draw__8daE_ZH_cFv();
extern "C" void __dt__4cXyzFv();
extern "C" static void daE_ZH_Draw__FP8daE_ZH_c();
extern "C" void setBck__8daE_ZH_cFiUcff();
extern "C" void setActionMode__8daE_ZH_cFii();
extern "C" static void s_BallSearch__FPvPv();
extern "C" static void s_BallSearch_Tag__FPvPv();
extern "C" void startDemoCheck__8daE_ZH_cFv();
extern "C" void mBallBGCheck__8daE_ZH_cFv();
extern "C" void mGateOpen__8daE_ZH_cFv();
extern "C" void mColorSet__8daE_ZH_cFbff();
extern "C" void mReturnLineMove__8daE_ZH_cFv();
extern "C" void mBallBgLineCheck__8daE_ZH_cFv();
extern "C" void mSearchMove__8daE_ZH_cFUc();
extern "C" void mStartParticleSet__8daE_ZH_cFv();
extern "C" void mCutTypeCheck__8daE_ZH_cFv();
extern "C" void damage_check__8daE_ZH_cFv();
extern "C" void executeStartDemo__8daE_ZH_cFv();
extern "C" void executeWait__8daE_ZH_cFv();
extern "C" void executeBallWait__8daE_ZH_cFv();
extern "C" void executeOpenStart__8daE_ZH_cFv();
extern "C" void executeSearchMove__8daE_ZH_cFv();
extern "C" void executeBgHitSHMove__8daE_ZH_cFv();
extern "C" void executeCatchMove__8daE_ZH_cFv();
extern "C" void executeCatchFlyMove__8daE_ZH_cFv();
extern "C" void executeReturnDemo__8daE_ZH_cFv();
extern "C" void executeFlyDelete__8daE_ZH_cFv();
extern "C" void executeDamage__8daE_ZH_cFv();
extern "C" void executeDeadStop__8daE_ZH_cFv();
extern "C" void executeEntryCheck__8daE_ZH_cFv();
extern "C" void tagAction__8daE_ZH_cFv();
extern "C" void action__8daE_ZH_cFv();
extern "C" void mtx_set__8daE_ZH_cFv();
extern "C" void cc_set__8daE_ZH_cFv();
extern "C" void execute__8daE_ZH_cFv();
extern "C" static void daE_ZH_Execute__FP8daE_ZH_c();
extern "C" static bool daE_ZH_IsDelete__FP8daE_ZH_c();
extern "C" void _delete__8daE_ZH_cFv();
extern "C" static void daE_ZH_Delete__FP8daE_ZH_c();
extern "C" void CreateHeap__8daE_ZH_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void create__8daE_ZH_cFv();
extern "C" void __ct__8daE_ZH_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __ct__4cXyzFv();
extern "C" static void daE_ZH_Create__FP8daE_ZH_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_ZH_HIO_cFv();
extern "C" void __sinit_d_a_e_zh_cpp();
extern "C" static void func_8082F1E4();
extern "C" static void func_8082F1EC();
extern "C" extern char const* const d_a_e_zh__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void fopAcM_setCarryNow__FP10fopAc_ac_ci();
extern "C" void fopAcM_cancelCarryNow__FP10fopAc_ac_c();
extern "C" void fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData();
extern "C" void roofCheck__11fopAcM_rc_cFPC4cXyz();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void dStage_changeScene__FifUlScsi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGs_onOneZoneSwitch__Fii();
extern "C" void dComIfGs_offOneZoneSwitch__Fii();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void offEventBit__11dSv_event_cFUs();
extern "C" void onSwitch__12dSv_danBit_cFi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void offSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void dEv_noFinishSkipProc__FPvi();
extern "C" void setSkipProc__14dEvt_control_cFPvPFPvi_ii();
extern "C" void setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
setPoly__13dPa_control_cFUlUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
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
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void getHitSeID__12dCcD_GObjInfFUci();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void Start__9dCamera_cFv();
extern "C" void Stop__9dCamera_cFv();
extern "C" void SetTrimSize__9dCamera_cFl();
extern "C" void Set__9dCamera_cF4cXyz4cXyz();
extern "C" void Set__9dCamera_cF4cXyz4cXyzfs();
extern "C" void Reset__9dCamera_cF4cXyz4cXyz();
extern "C" void StartBlure__9dCamera_cFiP10fopAc_ac_cff();
extern "C" void ResetBlure__9dCamera_cFv();
extern "C" void dCam_getBody__Fv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void atan2sX_Z__4cXyzCFv();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcPos__FP4cXyzRC4cXyzfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void func_80280808();
extern "C" void changeBgmStatus__8Z2SeqMgrFl();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void __construct_array();
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
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" f32 mRoofY__11fopAcM_rc_c;
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

UNK_REL_DATA;

/* 8082F440-8082F480 000020 0040+00 0/1 0/0 0/0 .data cc_zhSph_src__22@unnamed@d_a_e_zh_cpp@ */
namespace {
    static dCcD_SrcSph cc_zhSph_src = {
        {
            {0, {{AT_TYPE_0, 0, 0}, {0xD84860BA, 3}, 0x15}},
            {dCcD_SE_METAL, 0, 0, 0, 0},
            {dCcD_SE_METAL, 1, 0, 0, 3},
            {0}
        },
        {
            {{0.0f, 0.0f, 0.0f}, 40.0f},
        }
    };

    /* 8082F480-8082F4C4 000060 0044+00 0/1 0/0 0/0 .data cc_zhCyl_src__22@unnamed@d_a_e_zh_cpp@ */
    static dCcD_SrcCyl cc_zhCyl_src = {
        {
            {0, {{AT_TYPE_0, 0, 0}, {0xD84860BA, 3}, 0x15}},
            {dCcD_SE_METAL, 0, 0, 0, 0},
            {dCcD_SE_METAL, 1, 0, 0, 3},
            {0}
        },
        {
            {0.0f, 0.0f, 0.0f}, 50.0f, 300.0f,
        }
    };

    /* 8082F4C4-8082F508 0000A4 0044+00 0/1 0/0 0/0 .data cc_zhCyl_at_src__22@unnamed@d_a_e_zh_cpp@ */
    static dCcD_SrcCyl cc_zhCyl_at_src = {
        {
            {0, {{AT_TYPE_CSTATUE_SWING, 4, 0xD}, {0, 0}, 0}},
            {dCcD_SE_METAL, 0, 2, 0, 0},
            {dCcD_SE_NONE, 1, 0, 0, 2},
            {0},
        },
        {
            {0.0f, 0.0f, 0.0f}, 50.0f, 300.0f,
        }
    };
}

/* 8082F508-8082F55C -00001 0054+00 1/1 0/0 0/0 .data            @4709 */
SECTION_DATA static void* lit_4709[21] = {
    (void*)(((char*)executeBallWait__8daE_ZH_cFv) + 0x68),
    (void*)(((char*)executeBallWait__8daE_ZH_cFv) + 0x1F0),
    (void*)(((char*)executeBallWait__8daE_ZH_cFv) + 0x240),
    (void*)(((char*)executeBallWait__8daE_ZH_cFv) + 0x488),
    (void*)(((char*)executeBallWait__8daE_ZH_cFv) + 0x488),
    (void*)(((char*)executeBallWait__8daE_ZH_cFv) + 0x488),
    (void*)(((char*)executeBallWait__8daE_ZH_cFv) + 0x488),
    (void*)(((char*)executeBallWait__8daE_ZH_cFv) + 0x488),
    (void*)(((char*)executeBallWait__8daE_ZH_cFv) + 0x488),
    (void*)(((char*)executeBallWait__8daE_ZH_cFv) + 0x488),
    (void*)(((char*)executeBallWait__8daE_ZH_cFv) + 0x290),
    (void*)(((char*)executeBallWait__8daE_ZH_cFv) + 0x2B4),
    (void*)(((char*)executeBallWait__8daE_ZH_cFv) + 0x340),
    (void*)(((char*)executeBallWait__8daE_ZH_cFv) + 0x488),
    (void*)(((char*)executeBallWait__8daE_ZH_cFv) + 0x488),
    (void*)(((char*)executeBallWait__8daE_ZH_cFv) + 0x488),
    (void*)(((char*)executeBallWait__8daE_ZH_cFv) + 0x488),
    (void*)(((char*)executeBallWait__8daE_ZH_cFv) + 0x488),
    (void*)(((char*)executeBallWait__8daE_ZH_cFv) + 0x488),
    (void*)(((char*)executeBallWait__8daE_ZH_cFv) + 0x488),
    (void*)(((char*)executeBallWait__8daE_ZH_cFv) + 0x38C),
};

/* 8082F55C-8082F5A0 -00001 0044+00 1/1 0/0 0/0 .data            @4883 */
SECTION_DATA static void* lit_4883[17] = {
    (void*)(((char*)executeOpenStart__8daE_ZH_cFv) + 0x6C),
    (void*)(((char*)executeOpenStart__8daE_ZH_cFv) + 0xDC),
    (void*)(((char*)executeOpenStart__8daE_ZH_cFv) + 0x1D8),
    (void*)(((char*)executeOpenStart__8daE_ZH_cFv) + 0x214),
    (void*)(((char*)executeOpenStart__8daE_ZH_cFv) + 0x584),
    (void*)(((char*)executeOpenStart__8daE_ZH_cFv) + 0x584),
    (void*)(((char*)executeOpenStart__8daE_ZH_cFv) + 0x584),
    (void*)(((char*)executeOpenStart__8daE_ZH_cFv) + 0x584),
    (void*)(((char*)executeOpenStart__8daE_ZH_cFv) + 0x584),
    (void*)(((char*)executeOpenStart__8daE_ZH_cFv) + 0x584),
    (void*)(((char*)executeOpenStart__8daE_ZH_cFv) + 0x258),
    (void*)(((char*)executeOpenStart__8daE_ZH_cFv) + 0x2D4),
    (void*)(((char*)executeOpenStart__8daE_ZH_cFv) + 0x368),
    (void*)(((char*)executeOpenStart__8daE_ZH_cFv) + 0x398),
    (void*)(((char*)executeOpenStart__8daE_ZH_cFv) + 0x4AC),
    (void*)(((char*)executeOpenStart__8daE_ZH_cFv) + 0x4CC),
    (void*)(((char*)executeOpenStart__8daE_ZH_cFv) + 0x550),
};

/* 8082F5A0-8082F5A8 000180 0008+00 1/1 0/0 0/0 .data            effId$5059 */
// static u16 effId[4] = {0x8A6D, 0x8A6E, 0x8A6F, 0x8A70};

/* 8082F5A8-8082F5DC -00001 0034+00 1/1 0/0 0/0 .data            @5390 */
SECTION_DATA static void* lit_5390[13] = {
    (void*)(((char*)executeCatchFlyMove__8daE_ZH_cFv) + 0x150),
    (void*)(((char*)executeCatchFlyMove__8daE_ZH_cFv) + 0x1A8),
    (void*)(((char*)executeCatchFlyMove__8daE_ZH_cFv) + 0x214),
    (void*)(((char*)executeCatchFlyMove__8daE_ZH_cFv) + 0x23C),
    (void*)(((char*)executeCatchFlyMove__8daE_ZH_cFv) + 0x288),
    (void*)(((char*)executeCatchFlyMove__8daE_ZH_cFv) + 0x3A8),
    (void*)(((char*)executeCatchFlyMove__8daE_ZH_cFv) + 0x690),
    (void*)(((char*)executeCatchFlyMove__8daE_ZH_cFv) + 0x690),
    (void*)(((char*)executeCatchFlyMove__8daE_ZH_cFv) + 0x690),
    (void*)(((char*)executeCatchFlyMove__8daE_ZH_cFv) + 0x690),
    (void*)(((char*)executeCatchFlyMove__8daE_ZH_cFv) + 0x504),
    (void*)(((char*)executeCatchFlyMove__8daE_ZH_cFv) + 0x528),
    (void*)(((char*)executeCatchFlyMove__8daE_ZH_cFv) + 0x3D4),
};

/* 8082F5DC-8082F60C -00001 0030+00 1/1 0/0 0/0 .data            @5782 */
SECTION_DATA static void* lit_5782[12] = {
    (void*)(((char*)action__8daE_ZH_cFv) + 0xA8),  (void*)(((char*)action__8daE_ZH_cFv) + 0xB4),
    (void*)(((char*)action__8daE_ZH_cFv) + 0xC0),  (void*)(((char*)action__8daE_ZH_cFv) + 0xCC),
    (void*)(((char*)action__8daE_ZH_cFv) + 0xD8),  (void*)(((char*)action__8daE_ZH_cFv) + 0xE4),
    (void*)(((char*)action__8daE_ZH_cFv) + 0xF0),  (void*)(((char*)action__8daE_ZH_cFv) + 0xFC),
    (void*)(((char*)action__8daE_ZH_cFv) + 0x108), (void*)(((char*)action__8daE_ZH_cFv) + 0x114),
    (void*)(((char*)action__8daE_ZH_cFv) + 0x120), (void*)(((char*)action__8daE_ZH_cFv) + 0x12C),
};

/* 8082F60C-8082F62C -00001 0020+00 1/0 0/0 0/0 .data            l_daE_ZH_Method */
static actor_method_class l_daE_ZH_Method = {
    (process_method_func)daE_ZH_Create__FP8daE_ZH_c,
    (process_method_func)daE_ZH_Delete__FP8daE_ZH_c,
    (process_method_func)daE_ZH_Execute__FP8daE_ZH_c,
    (process_method_func)daE_ZH_IsDelete__FP8daE_ZH_c,
    (process_method_func)daE_ZH_Draw__FP8daE_ZH_c,
};

/* 8082F62C-8082F65C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_ZH */
extern actor_process_profile_definition g_profile_E_ZH = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_ZH,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daE_ZH_c),       // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  173,                    // mPriority
  &l_daE_ZH_Method,       // sub_method
  0x00040100,             // mStatus
  fopAc_ENV_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 8082F65C-8082F668 00023C 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 8082F668-8082F674 000248 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 8082F674-8082F680 000254 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 8082F680-8082F68C 000260 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 8082F68C-8082F698 00026C 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 8082F698-8082F6A4 000278 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 8082F6A4-8082F6C8 000284 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8082F1EC,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8082F1E4,
};

/* 8082F6C8-8082F6D4 0002A8 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 8082F6D4-8082F6E0 0002B4 000C+00 2/2 0/0 0/0 .data            __vt__12daE_ZH_HIO_c */
SECTION_DATA extern void* __vt__12daE_ZH_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_ZH_HIO_cFv,
};

/* 8082902C-8082907C 0000EC 0050+00 1/1 0/0 0/0 .text            __ct__12daE_ZH_HIO_cFv */
daE_ZH_HIO_c::daE_ZH_HIO_c() {
    field_0x4 = -1;
    model_size = 1.0f;
    ascent_rate = 10.0f;
    wandering_area = 500.0f;
    wait_time = 100;
    piyori_time = 300;
    dungeon_bit_check = 0;
}

UNK_REL_BSS;

/* 8082F724-8082F728 -00001 0004+00 1/2 0/0 0/0 .bss             None */
/* 8082F724 0001+00 data_8082F724 @1009 */
/* 8082F725 0003+00 data_8082F725 None */
static u8 l_initHIO;

/* 8082F734-8082F750 000054 001C+00 8/9 0/0 0/0 .bss             l_HIO */
static daE_ZH_HIO_c l_HIO;

/* 8082F750-8082F754 000070 0004+00 4/5 0/0 0/0 .bss             mStartFlag */
static int mStartFlag;

/* 8082907C-8082934C 00013C 02D0+00 1/1 0/0 0/0 .text            draw__8daE_ZH_cFv */
int daE_ZH_c::draw() {
    J3DModelData* modelData;
    J3DMaterial* matNodeP;

    if (arg0 == 2) {
        return 1;
    }

    if (field_0x7ae != 0) {
        return 1;
    }
    
    if (arg0 == 1) {
        g_env_light.settingTevStruct(8, &current.pos, &tevStr);
        g_env_light.setLightTevColorType_MAJI(field_0x5b8, &tevStr);

        modelData = field_0x5b8->getModelData();
        for (u16 i = 0; i < modelData->getMaterialNum(); i++) {
            matNodeP = modelData->getMaterialNodePointer(i);
            if (matNodeP != NULL) {
                matNodeP->getTevKColor(3)->a = field_0x77c;
            }
        }

        mDoExt_modelUpdateDL(field_0x5b8);

        if (mStartFlag == 0) {
            return 1;
        }
    }

    if ((mActionMode == 2 && mMoveMode < 2) || (mActionMode == 11 && mMoveMode == 10)) {
        return 1;
    }

    J3DModel* model = mpModelMorf->getModel();
    
    g_env_light.settingTevStruct(8, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &tevStr);

    modelData = model->getModelData();
    for (u16 i = 0; i < modelData->getMaterialNum(); i++) {
        matNodeP = modelData->getMaterialNodePointer(i);
        if (matNodeP != NULL) {
            matNodeP->getTevColor(1)->r = (int)field_0x764[0] & 0xFF;
            matNodeP->getTevColor(1)->g = (int)field_0x764[1] & 0xFF;
            matNodeP->getTevColor(1)->b = (int)field_0x764[2] & 0xFF;
        }
    }

    mpBtkAnm->entry(model->getModelData());
    fopAcM_setEffectMtx(this, model->getModelData());
    mpModelMorf->entryDL();

    cXyz sp68;
    sp68.set(current.pos.x, current.pos.y + 10.0f, current.pos.z);
    mShadowKey = dComIfGd_setShadow(mShadowKey, 0, model, &sp68, 1200.0f, 0.0f,
                                    current.pos.y, mBgc.GetGroundH(), mBgc.m_gnd,
                                    &tevStr, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());

    return 1;
}

/* 80829388-808293A8 000448 0020+00 1/0 0/0 0/0 .text            daE_ZH_Draw__FP8daE_ZH_c */
static int daE_ZH_Draw(daE_ZH_c* i_this) {
    return i_this->draw();
}

/* 808293A8-80829454 000468 00AC+00 10/10 0/0 0/0 .text            setBck__8daE_ZH_cFiUcff */
void daE_ZH_c::setBck(int i_anm, u8 i_attr, f32 i_morf, f32 i_rate) {
    mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_ZH", i_anm), i_attr, i_morf, 
                        i_rate, 0.0f, -1.0f);
    mAnm = i_anm;
}

/* 80829454-80829460 000514 000C+00 14/14 0/0 0/0 .text            setActionMode__8daE_ZH_cFii */
void daE_ZH_c::setActionMode(int i_action, int i_mode) {
    mActionMode = i_action;
    mMoveMode = i_mode;
}

/* 80829460-80829500 000520 00A0+00 3/3 0/0 0/0 .text            s_BallSearch__FPvPv */
static void* s_BallSearch(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_Obj_Carry && ((daObjCarry_c*)i_actor)->prm_chk_type_lightball() &&
        ((((daE_ZH_c*)i_data)->bitSw == 16 && ((daObjCarry_c*)i_actor)->getType() == 8) || (((daE_ZH_c*)i_data)->bitSw == 17 && ((daObjCarry_c*)i_actor)->getType() == 9))) {
        return i_actor;
    }

    return NULL;
}

/* 80829500-80829570 0005C0 0070+00 2/2 0/0 0/0 .text            s_BallSearch_Tag__FPvPv */
static void* s_BallSearch_Tag(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_Obj_Carry && ((daObjCarry_c*)i_actor)->prm_chk_type_lightball()) {
        return i_actor;
    }

    return NULL;
}

/* 80829570-80829658 000630 00E8+00 4/4 0/0 0/0 .text            startDemoCheck__8daE_ZH_cFv */
bool daE_ZH_c::startDemoCheck() {
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    camera_class* camera2 = dComIfGp_getCamera(0);

    if (!eventInfo.checkCommandDemoAccrpt()) {
        fopAcM_orderPotentialEvent(this, 2, 0xFFFF, 0);
        eventInfo.onCondition(dEvtCnd_CANDEMO_e);
        mDemoCamEye = camera2->lookat.eye;
        mDemoCamCenter = camera2->lookat.center;
        return false;
    }

    camera->mCamera.Stop();
    camera->mCamera.SetTrimSize(3);
    daPy_getPlayerActorClass()->changeOriginalDemo();
    return true;
}

/* 80829658-808298BC 000718 0264+00 2/2 0/0 0/0 .text            mBallBGCheck__8daE_ZH_cFv */
void daE_ZH_c::mBallBGCheck() {
    // NONMATCHING
    mBallHosei.zero();

    if (field_0x664 != NULL) {
        s16 sVar1;
        cXyz spa4, spb0, start;
        dBgS_LinChk lin_chk;

        start.set(field_0x664->current.pos);
        start.y += 50.0f;

        for (int i = 0; i < 8; i++) {
            cMtx_YrotS(*calc_mtx, sVar1);
            spa4.x = 0.0f;
            spa4.y = 100.0f;
            spa4.z = 180.0f;
            MtxPosition(&spa4, &spb0);
            field_0x6f8[i] = spb0 + field_0x664->current.pos;
            lin_chk.Set(&start, &field_0x6f8[i], this);

            if (dComIfG_Bgsp().LineCross(&lin_chk)) {
                field_0x758[i] ^= 0xFF;
                cMtx_YrotS(*calc_mtx, sVar1 + 0x8000);
                spa4.x = 0.0f;
                spa4.y = 100.0f;
                spa4.z = 180.0f;
                MtxPosition(&spa4, &spb0);

                if (fabsf(mBallHosei.x) < fabsf(spb0.x)) {
                    mBallHosei.x = spb0.x;
                }

                if (fabsf(mBallHosei.z) < fabsf(spb0.z)) {
                    mBallHosei.z = spb0.z;
                }
            } else {
                field_0x758[i] = 0xFF;
            }

            if (i != 3) {
                sVar1 += 0x4000;
            } else {
                if (mBallHosei.x || mBallHosei.z) {
                    return;
                }
                
                sVar1 = 0x2000;
            }
        }
    }
}

/* 808298BC-808299F8 00097C 013C+00 3/3 0/0 0/0 .text            mGateOpen__8daE_ZH_cFv */
void daE_ZH_c::mGateOpen() {
    // NONMATCHING
    switch (field_0x794[2]) {
        case 0:
            field_0x77c = 0.0f;
            mSound.startCreatureSound(Z2SE_EN_ZH_MV_WALL, 0, -1);
            field_0x794[2]++;
            // fallthrough
        case 1:
            cLib_addCalc2(&field_0x77c, 255.0f, 0.5f, 10.0f);
            break;

        case 2:
            field_0x7a4 += 5.0f;
            cLib_addCalc2(&field_0x77c, 80.0f + cM_ssin(field_0x7a4 << 8) * 40.0f, 0.5f, 10.0f);
            break;

        case 3:
            cLib_addCalc0(&field_0x77c, 0.5f, 10.0f);
            break;
    }
}

/* 808299F8-80829AD8 000AB8 00E0+00 4/4 0/0 0/0 .text            mColorSet__8daE_ZH_cFbff */
bool daE_ZH_c::mColorSet(bool param_1, f32 param_2, f32 param_3) {
    bool rv;

    if (!param_1) {
        cLib_addCalc0(&field_0x764[0], 0.8f, param_2);
        cLib_addCalc0(&field_0x764[2], 0.8f, param_3);

        return field_0x764[0] < 1.0f;
    }

    cLib_addCalc2(&field_0x764[0], 255.0f, 0.8f, param_2);
    cLib_addCalc2(&field_0x764[2], 50.0f, 0.8f, param_3);

    if (field_0x764[0] > 253.0f) {
        field_0x764[0] = 255.0f;
        field_0x764[2] = 50.0f;
        return true;
    }

    return false;
}

/* 80829AD8-80829E44 000B98 036C+00 2/2 0/0 0/0 .text            mReturnLineMove__8daE_ZH_cFv */
bool daE_ZH_c::mReturnLineMove() {
    // NONMATCHING
    if (field_0x664 == NULL) {
        setActionMode(8, 0);
        return false;
    }

    static cXyz mRoomLine_dt[6] = {
        cXyz(-3950.0f, -500.0f, 7612.0f),
        cXyz(-3950.0f, -725.0f, 253.0f),
        cXyz(3950.0f, -500.0f, 7442.0f),
        cXyz(3950.0f, -725.0f, 352.0f),
        cXyz(3950.0f, -725.0f, 352.0f),
        cXyz(3950.0f, -725.0f, 352.0f),
    };

    u32 uVar1 = 0;
    cXyz sp2c;

    switch (fopAcM_GetRoomNo(this)) {
        case 1:
            break;
            
        case 2:
            uVar1 = 1;
            break;

        case 4:
            uVar1 = 2;
            break;

        case 5:
            uVar1 = 3;
            break;

    }

    if (arg0 == 0) {
        mRetrunStartLine.set(home.pos);
        mRetrunStartLine.set(0.0f, 0.0f, -800.0f);
    } else {
        mRetrunStartLine.set(mRoomLine_dt[uVar1]);
        mRetrunStartLine.z = mRoomLine_dt[uVar1 ^ 1].z;
        mRetrunStartLine.set(mRoomLine_dt[uVar1]);
    }

    mRetrunStartLine.y = current.pos.y;
    cLib_addCalc2(&current.pos.x, mRetrunStartLine.x, 0.7f, 5.0f);
    sp2c = mRetrunStartLine - current.pos;
    sp2c.z = 0.0f;
    cLib_addCalcAngleS2(&mRollAngle, 0x400, 8, 0x40);
    cLib_addCalcAngleS2(&current.angle.y, (s16)sp2c.atan2sX_Z(), 8, mRollAngle);
    cLib_addCalcAngleS2(&shape_angle.y, current.angle.y, 8, mRollAngle);

    if (fabsf(current.pos.x - mRetrunStartLine.x) < 20.0f) {
        return true;
    }

    return false;
}

/* 80829E44-8082A01C 000F04 01D8+00 2/2 0/0 0/0 .text            mBallBgLineCheck__8daE_ZH_cFv */
bool daE_ZH_c::mBallBgLineCheck() {
    dBgS_LinChk lin_chk;
    cXyz sp9c, end;
    s16 sVar1 = end.atan2sX_Z();
    s16 sVar2 = 0;
    int iVar1 = 0;

    for (int i = 0; i < 3; i++) {
        cMtx_YrotS(*calc_mtx, sVar1 + sVar2);
        sp9c.x = 0.0f;
        sp9c.y = 100.0f;
        sp9c.z = 170.0f;
        MtxPosition(&sp9c, &field_0x6c8[i]);
        field_0x6c8[i] += current.pos;
        end.set(current.pos);

        if (field_0x664 != NULL) {
            end = field_0x664->current.pos + mBallHosei;
        }

        end.y += 100.0f;
        lin_chk.Set(&field_0x6c8[i], &end, this);
        field_0x6ec[iVar1] = 0;

        if (dComIfG_Bgsp().LineCross(&lin_chk)) {
            field_0x6ec[iVar1] = 1;
            iVar1++;
        }

        if (i != 0) {
            sVar2 = -0x4000;
        } else {
            sVar2 = 0x4000;
        }
    }

    if (iVar1 != 0) {
        return true;
    }

    return false;
}

/* 8082A01C-8082A390 0010DC 0374+00 2/2 0/0 0/0 .text            mSearchMove__8daE_ZH_cFUc */
bool daE_ZH_c::mSearchMove(u8 param_1) {
    if (field_0x664 == NULL) {
        setActionMode(8, 0);
        return NULL;
    }

    cXyz sp50, sp5c;
    bool rv = false;

    mBallBGCheck();

    if (param_1 != 0 || (!mBallHosei.x && !mBallHosei.z)) {
        cMtx_YrotS(*calc_mtx, current.angle.y);
        sp50.x = 0.0f;
        sp50.y = 0.0f;
        sp50.z = field_0x774;
        MtxPosition(&sp50, &sp5c);

        if (param_1 == 0) {
            sp5c += field_0x664->current.pos;

            if (mBgc.GetGroundH() != -1000000000.0f && mBgc.GetGroundH() > field_0x664->current.pos.y) {
                sp5c.y = mBgc.GetGroundH();
            }
        } else {
            sp5c += home.pos;

            if (param_1 == 2) {
                sp5c.y -= 600.0f;
            }
        }
    } else {
        if (mBallHosei.x || mBallHosei.z) {
            sp5c = field_0x664->current.pos + mBallHosei;
        }
    }

    sp5c.y = current.pos.y;
    f32 suu = cLib_addCalcPos(&current.pos, sp5c, 0.7f, 5.0f, 1.0f);
    sp50 = sp5c - current.pos;
    cLib_addCalcAngleS2(&mRollAngle, 0x400, 8, 0x40);

    if (mBallHosei.x || mBallHosei.z) {
        field_0x7af = 1;
    } else {
        field_0x7af = 0;
    }

    s16 angle;
    if (param_1 == 0) {
        angle = fopAcM_searchActorAngleY(this, field_0x664);
        Z2GetAudioMgr()->changeBgmStatus(suu + 100.0f);
    } else {
        angle = (s16)sp50.atan2sX_Z();
        Z2GetAudioMgr()->changeBgmStatus(99);
    }

    cLib_addCalcAngleS2(&shape_angle.y, angle, 8, mRollAngle);
    current.angle.y = shape_angle.y;

    if (NREG_S(0) != 0) {
        OS_REPORT("suu %f\n", suu);
        OS_REPORT("angle %x\n", angle);
        OS_REPORT("mRollAngle %x\n", mRollAngle);
        OS_REPORT("mBallHosei.x %f\n", mBallHosei.x);
        OS_REPORT("mBallHosei.z %f\n", mBallHosei.z);
        OS_REPORT("アングル %x\n", abs((s16)(shape_angle.y - angle))); // Angle %x\n
        OS_REPORT("\n");
    }

    if (param_1 != 1) {
        if (suu <= BREG_F(13) + 8.0f && abs((s16)(shape_angle.y - angle)) < 0x1000) {
            rv = true;
        }
    } else {
        if (suu <= BREG_F(14) + 100.0f && abs((s16)(shape_angle.y - angle)) < 0x2000) {
            rv = true;
        }
    }

    if (mBallBgLineCheck()) {
        if (mBgc.ChkWallHit() && mActionMode != 7) {
            mRollAngle = 0;
            setActionMode(5, 0);
            rv = false;
        }
    } else {
        if (mBgc.ChkWallHit() && suu <= BREG_F(15) + 170.0f) {
            field_0x7af = 1;
            rv = true;
        }
    }

    return rv;
}

struct eff_dt {
    /* 0x0 */ u16 field_0x0;
    /* 0x2 */ s16 field_0x2;
    /* 0x4 */ int field_0x4;
};

/* 8082A390-8082A4C8 001450 0138+00 1/1 0/0 0/0 .text            mStartParticleSet__8daE_ZH_cFv */
void daE_ZH_c::mStartParticleSet() {
    static eff_dt const START_EFF_DT[11] = {
        {0x8A62, 0, 7}, {0x8A63, 0, 7}, {0x8A64, 0, 9}, {0x8A65, 0, 9},
        {0x8A66, 0, 16}, {0x8A67, 0, 16}, {0x8A68, 0, 4}, {0x8A69, 0, 4}, 
        {0x8A6A, 0, 5}, {0x8A6B, 0, 5}, {0x8A6C, 0, 5},
    };

    for (int i = 0; i < 11; i++) {
        JPABaseEmitter* emitter = dComIfGp_particle_set(START_EFF_DT[i].field_0x0, &current.pos, NULL, NULL);
        if (emitter != NULL) {
            emitter->setGlobalSRTMatrix(mpModelMorf->getModel()->getAnmMtx(START_EFF_DT[i].field_0x4));
        }
    }

    fopAcM_OnStatus(this, 0);
    attention_info.flags |= 4;
    mSound.startCreatureSound(Z2SE_EN_ZH_START, 0, -1);
    setBck(0xE, 0, 3.0f, 1.0f);
}

/* 8082A4C8-8082A534 001588 006C+00 1/1 0/0 0/0 .text            mCutTypeCheck__8daE_ZH_cFv */
bool daE_ZH_c::mCutTypeCheck() {
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);

    if (player->getCutType() == daPy_py_c::CUT_TYPE_LARGE_JUMP || player->getCutType() == daPy_py_c::CUT_TYPE_LARGE_JUMP_FINISH ||
        player->getCutType() == daPy_py_c::CUT_TYPE_LARGE_TURN_LEFT || player->getCutType() == daPy_py_c::CUT_TYPE_LARGE_TURN_RIGHT ||
        player->getCutType() == daPy_py_c::CUT_TYPE_MORTAL_DRAW_A || player->getCutType() == daPy_py_c::CUT_TYPE_MORTAL_DRAW_B) {
        return true;
    }

    if (player->getCutType() == daPy_py_c::CUT_TYPE_HEAD_JUMP || player->getCutType() == daPy_py_c::CUT_TYPE_TWIRL) {
        return true;
    }

    return false;
}

/* 8082A534-8082A88C 0015F4 0358+00 1/1 0/0 0/0 .text            damage_check__8daE_ZH_cFv */
void daE_ZH_c::damage_check() {
    // NONMATCHING
    if ((field_0x7a8 == 0 && mActionMode != 2) && mActionMode != 9 && (l_HIO.dungeon_bit_check != 0 || strcmp(dComIfGp_getStartStageName(), "T_ENE02") == 0 ||
        ((bitSw != 16 || fopAcM_isSwitch(this, 20)) && (bitSw != 17 || fopAcM_isSwitch(this, 21))))) {
        if (field_0xa08.ChkTgHit() || field_0xb40.ChkTgHit()) {
            csXyz local_28;
            cXyz sp20;

            field_0x7a8 = 8;

            if (field_0xa08.ChkTgHit()) {
                mAtInfo.mpCollider = field_0xa08.GetTgHitObj();
                sp20.set(*field_0xa08.GetTgHitPosP());
            } else {
                mAtInfo.mpCollider = field_0xb40.GetTgHitObj();
                sp20.set(*field_0xb40.GetTgHitPosP());
            }

            local_28.x = 0;
            local_28.y = sp20.atan2sX_Z();
            local_28.z = 0;

            if (mActionMode != 11 && mActionMode != 10 && mActionMode != 3 && !mAtInfo.mpCollider->ChkAtType(AT_TYPE_SLINGSHOT) && mAnm != 0xB && mAnm != 0xE) {
                dComIfGp_setHitMark(1, this, &sp20, &local_28, NULL, 0);
                cc_at_check(this, &mAtInfo);
                health = 1000;
                field_0x560 = 1000;
                field_0xa08.ClrTgHit();
                field_0xb40.ClrTgHit();

                if (mActionMode == 1) {
                    setActionMode(3, 0);
                } else {
                    if (mCutTypeCheck()) {
                        field_0x78c = 2;
                    }

                    dComIfGs_offOneZoneSwitch(5, fopAcM_GetRoomNo(this));

                    if (field_0x664 != NULL) {
                        field_0x664->offCarryHookOK();
                    }

                    setActionMode(10, 0);
                }
            } else {
                dCcD_GObjInf* tgHitObj;
                if (!field_0xa08.ChkTgHit()) {
                    tgHitObj = (dCcD_GObjInf*)field_0xb40.GetTgHitObj();
                } else {
                    tgHitObj = (dCcD_GObjInf*)field_0xa08.GetTgHitObj();
                }

                dComIfGp_setHitMark(2, this, &sp20, &local_28, NULL, 0);

                if (!mAtInfo.mpCollider->ChkAtType(AT_TYPE_SLINGSHOT)) {
                    mSound.startCollisionSE(tgHitObj->getHitSeID(tgHitObj->GetAtSe(), 0), 0x28);
                } else {
                    mSound.startCollisionSE(Z2SE_HIT_PACHINKO, 0x2D);
                }
            }
        }

        mStts.Move();
    }
}

/* 8082A88C-8082ABDC 00194C 0350+00 1/1 0/0 0/0 .text            executeStartDemo__8daE_ZH_cFv */
void daE_ZH_c::executeStartDemo() {
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    cXyz sp48;
    f32 fVar1, fVar2;

    switch (mMoveMode) {
        case 0:
            if (startDemoCheck()) {
                dComIfGp_getEvent().startCheckSkipEdge(this);
                mDemoCamCenter.set(-30.0f, 650.0f, 1955.0f);
                mDemoCamEye.set(-25.0f, 720.0f, 2330.0f);
                field_0x794[0] = 60;
                mMoveMode++;
            }
            break;

        case 1:
            if (field_0x794[0] != 0) {
                if (field_0x794[0] == 30) {
                    mDemoCamCenter.set(-25.0f, 435.0f, -3355.0f);
                    mDemoCamEye.set(-30.0f, 505.0f, -3140.0f);
                }
                break;
            }

            sp48.set(-10.0f, 280.0f, -3835.0f);
            fVar1 = cLib_addCalcPos(&mDemoCamCenter, sp48, 0.7f, ZREG_F(10) + 10.0f, ZREG_F(11) + 2.0f);
            sp48.set(-15.0f, 350.0f, -3620.0f);
            fVar2 = cLib_addCalcPos(&mDemoCamEye, sp48, 0.7f, ZREG_F(10) + 10.0f, ZREG_F(11) + 2.0f);
            
            if (fVar1 > 4.0f || fVar2 > 4.0f) {
                break;
            }

            field_0x794[0] = 30;
            mMoveMode++;
            // fallthrough
        case 2:
            if (field_0x794[0] == 0) {
                mDemoCamCenter.set(-5.0f, 590.0f, 2130.0f);
                mDemoCamEye.set(-10.0f, 680.0f, 2340.0f);
                camera->mCamera.Reset(mDemoCamCenter, mDemoCamEye);
                camera->mCamera.Start();
                camera->mCamera.SetTrimSize(0);
                dComIfGp_event_reset();
                fopAcM_onSwitch(this, 0x12);
                fopAcM_OffStatus(this , fopAcM_STATUS_UNK_004000);
                setActionMode(1, 1);
            }
            break;
    }

    if (mMoveMode != 0 && mActionMode != 1) {
        if (dComIfGp_getEvent().checkSkipEdge()) {
            fopAcM_onSwitch(this, 0x12);
            dStage_changeScene(2, 0.0f, 0, fopAcM_GetRoomNo(this), 0, -1);
        }
    }

    if (mMoveMode != 0) {
        camera->mCamera.Set(mDemoCamCenter, mDemoCamEye);
    }
}

/* 8082ABDC-8082ACA8 001C9C 00CC+00 1/1 0/0 0/0 .text            executeWait__8daE_ZH_cFv */
void daE_ZH_c::executeWait() {
    if (field_0x664 != NULL) {
        field_0x664->current.pos.set(field_0x668);
    }

    switch (mMoveMode) {
        case 0:
            attention_info.distances[2] = 3;
            fopAcM_OnStatus(this, 0);
            attention_info.flags |= 4;
            setBck(0xF, 0, 3.0f, 1.0f);
            field_0x78c = 0;
            mMoveMode = 1;
            break;

        case 1:
            break;
    }

    cLib_addCalcPos(&current.pos, home.pos, 0.7f, 5.0f, 1.0f);
}

/* 8082ACA8-8082B284 001D68 05DC+00 2/1 0/0 0/0 .text            executeBallWait__8daE_ZH_cFv */
void daE_ZH_c::executeBallWait() {
    // NONMATCHING
    dBgS_LinChk lin_chk;
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    cXyz spa4, spb0;

    switch (mMoveMode) {
        case 0:
            cMtx_YrotS(*calc_mtx, shape_angle.y);
            spa4.x = 0.0f;
            spa4.y = 0.0f;
            spa4.z = WREG_F(1) + 2000.0f;
            MtxPosition(&spa4, &spb0);
            field_0x680 = spb0 + current.pos;
            lin_chk.onBackFlag();
            lin_chk.Set(&current.pos, &field_0x680, this);

            if (dComIfG_Bgsp().LineCross(&lin_chk)) {
                cMtx_YrotS(*calc_mtx, shape_angle.y);
                spa4.x = 0.0f;
                spa4.y = 0.0f;
                spa4.z = WREG_F(2) + 5.0f;
                MtxPosition(&spa4, &spb0);
                field_0x68c = lin_chk.GetCross() + spb0;

                cMtx_YrotS(*calc_mtx, shape_angle.y);
                spa4.x = 0.0f;
                spa4.y = 0.0f;
                spa4.z = -(WREG_F(3) + 300.0f);
                MtxPosition(&spa4, &spb0);
                current.pos = lin_chk.GetCross() + spb0;
                home.pos.x = current.pos.x;
                home.pos.z = current.pos.z;
            }

            setBck(0xD, 2, 20.0f, 1.0f);
            mMoveMode++;
            break;

        case 1:
            if (bitSw != 0xFF && fopAcM_isSwitch(this, bitSw) && mStartFlag != 0) {
                fopAcM_OnStatus(this, 0);
                attention_info.flags |= 4;
                attention_info.distances[2] = 3;
                mMoveMode = 10;
            }
            break;

        case 2:
            mGateOpen();
            mSound.startCreatureSoundLevel(Z2SE_EN_ZH_MV, 0, -1);

            if (field_0x77c < 254.0f) break;

            mMoveMode = 20;
            break;

        case 10:
            if (!startDemoCheck()) break;

            field_0x794[0] = 20;
            mMoveMode++;
            // fallthrough
        case 11:
            mSound.startCreatureSoundLevel(Z2SE_EN_ZH_MV, 0, -1);

            if (field_0x794[0] != 0 || field_0x77c < 254.0f) {
                break;
            }

            dCam_getBody()->StartBlure(100, this, 0.8f, 1.4f);
            dComIfGp_getEvent().startCheckSkipEdge(this);
            mMoveMode++;
            // fallthrough
        case 12:
            if (dComIfGp_getEvent().checkSkipEdge()) {
                dCam_getBody()->ResetBlure();
                field_0x794[2] = 2;
                camera->mCamera.Start();
                camera->mCamera.SetTrimSize(0);
                dComIfGp_event_reset();
                mMoveMode = 20;
            }
            // fallthrough
        case 20:
            mSound.startCreatureSoundLevel(Z2SE_EN_ZH_MV, 0, -1);
            cMtx_YrotS(*calc_mtx, shape_angle.y);
            spa4.x = 0.0f;
            spa4.y = 0.0f;
            spa4.z = WREG_F(3) + 200.0f;
            MtxPosition(&spa4, &spb0);
            spb0 += field_0x68c;

            if (cLib_addCalcPos(&current.pos, spb0, 0.8f, WREG_F(4) + 3.0f, WREG_F(5) + 1.0f) >= WREG_F(6) + 20.0f) {
                if (mMoveMode == 20) {
                    field_0x794[2] = 2;
                    setActionMode(4, 0);
                } else {
                    field_0x794[2] = 2;
                    camera->mCamera.Start();
                    camera->mCamera.SetTrimSize(0);
                    dComIfGp_event_reset();
                    setActionMode(4, 0);
                }
            }
            break;
    }

    if (mMoveMode >= 11 && mMoveMode <= 12 || mMoveMode == 20) {
        mGateOpen();
    }

    if (mMoveMode == 11) {
        cMtx_YrotS(*calc_mtx, shape_angle.y);
        spa4.x = ZREG_F(0);
        spa4.y = ZREG_F(1) + 20.0f;
        spa4.z = ZREG_F(2);
        MtxPosition(&spa4, &spb0);
        spb0 += field_0x68c;
        mDemoCamCenter.set(spb0);

        cMtx_YrotS(*calc_mtx, shape_angle.y);
        spa4.x = ZREG_F(3) + -200.0f;
        spa4.y = ZREG_F(4) + -200.0f;
        spa4.z = ZREG_F(5) + 600.0f;
        MtxPosition(&spa4, &spb0);
        spb0 += field_0x68c;
        mDemoCamEye.set(spb0);

        camera->mCamera.Set(mDemoCamCenter, mDemoCamEye, 62.0f, 0);
    }
}

/* 8082B284-8082B820 002344 059C+00 2/1 0/0 0/0 .text            executeOpenStart__8daE_ZH_cFv */
void daE_ZH_c::executeOpenStart() {
    // NONMATCHING
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    cXyz sp28, sp34;

    field_0xb40.OnCoSPrmBit(0x40);

    switch (mMoveMode) {
        case 0:
            setBck(0xB, 0, 3.0f, 1.0f);

            if (field_0x664 != NULL) {
                fopAcM_cancelCarryNow(field_0x664);

                if (bitSw != 0xFF) {
                    fopAcM_onSwitch(this, bitSw);
                }
            } else {
                setActionMode(8, 0);
                break;
            }
            
            field_0x794[0] = BREG_S(8) + 6 & 0xFF;
            mMoveMode = 1;
            break;

        case 1:
            if (!mpModelMorf->isStop()) {
                if (field_0x794[0] != 0) {
                    mColorSet(true, 42.5f, 8.333333f);
                    return;
                }

                mColorSet(false, 42.5f, 8.333333f);
                return;
            }

            if (mStartFlag == 0 && ((fopAcM_GetRoomNo(this) == 51 && !fopAcM_isSwitch(this, 0x5A)) || fopAcM_GetRoomNo(this) == 52 && !fopAcM_isSwitch(this, 0x5B))) {
                mMoveMode = 10;
                return;
            }

            field_0x794[0] = l_HIO.wait_time & 0xFF;
            mMoveMode = 2;
            // fallthrough
        case 2:
            if (field_0x794[0] == 0 && mColorSet(true, 10.0f, 10.0f)) {
                mStartParticleSet();
                mMoveMode = 3;
            }
            break;

        case 3:
            if (mpModelMorf->isStop()) {
                setActionMode(4, 0);
            }
            break;

        case 10:
            if (mStartFlag == 0) {
                return;
            }

            if (!startDemoCheck()) {
                return;
            }

            if (fopAcM_GetRoomNo(this) == 51) {
                fopAcM_onSwitch(this, 0x5A);
            } else {
                fopAcM_onSwitch(this, 0x5B);
            }

            mStartFlag = 2;
            field_0x794[0] = 20;
            mMoveMode++;
            // fallthrough
        case 11:
            mDemoCamCenter.set(-60.0f, 180.0f, -3875.0f);
            mDemoCamEye.set(-250.0f, 50.0f, -3515.0f);
            camera->mCamera.Set(mDemoCamCenter, mDemoCamEye, 40.0f, 0);

            if (field_0x794[0] == 0) {
                mMoveMode++;
            }
            break;

        case 12:
            if (mColorSet(true, 10.0f, 10.0f)) {
                mStartParticleSet();
                mMoveMode++;
            }
            break;

        case 13:
            if ((int)mpModelMorf->getFrame() < 84) {
                return;
            }

            if ((int)mpModelMorf->getFrame() == 84) {
                dCam_getBody()->StartBlure(50, this, 0.8f, 1.2f);
            }

            mDemoCamCenter.set(-60.0f, 180.0f, -3875.0f);
            sp34.set(-280.0f, 30.0f, -3460.0f);
            cLib_addCalcPos(&mDemoCamEye, sp34, 0.7f, 30.0f, 10.0f);
            camera->mCamera.Set(mDemoCamCenter, mDemoCamEye, 40.0f, 0);

            if (!mpModelMorf->isStop()) {
                return;
            }

            #ifdef DEBUG
            if (ZREG_S(0) == 0) {
                return;
            }
            #endif

            field_0x794[0] = 20;
            mMoveMode++;
            // fallthrough
        case 14:
            if (field_0x794[0] != 0) {
                break;
            }

            field_0x794[0] = 50;
            mMoveMode++;
            // fallthrough
        case 15:
            sp34.y = field_0x664->current.pos.y + 600.0f;
            if (mBgc.GetGroundH() != -1000000000.0f) {
                sp34.y = mBgc.GetGroundH() + 600.0f;
            }

            cLib_addCalc2(&current.pos.y, sp34.y, 0.7f, 10.0f);
            mSound.startCreatureSoundLevel(Z2SE_EN_ZH_MV, 0, -1);

            if (field_0x794[0] != 0) {
                break;
            }

            mMoveMode++;
            // fallthrough
        case 16:
            camera->mCamera.Start();
            camera->mCamera.SetTrimSize(0);
            dComIfGp_event_reset();
            setActionMode(4, 0);
            break;
    }
}

/* 8082B820-8082BA18 0028E0 01F8+00 1/1 0/0 0/0 .text            executeSearchMove__8daE_ZH_cFv */
void daE_ZH_c::executeSearchMove() {
    if (field_0x664 == NULL) {
        setActionMode(8, 0);
        return;
    }

    cXyz ato;

    ato.y = field_0x664->current.pos.y + 600.0f;
    
    if (mBgc.GetGroundH() != -1000000000.0f && mBgc.GetGroundH() + 500.0f > ato.y) {
        ato.y = mBgc.GetGroundH() + 500.0f;
    }

    if (mBgc.GetRoofHeight() != 1000000000.0f && ato.y > mBgc.GetRoofHeight()) {
        ato.y = mBgc.GetRoofHeight() - 150.0f;
    }

    switch (mMoveMode) {
        case 0:
            cLib_addCalc2(&current.pos.y, ato.y, 0.7f, 10.0f);

            if (XREG_S(0) != 0) {
                OS_REPORT("mBgc.GetRoofHeight() %f\n", mBgc.GetRoofHeight());
                OS_REPORT("ato.y %f\n", ato.y);
                OS_REPORT("mBgc.ChkRoofHit() %d\n", mBgc.ChkRoofHit());
            }

            if (fabsf(current.pos.y - ato.y) < 50.0f || mBgc.ChkRoofHit()) {
                if (mAnm != 0xD) {
                    setBck(0xD, 2, 20.0f, 1.0f);
                    field_0x794[0] = 20;
                }

                mRollAngle = 0;
                field_0xb40.OffCoSPrmBit(0x40);
                field_0x774 = BREG_F(5) + -150.0f;
                mMoveMode = 1;
            }
            break;

        case 1:
            if (fabsf(current.pos.y - ato.y) > 20.0f) {
                cLib_addCalc2(&current.pos.y, ato.y, 0.7f, 10.0f);
            }
            break;
    }

    mSound.startCreatureSoundLevel(Z2SE_EN_ZH_MV, 0, -1);

    if (mMoveMode != 0 && field_0x794[0] == 0 && mSearchMove(0)) {
        setActionMode(6, 0);
    }
}

/* 8082BA18-8082BE20 002AD8 0408+00 1/1 0/0 0/0 .text            executeBgHitSHMove__8daE_ZH_cFv */
void daE_ZH_c::executeBgHitSHMove() {
    if (field_0x664 == NULL) {
        setActionMode(8, 0);
        return;
    }

    dBgS_LinChk lin_chk;
    cXyz spa8, spb4, spc0;

    mBallBGCheck();

    if (NREG_S(0) != 0) {
        OS_REPORT("mRetrunStartLine.x %f\n", mRetrunStartLine.x);
        OS_REPORT("mRetrunEndLine.x %f\n". mRetrunEndLine.x);
        OS_REPORT("mRetrunStartLine.z %f\n", mRetrunStartLine.z);
        OS_REPORT("mRetrunEndLine.z %f\n", mRetrunEndLine.z);
        OS_REPORT("\n");
    }

    switch (mMoveMode) {
        case 0:
            field_0x6bc.zero();

            if (!mReturnLineMove()) break;

            field_0x6bc.set(current.pos);
            mMoveMode++;
            // fallthrough
        case 1:
            field_0x794[0] = cM_rndF(100.0f) + 100.0f;
            spa8 = field_0x6bc - current.pos;

            if (spa8.abs() < l_HIO.wandering_area) {
                field_0x7b2 = shape_angle.y + cM_rndFX(16384.0f);
            } else {
                field_0x794[0] = 20;
                field_0x7b2 = spa8.atan2sX_Z();
            }

            cMtx_YrotS(*calc_mtx, field_0x7b2);
            spb4.x = 0.0f;
            spb4.y = 0.0f;
            spb4.z = l_HIO.wandering_area - 50.0f;
            MtxPosition(&spb4, &spc0);
            spc0 += field_0x6bc;
            spb4 = spc0 - current.pos;
            field_0x7b2 = spb4.atan2sX_Z();
            mRollAngle = 0;
            mMoveMode++;
            // fallthrough
        case 2:
            if (field_0x794[0] == 0) {
                mMoveMode = 1;
            } else {
                cLib_addCalcAngleS2(&mRollAngle, 0x400, 8, 0x40);
                cLib_addCalcAngleS2(&current.angle.y, field_0x7b2, 8, mRollAngle);
                cLib_addCalcAngleS2(&shape_angle.y, current.angle.y, 8, mRollAngle);

                if (abs((s16)(shape_angle.y - field_0x7b2)) <= 0x200) {
                    cMtx_YrotS(*calc_mtx, shape_angle.y);
                    spb4.x = 0.0f;
                    spb4.y = 0.0f;
                    spb4.z = l_HIO.wandering_area - 50.0f;
                    MtxPosition(&spb4, &spc0);
                    spc0 += field_0x6bc;
                    cLib_addCalcPos(&current.pos, spc0, 0.7f, 5.0f, 1.0f);
                }
            }
            break;
    }

    if (!mBallBgLineCheck()) {
        setActionMode(4, 0);
    }
}

/* 8082BE20-8082C670 002EE0 0850+00 1/1 0/0 0/0 .text            executeCatchMove__8daE_ZH_cFv */
void daE_ZH_c::executeCatchMove() {
    // NONMATCHING
    if (field_0x664 == NULL) {
        setActionMode(8, 0);
        return;
    }

    cXyz sp3c, sp48;
    f32 fVar1 = 150.0f;

    sp48 = field_0x664->current.pos - current.pos;
    sp48.y = 0.0f;
    f32 fVar2 = sp48.abs();
    Z2GetAudioMgr()->changeBgmStatus(fVar2 + 100.0f);

    switch (mMoveMode) {
        case 0:
            field_0x794[0] = (int)JREG_S(1) + 11 & 0xFF;
            field_0x794[1] = (int)JREG_S(1) + 11 & 0xFF;
            field_0x7ad = (int)JREG_S(1) + 11;
            setBck(5, 0, 3.0f, 1.0f);
            mSound.startCreatureSound(Z2SE_EN_ZH_ATK_PRE, 0, -1);
            mMoveMode++;
            break;

        case 1:
            if (!mpModelMorf->isStop()) {
                if (field_0x794[0] != 0) {
                    mColorSet(false, 31.875f, 6.25f);

                    if (field_0x794[0] == 1) {
                        field_0x794[1] = field_0x7ad;
                    }
                } else {
                    if (field_0x794[1] != 0) {
                        mColorSet(true, 31.875f, 6.25f);
                        if (field_0x794[1] == 1) {
                            field_0x7ad -= 2;

                            if (field_0x7ad < 2) {
                                field_0x7ad = 2;
                            }

                            field_0x794[0] = field_0x7ad;
                        }
                    }
                }
            } else {
                field_0x764[0] = 255.0f;
                field_0x764[2] = 50.0f;
                field_0x760 = 40.0f;
                setBck(6, 0, 3.0f, 1.0f);
                mSound.startCreatureSound(Z2SE_EN_ZH_ATK, 0, -1);
                mMoveMode++;
            }
            break;

        case 2:
            gravity = -5.0f;
            if (mBgc.GetGroundH() + 100.0f > current.pos.y) {
                mMoveMode++;
            }
            break;

        case 3:
            if (mAnm == 7) {
                Z2GetAudioMgr()->changeBgmStatus(99);
            }

            if (mBgc.ChkGroundHit()) {
                gravity = 0.0f;
                speed.y = 0.0f;
                dComIfGp_getVibration().StartShock(5, 31, cXyz(0.0f, 1.0f, 0.0f));
                cXyz sp54(l_HIO.model_size, l_HIO.model_size, l_HIO.model_size);

                static u16 effId[4] = {0x8A6D, 0x8A6E, 0x8A6F, 0x8A70};
                for (int i = 0; i < 3; i++) {
                    field_0xddc[i] = dComIfGp_particle_set(field_0xddc[i], effId[i], &field_0x668, NULL, NULL);
                }

                field_0xde8 = dComIfGp_particle_setPolyColor(field_0xde8, effId[3], mBgc.m_gnd, &field_0x668, &tevStr, 
                                                             &shape_angle, &sp54, 0, NULL, -1, NULL);

                if (mAnm == 7) {
                    dComIfGs_onOneZoneSwitch(5, fopAcM_GetRoomNo(this));
                    mMoveMode++;
                } else {
                    field_0x794[0] = 30;
                    mMoveMode = 5;
                    setBck(7, 0, 3.0f, 1.0f);
                    mSound.startCreatureSound(Z2SE_EN_ZH_FALL, 0, -1);
                }
            }
            break;

        case 4:
            Z2GetAudioMgr()->changeBgmStatus(99);
            field_0x664->current.pos.set(field_0x668);
            field_0x794[0] = 30;
            setActionMode(7, 0);
            break;

        case 5:
            if (field_0x794[0] == 0) {
                setBck(0xD, 2, 10.0f, 1.0f);
                setActionMode(4, 0);
            }
            break;
    }

    if (mMoveMode == 2 || mMoveMode == 3) {
        sp48 = eyePos;
        sp48.y = current.pos.y;
        sp3c = field_0x664->current.pos - sp48;

        if (field_0x7af != 0) {
            fVar1 = 270.0f;
        }

        if (sp3c.abs() < fVar1) {
            if (mAnm != 7 && fopAcM_checkCarryNow(field_0x664)) {
                fopAcM_cancelCarryNow(field_0x664);
            } else if (mAnm != 7) {
                setBck(7, 0, 3.0f, 1.0f);
                mSound.startCreatureSound(Z2SE_EN_ZH_FALL, 0, -1);
                fopAcM_setCarryNow(field_0x664, 0);
                Z2GetAudioMgr()->changeBgmStatus(99);

                if (bitSw != 0xFF && fopAcM_isSwitch(this, bitSw)) {
                    fopAcM_offSwitch(this, bitSw);
                }
            } else {
                field_0x664->current.pos.set(field_0x668);
            }
        }
    }
}

/* 8082C670-8082CD34 003730 06C4+00 2/1 0/0 0/0 .text            executeCatchFlyMove__8daE_ZH_cFv */
void daE_ZH_c::executeCatchFlyMove() {
    // NONMATCHING
    if (field_0x664 == NULL) {
        setActionMode(8, 0);
        return;
    }

    if (field_0x664->checkRecover()) {
        dComIfGs_offOneZoneSwitch(5, fopAcM_GetRoomNo(this));
        field_0x664->offCarryHookOK();
        field_0x78c = 2;
        setActionMode(10, 0);
        return;
    }

    cXyz sp30, sp3c;

    if (mMoveMode != 5) {
        pmRoofPos = home.pos.y;

        if (arg0 == 0) {
            if (mBgc.GetGroundH() != -1000000000.0f) {
                pmRoofPos = mBgc.GetGroundH() + 600.0f;
            } else {
                pmRoofPos = home.pos.y + 600.0f;
            }
        }

        if (mBgc.GetRoofHeight() != 1000000000.0f && pmRoofPos > mBgc.GetRoofHeight()) {
            pmRoofPos = mBgc.GetRoofHeight() - 150.0f;
        }

        f32 fVar1 = l_HIO.ascent_rate;

        if (mMoveMode > 1) {
            fVar1 = l_HIO.ascent_rate * 0.1f;
        }

        cLib_addCalc2(&current.pos.y, pmRoofPos, 0.7f, fVar1);
    }

    switch (mMoveMode) {
        case 0:
            field_0x664->onCarryHookOK();
            field_0xa08.SetTgType(0xd84820ba);
            field_0xb40.SetTgType(0xd84820ba);

            if (field_0x794[0] != 0) break;

            gravity = 0.0f;
            speed.y = 0.0f;
            setBck(10, 2, 20.0f, 1.0f);
            mMoveMode++;
            // fallthrough
        case 1:
            if (XREG_S(0) != 0) {
                OS_REPORT("mBgc.GetRoofHeight() %f\n", mBgc.GetRoofHeight());
                OS_REPORT("pmRoofPos %f\n", pmRoofPos);
                OS_REPORT("mBgc.ChkRoofHit() %d\n", mBgc.ChkRoofHit());
            }

            if (current.pos.y >= pmRoofPos - 20.0f) {
                if (arg0 != 0) {
                    mRollAngle = 0;
                    field_0x794[0] = 20;
                    mReturnLineMove();
                    mMoveMode = 10;
                } else {
                    mRollAngle = 0;
                    field_0x794[0] = 20;
                    mMoveMode++;
                }
            }
            break;

        case 2:
            if (field_0x794[0] != 0 || !mReturnLineMove()) break;

            mMoveMode++;
            // fallthrough
        case 3:
            field_0x774 = BREG_F(7);

            if (mSearchMove(1)) {
                field_0x760 = 5.0f;
                setBck(0xB, 0, 30.0f, -1.0f);
                mMoveMode++;
            }
            break;

        case 4:
            cMtx_YrotS(*calc_mtx, current.angle.y);
            sp30.x = 0.0f;
            sp30.y = 0.0f;
            sp30.z = field_0x774;
            MtxPosition(&sp30, &sp3c);
            sp3c += home.pos;
            cLib_addCalcPos(&current.pos, sp3c, 0.8f, 10.0f, 5.0f);
            cLib_addCalcAngleS2(&shape_angle.y, home.angle.y, 4, BREG_S(5) + 0x400);
            current.angle.y = shape_angle.y;

            if (mBgc.ChkGroundHit()) {
                dComIfGp_getVibration().StartShock(5, 31, cXyz(0.0f, 1.0f, 0.0f));
                field_0x760 = 0.0f;
                current.angle.y = home.angle.y;
                current.pos.set(home.pos);
                field_0x774 = BREG_F(5) + -150.0f;
                mSound.startCreatureSound(JA_SE_OBJ_BLOCK_FALL_NORMAL, 0, -1);
                mMoveMode++;
            }
            break;

        case 5:
            if (!mColorSet(false, 5.0f, 5.0f)) break;
            
            setActionMode(1, 0);
            // fallthrough
        case 12:
            fopAcM_OffStatus(this, 0);
            attention_info.flags &= 0xFFFFFFFB;
            attention_info.distances[2] = 0;

            for (int i = 0; i < 3; i++) {
                field_0x764[i] = 0.0f;
            }

            dComIfGs_offOneZoneSwitch(5, fopAcM_GetRoomNo(this));

            if (bitSw == 10) {
                dComIfGs_offEventBit(0x2640);
                dComIfGs_offEventBit(0x2610);
                dComIfGs_offEventBit(0x2604);
                dComIfGs_offEventBit(0x2601);
                dComIfGs_offEventBit(0x2740);
            } else {
                dComIfGs_offEventBit(0x2620);
                dComIfGs_offEventBit(0x2608);
                dComIfGs_offEventBit(0x2602);
                dComIfGs_offEventBit(0x2780);
                dComIfGs_offEventBit(0x2720);
            }

            field_0xa08.SetTgType(0xd84860ba);
            field_0xb40.SetTgType(0xd84860ba);
            field_0x664->offCarryHookOK();

            if (mMoveMode == 12) {
                fopAcM_delete(field_0x664);
                setActionMode(11, 10);
            }
            break;

        case 16:
            if (mReturnLineMove()) break;

            mRollAngle = 0;
            mMoveMode++;
            // fallthrough
        case 11:
            field_0x774 = 0.0f;
            mSearchMove(2);
            sp3c = field_0x68c - current.pos;

            if (sp3c.abs() < 400.0f) {
                dComIfGs_onOneZoneSwitch(6, fopAcM_GetRoomNo(this));
                dComIfGs_onSaveDunSwitch(0x28);
                setActionMode(9, 0);
            }
    }

    field_0x664->current.pos.set(field_0x668);
}

/* 8082CD34-8082D154 003DF4 0420+00 1/1 0/0 0/0 .text            executeReturnDemo__8daE_ZH_cFv */
void daE_ZH_c::executeReturnDemo() {
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    cXyz sp1c, sp28;
    s16 sVar1;

    switch (mMoveMode) {
        case 0:
            sVar1 = home.angle.y + 0x8000;
            current.angle.y = sVar1;
            shape_angle.y = sVar1;
            cMtx_YrotS(*calc_mtx, shape_angle.y + 0x8000);
            sp1c.x = ZREG_F(0);
            sp1c.y = ZREG_F(1);
            sp1c.z = ZREG_F(2) + 200.0f;
            MtxPosition(&sp1c, &sp28);
            current.pos = field_0x68c + sp28;
            field_0x794[2] = 0;

            if (!startDemoCheck()) break;

            mMoveMode++;
            // fallthrough
        case 1:
            cMtx_YrotS(*calc_mtx, shape_angle.y + 0x8000);
            sp1c.x = ZREG_F(0);
            sp1c.y = ZREG_F(1) + 20.0f;
            sp1c.z = ZREG_F(2);
            MtxPosition(&sp1c, &sp28);
            sp28 += field_0x68c;
            mDemoCamCenter.set(sp28);

            cMtx_YrotS(*calc_mtx, shape_angle.y + 0x8000);
            sp1c.x = ZREG_F(3) + 300.0f;
            sp1c.y = ZREG_F(4) + 200.0f;
            sp1c.z = ZREG_F(5) + 420.0f;
            MtxPosition(&sp1c, &sp28);
            sp28 += field_0x68c;
            mDemoCamEye.set(sp28);

            camera->mCamera.Set(mDemoCamCenter, mDemoCamEye, 62.0f, 0);

            cLib_addCalcPos(&current.pos, home.pos, 0.8f, WREG_F(4) + 3.0f, WREG_F(5) + 1.0f);
            sp28 = field_0x68c - current.pos;

            if (sp28.abs() > 5.0f || ZREG_S(0) != 0) break;

            field_0x794[0] = 70;
            mMoveMode++;
            // fallthrough
        case 2:
            cLib_addCalcPos(&current.pos, home.pos, 0.8f, WREG_F(4) + 3.0f, WREG_F(5) + 1.0f);

            if (field_0x794[0] == 0) {
                field_0x794[2] = 3;
                if (field_0x77c > 2.0f) {
                    break;
                }

                camera->mCamera.Start();
                camera->mCamera.SetTrimSize(0);
                dComIfGp_event_reset();
                setActionMode(7, 12);
            }
            break;
    }

    mGateOpen();

    if (field_0x664 != NULL) {
        field_0x664->current.pos.set(field_0x668);
    }
}

/* 8082D154-8082D2F0 004214 019C+00 1/1 0/0 0/0 .text            executeFlyDelete__8daE_ZH_cFv */
void daE_ZH_c::executeFlyDelete() {
    switch (mMoveMode) {
        case 0:
            fopAcM_OffStatus(this, 0);
            attention_info.flags &= 0xFFFFFFFB;
            attention_info.distances[2] = 0;

            if (bitSw != 0xFF && fopAcM_isSwitch(this, bitSw)) {
                fopAcM_offSwitch(this, bitSw);
            }

            gravity = 0.0f;
            speed.y = 0.0f;

            if (mAnm != 0xD) {
                setBck(0xD, 2, 10.0f, 1.0f);
            }

            mMoveMode = 1;
            break;

        case 1:
            if (fopAcM_rc_c::roofCheck(&current.pos)) {
                cLib_addCalc2(&current.pos.y, fopAcM_rc_c::getRoofY() + 200.0f, 0.7f, 10.0f);

                if (fabsf(current.pos.y - (fopAcM_rc_c::getRoofY() + 200.0f)) < 20.0f) {
                    fopAcM_OffStatus(this, 0);
                    attention_info.flags &= 0xFFFFFFFB;
                    attention_info.distances[2] = 0;

                    if (arg0 == 0) {
                        setActionMode(1, 0);
                    } else {
                        setActionMode(2, 0);
                    }
                }
            }
            break;
    }
}

/* 8082D2F0-8082D97C 0043B0 068C+00 1/1 0/0 0/0 .text            executeDamage__8daE_ZH_cFv */
void daE_ZH_c::executeDamage() {
    cXyz sp2c, sp38;

    switch (mMoveMode) {
        case 0:
            gravity = 0.0f;
            speed.y = 0.0f;
            field_0xa08.SetTgType(0xd84860ba);
            field_0xb40.SetTgType(0xd84860ba);

            if (field_0x78c == 2) {
                setBck(9, 0, 3.0f, 1.0f);
                mSound.startCreatureSound(Z2SE_EN_ZH_DROP, 0, -1);

                if (current.pos.y < mBgc.GetGroundH() + 400.0f) {
                    speedF = -40.0f;
                }
            } else {
                setBck(8, 0, 3.0f, 1.0f);
                mSound.startCreatureSound(Z2SE_EN_ZH_DMG, 0, -1);
            }

            field_0x794[0] = (int)BREG_S(8) + 8 & 0xFF;
            mMoveMode++;
            return;

        case 1:
            if (field_0x78c == 2) {
                if (field_0x664 != NULL) {
                    if ((int)mpModelMorf->getFrame() == 1 && bitSw != 0xFF && !fopAcM_isSwitch(this, bitSw)) {
                        fopAcM_cancelCarryNow(field_0x664);
                        fopAcM_onSwitch(this, bitSw);
                    }
                }

                if ((int)mpModelMorf->getFrame() >= 1) {
                    if ((int)mpModelMorf->getFrame() <= 6 && current.pos.y < mBgc.GetGroundH() + 300.0f) {
                        cLib_addCalc2(&current.pos.y, mBgc.GetGroundH() + 300.0f, 0.7f, 30.0f);
                    }
                }

                cLib_addCalc0(&speedF, 0.8f, 4.0f);
            } else if (bitSw != 0xFF && !fopAcM_isSwitch(this, bitSw) && field_0x664 != NULL) {
                field_0x664->current.pos.set(field_0x668);
            }

            if (!mpModelMorf->isStop()) {
                if (field_0x794[0] != 0) {
                    mColorSet(false, 31.875f, 6.25f);
                    return;
                }

                mColorSet(true, 31.875f, 6.25f);
                return;
            }

            if (field_0x664 != NULL) {
                field_0x78c++;

                if (field_0x78c < 3) {
                    if (bitSw != 0xFF && !fopAcM_isSwitch(this, bitSw)) {
                        field_0x794[0] = 0;
                        setActionMode(7, 0);
                        return;
                    }

                    gravity = 0.0f;
                    speed.y = 0.0f;
                    setActionMode(4, 0);
                    return;
                }

                setBck(0xC, 2, 3.0f, 1.0f);
                field_0x794[0] = l_HIO.piyori_time;
                mMoveMode++;
            } else {
                field_0x78c = 0;
                setActionMode(8, 0);
            }
            return;

        case 2:
            if (field_0x794[0] != 0) {
                if (field_0x794[0] > l_HIO.piyori_time / 3.0f) {
                    mColorSet(false, 10.0f, 10.0f);
                    return;
                }

                if (field_0x794[0] == l_HIO.piyori_time / 3.0f) {
                    mSound.startCreatureSound(Z2SE_EN_ZH_BLINK, 0, -1);
                }

                if ((field_0x794[0] & 16) == 0) {
                    mColorSet(true, 10.0f, 10.0f);
                    return;
                }

                mColorSet(false, 10.0f, 10.0f);
                return;
            }

            mColorSet(true, 10.0f, 10.0f);

            if (!mColorSet(true, 10.0f, 10.0f)) {
                return;
            }

            mMoveMode++;
            // fallthrough
        case 3:
            cLib_addCalc2(&field_0x764[0], 255.0f, 0.8f, 10.0f);
            cLib_addCalc2(&field_0x764[1], 255.0f, 0.8f, 10.0f);
            cLib_addCalc2(&field_0x764[2], 255.0f, 0.8f, 10.0f);

            if (field_0x764[1] > 254.0f) {
                return;
            }

            field_0x764[2] = 255.0f;
            field_0x764[1] = 255.0f;
            field_0x764[0] = 255.0f;
            setBck(0x10, 0, 3.0f, 1.0f);
            mSound.startCreatureSound(Z2SE_EN_ZH_WAKEUP, 0, -1);
            mMoveMode++;
            // fallthrough
        case 4:
            if (!mpModelMorf->isStop()) {
                cLib_addCalc2(&field_0x764[0], 255.0f, 0.8f, 10.0f);
                cLib_addCalc0(&field_0x764[1], 0.8f, 10.0f);
                cLib_addCalc2(&field_0x764[2], 50.0f, 0.8f, 10.0f);
                return;
            }

            mMoveMode++;
            // fallthrough
        case 5:
            cLib_addCalc2(&field_0x764[0], 255.0f, 0.8f, 10.0f);
            cLib_addCalc0(&field_0x764[1], 0.8f, 10.0f);
            cLib_addCalc2(&field_0x764[2], 50.0f, 0.8f, 10.0f);

            if (field_0x764[1] > 2.0f) {
                return;
            }

            field_0x764[0] = 255.0f;
            field_0x764[1] = 0.0f;
            field_0x764[2] = 50.0f;
            field_0x78c = 0;
            setActionMode(4, 0);
    }
}

/* 8082D97C-8082D9B0 004A3C 0034+00 1/1 0/0 0/0 .text            executeDeadStop__8daE_ZH_cFv */
void daE_ZH_c::executeDeadStop() {
    switch (mMoveMode) {
        case 0:
            mMoveMode++;
            break;

        case 1:
            break;

        case 10:
            break;
    }
}

/* 8082D9B0-8082DB64 004A70 01B4+00 1/1 0/0 0/0 .text            executeEntryCheck__8daE_ZH_cFv */
void daE_ZH_c::executeEntryCheck() {
    daObjCarry_c* s_Ball = (daObjCarry_c *)fpcM_Search(s_BallSearch_Tag, this);
    if (s_Ball != NULL) {
        cXyz sp1c;

        switch (mMoveMode) {
            case 0:
                mMoveMode++;
                // fallthrough
            case 1:
                sp1c = s_Ball->current.pos - current.pos;
                sp1c.y = 0.0f;

                if (sp1c.abs() < field_0x778 && mStartFlag == 0) {
                    mStartFlag = 1;
                }
                break;
        }
    }
}

/* 8082DB64-8082DB84 004C24 0020+00 1/1 0/0 0/0 .text            tagAction__8daE_ZH_cFv */
void daE_ZH_c::tagAction() {
    executeEntryCheck();
}

/* 8082DB84-8082DE18 004C44 0294+00 2/1 0/0 0/0 .text            action__8daE_ZH_cFv */
void daE_ZH_c::action() {
    // NONMATCHING
    field_0x664 = (daObjCarry_c*)fpcM_Search(s_BallSearch, this);
    damage_check();
    mBallHosei.zero();

    for (int i = 0; i < 8; i++) {
        field_0x6f8[i].zero();
    }

    if (field_0x794[2] == 2) {
        mGateOpen();
    }

    switch (mActionMode) {
        case ACTION_EXECUTE_START_DEMO:
            executeStartDemo();
            break;

        case ACTION_EXECUTE_WAIT:
            executeWait();
            break;

        case ACTION_EXECUTE_BALL_WAIT:
            executeBallWait();
            break;

        case ACTION_EXECUTE_OPEN_START:
            executeOpenStart();
            break;

        case ACTION_EXECUTE_SEARCH_MOVE:
            executeSearchMove();
            break;

        case ACTION_EXECUTE_BG_HIT_SH_MOVE:
            executeBgHitSHMove();
            break;

        case ACTION_EXECUTE_CATCH_MOVE:
            executeCatchMove();
            break;

        case ACTION_EXECUTE_CATCH_FLY_MOVE:
            executeCatchFlyMove();
            break;

        case ACTION_EXECUTE_FLY_DELETE:
            executeFlyDelete();
            break;

        case ACTION_EXECUTE_RETURN_DEMO:
            executeReturnDemo();
            break;

        case ACTION_EXECUTE_DAMAGE:
            executeDamage();
            break;

        case ACTION_EXECUTE_DEAD_STOP:
            executeDeadStop();
            break;
    }

    if (mActionMode != ACTION_EXECUTE_SEARCH_MOVE && mActionMode != ACTION_EXECUTE_CATCH_MOVE && mActionMode != ACTION_EXECUTE_CATCH_FLY_MOVE) {
        Z2GetAudioMgr()->changeBgmStatus(99);
    }
    
    if (NREG_S(0) != 0) {
        OS_REPORT("\n\n\n");
        OS_REPORT("mActionMode %d\n", mActionMode);
        OS_REPORT("mMoveMode %d\n", mMoveMode);
        OS_REPORT("\n\n\n");
    }

    if ((mAnm == 0xD && mActionMode != ACTION_EXECUTE_BALL_WAIT || mAnm == 10) && mActionMode != ACTION_EXECUTE_DEAD_STOP) {
        mSound.startCreatureSoundLevel(Z2SE_EN_ZH_MV, 0, -1);
    }

    if (mAnm == 0xC) {
        mSound.startCreatureSoundLevel(Z2SE_EN_ZH_PIYO, 0, -1);
    }

    fopAcM_posMoveF(this, mStts.GetCCMoveP());

    if (mActionMode != ACTION_EXECUTE_BALL_WAIT) {
        if (mActionMode != ACTION_EXECUTE_BALL_WAIT && mActionMode != ACTION_EXECUTE_RETURN_DEMO && mActionMode != ACTION_EXECUTE_FLY_DELETE) {
            mBgc.SetRoofCrrHeight(BREG_F(2) + 100.0f);
            mAcchCir.SetWall(100.0f, BREG_F(1) + 150.0f);
            mBgc.SetGroundUpY(field_0x760 + BREG_F(0));
            mBgc.CrrPos(dComIfG_Bgsp());
        }

        mpBtkAnm->play();
        mpModelMorf->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    }
}

/* 8082DE18-8082DF44 004ED8 012C+00 1/1 0/0 0/0 .text            mtx_set__8daE_ZH_cFv */
void daE_ZH_c::mtx_set() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::transM(0.0f, 0.0f, BREG_F(4) + -100.0f);
    mDoMtx_stack_c::scaleM(l_HIO.model_size, l_HIO.model_size, l_HIO.model_size);
    J3DModel* model = mpModelMorf->getModel();
    model->setBaseTRMtx(mDoMtx_stack_c::get());
    mpModelMorf->modelCalc();
    mDoMtx_stack_c::copy(model->getAnmMtx(5));

    cXyz sp28;
    sp28.set(JREG_F(0) + 20.0f, JREG_F(1) + -105.0f, JREG_F(2));
    mDoMtx_stack_c::multVec(&sp28, &field_0x668);

    if (arg0 == 1) {
        mDoMtx_stack_c::transS(field_0x68c.x, field_0x68c.y, field_0x68c.z);
        mDoMtx_stack_c::scaleM(l_HIO.model_size, l_HIO.model_size, l_HIO.model_size);
        field_0x5b8->setBaseTRMtx(mDoMtx_stack_c::get());
    }
}

/* 8082DF44-8082E2FC 005004 03B8+00 1/1 0/0 0/0 .text            cc_set__8daE_ZH_cFv */
void daE_ZH_c::cc_set() {
    cXyz sp24, sp30;
    J3DModel* model = mpModelMorf->getModel();

    mDoMtx_stack_c::copy(model->getAnmMtx(0));

    if (mActionMode == ACTION_EXECUTE_WAIT) {
        sp24.set(200.0f, -100.0f, 0.0f);
    } else if (mActionMode == ACTION_EXECUTE_OPEN_START || mAnm == 0xB || mAnm == 0xE) {
        sp24.set(250.0f, 0.0f, 0.0f);
    } else {
        sp24.set(150.0f, 50.0f, 0.0f);
    }

    mDoMtx_stack_c::multVec(&sp24, &eyePos);
    attention_info.position = eyePos;
    attention_info.position.y += 25.0f;

    if (mActionMode == ACTION_EXECUTE_CATCH_FLY_MOVE && field_0x664 != NULL) {
        cXyz sp3c, sp48;

        cMtx_YrotS(*calc_mtx, shape_angle.y);
        sp3c.x = 0.0f;
        sp3c.y = 0.0f;
        sp3c.z = ZREG_F(17) + 30.0f;
        MtxPosition(&sp3c, &sp48);
        sp48 += field_0x664->current.pos;
        eyePos.set(sp48);
        attention_info.position = eyePos;
        attention_info.position.y += ZREG_F(18) + 100.0f;
    }

    mDoMtx_stack_c::copy(model->getAnmMtx(0));

    if (mActionMode == ACTION_EXECUTE_WAIT || mActionMode == ACTION_EXECUTE_DEAD_STOP || field_0x78c >= 3) {
        sp24.set(140.0f, -90.0f, 0.0f);
        mDoMtx_stack_c::multVec(&sp24, &sp30);
        field_0xa08.SetC(sp30);
        field_0xa08.SetR(120.0f);
        dComIfG_Ccsp()->Set(&field_0xa08);
    } else if (mActionMode == ACTION_EXECUTE_OPEN_START || mAnm == 0xB || mAnm == 0xE) {
        mDoMtx_stack_c::multVecZero(&sp30);
        field_0xb40.SetC(sp30);
        field_0xb40.SetH(250.0f);
        field_0xb40.SetR(55.0f);
        dComIfG_Ccsp()->Set(&field_0xb40);
    } else {
        sp24.set(170.0f, -20.0f, 0.0f);
        mDoMtx_stack_c::multVec(&sp24, &sp30);
        field_0xb40.SetC(sp30);
        field_0xb40.SetH(100.0f);
        field_0xb40.SetR(170.0f);
        dComIfG_Ccsp()->Set(&field_0xb40);
    }

    if (mActionMode == ACTION_EXECUTE_WAIT || mActionMode == ACTION_EXECUTE_OPEN_START) {
        return;
    }

    sp24.set(BREG_F(10) + 170.0f, BREG_F(11) + -20.0f, BREG_F(12));
    mDoMtx_stack_c::multVec(&sp24, &sp30);
    field_0xc7c.SetC(sp30);
    field_0xc7c.SetH(BREG_F(13) + 100.0f);

    if (field_0x7af != 0) {
        field_0xc7c.SetR(BREG_F(14) + 150.0f);
    } else {
        field_0xc7c.SetR(BREG_F(14) + 130.0f);
    }

    if (gravity) {
        dComIfG_Ccsp()->Set(&field_0xc7c);
    }
}

/* 8082E2FC-8082E3C0 0053BC 00C4+00 1/1 0/0 0/0 .text            execute__8daE_ZH_cFv */
int daE_ZH_c::execute() {
    if (field_0x7ae != 0) {
        return 1;
    }

    for (int i = 0; i < 2; i++) {
        if (field_0x794[i]) {
            field_0x794[i]--;
        }
    }

    if (field_0x7a8 != 0) {
        field_0x7a8--;
    }

    if (field_0x7a0 != 0) {
        field_0x7a0--;
    }

    if (arg0 == 2) {
        tagAction();
    } else {
        action();
        mtx_set();
        cc_set();
    }

    return 1;
}

/* 8082E3C0-8082E3E0 005480 0020+00 2/1 0/0 0/0 .text            daE_ZH_Execute__FP8daE_ZH_c */
static int daE_ZH_Execute(daE_ZH_c* i_this) {
    return i_this->execute();
}

/* 8082E3E0-8082E3E8 0054A0 0008+00 1/0 0/0 0/0 .text            daE_ZH_IsDelete__FP8daE_ZH_c */
static int daE_ZH_IsDelete(daE_ZH_c* i_this) {
    return 1;
}

/* 8082E3E8-8082E4C4 0054A8 00DC+00 1/1 0/0 0/0 .text            _delete__8daE_ZH_cFv */
int daE_ZH_c::_delete() {
    dComIfG_resDelete(&mPhase, "E_ZH");

    if (arg0 == 2) {
        return 1;
    }

    if (mActionMode == ACTION_EXECUTE_CATCH_FLY_MOVE && bitSw != 0xFF && !fopAcM_isSwitch(this, bitSw)) {
        daObjCarry_c* s_Ball = (daObjCarry_c*)fpcM_Search(s_BallSearch, this);
        if (s_Ball != NULL) {
            s_Ball->reset();
        }
    }

    if (field_0xe04 != 0) {
        l_initHIO = 0;
    }

    if (heap != NULL) {
        mSound.deleteObject();
    }

    return 1;
}

/* 8082E4C4-8082E4E4 005584 0020+00 1/0 0/0 0/0 .text            daE_ZH_Delete__FP8daE_ZH_c */
static int daE_ZH_Delete(daE_ZH_c* i_this) {
    return i_this->_delete();
}

/* 8082E4E4-8082E6C8 0055A4 01E4+00 1/1 0/0 0/0 .text            CreateHeap__8daE_ZH_cFv */
void daE_ZH_c::CreateHeap() {
    // NONMATCHING
}

/* 8082E6C8-8082E710 005788 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 8082E710-8082E730 0057D0 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 8082E730-8082ECEC 0057F0 05BC+00 1/1 0/0 0/0 .text            create__8daE_ZH_cFv */
cPhs__Step daE_ZH_c::create() {
    // NONMATCHING
    fopAcM_SetupActor(this, daE_ZH_c);

    cPhs__Step phase = (cPhs__Step)dComIfG_resLoad(&mPhase, "E_ZH");
    if (phase == cPhs_COMPLEATE_e) {
        OS_REPORT("E_ZH PARAM %x\n", fopAcM_GetParam(this));
        arg0 = fopAcM_GetParam(this);
        bitSw = fopAcM_GetParam(this) >> 8;
        bitSwEnd = fopAcM_GetParam(this) >> 16;
        field_0x7ac = fopAcM_GetParam(this) >> 24;

        if (bitSwEnd != 0xFF && fopAcM_isSwitch(this, bitSwEnd)) {
            return cPhs_ERROR_e;
        }

        if (arg0 == 0xFF) {
            arg0 = 0;
        }

        OS_REPORT("arg0 %d\n", arg0);
        OS_REPORT("bitSw %d\n", bitSw);
        OS_REPORT("bitSwEnd %d\n", bitSwEnd);

        if (arg0 == 2) {
            fopAcM_OffStatus(this, 0);
            attention_info.flags &= 0xFFFFFFFB;
            attention_info.distances[2] = 0;
            fopAcM_SetGroup(this, 0);
            fopAcM_SetMin(this, -2000.0f, -2000.0f, -2000.0f);
            fopAcM_SetMax(this, 2000.0f, 2000.0f, 2000.0f);

            if (field_0x7ac == 0xFF || field_0x7ac == 0) {
                field_0x778 = 100.0f;
            } else {
                field_0x778 = field_0x7ac * 10.0f;
            }

            field_0x664 = (daObjCarry_c*)fpcM_Search(s_BallSearch_Tag, this);
            if (field_0x664 == NULL) {
                return cPhs_ERROR_e;
            }

            setActionMode(12, 0);
        } else {
            u32 i_size = 0x17C0;
            if (arg0 == 1) {
                i_size = 0x2500;
            }

            if (!fopAcM_entrySolidHeap(this, useHeapInit, i_size)) {
                return cPhs_ERROR_e;
            }

            if (l_initHIO == 0) {
                l_initHIO = 1;
                field_0xe04 = 1;
                l_HIO.field_0x4 = -1;
            }

            attention_info.flags = 4;
            fopAcM_SetMtx(this, mpModelMorf->getModel()->getBaseTRMtx());
            fopAcM_SetMin(this, -200000.0f, -200000.0f, -200000.0f);
            fopAcM_SetMax(this, 200000.0f, 200000.0f, 200000.0f);
            mBgc.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, fopAcM_GetSpeed_p(this), NULL, NULL);
            mBgc.ClrRoofNone();
            mBgc.SetRoofCrrHeight(100.0f);
            mAcchCir.SetWall(100.0f, 150.0f);
            mStts.Init(0xFF, 0, this);
            health = 1000;
            field_0x560 = 1000;
            field_0x774 = -150.0f;

            field_0xa08.Set(cc_zhSph_src);
            field_0xa08.SetStts(&mStts);
            field_0xb40.Set(cc_zhCyl_src);
            field_0xb40.SetStts(&mStts);
            field_0xc7c.Set(cc_zhCyl_at_src);
            field_0xc7c.SetStts(&mStts);

            mSound.init(&current.pos, &eyePos, 3, 1);
            mAtInfo.mpSound = &mSound;
            mAtInfo.mPowerType = 1;
            gravity = 0.0f;

            for (int i = 0; i < 3; i++) {
                field_0x764[i] = 0.0f;
            }

            shape_angle.z = 0;
            shape_angle.x = 0;
            attention_info.distances[2] = 3;
            fopAcM_OffStatus(this, 0);
            attention_info.flags &= 0xFFFFFFFB;

            for (int i = 0; i < 8; i++) {
                field_0x758[i] = 0xFF;
            }

            for (int i = 0; i < 3; i++) {
                field_0x6c8[i].set(current.pos);
            }

            field_0xa08.OnTgNoHitMark();
            field_0xb40.OnTgNoHitMark();
            onWolfNoLock();

            if (arg0 == 0) {
                field_0x664 = (daObjCarry_c*)fpcM_Search(s_BallSearch, this);
                if (field_0x664 != NULL) {
                    if (!fopAcM_checkCarryNow(field_0x664)) {
                        field_0x664->current.pos.set(current.pos);
                        field_0x664->current.pos.y += 100.0f;
                        field_0x664->current.pos.z += 90.0f;
                        fopAcM_setCarryNow(field_0x664, 0);
                        mStartFlag = 0;

                        setBck(0xF, 0, 3.0f, 1.0f);
                        field_0x78c = 0;
                        attention_info.distances[2] = 3;
                        fopAcM_OffStatus(this, 0);
                        attention_info.flags &= 0xFFFFFFFB;

                        if (fopAcM_GetRoomNo(this) == 0x33 && !fopAcM_isSwitch(this, 18)) {
                            fopAcM_OnStatus(this, fopAcM_STATUS_UNK_004000);
                            setActionMode(0, 0);
                        } else {
                            setActionMode(1, 1);
                        }
                    } else {
                        setActionMode(4, 0);
                    }
                } else {
                    setActionMode(11, 0);
                }
            } else {
                attention_info.distances[2] = 0;
                field_0x764[0] = 255.0f;
                field_0x764[2] = 50.0f;
                mStartFlag = 0;
                setActionMode(2, 0);
            }
        }

        daE_ZH_Execute(this);

        if (arg0 == 0 && field_0x664 != NULL) {
            field_0x664->current.pos.set(field_0x668);
        }
    }

    return phase;
}

/* 8082ECEC-8082EEE0 005DAC 01F4+00 1/1 0/0 0/0 .text            __ct__8daE_ZH_cFv */
daE_ZH_c::daE_ZH_c() {
    // NONMATCHING
}

/* 8082EEE0-8082EF28 005FA0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 8082EF28-8082EF70 005FE8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 8082EF70-8082EFB8 006030 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 8082EFB8-8082F014 006078 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 8082F014-8082F084 0060D4 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 8082F084-8082F0F4 006144 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 8082F0F4-8082F0F8 0061B4 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 8082F0F8-8082F118 0061B8 0020+00 1/0 0/0 0/0 .text            daE_ZH_Create__FP8daE_ZH_c */
static void daE_ZH_Create(daE_ZH_c* i_this) {
    // NONMATCHING
}

/* 8082F118-8082F160 0061D8 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 8082F1A8-8082F1E4 006268 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_zh_cpp */
void __sinit_d_a_e_zh_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x8082F1A8, __sinit_d_a_e_zh_cpp);
#pragma pop

/* 8082F1E4-8082F1EC 0062A4 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_8082F1E4() {
    // NONMATCHING
}

/* 8082F1EC-8082F1F4 0062AC 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_8082F1EC() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8082F7E8-8082F7EC 000108 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_8082F7E8[4];
#pragma pop

/* 8082F7EC-8082F7F0 00010C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_8082F7EC[4];
#pragma pop

/* 8082F7F0-8082F7F4 000110 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_8082F7F0[4];
#pragma pop

/* 8082F7F4-8082F7F8 000114 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_8082F7F4[4];
#pragma pop

/* 8082F7F8-8082F7FC 000118 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8082F7F8[4];
#pragma pop

/* 8082F7FC-8082F800 00011C 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8082F7FC[4];
#pragma pop

/* 8082F800-8082F804 000120 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_8082F800[4];
#pragma pop

/* 8082F804-8082F808 000124 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_8082F804[4];
#pragma pop

/* 8082F808-8082F80C 000128 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_8082F808[4];
#pragma pop

/* 8082F80C-8082F810 00012C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_8082F80C[4];
#pragma pop

/* 8082F810-8082F814 000130 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_8082F810[4];
#pragma pop

/* 8082F814-8082F818 000134 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_8082F814[4];
#pragma pop

/* 8082F818-8082F81C 000138 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_8082F818[4];
#pragma pop

/* 8082F81C-8082F820 00013C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8082F81C[4];
#pragma pop

/* 8082F820-8082F824 000140 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_8082F820[4];
#pragma pop

/* 8082F824-8082F828 000144 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_8082F824[4];
#pragma pop

/* 8082F828-8082F82C 000148 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_8082F828[4];
#pragma pop

/* 8082F82C-8082F830 00014C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_8082F82C[4];
#pragma pop

/* 8082F830-8082F834 000150 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_8082F830[4];
#pragma pop

/* 8082F834-8082F838 000154 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_8082F834[4];
#pragma pop

/* 8082F838-8082F83C 000158 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_8082F838[4];
#pragma pop

/* 8082F83C-8082F840 00015C 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8082F83C[4];
#pragma pop

/* 8082F840-8082F844 000160 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8082F840[4];
#pragma pop

/* 8082F844-8082F848 000164 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8082F844[4];
#pragma pop

/* 8082F848-8082F84C 000168 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_8082F848[4];
#pragma pop

/* 8082F410-8082F410 000208 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
