/**
 * @file d_a_npc_chin.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_chin.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void loadModel__Q211daNpcChin_c12_SpotLight_cFv();
extern "C" void setMtx__Q211daNpcChin_c12_SpotLight_cFv();
extern "C" void draw__Q211daNpcChin_c12_SpotLight_cFP12dKy_tevstr_c();
extern "C" void __ct__11daNpcChin_cFv();
extern "C" void __dt__11daNpcChin_cFv();
extern "C" void Create__11daNpcChin_cFv();
extern "C" void CreateHeap__11daNpcChin_cFv();
extern "C" void __dt__15J3DTevKColorAnmFv();
extern "C" void __ct__15J3DTevKColorAnmFv();
extern "C" void __dt__14J3DTevColorAnmFv();
extern "C" void __ct__14J3DTevColorAnmFv();
extern "C" void __dt__11J3DTexNoAnmFv();
extern "C" void __ct__11J3DTexNoAnmFv();
extern "C" void __dt__12J3DTexMtxAnmFv();
extern "C" void __ct__12J3DTexMtxAnmFv();
extern "C" void __dt__14J3DMatColorAnmFv();
extern "C" void __ct__14J3DMatColorAnmFv();
extern "C" void Delete__11daNpcChin_cFv();
extern "C" void Execute__11daNpcChin_cFv();
extern "C" void Draw__11daNpcChin_cFv();
extern "C" void ctrlJoint__11daNpcChin_cFP8J3DJointP8J3DModel();
extern "C" void createHeapCallBack__11daNpcChin_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__11daNpcChin_cFP8J3DJointi();
extern "C" void setParam__11daNpcChin_cFv();
extern "C" void main__11daNpcChin_cFv();
extern "C" void ctrlBtk__11daNpcChin_cFv();
extern "C" void setAttnPos__11daNpcChin_cFv();
extern "C" void setExpressionAnm__11daNpcChin_cFib();
extern "C" void setExpressionBtp__11daNpcChin_cFi();
extern "C" void setMotionAnm__11daNpcChin_cFif();
extern "C" void setExpression__11daNpcChin_cFif();
extern "C" void setMotion__11daNpcChin_cFifi();
extern "C" bool drawDbgInfo__11daNpcChin_cFv();
extern "C" void reset__11daNpcChin_cFv();
extern "C" void playExpression__11daNpcChin_cFv();
extern "C" void playMotion__11daNpcChin_cFv();
extern "C" void setAction__11daNpcChin_cFM11daNpcChin_cFPCvPvPv_b();
extern "C" void setLookMode__11daNpcChin_cFi();
extern "C" void lookat__11daNpcChin_cFv();
extern "C" void step__11daNpcChin_cFsii();
extern "C" void chkFindPlayer__11daNpcChin_cFv();
extern "C" void setExpressionTalkAfter__11daNpcChin_cFv();
extern "C" void wait__11daNpcChin_cFPv();
extern "C" void talk__11daNpcChin_cFPv();
extern "C" void _talk_motion__11daNpcChin_cFv();
extern "C" void demo__11daNpcChin_cFPv();
extern "C" void watch_game__11daNpcChin_cFPv();
extern "C" void Event_DT__11daNpcChin_cFv();
extern "C" void isGameEnd__11daNpcChin_cFRi();
extern "C" void _chkGameClear__11daNpcChin_cFv();
extern "C" void SphereReset__11daNpcChin_cFv();
extern "C" void _Evt_GameStart__11daNpcChin_cFi();
extern "C" void _Evt_GameStart_CutInit__11daNpcChin_cFRCi();
extern "C" void _Evt_GameStart_CutMain__11daNpcChin_cFRCi();
extern "C" void _Evt_GameFailed__11daNpcChin_cFi();
extern "C" void _Evt_GameFailed_CutInit__11daNpcChin_cFRCi();
extern "C" void _Evt_GameFailed_CutMain__11daNpcChin_cFRCi();
extern "C" void _Evt_GameSucceed__11daNpcChin_cFi();
extern "C" void _Evt_GameSucceed_CutInit__11daNpcChin_cFRCi();
extern "C" void _Evt_GameSucceed_CutMain__11daNpcChin_cFRCi();
extern "C" void _Evt_SelectGiveUp__11daNpcChin_cFi();
extern "C" void _Evt_SelectGiveUp_CutInit__11daNpcChin_cFRCi();
extern "C" void _Evt_SelectGiveUp_CutMain__11daNpcChin_cFRCi();
extern "C" void _Evt_GameGiveUp__11daNpcChin_cFi();
extern "C" void _Evt_GameGiveUp_CutInit__11daNpcChin_cFRCi();
extern "C" void _Evt_GameGiveUp_CutMain__11daNpcChin_cFRCi();
extern "C" void _Evt_Appear__11daNpcChin_cFi();
extern "C" void _Evt_Appear_CutInit__11daNpcChin_cFRCi();
extern "C" void _Evt_Appear_CutMain__11daNpcChin_cFRCi();
extern "C" void _Evt_SpotLight_Off__11daNpcChin_cFi();
extern "C" void _Evt_SpotLight_Off_CutInit__11daNpcChin_cFRCi();
extern "C" void _Evt_SpotLight_Off_CutMain__11daNpcChin_cFRCi();
extern "C" static void daNpcChin_Create__FPv();
extern "C" static void daNpcChin_Delete__FPv();
extern "C" static void daNpcChin_Execute__FPv();
extern "C" static void daNpcChin_Draw__FPv();
extern "C" static bool daNpcChin_IsDelete__FPv();
extern "C" void calc__11J3DTexNoAnmCFPUs();
extern "C" void __dt__18daNpcF_ActorMngr_cFv();
extern "C" void __ct__18daNpcF_ActorMngr_cFv();
extern "C" void __dt__15daNpcF_Lookat_cFv();
extern "C" void __dt__5csXyzFv();
extern "C" void __ct__5csXyzFv();
extern "C" void __dt__4cXyzFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__8daNpcF_cFv();
extern "C" void __ct__8daNpcF_cFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void adjustShapeAngle__8daNpcF_cFv();
extern "C" void setCollisions__8daNpcF_cFv();
extern "C" void drawOtherMdls__8daNpcF_cFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __sinit_d_a_npc_chin_cpp();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void setMtx__11daNpcChin_cFv();
extern "C" void __dt__17daNpcChin_Param_cFv();
extern "C" static void func_809918D4();
extern "C" static void func_809918DC();
extern "C" u8 const m__17daNpcChin_Param_c[108];
extern "C" extern char const* const d_a_npc_chin__stringBase0;
extern "C" u8 mEvtSeqList__11daNpcChin_c[96];

//
// External References:
//

extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz();
extern "C" void getTimerPtr__14dComIfG_play_cFv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_TimerStart__Fis();
extern "C" void dComIfG_TimerStop__Fi();
extern "C" void dComIfG_TimerReStart__Fi();
extern "C" void dComIfG_TimerDeleteRequest__Fi();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void setPtI_Id__14dEvt_control_cFUi();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void initialize__18daNpcF_ActorMngr_cFv();
extern "C" void entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c();
extern "C" void remove__18daNpcF_ActorMngr_cFv();
extern "C" void getActorP__18daNpcF_ActorMngr_cFv();
extern "C" void initialize__15daNpcF_MatAnm_cFv();
extern "C" void initialize__15daNpcF_Lookat_cFv();
extern "C" void setParam__15daNpcF_Lookat_cFffffffffffffsP4cXyz();
extern "C" void calc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fPP5csXyziii();
extern "C" void execute__8daNpcF_cFv();
extern "C" void draw__8daNpcF_cFiifP11_GXColorS10i();
extern "C" void setMtx__8daNpcF_cFv();
extern "C" void setMtx2__8daNpcF_cFv();
extern "C" void initialize__8daNpcF_cFv();
extern "C" void getTrnsfrmKeyAnmP__8daNpcF_cFPci();
extern "C" void getTexPtrnAnmP__8daNpcF_cFPci();
extern "C" void getTexSRTKeyAnmP__8daNpcF_cFPci();
extern "C" void setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii();
extern "C" void setBckAnm__8daNpcF_cFP15J3DAnmTransformfiiib();
extern "C" void setBtpAnm__8daNpcF_cFP16J3DAnmTexPatternP12J3DModelDatafi();
extern "C" void setBtkAnm__8daNpcF_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi();
extern "C" void setEnvTevColor__8daNpcF_cFv();
extern "C" void setRoomNo__8daNpcF_cFv();
extern "C" void playExpressionAnm__8daNpcF_cFPPPQ28daNpcF_c18daNpcF_anmPlayData();
extern "C" void playMotionAnm__8daNpcF_cFPPPQ28daNpcF_c18daNpcF_anmPlayData();
extern "C" void setLookatMtx__8daNpcF_cFiPif();
extern "C" void ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci();
extern "C" void orderEvent__8daNpcF_cFiPcUsUsUcUs();
extern "C" void changeEvent__8daNpcF_cFPcPcUsUs();
extern "C" void chkActorInSight__8daNpcF_cFP10fopAc_ac_cf();
extern "C" void chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci();
extern "C" void initTalk__8daNpcF_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcF_cFPiiPP10fopAc_ac_c();
extern "C" void turn__8daNpcF_cFsfi();
extern "C" void setAngle__8daNpcF_cFs();
extern "C" void getDistTableIdx__8daNpcF_cFii();
extern "C" void daNpcF_onTmpBit__FUl();
extern "C" void daNpcF_offTmpBit__FUl();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_change_colpat__FUc();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void getEventId__10dMsgFlow_cFPi();
extern "C" void dTimer_createTimer__FlUlUcUcffff();
extern "C" void dTimer_isStart__Fv();
extern "C" void dTimer_getRestTimeMs__Fv();
extern "C" void dTimer_show__Fv();
extern "C" void dTimer_hide__Fv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void __dt__11cBgS_GndChkFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_targetAngleX__FPC4cXyzPC4cXyz();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void bgmStart__8Z2SeqMgrFUlUll();
extern "C" void subBgmStart__8Z2SeqMgrFUl();
extern "C" void subBgmStop__8Z2SeqMgrFv();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void __dt__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void getTexNo__16J3DAnmTexPatternCFUsPUs();
extern "C" void initialize__14J3DMaterialAnmFv();
extern "C" void removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void __ptmf_test();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern u8 const __ptmf_null[12 + 4 /* padding */];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" u8 mCcDCyl__8daNpcF_c[68];
extern "C" extern void* __vt__8daNpcF_c[18];
extern "C" extern void* __vt__15daNpcF_MatAnm_c[4 + 6 /* padding */];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" extern void* __vt__14J3DMaterialAnm[4];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_meter2_info[248];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();
extern "C" void getSphMng__10daGlwSph_cFv();
extern "C" void _setting_main__12_GlSph_Mng_cFv();
extern "C" void _chkAllGet_main__12_GlSph_Mng_cFv();
extern "C" void SphSeProc__12_GlSph_Mng_cFv();

//
// Declarations:
//

/* ############################################################################################## */
/* 809918F8-80991904 000000 000C+00 8/7 0/0 0/0 .rodata          sLoadResPat_Normal */
SECTION_RODATA static u8 const sLoadResPat_Normal[12] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x00, 0x04, 0x00, 0x05, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x809918F8, &sLoadResPat_Normal);

/* 80991904-8099190C 00000C 0006+02 1/0 0/0 0/0 .rodata          sLoadResPat_Tw */
SECTION_RODATA static u8 const sLoadResPat_Tw[6 + 2 /* padding */] = {
    0x00,
    0x00,
    0x00,
    0x03,
    0xFF,
    0xFF,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80991904, &sLoadResPat_Tw);

/* 8099190C-80991978 000014 006C+00 4/9 0/0 0/0 .rodata          m__17daNpcChin_Param_c */
SECTION_RODATA u8 const daNpcChin_Param_c::m[108] = {
    0x42, 0x20, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xC8, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x43, 0x02, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0x00, 0x05, 0x00, 0x06,
    0x42, 0xA0, 0x00, 0x00, 0x43, 0xFA, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00, 0xC3, 0x96, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8099190C, &daNpcChin_Param_c::m);

/* 80991978-8099197C 000080 0004+00 7/7 0/0 0/0 .rodata          @3884 */
SECTION_RODATA static f32 const lit_3884 = 1.0f;
COMPILER_STRIP_GATE(0x80991978, &lit_3884);

/* 8099197C-80991980 000084 0004+00 5/8 0/0 0/0 .rodata          @3885 */
SECTION_RODATA static u8 const lit_3885[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8099197C, &lit_3885);

/* 80991D40-80991D40 000448 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80991D40 = "Chin";
SECTION_DEAD static char const* const stringBase_80991D45 = "chin1";
SECTION_DEAD static char const* const stringBase_80991D4B = "chin_mdl";
SECTION_DEAD static char const* const stringBase_80991D54 = "chin_tmdl";
SECTION_DEAD static char const* const stringBase_80991D5E = "chin1_evt";
SECTION_DEAD static char const* const stringBase_80991D68 = "SpotLight";
#pragma pop

/* 80991DFC-80991F88 000020 018C+00 1/2 0/0 0/0 .data            l_bckGetParamList */
SECTION_DATA static u8 l_bckGetParamList[396] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x09,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0B,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x19,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x11,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1A,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
};

/* 80991F88-8099203C 0001AC 00B4+00 1/1 0/0 0/0 .data            l_btpGetParamList */
SECTION_DATA static u8 l_btpGetParamList[180] = {
    0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x02, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00,
    0x2E, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x29, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2F, 0x00, 0x00, 0x00, 0x02, 0x00,
    0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00,
    0x2C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x31, 0x00, 0x00,
    0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2D, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
};

/* 8099203C-809920A8 000260 006C+00 1/2 0/0 0/0 .data            l_btkGetParamList */
SECTION_DATA static u8 l_btkGetParamList[108] = {
    0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x23,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05,
};

/* 809920A8-809920C0 -00001 0018+00 7/11 0/0 0/0 .data            l_arcNames */
SECTION_DATA static void* l_arcNames[6] = {
    (void*)&d_a_npc_chin__stringBase0,
    (void*)(((char*)&d_a_npc_chin__stringBase0) + 0x5),
    (void*)(((char*)&d_a_npc_chin__stringBase0) + 0xB),
    (void*)(((char*)&d_a_npc_chin__stringBase0) + 0x14),
    (void*)(((char*)&d_a_npc_chin__stringBase0) + 0x1E),
    (void*)(((char*)&d_a_npc_chin__stringBase0) + 0x28),
};

/* 8098BF0C-8098C000 0000EC 00F4+00 1/1 0/0 0/0 .text loadModel__Q211daNpcChin_c12_SpotLight_cFv
 */
void daNpcChin_c::_SpotLight_c::loadModel() {
    // NONMATCHING
}

/* 8098C000-8098C060 0001E0 0060+00 1/1 0/0 0/0 .text setMtx__Q211daNpcChin_c12_SpotLight_cFv */
void daNpcChin_c::_SpotLight_c::setMtx() {
    // NONMATCHING
}

/* 8098C060-8098C104 000240 00A4+00 1/1 0/0 0/0 .text
 * draw__Q211daNpcChin_c12_SpotLight_cFP12dKy_tevstr_c          */
void daNpcChin_c::_SpotLight_c::draw(dKy_tevstr_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80991D40-80991D40 000448 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80991D72 = "GAME_START";
SECTION_DEAD static char const* const stringBase_80991D7D = "GAME_FAILED";
SECTION_DEAD static char const* const stringBase_80991D89 = "GAME_SUCCEED";
SECTION_DEAD static char const* const stringBase_80991D96 = "SELECT_GAME_GIVEUP";
SECTION_DEAD static char const* const stringBase_80991DA9 = "GAME_GIVEUP";
SECTION_DEAD static char const* const stringBase_80991DB5 = "CHIN_APPEAR";
SECTION_DEAD static char const* const stringBase_80991DC1 = "SPOTLIGHT_OFF";
SECTION_DEAD static char const* const stringBase_80991DCF = "chin";
#pragma pop

/* 809920C0-809920C8 -00001 0008+00 2/2 0/0 0/0 .data            sLoadResInfo */
SECTION_DATA static void* sLoadResInfo[2] = {
    (void*)&sLoadResPat_Normal,
    (void*)&sLoadResPat_Tw,
};

/* 809920C8-809920E8 -00001 0020+00 0/2 0/0 0/0 .data            l_evtNames */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtNames[8] = {
    (void*)NULL,
    (void*)(((char*)&d_a_npc_chin__stringBase0) + 0x32),
    (void*)(((char*)&d_a_npc_chin__stringBase0) + 0x3D),
    (void*)(((char*)&d_a_npc_chin__stringBase0) + 0x49),
    (void*)(((char*)&d_a_npc_chin__stringBase0) + 0x56),
    (void*)(((char*)&d_a_npc_chin__stringBase0) + 0x69),
    (void*)(((char*)&d_a_npc_chin__stringBase0) + 0x75),
    (void*)(((char*)&d_a_npc_chin__stringBase0) + 0x81),
};
#pragma pop

/* 809920E8-809920F4 -00001 000C+00 0/1 0/0 0/0 .data            @3854 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3854[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)_Evt_GameStart__11daNpcChin_cFi,
};
#pragma pop

/* 809920F4-80992100 -00001 000C+00 0/1 0/0 0/0 .data            @3855 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3855[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)_Evt_GameFailed__11daNpcChin_cFi,
};
#pragma pop

/* 80992100-8099210C -00001 000C+00 0/1 0/0 0/0 .data            @3856 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3856[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)_Evt_GameSucceed__11daNpcChin_cFi,
};
#pragma pop

/* 8099210C-80992118 -00001 000C+00 0/1 0/0 0/0 .data            @3857 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3857[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)_Evt_SelectGiveUp__11daNpcChin_cFi,
};
#pragma pop

/* 80992118-80992124 -00001 000C+00 0/1 0/0 0/0 .data            @3858 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3858[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)_Evt_GameGiveUp__11daNpcChin_cFi,
};
#pragma pop

/* 80992124-80992130 -00001 000C+00 0/1 0/0 0/0 .data            @3859 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3859[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)_Evt_Appear__11daNpcChin_cFi,
};
#pragma pop

/* 80992130-8099213C -00001 000C+00 0/1 0/0 0/0 .data            @3860 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3860[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)_Evt_SpotLight_Off__11daNpcChin_cFi,
};
#pragma pop

/* 8099213C-8099219C 000360 0060+00 1/2 0/0 0/0 .data            mEvtSeqList__11daNpcChin_c */
SECTION_DATA u8 daNpcChin_c::mEvtSeqList[96] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8099219C-809921A0 -00001 0004+00 1/2 0/0 0/0 .data            l_myName */
SECTION_DATA static void* l_myName = (void*)(((char*)&d_a_npc_chin__stringBase0) + 0x8F);

/* 809921A0-809921DC -00001 003C+00 1/1 0/0 0/0 .data            @4745 */
SECTION_DATA static void* lit_4745[15] = {
    (void*)(((char*)setExpressionAnm__11daNpcChin_cFib) + 0x220),
    (void*)(((char*)setExpressionAnm__11daNpcChin_cFib) + 0x98),
    (void*)(((char*)setExpressionAnm__11daNpcChin_cFib) + 0xB4),
    (void*)(((char*)setExpressionAnm__11daNpcChin_cFib) + 0xD0),
    (void*)(((char*)setExpressionAnm__11daNpcChin_cFib) + 0xEC),
    (void*)(((char*)setExpressionAnm__11daNpcChin_cFib) + 0x108),
    (void*)(((char*)setExpressionAnm__11daNpcChin_cFib) + 0x124),
    (void*)(((char*)setExpressionAnm__11daNpcChin_cFib) + 0x140),
    (void*)(((char*)setExpressionAnm__11daNpcChin_cFib) + 0x15C),
    (void*)(((char*)setExpressionAnm__11daNpcChin_cFib) + 0x178),
    (void*)(((char*)setExpressionAnm__11daNpcChin_cFib) + 0x194),
    (void*)(((char*)setExpressionAnm__11daNpcChin_cFib) + 0x1B0),
    (void*)(((char*)setExpressionAnm__11daNpcChin_cFib) + 0x1CC),
    (void*)(((char*)setExpressionAnm__11daNpcChin_cFib) + 0x1E8),
    (void*)(((char*)setExpressionAnm__11daNpcChin_cFib) + 0x204),
};

/* 809921DC-80992214 -00001 0038+00 1/1 0/0 0/0 .data            @4811 */
SECTION_DATA static void* lit_4811[14] = {
    (void*)(((char*)setMotionAnm__11daNpcChin_cFif) + 0x58),
    (void*)(((char*)setMotionAnm__11daNpcChin_cFif) + 0xC8),
    (void*)(((char*)setMotionAnm__11daNpcChin_cFif) + 0xE0),
    (void*)(((char*)setMotionAnm__11daNpcChin_cFif) + 0x68),
    (void*)(((char*)setMotionAnm__11daNpcChin_cFif) + 0xE0),
    (void*)(((char*)setMotionAnm__11daNpcChin_cFif) + 0x60),
    (void*)(((char*)setMotionAnm__11daNpcChin_cFif) + 0x70),
    (void*)(((char*)setMotionAnm__11daNpcChin_cFif) + 0x80),
    (void*)(((char*)setMotionAnm__11daNpcChin_cFif) + 0x80),
    (void*)(((char*)setMotionAnm__11daNpcChin_cFif) + 0x98),
    (void*)(((char*)setMotionAnm__11daNpcChin_cFif) + 0x98),
    (void*)(((char*)setMotionAnm__11daNpcChin_cFif) + 0xB0),
    (void*)(((char*)setMotionAnm__11daNpcChin_cFif) + 0xB0),
    (void*)(((char*)setMotionAnm__11daNpcChin_cFif) + 0x78),
};

/* 80992214-80992220 -00001 000C+00 1/1 0/0 0/0 .data            @4844 */
SECTION_DATA static void* lit_4844[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpcChin_cFPv,
};

/* 80992220-80992240 -00001 0020+00 1/1 0/0 0/0 .data            @5120 */
SECTION_DATA static void* lit_5120[8] = {
    (void*)(((char*)setExpressionTalkAfter__11daNpcChin_cFv) + 0xF0),
    (void*)(((char*)setExpressionTalkAfter__11daNpcChin_cFv) + 0x30),
    (void*)(((char*)setExpressionTalkAfter__11daNpcChin_cFv) + 0x50),
    (void*)(((char*)setExpressionTalkAfter__11daNpcChin_cFv) + 0x70),
    (void*)(((char*)setExpressionTalkAfter__11daNpcChin_cFv) + 0xF0),
    (void*)(((char*)setExpressionTalkAfter__11daNpcChin_cFv) + 0x90),
    (void*)(((char*)setExpressionTalkAfter__11daNpcChin_cFv) + 0xB0),
    (void*)(((char*)setExpressionTalkAfter__11daNpcChin_cFv) + 0xD0),
};

/* 80992240-8099224C -00001 000C+00 0/1 0/0 0/0 .data            @5167 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5167[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpcChin_cFPv,
};
#pragma pop

/* 8099224C-80992258 -00001 000C+00 0/1 0/0 0/0 .data            @5172 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5172[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo__11daNpcChin_cFPv,
};
#pragma pop

/* 80992258-80992264 -00001 000C+00 1/1 0/0 0/0 .data            @5231 */
SECTION_DATA static void* lit_5231[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpcChin_cFPv,
};

/* 80992264-80992270 -00001 000C+00 0/1 0/0 0/0 .data            @5302 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5302[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpcChin_cFPv,
};
#pragma pop

/* 80992270-8099227C -00001 000C+00 0/1 0/0 0/0 .data            @5308 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5308[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpcChin_cFPv,
};
#pragma pop

/* 8099227C-80992288 -00001 000C+00 0/1 0/0 0/0 .data            @5316 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5316[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpcChin_cFPv,
};
#pragma pop

/* 80992288-80992294 -00001 000C+00 0/1 0/0 0/0 .data            @5326 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5326[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo__11daNpcChin_cFPv,
};
#pragma pop

/* 80992294-809922A0 -00001 000C+00 0/1 0/0 0/0 .data            @5370 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5370[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)watch_game__11daNpcChin_cFPv,
};
#pragma pop

/* 809922A0-809922AC -00001 000C+00 0/1 0/0 0/0 .data            @5373 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5373[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpcChin_cFPv,
};
#pragma pop

/* 809922AC-809922B8 -00001 000C+00 0/1 0/0 0/0 .data            @5380 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5380[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpcChin_cFPv,
};
#pragma pop

/* 809922B8-809922C4 -00001 000C+00 0/1 0/0 0/0 .data            @5386 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5386[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)watch_game__11daNpcChin_cFPv,
};
#pragma pop

/* 809922C4-809922D0 -00001 000C+00 0/1 0/0 0/0 .data            @5389 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5389[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpcChin_cFPv,
};
#pragma pop

/* 809922D0-809922DC -00001 000C+00 0/1 0/0 0/0 .data            @5397 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5397[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpcChin_cFPv,
};
#pragma pop

/* 809922DC-809922FC -00001 0020+00 1/0 0/0 0/0 .data            daNpcChin_MethodTable */
static actor_method_class daNpcChin_MethodTable = {
    (process_method_func)daNpcChin_Create__FPv,
    (process_method_func)daNpcChin_Delete__FPv,
    (process_method_func)daNpcChin_Execute__FPv,
    (process_method_func)daNpcChin_IsDelete__FPv,
    (process_method_func)daNpcChin_Draw__FPv,
};

/* 809922FC-8099232C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_CHIN */
extern actor_process_profile_definition g_profile_NPC_CHIN = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_CHIN,          // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daNpcChin_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  424,                    // mPriority
  &daNpcChin_MethodTable, // sub_method
  0x00044100,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 8099232C-80992338 000550 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80992338-80992380 00055C 0048+00 2/2 0/0 0/0 .data            __vt__11daNpcChin_c */
SECTION_DATA extern void* __vt__11daNpcChin_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__11daNpcChin_cFv,
    (void*)setParam__11daNpcChin_cFv,
    (void*)main__11daNpcChin_cFv,
    (void*)ctrlBtk__11daNpcChin_cFv,
    (void*)adjustShapeAngle__8daNpcF_cFv,
    (void*)setMtx__11daNpcChin_cFv,
    (void*)setMtx2__8daNpcF_cFv,
    (void*)setAttnPos__11daNpcChin_cFv,
    (void*)setCollisions__8daNpcF_cFv,
    (void*)setExpressionAnm__11daNpcChin_cFib,
    (void*)setExpressionBtp__11daNpcChin_cFi,
    (void*)setExpression__11daNpcChin_cFif,
    (void*)setMotionAnm__11daNpcChin_cFif,
    (void*)setMotion__11daNpcChin_cFifi,
    (void*)drawDbgInfo__11daNpcChin_cFv,
    (void*)drawOtherMdls__8daNpcF_cFv,
};

/* 80992380-809923A4 0005A4 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_809918DC,
    (void*)NULL,
    (void*)NULL,
    (void*)func_809918D4,
};

/* 809923A4-809923B0 0005C8 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 809923B0-809923BC 0005D4 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 809923BC-809923C8 0005E0 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 809923C8-809923D4 0005EC 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcF_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcF_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcF_ActorMngr_cFv,
};

/* 809923D4-809923E0 0005F8 000C+00 5/5 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 809923E0-809923EC 000604 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 809923EC-809923F8 000610 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 809923F8-80992404 00061C 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcF_Lookat_c */
SECTION_DATA extern void* __vt__15daNpcF_Lookat_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcF_Lookat_cFv,
};

/* 8098C104-8098C2D8 0002E4 01D4+00 1/1 0/0 0/0 .text            __ct__11daNpcChin_cFv */
daNpcChin_c::daNpcChin_c() {
    // NONMATCHING
}

/* 8098C2D8-8098C510 0004B8 0238+00 1/0 0/0 0/0 .text            __dt__11daNpcChin_cFv */
daNpcChin_c::~daNpcChin_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80991980-80991984 000088 0004+00 0/1 0/0 0/0 .rodata          @4356 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4356 = -160.0f;
COMPILER_STRIP_GATE(0x80991980, &lit_4356);
#pragma pop

/* 80991984-80991988 00008C 0004+00 0/1 0/0 0/0 .rodata          @4357 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4357 = -1300.0f;
COMPILER_STRIP_GATE(0x80991984, &lit_4357);
#pragma pop

/* 80991988-8099198C 000090 0004+00 0/1 0/0 0/0 .rodata          @4358 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4358 = 160.0f;
COMPILER_STRIP_GATE(0x80991988, &lit_4358);
#pragma pop

/* 8099198C-80991990 000094 0004+00 0/1 0/0 0/0 .rodata          @4359 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4359 = 1300.0f;
COMPILER_STRIP_GATE(0x8099198C, &lit_4359);
#pragma pop

/* 80991990-80991994 000098 0004+00 0/1 0/0 0/0 .rodata          @4360 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4360 = -50.0f;
COMPILER_STRIP_GATE(0x80991990, &lit_4360);
#pragma pop

/* 80991994-80991998 00009C 0004+00 0/1 0/0 0/0 .rodata          @4361 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4361 = 220.0f;
COMPILER_STRIP_GATE(0x80991994, &lit_4361);
#pragma pop

/* 8098C510-8098C858 0006F0 0348+00 1/1 0/0 0/0 .text            Create__11daNpcChin_cFv */
void daNpcChin_c::Create() {
    // NONMATCHING
}

/* 8098C858-8098CB28 000A38 02D0+00 1/1 0/0 0/0 .text            CreateHeap__11daNpcChin_cFv */
void daNpcChin_c::CreateHeap() {
    // NONMATCHING
}

/* 8098CB28-8098CB64 000D08 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 8098CB64-8098CB7C 000D44 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 8098CB7C-8098CBB8 000D5C 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 8098CBB8-8098CBD0 000D98 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 8098CBD0-8098CC18 000DB0 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 8098CC18-8098CC3C 000DF8 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 8098CC3C-8098CC78 000E1C 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 8098CC78-8098CC90 000E58 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 8098CC90-8098CCCC 000E70 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 8098CCCC-8098CCE4 000EAC 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 8098CCE4-8098CD18 000EC4 0034+00 1/1 0/0 0/0 .text            Delete__11daNpcChin_cFv */
void daNpcChin_c::Delete() {
    // NONMATCHING
}

/* 8098CD18-8098CD74 000EF8 005C+00 2/2 0/0 0/0 .text            Execute__11daNpcChin_cFv */
void daNpcChin_c::Execute() {
    // NONMATCHING
}

/* 8098CD74-8098CDE8 000F54 0074+00 1/1 0/0 0/0 .text            Draw__11daNpcChin_cFv */
void daNpcChin_c::Draw() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80991998-809919A4 0000A0 000C+00 1/1 0/0 0/0 .rodata          @4473 */
SECTION_RODATA static u8 const lit_4473[12] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04,
};
COMPILER_STRIP_GATE(0x80991998, &lit_4473);

/* 8098CDE8-8098CFB8 000FC8 01D0+00 1/1 0/0 0/0 .text
 * ctrlJoint__11daNpcChin_cFP8J3DJointP8J3DModel                */
void daNpcChin_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* 8098CFB8-8098CFD8 001198 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__11daNpcChin_cFP10fopAc_ac_c              */
void daNpcChin_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 8098CFD8-8098D024 0011B8 004C+00 1/1 0/0 0/0 .text ctrlJointCallBack__11daNpcChin_cFP8J3DJointi
 */
void daNpcChin_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 8098D024-8098D0F8 001204 00D4+00 1/0 0/0 0/0 .text            setParam__11daNpcChin_cFv */
void daNpcChin_c::setParam() {
    // NONMATCHING
}

/* 8098D0F8-8098D198 0012D8 00A0+00 1/0 0/0 0/0 .text            main__11daNpcChin_cFv */
void daNpcChin_c::main() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809919A4-809919A8 0000AC 0004+00 18/18 0/0 0/0 .rodata          @4627 */
SECTION_RODATA static f32 const lit_4627 = -1.0f;
COMPILER_STRIP_GATE(0x809919A4, &lit_4627);

/* 8098D198-8098D26C 001378 00D4+00 1/0 0/0 0/0 .text            ctrlBtk__11daNpcChin_cFv */
void daNpcChin_c::ctrlBtk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809919A8-809919AC 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4709 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4709 = -30.0f;
COMPILER_STRIP_GATE(0x809919A8, &lit_4709);
#pragma pop

/* 809919AC-809919B0 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4710 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4710 = 10.0f;
COMPILER_STRIP_GATE(0x809919AC, &lit_4710);
#pragma pop

/* 809919B0-809919B8 0000B8 0008+00 0/1 0/0 0/0 .rodata          @4711 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4711[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809919B0, &lit_4711);
#pragma pop

/* 809919B8-809919C0 0000C0 0008+00 0/1 0/0 0/0 .rodata          @4712 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4712[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809919B8, &lit_4712);
#pragma pop

/* 809919C0-809919C8 0000C8 0008+00 0/1 0/0 0/0 .rodata          @4713 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4713[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809919C0, &lit_4713);
#pragma pop

/* 8098D26C-8098D58C 00144C 0320+00 1/0 0/0 0/0 .text            setAttnPos__11daNpcChin_cFv */
void daNpcChin_c::setAttnPos() {
    // NONMATCHING
}

/* 8098D58C-8098D848 00176C 02BC+00 2/0 0/0 0/0 .text            setExpressionAnm__11daNpcChin_cFib
 */
void daNpcChin_c::setExpressionAnm(int param_0, bool param_1) {
    // NONMATCHING
}

/* 8098D848-8098D938 001A28 00F0+00 1/0 0/0 0/0 .text            setExpressionBtp__11daNpcChin_cFi
 */
void daNpcChin_c::setExpressionBtp(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809919C8-809919CC 0000D0 0004+00 0/0 0/0 0/0 .rodata          @4804 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4804 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x809919C8, &lit_4804);
#pragma pop

/* 809919CC-809919D0 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4805 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4805 = -1.0f / 20.0f;
COMPILER_STRIP_GATE(0x809919CC, &lit_4805);
#pragma pop

/* 809919D0-809919D4 0000D8 0004+00 0/0 0/0 0/0 .rodata          @4806 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4806 = 3.0f / 20.0f;
COMPILER_STRIP_GATE(0x809919D0, &lit_4806);
#pragma pop

/* 809919D4-809919D8 0000DC 0004+00 0/0 0/0 0/0 .rodata          @4807 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4807 = -1.0f / 5.0f;
COMPILER_STRIP_GATE(0x809919D4, &lit_4807);
#pragma pop

/* 809919D8-809919DC 0000E0 0004+00 0/1 0/0 0/0 .rodata          @4808 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4808 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x809919D8, &lit_4808);
#pragma pop

/* 8098D938-8098DB44 001B18 020C+00 2/0 0/0 0/0 .text            setMotionAnm__11daNpcChin_cFif */
bool daNpcChin_c::setMotionAnm(int param_0, f32 param_1) {
    // NONMATCHING
}

/* 8098DB44-8098DB70 001D24 002C+00 1/0 0/0 0/0 .text            setExpression__11daNpcChin_cFif */
void daNpcChin_c::setExpression(int param_0, f32 param_1) {
    // NONMATCHING
}

/* 8098DB70-8098DBB4 001D50 0044+00 1/0 0/0 0/0 .text            setMotion__11daNpcChin_cFifi */
void daNpcChin_c::setMotion(int param_0, f32 param_1, int param_2) {
    // NONMATCHING
}

/* 8098DBB4-8098DBBC 001D94 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__11daNpcChin_cFv */
bool daNpcChin_c::drawDbgInfo() {
    return false;
}

/* 8098DBBC-8098DCD0 001D9C 0114+00 1/1 0/0 0/0 .text            reset__11daNpcChin_cFv */
void daNpcChin_c::reset() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809919DC-809919E0 0000E4 0004+00 0/0 0/0 0/0 .rodata          @4809 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4809 = 0x3FCCCCCC;
COMPILER_STRIP_GATE(0x809919DC, &lit_4809);
#pragma pop

/* 809919E0-809919E4 0000E8 0004+00 0/0 0/0 0/0 .rodata          @4810 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4810 = -1.0f / 10.0f;
COMPILER_STRIP_GATE(0x809919E0, &lit_4810);
#pragma pop

/* 809919E4-809919F0 0000EC 000C+00 0/1 0/0 0/0 .rodata          @4856 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4856[12] = {
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809919E4, &lit_4856);
#pragma pop

/* 809919F0-809919F4 0000F8 0004+00 0/1 0/0 0/0 .rodata          @4857 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4857[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809919F0, &lit_4857);
#pragma pop

/* 809919F4-80991A00 0000FC 000C+00 0/1 0/0 0/0 .rodata          @4858 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4858[12] = {
    0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809919F4, &lit_4858);
#pragma pop

/* 80991A00-80991A04 000108 0004+00 0/1 0/0 0/0 .rodata          @4859 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4859[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80991A00, &lit_4859);
#pragma pop

/* 80991A04-80991A10 00010C 000C+00 0/1 0/0 0/0 .rodata          @4860 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4860[12] = {
    0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80991A04, &lit_4860);
#pragma pop

/* 80991A10-80991A14 000118 0004+00 0/1 0/0 0/0 .rodata          @4861 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4861[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80991A10, &lit_4861);
#pragma pop

/* 80991A14-80991A20 00011C 000C+00 0/1 0/0 0/0 .rodata          @4862 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4862[12] = {
    0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80991A14, &lit_4862);
#pragma pop

/* 80991A20-80991A24 000128 0004+00 0/1 0/0 0/0 .rodata          @4863 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4863[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80991A20, &lit_4863);
#pragma pop

/* 80991A24-80991A30 00012C 000C+00 0/1 0/0 0/0 .rodata          @4864 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4864[12] = {
    0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80991A24, &lit_4864);
#pragma pop

/* 80991A30-80991A34 000138 0004+00 0/1 0/0 0/0 .rodata          @4865 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4865[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80991A30, &lit_4865);
#pragma pop

/* 80991A34-80991A40 00013C 000C+00 0/1 0/0 0/0 .rodata          @4866 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4866[12] = {
    0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80991A34, &lit_4866);
#pragma pop

/* 80991A40-80991A44 000148 0004+00 0/1 0/0 0/0 .rodata          @4867 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4867[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80991A40, &lit_4867);
#pragma pop

/* 80991A44-80991A50 00014C 000C+00 0/1 0/0 0/0 .rodata          @4868 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4868[12] = {
    0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80991A44, &lit_4868);
#pragma pop

/* 80991A50-80991A54 000158 0004+00 0/1 0/0 0/0 .rodata          @4869 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4869[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80991A50, &lit_4869);
#pragma pop

/* 80991A54-80991A60 00015C 000C+00 0/1 0/0 0/0 .rodata          @4870 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4870[12] = {
    0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80991A54, &lit_4870);
#pragma pop

/* 80991A60-80991A64 000168 0004+00 0/1 0/0 0/0 .rodata          @4871 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4871[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80991A60, &lit_4871);
#pragma pop

/* 80991A64-80991A70 00016C 000C+00 0/1 0/0 0/0 .rodata          @4872 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4872[12] = {
    0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80991A64, &lit_4872);
#pragma pop

/* 80991A70-80991A74 000178 0004+00 0/1 0/0 0/0 .rodata          @4873 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4873[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80991A70, &lit_4873);
#pragma pop

/* 80991A74-80991A80 00017C 000C+00 0/1 0/0 0/0 .rodata          @4874 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4874[12] = {
    0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80991A74, &lit_4874);
#pragma pop

/* 80991A80-80991A84 000188 0004+00 0/1 0/0 0/0 .rodata          @4875 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4875[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80991A80, &lit_4875);
#pragma pop

/* 80991A84-80991A90 00018C 000C+00 0/1 0/0 0/0 .rodata          @4876 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4876[12] = {
    0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80991A84, &lit_4876);
#pragma pop

/* 80991A90-80991A94 000198 0004+00 0/1 0/0 0/0 .rodata          @4877 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4877[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80991A90, &lit_4877);
#pragma pop

/* 80991A94-80991AA0 00019C 000C+00 0/1 0/0 0/0 .rodata          @4878 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4878[12] = {
    0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80991A94, &lit_4878);
#pragma pop

/* 80991AA0-80991AA4 0001A8 0004+00 0/1 0/0 0/0 .rodata          @4879 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4879[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80991AA0, &lit_4879);
#pragma pop

/* 80991AA4-80991AB0 0001AC 000C+00 0/1 0/0 0/0 .rodata          @4880 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4880[12] = {
    0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80991AA4, &lit_4880);
#pragma pop

/* 80991AB0-80991AB4 0001B8 0004+00 0/1 0/0 0/0 .rodata          @4881 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4881[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80991AB0, &lit_4881);
#pragma pop

/* 80991AB4-80991AC0 0001BC 000C+00 0/1 0/0 0/0 .rodata          @4882 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4882[12] = {
    0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80991AB4, &lit_4882);
#pragma pop

/* 80991AC0-80991AC4 0001C8 0004+00 0/1 0/0 0/0 .rodata          @4883 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4883[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80991AC0, &lit_4883);
#pragma pop

/* 80991AC4-80991AD0 0001CC 000C+00 0/1 0/0 0/0 .rodata          @4884 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4884[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80991AC4, &lit_4884);
#pragma pop

/* 80991AD0-80991AD4 0001D8 0004+00 0/1 0/0 0/0 .rodata          @4885 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4885[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80991AD0, &lit_4885);
#pragma pop

/* 8098DCD0-8098E04C 001EB0 037C+00 1/1 0/0 0/0 .text            playExpression__11daNpcChin_cFv */
void daNpcChin_c::playExpression() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80991AD4-80991B10 0001DC 003C+00 0/0 0/0 0/0 .rodata          @4886 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4886[60] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80991AD4, &lit_4886);
#pragma pop

/* 80991B10-80991B1C 000218 000C+00 0/1 0/0 0/0 .rodata          @4910 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4910[12] = {
    0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80991B10, &lit_4910);
#pragma pop

/* 80991B1C-80991B20 000224 0004+00 0/1 0/0 0/0 .rodata          @4911 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4911[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80991B1C, &lit_4911);
#pragma pop

/* 80991B20-80991B2C 000228 000C+00 0/1 0/0 0/0 .rodata          @4912 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4912[12] = {
    0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80991B20, &lit_4912);
#pragma pop

/* 80991B2C-80991B38 000234 000C+00 0/1 0/0 0/0 .rodata          @4913 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4913[12] = {
    0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80991B2C, &lit_4913);
#pragma pop

/* 80991B38-80991B40 000240 0008+00 0/1 0/0 0/0 .rodata          @4914 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4914[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80991B38, &lit_4914);
#pragma pop

/* 80991B40-80991B4C 000248 000C+00 0/1 0/0 0/0 .rodata          @4915 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4915[12] = {
    0x00, 0x17, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80991B40, &lit_4915);
#pragma pop

/* 80991B4C-80991B58 000254 000C+00 0/1 0/0 0/0 .rodata          @4916 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4916[12] = {
    0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80991B4C, &lit_4916);
#pragma pop

/* 80991B58-80991B60 000260 0008+00 0/1 0/0 0/0 .rodata          @4917 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4917[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80991B58, &lit_4917);
#pragma pop

/* 80991B60-80991B6C 000268 000C+00 0/1 0/0 0/0 .rodata          @4918 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4918[12] = {
    0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80991B60, &lit_4918);
#pragma pop

/* 80991B6C-80991B78 000274 000C+00 0/1 0/0 0/0 .rodata          @4919 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4919[12] = {
    0x00, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80991B6C, &lit_4919);
#pragma pop

/* 80991B78-80991B80 000280 0008+00 0/1 0/0 0/0 .rodata          @4920 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4920[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80991B78, &lit_4920);
#pragma pop

/* 80991B80-80991B8C 000288 000C+00 0/1 0/0 0/0 .rodata          @4921 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4921[12] = {
    0x00, 0x1B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80991B80, &lit_4921);
#pragma pop

/* 80991B8C-80991B98 000294 000C+00 0/1 0/0 0/0 .rodata          @4922 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4922[12] = {
    0x00, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80991B8C, &lit_4922);
#pragma pop

/* 80991B98-80991BA0 0002A0 0008+00 0/1 0/0 0/0 .rodata          @4923 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4923[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80991B98, &lit_4923);
#pragma pop

/* 80991BA0-80991BAC 0002A8 000C+00 0/1 0/0 0/0 .rodata          @4924 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4924[12] = {
    0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80991BA0, &lit_4924);
#pragma pop

/* 80991BAC-80991BB8 0002B4 000C+00 0/1 0/0 0/0 .rodata          @4925 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4925[12] = {
    0x00, 0x1A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80991BAC, &lit_4925);
#pragma pop

/* 80991BB8-80991BC0 0002C0 0008+00 0/1 0/0 0/0 .rodata          @4926 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4926[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80991BB8, &lit_4926);
#pragma pop

/* 80991BC0-80991BCC 0002C8 000C+00 0/1 0/0 0/0 .rodata          @4927 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4927[12] = {
    0x00, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80991BC0, &lit_4927);
#pragma pop

/* 80991BCC-80991BD8 0002D4 000C+00 0/1 0/0 0/0 .rodata          @4928 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4928[12] = {
    0x00, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80991BCC, &lit_4928);
#pragma pop

/* 80991BD8-80991BE0 0002E0 0008+00 0/1 0/0 0/0 .rodata          @4929 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4929[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80991BD8, &lit_4929);
#pragma pop

/* 80991BE0-80991BEC 0002E8 000C+00 0/1 0/0 0/0 .rodata          @4930 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4930[12] = {
    0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80991BE0, &lit_4930);
#pragma pop

/* 80991BEC-80991BF8 0002F4 000C+00 0/1 0/0 0/0 .rodata          @4931 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4931[12] = {
    0x00, 0x1A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80991BEC, &lit_4931);
#pragma pop

/* 80991BF8-80991C00 000300 0008+00 0/1 0/0 0/0 .rodata          @4932 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4932[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80991BF8, &lit_4932);
#pragma pop

/* 80991C00-80991C0C 000308 000C+00 0/1 0/0 0/0 .rodata          @4933 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4933[12] = {
    0x00, 0x1F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80991C00, &lit_4933);
#pragma pop

/* 80991C0C-80991C18 000314 000C+00 0/1 0/0 0/0 .rodata          @4934 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4934[12] = {
    0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80991C0C, &lit_4934);
#pragma pop

/* 80991C18-80991C20 000320 0008+00 0/1 0/0 0/0 .rodata          @4935 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4935[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80991C18, &lit_4935);
#pragma pop

/* 80991C20-80991C2C 000328 000C+00 0/1 0/0 0/0 .rodata          @4936 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4936[12] = {
    0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80991C20, &lit_4936);
#pragma pop

/* 80991C2C-80991C38 000334 000C+00 0/1 0/0 0/0 .rodata          @4937 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4937[12] = {
    0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80991C2C, &lit_4937);
#pragma pop

/* 80991C38-80991C40 000340 0008+00 0/1 0/0 0/0 .rodata          @4938 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4938[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80991C38, &lit_4938);
#pragma pop

/* 80991C40-80991C4C 000348 000C+00 0/1 0/0 0/0 .rodata          @4939 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4939[12] = {
    0x00, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80991C40, &lit_4939);
#pragma pop

/* 80991C4C-80991C50 000354 0004+00 0/1 0/0 0/0 .rodata          @4940 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4940[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80991C4C, &lit_4940);
#pragma pop

/* 80991C50-80991C5C 000358 000C+00 0/1 0/0 0/0 .rodata          @4941 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4941[12] = {
    0x00, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80991C50, &lit_4941);
#pragma pop

/* 80991C5C-80991C60 000364 0004+00 0/1 0/0 0/0 .rodata          @4942 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4942[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80991C5C, &lit_4942);
#pragma pop

/* 80991C60-80991C6C 000368 000C+00 0/1 0/0 0/0 .rodata          @4943 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4943[12] = {
    0x00, 0x1A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80991C60, &lit_4943);
#pragma pop

/* 80991C6C-80991C70 000374 0004+00 0/1 0/0 0/0 .rodata          @4944 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4944[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80991C6C, &lit_4944);
#pragma pop

/* 80991C70-80991C7C 000378 000C+00 0/1 0/0 0/0 .rodata          @4945 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4945[12] = {
    0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80991C70, &lit_4945);
#pragma pop

/* 80991C7C-80991C80 000384 0004+00 0/1 0/0 0/0 .rodata          @4946 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4946[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80991C7C, &lit_4946);
#pragma pop

/* 80991C80-80991C8C 000388 000C+00 0/1 0/0 0/0 .rodata          @4947 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4947[12] = {
    0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80991C80, &lit_4947);
#pragma pop

/* 80991C8C-80991C90 000394 0004+00 0/1 0/0 0/0 .rodata          @4948 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4948[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80991C8C, &lit_4948);
#pragma pop

/* 80991C90-80991C9C 000398 000C+00 0/1 0/0 0/0 .rodata          @4949 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4949[12] = {
    0x00, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80991C90, &lit_4949);
#pragma pop

/* 80991C9C-80991CA0 0003A4 0004+00 0/1 0/0 0/0 .rodata          @4950 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4950[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80991C9C, &lit_4950);
#pragma pop

/* 80991CA0-80991CAC 0003A8 000C+00 0/1 0/0 0/0 .rodata          @4951 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4951[12] = {
    0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80991CA0, &lit_4951);
#pragma pop

/* 80991CAC-80991CB0 0003B4 0004+00 0/1 0/0 0/0 .rodata          @4952 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4952[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80991CAC, &lit_4952);
#pragma pop

/* 80991CB0-80991CBC 0003B8 000C+00 0/1 0/0 0/0 .rodata          @4953 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4953[12] = {
    0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80991CB0, &lit_4953);
#pragma pop

/* 80991CBC-80991CC0 0003C4 0004+00 0/1 0/0 0/0 .rodata          @4954 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4954[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80991CBC, &lit_4954);
#pragma pop

/* 8098E04C-8098E5C4 00222C 0578+00 1/1 0/0 0/0 .text            playMotion__11daNpcChin_cFv */
void daNpcChin_c::playMotion() {
    // NONMATCHING
}

/* 8098E5C4-8098E66C 0027A4 00A8+00 5/5 0/0 0/0 .text
 * setAction__11daNpcChin_cFM11daNpcChin_cFPCvPvPv_b            */
void daNpcChin_c::setAction(bool (daNpcChin_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 8098E66C-8098E690 00284C 0024+00 8/8 0/0 0/0 .text            setLookMode__11daNpcChin_cFi */
void daNpcChin_c::setLookMode(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80991CC0-80991D08 0003C8 0048+00 0/0 0/0 0/0 .rodata          @4955 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4955[72] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80991CC0, &lit_4955);
#pragma pop

/* 80991D08-80991D14 000410 000C+00 0/1 0/0 0/0 .rodata          @4999 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4999[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80991D08, &lit_4999);
#pragma pop

/* 80991D14-80991D18 00041C 0004+00 0/1 0/0 0/0 .rodata          @5047 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5047 = -80.0f;
COMPILER_STRIP_GATE(0x80991D14, &lit_5047);
#pragma pop

/* 80991D18-80991D1C 000420 0004+00 0/1 0/0 0/0 .rodata          @5048 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5048 = 80.0f;
COMPILER_STRIP_GATE(0x80991D18, &lit_5048);
#pragma pop

/* 80991D1C-80991D20 000424 0004+00 0/1 0/0 0/0 .rodata          @5049 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5049 = 40.0f;
COMPILER_STRIP_GATE(0x80991D1C, &lit_5049);
#pragma pop

/* 8098E690-8098E870 002870 01E0+00 1/1 0/0 0/0 .text            lookat__11daNpcChin_cFv */
void daNpcChin_c::lookat() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80991D20-80991D28 000428 0004+04 1/1 0/0 0/0 .rodata          @5074 */
SECTION_RODATA static u32 const lit_5074[1 + 1 /* padding */] = {
    0x3BB40000,
    /* padding */
    0x00000000,
};
COMPILER_STRIP_GATE(0x80991D20, &lit_5074);

/* 80991D28-80991D30 000430 0008+00 1/1 0/0 0/0 .rodata          @5076 */
SECTION_RODATA static u8 const lit_5076[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80991D28, &lit_5076);

/* 8098E870-8098EA00 002A50 0190+00 2/2 0/0 0/0 .text            step__11daNpcChin_cFsii */
void daNpcChin_c::step(s16 param_0, int param_1, int param_2) {
    // NONMATCHING
}

/* 8098EA00-8098EACC 002BE0 00CC+00 1/1 0/0 0/0 .text            chkFindPlayer__11daNpcChin_cFv */
void daNpcChin_c::chkFindPlayer() {
    // NONMATCHING
}

/* 8098EACC-8098EBE8 002CAC 011C+00 2/1 0/0 0/0 .text setExpressionTalkAfter__11daNpcChin_cFv */
void daNpcChin_c::setExpressionTalkAfter() {
    // NONMATCHING
}

/* 8098EBE8-8098EFE4 002DC8 03FC+00 9/0 0/0 0/0 .text            wait__11daNpcChin_cFPv */
void daNpcChin_c::wait(void* param_0) {
    // NONMATCHING
}

/* 8098EFE4-8098F208 0031C4 0224+00 1/0 0/0 0/0 .text            talk__11daNpcChin_cFPv */
void daNpcChin_c::talk(void* param_0) {
    // NONMATCHING
}

/* 8098F208-8098F2BC 0033E8 00B4+00 6/6 0/0 0/0 .text            _talk_motion__11daNpcChin_cFv */
void daNpcChin_c::_talk_motion() {
    // NONMATCHING
}

/* 8098F2BC-8098F414 00349C 0158+00 2/0 0/0 0/0 .text            demo__11daNpcChin_cFPv */
void daNpcChin_c::demo(void* param_0) {
    // NONMATCHING
}

/* 8098F414-8098F758 0035F4 0344+00 2/0 0/0 0/0 .text            watch_game__11daNpcChin_cFPv */
void daNpcChin_c::watch_game(void* param_0) {
    // NONMATCHING
}

/* 8098F758-8098FB3C 003938 03E4+00 1/1 0/0 0/0 .text            Event_DT__11daNpcChin_cFv */
void daNpcChin_c::Event_DT() {
    // NONMATCHING
}

/* 8098FB3C-8098FD38 003D1C 01FC+00 1/1 0/0 0/0 .text            isGameEnd__11daNpcChin_cFRi */
void daNpcChin_c::isGameEnd(int& param_0) {
    // NONMATCHING
}

/* 8098FD38-8098FD5C 003F18 0024+00 1/1 0/0 0/0 .text            _chkGameClear__11daNpcChin_cFv */
void daNpcChin_c::_chkGameClear() {
    // NONMATCHING
}

/* 8098FD5C-8098FD80 003F3C 0024+00 1/1 0/0 0/0 .text            SphereReset__11daNpcChin_cFv */
void daNpcChin_c::SphereReset() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80991D40-80991D40 000448 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80991DD4 = "cutId";
#pragma pop

/* 8098FD80-8098FE28 003F60 00A8+00 1/0 0/0 0/0 .text            _Evt_GameStart__11daNpcChin_cFi */
void daNpcChin_c::_Evt_GameStart(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80991D30-80991D34 000438 0004+00 0/1 0/0 0/0 .rodata          @5540 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5540 = 210.0f;
COMPILER_STRIP_GATE(0x80991D30, &lit_5540);
#pragma pop

/* 80991D34-80991D38 00043C 0004+00 0/1 0/0 0/0 .rodata          @5541 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5541 = 410.0f;
COMPILER_STRIP_GATE(0x80991D34, &lit_5541);
#pragma pop

/* 80991D38-80991D3C 000440 0004+00 0/1 0/0 0/0 .rodata          @5542 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5542 = 32.0f;
COMPILER_STRIP_GATE(0x80991D38, &lit_5542);
#pragma pop

/* 80991D3C-80991D40 000444 0004+00 0/1 0/0 0/0 .rodata          @5543 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5543 = 419.0f;
COMPILER_STRIP_GATE(0x80991D3C, &lit_5543);
#pragma pop

/* 8098FE28-8098FF30 004008 0108+00 1/1 0/0 0/0 .text _Evt_GameStart_CutInit__11daNpcChin_cFRCi */
void daNpcChin_c::_Evt_GameStart_CutInit(int const& param_0) {
    // NONMATCHING
}

/* 8098FF30-8098FFD0 004110 00A0+00 1/1 0/0 0/0 .text _Evt_GameStart_CutMain__11daNpcChin_cFRCi */
void daNpcChin_c::_Evt_GameStart_CutMain(int const& param_0) {
    // NONMATCHING
}

/* 8098FFD0-80990078 0041B0 00A8+00 1/0 0/0 0/0 .text            _Evt_GameFailed__11daNpcChin_cFi */
void daNpcChin_c::_Evt_GameFailed(int param_0) {
    // NONMATCHING
}

/* 80990078-80990174 004258 00FC+00 1/1 0/0 0/0 .text _Evt_GameFailed_CutInit__11daNpcChin_cFRCi
 */
void daNpcChin_c::_Evt_GameFailed_CutInit(int const& param_0) {
    // NONMATCHING
}

/* 80990174-80990218 004354 00A4+00 1/1 0/0 0/0 .text _Evt_GameFailed_CutMain__11daNpcChin_cFRCi
 */
void daNpcChin_c::_Evt_GameFailed_CutMain(int const& param_0) {
    // NONMATCHING
}

/* 80990218-809902C0 0043F8 00A8+00 1/0 0/0 0/0 .text            _Evt_GameSucceed__11daNpcChin_cFi
 */
void daNpcChin_c::_Evt_GameSucceed(int param_0) {
    // NONMATCHING
}

/* 809902C0-8099041C 0044A0 015C+00 1/1 0/0 0/0 .text _Evt_GameSucceed_CutInit__11daNpcChin_cFRCi
 */
void daNpcChin_c::_Evt_GameSucceed_CutInit(int const& param_0) {
    // NONMATCHING
}

/* 8099041C-809905C4 0045FC 01A8+00 1/1 0/0 0/0 .text _Evt_GameSucceed_CutMain__11daNpcChin_cFRCi
 */
void daNpcChin_c::_Evt_GameSucceed_CutMain(int const& param_0) {
    // NONMATCHING
}

/* 809905C4-8099066C 0047A4 00A8+00 1/0 0/0 0/0 .text            _Evt_SelectGiveUp__11daNpcChin_cFi
 */
void daNpcChin_c::_Evt_SelectGiveUp(int param_0) {
    // NONMATCHING
}

/* 8099066C-8099071C 00484C 00B0+00 1/1 0/0 0/0 .text _Evt_SelectGiveUp_CutInit__11daNpcChin_cFRCi
 */
void daNpcChin_c::_Evt_SelectGiveUp_CutInit(int const& param_0) {
    // NONMATCHING
}

/* 8099071C-809907AC 0048FC 0090+00 1/1 0/0 0/0 .text _Evt_SelectGiveUp_CutMain__11daNpcChin_cFRCi
 */
void daNpcChin_c::_Evt_SelectGiveUp_CutMain(int const& param_0) {
    // NONMATCHING
}

/* 809907AC-80990854 00498C 00A8+00 1/0 0/0 0/0 .text            _Evt_GameGiveUp__11daNpcChin_cFi */
void daNpcChin_c::_Evt_GameGiveUp(int param_0) {
    // NONMATCHING
}

/* 80990854-80990950 004A34 00FC+00 1/1 0/0 0/0 .text _Evt_GameGiveUp_CutInit__11daNpcChin_cFRCi
 */
void daNpcChin_c::_Evt_GameGiveUp_CutInit(int const& param_0) {
    // NONMATCHING
}

/* 80990950-809909F4 004B30 00A4+00 1/1 0/0 0/0 .text _Evt_GameGiveUp_CutMain__11daNpcChin_cFRCi
 */
void daNpcChin_c::_Evt_GameGiveUp_CutMain(int const& param_0) {
    // NONMATCHING
}

/* 809909F4-80990A9C 004BD4 00A8+00 1/0 0/0 0/0 .text            _Evt_Appear__11daNpcChin_cFi */
void daNpcChin_c::_Evt_Appear(int param_0) {
    // NONMATCHING
}

/* 80990A9C-80990BD8 004C7C 013C+00 1/1 0/0 0/0 .text _Evt_Appear_CutInit__11daNpcChin_cFRCi */
void daNpcChin_c::_Evt_Appear_CutInit(int const& param_0) {
    // NONMATCHING
}

/* 80990BD8-80990C9C 004DB8 00C4+00 1/1 0/0 0/0 .text _Evt_Appear_CutMain__11daNpcChin_cFRCi */
void daNpcChin_c::_Evt_Appear_CutMain(int const& param_0) {
    // NONMATCHING
}

/* 80990C9C-80990D44 004E7C 00A8+00 1/0 0/0 0/0 .text            _Evt_SpotLight_Off__11daNpcChin_cFi
 */
void daNpcChin_c::_Evt_SpotLight_Off(int param_0) {
    // NONMATCHING
}

/* 80990D44-80990DDC 004F24 0098+00 1/1 0/0 0/0 .text
 * _Evt_SpotLight_Off_CutInit__11daNpcChin_cFRCi                */
void daNpcChin_c::_Evt_SpotLight_Off_CutInit(int const& param_0) {
    // NONMATCHING
}

/* 80990DDC-80990E14 004FBC 0038+00 1/1 0/0 0/0 .text
 * _Evt_SpotLight_Off_CutMain__11daNpcChin_cFRCi                */
void daNpcChin_c::_Evt_SpotLight_Off_CutMain(int const& param_0) {
    // NONMATCHING
}

/* 80990E14-80990E34 004FF4 0020+00 1/0 0/0 0/0 .text            daNpcChin_Create__FPv */
static void daNpcChin_Create(void* param_0) {
    // NONMATCHING
}

/* 80990E34-80990E54 005014 0020+00 1/0 0/0 0/0 .text            daNpcChin_Delete__FPv */
static void daNpcChin_Delete(void* param_0) {
    // NONMATCHING
}

/* 80990E54-80990E74 005034 0020+00 1/0 0/0 0/0 .text            daNpcChin_Execute__FPv */
static void daNpcChin_Execute(void* param_0) {
    // NONMATCHING
}

/* 80990E74-80990E94 005054 0020+00 1/0 0/0 0/0 .text            daNpcChin_Draw__FPv */
static void daNpcChin_Draw(void* param_0) {
    // NONMATCHING
}

/* 80990E94-80990E9C 005074 0008+00 1/0 0/0 0/0 .text            daNpcChin_IsDelete__FPv */
static bool daNpcChin_IsDelete(void* param_0) {
    return true;
}

/* 80990E9C-80990ECC 00507C 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 80990ECC-80990F14 0050AC 0048+00 5/4 0/0 0/0 .text            __dt__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::~daNpcF_ActorMngr_c() {
extern "C" void __dt__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80990F14-80990F50 0050F4 003C+00 2/2 0/0 0/0 .text            __ct__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::daNpcF_ActorMngr_c() {
extern "C" void __ct__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80990F50-80991020 005130 00D0+00 1/0 0/0 0/0 .text            __dt__15daNpcF_Lookat_cFv */
// daNpcF_Lookat_c::~daNpcF_Lookat_c() {
extern "C" void __dt__15daNpcF_Lookat_cFv() {
    // NONMATCHING
}

/* 80991020-8099105C 005200 003C+00 5/5 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 8099105C-80991060 00523C 0004+00 2/2 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80991060-8099109C 005240 003C+00 5/5 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 8099109C-809910A0 00527C 0004+00 2/2 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 809910A0-809912EC 005280 024C+00 1/1 0/0 0/0 .text            __dt__8daNpcF_cFv */
// daNpcF_c::~daNpcF_c() {
extern "C" void __dt__8daNpcF_cFv() {
    // NONMATCHING
}

/* 809912EC-809914DC 0054CC 01F0+00 1/1 0/0 0/0 .text            __ct__8daNpcF_cFv */
// daNpcF_c::daNpcF_c() {
extern "C" void __ct__8daNpcF_cFv() {
    // NONMATCHING
}

/* 809914DC-8099154C 0056BC 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 8099154C-809915A8 00572C 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 809915A8-80991618 005788 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80991618-8099161C 0057F8 0004+00 1/0 0/0 0/0 .text            adjustShapeAngle__8daNpcF_cFv */
// void daNpcF_c::adjustShapeAngle() {
extern "C" void adjustShapeAngle__8daNpcF_cFv() {
    /* empty function */
}

/* 8099161C-80991620 0057FC 0004+00 1/0 0/0 0/0 .text            setCollisions__8daNpcF_cFv */
// void daNpcF_c::setCollisions() {
extern "C" void setCollisions__8daNpcF_cFv() {
    /* empty function */
}

/* 80991620-80991624 005800 0004+00 1/0 0/0 0/0 .text            drawOtherMdls__8daNpcF_cFv */
// void daNpcF_c::drawOtherMdls() {
extern "C" void drawOtherMdls__8daNpcF_cFv() {
    /* empty function */
}

/* 80991624-8099166C 005804 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80992404-80992410 000628 000C+00 2/2 0/0 0/0 .data            __vt__17daNpcChin_Param_c */
SECTION_DATA extern void* __vt__17daNpcChin_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17daNpcChin_Param_cFv,
};

/* 80992418-80992424 000008 000C+00 1/1 0/0 0/0 .bss             @3861 */
static u8 lit_3861[12];

/* 80992424-80992428 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 8099166C-80991780 00584C 0114+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_chin_cpp */
void __sinit_d_a_npc_chin_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x8099166C, __sinit_d_a_npc_chin_cpp);
#pragma pop

/* 80991780-809917C8 005960 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 809917C8-80991810 0059A8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80991810-80991858 0059F0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80991858-8099188C 005A38 0034+00 1/0 0/0 0/0 .text            setMtx__11daNpcChin_cFv */
void daNpcChin_c::setMtx() {
    // NONMATCHING
}

/* 8099188C-809918D4 005A6C 0048+00 2/1 0/0 0/0 .text            __dt__17daNpcChin_Param_cFv */
daNpcChin_Param_c::~daNpcChin_Param_c() {
    // NONMATCHING
}

/* 809918D4-809918DC 005AB4 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_809918D4() {
    // NONMATCHING
}

/* 809918DC-809918E4 005ABC 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_809918DC() {
    // NONMATCHING
}

/* 80991D40-80991D40 000448 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
