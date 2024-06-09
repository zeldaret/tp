/**
 * @file d_a_npc_zrz.cpp
 * NPC - Rutela
*/

#include "rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz.h"
#include "SSystem/SComponent/c_math.h"
#include "JSystem/J3DGraphBase/J3DMaterial.h"
#include "rel/d/a/obj/d_a_obj_grave_stone/d_a_obj_grave_stone.h"
#include "rel/d/a/obj/d_a_obj_zra_rock/d_a_obj_zra_rock.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __ct__11daNpc_zrZ_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__11daNpc_zrZ_cFv();
extern "C" void create__11daNpc_zrZ_cFv();
extern "C" void CreateHeap__11daNpc_zrZ_cFv();
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
extern "C" void Delete__11daNpc_zrZ_cFv();
extern "C" void Execute__11daNpc_zrZ_cFv();
extern "C" void Draw__11daNpc_zrZ_cFv();
extern "C" void draw__11daNpc_zrZ_cFiifP11_GXColorS10i();
extern "C" void ctrlJoint__11daNpc_zrZ_cFP8J3DJointP8J3DModel();
extern "C" void createHeapCallBack__11daNpc_zrZ_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__11daNpc_zrZ_cFP8J3DJointi();
extern "C" static void s_sub__FPvPv();
extern "C" static void s_subCloth__FPvPv();
extern "C" static void s_subRock__FPvPv();
extern "C" void setParam__11daNpc_zrZ_cFv();
extern "C" void main__11daNpc_zrZ_cFv();
extern "C" void ctrlBtk__11daNpc_zrZ_cFv();
extern "C" void setAttnPos__11daNpc_zrZ_cFv();
extern "C" void setMtx__11daNpc_zrZ_cFv();
extern "C" void setExpressionAnm__11daNpc_zrZ_cFib();
extern "C" void setExpressionBtp__11daNpc_zrZ_cFi();
extern "C" void setExpression__11daNpc_zrZ_cFif();
extern "C" void setMotionAnm__11daNpc_zrZ_cFif();
extern "C" void setMotion__11daNpc_zrZ_cFifi();
extern "C" bool drawDbgInfo__11daNpc_zrZ_cFv();
extern "C" void drawOtherMdls__11daNpc_zrZ_cFv();
extern "C" void getTypeFromParam__11daNpc_zrZ_cFv();
extern "C" void isDelete__11daNpc_zrZ_cFv();
extern "C" void reset__11daNpc_zrZ_cFv();
extern "C" void playExpression__11daNpc_zrZ_cFv();
extern "C" void playMotion__11daNpc_zrZ_cFv();
extern "C" void chkAction__11daNpc_zrZ_cFM11daNpc_zrZ_cFPCvPvPv_i();
extern "C" void setAction__11daNpc_zrZ_cFM11daNpc_zrZ_cFPCvPvPv_i();
extern "C" void selectAction__11daNpc_zrZ_cFv();
extern "C" void doNormalAction__11daNpc_zrZ_cFi();
extern "C" void doEvent__11daNpc_zrZ_cFv();
extern "C" void setSkipZev__11daNpc_zrZ_cFii();
extern "C" void setLookMode__11daNpc_zrZ_cFi();
extern "C" void lookat__11daNpc_zrZ_cFv();
extern "C" void setExpressionTalkAfter__11daNpc_zrZ_cFv();
extern "C" void lightReady__11daNpc_zrZ_cFv();
extern "C" void setLightPos__11daNpc_zrZ_cFv();
extern "C" void lightPowerCalc__11daNpc_zrZ_cFi();
extern "C" void lightColorProc__11daNpc_zrZ_cFv();
extern "C" void ECut_helpPrince__11daNpc_zrZ_cFi();
extern "C" void ECut_comeHere__11daNpc_zrZ_cFi();
extern "C" void ECut_restoreLink__11daNpc_zrZ_cFi();
extern "C" void ECut_clothesGet__11daNpc_zrZ_cFi();
extern "C" void ECut_getAfter__11daNpc_zrZ_cFi();
extern "C" void ECut_sealRelease__11daNpc_zrZ_cFi();
extern "C" void ECut_srSkip__11daNpc_zrZ_cFi();
extern "C" void pullbackPlayer__11daNpc_zrZ_cFf();
extern "C" void wait__11daNpc_zrZ_cFPv();
extern "C" void comeHere__11daNpc_zrZ_cFPv();
extern "C" void comeHere2__11daNpc_zrZ_cFPv();
extern "C" void talk__11daNpc_zrZ_cFPv();
extern "C" void test__11daNpc_zrZ_cFPv();
extern "C" void himoCalc__11daNpc_zrZ_cFv();
extern "C" static void daNpc_zrZ_Create__FPv();
extern "C" static void daNpc_zrZ_Delete__FPv();
extern "C" static void daNpc_zrZ_Execute__FPv();
extern "C" static void daNpc_zrZ_Draw__FPv();
extern "C" static bool daNpc_zrZ_IsDelete__FPv();
extern "C" void calc__11J3DTexNoAnmCFPUs();
extern "C" void __dt__13daNpcF_Path_cFv();
extern "C" void __dt__16daNpcF_SPCurve_cFv();
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
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void setCollisions__8daNpcF_cFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void func_80B9AE44(void* _this, int*);
extern "C" void __sinit_d_a_npc_zrz_cpp();
extern "C" void adjustShapeAngle__11daNpc_zrZ_cFv();
extern "C" void __dt__17daNpc_zrZ_Param_cFv();
extern "C" static void func_80B9AFC8();
extern "C" static void func_80B9AFD0();
extern "C" u8 const m__17daNpc_zrZ_Param_c[132];
extern "C" extern char const* const d_a_npc_zrz__stringBase0;
extern "C" void* mEvtCutNameList__11daNpc_zrZ_c[8];
extern "C" u8 mEvtCutList__11daNpc_zrZ_c[96];

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void push__14mDoMtx_stack_cFv();
extern "C" void pop__14mDoMtx_stack_cFv();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotS__14mDoMtx_stack_cFRC5csXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void entry__13mDoExt_btpAnmFP16J3DMaterialTables();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform();
extern "C" void create__21mDoExt_invisibleModelFP8J3DModelUc();
extern "C" void entryDL__21mDoExt_invisibleModelFP4cXyz();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz();
extern "C" void fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void dEv_defaultSkipProc__FPvi();
extern "C" void setSkipProc__14dEvt_control_cFPvPFPvi_ii();
extern "C" void setSkipZev__14dEvt_control_cFPvPc();
extern "C" void onSkipFade__14dEvt_control_cFv();
extern "C" void setPt2__14dEvt_control_cFPv();
extern "C" void setPtT__14dEvt_control_cFPv();
extern "C" void setPtI_Id__14dEvt_control_cFUi();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void getRunEventName__16dEvent_manager_cFv();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWallR__12dBgS_AcchCirFf();
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
extern "C" void initialize__16daNpcF_SPCurve_cFP5dPathi();
extern "C" void initialize__13daNpcF_Path_cFv();
extern "C" void setPathInfo__13daNpcF_Path_cFUcScUc();
extern "C" void chkPassedDst__13daNpcF_Path_cF4cXyz();
extern "C" void getNextIdx__13daNpcF_Path_cFv();
extern "C" void getBeforeIdx__13daNpcF_Path_cFv();
extern "C" void setNextIdxDst__13daNpcF_Path_cF4cXyz();
extern "C" void initialize__15daNpcF_Lookat_cFv();
extern "C" void setParam__15daNpcF_Lookat_cFffffffffffffsP4cXyz();
extern "C" void calc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fPP5csXyziii();
extern "C" void execute__8daNpcF_cFv();
extern "C" void draw__8daNpcF_cFiifP11_GXColorS10i();
extern "C" void tgHitCallBack__8daNpcF_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" void srchAttnActor1__8daNpcF_cFPvPv();
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
extern "C" void hitChk2__8daNpcF_cFP8dCcD_Cylii();
extern "C" void setDamage__8daNpcF_cFiii();
extern "C" void ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci();
extern "C" void orderEvent__8daNpcF_cFiPcUsUsUcUs();
extern "C" void initTalk__8daNpcF_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcF_cFPiiPP10fopAc_ac_c();
extern "C" void step__8daNpcF_cFsiii();
extern "C" void setAngle__8daNpcF_cFs();
extern "C" void getDistTableIdx__8daNpcF_cFii();
extern "C" void getAttnActorP__8daNpcF_cFiPFPvPv_Pvffffsii();
extern "C" void chkFindPlayer2__8daNpcF_cFis();
extern "C" void daNpcF_offTmpBit__FUl();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_efplight_set__FP15LIGHT_INFLUENCE();
extern "C" void dKy_efplight_cut__FP15LIGHT_INFLUENCE();
extern "C" void dKy_set_allcol_ratio__Ff();
extern "C" void dKy_BossLight_set__FP4cXyzP8_GXColorfUc();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void getEventId__10dMsgFlow_cFPi();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void normalize__4cXyzFv();
extern "C" void cM_atan2s__Fff();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void __dt__11cBgS_GndChkFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcPos2__FP4cXyzRC4cXyzff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chaseS__FPsss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_targetAngleX__FPC4cXyzPC4cXyz();
extern "C" void cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStop__7Z2SeMgrF10JAISoundIDUl();
extern "C" void bgmStop__8Z2SeqMgrFUll();
extern "C" void subBgmStart__8Z2SeqMgrFUl();
extern "C" void subBgmStop__8Z2SeqMgrFv();
extern "C" void changeBgmStatus__8Z2SeqMgrFl();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void __dt__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void getTexNo__16J3DAnmTexPatternCFUsPUs();
extern "C" void initialize__14J3DMaterialAnmFv();
extern "C" void removeTexNoAnimator__16J3DMaterialTableFP16J3DAnmTexPattern();
extern "C" void removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey();
extern "C" void removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void __ptmf_test();
extern "C" void __ptmf_cmpr();
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
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" f32 mGroundY__11fopAcM_gc_c;
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80B9B220-80B9B220 000234 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B9B220 = "zrZ";
SECTION_DEAD static char const* const stringBase_80B9B224 = "zrZ_GT";
SECTION_DEAD static char const* const stringBase_80B9B22B = "HELP_PRINCE";
SECTION_DEAD static char const* const stringBase_80B9B237 = "COME_HERE";
SECTION_DEAD static char const* const stringBase_80B9B241 = "RESTORE_LINK";
SECTION_DEAD static char const* const stringBase_80B9B24E = "CLOTHES_GET";
SECTION_DEAD static char const* const stringBase_80B9B25A = "GET_AFTER";
SECTION_DEAD static char const* const stringBase_80B9B264 = "SEAL_RELEASE";
SECTION_DEAD static char const* const stringBase_80B9B271 = "SR_SKIP";
SECTION_DEAD static char const* const stringBase_80B9B279 = "";
#pragma pop

/* 80B9B284-80B9B290 000000 000C+00 9/9 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80B9B290-80B9B2A4 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80B9B2A4-80B9B2AC 000020 0008+00 0/1 0/0 0/0 .data            l_bmdGetParamList */
#pragma push
#pragma force_active on
static daNpc_GetParam1 l_bmdGetParamList[1] = {
    {9, 0},
};
#pragma pop

/* 80B9B2AC-80B9B2B4 000028 0008+00 0/1 0/0 0/0 .data            l_bmdGTGetParamList */
#pragma push
#pragma force_active on
static daNpc_GetParam1 l_bmdGTGetParamList[1] = {
    {13, 1},  // gt
};
#pragma pop

/* 80B9B2B4-80B9B2DC 000030 0028+00 0/2 0/0 0/0 .data            l_bckGetParamList */
#pragma push
#pragma force_active on
static daNpc_GetParam1 l_bckGetParamList[5] = {
    {-1, 0},
    {-1, 0},
    {6, 0},
    {0, 0},
    {0, 0},
};
#pragma pop

/* 80B9B2DC-80B9B304 000058 0028+00 0/2 0/0 0/0 .data            l_bckGTGetParamList */
#pragma push
#pragma force_active on
static daNpc_GetParam1 l_bckGTGetParamList[5] = {
    {-1, 1},
    {8, 1},   // f_talk_a
    {10, 1},  // wait_gt_a
    {9, 1},   // lead
    {7, 1},   // comeon
};
#pragma pop

/* 80B9B304-80B9B30C 000080 0008+00 0/1 0/0 0/0 .data            l_btpGetParamList */
#pragma push
#pragma force_active on
static daNpc_GetParam1 l_btpGetParamList[1] = {
    {15, 0},
};
#pragma pop

/* 80B9B30C-80B9B314 000088 0008+00 0/1 0/0 0/0 .data            l_btpGTGetParamList */
#pragma push
#pragma force_active on
static daNpc_GetParam1 l_btpGTGetParamList[1] = {
    {19, 1},  // gt
};
#pragma pop

/* 80B9B314-80B9B31C 000090 0008+00 0/2 0/0 0/0 .data            l_btkGetParamList */
#pragma push
#pragma force_active on
static daNpc_GetParam1 l_btkGetParamList[1] = {
    {12, 0},
};
#pragma pop

/* 80B9B31C-80B9B324 000098 0008+00 0/2 0/0 0/0 .data            l_btkGTGetParamList */
#pragma push
#pragma force_active on
static daNpc_GetParam1 l_btkGTGetParamList[1] = {
    {16, 1},  // gt
};
#pragma pop

/* 80B9B324-80B9B364 0000A0 0040+00 0/1 0/0 0/0 .data            l_evtGetParamList */
#pragma push
#pragma force_active on
static daNpc_GetParam1 l_evtGetParamList[8] = {
    {0, 0},
    {1, 1},
    {2, 1},
    {3, 1},
    {4, 1},
    {5, 1},
    {6, 1},
    {7, 1},
};
#pragma pop

/* 80B9B364-80B9B370 0000E0 000C+00 1/0 0/0 0/0 .data            l_loadRes_ZRZa */
static int l_loadRes_ZRZa[3] = {0, -1, -1};

/* 80B9B370-80B9B37C 0000EC 000C+00 1/0 0/0 0/0 .data            l_loadRes_ZRZ_GT */
static int l_loadRes_ZRZ_GT[3] = {1, -1, -1};

/* 80B9B37C-80B9B388 0000F8 000C+00 1/0 0/0 0/0 .data            l_loadRes_ZRZ0 */
static int l_loadRes_ZRZ0[3] = {0, -1, -1};

/* 80B9B388-80B9B394 -00001 000C+00 2/2 0/0 0/0 .data            l_loadRes_list */
static int* l_loadRes_list[3] = {
    l_loadRes_ZRZa,
    l_loadRes_ZRZ_GT,
    l_loadRes_ZRZ0,
};

/* 80B9B394-80B9B39C -00001 0008+00 2/8 0/0 0/0 .data            l_resNames */
static char* l_resNames[2] = {
    "zrZ",
    "zrZ_GT",
};

/* 80B9B39C-80B9B3BC -00001 0020+00 1/2 0/0 0/0 .data            l_evtNames */
static char* l_evtNames[8] = {
    NULL,
    "HELP_PRINCE",
    "COME_HERE",
    "RESTORE_LINK",
    "CLOTHES_GET",
    "GET_AFTER",
    "SEAL_RELEASE",
    "SR_SKIP",
};

/* 80B9B3BC-80B9B3C0 -00001 0004+00 0/1 0/0 0/0 .data            l_myName */
#pragma push
#pragma force_active on
static char* l_myName = "zrZ";
#pragma pop

/* 80B9B3C0-80B9B3E0 -00001 0020+00 0/1 0/0 0/0 .data            mEvtCutNameList__11daNpc_zrZ_c */
#pragma push
#pragma force_active on
char* daNpc_zrZ_c::mEvtCutNameList[8] = {
    "",
    "HELP_PRINCE",
    "COME_HERE",
    "RESTORE_LINK",
    "CLOTHES_GET",
    "GET_AFTER",
    "SEAL_RELEASE",
    "SR_SKIP",
};
#pragma pop

/* 80B9B3E0-80B9B3EC -00001 000C+00 0/1 0/0 0/0 .data            @4022 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4022[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_helpPrince__11daNpc_zrZ_cFi,
};
#pragma pop

/* 80B9B3EC-80B9B3F8 -00001 000C+00 0/1 0/0 0/0 .data            @4023 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4023[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_comeHere__11daNpc_zrZ_cFi,
};
#pragma pop

/* 80B9B3F8-80B9B404 -00001 000C+00 0/1 0/0 0/0 .data            @4024 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4024[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_restoreLink__11daNpc_zrZ_cFi,
};
#pragma pop

/* 80B9B404-80B9B410 -00001 000C+00 0/1 0/0 0/0 .data            @4025 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4025[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_clothesGet__11daNpc_zrZ_cFi,
};
#pragma pop

/* 80B9B410-80B9B41C -00001 000C+00 0/1 0/0 0/0 .data            @4026 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4026[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_getAfter__11daNpc_zrZ_cFi,
};
#pragma pop

/* 80B9B41C-80B9B428 -00001 000C+00 0/1 0/0 0/0 .data            @4027 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4027[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_sealRelease__11daNpc_zrZ_cFi,
};
#pragma pop

/* 80B9B428-80B9B434 -00001 000C+00 0/1 0/0 0/0 .data            @4028 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4028[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_srSkip__11daNpc_zrZ_cFi,
};
#pragma pop

/* 80B9B434-80B9B494 0001B0 0060+00 0/2 0/0 0/0 .data            mEvtCutList__11daNpc_zrZ_c */
#ifdef NONMATCHING
daNpc_zrZ_c::EventFn daNpc_zrZ_c::mEvtCutList[8] = {
    NULL,
    &ECut_helpPrince,
    &ECut_comeHere,
    &ECut_restoreLink,
    &ECut_clothesGet,
    &ECut_getAfter,
    &ECut_sealRelease,
    &ECut_srSkip,
};
#else
#pragma push
#pragma force_active on
SECTION_DATA u8 daNpc_zrZ_c::mEvtCutList[96] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop
#endif

/* 80B9B494-80B9B4A0 -00001 000C+00 1/1 0/0 0/0 .data            @4555 */
SECTION_DATA static void* lit_4555[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)test__11daNpc_zrZ_cFPv,
};

/* 80B9B4A0-80B9B4AC -00001 000C+00 1/1 0/0 0/0 .data            @4558 */
SECTION_DATA static void* lit_4558[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)test__11daNpc_zrZ_cFPv,
};

/* 80B9B4AC-80B9B524 -00001 0078+00 1/1 0/0 0/0 .data            @4796 */
SECTION_DATA static void* lit_4796[30] = {
    (void*)(((char*)ctrlJoint__11daNpc_zrZ_cFP8J3DJointP8J3DModel) + 0x200),
    (void*)(((char*)ctrlJoint__11daNpc_zrZ_cFP8J3DJointP8J3DModel) + 0x134),
    (void*)(((char*)ctrlJoint__11daNpc_zrZ_cFP8J3DJointP8J3DModel) + 0x200),
    (void*)(((char*)ctrlJoint__11daNpc_zrZ_cFP8J3DJointP8J3DModel) + 0x134),
    (void*)(((char*)ctrlJoint__11daNpc_zrZ_cFP8J3DJointP8J3DModel) + 0x134),
    (void*)(((char*)ctrlJoint__11daNpc_zrZ_cFP8J3DJointP8J3DModel) + 0x200),
    (void*)(((char*)ctrlJoint__11daNpc_zrZ_cFP8J3DJointP8J3DModel) + 0x200),
    (void*)(((char*)ctrlJoint__11daNpc_zrZ_cFP8J3DJointP8J3DModel) + 0x200),
    (void*)(((char*)ctrlJoint__11daNpc_zrZ_cFP8J3DJointP8J3DModel) + 0x200),
    (void*)(((char*)ctrlJoint__11daNpc_zrZ_cFP8J3DJointP8J3DModel) + 0x200),
    (void*)(((char*)ctrlJoint__11daNpc_zrZ_cFP8J3DJointP8J3DModel) + 0x200),
    (void*)(((char*)ctrlJoint__11daNpc_zrZ_cFP8J3DJointP8J3DModel) + 0x200),
    (void*)(((char*)ctrlJoint__11daNpc_zrZ_cFP8J3DJointP8J3DModel) + 0x200),
    (void*)(((char*)ctrlJoint__11daNpc_zrZ_cFP8J3DJointP8J3DModel) + 0x200),
    (void*)(((char*)ctrlJoint__11daNpc_zrZ_cFP8J3DJointP8J3DModel) + 0x150),
    (void*)(((char*)ctrlJoint__11daNpc_zrZ_cFP8J3DJointP8J3DModel) + 0x200),
    (void*)(((char*)ctrlJoint__11daNpc_zrZ_cFP8J3DJointP8J3DModel) + 0x200),
    (void*)(((char*)ctrlJoint__11daNpc_zrZ_cFP8J3DJointP8J3DModel) + 0x200),
    (void*)(((char*)ctrlJoint__11daNpc_zrZ_cFP8J3DJointP8J3DModel) + 0x200),
    (void*)(((char*)ctrlJoint__11daNpc_zrZ_cFP8J3DJointP8J3DModel) + 0x200),
    (void*)(((char*)ctrlJoint__11daNpc_zrZ_cFP8J3DJointP8J3DModel) + 0x200),
    (void*)(((char*)ctrlJoint__11daNpc_zrZ_cFP8J3DJointP8J3DModel) + 0x200),
    (void*)(((char*)ctrlJoint__11daNpc_zrZ_cFP8J3DJointP8J3DModel) + 0x150),
    (void*)(((char*)ctrlJoint__11daNpc_zrZ_cFP8J3DJointP8J3DModel) + 0x200),
    (void*)(((char*)ctrlJoint__11daNpc_zrZ_cFP8J3DJointP8J3DModel) + 0x200),
    (void*)(((char*)ctrlJoint__11daNpc_zrZ_cFP8J3DJointP8J3DModel) + 0x200),
    (void*)(((char*)ctrlJoint__11daNpc_zrZ_cFP8J3DJointP8J3DModel) + 0x200),
    (void*)(((char*)ctrlJoint__11daNpc_zrZ_cFP8J3DJointP8J3DModel) + 0x200),
    (void*)(((char*)ctrlJoint__11daNpc_zrZ_cFP8J3DJointP8J3DModel) + 0x200),
    (void*)(((char*)ctrlJoint__11daNpc_zrZ_cFP8J3DJointP8J3DModel) + 0x150),
};

/* 80B9B524-80B9B530 -00001 000C+00 1/1 0/0 0/0 .data            @5325 */
SECTION_DATA static void* lit_5325[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpc_zrZ_cFPv,
};

/* 80B9B530-80B9B53C -00001 000C+00 0/1 0/0 0/0 .data            @5430 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5430[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)test__11daNpc_zrZ_cFPv,
};
#pragma pop

/* 80B9B53C-80B9B548 -00001 000C+00 0/1 0/0 0/0 .data            @5434 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5434[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)comeHere__11daNpc_zrZ_cFPv,
};
#pragma pop

/* 80B9B548-80B9B554 -00001 000C+00 0/1 0/0 0/0 .data            @5436 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5436[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)comeHere2__11daNpc_zrZ_cFPv,
};
#pragma pop

/* 80B9B554-80B9B560 -00001 000C+00 0/1 0/0 0/0 .data            @5438 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5438[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpc_zrZ_cFPv,
};
#pragma pop

/* 80B9B560-80B9B56C -00001 000C+00 0/1 0/0 0/0 .data            @5478 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5478[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_zrZ_cFPv,
};
#pragma pop

/* 80B9B56C-80B9B578 -00001 000C+00 0/1 0/0 0/0 .data            @5486 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5486[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_zrZ_cFPv,
};
#pragma pop

/* 80B9B578-80B9B714 -00001 019C+00 1/1 0/0 0/0 .data            @5908 */
SECTION_DATA static void* lit_5908[103] = {
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x3A0),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x598),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x5B0),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x40C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x414),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x438),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x598),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x45C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x480),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x488),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x490),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x4B4),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x4BC),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x4C4),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x4CC),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x4F0),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x4F8),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x500),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x61C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x69C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x524),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x52C),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x534),
    (void*)(((char*)ECut_helpPrince__11daNpc_zrZ_cFi) + 0x53C),
};

/* 80B9B714-80B9B734 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_zrZ_MethodTable */
static actor_method_class daNpc_zrZ_MethodTable = {
    (process_method_func)daNpc_zrZ_Create__FPv,
    (process_method_func)daNpc_zrZ_Delete__FPv,
    (process_method_func)daNpc_zrZ_Execute__FPv,
    (process_method_func)daNpc_zrZ_IsDelete__FPv,
    (process_method_func)daNpc_zrZ_Draw__FPv,
};

/* 80B9B734-80B9B764 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_ZRZ */
extern actor_process_profile_definition g_profile_NPC_ZRZ = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_ZRZ,           // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daNpc_zrZ_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  390,                    // mPriority
  &daNpc_zrZ_MethodTable, // sub_method
  0x08044100,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80B9B764-80B9B770 0004E0 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80B9B770-80B9B7B8 0004EC 0048+00 2/2 0/0 0/0 .data            __vt__11daNpc_zrZ_c */
SECTION_DATA extern void* __vt__11daNpc_zrZ_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__11daNpc_zrZ_cFv,
    (void*)setParam__11daNpc_zrZ_cFv,
    (void*)main__11daNpc_zrZ_cFv,
    (void*)ctrlBtk__11daNpc_zrZ_cFv,
    (void*)adjustShapeAngle__11daNpc_zrZ_cFv,
    (void*)setMtx__11daNpc_zrZ_cFv,
    (void*)setMtx2__8daNpcF_cFv,
    (void*)setAttnPos__11daNpc_zrZ_cFv,
    (void*)setCollisions__8daNpcF_cFv,
    (void*)setExpressionAnm__11daNpc_zrZ_cFib,
    (void*)setExpressionBtp__11daNpc_zrZ_cFi,
    (void*)setExpression__11daNpc_zrZ_cFif,
    (void*)setMotionAnm__11daNpc_zrZ_cFif,
    (void*)setMotion__11daNpc_zrZ_cFifi,
    (void*)drawDbgInfo__11daNpc_zrZ_cFv,
    (void*)drawOtherMdls__11daNpc_zrZ_cFv,
};

/* 80B9B7B8-80B9B7C4 000534 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80B9B7C4-80B9B7E8 000540 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B9AFD0,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B9AFC8,
};

/* 80B9B7E8-80B9B7F4 000564 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80B9B7F4-80B9B800 000570 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80B9B800-80B9B80C 00057C 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80B9B80C-80B9B818 000588 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcF_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcF_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcF_ActorMngr_cFv,
};

/* 80B9B818-80B9B824 000594 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80B9B824-80B9B830 0005A0 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80B9B830-80B9B83C 0005AC 000C+00 4/4 0/0 0/0 .data            __vt__16daNpcF_SPCurve_c */
SECTION_DATA extern void* __vt__16daNpcF_SPCurve_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__16daNpcF_SPCurve_cFv,
};

/* 80B9B83C-80B9B848 0005B8 000C+00 3/3 0/0 0/0 .data            __vt__13daNpcF_Path_c */
SECTION_DATA extern void* __vt__13daNpcF_Path_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpcF_Path_cFv,
};

/* 80B9B848-80B9B854 0005C4 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcF_Lookat_c */
SECTION_DATA extern void* __vt__15daNpcF_Lookat_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcF_Lookat_cFv,
};

/* 80B93DCC-80B93F84 0000EC 01B8+00 1/1 0/0 0/0 .text            __ct__11daNpc_zrZ_cFv */
#ifdef NONMATCHING
// inlining
daNpc_zrZ_c::daNpc_zrZ_c() {
    /* empty function */
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daNpc_zrZ_c::daNpc_zrZ_c() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/__ct__11daNpc_zrZ_cFv.s"
}
#pragma pop
#endif

/* 80B93F84-80B93FCC 0002A4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGCyl::~cM3dGCyl() {
extern "C" asm void __dt__8cM3dGCylFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/__dt__8cM3dGCylFv.s"
}
#pragma pop

/* 80B93FCC-80B94014 0002EC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 80B94014-80B9423C 000334 0228+00 1/0 0/0 0/0 .text            __dt__11daNpc_zrZ_cFv */
#ifdef NONMATCHING
// data loading
daNpc_zrZ_c::~daNpc_zrZ_c() {
    for (int i = 0; l_loadRes_list[mType][i] >= 0; i++) {
        dComIfG_resDelete(&mPhase[i], l_resNames[l_loadRes_list[mType][i]]);
    }

    if (heap != NULL) {
        mpMorf->stopZelAnime();
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpc_zrZ_c::~daNpc_zrZ_c() {
extern "C" asm void __dt__11daNpc_zrZ_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/__dt__11daNpc_zrZ_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80B9AFEC-80B9B070 000000 0084+00 22/22 0/0 0/0 .rodata          m__17daNpc_zrZ_Param_c */
daNpc_zrZ_Param_c::param const daNpc_zrZ_Param_c::m = {
    700.0f,   // mAttnOffsetY
    0.0f,     // mGravity
    1.0f,     // mScale
    1400.0f,  // mShadowDepth
    255.0f,   // mCcWeight
    700.0f,   // mCylH
    0.0f,     // mWallH
    30.0f,    // mWallR
    0.0f,     // mBodyUpAngle
    0.0f,     // mBodyDownAngle
    10.0f,    // mBodyLeftAngle
    -10.0f,   // mBodyRightAngle
    30.0f,    // mHeadUpAngle
    -10.0f,   // mHeadDownAngle
    45.0f,    // mHeadLeftAngle
    -45.0f,   // mHeadRightAngle
    0.6f,     // mNeckAngleScl
    12.0f,    // mMorfFrames
    3,        // mSpeakDistIdx
    6,        // mSpeakAngleIdx
    5,        // mTalkDistIdx
    6,        // mTalkAngleIdx
    80.0f,    // mAttnFovY
    500.0f,   // mAttnRadius
    300.0f,   // mAttnUpperY
    -300.0f,  // mAttnLowerY
    60,
    8,        // mDamageTimer
    0,        // mTestExpression
    0,        // mTestMotion
    0,        // mTestLookMode
    false,    // mTest
    1200.0f,
    1000.0f,
    3000.0f,
    25.0f,
    400.0f,
    200.0f,
};

/* 80B9B070-80B9B074 000084 0004+00 0/1 0/0 0/0 .rodata          @4449 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4449 = -300.0f;
COMPILER_STRIP_GATE(0x80B9B070, &lit_4449);
#pragma pop

/* 80B9B074-80B9B078 000088 0004+00 0/1 0/0 0/0 .rodata          @4450 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4450 = -50.0f;
COMPILER_STRIP_GATE(0x80B9B074, &lit_4450);
#pragma pop

/* 80B9B078-80B9B07C 00008C 0004+00 0/1 0/0 0/0 .rodata          @4451 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4451 = 300.0f;
COMPILER_STRIP_GATE(0x80B9B078, &lit_4451);
#pragma pop

/* 80B9B07C-80B9B080 000090 0004+00 0/1 0/0 0/0 .rodata          @4452 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4452 = 800.0f;
COMPILER_STRIP_GATE(0x80B9B07C, &lit_4452);
#pragma pop

/* 80B9423C-80B9453C 00055C 0300+00 1/1 0/0 0/0 .text            create__11daNpc_zrZ_cFv */
#ifdef NONMATCHING
// matches with literals
cPhs__Step daNpc_zrZ_c::create() {
    fopAcM_SetupActor(this, daNpc_zrZ_c);

    mType = getTypeFromParam();
    mDemoMode = getDemoMode();
    mSwitch1 = home.angle.z & 0xff;
    mSwitch2 = (home.angle.z >> 8) & 0xff;
    mSwitch3 = fopAcM_GetParam(this) >> 0x18;
    if (home.angle.x != 0xffff) {
        mFlowID = home.angle.x;
    } else {
        mFlowID = -1;
    }

    if (isDelete()) {
        return cPhs_ERROR_e;
    }

    int res_count = 0;
    int i;
    for (i = 0; l_loadRes_list[mType][i] >= 0; i++) {
        cPhs__Step step = (cPhs__Step)dComIfG_resLoad(&mPhase[i],
                                                      l_resNames[l_loadRes_list[mType][i]]);
        if (step == cPhs_ERROR_e || step == cPhs_UNK3_e) {
            return cPhs_ERROR_e;
        }
        if (step == cPhs_COMPLEATE_e) {
            res_count++;
        }
    }

    if (res_count == i) {
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0x5230)) {
            return cPhs_ERROR_e;
        }

        fopAcM_SetMtx(this, mpMorf->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -300.0f, -50.0f, -300.0f, 300.0f, 800.0f, 300.0f);
        mCreatureSound.init(&current.pos, &eyePos, 3, 1);
        mAcchCir.SetWall(daNpc_zrZ_Param_c::m.mWallR, daNpc_zrZ_Param_c::m.mWallH);
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
                  fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mCcStts.Init(daNpc_zrZ_Param_c::m.mCcWeight, 0, this);
        mCcCyl.Set(mCcDCyl);
        mCcCyl.SetStts(&mCcStts);
        mCcCyl.SetTgHitCallback(tgHitCallBack);
        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();

        setEnvTevColor();
        setRoomNo();
        reset();
        Execute();

        return cPhs_COMPLEATE_e;
    } else {
        return cPhs_INIT_e;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm cPhs__Step daNpc_zrZ_c::create() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/create__11daNpc_zrZ_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80B9B080-80B9B084 000094 0004+00 5/10 0/0 0/0 .rodata          @4521 */
SECTION_RODATA static f32 const lit_4521 = 1.0f;
COMPILER_STRIP_GATE(0x80B9B080, &lit_4521);

/* 80B9B084-80B9B088 000098 0004+00 6/15 0/0 0/0 .rodata          @4522 */
SECTION_RODATA static u8 const lit_4522[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B9B084, &lit_4522);

/* 80B9453C-80B94838 00085C 02FC+00 1/1 0/0 0/0 .text            CreateHeap__11daNpc_zrZ_cFv */
#ifdef NONMATCHING
// matches with literals
int daNpc_zrZ_c::CreateHeap() {
    J3DModelData* model_data = NULL;
    if (mType == 1) {
        if (l_bmdGTGetParamList[0].fileIdx >= 0) {
            model_data = static_cast<J3DModelData*>(
                dComIfG_getObjectRes(l_resNames[l_bmdGTGetParamList[0].arcIdx],
                                     l_bmdGTGetParamList[0].fileIdx));
        }
    } else {
        if (l_bmdGetParamList[0].fileIdx >= 0) {
            model_data = static_cast<J3DModelData*>(
                dComIfG_getObjectRes(l_resNames[l_bmdGetParamList[0].arcIdx],
                                     l_bmdGetParamList[0].fileIdx));
        }
    }

    mpMorf = new mDoExt_McaMorfSO(model_data, NULL, NULL, NULL, -1, 1.0f, 0, -1,
                                  &mCreatureSound, 0x80000, 0x11020284);
    if (mpMorf != NULL && mpMorf->getModel() == NULL) {
        mpMorf->stopZelAnime();
        mpMorf = NULL;
    }
    if (mpMorf == NULL) {
        return 0;
    }

    if (!mInvisibleModel.create(mpMorf->getModel(), 1)) {
        return 0;
    }
    
    J3DModel* model = mpMorf->getModel();
    for (u16 i = 0; i < model_data->getJointNum(); i++) {
        model_data->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
    }
    model->setUserArea((u32)this);

    mpMatAnm = new daNpcF_MatAnm_c();
    if (mpMatAnm == NULL) {
        return 0;
    }

    if (!setExpressionAnm(ANM_F_TALK_A, false)) {
        return 0;
    }
    setMotionAnm(ANM_WAIT_GT_A, 0.0f);

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daNpc_zrZ_c::CreateHeap() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/CreateHeap__11daNpc_zrZ_cFv.s"
}
#pragma pop
#endif

/* 80B94838-80B94874 000B58 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" asm void __dt__15J3DTevKColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/__dt__15J3DTevKColorAnmFv.s"
}
#pragma pop

/* 80B94874-80B9488C 000B94 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" asm void __ct__15J3DTevKColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/__ct__15J3DTevKColorAnmFv.s"
}
#pragma pop

/* 80B9488C-80B948C8 000BAC 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" asm void __dt__14J3DTevColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/__dt__14J3DTevColorAnmFv.s"
}
#pragma pop

/* 80B948C8-80B948E0 000BE8 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTevColorAnm::J3DTevColorAnm() {
extern "C" asm void __ct__14J3DTevColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/__ct__14J3DTevColorAnmFv.s"
}
#pragma pop

/* 80B948E0-80B94928 000C00 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" asm void __dt__11J3DTexNoAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/__dt__11J3DTexNoAnmFv.s"
}
#pragma pop

/* 80B94928-80B9494C 000C48 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTexNoAnm::J3DTexNoAnm() {
extern "C" asm void __ct__11J3DTexNoAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/__ct__11J3DTexNoAnmFv.s"
}
#pragma pop

/* 80B9494C-80B94988 000C6C 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" asm void __dt__12J3DTexMtxAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/__dt__12J3DTexMtxAnmFv.s"
}
#pragma pop

/* 80B94988-80B949A0 000CA8 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" asm void __ct__12J3DTexMtxAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/__ct__12J3DTexMtxAnmFv.s"
}
#pragma pop

/* 80B949A0-80B949DC 000CC0 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" asm void __dt__14J3DMatColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/__dt__14J3DMatColorAnmFv.s"
}
#pragma pop

/* 80B949DC-80B949F4 000CFC 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DMatColorAnm::J3DMatColorAnm() {
extern "C" asm void __ct__14J3DMatColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/__ct__14J3DMatColorAnmFv.s"
}
#pragma pop

/* 80B949F4-80B94A28 000D14 0034+00 1/1 0/0 0/0 .text            Delete__11daNpc_zrZ_cFv */
int daNpc_zrZ_c::Delete() {
    this->~daNpc_zrZ_c();
    return 1;
}

/* 80B94A28-80B94A48 000D48 0020+00 2/2 0/0 0/0 .text            Execute__11daNpc_zrZ_cFv */
int daNpc_zrZ_c::Execute() {
    return execute();
}

/* 80B94A48-80B94B34 000D68 00EC+00 1/1 0/0 0/0 .text            Draw__11daNpc_zrZ_cFv */
#ifdef NONMATCHING
// matches with literals
int daNpc_zrZ_c::Draw() {
    mpMorf->getModel()->getModelData()->getMaterialNodePointer(1)->setMaterialAnm(mpMatAnm);
    if (mType == 1) {
        return draw(chkAction(&test), false, daNpc_zrZ_Param_c::m.mShadowDepth, NULL, false);
    } else {
        return daNpcF_c::draw(chkAction(&test), false, daNpc_zrZ_Param_c::m.mShadowDepth,
                              NULL, false);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daNpc_zrZ_c::Draw() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/Draw__11daNpc_zrZ_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80B9B088-80B9B08C 00009C 0004+00 1/1 0/0 0/0 .rodata          @4675 */
SECTION_RODATA static f32 const lit_4675 = 20.0f;
COMPILER_STRIP_GATE(0x80B9B088, &lit_4675);

/* 80B9B08C-80B9B094 0000A0 0008+00 3/4 0/0 0/0 .rodata          @4677 */
SECTION_RODATA static u8 const lit_4677[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B9B08C, &lit_4677);

/* 80B94B34-80B94E18 000E54 02E4+00 1/1 0/0 0/0 .text draw__11daNpc_zrZ_cFiifP11_GXColorS10i */
#ifdef NONMATCHING
// matches with literals
int daNpc_zrZ_c::draw(int i_isTest, int param_1, f32 i_shadowDepth, _GXColorS10* i_fogColor,
                      int i_hideDamage) {
    f32 damage_ratio, frame;
    J3DModel* model = mpMorf->getModel();
    J3DModelData* modelData = model->getModelData();
    field_0x9f3 = 1;

    if (!mHide) {
        if (!i_hideDamage && mDamageTimer != 0 && mTotalDamageTimer != 0) {
            damage_ratio = (f32)mDamageTimer / (f32)mTotalDamageTimer;
        } else {
            damage_ratio = 0.0f;
        }

        if (cM3d_IsZero_inverted(damage_ratio)) {
            tevStr.mFogColor.r = (s16)(damage_ratio * 20.0f);
            tevStr.mFogColor.g = 0;
        } else if (i_isTest) {
            tevStr.mFogColor.g = 20;
            tevStr.mFogColor.r = 0;
        } else if (i_fogColor != NULL) {
            tevStr.mFogColor.r = i_fogColor->r;
            tevStr.mFogColor.g = i_fogColor->g;
            tevStr.mFogColor.b = i_fogColor->b;
            tevStr.mFogColor.a = i_fogColor->a;
        } else {
            tevStr.mFogColor.g = 0;
            tevStr.mFogColor.r = 0;
        }

        if (tevStr.mFogColor.a == 0) {
            return 1;
        }

        g_env_light.settingTevStruct(7, &current.pos, &tevStr);
        g_env_light.setLightTevColorType_MAJI(model->getModelData(), &tevStr);

        if (!drawDbgInfo()) {
            if (mAnmFlags & ANM_PLAY_BTP) {
                mBtpAnm.entry(&modelData->getMaterialTable(), (s16)mBtpAnm.getFrame());
            }
            if (mAnmFlags & ANM_PLAY_BTK) {
                frame = mBtkAnm.getFrame();
                mBtkAnm.entry(&modelData->getMaterialTable(), frame);
            }
            if (mAnmFlags & ANM_PLAY_BRK) {
                frame = mBrkAnm.getFrame();
                mBrkAnm.entry(&modelData->getMaterialTable(), frame);
            }

            if (param_1) {
                fopAcM_setEffectMtx(this, modelData);
            }

            if (dKy_darkworld_check()) {
                dComIfGd_setListDark();
                mInvisibleModel.entryDL(NULL);
                dComIfGd_setList();
            } else {
                mInvisibleModel.entryDL(NULL);
            }

            if (mAnmFlags & ANM_PLAY_BTP) {
                mBtpAnm.remove(modelData);
            }
            if (mAnmFlags & ANM_PLAY_BTK) {
                mBtkAnm.remove(modelData);
            }
            if (mAnmFlags & ANM_PLAY_BRK) {
                mBrkAnm.remove(modelData);
            }

            drawOtherMdls();
        }
    }
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daNpc_zrZ_c::draw(int param_0, int param_1, f32 param_2, _GXColorS10* param_3,
                           int param_4) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/draw__11daNpc_zrZ_cFiifP11_GXColorS10i.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80B9B094-80B9B0A0 0000A8 000C+00 0/1 0/0 0/0 .rodata          @4682 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4682[12] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04,
};
COMPILER_STRIP_GATE(0x80B9B094, &lit_4682);
#pragma pop

/* 80B94E18-80B950F4 001138 02DC+00 2/1 0/0 0/0 .text
 * ctrlJoint__11daNpc_zrZ_cFP8J3DJointP8J3DModel                */
#ifdef NONMATCHING
// matches with literals
int daNpc_zrZ_c::ctrlJoint(J3DJoint* i_joint, J3DModel* i_model) {
    int jnt_no = i_joint->getJntNo();
    int lookat_joints[3] = {1, 3, 4};
    Mtx base_mtx, inv_rot;
    cXyz pos;

    if (jnt_no == 0) {
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(1));
        mDoMtx_stack_c::multVecZero(&mLookatPos[0]);
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(3));
        mDoMtx_stack_c::multVecZero(&mLookatPos[1]);
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(4));
        mDoMtx_stack_c::multVecZero(&mLookatPos[2]);
    }

    mDoMtx_stack_c::copy(i_model->getAnmMtx(jnt_no));

    switch (jnt_no) {
    case 1:   // backbone1
    case 3:   // neck
    case 4:   // head
        setLookatMtx(jnt_no, lookat_joints, daNpc_zrZ_Param_c::m.mNeckAngleScl);
        break;
    
    case 14:  // armL1
    case 22:  // armR1
    case 29:  // waist
        if (jnt_no == 29) {
            himoCalc();
        }

        MTXCopy(mDoMtx_stack_c::get(), base_mtx);
        pos.set(base_mtx[0][3], base_mtx[1][3], base_mtx[2][3]);
        base_mtx[0][3] = base_mtx[1][3] = base_mtx[2][3] = 0.0f;

        mDoMtx_stack_c::ZXYrotS(mCurAngle);
        mDoMtx_stack_c::inverse();
        MTXCopy(mDoMtx_stack_c::get(), inv_rot);

        mDoMtx_stack_c::transS(pos);
        mDoMtx_stack_c::ZXYrotM(mCurAngle);
        mDoMtx_stack_c::ZXYrotM(mLimbAngle);
        mDoMtx_stack_c::concat(inv_rot);
        mDoMtx_stack_c::concat(base_mtx);
        break;
    }

    if (jnt_no == 1) {
        mDoMtx_stack_c::YrotM(field_0x908[0].z);
        mDoMtx_stack_c::ZrotM(-field_0x908[0].x);
    } else if (jnt_no == 4) {
        mDoMtx_stack_c::YrotM(field_0x908[2].z);
        mDoMtx_stack_c::ZrotM(field_0x908[2].x);
    }

    i_model->setAnmMtx(jnt_no, mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);

    if ((jnt_no == 4 || jnt_no == 12) && (mAnmFlags & ANM_PLAY_BCK)) {
        J3DAnmTransform* bck_anm = mBckAnm.getBckAnm();
        mBckAnm.changeBckOnly(mpMorf->getAnm());
        mpMorf->changeAnm(bck_anm);
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daNpc_zrZ_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/ctrlJoint__11daNpc_zrZ_cFP8J3DJointP8J3DModel.s"
}
#pragma pop
#endif

/* 80B950F4-80B95114 001414 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__11daNpc_zrZ_cFP10fopAc_ac_c              */
int daNpc_zrZ_c::createHeapCallBack(fopAc_ac_c* i_this) {
    return static_cast<daNpc_zrZ_c*>(i_this)->CreateHeap();
}

/* 80B95114-80B95160 001434 004C+00 1/1 0/0 0/0 .text ctrlJointCallBack__11daNpc_zrZ_cFP8J3DJointi
 */
int daNpc_zrZ_c::ctrlJointCallBack(J3DJoint* i_joint, int param_1) {
    if (param_1 == 0) {
        daNpc_zrZ_c* _this = (daNpc_zrZ_c*)j3dSys.getModel()->getUserArea();
        if (_this != NULL) {
            _this->ctrlJoint(i_joint, j3dSys.getModel());
        }
    }
    return 1;
}

/* 80B95160-80B951AC 001480 004C+00 3/3 0/0 0/0 .text            s_sub__FPvPv */
static void* s_sub(void* i_proc, void* i_this) {
    if (fopAc_IsActor(i_proc) && fopAcM_GetName(i_proc) == PROC_Obj_GraveStone) {
        return i_proc;
    }
    return NULL;
}

/* 80B951AC-80B951F8 0014CC 004C+00 1/1 0/0 0/0 .text            s_subCloth__FPvPv */
static void* s_subCloth(void* i_proc, void* i_this) {
    if (fopAc_IsActor(i_proc) && fopAcM_GetName(i_proc) == PROC_Obj_ZoraCloth) {
        return i_proc;
    }
    return NULL;
}

/* 80B951F8-80B95244 001518 004C+00 1/1 0/0 0/0 .text            s_subRock__FPvPv */
static void* s_subRock(void* i_proc, void* i_this) {
    if (fopAc_IsActor(i_proc) && fopAcM_GetName(i_proc) == PROC_Obj_ZraRock) {
        return i_proc;
    }
    return NULL;
}

/* 80B95244-80B953CC 001564 0188+00 1/0 0/0 0/0 .text            setParam__11daNpc_zrZ_cFv */
void daNpc_zrZ_c::setParam() {
    ActionFn action = mpNextActionFn;
    u32 attn_flags = 10;
    selectAction();

    if (!mTwilight && daPy_py_c::i_checkNowWolf()) {
        attn_flags = 0;
    }

    if (mpNextActionFn != action) {
        for (int i = 2; i < 2; i++) {
            mActorMngr[i].initialize();
        }
    }

    field_0x1434 = 0;
    field_0x1438 = 0;

    attention_info.distances[0] = getDistTableIdx(5, 6);
    attention_info.distances[1] = attention_info.distances[0];
    attention_info.distances[3] = getDistTableIdx(3, 6);
    attention_info.flags = attn_flags;

    scale.set(daNpc_zrZ_Param_c::m.mScale,
              daNpc_zrZ_Param_c::m.mScale,
              daNpc_zrZ_Param_c::m.mScale);
    
    mAcchCir.SetWallR(daNpc_zrZ_Param_c::m.mWallR);
    mAcchCir.SetWallH(daNpc_zrZ_Param_c::m.mWallH);
    gravity = daNpc_zrZ_Param_c::m.mGravity;

    u32 uvar4 = cLib_minMaxLimit<u32>(tevStr.mFogColor.a * 100 / 0xff, 1, 100);
    mCreatureSound.startCreatureSoundLevel(Z2SE_ZRZ_MV, uvar4, -1);
}

/* ############################################################################################## */
/* 80B9B0A0-80B9B0A4 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4945 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4945 = 8.5f;
COMPILER_STRIP_GATE(0x80B9B0A0, &lit_4945);
#pragma pop

/* 80B953CC-80B95598 0016EC 01CC+00 1/0 0/0 0/0 .text            main__11daNpc_zrZ_cFv */
#ifdef NONMATCHING
// data load order
BOOL daNpc_zrZ_c::main() {
    if (!doEvent()) {
        doNormalAction(1);
    }

    attention_info.flags = 0;

    if (!daNpc_zrZ_Param_c::m.mTest
        && (!dComIfGp_event_runCheck() || (mOrderNewEvt && dComIfGp_getEvent().isOrderOK())))
    {
        if (mOrderEvtNo != EVT_NONE) {
            eventInfo.setArchiveName(l_resNames[l_evtGetParamList[mOrderEvtNo].arcIdx]);
        }
        orderEvent(mOrderSpeakEvt, l_evtNames[l_evtGetParamList[mOrderEvtNo].fileIdx],
                   0xffff, 4, 0xff, 1);
    }

    if (field_0x9ee) {
        mExpressionMorfOverride = 0.0f;
        mMotionMorfOverride = 0.0f;
        field_0x9ee = false;
    }

    playExpression();
    playMotion();

    mAcch.SetGrndNone();
    mAcch.SetWallNone();
    gravity = 0.0f;
    speed.setall(0.0f);
    speedF = 0.0f;

    mModulationOffset = 8.5f - cM_scos(mModulationParam * 0x10000 / 90) * 8.5f;
    mModulationParam--;
    if (mModulationParam <= 0) {
        mModulationParam = 90;
        mModulationOffset = 0.0f;
    }

    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrZ_c::main() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/main__11daNpc_zrZ_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80B9B0A4-80B9B0A8 0000B8 0004+00 5/9 0/0 0/0 .rodata          @4991 */
SECTION_RODATA static f32 const lit_4991 = -1.0f;
COMPILER_STRIP_GATE(0x80B9B0A4, &lit_4991);

/* 80B9B0A8-80B9B0AC 0000BC 0004+00 1/2 0/0 0/0 .rodata          @4992 */
SECTION_RODATA static f32 const lit_4992 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80B9B0A8, &lit_4992);

/* 80B95598-80B956B4 0018B8 011C+00 1/1 0/0 0/0 .text            ctrlBtk__11daNpc_zrZ_cFv */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrZ_c::ctrlBtk() {
    if (mpMatAnm != NULL) {
        J3DAnmTextureSRTKey* btk_anm = NULL;
        if (mType == 1) {
            if (l_btkGTGetParamList[0].fileIdx >= 0) {
                btk_anm = getTexSRTKeyAnmP(l_resNames[l_btkGTGetParamList[0].arcIdx],
                                           l_btkGTGetParamList[0].fileIdx);
            }
        } else {
            if (l_btkGetParamList[0].fileIdx >= 0) {
                btk_anm = getTexSRTKeyAnmP(l_resNames[l_btkGetParamList[0].arcIdx],
                                           l_btkGetParamList[0].fileIdx);
            }
        }

        if (btk_anm == mBtkAnm.getBtkAnm()) {
            mpMatAnm->setNowOffsetX(cM_ssin(mEyeAngle.y) * 0.2f * -1.0f);
            mpMatAnm->setNowOffsetY(cM_ssin(mEyeAngle.x) * 0.2f);
            mpMatAnm->onEyeMoveFlag();
            return true;
        }
        mpMatAnm->offEyeMoveFlag();
    }

    return false;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrZ_c::ctrlBtk() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/ctrlBtk__11daNpc_zrZ_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80B9B0AC-80B9B0B0 0000C0 0004+00 0/1 0/0 0/0 .rodata          @5127 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5127 = -10.0f;
COMPILER_STRIP_GATE(0x80B9B0AC, &lit_5127);
#pragma pop

/* 80B9B0B0-80B9B0B4 0000C4 0004+00 0/1 0/0 0/0 .rodata          @5128 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5128 = 10.0f;
COMPILER_STRIP_GATE(0x80B9B0B0, &lit_5128);
#pragma pop

/* 80B9B0B4-80B9B0B8 0000C8 0004+00 0/4 0/0 0/0 .rodata          @5129 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5129 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80B9B0B4, &lit_5129);
#pragma pop

/* 80B9B0B8-80B9B0BC 0000CC 0004+00 0/1 0/0 0/0 .rodata          @5130 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5130 = 125.0f;
COMPILER_STRIP_GATE(0x80B9B0B8, &lit_5130);
#pragma pop

/* 80B9B0BC-80B9B0C4 0000D0 0008+00 0/3 0/0 0/0 .rodata          @5131 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5131[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B9B0BC, &lit_5131);
#pragma pop

/* 80B9B0C4-80B9B0CC 0000D8 0008+00 0/3 0/0 0/0 .rodata          @5132 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5132[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B9B0C4, &lit_5132);
#pragma pop

/* 80B9B0CC-80B9B0D4 0000E0 0008+00 0/3 0/0 0/0 .rodata          @5133 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5133[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B9B0CC, &lit_5133);
#pragma pop

/* 80B9B868-80B9B86C 000008 0001+03 1/1 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 80B9B86C-80B9B870 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 80B9B870-80B9B874 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 80B9B874-80B9B878 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 80B9B878-80B9B87C 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 80B9B87C-80B9B880 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 80B9B880-80B9B884 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 80B9B884-80B9B888 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 80B9B888-80B9B88C 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 80B9B88C-80B9B890 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 80B9B890-80B9B894 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 80B9B894-80B9B898 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 80B9B898-80B9B89C 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 80B9B89C-80B9B8A0 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 80B9B8A0-80B9B8A4 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 80B9B8A4-80B9B8A8 000044 0001+03 0/0 0/0 0/0 .bss             @1009 */
#pragma push
#pragma force_active on
static u8 lit_1009[1 + 3 /* padding */];
#pragma pop

/* 80B9B8A8-80B9B8B4 000048 000C+00 1/1 0/0 0/0 .bss             @4021 */
static u8 lit_4021[12];

/* 80B9B8B4-80B9B8B8 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80B9B8B8-80B9B8C8 000058 000C+04 0/1 0/0 0/0 .bss             @4997 */
#pragma push
#pragma force_active on
static u8 lit_4997[12 + 4 /* padding */];
#pragma pop

/* 80B9B8C8-80B9B8D4 000068 000C+00 0/1 0/0 0/0 .bss             eyeOffset$4996 */
#pragma push
#pragma force_active on
static u8 eyeOffset[12];
#pragma pop

/* 80B956B4-80B95BB8 0019D4 0504+00 1/0 0/0 0/0 .text            setAttnPos__11daNpc_zrZ_cFv */
#ifdef NONMATCHING
// matches with literals
void daNpc_zrZ_c::setAttnPos() {
    static cXyz eyeOffset(-20.0f, 10.0f, 0.0f);
    f32 offset = daNpc_zrZ_Param_c::m.mAttnOffsetY;
    cXyz center, vec2, vec3, vec4;

    mDoMtx_stack_c::YrotS(field_0x990);

    cLib_addCalc2(&field_0x984[0], 0.0f, 0.1f, 125.0f);
    cLib_addCalc2(&field_0x984[2], 0.0f, 0.1f, 125.0f);

    for (int i = 0; i < 3; i++) {
        vec3.set(0.0f, 0.0f, field_0x984[i] * cM_ssin(field_0x992));
        mDoMtx_stack_c::multVec(&vec3, &vec4);
        field_0x908[i].x = -vec4.z;
        field_0x908[i].z = -vec4.x;
    }

    cLib_chaseS(&field_0x992, 0, 0x555);

    if (mLookMode == LOOK_RESET) {
        for (int i = 0; i < 3; i++) {
            mLookatAngle[i].setall(0);
        }
    }

    J3DModelData* model_data = mpMorf->getModel()->getModelData();

    setMtx();
    lookat();

    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(4));
    mDoMtx_stack_c::multVecZero(&mHeadPos);
    mDoMtx_stack_c::multVec(&eyeOffset, &eyePos);
    eyeOffset.y = 0.0f;
    mDoMtx_stack_c::multVec(&eyeOffset, &vec3);
    mHeadAngle.x = cLib_targetAngleX(&mHeadPos, &vec3);
    mHeadAngle.y = cLib_targetAngleY(&mHeadPos, &vec3);

    cXyz* attn_pos = mLookat.getAttnPos();
    if (attn_pos != NULL) {
        vec2 = *attn_pos - eyePos;
        mEyeAngle.y = -(mLookatAngle[2].y + mCurAngle.y);
        mEyeAngle.y += cM_atan2s(vec2.x, vec2.z);
        mEyeAngle.x = -cM_atan2s(vec2.y, vec2.absXZ());
        mEyeAngle.x += mHeadAngle.x;
    } else {
        mEyeAngle.x = mEyeAngle.y = 0;
    }

    f32 extra_height = 0.0f;
    f32 extra_radius = 0.0f;
    vec2.set(0.0f, 0.0f, 0.0f);
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(mCurAngle.x, mCurAngle.y, mCurAngle.z);
    mDoMtx_stack_c::multVec(&vec2, &center);
    attention_info.position.set(center.x, center.y + offset, center.z);

    if (!mHide && !mTwilight) {
        if (!mIsDamaged) {
            mCcCyl.SetTgType(0xd8fbfdff);
            mCcCyl.SetTgSPrm(0x1f);
            mCcCyl.OnTgNoHitMark();
        } else {
            mCcCyl.SetTgType(0);
            mCcCyl.SetTgSPrm(0);
        }

        mCcCyl.SetC(center);
        mCcCyl.SetH(daNpc_zrZ_Param_c::m.mCylH + extra_height);
        mCcCyl.SetR(daNpc_zrZ_Param_c::m.mWallR + extra_radius);
        dComIfG_Ccsp()->Set(&mCcCyl);
        mCcCyl.SetCoSPrm(0x69);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_zrZ_c::setAttnPos() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/setAttnPos__11daNpc_zrZ_cFv.s"
}
#pragma pop
#endif

/* 80B95BB8-80B95C6C 001ED8 00B4+00 1/0 0/0 0/0 .text            setMtx__11daNpc_zrZ_cFv */
void daNpc_zrZ_c::setMtx() {
    J3DModel* model = mpMorf->getModel();
    cXyz pos = current.pos;
    pos.y += mModulationOffset;
    mDoMtx_stack_c::transS(pos);
    mDoMtx_stack_c::ZXYrotM(mCurAngle);
    mDoMtx_stack_c::scaleM(scale);
    model->setBaseTRMtx(mDoMtx_stack_c::get());
    model->setUserArea((u32)this);

    if (mAnmFlags & ANM_PLAY_BCK) {
        mBckAnm.getBckAnm()->setFrame(mBckAnm.getFrame());
        mpMorf->modelCalc();
    } else {
        mpMorf->modelCalc();
    }
}

/* 80B95C6C-80B95DD0 001F8C 0164+00 1/0 0/0 0/0 .text            setExpressionAnm__11daNpc_zrZ_cFib
 */
#ifdef NONMATCHING
// matches with literals
bool daNpc_zrZ_c::setExpressionAnm(int i_idx, bool i_modify) {
    J3DAnmTransform* bck_anm = NULL;
    mAnmFlags &= ~ANM_EXPRESSION_FLAGS;

    if (mType == 1) {
        if (l_bckGTGetParamList[i_idx].fileIdx >= 0) {
            bck_anm = getTrnsfrmKeyAnmP(l_resNames[l_bckGTGetParamList[i_idx].arcIdx],
                                        l_bckGTGetParamList[i_idx].fileIdx);
        }
    } else {
        if (l_bckGetParamList[i_idx].fileIdx >= 0) {
            bck_anm = getTrnsfrmKeyAnmP(l_resNames[l_bckGetParamList[i_idx].arcIdx],
                                        l_bckGetParamList[i_idx].fileIdx);
        }
    }

    bool res = false;
    switch (i_idx) {
    case 0:
    case 1:
        res = setExpressionBtp(0);
        break;
    default:
        bck_anm = NULL;
        break;
    }

    if (!res) {
        return false;
    }

    if (bck_anm == NULL) {
        return true;
    }

    if (setBckAnm(bck_anm, 1.0f, J3DFrameCtrl::LOOP_ONCE_e, 0, -1, i_modify)) {
        mAnmFlags |= ANM_PLAY_BCK | ANM_PAUSE_BCK;
        mExpressionLoops = 0;
        return true;
    }

    return false;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daNpc_zrZ_c::setExpressionAnm(int param_0, bool param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/setExpressionAnm__11daNpc_zrZ_cFib.s"
}
#pragma pop
#endif

/* 80B95DD0-80B95F10 0020F0 0140+00 1/0 0/0 0/0 .text            setExpressionBtp__11daNpc_zrZ_cFi
 */
#ifdef NONMATCHING
// matches with literals
bool daNpc_zrZ_c::setExpressionBtp(int i_idx) {
    J3DAnmTexPattern* btp_anm = NULL;
    int attr = J3DFrameCtrl::LOOP_ONCE_e;
    mAnmFlags &= ~(ANM_PLAY_BTP | ANM_PAUSE_BTP | ANM_FLAG_800);

    if (mType == 1) {
        if (l_btpGTGetParamList[i_idx].fileIdx >= 0) {
            btp_anm = getTexPtrnAnmP(l_resNames[l_btpGTGetParamList[i_idx].arcIdx],
                                     l_btpGTGetParamList[i_idx].fileIdx);
        }
    } else {
        if (l_btpGetParamList[i_idx].fileIdx >= 0) {
            btp_anm = getTexPtrnAnmP(l_resNames[l_btpGetParamList[i_idx].arcIdx],
                                     l_btpGetParamList[i_idx].fileIdx);
        }
    }

    switch (i_idx) {
    case 0:
        attr = J3DFrameCtrl::LOOP_REPEAT_e;
        break;
    default:
        btp_anm = NULL;
        break;
    }

    if (btp_anm == NULL) {
        return true;
    }

    if (setBtpAnm(btp_anm, mpMorf->getModel()->getModelData(), 1.0f, attr)) {
        mAnmFlags |= ANM_PLAY_BTP | ANM_PAUSE_BTP;
        if (i_idx == 0) {
            mAnmFlags |= ANM_FLAG_800;
        }
        return true;
    }

    return false;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daNpc_zrZ_c::setExpressionBtp(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/setExpressionBtp__11daNpc_zrZ_cFi.s"
}
#pragma pop
#endif

/* 80B95F10-80B95F3C 002230 002C+00 1/0 0/0 0/0 .text            setExpression__11daNpc_zrZ_cFif */
void daNpc_zrZ_c::setExpression(int i_expression, f32 i_morf) {
    if (i_expression >= 0 && i_expression < 2) {
        mExpression = i_expression;
        mExpressionMorfOverride = i_morf;
        mExpressionPrevPhase = -1;
        mExpressionPhase = 0;
    }
}

/* 80B95F3C-80B9612C 00225C 01F0+00 1/0 0/0 0/0 .text            setMotionAnm__11daNpc_zrZ_cFif */
#ifdef NONMATCHING
// matches with literals
void daNpc_zrZ_c::setMotionAnm(int i_idx, f32 i_morf) {
    J3DAnmTransformKey* bck_anm = NULL;
    J3DAnmTextureSRTKey* btk_anm = NULL;
    int attr = J3DFrameCtrl::LOOP_REPEAT_e;
    mAnmFlags &= ~ANM_MOTION_FLAGS;

    if (mType == 1) {
        if (l_bckGTGetParamList[i_idx].fileIdx >= 0) {
            bck_anm = getTrnsfrmKeyAnmP(l_resNames[l_bckGTGetParamList[i_idx].arcIdx],
                                        l_bckGTGetParamList[i_idx].fileIdx);
        }
    } else {
        if (l_bckGetParamList[i_idx].fileIdx >= 0) {
            bck_anm = getTrnsfrmKeyAnmP(l_resNames[l_bckGetParamList[i_idx].arcIdx],
                                        l_bckGetParamList[i_idx].fileIdx);
        }
    }

    switch (i_idx) {
    case 2:
    case 3:
        break;
    case 4:
        attr = J3DFrameCtrl::LOOP_ONCE_e;
        break;
    default:
        bck_anm = NULL;
        btk_anm = NULL;
        break;
    }

    if (mType == 1) {
        if (l_btkGetParamList[0].fileIdx >= 0) {
            btk_anm = getTexSRTKeyAnmP(l_resNames[l_btkGetParamList[0].arcIdx],
                                       l_btkGetParamList[0].fileIdx);
        }
    } else {
        if (l_btkGetParamList[0].fileIdx >= 0) {
            btk_anm = getTexSRTKeyAnmP(l_resNames[l_btkGetParamList[0].arcIdx],
                                       l_btkGetParamList[0].fileIdx);
        }
    }

    if (btk_anm != NULL && setBtkAnm(btk_anm, mpMorf->getModel()->getModelData(), 1.0f, 2)) {
        mAnmFlags |= ANM_PLAY_BTK | ANM_PAUSE_BTK;
    }

    if (bck_anm != NULL && setMcaMorfAnm(bck_anm, 1.0f, i_morf, attr, 0, -1)) {
        mAnmFlags |= ANM_PLAY_MORF | ANM_PAUSE_MORF;
        mMotionLoops = 0;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_zrZ_c::setMotionAnm(int param_0, f32 param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/setMotionAnm__11daNpc_zrZ_cFif.s"
}
#pragma pop
#endif

/* 80B9612C-80B96170 00244C 0044+00 1/0 0/0 0/0 .text            setMotion__11daNpc_zrZ_cFifi */
void daNpc_zrZ_c::setMotion(int i_motion, f32 i_morf, BOOL i_restart) {
    s16 motion = i_motion;
    if (i_restart || mMotion != motion) {
        if (i_motion >= 0 && i_motion < 3) {
            mMotion = motion;
            mMotionMorfOverride = i_morf;
            mMotionPrevPhase = -1;
            mMotionPhase = 0;
        }
    }
}

/* 80B96170-80B96178 002490 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__11daNpc_zrZ_cFv */
BOOL daNpc_zrZ_c::drawDbgInfo() {
    return false;
}

/* 80B96178-80B9617C 002498 0004+00 1/0 0/0 0/0 .text            drawOtherMdls__11daNpc_zrZ_cFv */
void daNpc_zrZ_c::drawOtherMdls() {
    /* empty function */
}

/* 80B9617C-80B961B4 00249C 0038+00 1/1 0/0 0/0 .text            getTypeFromParam__11daNpc_zrZ_cFv
 */
u8 daNpc_zrZ_c::getTypeFromParam() {
    switch (fopAcM_GetParam(this) & 0xff) {
    case 0:
        return 1;
    case 1:
        return 0;
    default:
        return 1;
    }
}

/* 80B961B4-80B96268 0024D4 00B4+00 1/1 0/0 0/0 .text            isDelete__11daNpc_zrZ_cFv */
BOOL daNpc_zrZ_c::isDelete() {
    if (((mDemoMode == DEMO_COME_HERE || mDemoMode == DEMO_WAIT)
                    && dComIfGs_isSwitch(mSwitch1, fopAcM_GetRoomNo(this)))
        || (mDemoMode == DEMO_COME_HERE_2 && (!dComIfGs_isSwitch(mSwitch1, fopAcM_GetRoomNo(this))
                                          || dComIfGs_isSwitch(mSwitch2, fopAcM_GetRoomNo(this)))))
    {
        return true;
    } else {
        return false;
    }
}

/* ############################################################################################## */
/* 80B9B0D4-80B9B0D8 0000E8 0004+00 0/1 0/0 0/0 .rodata          @5371 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5371 = 100.0f;
COMPILER_STRIP_GATE(0x80B9B0D4, &lit_5371);
#pragma pop

/* 80B96268-80B9652C 002588 02C4+00 1/1 0/0 0/0 .text            reset__11daNpc_zrZ_cFv */
#ifdef NONMATCHING
// matches with literals
void daNpc_zrZ_c::reset() {
    initialize();
    mpMatAnm->initialize();
    mPath.initialize();
    if (mPath.setPathInfo(getPathNoFromParam(), fopAcM_GetRoomNo(this), 0)) {
        mPath.setRange(100.0f);
    }
    mLookat.initialize();
    for (int i = 0; i < 2; i++) {
        mActorMngr[i].initialize();
    }

    mpNextActionFn = NULL;
    mpActionFn = NULL;
    field_0x1434 = 0;
    field_0x1438 = 0;
    field_0x143c = 0;
    field_0x1440 = 0;
    mLookMode = -1;
    mMode = 0;
    mHide = false;

    if (mDemoMode == DEMO_WAIT) {
        mIsLeading = false;
        tevStr.mFogColor.a = 0;
        mpNextActionFn = &wait;
    } else if (mDemoMode == DEMO_COME_HERE || mDemoMode == DEMO_COME_HERE_2) {
        mIsLeading = false;
        tevStr.mFogColor.a = 0xff;
    } else {
        mIsLeading = true;
        tevStr.mFogColor.a = 0xff;
    }

    setLookMode(LOOK_NONE);
    current.pos = home.pos;
    old.pos = current.pos;
    current.angle.set(0, home.angle.y, 0);
    old.angle = current.angle;
    shape_angle = current.angle;
    mCurAngle = current.angle;
    mOldAngle = mCurAngle;
    speedF = 0.0f;
    speed.setall(0.0f);
    mItemID = -1;
    mModulationParam = 90;
    mModulationOffset = 0.0f;
    mIsMoving = false;
    mSpeed = 0.0f;
    mMoveAngle.x = current.angle.x;
    mMoveAngle.y = current.angle.y + 0x8000;
    mMoveAngle.z = current.angle.z;
    mpGravestoneActor = NULL;
    mpClothActor = NULL;
    mpRockActor = NULL;
    mLimbCalcPos = current.pos;
    mLimbCalcPos.y -= daNpc_zrZ_Param_c::m.field_0x80;
    mLimbAngle.set(0, 0, 0);
    mClothesObtained = false;
    mMusicSet = false;
    mSealReleased = false;
    field_0x9ee = true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_zrZ_c::reset() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/reset__11daNpc_zrZ_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80B9B0D8-80B9B0E4 0000EC 000C+00 0/1 0/0 0/0 .rodata          @5375 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5375[12] = {
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80B9B0D8, &lit_5375);
#pragma pop

/* 80B9B0E4-80B9B0F0 0000F8 000C+00 0/1 0/0 0/0 .rodata          @5376 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5376[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B9B0E4, &lit_5376);
#pragma pop

/* 80B9B0F0-80B9B0F8 000104 0008+00 0/1 0/0 0/0 .rodata          @5377 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5377[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B9B0F0, &lit_5377);
#pragma pop

/* 80B9B0F8-80B9B104 00010C 000C+00 0/1 0/0 0/0 .rodata          @5378 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5378[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B9B0F8, &lit_5378);
#pragma pop

/* 80B9B104-80B9B108 000118 0004+00 0/1 0/0 0/0 .rodata          @5379 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5379[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B9B104, &lit_5379);
#pragma pop

/* 80B9B108-80B9B110 00011C 0008+00 0/1 0/0 0/0 .rodata          @5380 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5380[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B9B108, &lit_5380);
#pragma pop

/* 80B9652C-80B96618 00284C 00EC+00 1/1 0/0 0/0 .text            playExpression__11daNpc_zrZ_cFv */
#ifdef NONMATCHING
// matches with literals
void daNpc_zrZ_c::playExpression() {
    daNpcF_anmPlayData dat0a = {ANM_F_TALK_A, daNpc_zrZ_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData dat0b = {ANM_NONE, daNpc_zrZ_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat0[2] = {&dat0a, &dat0b};
    daNpcF_anmPlayData dat1 = {ANM_NONE, daNpc_zrZ_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat1[1] = {&dat1};
    daNpcF_anmPlayData** ppDat[2] = {
        pDat0, pDat1,
    };
    if (mExpression >= 0 && mExpression < 2) {
        playExpressionAnm(ppDat);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_zrZ_c::playExpression() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/playExpression__11daNpc_zrZ_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80B9B110-80B9B11C 000124 000C+00 0/1 0/0 0/0 .rodata          @5393 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5393[12] = {
    0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B9B110, &lit_5393);
#pragma pop

/* 80B9B11C-80B9B120 000130 0004+00 0/1 0/0 0/0 .rodata          @5394 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5394[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B9B11C, &lit_5394);
#pragma pop

/* 80B9B120-80B9B12C 000134 000C+00 0/1 0/0 0/0 .rodata          @5395 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5395[12] = {
    0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80B9B120, &lit_5395);
#pragma pop

/* 80B9B12C-80B9B138 000140 000C+00 0/1 0/0 0/0 .rodata          @5396 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5396[12] = {
    0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B9B12C, &lit_5396);
#pragma pop

/* 80B9B138-80B9B140 00014C 0008+00 0/1 0/0 0/0 .rodata          @5397 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5397[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B9B138, &lit_5397);
#pragma pop

/* 80B9B140-80B9B14C 000154 000C+00 0/1 0/0 0/0 .rodata          @5398 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5398[12] = {
    0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B9B140, &lit_5398);
#pragma pop

/* 80B9B14C-80B9B150 000160 0004+00 0/1 0/0 0/0 .rodata          @5399 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5399[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B9B14C, &lit_5399);
#pragma pop

/* 80B9B150-80B9B15C 000164 000C+00 0/1 0/0 0/0 .rodata          @5400 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5400[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B9B150, &lit_5400);
#pragma pop

/* 80B96618-80B96740 002938 0128+00 1/1 0/0 0/0 .text            playMotion__11daNpc_zrZ_cFv */
#ifdef NONMATCHING
// matches with literals
void daNpc_zrZ_c::playMotion() {
    daNpcF_anmPlayData dat0 = {ANM_WAIT_GT_A, daNpc_zrZ_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat0[1] = {&dat0};
    daNpcF_anmPlayData dat1a = {ANM_COMEON, daNpc_zrZ_Param_c::m.mMorfFrames, 1};
    daNpcF_anmPlayData dat1b = {ANM_WAIT_GT_A, daNpc_zrZ_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat1[2] = {&dat1a, &dat1b};
    daNpcF_anmPlayData dat2 = {ANM_LEAD, daNpc_zrZ_Param_c::m.mMorfFrames, 0};
    daNpcF_anmPlayData* pDat2[1] = {&dat2};
    daNpcF_anmPlayData** ppDat[3] = {
        pDat0, pDat1, pDat2,
    };
    if (mMotion >= 0 && mMotion < 3) {
        playMotionAnm(ppDat);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_zrZ_c::playMotion() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/playMotion__11daNpc_zrZ_cFv.s"
}
#pragma pop
#endif

/* 80B96740-80B9676C 002A60 002C+00 2/2 0/0 0/0 .text
 * chkAction__11daNpc_zrZ_cFM11daNpc_zrZ_cFPCvPvPv_i            */
BOOL daNpc_zrZ_c::chkAction(ActionFn i_action) {
    return mpActionFn == i_action;
}

/* 80B9676C-80B96814 002A8C 00A8+00 2/2 0/0 0/0 .text
 * setAction__11daNpc_zrZ_cFM11daNpc_zrZ_cFPCvPvPv_i            */
BOOL daNpc_zrZ_c::setAction(ActionFn i_action) {
    mMode = 3;
    if (mpActionFn != NULL) {
        (this->*mpActionFn)(NULL);
    }
    mMode = 0;
    mpActionFn = i_action;
    if (mpActionFn != NULL) {
        (this->*mpActionFn)(NULL);
    }
    return true;
}

/* 80B96814-80B968E0 002B34 00CC+00 1/1 0/0 0/0 .text            selectAction__11daNpc_zrZ_cFv */
#ifdef NONMATCHING
// matches with data
BOOL daNpc_zrZ_c::selectAction() {
    mpNextActionFn = NULL;
    if (daNpc_zrZ_Param_c::m.mTest) {
        mpNextActionFn = &test;
    } else {
        switch (mDemoMode) {
        case DEMO_COME_HERE:
            mpNextActionFn = &comeHere;
            break;
        case DEMO_COME_HERE_2:
            mpNextActionFn = &comeHere2;
            break;
        default:
            mpNextActionFn = &wait;
            break;
        }
    }
    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrZ_c::selectAction() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/selectAction__11daNpc_zrZ_cFv.s"
}
#pragma pop
#endif

/* 80B968E0-80B969F4 002C00 0114+00 1/1 0/0 0/0 .text            doNormalAction__11daNpc_zrZ_cFi */
void daNpc_zrZ_c::doNormalAction(BOOL param_0) {
    if (param_0 && hitChk2(&mCcCyl, true, false)) {
        int timer;
        if (mCutType == daPy_py_c::CUT_TYPE_TURN_RIGHT) {
            timer = 20;
        } else {
            timer = daNpc_zrZ_Param_c::m.mDamageTimer;
        }
        setDamage(timer, EXPR_NONE, MOT_WAIT_GT_A);
        setLookMode(LOOK_RESET);
    } else {
        if (mIsDamaged && mDamageTimer == 0) {
            mMode = 0;
            mIsDamaged = false;
        }
    }

    mOrderEvtNo = EVT_NONE;
    if (mpNextActionFn != NULL) {
        if (mpActionFn == mpNextActionFn) {
            (this->*mpActionFn)(NULL);
        } else {
            setAction(mpNextActionFn);
        }
    }
}

/* 80B969F4-80B96DF0 002D14 03FC+00 1/1 0/0 0/0 .text            doEvent__11daNpc_zrZ_cFv */
#ifdef NONMATCHING
// matches with literals / data
BOOL daNpc_zrZ_c::doEvent() {
    BOOL ret = false;

    if (dComIfGp_event_runCheck() != false) {
        dEvent_manager_c& event_manager = dComIfGp_getEventManager();

        if (eventInfo.checkCommandTalk() || eventInfo.i_checkCommandDemoAccrpt()) {
            mOrderNewEvt = false;
        }

        if (eventInfo.checkCommandTalk()) {
            if (chkAction(&talk)) {
                (this->*mpActionFn)(NULL);
            } else if (dComIfGp_event_chkTalkXY() == false || dComIfGp_evmng_ChkPresentEnd()) {
                setAction(&talk);
            }
            ret = true;
        } else {
            if (mItemID != -1) {
                dComIfGp_event_setItemPartnerId(mItemID);
                mItemID = -1;
            }

            int staff_id = event_manager.getMyStaffId(l_myName, NULL, 0);
            if (staff_id != -1) {
                mStaffID = staff_id;
                int act_idx = event_manager.getMyActIdx(staff_id, mEvtCutNameList,
                                                        ARRAY_SIZE(mEvtCutNameList), 0, 0);
                if ((this->*mEvtCutList[act_idx])(staff_id)) {
                    event_manager.cutEnd(staff_id);
                }
                ret = true;
            }

            if (eventInfo.i_checkCommandDemoAccrpt()) {
                if (mEventIdx != -1 && event_manager.endCheck(mEventIdx)) {
                    switch (mOrderEvtNo) {
                    case EVT_GET_AFTER:
                        dComIfGp_event_reset();
                        mOrderEvtNo = EVT_NONE;
                        mEventIdx = -1;
                        dComIfGs_onSwitch(mSwitch2, fopAcM_GetRoomNo(this));
                        fopAcM_delete(this);
                        break;

                    case EVT_CLOTHES_GET:
                        dComIfGp_event_reset();
                        mClothesObtained = true;
                        mOrderEvtNo = EVT_CLOTHES_GET;
                        mEventIdx = -1;
                        dComIfGs_onSwitch(mSwitch2, fopAcM_GetRoomNo(this));
                        fopAcM_delete(this);
                        break;

                    case EVT_HELP_PRINCE:
                        dComIfGp_event_reset();
                        mOrderEvtNo = EVT_NONE;
                        mEventIdx = -1;
                        fopAcM_delete(this);
                        break;

                    case EVT_SEAL_RELEASE:
                        dComIfGp_event_reset();
                        mOrderEvtNo = EVT_NONE;
                        mEventIdx = -1;
                        if (mpRockActor != NULL) {
                            fopAcM_delete(mpRockActor);
                        }
                        break;

                    default:
                        dComIfGp_event_reset();
                        mOrderEvtNo = EVT_NONE;
                        mEventIdx = -1;
                        break;
                    }
                } else {
                    switch (mOrderEvtNo) {
                    case EVT_SEAL_RELEASE:
                        setSkipZev(EVT_SEAL_RELEASE, EVT_SR_SKIP);
                        dComIfGp_getEvent().onSkipFade();
                        break;
                    }
                }
            }
        }

        int expression, motion;
        int prev_msg_timer = mMsgTimer;
        if (ctrlMsgAnm(expression, motion, this, false) != 0) {
            if (!field_0x9eb) {
                setExpression(expression, -1.0f);
                setMotion(motion, -1.0f, false);
            }
        } else if (prev_msg_timer != 0 && !field_0x9eb) {
            setExpressionTalkAfter();
        }
    } else {
        mMsgTimer = 0;
        if (mStaffID != -1) {
            mpActionFn = NULL;
            mStaffID = -1;
        }
    }

    return ret;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrZ_c::doEvent() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/doEvent__11daNpc_zrZ_cFv.s"
}
#pragma pop
#endif

/* 80B96DF0-80B96E7C 003110 008C+00 1/1 0/0 0/0 .text            setSkipZev__11daNpc_zrZ_cFii */
BOOL daNpc_zrZ_c::setSkipZev(int i_idx1, int i_idx2) {
    if (!strcmp(dComIfGp_getEventManager().getRunEventName(), l_evtNames[i_idx1])) {
        dComIfGp_getEvent().setSkipZev(this, l_evtNames[i_idx2]);
        return true;
    }
    return false;
}

/* 80B96E7C-80B96EA0 00319C 0024+00 11/11 0/0 0/0 .text            setLookMode__11daNpc_zrZ_cFi */
void daNpc_zrZ_c::setLookMode(int i_lookMode) {
    if (i_lookMode >= 0 && i_lookMode < 5 && i_lookMode != mLookMode) {
        mLookMode = i_lookMode;
    }
}

/* ############################################################################################## */
/* 80B9B15C-80B9B168 000170 000C+00 0/1 0/0 0/0 .rodata          @5576 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5576[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B9B15C, &lit_5576);
#pragma pop

/* 80B9B168-80B9B16C 00017C 0004+00 0/1 0/0 0/0 .rodata          @5629 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5629 = -80.0f;
COMPILER_STRIP_GATE(0x80B9B168, &lit_5629);
#pragma pop

/* 80B9B16C-80B9B170 000180 0004+00 0/1 0/0 0/0 .rodata          @5630 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5630 = 80.0f;
COMPILER_STRIP_GATE(0x80B9B16C, &lit_5630);
#pragma pop

/* 80B9B170-80B9B174 000184 0004+00 0/1 0/0 0/0 .rodata          @5631 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5631 = 40.0f;
COMPILER_STRIP_GATE(0x80B9B170, &lit_5631);
#pragma pop

/* 80B96EA0-80B97128 0031C0 0288+00 1/1 0/0 0/0 .text            lookat__11daNpc_zrZ_cFv */
#ifdef NONMATCHING
// matches with literals
void daNpc_zrZ_c::lookat() {
    fopAc_ac_c* attn_actor = NULL;
    J3DModel* model = mpMorf->getModel();
    BOOL snap = false;
    f32 body_down_angle = daNpc_zrZ_Param_c::m.mBodyDownAngle;
    f32 body_up_angle = daNpc_zrZ_Param_c::m.mBodyUpAngle;
    f32 body_right_angle = daNpc_zrZ_Param_c::m.mBodyRightAngle;
    f32 body_left_angle = daNpc_zrZ_Param_c::m.mBodyLeftAngle;
    f32 head_down_angle = daNpc_zrZ_Param_c::m.mHeadDownAngle;
    f32 head_up_angle = daNpc_zrZ_Param_c::m.mHeadUpAngle;
    f32 head_right_angle = daNpc_zrZ_Param_c::m.mHeadRightAngle;
    f32 head_left_angle = daNpc_zrZ_Param_c::m.mHeadLeftAngle;
    s16 angle_delta = mCurAngle.y - mOldAngle.y;
    cXyz lookat_pos[3] = {mLookatPos[0], mLookatPos[1], mLookatPos[2]};
    csXyz* lookat_angle[3] = {&mLookatAngle[0], &mLookatAngle[1], &mLookatAngle[2]};

    switch (mLookMode) {
    case LOOK_NONE:
        break;
    case LOOK_RESET:
        snap = true;
        break;
    case LOOK_PLAYER:
    case LOOK_PLAYER_TALK:
        attn_actor = daPy_getPlayerActorClass();
        if (mLookMode == LOOK_PLAYER_TALK) {
            head_right_angle = -80.0f;
            head_left_angle = 80.0f;
        }
        break;
    case LOOK_ACTOR:
        attn_actor = mActorMngr[1].getActorP();
        break;
    }

    if (attn_actor != NULL) {
        mLookPos = attn_actor->attention_info.position;
        if (mLookMode != LOOK_PLAYER && mLookMode != LOOK_PLAYER_TALK && mLookMode != LOOK_ACTOR) {
            mLookPos.y -= 40.0f;
        }
        mLookat.setAttnPos(&mLookPos);
    } else {
        mLookat.setAttnPos(NULL);
    }

    mLookat.setParam(body_down_angle, body_up_angle, body_right_angle, body_left_angle,
                     0.0f, 0.0f, 0.0f, 0.0f,
                     head_down_angle, head_up_angle, head_right_angle, head_left_angle,
                     mCurAngle.y, lookat_pos);
    mLookat.calc(this, model->getBaseTRMtx(), lookat_angle, snap, angle_delta, false);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_zrZ_c::lookat() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/lookat__11daNpc_zrZ_cFv.s"
}
#pragma pop
#endif

/* 80B97128-80B97160 003448 0038+00 1/1 0/0 0/0 .text setExpressionTalkAfter__11daNpc_zrZ_cFv */
#ifdef NONMATCHING
// matches with literals
void daNpc_zrZ_c::setExpressionTalkAfter() {
    setExpression(EXPR_NONE, -1.0f);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_zrZ_c::setExpressionTalkAfter() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/setExpressionTalkAfter__11daNpc_zrZ_cFv.s"
}
#pragma pop
#endif

/* 80B97160-80B971BC 003480 005C+00 1/1 0/0 0/0 .text            lightReady__11daNpc_zrZ_cFv */
#ifdef NONMATCHING
// matches with literals
void daNpc_zrZ_c::lightReady() {
    setLightPos();
    mLight.mColor.r = 0;
    mLight.mColor.g = 0;
    mLight.mColor.b = 0;
    mLight.mPow = 0.0f;
    mLight.mFluctuation = 0.0f;
    mAllcolRatio = 1.0f;
    mUseLightEffect = false;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_zrZ_c::lightReady() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/lightReady__11daNpc_zrZ_cFv.s"
}
#pragma pop
#endif

/* 80B971BC-80B9723C 0034DC 0080+00 1/1 0/0 0/0 .text            setLightPos__11daNpc_zrZ_cFv */
#ifdef NONMATCHING
// matches with literals
void daNpc_zrZ_c::setLightPos() {
    fopAc_ac_c* gravestone = (fopAc_ac_c*)fpcM_Search(s_sub, this);
    if (gravestone != NULL) {
        cXyz offset(0.0f, 0.0f, 0.0f);
        cXyz pos;
        cLib_offsetPos(&pos, &gravestone->current.pos, gravestone->current.angle.y, &offset);
        mLight.mPosition.set(pos.x, pos.y, pos.z);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_zrZ_c::setLightPos() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/setLightPos__11daNpc_zrZ_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80B9B174-80B9B178 000188 0004+00 0/1 0/0 0/0 .rodata          @5697 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5697 = 70.0f;
COMPILER_STRIP_GATE(0x80B9B174, &lit_5697);
#pragma pop

/* 80B9B178-80B9B17C 00018C 0004+00 0/1 0/0 0/0 .rodata          @5698 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5698 = 50.0f;
COMPILER_STRIP_GATE(0x80B9B178, &lit_5698);
#pragma pop

/* 80B9B17C-80B9B180 000190 0004+00 0/1 0/0 0/0 .rodata          @5699 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5699 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80B9B17C, &lit_5699);
#pragma pop

/* 80B9B180-80B9B184 000194 0004+00 0/1 0/0 0/0 .rodata          @5700 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5700 = 5.0f;
COMPILER_STRIP_GATE(0x80B9B180, &lit_5700);
#pragma pop

/* 80B9B184-80B9B188 000198 0004+00 0/1 0/0 0/0 .rodata          @5701 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5701 = 14.0f;
COMPILER_STRIP_GATE(0x80B9B184, &lit_5701);
#pragma pop

/* 80B9723C-80B972EC 00355C 00B0+00 1/1 0/0 0/0 .text            lightPowerCalc__11daNpc_zrZ_cFi */
#ifdef NONMATCHING
// matches with literals
void daNpc_zrZ_c::lightPowerCalc(int param_0) {
    if (param_0 == 30) {
        mLight.mPow = (50 - mEventTimer) * 70.0f / 50.0f;
    } else if (mLightEffectFrame > 200) {
        cLib_addCalc0(&mLight.mPow, 0.05f, 5.0f);
    } else {
        mLight.mPow = cM_ssin(mLightEffectFrame * 3500) * 14.0f + 70.0f;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_zrZ_c::lightPowerCalc(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/lightPowerCalc__11daNpc_zrZ_cFi.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80B9B188-80B9B198 00019C 0010+00 1/1 0/0 0/0 .rodata          key_frame$5706 */
static int const key_frame[4] = {
    0, 50, 190, 220,
};

/* 80B9B198-80B9B1B8 0001AC 0020+00 1/1 0/0 0/0 .rodata          key_color$5707 */
static GXColorS10 const key_color[4] = {
    {0x00, 0x00, 0x00, 0xFF},
    {0xFF, 0xC3, 0x8A, 0xFF},
    {0xFF, 0xC3, 0x8A, 0xFF},
    {0x00, 0x00, 0x00, 0xFF},
};

/* 80B972EC-80B974BC 00360C 01D0+00 1/1 0/0 0/0 .text            lightColorProc__11daNpc_zrZ_cFv */
#ifdef NONMATCHING
// regalloc
void daNpc_zrZ_c::lightColorProc() {
    static int const key_frame[4] = {
        0, 50, 190, 220,
    };

    static GXColorS10 const key_color[4] = {
        {0x00, 0x00, 0x00, 0xFF},
        {0xFF, 0xC3, 0x8A, 0xFF},
        {0xFF, 0xC3, 0x8A, 0xFF},
        {0x00, 0x00, 0x00, 0xFF},
    };

    if (mLightEffectFrame >= 220) {
        return;
    }

    int prev_key_frame, next_key_frame, next, i;
    for (i = 0; i < 4; i++) {
        if (key_frame[i] <= mLightEffectFrame && key_frame[i + 1] > mLightEffectFrame) {
            prev_key_frame = key_frame[i];
            next_key_frame = key_frame[i + 1];
            next = i + 1;
            break;
        }
    }

    int frames = next_key_frame - prev_key_frame;
    s16 step_r = fabs(key_color[i + 1].r - key_color[i].r) / frames;
    s16 step_g = fabs(key_color[i + 1].g - key_color[i].g) / frames;
    s16 step_b = fabs(key_color[i + 1].b - key_color[i].b) / frames;
    cLib_chaseS(&mLight.mColor.r, key_color[next].r, ++step_r);
    cLib_chaseS(&mLight.mColor.g, key_color[next].g, ++step_g);
    cLib_chaseS(&mLight.mColor.b, key_color[next].b, ++step_b);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_zrZ_c::lightColorProc() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/lightColorProc__11daNpc_zrZ_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80B9B1B8-80B9B1C0 0001CC 0008+00 0/0 0/0 0/0 .rodata          @5782 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5782[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80B9B1B8, &lit_5782);
#pragma pop

/* 80B9B1C0-80B9B1C4 0001D4 0004+00 0/1 0/0 0/0 .rodata          @5900 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5900 = 0xC4608148;
COMPILER_STRIP_GATE(0x80B9B1C0, &lit_5900);
#pragma pop

/* 80B9B1C4-80B9B1C8 0001D8 0004+00 0/1 0/0 0/0 .rodata          @5901 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5901 = 0x41690A3D;
COMPILER_STRIP_GATE(0x80B9B1C4, &lit_5901);
#pragma pop

/* 80B9B1C8-80B9B1CC 0001DC 0004+00 0/1 0/0 0/0 .rodata          @5902 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5902 = 0xC47AA117;
COMPILER_STRIP_GATE(0x80B9B1C8, &lit_5902);
#pragma pop

/* 80B9B1CC-80B9B1D0 0001E0 0004+00 1/1 0/0 0/0 .rodata          @5903 */
SECTION_RODATA static f32 const lit_5903 = 255.0f;
COMPILER_STRIP_GATE(0x80B9B1CC, &lit_5903);

/* 80B9B1D0-80B9B1D4 0001E4 0004+00 0/0 0/0 0/0 .rodata          @5904 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5904 = 60.0f;
COMPILER_STRIP_GATE(0x80B9B1D0, &lit_5904);
#pragma pop

/* 80B9B1D4-80B9B1DC 0001E8 0004+04 0/0 0/0 0/0 .rodata          @5905 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5905[1 + 1 /* padding */] = {
    30.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80B9B1D4, &lit_5905);
#pragma pop

/* 80B9B1DC-80B9B1E4 0001F0 0008+00 0/1 0/0 0/0 .rodata          @5907 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5907[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B9B1DC, &lit_5907);
#pragma pop

/* 80B9B220-80B9B220 000234 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B9B27A = "prm";
SECTION_DEAD static char const* const stringBase_80B9B27E = "timer";
#pragma pop

/* 80B974BC-80B97B78 0037DC 06BC+00 2/0 0/0 0/0 .text            ECut_helpPrince__11daNpc_zrZ_cFi */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrZ_c::ECut_helpPrince(int i_staffID) {
    dEvent_manager_c& event_manager = dComIfGp_getEventManager();
    daPy_py_c* player = daPy_getPlayerActorClass();
    BOOL ret = false;
    int prm = -1;
    int timer = 0;
    csXyz angle;
    int* prm_p = dComIfGp_evmng_getMyIntegerP(i_staffID, "prm");
    if (prm_p != NULL) {
        prm = *prm_p;
    }
    int* timer_p = dComIfGp_evmng_getMyIntegerP(i_staffID, "timer");
    if (timer_p != NULL) {
        timer = *timer_p;
    }

    if (event_manager.getIsAddvance(i_staffID)) {
        switch (prm) {
        case 11:
            initTalk(0x3e9, NULL);
            setLookMode(LOOK_NONE);
            Z2GetAudioMgr()->i_muteSceneBgm(90, 0.0f);
            mIsLeading = true;
            daNpcF_offTmpBit(0xb);
            daNpcF_offTmpBit(0xc);
            daNpcF_offTmpBit(0xd);
            daNpcF_offTmpBit(0xe);
            daNpcF_offTmpBit(0xf);
            daNpcF_offTmpBit(0x33);
            daNpcF_offTmpBit(0x34);
            break;

        case 20:
            mEventTimer = timer;
            break;

        case 40:
            mEventTimer = timer;
            break;

        case 50: {
            initTalk(0x3e9, NULL);
            angle = player->current.angle;
            angle.y = fopAcM_searchPlayerAngleY(this) + 0x8000;
            cXyz pos(-898.02f, 14.565f, -1002.517f);
            player->setPlayerPosAndAngle(&pos, &angle);
            break;
        }

        case 51:
            break;

        case 60:
            initTalk(0x3e9, NULL);
            setAngle(fopAcM_searchPlayerAngleY(this));
            setLookMode(LOOK_PLAYER);
            break;

        case 70:
            break;

        case 71:
            initTalk(0x3e9, NULL);
            break;

        case 80:
            initTalk(0x3e9, NULL);
            break;

        case 81:
            break;

        case 82:
            break;

        case 83:
            break;

        case 90:
            initTalk(0x3e9, NULL);
            break;

        case 91:
            break;

        case 92:
            break;

        case 93:
            break;

        case 100:
            initTalk(0x3e9, NULL);
            break;

        case 101:
            break;

        case 102:
            break;

        case 103:
            mEventTimer = timer;
            Z2GetAudioMgr()->subBgmStop();
            Z2GetAudioMgr()->i_unMuteSceneBgm(90);
            break;

        case 110:
            initTalk(0x3e9, NULL);
            break;

        case 111:
            break;

        case 112:
            break;

        case 113:
            break;
        }
    }

    switch (prm) {
    case 11:
        if (talkProc(NULL, true, NULL)) {
            ret = true;
            if (!mMusicSet) {
                mMusicSet = true;
                Z2GetAudioMgr()->subBgmStart(Z2BGM_LUTERA1);
            }
        }
        setAngle(fopAcM_searchPlayerAngleY(this));
        break;

    case 50:
        ret = true;
        break;

    case 51:
        if (talkProc(NULL, true, NULL)) {
            ret = true;
        }
        break;

    case 60:
        if (talkProc(NULL, true, NULL)) {
            ret = true;
        }
        break;

    case 71:
        if (talkProc(NULL, true, NULL)) {
            ret = true;
        }
        break;

    case 80:
        ret = true;
        break;

    case 81:
        ret = true;
        break;

    case 82:
        if (talkProc(NULL, true, NULL)) {
            ret = true;
        }
        break;

    case 90:
        ret = true;
        break;

    case 91:
        ret = true;
        break;

    case 92:
        ret = true;
        break;

    case 93:
        if (talkProc(NULL, true, NULL)) {
            ret = true;
        }
        break;

    case 100:
        ret = true;
        break;

    case 101:
        ret = true;
        break;

    case 102:
        if (talkProc(NULL, true, NULL)) {
            ret = true;
        }
        break;

    case 110:
        ret = true;
        break;

    case 111:
        ret = true;
        break;

    case 112:
        ret = true;
        break;

    case 113:
        if (talkProc(NULL, true, NULL)) {
            if (!dComIfGs_isSwitch(mSwitch1, fopAcM_GetRoomNo(this))) {
                dComIfGs_onSwitch(mSwitch1, fopAcM_GetRoomNo(this));
            }
            ret = true;
        }
        break;

    case 20:
    case 70:
        if (cLib_calcTimer(&mEventTimer) == 0) {
            ret = true;
        }
        break;

    case 40:
        if (cLib_calcTimer(&mEventTimer) == 0) {
            ret = true;
            tevStr.mFogColor.a = 0xff;
        } else {
            tevStr.mFogColor.a = (u8)((60 - mEventTimer) / 60.0f * 255.0f);
        }
        break;

    case 103:
        if (cLib_calcTimer(&mEventTimer) == 0) {
            ret = true;
            tevStr.mFogColor.a = 0;
        } else if (mEventTimer > 30) {
            tevStr.mFogColor.a = (u8)((mEventTimer - 30) / 30.0f * 255.0f);
        } else {
            tevStr.mFogColor.a = 0;
        }
        break;

    default:
        ret = true;
        break;
    }

    return ret;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrZ_c::ECut_helpPrince(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/ECut_helpPrince__11daNpc_zrZ_cFi.s"
}
#pragma pop
#endif

/* 80B97B78-80B97D7C 003E98 0204+00 1/0 0/0 0/0 .text            ECut_comeHere__11daNpc_zrZ_cFi */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrZ_c::ECut_comeHere(int i_staffID) {
    dEvent_manager_c& event_manager = dComIfGp_getEventManager();
    daPy_py_c* player = daPy_getPlayerActorClass();
    BOOL ret = false;
    int prm = -1;
    csXyz angle;
    bool facing_player;
    int* prm_p = dComIfGp_evmng_getMyIntegerP(i_staffID, "prm");
    if (prm_p != NULL) {
        prm = *prm_p;
    }

    if (event_manager.getIsAddvance(i_staffID)) {
        switch (prm) {
        case 1:
            mActorMngr[0].entry(daPy_getPlayerActorClass());
            setLookMode(LOOK_PLAYER);
            angle = player->current.angle;
            angle.y = fopAcM_searchPlayerAngleY(this) + 0x8000;
            player->setPlayerPosAndAngle(&player->current.pos, &angle);
            dComIfGp_getEvent().setPtT(this);
            initTalk(8, NULL);
            mIsLeading = true;
            break;
        }
    }

    switch (prm) {
    case 1:
        facing_player = false;
        if (mCurAngle.y == fopAcM_searchPlayerAngleY(this)) {
            facing_player = true;
        } else {
            if (step(fopAcM_searchPlayerAngleY(this), -1, -1, 15)) {
                setExpression(EXPR_NONE, -1.0f);
                setMotion(MOT_WAIT_GT_A, -1.0f, false);
                mTurnMode = 0;
            }
        }
        
        if (facing_player && talkProc(NULL, true, NULL)) {
            setLookMode(LOOK_NONE);
            ret = true;
        }
        break;

    default:
        ret = true;
        break;
    }

    return ret;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrZ_c::ECut_comeHere(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/ECut_comeHere__11daNpc_zrZ_cFi.s"
}
#pragma pop
#endif
/* ############################################################################################## */
/* 80B9B1E4-80B9B1E8 0001F8 0004+00 1/1 0/0 0/0 .rodata          @5984 */
SECTION_RODATA static f32 const lit_5984 = 500.0f;
COMPILER_STRIP_GATE(0x80B9B1E4, &lit_5984);

/* 80B97D7C-80B97EB4 00409C 0138+00 1/0 0/0 0/0 .text            ECut_restoreLink__11daNpc_zrZ_cFi
 */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrZ_c::ECut_restoreLink(int i_staffID) {
    dEvent_manager_c& event_manager = dComIfGp_getEventManager();
    BOOL ret = false;
    int prm = -1;
    int* prm_p = dComIfGp_evmng_getMyIntegerP(i_staffID, "prm");
    if (prm_p != NULL) {
        prm = *prm_p;
    }

    if (event_manager.getIsAddvance(i_staffID)) {
        switch (prm) {
        case 0:
            pullbackPlayer(daNpc_zrZ_Param_c::m.mRestoreDst - 500.0f);
            setAngle(fopAcM_searchPlayerAngleY(this));
            break;

        case 1:
            initTalk(0xd, NULL);
            break;
        }
    }

    switch (prm) {
    case 0:
        ret = true;
        break;

    case 1:
        if (talkProc(NULL, true, NULL)) {
            ret = true;
        }
        break;

    default:
        ret = true;
        break;
    }

    return ret;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrZ_c::ECut_restoreLink(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/ECut_restoreLink__11daNpc_zrZ_cFi.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80B9B1E8-80B9B1EC 0001FC 0004+00 0/0 0/0 0/0 .rodata          @6066 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_6066 = 0xFFC38AFF;
COMPILER_STRIP_GATE(0x80B9B1E8, &lit_6066);
#pragma pop

/* 80B9B1EC-80B9B1F0 000200 0004+00 0/1 0/0 0/0 .rodata          @6098 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6098 = -2.0f;
COMPILER_STRIP_GATE(0x80B9B1EC, &lit_6098);
#pragma pop

/* 80B97EB4-80B98540 0041D4 068C+00 1/0 0/0 0/0 .text            ECut_clothesGet__11daNpc_zrZ_cFi */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrZ_c::ECut_clothesGet(int i_staffID) {
    dEvent_manager_c& event_manager = dComIfGp_getEventManager();
    BOOL ret = false;
    int prm = -1;
    int item_no;
    int* prm_p = dComIfGp_evmng_getMyIntegerP(i_staffID, "prm");
    if (prm_p != NULL) {
        prm = *prm_p;
    }

    if (event_manager.getIsAddvance(i_staffID)) {
        switch (prm) {
        case 0:
            daNpcF_offTmpBit(0xe);
            daNpcF_offTmpBit(0xf);
            setLookMode(LOOK_NONE);
            lightReady();
            break;

        case 1:
            break;

        case 10:
            initTalk(9, NULL);
            if (mpGravestoneActor != NULL) {
                dComIfGp_getEvent().setPtT(mpGravestoneActor);
                dComIfGp_getEvent().setPt2(mpGravestoneActor);
            }
            break;

        case 11:
            break;

        case 20:
            initTalk(9, NULL);
            break;

        case 30:
            mEventTimer = 50;
            if (mpGravestoneActor != NULL) {
                mpGravestoneActor->speedF = -2.0f;
                mpGravestoneActor->mTimer = 50;
            }
            mAllcolRatio = 1.0f;
            mUseLightEffect = true;
            break;

        case 40:
            mEventTimer = 0;
            break;

        case 50:
            if (mpClothActor != NULL) {
                dComIfGp_getEvent().setPtT(mpClothActor);
            }
            mEventTimer = 20;
            break;

        case 60:
            if (mpClothActor != NULL) {
                fopAcM_delete(mpClothActor);
            }
            item_no = 0;
            if (mFlow.getEventId(&item_no) == 1) {
                mItemID = fopAcM_createItemForPresentDemo(&current.pos, item_no,
                                                          0, -1, -1, NULL, NULL);
            }
            break;

        case 61:
            mEventTimer = 30;
            break;

        case 70:
            dComIfGp_getEvent().setPtT(this);
            break;

        case 71:
            mEventTimer = 30;
            setLookMode(LOOK_NONE);
            break;

        case 80:
            initTalk(9, NULL);
            if (mpGravestoneActor != NULL) {
                mpGravestoneActor->current.pos = mpGravestoneActor->home.pos;
            }
            break;

        case 90:
            mEventTimer = 0x78;
            Z2GetAudioMgr()->bgmStop(90, 0);
            break;
        }
    }

    switch (prm) {
    case 0:
        ret = true;
        break;

    case 10:
        if (talkProc(NULL, true, NULL)) {
            ret = true;
        }
        break;

    case 11:
        ret = true;
        break;

    case 20:
        if (mCurAngle.y != fopAcM_searchPlayerAngleY(this)) {
            if (step(fopAcM_searchPlayerAngleY(this), -1, -1, 15)) {
                mTurnMode = 0;
            }
        } else {
            if (talkProc(NULL, true, NULL)) {
                ret = true;
            }
        }
        break;

    case 30:
        if (cLib_calcTimer(&mEventTimer) == 0) {
            ret = true;
        } else {
            mAllcolRatio = mEventTimer * 0.45f / 50.0f + 0.55f;
            dKy_set_allcol_ratio(mAllcolRatio);
        }
        break;

    case 40:
        if (cLib_calcTimer(&mEventTimer) == 0) {
            ret = true;
        }
        break;

    case 50:
        if (cLib_calcTimer(&mEventTimer) == 0) {
            ret = true;
        }
        break;

    case 60:
        ret = true;
        break;

    case 61:
        mAllcolRatio = (30 - mEventTimer) * 0.45f / 30.0f + 0.55f;
        if (cLib_calcTimer(&mEventTimer) == 0) {
            mUseLightEffect = false;
            dKy_efplight_cut(&mLight);
        }
        ret = true;
        break;

    case 70:
        ret = true;
        break;

    case 71:
        if (cLib_calcTimer(&mEventTimer) == 0) {
            ret = true;
        }
        break;

    case 80:
        if (talkProc(NULL, true, NULL)) {
            ret = true;
        }
        break;

    case 90:
        if (cLib_calcTimer(&mEventTimer) == 0) {
            ret = true;
            tevStr.mFogColor.a = 0;
        } else if (mEventTimer > 0) {
            tevStr.mFogColor.a = (u8)(mEventTimer / 120.0f * 255.0f);
        } else {
            tevStr.mFogColor.a = 0;
        }
        break;

    default:
        ret = true;
        break;
    }

    if (mUseLightEffect) {
        dKy_efplight_set(&mLight);
        lightPowerCalc(prm);
        lightColorProc();
        mLightEffectFrame++;
    }

    if (mAllcolRatio < 1.0f) {
        dKy_set_allcol_ratio(mAllcolRatio);
        cXyz pos(21105.0f, 750.0f, -50.0f);
        GXColor color = {0xff, 0xc3, 0x8a, 0xff};
        dKy_BossLight_set(&pos, &color, (1.0f - mAllcolRatio) * 1.5f, 0);
    }

    return ret;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrZ_c::ECut_clothesGet(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/ECut_clothesGet__11daNpc_zrZ_cFi.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80B9B1F0-80B9B1F4 000204 0004+00 0/0 0/0 0/0 .rodata          @6099 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6099 = 11.0f / 20.0f;
COMPILER_STRIP_GATE(0x80B9B1F0, &lit_6099);
#pragma pop

/* 80B9B1F4-80B9B1F8 000208 0004+00 0/0 0/0 0/0 .rodata          @6100 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6100 = 9.0f / 20.0f;
COMPILER_STRIP_GATE(0x80B9B1F4, &lit_6100);
#pragma pop

/* 80B9B1F8-80B9B1FC 00020C 0004+00 1/1 0/0 0/0 .rodata          @6101 */
SECTION_RODATA static f32 const lit_6101 = 120.0f;
COMPILER_STRIP_GATE(0x80B9B1F8, &lit_6101);

/* 80B98540-80B9877C 004860 023C+00 1/0 0/0 0/0 .text            ECut_getAfter__11daNpc_zrZ_cFi */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrZ_c::ECut_getAfter(int i_staffID) {
    dEvent_manager_c& event_manager = dComIfGp_getEventManager();
    BOOL ret = false;
    int prm = -1;
    fopAc_ac_c* gravestone;
    int* prm_p = dComIfGp_evmng_getMyIntegerP(i_staffID, "prm");
    if (prm_p != NULL) {
        prm = *prm_p;
    }

    if (event_manager.getIsAddvance(i_staffID)) {
        switch (prm) {
        case 0:
            break;

        case 70:
            mEventTimer = 30;
            setLookMode(LOOK_NONE);
            break;

        case 80:
            initTalk(9, NULL);
            gravestone = (fopAc_ac_c*)fpcM_Search(s_sub, this);
            if (gravestone != NULL) {
                gravestone->current.pos = gravestone->home.pos;
            }
            break;

        case 90:
            mEventTimer = 120;
            break;
        }
    }

    switch (prm) {
    case 0:
        daPy_getPlayerActorClass()->changeDemoMoveAngle(fopAcM_searchPlayerAngleY(this) + 0x8000);
        ret = true;
        break;

    case 70:
        if (cLib_calcTimer(&mEventTimer) == 0) {
            ret = true;
        }
        break;

    case 80:
        if (talkProc(NULL, true, NULL)) {
            ret = true;
        }
        break;

    case 90:
        if (cLib_calcTimer(&mEventTimer) == 0) {
            ret = true;
            tevStr.mFogColor.a = 0;
        } else if (mEventTimer > 0) {
            tevStr.mFogColor.a = (u8)(mEventTimer / 120.0f * 255.0f);
        } else {
            tevStr.mFogColor.a = 0;
        }
        break;

    default:
        ret = true;
        break;
    }

    return ret;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrZ_c::ECut_getAfter(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/ECut_getAfter__11daNpc_zrZ_cFi.s"
}
#pragma pop
#endif
/* ############################################################################################## */
/* 80B9B1FC-80B9B200 000210 0004+00 0/0 0/0 0/0 .rodata          @6102 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6102 = 21105.0f;
COMPILER_STRIP_GATE(0x80B9B1FC, &lit_6102);
#pragma pop

/* 80B9B200-80B9B204 000214 0004+00 0/0 0/0 0/0 .rodata          @6103 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6103 = 750.0f;
COMPILER_STRIP_GATE(0x80B9B200, &lit_6103);
#pragma pop

/* 80B9B204-80B9B208 000218 0004+00 0/0 0/0 0/0 .rodata          @6104 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6104 = 1.5f;
COMPILER_STRIP_GATE(0x80B9B204, &lit_6104);
#pragma pop

/* 80B9B208-80B9B20C 00021C 0004+00 0/3 0/0 0/0 .rodata          @6231 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6231 = 3.0f;
COMPILER_STRIP_GATE(0x80B9B208, &lit_6231);
#pragma pop

/* 80B9877C-80B98ACC 004A9C 0350+00 1/0 0/0 0/0 .text            ECut_sealRelease__11daNpc_zrZ_cFi
 */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrZ_c::ECut_sealRelease(int i_staffID) {
    dEvent_manager_c& event_manager = dComIfGp_getEventManager();
    BOOL ret = false;
    int prm = -1;
    int* prm_p = dComIfGp_evmng_getMyIntegerP(i_staffID, "prm");
    if (prm_p != NULL) {
        prm = *prm_p;
    }

    if (event_manager.getIsAddvance(i_staffID)) {
        switch (prm) {
        case 0:
            mEventTimer = 20;
            mSealReleased = true;
            dComIfGp_getEvent().setSkipProc(this, dEv_defaultSkipProc, 0);
            mpRockActor->setDemoStart();
            break;

        case 10:
            break;

        case 20:
            if (mpRockActor != NULL) {
                mpRockActor->mBrkAnm.setPlaySpeed(1.0f);
                Z2GetAudioMgr()->seStart(Z2SE_OBJ_ZORA_STN_VANISH, &mpRockActor->current.pos,
                                         0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
            }
            break;
        }
    }

    switch (prm) {
    case 0:
        if (cLib_calcTimer(&mEventTimer) == 0) {
            ret = true;
        }
        break;

    case 10:
        if (tevStr.mFogColor.a <= 0x1e) {
            ret = true;
        }
        break;

    case 20:
        if (mpRockActor->mBrkAnm.isStop()) {
            ret = true;
        }
        break;

    default:
        ret = true;
        break;
    }

    if (prm >= 10) {
        cXyz pos = mPath.getPntPos(mPath.getIdx());
        if (!mPath.chkPassedDst(current.pos)) {
            cLib_chaseS(&tevStr.mFogColor.a, 8, 8);
            cLib_addCalc2(&mSpeed, daNpc_zrZ_Param_c::m.mMaxSpeed, 0.1f, 1.0f);
            s16 ang_y = cLib_targetAngleY(&current.pos, &pos);
            s16 ang_x = cLib_targetAngleX(&pos, &current.pos);
            cLib_addCalcAngleS2(&mMoveAngle.y, ang_y, 2, 0x800);
            cLib_addCalcAngleS2(&mMoveAngle.x, ang_x, 2, 0x800);
        } else {
            mSpeed = 0.0f;
            cLib_chaseS(&tevStr.mFogColor.a, 0xff, 8);
            mIsMoving = false;
        }
    } else {
        cLib_chaseF(&mSpeed, 0.0f, 3.0f);
        mIsMoving = false;
    }

    cXyz move_speed(0.0f, 0.0f, mSpeed);
    mDoMtx_stack_c::ZXYrotS(mMoveAngle);
    mDoMtx_stack_c::multVec(&move_speed, &move_speed);
    current.pos += move_speed;
    cLib_addCalcAngleS2(&mCurAngle.y, -0x4000, 2, 0x800);
    setAngle(mCurAngle.y);
    return ret;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrZ_c::ECut_sealRelease(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/ECut_sealRelease__11daNpc_zrZ_cFi.s"
}
#pragma pop
#endif

/* 80B98ACC-80B98C34 004DEC 0168+00 1/0 0/0 0/0 .text            ECut_srSkip__11daNpc_zrZ_cFi */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrZ_c::ECut_srSkip(int i_staffID) {
    dEvent_manager_c& event_manager = dComIfGp_getEventManager();
    int prm = -1;
    int* prm_p = dComIfGp_evmng_getMyIntegerP(i_staffID, "prm");
    if (prm_p != NULL) {
        prm = *prm_p;
    }

    if (event_manager.getIsAddvance(i_staffID)) {
        switch (prm) {
        case 10:
            mSpeed = 0.0f;
            current.pos = mPath.getPntPos(mPath.getIdx());
            old.pos = current.pos;
            setAngle(fopAcM_searchPlayerAngleY(this));
            tevStr.mFogColor.a = 0xff;
            mIsMoving = false;
            if (mpRockActor != NULL) {
                fopAcM_delete(mpRockActor);
                mpRockActor = NULL;
            }
            Z2GetAudioMgr()->seStop(Z2SE_OBJ_ZORA_STN_VANISH, 0);
            mSealReleased = true;
            break;
        }
    }

    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrZ_c::ECut_srSkip(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/ECut_srSkip__11daNpc_zrZ_cFi.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80B9B20C-80B9B210 000220 0004+00 1/1 0/0 0/0 .rodata          @6287 */
SECTION_RODATA static f32 const lit_6287 = 1000.0f;
COMPILER_STRIP_GATE(0x80B9B20C, &lit_6287);

/* 80B98C34-80B98D04 004F54 00D0+00 1/1 0/0 0/0 .text            pullbackPlayer__11daNpc_zrZ_cFf */
#ifdef NONMATCHING
// matches with literals
void daNpc_zrZ_c::pullbackPlayer(f32 param_0) {
    cXyz pos = mPath.getPntPos(mPath.getBeforeIdx());
    pos.y += 1000.0f;
    if (fopAcM_gc_c::gndCheck(&pos)) {
        pos.y = fopAcM_gc_c::getGroundY();
    }
    s16 angle_y = cLib_targetAngleY(&pos, &current.pos);
    daPy_getPlayerActorClass()->setPlayerPosAndAngle(&pos, angle_y, 0);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_zrZ_c::pullbackPlayer(f32 param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/pullbackPlayer__11daNpc_zrZ_cFf.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80B9B210-80B9B214 000224 0004+00 0/1 0/0 0/0 .rodata          @6342 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6342 = -120.0f;
COMPILER_STRIP_GATE(0x80B9B210, &lit_6342);
#pragma pop

/* 80B98D04-80B98F84 005024 0280+00 2/0 0/0 0/0 .text            wait__11daNpc_zrZ_cFPv */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrZ_c::wait(void* param_0) {
    switch (mMode) {
    case 0:
        setExpression(EXPR_NONE, -1.0f);
        setMotion(MOT_WAIT_GT_A, -1.0f, false);
        setLookMode(LOOK_NONE);
        mTurnMode = 0;
        mMode = 2;
        // fallthrough

    case 2:
        if (!mIsLeading && daPy_getPlayerActorClass()->current.pos.z >= -120.0f
                          && daPy_getPlayerActorClass()->checkSwimUp()) {
            mOrderEvtNo = EVT_HELP_PRINCE;
            mActorMngr[0].entry(daPy_getPlayerActorClass());
            setLookMode(LOOK_PLAYER);
            s16 angle_y = fopAcM_searchPlayerAngleY(this);
            shape_angle.y = angle_y;
            mCurAngle.y = angle_y;
            current.angle.y = angle_y;
            mOrderNewEvt = true;
        } else if (!mIsDamaged) {
            BOOL player_attn = mActorMngr[0].getActorP() != NULL;
            if (chkFindPlayer2(player_attn, shape_angle.y)) {
                if (!player_attn) {
                    mActorMngr[0].entry(daPy_getPlayerActorClass());
                    mTurnMode = 0;
                }
            } else {
                if (player_attn) {
                    mActorMngr[0].remove();
                    mTurnMode = 0;
                }
            }

            if (mActorMngr[0].getActorP() != NULL) {
                setLookMode(LOOK_PLAYER);
            } else {
                setLookMode(LOOK_NONE);
                if (home.angle.y != mCurAngle.y && step(home.angle.y, -1, -1, 15)) {
                    mMode = 0;
                }
            }

            if (home.angle.y == mCurAngle.y) {
                BOOL player_attn = mActorMngr[0].getActorP() != NULL;
                fopAc_ac_c* attn_actor = getAttnActorP(
                    player_attn, srchAttnActor1, daNpc_zrZ_Param_c::m.mAttnRadius,
                    daNpc_zrZ_Param_c::m.mAttnUpperY, daNpc_zrZ_Param_c::m.mAttnLowerY,
                    daNpc_zrZ_Param_c::m.mAttnFovY, shape_angle.y, 120, true
                );
                if (attn_actor != NULL) {
                    mActorMngr[1].entry(attn_actor);
                    setLookMode(LOOK_ACTOR);
                }
            } else {
                mAttnChangeTimer = 0;
            }
        }
        break;

    case 3:
        break;
    }

    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrZ_c::wait(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/wait__11daNpc_zrZ_cFPv.s"
}
#pragma pop
#endif

/* 80B98F84-80B998BC 0052A4 0938+00 1/0 0/0 0/0 .text            comeHere__11daNpc_zrZ_cFPv */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrZ_c::comeHere(void* param_0) {
    cXyz player_pos = daPy_getPlayerActorClass()->current.pos;
    cXyz pnt_pos = mPath.getPntPos(mPath.getIdx());

    switch (mMode) {
    case 0:
        if (mIsLeading) {
            setExpression(EXPR_NONE, -1.0f);
            setMotion(MOT_LEAD, -1.0f, false);
        } else {
            setExpression(EXPR_NONE, -1.0f);
            setMotion(MOT_WAIT_GT_A, -1.0f, false);
        }

        setLookMode(LOOK_NONE);
        mTurnMode = 0;
        mMode = 2;

        if (mPath.getIdx() == mPath.getBeforeIdx()) {
            mPath.setNextIdxDst(current.pos);
        }
        // fallthrough

    case 2:
        cLib_addCalcAngleS2(&mCurAngle.y, fopAcM_searchPlayerAngleY(this), 2, 0x800);
        setAngle(mCurAngle.y);

        if (!mIsLeading) {
            if ((pnt_pos - player_pos).absXZ() < daNpc_zrZ_Param_c::m.mFollowDst) {
                mActorMngr[0].entry(daPy_getPlayerActorClass());
                setLookMode(LOOK_PLAYER);
                setAngle(fopAcM_searchPlayerAngleY(this));
                setMotion(MOT_LEAD, -1.0f, false);
                mIsLeading = true;
            } else if (!dComIfGs_isSwitch(mSwitch1, fopAcM_GetRoomNo(this))
                && (current.pos - player_pos).absXZ() > daNpc_zrZ_Param_c::m.mRestoreDst)
            {
                mOrderEvtNo = EVT_RESTORE_LINK;
                setAngle(fopAcM_searchPlayerAngleY(this));
            }
        } else {
            if (mPath.chkPassedDst(current.pos)) {
                if ((pnt_pos - player_pos).absXZ() < daNpc_zrZ_Param_c::m.mFollowDst) {
                    mPath.setNextIdxDst(current.pos);
                    pnt_pos = mPath.getPntPos(mPath.getIdx());
                    mIsMoving = true;
                } else {
                    mIsMoving = false;
                }
            } else {
                mIsMoving = true;
            }

            if (mPath.getIdx() == mPath.getNextIdx()) {
                if (!dComIfGs_isSwitch(mSwitch1, fopAcM_GetRoomNo(this))) {
                    dComIfGs_onSwitch(mSwitch1, fopAcM_GetRoomNo(this));
                }
                cLib_chaseS(&tevStr.mFogColor.a, 0, 4);
                if (tevStr.mFogColor.a == 0) {
                    fopAcM_delete(this);
                }
            }

            if (mIsMoving) {
                cLib_addCalc2(&mSpeed, daNpc_zrZ_Param_c::m.mMaxSpeed, 0.1f, 1.0f);
                s16 angle_y = cLib_targetAngleY(&current.pos, &pnt_pos);
                s16 angle_x = cLib_targetAngleX(&pnt_pos, &current.pos);
                cLib_addCalcAngleS2(&mMoveAngle.y, angle_y, 2, 0x800);
                cLib_addCalcAngleS2(&mMoveAngle.x, angle_x, 2, 0x800);
            } else {
                cLib_chaseF(&mSpeed, 0.0f, 3.0f);
            }

            cXyz move_speed(0.0f, 0.0f, mSpeed);
            mDoMtx_stack_c::ZXYrotS(mMoveAngle);
            mDoMtx_stack_c::multVec(&move_speed, &move_speed);
            current.pos += move_speed;

            if (!dComIfGs_isSwitch(mSwitch1, fopAcM_GetRoomNo(this))
                && (current.pos - player_pos).absXZ() > daNpc_zrZ_Param_c::m.mRestoreDst)
            {
                mOrderEvtNo = EVT_RESTORE_LINK;
                setAngle(fopAcM_searchPlayerAngleY(this));
            }
        }
        break;

    case 3:
        mSpeed = 0.0f;
        break;
    }

    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrZ_c::comeHere(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/comeHere__11daNpc_zrZ_cFPv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80B9B214-80B9B218 000228 0004+00 0/1 0/0 0/0 .rodata          @6785 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6785 = 450.0f;
COMPILER_STRIP_GATE(0x80B9B214, &lit_6785);
#pragma pop

/* 80B998BC-80B9A0EC 005BDC 0830+00 1/0 0/0 0/0 .text            comeHere2__11daNpc_zrZ_cFPv */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrZ_c::comeHere2(void* param_0) {
    switch (mMode) {
    case 0: {
        setExpression(EXPR_NONE, -1.0f);
        setMotion(MOT_LEAD, -1.0f, false);
        mTurnMode = 0;
        mMode = 2;
        cXyz pnt_pos = mPath.getPntPos(mPath.getIdx());
        current.angle.y = cLib_targetAngleY(&current.pos, &pnt_pos);
        // fallthrough
    }

    case 2:
        if (mpGravestoneActor == NULL) {
            mpGravestoneActor = (daGraveStone_c*)fpcM_Search(s_sub, this);
        }
        if (mpClothActor == NULL) {
            mpClothActor = (fopAc_ac_c*)fpcM_Search(s_subCloth, this);
        }
        if (mpRockActor == NULL) {
            mpRockActor = (daObjZraRock_c*)fpcM_Search(s_subRock, this);
        }

        cLib_addCalcAngleS2(&mCurAngle.y, fopAcM_searchPlayerAngleY(this), 2, 0x800);
        setAngle(mCurAngle.y);

        if (!mMusicSet && dComIfGs_isSwitch(mSwitch3, fopAcM_GetRoomNo(this))) {
            mMusicSet = true;
            Z2GetAudioMgr()->changeBgmStatus(1);
        }

        if (!mIsLeading) {
            setLookMode(LOOK_PLAYER);
            cXyz player_pos = daPy_getPlayerActorClass()->current.pos;
            cXyz pnt_pos = mPath.getPntPos(mPath.getIdx());

            if (mPath.chkPassedDst(current.pos)) {
                if (mPath.getIdx() == mPath.getNextIdx()) {
                    mIsMoving = false;
                    setMotion(MOT_WAIT_GT_A, -1.0f, false);
                    if ((current.pos - player_pos).absXZ() < daNpc_zrZ_Param_c::m.mClothesGetDst
                        && player_pos.y > 450.0f)
                    {
                        mClothesObtained = true;
                        mOrderEvtNo = EVT_CLOTHES_GET;
                    }
                } else if ((pnt_pos - player_pos).absXZ() < daNpc_zrZ_Param_c::m.mFollowDst) {
                    mPath.setNextIdxDst(current.pos);
                    pnt_pos = mPath.getPntPos(mPath.getIdx());
                    mIsMoving = true;
                } else {
                    mIsMoving = false;
                }
            } else {
                mIsMoving = true;
            }

            if (mIsMoving) {
                if (mPath.getArg0() == 0) {
                    if (!mSealReleased) {
                        mOrderEvtNo = EVT_SEAL_RELEASE;
                        break;
                    } else {
                        cLib_chaseS(&tevStr.mFogColor.a, 0x14, 8);
                    }
                } else {
                    cLib_chaseS(&tevStr.mFogColor.a, 0xff, 8);
                }

                cLib_addCalc2(&mSpeed, daNpc_zrZ_Param_c::m.mMaxSpeed, 0.1f, 1.0f);
                s16 angle_y = cLib_targetAngleY(&current.pos, &pnt_pos);
                s16 angle_x = cLib_targetAngleX(&pnt_pos, &current.pos);
                cLib_addCalcAngleS2(&mMoveAngle.y, angle_y, 2, 0x800);
                cLib_addCalcAngleS2(&mMoveAngle.x, angle_x, 2, 0x800);
            } else {
                cLib_chaseF(&mSpeed, 0.0f, 3.0f);
                cLib_chaseS(&tevStr.mFogColor.a, 0xff, 8);
            }

            cXyz move_speed(0.0f, 0.0f, mSpeed);
            mDoMtx_stack_c::ZXYrotS(mMoveAngle);
            mDoMtx_stack_c::multVec(&move_speed, &move_speed);
            current.pos += move_speed;

            if ((current.pos - player_pos).absXZ() > daNpc_zrZ_Param_c::m.mRestoreDst) {
                mOrderEvtNo = EVT_RESTORE_LINK;
                setAngle(fopAcM_searchPlayerAngleY(this));
            }
        }

        break;

    case 3:
        mSpeed = 0.0f;
        break;
    }

    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrZ_c::comeHere2(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/comeHere2__11daNpc_zrZ_cFPv.s"
}
#pragma pop
#endif

/* 80B9A0EC-80B9A29C 00640C 01B0+00 2/0 0/0 0/0 .text            talk__11daNpc_zrZ_cFPv */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrZ_c::talk(void* param_0) {
    BOOL ret = false;
    BOOL talk = false;

    switch (mMode) {
    case 0:
        if (mIsDamaged) {
            break;
        }
        initTalk(mFlowID, NULL);
        mTurnMode = 0;
        mMode = 2;
        // fallthrough

    case 2:
        if (field_0x9ea) {
            talk = true;
        } else {
            setLookMode(LOOK_PLAYER_TALK);
            mActorMngr[0].entry(daPy_getPlayerActorClass());
            if (mCurAngle.y == fopAcM_searchPlayerAngleY(this)) {
                talk = true;
            } else if (step(fopAcM_searchPlayerAngleY(this), -1, -1, 15)) {
                setExpression(EXPR_NONE, -1.0f);
                setMotion(MOT_WAIT_GT_A, -1.0f, false);
                mTurnMode = 0;
            }
        }

        if (talk && talkProc(NULL, true, NULL)) {
            ret = true;
        }

        if (ret) {
            mMode = 3;
            if (!field_0x9ec) {
                dComIfGp_event_reset();
            }
            field_0x9ec = false;
        }

        break;

    case 3:
        break;
    }

    return ret;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrZ_c::talk(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/talk__11daNpc_zrZ_cFPv.s"
}
#pragma pop
#endif

/* 80B9A29C-80B9A380 0065BC 00E4+00 3/0 0/0 0/0 .text            test__11daNpc_zrZ_cFPv */
#ifdef NONMATCHING
// matches with literals
BOOL daNpc_zrZ_c::test(void* param_0) {
    switch (mMode) {
    case 0:
        speedF = 0.0f;
        speed.setall(0.0f);
        mMode = 2;
        // fallthrough

    case 2:
        if (daNpc_zrZ_Param_c::m.mTestExpression != mExpression) {
            setExpression(daNpc_zrZ_Param_c::m.mTestExpression, daNpc_zrZ_Param_c::m.mMorfFrames);
        }
        setMotion(daNpc_zrZ_Param_c::m.mTestMotion, daNpc_zrZ_Param_c::m.mMorfFrames, false);
        setLookMode(daNpc_zrZ_Param_c::m.mTestLookMode);
        mOrderEvtNo = EVT_NONE;
        attention_info.flags = 0;
        break;

    case 3:
        break;
    }

    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daNpc_zrZ_c::test(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/test__11daNpc_zrZ_cFPv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80B9B218-80B9B21C 00022C 0004+00 0/1 0/0 0/0 .rodata          @6891 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6891 = 470.0f;
COMPILER_STRIP_GATE(0x80B9B218, &lit_6891);
#pragma pop

/* 80B9B21C-80B9B220 000230 0004+00 0/1 0/0 0/0 .rodata          @6892 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6892 = 25.0f;
COMPILER_STRIP_GATE(0x80B9B21C, &lit_6892);
#pragma pop

/* 80B9A380-80B9A504 0066A0 0184+00 1/1 0/0 0/0 .text            himoCalc__11daNpc_zrZ_cFv */
#ifdef NONMATCHING
// matches with literals
void daNpc_zrZ_c::himoCalc() {
    cXyz vec1 = current.pos;
    vec1.y += 470.0f;
    cXyz vec2 = mLimbCalcPos - vec1;
    vec2.normalize();
    vec2 = vec2 * daNpc_zrZ_Param_c::m.field_0x80;
    cXyz vec3(0.0f, -daNpc_zrZ_Param_c::m.field_0x80, 0.0f);
    cLib_addCalcPos2(&vec2, vec3, 0.2f, 25.0f);
    mLimbCalcPos = vec2 + vec1;
    
    mDoMtx_stack_c::push();
    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(29));
    mDoMtx_stack_c::inverse();
    mDoMtx_stack_c::multVec(&mLimbCalcPos, &mLimbCalcRelPos);
    mDoMtx_stack_c::pop();

    mLimbAngle.x = cM_atan2s(mLimbCalcRelPos.y, mLimbCalcRelPos.x);
    mLimbAngle.y = 0;
    mLimbAngle.z = cM_atan2s(mLimbCalcRelPos.z, mLimbCalcRelPos.x);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_zrZ_c::himoCalc() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/himoCalc__11daNpc_zrZ_cFv.s"
}
#pragma pop
#endif

/* 80B9A504-80B9A524 006824 0020+00 1/0 0/0 0/0 .text            daNpc_zrZ_Create__FPv */
static cPhs__Step daNpc_zrZ_Create(void* i_this) {
    return static_cast<daNpc_zrZ_c*>(i_this)->create();
}

/* 80B9A524-80B9A544 006844 0020+00 1/0 0/0 0/0 .text            daNpc_zrZ_Delete__FPv */
static int daNpc_zrZ_Delete(void* i_this) {
    return static_cast<daNpc_zrZ_c*>(i_this)->Delete();
}

/* 80B9A544-80B9A564 006864 0020+00 1/0 0/0 0/0 .text            daNpc_zrZ_Execute__FPv */
static int daNpc_zrZ_Execute(void* i_this) {
    return static_cast<daNpc_zrZ_c*>(i_this)->Execute();
}

/* 80B9A564-80B9A584 006884 0020+00 1/0 0/0 0/0 .text            daNpc_zrZ_Draw__FPv */
static int daNpc_zrZ_Draw(void* i_this) {
    return static_cast<daNpc_zrZ_c*>(i_this)->Draw();
}

/* 80B9A584-80B9A58C 0068A4 0008+00 1/0 0/0 0/0 .text            daNpc_zrZ_IsDelete__FPv */
static int daNpc_zrZ_IsDelete(void* i_this) {
    return 1;
}

/* 80B9A58C-80B9A5BC 0068AC 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" asm void calc__11J3DTexNoAnmCFPUs() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/calc__11J3DTexNoAnmCFPUs.s"
}
#pragma pop

/* 80B9A5BC-80B9A61C 0068DC 0060+00 1/0 0/0 0/0 .text            __dt__13daNpcF_Path_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcF_Path_c::~daNpcF_Path_c() {
extern "C" asm void __dt__13daNpcF_Path_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/__dt__13daNpcF_Path_cFv.s"
}
#pragma pop

/* 80B9A61C-80B9A664 00693C 0048+00 1/0 0/0 0/0 .text            __dt__16daNpcF_SPCurve_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcF_SPCurve_c::~daNpcF_SPCurve_c() {
extern "C" asm void __dt__16daNpcF_SPCurve_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/__dt__16daNpcF_SPCurve_cFv.s"
}
#pragma pop

/* 80B9A664-80B9A6AC 006984 0048+00 5/4 0/0 0/0 .text            __dt__18daNpcF_ActorMngr_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcF_ActorMngr_c::~daNpcF_ActorMngr_c() {
extern "C" asm void __dt__18daNpcF_ActorMngr_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/__dt__18daNpcF_ActorMngr_cFv.s"
}
#pragma pop

/* 80B9A6AC-80B9A6E8 0069CC 003C+00 2/2 0/0 0/0 .text            __ct__18daNpcF_ActorMngr_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcF_ActorMngr_c::daNpcF_ActorMngr_c() {
extern "C" asm void __ct__18daNpcF_ActorMngr_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/__ct__18daNpcF_ActorMngr_cFv.s"
}
#pragma pop

/* 80B9A6E8-80B9A7B8 006A08 00D0+00 1/0 0/0 0/0 .text            __dt__15daNpcF_Lookat_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcF_Lookat_c::~daNpcF_Lookat_c() {
extern "C" asm void __dt__15daNpcF_Lookat_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/__dt__15daNpcF_Lookat_cFv.s"
}
#pragma pop

/* 80B9A7B8-80B9A7F4 006AD8 003C+00 5/5 0/0 0/0 .text            __dt__5csXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm csXyz::~csXyz() {
extern "C" asm void __dt__5csXyzFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/__dt__5csXyzFv.s"
}
#pragma pop

/* 80B9A7F4-80B9A7F8 006B14 0004+00 2/2 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" asm void __ct__5csXyzFv() {
    /* empty function */
}

/* 80B9A7F8-80B9A834 006B18 003C+00 6/6 0/0 0/0 .text            __dt__4cXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cXyz::~cXyz() {
extern "C" asm void __dt__4cXyzFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/__dt__4cXyzFv.s"
}
#pragma pop

/* 80B9A834-80B9A838 006B54 0004+00 2/2 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" asm void __ct__4cXyzFv() {
    /* empty function */
}

/* 80B9A838-80B9AA84 006B58 024C+00 1/1 0/0 0/0 .text            __dt__8daNpcF_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcF_c::~daNpcF_c() {
extern "C" asm void __dt__8daNpcF_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/__dt__8daNpcF_cFv.s"
}
#pragma pop

/* 80B9AA84-80B9AC74 006DA4 01F0+00 1/1 0/0 0/0 .text            __ct__8daNpcF_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcF_c::daNpcF_c() {
extern "C" asm void __ct__8daNpcF_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/__ct__8daNpcF_cFv.s"
}
#pragma pop

/* 80B9AC74-80B9ACE4 006F94 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" asm void __dt__12dBgS_AcchCirFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/__dt__12dBgS_AcchCirFv.s"
}
#pragma pop

/* 80B9ACE4-80B9AD40 007004 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_GStts::~dCcD_GStts() {
extern "C" asm void __dt__10dCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/__dt__10dCcD_GSttsFv.s"
}
#pragma pop

/* 80B9AD40-80B9ADB0 007060 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" asm void __dt__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* 80B9ADB0-80B9ADF8 0070D0 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" asm void __dt__12J3DFrameCtrlFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/__dt__12J3DFrameCtrlFv.s"
}
#pragma pop

/* 80B9ADF8-80B9ADFC 007118 0004+00 1/0 0/0 0/0 .text            setCollisions__8daNpcF_cFv */
// void daNpcF_c::setCollisions() {
extern "C" asm void setCollisions__8daNpcF_cFv() {
    /* empty function */
}

/* 80B9ADFC-80B9AE44 00711C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cCcD_GStts::~cCcD_GStts() {
extern "C" asm void __dt__10cCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/__dt__10cCcD_GSttsFv.s"
}
#pragma pop

/* 80B9AE44-80B9AE60 007164 001C+00 4/4 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void func_80B9AE44(void* _this, int* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/func_80B9AE44.s"
}
#pragma pop

/* ############################################################################################## */
/* 80B9B854-80B9B860 0005D0 000C+00 2/2 0/0 0/0 .data            __vt__17daNpc_zrZ_Param_c */
SECTION_DATA extern void* __vt__17daNpc_zrZ_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17daNpc_zrZ_Param_cFv,
};

/* 80B9AE60-80B9AF7C 007180 011C+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_zrz_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_a_npc_zrz_cpp() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/__sinit_d_a_npc_zrz_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80B9AE60, __sinit_d_a_npc_zrz_cpp);
#pragma pop

/* 80B9AF7C-80B9AF80 00729C 0004+00 1/0 0/0 0/0 .text            adjustShapeAngle__11daNpc_zrZ_cFv
 */
void daNpc_zrZ_c::adjustShapeAngle() {
    /* empty function */
}

/* 80B9AF80-80B9AFC8 0072A0 0048+00 2/1 0/0 0/0 .text            __dt__17daNpc_zrZ_Param_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpc_zrZ_Param_c::~daNpc_zrZ_Param_c() {
extern "C" asm void __dt__17daNpc_zrZ_Param_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/__dt__17daNpc_zrZ_Param_cFv.s"
}
#pragma pop

/* 80B9AFC8-80B9AFD0 0072E8 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80B9AFC8() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/func_80B9AFC8.s"
}
#pragma pop

/* 80B9AFD0-80B9AFD8 0072F0 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80B9AFD0() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_zrz/d_a_npc_zrz/func_80B9AFD0.s"
}
#pragma pop

/* ############################################################################################## */
/* 80B9B8D4-80B9B8D8 000074 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80B9B8D4[4];
#pragma pop

/* 80B9B8D8-80B9B8DC 000078 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80B9B8D8[4];
#pragma pop

/* 80B9B8DC-80B9B8E0 00007C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80B9B8DC[4];
#pragma pop

/* 80B9B8E0-80B9B8E4 000080 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80B9B8E0[4];
#pragma pop

/* 80B9B8E4-80B9B8E8 000084 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80B9B8E4[4];
#pragma pop

/* 80B9B8E8-80B9B8EC 000088 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80B9B8E8[4];
#pragma pop

/* 80B9B8EC-80B9B8F0 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80B9B8EC[4];
#pragma pop

/* 80B9B8F0-80B9B8F4 000090 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80B9B8F0[4];
#pragma pop

/* 80B9B8F4-80B9B8F8 000094 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80B9B8F4[4];
#pragma pop

/* 80B9B8F8-80B9B8FC 000098 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80B9B8F8[4];
#pragma pop

/* 80B9B8FC-80B9B900 00009C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80B9B8FC[4];
#pragma pop

/* 80B9B900-80B9B904 0000A0 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80B9B900[4];
#pragma pop

/* 80B9B904-80B9B908 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80B9B904[4];
#pragma pop

/* 80B9B908-80B9B90C 0000A8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80B9B908[4];
#pragma pop

/* 80B9B90C-80B9B910 0000AC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80B9B90C[4];
#pragma pop

/* 80B9B910-80B9B914 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80B9B910[4];
#pragma pop

/* 80B9B914-80B9B918 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80B9B914[4];
#pragma pop

/* 80B9B918-80B9B91C 0000B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80B9B918[4];
#pragma pop

/* 80B9B91C-80B9B920 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_80B9B91C[4];
#pragma pop

/* 80B9B920-80B9B924 0000C0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_80B9B920[4];
#pragma pop

/* 80B9B924-80B9B928 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80B9B924[4];
#pragma pop

/* 80B9B928-80B9B92C 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80B9B928[4];
#pragma pop

/* 80B9B92C-80B9B930 0000CC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80B9B92C[4];
#pragma pop

/* 80B9B930-80B9B934 0000D0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80B9B930[4];
#pragma pop

/* 80B9B934-80B9B938 0000D4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80B9B934[4];
#pragma pop

/* 80B9B220-80B9B220 000234 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
