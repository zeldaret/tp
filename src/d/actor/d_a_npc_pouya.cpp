/**
 * @file d_a_npc_pouya.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_pouya.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__13daNpc_Pouya_cFv();
extern "C" void create__13daNpc_Pouya_cFv();
extern "C" void CreateHeap__13daNpc_Pouya_cFv();
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
extern "C" void Delete__13daNpc_Pouya_cFv();
extern "C" void Execute__13daNpc_Pouya_cFv();
extern "C" void Draw__13daNpc_Pouya_cFv();
extern "C" void createHeapCallBack__13daNpc_Pouya_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__13daNpc_Pouya_cFP8J3DJointi();
extern "C" void getType__13daNpc_Pouya_cFv();
extern "C" void isDelete__13daNpc_Pouya_cFv();
extern "C" void reset__13daNpc_Pouya_cFv();
extern "C" void ctrlSubFaceMotion__13daNpc_Pouya_cFi();
extern "C" void afterJntAnm__13daNpc_Pouya_cFi();
extern "C" void setParam__13daNpc_Pouya_cFv();
extern "C" void checkChangeEvt__13daNpc_Pouya_cFv();
extern "C" void setAfterTalkMotion__13daNpc_Pouya_cFv();
extern "C" void srchActors__13daNpc_Pouya_cFv();
extern "C" void evtTalk__13daNpc_Pouya_cFv();
extern "C" void evtCutProc__13daNpc_Pouya_cFv();
extern "C" void action__13daNpc_Pouya_cFv();
extern "C" void beforeMove__13daNpc_Pouya_cFv();
extern "C" void setAttnPos__13daNpc_Pouya_cFv();
extern "C" void setCollision__13daNpc_Pouya_cFv();
extern "C" bool drawDbgInfo__13daNpc_Pouya_cFv();
extern "C" void drawOtherMdl__13daNpc_Pouya_cFv();
extern "C" void afterSetMotionAnm__13daNpc_Pouya_cFiifi();
extern "C" void selectAction__13daNpc_Pouya_cFv();
extern "C" void chkAction__13daNpc_Pouya_cFM13daNpc_Pouya_cFPCvPvPv_i();
extern "C" void setAction__13daNpc_Pouya_cFM13daNpc_Pouya_cFPCvPvPv_i();
extern "C" void setPrtcls__13daNpc_Pouya_cFv();
extern "C" void cutHaveFavorToAsk__13daNpc_Pouya_cFi();
extern "C" void wait__13daNpc_Pouya_cFPv();
extern "C" void talk__13daNpc_Pouya_cFPv();
extern "C" static void daNpc_Pouya_Create__FPv();
extern "C" static void daNpc_Pouya_Delete__FPv();
extern "C" static void daNpc_Pouya_Execute__FPv();
extern "C" static void daNpc_Pouya_Draw__FPv();
extern "C" static bool daNpc_Pouya_IsDelete__FPv();
extern "C" void calc__11J3DTexNoAnmCFPUs();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__8daNpcT_cFv();
extern "C" void __dt__4cXyzFv();
extern "C" void __dt__5csXyzFv();
extern "C" void __dt__13daNpcT_Path_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void
__ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" void __ct__5csXyzFv();
extern "C" void __dt__15daNpcT_JntAnm_cFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__18daNpcT_ActorMngr_cFv();
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs();
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs();
extern "C" s32 getFootLJointNo__8daNpcT_cFv();
extern "C" s32 getFootRJointNo__8daNpcT_cFv();
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv();
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv();
extern "C" bool evtEndProc__8daNpcT_cFv();
extern "C" void afterMoved__8daNpcT_cFv();
extern "C" bool chkXYItems__8daNpcT_cFv();
extern "C" void decTmr__8daNpcT_cFv();
extern "C" void drawGhost__8daNpcT_cFv();
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi();
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c();
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c();
extern "C" void changeAnm__8daNpcT_cFPiPi();
extern "C" void changeBck__8daNpcT_cFPiPi();
extern "C" void changeBtp__8daNpcT_cFPiPi();
extern "C" void changeBtk__8daNpcT_cFPiPi();
extern "C" void func_80AB1DDC(void* _this, int*);
extern "C" void __sinit_d_a_npc_pouya_cpp();
extern "C" void
__ct__13daNpc_Pouya_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" u16 getEyeballMaterialNo__13daNpc_Pouya_cFv();
extern "C" s32 getHeadJointNo__13daNpc_Pouya_cFv();
extern "C" s32 getNeckJointNo__13daNpc_Pouya_cFv();
extern "C" bool getBackboneJointNo__13daNpc_Pouya_cFv();
extern "C" void checkChangeJoint__13daNpc_Pouya_cFi();
extern "C" void checkRemoveJoint__13daNpc_Pouya_cFi();
extern "C" void __dt__19daNpc_Pouya_Param_cFv();
extern "C" static void func_80AB1FDC();
extern "C" static void func_80AB1FE4();
extern "C" u8 const m__19daNpc_Pouya_Param_c[140];
extern "C" extern char const* const d_a_npc_pouya__stringBase0;
extern "C" void* mCutNameList__13daNpc_Pouya_c[3];
extern "C" u8 mCutList__13daNpc_Pouya_c[36];

//
// External References:
//

extern "C" void fadeOut_f__13mDoGph_gInf_cFfR8_GXColor();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz();
extern "C" void fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData();
extern "C" void fpcEx_IsExist__FUi();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void isSwitch__12dSv_memBit_cCFi();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void addReal__21dDlst_shadowControl_cFUlP8J3DModel();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWallR__12dBgS_AcchCirFf();
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
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void initialize__18daNpcT_ActorMngr_cFv();
extern "C" void entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c();
extern "C" void remove__18daNpcT_ActorMngr_cFv();
extern "C" void getActorP__18daNpcT_ActorMngr_cFv();
extern "C" void initialize__15daNpcT_MatAnm_cFv();
extern "C" void initialize__22daNpcT_MotionSeqMngr_cFv();
extern "C" void initialize__13daNpcT_Path_cFv();
extern "C" void initialize__15daNpcT_JntAnm_cFv();
extern "C" void setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz();
extern "C" void calcJntRad__15daNpcT_JntAnm_cFfff();
extern "C" void setParam__19daNpcT_DmgStagger_cFP10fopAc_ac_cP10fopAc_ac_cs();
extern "C" void calc__19daNpcT_DmgStagger_cFi();
extern "C" void tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" void getTevRegKeyAnmP__8daNpcT_cFPCci();
extern "C" void setBrkAnm__8daNpcT_cFP15J3DAnmTevRegKeyP12J3DModelDatafi();
extern "C" void loadRes__8daNpcT_cFPCScPPCc();
extern "C" void deleteRes__8daNpcT_cFPCScPPCc();
extern "C" void execute__8daNpcT_cFv();
extern "C" void draw__8daNpcT_cFiifP11_GXColorS10fiii();
extern "C" void setEnvTevColor__8daNpcT_cFv();
extern "C" void setRoomNo__8daNpcT_cFv();
extern "C" void ctrlBtk__8daNpcT_cFv();
extern "C" void setMtx__8daNpcT_cFv();
extern "C" void ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel();
extern "C" void evtProc__8daNpcT_cFv();
extern "C" void setFootPos__8daNpcT_cFv();
extern "C" void setFootPrtcl__8daNpcT_cFP4cXyzff();
extern "C" bool checkCullDraw__8daNpcT_cFv();
extern "C" void twilight__8daNpcT_cFv();
extern "C" void evtOrder__8daNpcT_cFv();
extern "C" void evtChange__8daNpcT_cFv();
extern "C" void clrParam__8daNpcT_cFv();
extern "C" void setFaceMotionAnm__8daNpcT_cFib();
extern "C" void setMotionAnm__8daNpcT_cFifi();
extern "C" void setAngle__8daNpcT_cF5csXyz();
extern "C" void setAngle__8daNpcT_cFs();
extern "C" void hitChk__8daNpcT_cFP12dCcD_GObjInfUl();
extern "C" void setDamage__8daNpcT_cFiii();
extern "C" void chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs();
extern "C" void srchPlayerActor__8daNpcT_cFv();
extern "C" void step__8daNpcT_cFsiiii();
extern "C" void initTalk__8daNpcT_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci();
extern "C" void daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz();
extern "C" void daNpcT_getDistTableIdx__Fii();
extern "C" void daNpcT_chkEvtBit__FUl();
extern "C" void daNpcT_offTmpBit__FUl();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void getEventId__10dMsgFlow_cFPi();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void __dt__11cBgS_GndChkFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void JPAGetXYZRotateMtx__FsssPA4_f();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void __dt__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void getTexNo__16J3DAnmTexPatternCFUsPUs();
extern "C" void initialize__14J3DMaterialAnmFv();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void __ptmf_test();
extern "C" void __ptmf_cmpr();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_22();
extern "C" void _savegpr_24();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_22();
extern "C" void _restgpr_24();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern u8 const __ptmf_null[12 + 4 /* padding */];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" u8 mCcDCyl__8daNpcT_c[68];
extern "C" extern void* __vt__8daNpcT_c[49];
extern "C" extern void* __vt__15daNpcT_MatAnm_c[4 + 1 /* padding */];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" extern void* __vt__14J3DMaterialAnm[4];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" f32 mFadeRate__13mDoGph_gInf_c;
extern "C" extern u8 mBlureFlag__13mDoGph_gInf_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80AB2120-80AB2120 000120 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80AB2120 = "";
SECTION_DEAD static char const* const stringBase_80AB2121 = "DEFAULT_GETITEM";
SECTION_DEAD static char const* const stringBase_80AB2131 = "NO_RESPONSE";
SECTION_DEAD static char const* const stringBase_80AB213D = "HAVE_FAVORTO_ASK1";
SECTION_DEAD static char const* const stringBase_80AB214F = "HAVE_FAVORTO_ASK2";
SECTION_DEAD static char const* const stringBase_80AB2161 = "RETURN_FAVOR_1_01";
SECTION_DEAD static char const* const stringBase_80AB2173 = "RETURN_FAVOR_1_02";
SECTION_DEAD static char const* const stringBase_80AB2185 = "RETURN_FAVOR_2_01";
SECTION_DEAD static char const* const stringBase_80AB2197 = "RETURN_FAVOR_2_02";
SECTION_DEAD static char const* const stringBase_80AB21A9 = "pouyaA";
SECTION_DEAD static char const* const stringBase_80AB21B0 = "pouyaB";
SECTION_DEAD static char const* const stringBase_80AB21B7 = "HAVE_FAVORTO_ASK";
SECTION_DEAD static char const* const stringBase_80AB21C8 = "RETURN_FAVOR";
#pragma pop

/* 80AB2210-80AB2228 000020 0018+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[24] = {
    0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x17,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00, 0x02,
};

/* 80AB2228-80AB2270 -00001 0048+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[18] = {
    (void*)&d_a_npc_pouya__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_pouya__stringBase0) + 0x1),
    (void*)NULL,
    (void*)(((char*)&d_a_npc_pouya__stringBase0) + 0x11),
    (void*)NULL,
    (void*)(((char*)&d_a_npc_pouya__stringBase0) + 0x1D),
    (void*)0x00000001,
    (void*)(((char*)&d_a_npc_pouya__stringBase0) + 0x2F),
    (void*)0x00000001,
    (void*)(((char*)&d_a_npc_pouya__stringBase0) + 0x41),
    (void*)0x00000001,
    (void*)(((char*)&d_a_npc_pouya__stringBase0) + 0x53),
    (void*)0x00000001,
    (void*)(((char*)&d_a_npc_pouya__stringBase0) + 0x65),
    (void*)0x00000002,
    (void*)(((char*)&d_a_npc_pouya__stringBase0) + 0x77),
    (void*)0x00000002,
};
#pragma pop

/* 80AB2270-80AB227C -00001 000C+00 3/4 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[3] = {
    (void*)&d_a_npc_pouya__stringBase0,
    (void*)(((char*)&d_a_npc_pouya__stringBase0) + 0x89),
    (void*)(((char*)&d_a_npc_pouya__stringBase0) + 0x90),
};

/* 80AB227C-80AB2280 00008C 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u16 l_loadResPtrn0[1 + 1 /* padding */] = {
    0x01FF,
    /* padding */
    0x0000,
};

/* 80AB2280-80AB2284 000090 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn1 */
SECTION_DATA static u16 l_loadResPtrn1[1 + 1 /* padding */] = {
    0x02FF,
    /* padding */
    0x0000,
};

/* 80AB2284-80AB229C -00001 0018+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[6] = {
    (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn1,
    (void*)&l_loadResPtrn1, (void*)&l_loadResPtrn1, (void*)&l_loadResPtrn0,
};

/* 80AB229C-80AB245C 0000AC 01C0+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[448] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xFF, 0xFF, 0xFF, 0xFF,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x2F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x2B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x31,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x2A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x30,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x2D, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x33, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80AB245C-80AB2734 00026C 02D8+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[728] = {
    0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x24,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x24,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x24,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x26,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x15,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x25,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x25,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1C,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x25,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0x00, 0x00,
};
#pragma pop

/* 80AB2734-80AB2854 000544 0120+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[288] = {
    0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x01, 0x00, 0x02, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x01, 0x00, 0x05, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x01, 0x00, 0x08, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x01, 0x00, 0x0A, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0B, 0xFF, 0x01, 0x00, 0x0C, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0D, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0E, 0xFF, 0x01, 0x00, 0x0F, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0C, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0F, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80AB2854-80AB2984 000664 0130+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[304] = {
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x01, 0x00, 0x01, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x01, 0x00, 0x05, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x01, 0x00, 0x07, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x01, 0x00, 0x01, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x01, 0x00, 0x01, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0B, 0xFF, 0x01, 0x00, 0x0A, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0C, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0D, 0xFF, 0x01, 0x00, 0x0E, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0F, 0xFF, 0x01, 0x00, 0x10, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x11, 0xFF, 0x01, 0x00, 0x12, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x13, 0xFF, 0x01, 0x00, 0x14, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x15, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x16, 0xFF, 0x01, 0x00, 0x17, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x18, 0xFF, 0x01, 0x00, 0x15, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x19, 0xFF, 0x01, 0x00, 0x0A, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80AB2984-80AB2990 -00001 000C+00 1/1 0/0 0/0 .data            mCutNameList__13daNpc_Pouya_c */
SECTION_DATA void* daNpc_Pouya_c::mCutNameList[3] = {
    (void*)&d_a_npc_pouya__stringBase0,
    (void*)(((char*)&d_a_npc_pouya__stringBase0) + 0x97),
    (void*)(((char*)&d_a_npc_pouya__stringBase0) + 0xA8),
};

/* 80AB2990-80AB299C -00001 000C+00 0/1 0/0 0/0 .data            @3817 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3817[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutHaveFavorToAsk__13daNpc_Pouya_cFi,
};
#pragma pop

/* 80AB299C-80AB29A8 -00001 000C+00 0/1 0/0 0/0 .data            @3818 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3818[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutHaveFavorToAsk__13daNpc_Pouya_cFi,
};
#pragma pop

/* 80AB29A8-80AB29CC 0007B8 0024+00 1/2 0/0 0/0 .data            mCutList__13daNpc_Pouya_c */
SECTION_DATA u8 daNpc_Pouya_c::mCutList[36] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AB29CC-80AB29D8 0007DC 000C+00 1/0 0/0 0/0 .data            normal$4547 */
SECTION_DATA static u8 normal[12] = {
    0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
};

/* 80AB29D8-80AB29E4 0007E8 000C+00 1/0 0/0 0/0 .data            uttae01$4548 */
SECTION_DATA static u8 uttae01[12] = {
    0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};

/* 80AB29E4-80AB29F0 0007F4 000C+00 1/0 0/0 0/0 .data            uttae02$4549 */
SECTION_DATA static u8 uttae02[12] = {
    0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
};

/* 80AB29F0-80AB29FC 000800 000C+00 1/0 0/0 0/0 .data            koufun01$4550 */
SECTION_DATA static u8 koufun01[12] = {
    0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};

/* 80AB29FC-80AB2A08 00080C 000C+00 1/0 0/0 0/0 .data            koufun02$4551 */
SECTION_DATA static u8 koufun02[12] = {
    0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
};

/* 80AB2A08-80AB2A10 -00001 0008+00 1/0 0/0 0/0 .data            brkSeq_normal$4552 */
SECTION_DATA static void* brkSeq_normal[2] = {
    (void*)&normal,
    (void*)NULL,
};

/* 80AB2A10-80AB2A1C -00001 000C+00 1/0 0/0 0/0 .data            brkSeq_uttae01_uttae02$4553 */
SECTION_DATA static void* brkSeq_uttae01_uttae02[3] = {
    (void*)&uttae01,
    (void*)&uttae02,
    (void*)NULL,
};

/* 80AB2A1C-80AB2A28 -00001 000C+00 1/0 0/0 0/0 .data            brkSeq_koufun01_koufun02$4554 */
SECTION_DATA static void* brkSeq_koufun01_koufun02[3] = {
    (void*)&koufun01,
    (void*)&koufun02,
    (void*)NULL,
};

/* 80AB2A28-80AB2A34 -00001 000C+00 1/1 0/0 0/0 .data            brkSeqList$4555 */
SECTION_DATA static void* brkSeqList[3] = {
    (void*)&brkSeq_normal,
    (void*)&brkSeq_uttae01_uttae02,
    (void*)&brkSeq_koufun01_koufun02,
};

/* 80AB2A34-80AB2A50 -00001 001C+00 1/1 0/0 0/0 .data            @4598 */
SECTION_DATA static void* lit_4598[7] = {
    (void*)(((char*)ctrlSubFaceMotion__13daNpc_Pouya_cFi) + 0x48),
    (void*)(((char*)ctrlSubFaceMotion__13daNpc_Pouya_cFi) + 0x68),
    (void*)(((char*)ctrlSubFaceMotion__13daNpc_Pouya_cFi) + 0x8C),
    (void*)(((char*)ctrlSubFaceMotion__13daNpc_Pouya_cFi) + 0x48),
    (void*)(((char*)ctrlSubFaceMotion__13daNpc_Pouya_cFi) + 0x68),
    (void*)(((char*)ctrlSubFaceMotion__13daNpc_Pouya_cFi) + 0x8C),
    (void*)(((char*)ctrlSubFaceMotion__13daNpc_Pouya_cFi) + 0x68),
};

/* 80AB2A50-80AB2A5C -00001 000C+00 1/1 0/0 0/0 .data            @4663 */
SECTION_DATA static void* lit_4663[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_Pouya_cFPv,
};

/* 80AB2A5C-80AB2A90 -00001 0034+00 1/1 0/0 0/0 .data            @4743 */
SECTION_DATA static void* lit_4743[13] = {
    (void*)(((char*)setAfterTalkMotion__13daNpc_Pouya_cFv) + 0x40),
    (void*)(((char*)setAfterTalkMotion__13daNpc_Pouya_cFv) + 0x40),
    (void*)(((char*)setAfterTalkMotion__13daNpc_Pouya_cFv) + 0x40),
    (void*)(((char*)setAfterTalkMotion__13daNpc_Pouya_cFv) + 0x40),
    (void*)(((char*)setAfterTalkMotion__13daNpc_Pouya_cFv) + 0x40),
    (void*)(((char*)setAfterTalkMotion__13daNpc_Pouya_cFv) + 0x40),
    (void*)(((char*)setAfterTalkMotion__13daNpc_Pouya_cFv) + 0x40),
    (void*)(((char*)setAfterTalkMotion__13daNpc_Pouya_cFv) + 0x60),
    (void*)(((char*)setAfterTalkMotion__13daNpc_Pouya_cFv) + 0x44),
    (void*)(((char*)setAfterTalkMotion__13daNpc_Pouya_cFv) + 0x4C),
    (void*)(((char*)setAfterTalkMotion__13daNpc_Pouya_cFv) + 0x54),
    (void*)(((char*)setAfterTalkMotion__13daNpc_Pouya_cFv) + 0x60),
    (void*)(((char*)setAfterTalkMotion__13daNpc_Pouya_cFv) + 0x5C),
};

/* 80AB2A90-80AB2A9C -00001 000C+00 1/1 0/0 0/0 .data            @4758 */
SECTION_DATA static void* lit_4758[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_Pouya_cFPv,
};

/* 80AB2A9C-80AB2AA8 -00001 000C+00 1/1 0/0 0/0 .data            @4763 */
SECTION_DATA static void* lit_4763[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_Pouya_cFPv,
};

/* 80AB2AA8-80AB2AB4 -00001 000C+00 1/1 0/0 0/0 .data            @5095 */
SECTION_DATA static void* lit_5095[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__13daNpc_Pouya_cFPv,
};

/* 80AB2AB4-80AB2AE8 -00001 0034+00 1/1 0/0 0/0 .data            @5334 */
SECTION_DATA static void* lit_5334[13] = {
    (void*)(((char*)cutHaveFavorToAsk__13daNpc_Pouya_cFi) + 0x454),
    (void*)(((char*)cutHaveFavorToAsk__13daNpc_Pouya_cFi) + 0x454),
    (void*)(((char*)cutHaveFavorToAsk__13daNpc_Pouya_cFi) + 0x554),
    (void*)(((char*)cutHaveFavorToAsk__13daNpc_Pouya_cFi) + 0x554),
    (void*)(((char*)cutHaveFavorToAsk__13daNpc_Pouya_cFi) + 0x454),
    (void*)(((char*)cutHaveFavorToAsk__13daNpc_Pouya_cFi) + 0x5A0),
    (void*)(((char*)cutHaveFavorToAsk__13daNpc_Pouya_cFi) + 0x554),
    (void*)(((char*)cutHaveFavorToAsk__13daNpc_Pouya_cFi) + 0x67C),
    (void*)(((char*)cutHaveFavorToAsk__13daNpc_Pouya_cFi) + 0x67C),
    (void*)(((char*)cutHaveFavorToAsk__13daNpc_Pouya_cFi) + 0x67C),
    (void*)(((char*)cutHaveFavorToAsk__13daNpc_Pouya_cFi) + 0x5A8),
    (void*)(((char*)cutHaveFavorToAsk__13daNpc_Pouya_cFi) + 0x668),
    (void*)(((char*)cutHaveFavorToAsk__13daNpc_Pouya_cFi) + 0x5A8),
};

/* 80AB2AE8-80AB2B1C -00001 0034+00 1/1 0/0 0/0 .data            @5333 */
SECTION_DATA static void* lit_5333[13] = {
    (void*)(((char*)cutHaveFavorToAsk__13daNpc_Pouya_cFi) + 0x11C),
    (void*)(((char*)cutHaveFavorToAsk__13daNpc_Pouya_cFi) + 0x424),
    (void*)(((char*)cutHaveFavorToAsk__13daNpc_Pouya_cFi) + 0x178),
    (void*)(((char*)cutHaveFavorToAsk__13daNpc_Pouya_cFi) + 0x180),
    (void*)(((char*)cutHaveFavorToAsk__13daNpc_Pouya_cFi) + 0x230),
    (void*)(((char*)cutHaveFavorToAsk__13daNpc_Pouya_cFi) + 0x244),
    (void*)(((char*)cutHaveFavorToAsk__13daNpc_Pouya_cFi) + 0x250),
    (void*)(((char*)cutHaveFavorToAsk__13daNpc_Pouya_cFi) + 0x424),
    (void*)(((char*)cutHaveFavorToAsk__13daNpc_Pouya_cFi) + 0x424),
    (void*)(((char*)cutHaveFavorToAsk__13daNpc_Pouya_cFi) + 0x424),
    (void*)(((char*)cutHaveFavorToAsk__13daNpc_Pouya_cFi) + 0x300),
    (void*)(((char*)cutHaveFavorToAsk__13daNpc_Pouya_cFi) + 0x364),
    (void*)(((char*)cutHaveFavorToAsk__13daNpc_Pouya_cFi) + 0x378),
};

/* 80AB2B1C-80AB2B3C -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Pouya_MethodTable */
static actor_method_class daNpc_Pouya_MethodTable = {
    (process_method_func)daNpc_Pouya_Create__FPv,
    (process_method_func)daNpc_Pouya_Delete__FPv,
    (process_method_func)daNpc_Pouya_Execute__FPv,
    (process_method_func)daNpc_Pouya_IsDelete__FPv,
    (process_method_func)daNpc_Pouya_Draw__FPv,
};

/* 80AB2B3C-80AB2B6C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_POUYA */
extern actor_process_profile_definition g_profile_NPC_POUYA = {
  fpcLy_CURRENT_e,          // mLayerID
  7,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_NPC_POUYA,           // mProcName
  &g_fpcLf_Method.base,    // sub_method
  sizeof(daNpc_Pouya_c),    // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  404,                      // mPriority
  &daNpc_Pouya_MethodTable, // sub_method
  0x00040107,               // mStatus
  fopAc_NPC_e,              // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};

/* 80AB2B6C-80AB2B78 00097C 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80AB2B78-80AB2B84 000988 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80AB2B84-80AB2BA8 000994 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80AB1FE4,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80AB1FDC,
};

/* 80AB2BA8-80AB2BB4 0009B8 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80AB2BB4-80AB2BC0 0009C4 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80AB2BC0-80AB2BCC 0009D0 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80AB2BCC-80AB2BD8 0009DC 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80AB2BD8-80AB2BE4 0009E8 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80AB2BE4-80AB2BF0 0009F4 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 80AB2BF0-80AB2BFC 000A00 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80AB2BFC-80AB2C08 000A0C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80AB2C08-80AB2C14 000A18 000C+00 3/3 0/0 0/0 .data            __vt__13daNpcT_Path_c */
SECTION_DATA extern void* __vt__13daNpcT_Path_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpcT_Path_cFv,
};

/* 80AB2C14-80AB2CD8 000A24 00C4+00 2/2 0/0 0/0 .data            __vt__13daNpc_Pouya_c */
SECTION_DATA extern void* __vt__13daNpc_Pouya_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpc_Pouya_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__13daNpc_Pouya_cFi,
    (void*)checkChangeJoint__13daNpc_Pouya_cFi,
    (void*)checkRemoveJoint__13daNpc_Pouya_cFi,
    (void*)getBackboneJointNo__13daNpc_Pouya_cFv,
    (void*)getNeckJointNo__13daNpc_Pouya_cFv,
    (void*)getHeadJointNo__13daNpc_Pouya_cFv,
    (void*)getFootLJointNo__8daNpcT_cFv,
    (void*)getFootRJointNo__8daNpcT_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__13daNpc_Pouya_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__13daNpc_Pouya_cFi,
    (void*)setParam__13daNpc_Pouya_cFv,
    (void*)checkChangeEvt__13daNpc_Pouya_cFv,
    (void*)evtTalk__13daNpc_Pouya_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__13daNpc_Pouya_cFv,
    (void*)setAfterTalkMotion__13daNpc_Pouya_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__13daNpc_Pouya_cFv,
    (void*)beforeMove__13daNpc_Pouya_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__13daNpc_Pouya_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__13daNpc_Pouya_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__13daNpc_Pouya_cFv,
    (void*)drawOtherMdl__13daNpc_Pouya_cFv,
    (void*)drawGhost__8daNpcT_cFv,
    (void*)afterSetFaceMotionAnm__8daNpcT_cFiifi,
    (void*)afterSetMotionAnm__13daNpc_Pouya_cFiifi,
    (void*)getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c,
    (void*)getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c,
    (void*)changeAnm__8daNpcT_cFPiPi,
    (void*)changeBck__8daNpcT_cFPiPi,
    (void*)changeBtp__8daNpcT_cFPiPi,
    (void*)changeBtk__8daNpcT_cFPiPi,
    (void*)setMotionAnm__8daNpcT_cFifi,
};

/* 80AADDAC-80AADEE0 0000EC 0134+00 1/0 0/0 0/0 .text            __dt__13daNpc_Pouya_cFv */
daNpc_Pouya_c::~daNpc_Pouya_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AB2000-80AB208C 000000 008C+00 8/8 0/0 0/0 .rodata          m__19daNpc_Pouya_Param_c */
SECTION_RODATA u8 const daNpc_Pouya_Param_c::m[140] = {
    0x42, 0xF0, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xC8, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x42, 0xC8, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0x00, 0x05, 0x00, 0x06,
    0x42, 0xDC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AB2000, &daNpc_Pouya_Param_c::m);

/* 80AB208C-80AB20A4 00008C 0018+00 0/1 0/0 0/0 .rodata          heapSize$3971 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const heapSize[24] = {
    0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x54, 0x40, 0x00, 0x00, 0x36, 0x80,
    0x00, 0x00, 0x36, 0x80, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x80, 0x00,
};
COMPILER_STRIP_GATE(0x80AB208C, &heapSize);
#pragma pop

/* 80AB20A4-80AB20A8 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4039 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4039 = -150.0f;
COMPILER_STRIP_GATE(0x80AB20A4, &lit_4039);
#pragma pop

/* 80AB20A8-80AB20AC 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4040 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4040 = -100.0f;
COMPILER_STRIP_GATE(0x80AB20A8, &lit_4040);
#pragma pop

/* 80AB20AC-80AB20B0 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4041 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4041 = 150.0f;
COMPILER_STRIP_GATE(0x80AB20AC, &lit_4041);
#pragma pop

/* 80AB20B0-80AB20B4 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4042 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4042 = 300.0f;
COMPILER_STRIP_GATE(0x80AB20B0, &lit_4042);
#pragma pop

/* 80AB20B4-80AB20B8 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4043 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4043 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80AB20B4, &lit_4043);
#pragma pop

/* 80AADEE0-80AAE1AC 000220 02CC+00 1/1 0/0 0/0 .text            create__13daNpc_Pouya_cFv */
void daNpc_Pouya_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AB20B8-80AB20BC 0000B8 0004+00 6/12 0/0 0/0 .rodata          @4204 */
SECTION_RODATA static u8 const lit_4204[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AB20B8, &lit_4204);

/* 80AB20BC-80AB20C0 0000BC 0004+00 0/2 0/0 0/0 .rodata          @4205 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4205 = 65536.0f;
COMPILER_STRIP_GATE(0x80AB20BC, &lit_4205);
#pragma pop

/* 80AB20C0-80AB20C4 0000C0 0004+00 0/3 0/0 0/0 .rodata          @4206 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4206 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80AB20C0, &lit_4206);
#pragma pop

/* 80AB20C4-80AB20C8 0000C4 0004+00 0/1 0/0 0/0 .rodata          bmdTypeList$4325 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const bmdTypeList[4] = {
    0x00,
    0x00,
    0x00,
    0x01,
};
COMPILER_STRIP_GATE(0x80AB20C4, &bmdTypeList);
#pragma pop

/* 80AB20C8-80AB20CC 0000C8 0004+00 3/6 0/0 0/0 .rodata          @4414 */
SECTION_RODATA static f32 const lit_4414 = 1.0f;
COMPILER_STRIP_GATE(0x80AB20C8, &lit_4414);

/* 80AAE1AC-80AAE5CC 0004EC 0420+00 1/1 0/0 0/0 .text            CreateHeap__13daNpc_Pouya_cFv */
void daNpc_Pouya_c::CreateHeap() {
    // NONMATCHING
}

/* 80AAE5CC-80AAE608 00090C 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80AAE608-80AAE620 000948 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80AAE620-80AAE65C 000960 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80AAE65C-80AAE674 00099C 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80AAE674-80AAE6BC 0009B4 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80AAE6BC-80AAE6E0 0009FC 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80AAE6E0-80AAE71C 000A20 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80AAE71C-80AAE734 000A5C 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80AAE734-80AAE770 000A74 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80AAE770-80AAE788 000AB0 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80AAE788-80AAE7BC 000AC8 0034+00 1/1 0/0 0/0 .text            Delete__13daNpc_Pouya_cFv */
void daNpc_Pouya_c::Delete() {
    // NONMATCHING
}

/* 80AAE7BC-80AAE7DC 000AFC 0020+00 2/2 0/0 0/0 .text            Execute__13daNpc_Pouya_cFv */
void daNpc_Pouya_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AB20CC-80AB20D0 0000CC 0004+00 1/1 0/0 0/0 .rodata          @4463 */
SECTION_RODATA static f32 const lit_4463 = 100.0f;
COMPILER_STRIP_GATE(0x80AB20CC, &lit_4463);

/* 80AAE7DC-80AAE870 000B1C 0094+00 1/1 0/0 0/0 .text            Draw__13daNpc_Pouya_cFv */
void daNpc_Pouya_c::Draw() {
    // NONMATCHING
}

/* 80AAE870-80AAE890 000BB0 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__13daNpc_Pouya_cFP10fopAc_ac_c            */
void daNpc_Pouya_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80AAE890-80AAE8E8 000BD0 0058+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__13daNpc_Pouya_cFP8J3DJointi               */
void daNpc_Pouya_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80AAE8E8-80AAE94C 000C28 0064+00 1/1 0/0 1/1 .text            getType__13daNpc_Pouya_cFv */
void daNpc_Pouya_c::getType() {
    // NONMATCHING
}

/* 80AAE94C-80AAE9D8 000C8C 008C+00 1/1 0/0 0/0 .text            isDelete__13daNpc_Pouya_cFv */
void daNpc_Pouya_c::isDelete() {
    // NONMATCHING
}

/* 80AAE9D8-80AAEBCC 000D18 01F4+00 1/1 0/0 0/0 .text            reset__13daNpc_Pouya_cFv */
void daNpc_Pouya_c::reset() {
    // NONMATCHING
}

/* 80AAEBCC-80AAEDB8 000F0C 01EC+00 2/0 0/0 0/0 .text ctrlSubFaceMotion__13daNpc_Pouya_cFi */
void daNpc_Pouya_c::ctrlSubFaceMotion(int param_0) {
    // NONMATCHING
}

/* 80AAEDB8-80AAEE44 0010F8 008C+00 1/0 0/0 0/0 .text            afterJntAnm__13daNpc_Pouya_cFi */
void daNpc_Pouya_c::afterJntAnm(int param_0) {
    // NONMATCHING
}

/* 80AAEE44-80AAEFB4 001184 0170+00 1/0 0/0 0/0 .text            setParam__13daNpc_Pouya_cFv */
void daNpc_Pouya_c::setParam() {
    // NONMATCHING
}

/* 80AAEFB4-80AAF148 0012F4 0194+00 1/0 0/0 0/0 .text            checkChangeEvt__13daNpc_Pouya_cFv
 */
void daNpc_Pouya_c::checkChangeEvt() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AB20D0-80AB20D4 0000D0 0004+00 3/3 0/0 0/0 .rodata          @4742 */
SECTION_RODATA static f32 const lit_4742 = -1.0f;
COMPILER_STRIP_GATE(0x80AB20D0, &lit_4742);

/* 80AAF148-80AAF1F0 001488 00A8+00 2/0 0/0 0/0 .text setAfterTalkMotion__13daNpc_Pouya_cFv */
void daNpc_Pouya_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 80AAF1F0-80AAF1F4 001530 0004+00 1/1 0/0 0/0 .text            srchActors__13daNpc_Pouya_cFv */
void daNpc_Pouya_c::srchActors() {
    /* empty function */
}

/* 80AAF1F4-80AAF294 001534 00A0+00 1/0 0/0 0/0 .text            evtTalk__13daNpc_Pouya_cFv */
void daNpc_Pouya_c::evtTalk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AB2120-80AB2120 000120 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80AB21D5 = "Pouya";
#pragma pop

/* 80AAF294-80AAF35C 0015D4 00C8+00 1/0 0/0 0/0 .text            evtCutProc__13daNpc_Pouya_cFv */
void daNpc_Pouya_c::evtCutProc() {
    // NONMATCHING
}

/* 80AAF35C-80AAF4F8 00169C 019C+00 1/0 0/0 0/0 .text            action__13daNpc_Pouya_cFv */
void daNpc_Pouya_c::action() {
    // NONMATCHING
}

/* 80AAF4F8-80AAF5BC 001838 00C4+00 1/0 0/0 0/0 .text            beforeMove__13daNpc_Pouya_cFv */
void daNpc_Pouya_c::beforeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AB20D4-80AB20D8 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4911 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4911 = 20.0f;
COMPILER_STRIP_GATE(0x80AB20D4, &lit_4911);
#pragma pop

/* 80AB20D8-80AB20DC 0000D8 0004+00 0/1 0/0 0/0 .rodata          @4912 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4912 = 30.0f;
COMPILER_STRIP_GATE(0x80AB20D8, &lit_4912);
#pragma pop

/* 80AB20DC-80AB20E0 0000DC 0004+00 0/1 0/0 0/0 .rodata          @4913 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4913 = 0x38C90FDB;
COMPILER_STRIP_GATE(0x80AB20DC, &lit_4913);
#pragma pop

/* 80AB20E0-80AB20E4 0000E0 0004+00 0/1 0/0 0/0 .rodata          @4914 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4914 = -10.0f;
COMPILER_STRIP_GATE(0x80AB20E0, &lit_4914);
#pragma pop

/* 80AB20E4-80AB20E8 0000E4 0004+00 0/1 0/0 0/0 .rodata          @4915 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4915 = 120.0f;
COMPILER_STRIP_GATE(0x80AB20E4, &lit_4915);
#pragma pop

/* 80AB20E8-80AB20F0 0000E8 0004+04 0/1 0/0 0/0 .rodata          @4916 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4916[1 + 1 /* padding */] = {
    60.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80AB20E8, &lit_4916);
#pragma pop

/* 80AB20F0-80AB20F8 0000F0 0008+00 2/4 0/0 0/0 .rodata          @4918 */
SECTION_RODATA static u8 const lit_4918[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AB20F0, &lit_4918);

/* 80AAF5BC-80AAF8E4 0018FC 0328+00 1/0 0/0 0/0 .text            setAttnPos__13daNpc_Pouya_cFv */
void daNpc_Pouya_c::setAttnPos() {
    // NONMATCHING
}

/* 80AAF8E4-80AAFA5C 001C24 0178+00 1/0 0/0 0/0 .text            setCollision__13daNpc_Pouya_cFv */
void daNpc_Pouya_c::setCollision() {
    // NONMATCHING
}

/* 80AAFA5C-80AAFA64 001D9C 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__13daNpc_Pouya_cFv */
bool daNpc_Pouya_c::drawDbgInfo() {
    return false;
}

/* ############################################################################################## */
/* 80AB20F8-80AB2100 0000F8 0008+00 0/1 0/0 0/0 .rodata          @4976 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4976[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AB20F8, &lit_4976);
#pragma pop

/* 80AB2100-80AB2108 000100 0008+00 0/1 0/0 0/0 .rodata          @4977 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4977[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AB2100, &lit_4977);
#pragma pop

/* 80AB2108-80AB2110 000108 0008+00 0/1 0/0 0/0 .rodata          @4978 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4978[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AB2108, &lit_4978);
#pragma pop

/* 80AB2110-80AB2114 000110 0004+00 1/1 0/0 0/0 .rodata          jointNo$5024 */
SECTION_RODATA static u8 const jointNo[4] = {
    0x00,
    0x00,
    0x00,
    0x04,
};
COMPILER_STRIP_GATE(0x80AB2110, &jointNo);

/* 80AAFA64-80AAFB4C 001DA4 00E8+00 1/0 0/0 0/0 .text            drawOtherMdl__13daNpc_Pouya_cFv */
void daNpc_Pouya_c::drawOtherMdl() {
    // NONMATCHING
}

/* 80AAFB4C-80AAFBDC 001E8C 0090+00 1/0 0/0 0/0 .text afterSetMotionAnm__13daNpc_Pouya_cFiifi */
void daNpc_Pouya_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
    // NONMATCHING
}

/* 80AAFBDC-80AAFC24 001F1C 0048+00 1/1 0/0 0/0 .text            selectAction__13daNpc_Pouya_cFv */
void daNpc_Pouya_c::selectAction() {
    // NONMATCHING
}

/* 80AAFC24-80AAFC50 001F64 002C+00 2/2 0/0 0/0 .text
 * chkAction__13daNpc_Pouya_cFM13daNpc_Pouya_cFPCvPvPv_i        */
void daNpc_Pouya_c::chkAction(int (daNpc_Pouya_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80AAFC50-80AAFCF8 001F90 00A8+00 2/2 0/0 0/0 .text
 * setAction__13daNpc_Pouya_cFM13daNpc_Pouya_cFPCvPvPv_i        */
void daNpc_Pouya_c::setAction(int (daNpc_Pouya_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80AAFCF8-80AAFE08 002038 0110+00 1/1 0/0 0/0 .text            setPrtcls__13daNpc_Pouya_cFv */
void daNpc_Pouya_c::setPrtcls() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AB2114-80AB211C 000114 0008+00 0/1 0/0 0/0 .rodata          @5191 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5191[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80AB2114, &lit_5191);
#pragma pop

/* 80AB2120-80AB2120 000120 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80AB21DB = "prm";
SECTION_DEAD static char const* const stringBase_80AB21DF = "timer";
SECTION_DEAD static char const* const stringBase_80AB21E5 = "msgNo";
SECTION_DEAD static char const* const stringBase_80AB21EB = "rate";
#pragma pop

/* 80AAFE08-80AB04A8 002148 06A0+00 4/0 0/0 0/0 .text cutHaveFavorToAsk__13daNpc_Pouya_cFi */
void daNpc_Pouya_c::cutHaveFavorToAsk(int param_0) {
    // NONMATCHING
}

/* 80AB04A8-80AB0A7C 0027E8 05D4+00 1/0 0/0 0/0 .text            wait__13daNpc_Pouya_cFPv */
void daNpc_Pouya_c::wait(void* param_0) {
    // NONMATCHING
}

/* 80AB0A7C-80AB0CFC 002DBC 0280+00 3/0 0/0 0/0 .text            talk__13daNpc_Pouya_cFPv */
void daNpc_Pouya_c::talk(void* param_0) {
    // NONMATCHING
}

/* 80AB0CFC-80AB0D1C 00303C 0020+00 1/0 0/0 0/0 .text            daNpc_Pouya_Create__FPv */
static void daNpc_Pouya_Create(void* param_0) {
    // NONMATCHING
}

/* 80AB0D1C-80AB0D3C 00305C 0020+00 1/0 0/0 0/0 .text            daNpc_Pouya_Delete__FPv */
static void daNpc_Pouya_Delete(void* param_0) {
    // NONMATCHING
}

/* 80AB0D3C-80AB0D5C 00307C 0020+00 1/0 0/0 0/0 .text            daNpc_Pouya_Execute__FPv */
static void daNpc_Pouya_Execute(void* param_0) {
    // NONMATCHING
}

/* 80AB0D5C-80AB0D7C 00309C 0020+00 1/0 0/0 0/0 .text            daNpc_Pouya_Draw__FPv */
static void daNpc_Pouya_Draw(void* param_0) {
    // NONMATCHING
}

/* 80AB0D7C-80AB0D84 0030BC 0008+00 1/0 0/0 0/0 .text            daNpc_Pouya_IsDelete__FPv */
static bool daNpc_Pouya_IsDelete(void* param_0) {
    return true;
}

/* 80AB0D84-80AB0DB4 0030C4 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 80AB0DB4-80AB0DFC 0030F4 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80AB0DFC-80AB1184 00313C 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
// daNpcT_c::~daNpcT_c() {
extern "C" void __dt__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80AB1184-80AB11C0 0034C4 003C+00 3/3 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80AB11C0-80AB11FC 003500 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80AB11FC-80AB1244 00353C 0048+00 1/0 0/0 0/0 .text            __dt__13daNpcT_Path_cFv */
// daNpcT_Path_c::~daNpcT_Path_c() {
extern "C" void __dt__13daNpcT_Path_cFv() {
    // NONMATCHING
}

/* 80AB1244-80AB128C 003584 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80AB128C-80AB12D4 0035CC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80AB12D4-80AB16D8 003614 0404+00 1/1 0/0 0/0 .text
 * __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
// daNpcT_c::daNpcT_c(daNpcT_faceMotionAnmData_c const* param_0,
//                       daNpcT_motionAnmData_c const* param_1,
// daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2, int param_3,
//                          daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4, int param_5,
//                       daNpcT_evtData_c const* param_6, char** param_7) {
extern "C" void __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc() {
    // NONMATCHING
}

/* 80AB16D8-80AB16DC 003A18 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80AB16DC-80AB17D8 003A1C 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 80AB17D8-80AB17DC 003B18 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80AB17DC-80AB1824 003B1C 0048+00 1/0 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80AB1824-80AB186C 003B64 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 80AB186C-80AB18DC 003BAC 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80AB18DC-80AB1938 003C1C 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80AB1938-80AB19A8 003C78 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80AB19A8-80AB19F0 003CE8 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80AB19F0-80AB1B0C 003D30 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* 80AB1B0C-80AB1D14 003E4C 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 80AB1D24-80AB1D2C 004064 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80AB1D2C-80AB1D34 00406C 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80AB1D34-80AB1D3C 004074 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 80AB1D40-80AB1D48 004080 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 80AB1D48-80AB1D60 004088 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80AB1D60-80AB1D64 0040A0 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 80AB1D64-80AB1D6C 0040A4 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80AB1D6C-80AB1D9C 0040AC 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 80AB1D9C-80AB1DCC 0040DC 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 80AB1DCC-80AB1DD0 00410C 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80AB1DD0-80AB1DD4 004110 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80AB1DD4-80AB1DD8 004114 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80AB1DD8-80AB1DDC 004118 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80AB1DDC-80AB1DF8 00411C 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_80AB1DDC(void* _this, int* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AB2CD8-80AB2CE4 000AE8 000C+00 2/2 0/0 0/0 .data            __vt__19daNpc_Pouya_Param_c */
SECTION_DATA extern void* __vt__19daNpc_Pouya_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__19daNpc_Pouya_Param_cFv,
};

/* 80AB2CF0-80AB2CFC 000008 000C+00 1/1 0/0 0/0 .bss             @3819 */
static u8 lit_3819[12];

/* 80AB2CFC-80AB2D00 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80AB1DF8-80AB1E94 004138 009C+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_pouya_cpp */
void __sinit_d_a_npc_pouya_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80AB1DF8, __sinit_d_a_npc_pouya_cpp);
#pragma pop

/* 80AB1E94-80AB1F54 0041D4 00C0+00 1/1 0/0 0/0 .text
 * __ct__13daNpc_Pouya_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
daNpc_Pouya_c::daNpc_Pouya_c(daNpcT_faceMotionAnmData_c const* param_0,
                                 daNpcT_motionAnmData_c const* param_1,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2,
                                 int param_3,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4,
                                 int param_5, daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
}

/* 80AB1F54-80AB1F5C 004294 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__13daNpc_Pouya_cFv */
u16 daNpc_Pouya_c::getEyeballMaterialNo() {
    return true;
}

/* 80AB1F5C-80AB1F64 00429C 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__13daNpc_Pouya_cFv
 */
s32 daNpc_Pouya_c::getHeadJointNo() {
    return 4;
}

/* 80AB1F64-80AB1F6C 0042A4 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__13daNpc_Pouya_cFv
 */
s32 daNpc_Pouya_c::getNeckJointNo() {
    return 3;
}

/* 80AB1F6C-80AB1F74 0042AC 0008+00 1/0 0/0 0/0 .text getBackboneJointNo__13daNpc_Pouya_cFv */
bool daNpc_Pouya_c::getBackboneJointNo() {
    return true;
}

/* 80AB1F74-80AB1F84 0042B4 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__13daNpc_Pouya_cFi
 */
void daNpc_Pouya_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 80AB1F84-80AB1F94 0042C4 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__13daNpc_Pouya_cFi
 */
void daNpc_Pouya_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
}

/* 80AB1F94-80AB1FDC 0042D4 0048+00 2/1 0/0 0/0 .text            __dt__19daNpc_Pouya_Param_cFv */
daNpc_Pouya_Param_c::~daNpc_Pouya_Param_c() {
    // NONMATCHING
}

/* 80AB1FDC-80AB1FE4 00431C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80AB1FDC() {
    // NONMATCHING
}

/* 80AB1FE4-80AB1FEC 004324 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80AB1FE4() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AB211C-80AB2120 00011C 0004+00 0/0 0/0 0/0 .rodata          @5332 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5332 = 22.0f;
COMPILER_STRIP_GATE(0x80AB211C, &lit_5332);
#pragma pop

/* 80AB2120-80AB2120 000120 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
