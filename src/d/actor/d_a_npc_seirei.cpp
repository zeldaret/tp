/**
 * @file d_a_npc_seirei.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_seirei.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__14daNpc_Seirei_cFv();
extern "C" void create__14daNpc_Seirei_cFv();
extern "C" void CreateHeap__14daNpc_Seirei_cFv();
extern "C" void Delete__14daNpc_Seirei_cFv();
extern "C" void Execute__14daNpc_Seirei_cFv();
extern "C" void Draw__14daNpc_Seirei_cFv();
extern "C" void createHeapCallBack__14daNpc_Seirei_cFP10fopAc_ac_c();
extern "C" void getType__14daNpc_Seirei_cFv();
extern "C" bool isDelete__14daNpc_Seirei_cFv();
extern "C" void reset__14daNpc_Seirei_cFv();
extern "C" void setParam__14daNpc_Seirei_cFv();
extern "C" void getDistTable__12dAttention_cFi();
extern "C" bool checkChangeEvt__14daNpc_Seirei_cFv();
extern "C" void srchActors__14daNpc_Seirei_cFv();
extern "C" void evtTalk__14daNpc_Seirei_cFv();
extern "C" void evtCutProc__14daNpc_Seirei_cFv();
extern "C" void action__14daNpc_Seirei_cFv();
extern "C" void beforeMove__14daNpc_Seirei_cFv();
extern "C" void setAttnPos__14daNpc_Seirei_cFv();
extern "C" bool drawDbgInfo__14daNpc_Seirei_cFv();
extern "C" void afterSetMotionAnm__14daNpc_Seirei_cFiifi();
extern "C" void selectAction__14daNpc_Seirei_cFv();
extern "C" void chkAction__14daNpc_Seirei_cFM14daNpc_Seirei_cFPCvPvPv_i();
extern "C" void setAction__14daNpc_Seirei_cFM14daNpc_Seirei_cFPCvPvPv_i();
extern "C" void ctrlWaitAnm__14daNpc_Seirei_cFv();
extern "C" void setPrtcls__14daNpc_Seirei_cFv();
extern "C" void chkFirstMeeting__14daNpc_Seirei_cFv();
extern "C" void cutConversation__14daNpc_Seirei_cFi();
extern "C" void wait__14daNpc_Seirei_cFPv();
extern "C" void talk__14daNpc_Seirei_cFPv();
extern "C" static void daNpc_Seirei_Create__FPv();
extern "C" static void daNpc_Seirei_Delete__FPv();
extern "C" static void daNpc_Seirei_Execute__FPv();
extern "C" static void daNpc_Seirei_Draw__FPv();
extern "C" static bool daNpc_Seirei_IsDelete__FPv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__8daNpcT_cFv();
extern "C" void __dt__4cXyzFv();
extern "C" void __dt__5csXyzFv();
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
extern "C" u16 getEyeballMaterialNo__8daNpcT_cFv();
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi();
extern "C" bool checkChangeJoint__8daNpcT_cFi();
extern "C" bool checkRemoveJoint__8daNpcT_cFi();
extern "C" s32 getBackboneJointNo__8daNpcT_cFv();
extern "C" s32 getNeckJointNo__8daNpcT_cFv();
extern "C" s32 getHeadJointNo__8daNpcT_cFv();
extern "C" s32 getFootLJointNo__8daNpcT_cFv();
extern "C" s32 getFootRJointNo__8daNpcT_cFv();
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv();
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv();
extern "C" void afterJntAnm__8daNpcT_cFi();
extern "C" bool evtEndProc__8daNpcT_cFv();
extern "C" void setAfterTalkMotion__8daNpcT_cFv();
extern "C" void afterMoved__8daNpcT_cFv();
extern "C" void setCollision__8daNpcT_cFv();
extern "C" bool chkXYItems__8daNpcT_cFv();
extern "C" void decTmr__8daNpcT_cFv();
extern "C" void drawOtherMdl__8daNpcT_cFv();
extern "C" void drawGhost__8daNpcT_cFv();
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi();
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c();
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c();
extern "C" void changeAnm__8daNpcT_cFPiPi();
extern "C" void changeBck__8daNpcT_cFPiPi();
extern "C" void changeBtp__8daNpcT_cFPiPi();
extern "C" void changeBtk__8daNpcT_cFPiPi();
extern "C" void func_80AD7B54(void* _this, int*);
extern "C" void __sinit_d_a_npc_seirei_cpp();
extern "C" void
__ct__14daNpc_Seirei_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" void __dt__20daNpc_Seirei_Param_cFv();
extern "C" static void func_80AD7C84();
extern "C" static void func_80AD7C8C();
extern "C" u8 const m__20daNpc_Seirei_Param_c[148];
extern "C" extern char const* const d_a_npc_seirei__stringBase0;
extern "C" void* mCutNameList__14daNpc_Seirei_c[2];
extern "C" u8 mCutList__14daNpc_Seirei_c[24];

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz();
extern "C" void fpcEx_IsExist__FUi();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
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
extern "C" void initialize__18daNpcT_ActorMngr_cFv();
extern "C" void initialize__15daNpcT_MatAnm_cFv();
extern "C" void initialize__22daNpcT_MotionSeqMngr_cFv();
extern "C" void checkEndSequence__22daNpcT_MotionSeqMngr_cFv();
extern "C" void initialize__15daNpcT_JntAnm_cFv();
extern "C" void getTexSRTKeyAnmP__8daNpcT_cFPCci();
extern "C" void getTevRegKeyAnmP__8daNpcT_cFPCci();
extern "C" void setBtkAnm__8daNpcT_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi();
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
extern "C" void setAngle__8daNpcT_cFs();
extern "C" void initTalk__8daNpcT_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci();
extern "C" void daNpcT_chkDoBtnIsSpeak__FP10fopAc_ac_c();
extern "C" void daNpcT_chkEvtBit__FUl();
extern "C" void daNpcT_onTmpBit__FUl();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void getEventId__10dMsgFlow_cFPi();
extern "C" void cM_rndF__Ff();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void __dt__11cBgS_GndChkFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void __dt__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void __ptmf_test();
extern "C" void __ptmf_cmpr();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_22();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_29();
extern "C" void _restgpr_22();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_29();
extern "C" extern u8 const __ptmf_null[12 + 4 /* padding */];
extern "C" u8 dist_table__12dAttention_c[6552];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__8daNpcT_c[49];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_meter2_info[248];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80AD7D88-80AD7D88 0000E0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80AD7D88 = "";
SECTION_DEAD static char const* const stringBase_80AD7D89 = "CONVERSATION_ABOUT_YM";
SECTION_DEAD static char const* const stringBase_80AD7D9F = "DEFAULT_GETITEM";
SECTION_DEAD static char const* const stringBase_80AD7DAF = "NO_RESPONSE";
SECTION_DEAD static char const* const stringBase_80AD7DBB = "Seirei";
SECTION_DEAD static char const* const stringBase_80AD7DC2 = "Seirei1";
SECTION_DEAD static char const* const stringBase_80AD7DCA = "CONVERSATION";
#pragma pop

/* 80AD7E04-80AD7E0C 000020 0008+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[8] = {
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x01,
};

/* 80AD7E0C-80AD7E2C -00001 0020+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[8] = {
    (void*)&d_a_npc_seirei__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_seirei__stringBase0) + 0x1),
    (void*)0x00000002,
    (void*)(((char*)&d_a_npc_seirei__stringBase0) + 0x17),
    (void*)NULL,
    (void*)(((char*)&d_a_npc_seirei__stringBase0) + 0x27),
    (void*)NULL,
};
#pragma pop

/* 80AD7E2C-80AD7E38 -00001 000C+00 2/4 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[3] = {
    (void*)&d_a_npc_seirei__stringBase0,
    (void*)(((char*)&d_a_npc_seirei__stringBase0) + 0x33),
    (void*)(((char*)&d_a_npc_seirei__stringBase0) + 0x3A),
};

/* 80AD7E38-80AD7E3C 000054 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u16 l_loadResPtrn0[1 + 1 /* padding */] = {
    0x01FF,
    /* padding */
    0x0000,
};

/* 80AD7E3C-80AD7E40 000058 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn1 */
SECTION_DATA static u16 l_loadResPtrn1[1 + 1 /* padding */] = {
    0x02FF,
    /* padding */
    0x0000,
};

/* 80AD7E40-80AD7E50 -00001 0010+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[4] = {
    (void*)&l_loadResPtrn1,
    (void*)&l_loadResPtrn1,
    (void*)&l_loadResPtrn1,
    (void*)&l_loadResPtrn0,
};

/* 80AD7E50-80AD7E6C 00006C 001C+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[28] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF,
    0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80AD7E6C-80AD7EA4 000088 0038+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[56] = {
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0xFF, 0xFF,
    0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xFF, 0xFF,
    0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80AD7EA4-80AD7EB4 0000C0 0010+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[16] = {
    0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80AD7EB4-80AD7EE4 0000D0 0030+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[48] = {
    0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0x00, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80AD7EE4-80AD7EEC -00001 0008+00 1/1 0/0 0/0 .data            mCutNameList__14daNpc_Seirei_c */
SECTION_DATA void* daNpc_Seirei_c::mCutNameList[2] = {
    (void*)&d_a_npc_seirei__stringBase0,
    (void*)(((char*)&d_a_npc_seirei__stringBase0) + 0x42),
};

/* 80AD7EEC-80AD7EF8 -00001 000C+00 1/1 0/0 0/0 .data            @3834 */
SECTION_DATA static void* lit_3834[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutConversation__14daNpc_Seirei_cFi,
};

/* 80AD7EF8-80AD7F10 000114 0018+00 2/2 0/0 0/0 .data            mCutList__14daNpc_Seirei_c */
SECTION_DATA u8 daNpc_Seirei_c::mCutList[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AD7F10-80AD7F1C -00001 000C+00 1/1 0/0 0/0 .data            @4415 */
SECTION_DATA static void* lit_4415[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__14daNpc_Seirei_cFPv,
};

/* 80AD7F1C-80AD7F28 -00001 000C+00 1/1 0/0 0/0 .data            @4425 */
SECTION_DATA static void* lit_4425[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__14daNpc_Seirei_cFPv,
};

/* 80AD7F28-80AD7F38 000144 0010+00 0/1 0/0 0/0 .data            btkAnmData$4524 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 btkAnmData[16] = {
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x01,
};
#pragma pop

/* 80AD7F38-80AD7F48 000154 0010+00 0/1 0/0 0/0 .data            brkAnmData$4525 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 brkAnmData[16] = {
    0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x01,
};
#pragma pop

/* 80AD7F48-80AD7F54 -00001 000C+00 1/1 0/0 0/0 .data            @4575 */
SECTION_DATA static void* lit_4575[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__14daNpc_Seirei_cFPv,
};

/* 80AD7F54-80AD7F74 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Seirei_MethodTable */
static actor_method_class daNpc_Seirei_MethodTable = {
    (process_method_func)daNpc_Seirei_Create__FPv,
    (process_method_func)daNpc_Seirei_Delete__FPv,
    (process_method_func)daNpc_Seirei_Execute__FPv,
    (process_method_func)daNpc_Seirei_IsDelete__FPv,
    (process_method_func)daNpc_Seirei_Draw__FPv,
};

/* 80AD7F74-80AD7FA4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_SEIREI */
extern actor_process_profile_definition g_profile_NPC_SEIREI = {
  fpcLy_CURRENT_e,           // mLayerID
  7,                         // mListID
  fpcPi_CURRENT_e,           // mListPrio
  PROC_NPC_SEIREI,           // mProcName
  &g_fpcLf_Method.base,     // sub_method
  sizeof(daNpc_Seirei_c),    // mSize
  0,                         // mSizeOther
  0,                         // mParameters
  &g_fopAc_Method.base,      // sub_method
  363,                       // mPriority
  &daNpc_Seirei_MethodTable, // sub_method
  0x00044000,                // mStatus
  fopAc_ACTOR_e,             // mActorType
  fopAc_CULLBOX_CUSTOM_e,    // cullType
};

/* 80AD7FA4-80AD7FB0 0001C0 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80AD7FB0-80AD7FD4 0001CC 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80AD7C8C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80AD7C84,
};

/* 80AD7FD4-80AD7FE0 0001F0 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80AD7FE0-80AD7FEC 0001FC 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80AD7FEC-80AD7FF8 000208 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80AD7FF8-80AD8004 000214 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80AD8004-80AD8010 000220 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80AD8010-80AD801C 00022C 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 80AD801C-80AD80E0 000238 00C4+00 2/2 0/0 0/0 .data            __vt__14daNpc_Seirei_c */
SECTION_DATA extern void* __vt__14daNpc_Seirei_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14daNpc_Seirei_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__8daNpcT_cFi,
    (void*)checkRemoveJoint__8daNpcT_cFi,
    (void*)getBackboneJointNo__8daNpcT_cFv,
    (void*)getNeckJointNo__8daNpcT_cFv,
    (void*)getHeadJointNo__8daNpcT_cFv,
    (void*)getFootLJointNo__8daNpcT_cFv,
    (void*)getFootRJointNo__8daNpcT_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__8daNpcT_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__8daNpcT_cFi,
    (void*)setParam__14daNpc_Seirei_cFv,
    (void*)checkChangeEvt__14daNpc_Seirei_cFv,
    (void*)evtTalk__14daNpc_Seirei_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__14daNpc_Seirei_cFv,
    (void*)setAfterTalkMotion__8daNpcT_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__14daNpc_Seirei_cFv,
    (void*)beforeMove__14daNpc_Seirei_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__14daNpc_Seirei_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__8daNpcT_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__14daNpc_Seirei_cFv,
    (void*)drawOtherMdl__8daNpcT_cFv,
    (void*)drawGhost__8daNpcT_cFv,
    (void*)afterSetFaceMotionAnm__8daNpcT_cFiifi,
    (void*)afterSetMotionAnm__14daNpc_Seirei_cFiifi,
    (void*)getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c,
    (void*)getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c,
    (void*)changeAnm__8daNpcT_cFPiPi,
    (void*)changeBck__8daNpcT_cFPiPi,
    (void*)changeBtp__8daNpcT_cFPiPi,
    (void*)changeBtk__8daNpcT_cFPiPi,
    (void*)setMotionAnm__8daNpcT_cFifi,
};

/* 80AD572C-80AD57C4 0000EC 0098+00 1/0 0/0 0/0 .text            __dt__14daNpc_Seirei_cFv */
daNpc_Seirei_c::~daNpc_Seirei_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AD7CA8-80AD7D3C 000000 0094+00 6/6 0/0 0/0 .rodata          m__20daNpc_Seirei_Param_c */
SECTION_RODATA u8 const daNpc_Seirei_Param_c::m[148] = {
    0x44, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x45, 0x7A, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x44, 0x96, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AD7CA8, &daNpc_Seirei_Param_c::m);

/* 80AD7D3C-80AD7D40 000094 0004+00 1/1 0/0 0/0 .rodata          @4042 */
SECTION_RODATA static f32 const lit_4042 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80AD7D3C, &lit_4042);

/* 80AD57C4-80AD5A7C 000184 02B8+00 1/1 0/0 0/0 .text            create__14daNpc_Seirei_cFv */
void daNpc_Seirei_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AD7D40-80AD7D44 000098 0004+00 1/4 0/0 0/0 .rodata          @4135 */
SECTION_RODATA static u8 const lit_4135[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AD7D40, &lit_4135);

/* 80AD7D44-80AD7D48 00009C 0004+00 0/2 0/0 0/0 .rodata          @4136 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4136 = 65536.0f;
COMPILER_STRIP_GATE(0x80AD7D44, &lit_4136);
#pragma pop

/* 80AD7D48-80AD7D4C 0000A0 0004+00 0/2 0/0 0/0 .rodata          @4137 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4137 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80AD7D48, &lit_4137);
#pragma pop

/* 80AD7D4C-80AD7D50 0000A4 0004+00 2/3 0/0 0/0 .rodata          @4260 */
SECTION_RODATA static f32 const lit_4260 = 1.0f;
COMPILER_STRIP_GATE(0x80AD7D4C, &lit_4260);

/* 80AD5A7C-80AD5BC4 00043C 0148+00 1/1 0/0 0/0 .text            CreateHeap__14daNpc_Seirei_cFv */
void daNpc_Seirei_c::CreateHeap() {
    // NONMATCHING
}

/* 80AD5BC4-80AD5BF8 000584 0034+00 1/1 0/0 0/0 .text            Delete__14daNpc_Seirei_cFv */
void daNpc_Seirei_c::Delete() {
    // NONMATCHING
}

/* 80AD5BF8-80AD5C18 0005B8 0020+00 2/2 0/0 0/0 .text            Execute__14daNpc_Seirei_cFv */
void daNpc_Seirei_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AD7D50-80AD7D54 0000A8 0004+00 1/1 0/0 0/0 .rodata          @4294 */
SECTION_RODATA static f32 const lit_4294 = 100.0f;
COMPILER_STRIP_GATE(0x80AD7D50, &lit_4294);

/* 80AD5C18-80AD5CC0 0005D8 00A8+00 1/1 0/0 0/0 .text            Draw__14daNpc_Seirei_cFv */
void daNpc_Seirei_c::Draw() {
    // NONMATCHING
}

/* 80AD5CC0-80AD5CE0 000680 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__14daNpc_Seirei_cFP10fopAc_ac_c           */
void daNpc_Seirei_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80AD5CE0-80AD5D2C 0006A0 004C+00 1/1 0/0 0/0 .text            getType__14daNpc_Seirei_cFv */
void daNpc_Seirei_c::getType() {
    // NONMATCHING
}

/* 80AD5D2C-80AD5D34 0006EC 0008+00 1/1 0/0 0/0 .text            isDelete__14daNpc_Seirei_cFv */
bool daNpc_Seirei_c::isDelete() {
    return false;
}

/* ############################################################################################## */
/* 80AD7D54-80AD7D58 0000AC 0004+00 1/3 0/0 0/0 .rodata          @4348 */
SECTION_RODATA static f32 const lit_4348 = -1.0f;
COMPILER_STRIP_GATE(0x80AD7D54, &lit_4348);

/* 80AD5D34-80AD5EEC 0006F4 01B8+00 1/1 0/0 0/0 .text            reset__14daNpc_Seirei_cFv */
void daNpc_Seirei_c::reset() {
    // NONMATCHING
}

/* 80AD5EEC-80AD6034 0008AC 0148+00 1/0 0/0 0/0 .text            setParam__14daNpc_Seirei_cFv */
void daNpc_Seirei_c::setParam() {
    // NONMATCHING
}

/* 80AD6034-80AD6048 0009F4 0014+00 1/1 0/0 0/0 .text            getDistTable__12dAttention_cFi */
// void dAttention_c::getDistTable(int param_0) {
extern "C" void getDistTable__12dAttention_cFi() {
    // NONMATCHING
}

/* 80AD6048-80AD6050 000A08 0008+00 1/0 0/0 0/0 .text            checkChangeEvt__14daNpc_Seirei_cFv
 */
bool daNpc_Seirei_c::checkChangeEvt() {
    return false;
}

/* 80AD6050-80AD6054 000A10 0004+00 1/1 0/0 0/0 .text            srchActors__14daNpc_Seirei_cFv */
void daNpc_Seirei_c::srchActors() {
    /* empty function */
}

/* 80AD6054-80AD6154 000A14 0100+00 1/0 0/0 0/0 .text            evtTalk__14daNpc_Seirei_cFv */
void daNpc_Seirei_c::evtTalk() {
    // NONMATCHING
}

/* 80AD6154-80AD621C 000B14 00C8+00 1/0 0/0 0/0 .text            evtCutProc__14daNpc_Seirei_cFv */
void daNpc_Seirei_c::evtCutProc() {
    // NONMATCHING
}

/* 80AD621C-80AD62A4 000BDC 0088+00 1/0 0/0 0/0 .text            action__14daNpc_Seirei_cFv */
void daNpc_Seirei_c::action() {
    // NONMATCHING
}

/* 80AD62A4-80AD6330 000C64 008C+00 1/0 0/0 0/0 .text            beforeMove__14daNpc_Seirei_cFv */
void daNpc_Seirei_c::beforeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AD7D58-80AD7D5C 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4513 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4513 = 300.0f;
COMPILER_STRIP_GATE(0x80AD7D58, &lit_4513);
#pragma pop

/* 80AD7D5C-80AD7D60 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4514 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4514 = 40.0f;
COMPILER_STRIP_GATE(0x80AD7D5C, &lit_4514);
#pragma pop

/* 80AD7D60-80AD7D64 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4515 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4515 = 800.0f;
COMPILER_STRIP_GATE(0x80AD7D60, &lit_4515);
#pragma pop

/* 80AD7D64-80AD7D68 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4516 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4516 = 350.0f;
COMPILER_STRIP_GATE(0x80AD7D64, &lit_4516);
#pragma pop

/* 80AD6330-80AD6464 000CF0 0134+00 1/0 0/0 0/0 .text            setAttnPos__14daNpc_Seirei_cFv */
void daNpc_Seirei_c::setAttnPos() {
    // NONMATCHING
}

/* 80AD6464-80AD646C 000E24 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__14daNpc_Seirei_cFv */
bool daNpc_Seirei_c::drawDbgInfo() {
    return false;
}

/* 80AD646C-80AD6604 000E2C 0198+00 1/0 0/0 0/0 .text afterSetMotionAnm__14daNpc_Seirei_cFiifi */
void daNpc_Seirei_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
    // NONMATCHING
}

/* 80AD6604-80AD664C 000FC4 0048+00 1/1 0/0 0/0 .text            selectAction__14daNpc_Seirei_cFv */
void daNpc_Seirei_c::selectAction() {
    // NONMATCHING
}

/* 80AD664C-80AD6678 00100C 002C+00 1/1 0/0 0/0 .text
 * chkAction__14daNpc_Seirei_cFM14daNpc_Seirei_cFPCvPvPv_i      */
void daNpc_Seirei_c::chkAction(int (daNpc_Seirei_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80AD6678-80AD6720 001038 00A8+00 2/2 0/0 0/0 .text
 * setAction__14daNpc_Seirei_cFM14daNpc_Seirei_cFPCvPvPv_i      */
void daNpc_Seirei_c::setAction(int (daNpc_Seirei_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80AD6720-80AD6808 0010E0 00E8+00 1/1 0/0 0/0 .text            ctrlWaitAnm__14daNpc_Seirei_cFv */
void daNpc_Seirei_c::ctrlWaitAnm() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AD7D68-80AD7D78 0000C0 000E+02 0/1 0/0 0/0 .rodata          id1$4627 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const id1[14 + 2 /* padding */] = {
    0x83,
    0x99,
    0x83,
    0x9A,
    0x83,
    0x9B,
    0x83,
    0x9C,
    0x83,
    0x9D,
    0x83,
    0x9E,
    0x83,
    0x9F,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AD7D68, &id1);
#pragma pop

/* 80AD7D78-80AD7D88 0000D0 000E+02 0/1 0/0 0/0 .rodata          id2$4628 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const id2[14 + 2 /* padding */] = {
    0x84,
    0x04,
    0x84,
    0x05,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AD7D78, &id2);
#pragma pop

/* 80AD6808-80AD6A38 0011C8 0230+00 1/1 0/0 0/0 .text            setPrtcls__14daNpc_Seirei_cFv */
void daNpc_Seirei_c::setPrtcls() {
    // NONMATCHING
}

/* 80AD6A38-80AD6ABC 0013F8 0084+00 1/1 0/0 0/0 .text            chkFirstMeeting__14daNpc_Seirei_cFv
 */
void daNpc_Seirei_c::chkFirstMeeting() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AD7D88-80AD7D88 0000E0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80AD7DD7 = "prm";
SECTION_DEAD static char const* const stringBase_80AD7DDB = "timer";
#pragma pop

/* 80AD6ABC-80AD6C58 00147C 019C+00 1/0 0/0 0/0 .text            cutConversation__14daNpc_Seirei_cFi
 */
void daNpc_Seirei_c::cutConversation(int param_0) {
    // NONMATCHING
}

/* 80AD6C58-80AD6D30 001618 00D8+00 1/0 0/0 0/0 .text            wait__14daNpc_Seirei_cFPv */
void daNpc_Seirei_c::wait(void* param_0) {
    // NONMATCHING
}

/* 80AD6D30-80AD6E5C 0016F0 012C+00 2/0 0/0 0/0 .text            talk__14daNpc_Seirei_cFPv */
void daNpc_Seirei_c::talk(void* param_0) {
    // NONMATCHING
}

/* 80AD6E5C-80AD6E7C 00181C 0020+00 1/0 0/0 0/0 .text            daNpc_Seirei_Create__FPv */
static void daNpc_Seirei_Create(void* param_0) {
    // NONMATCHING
}

/* 80AD6E7C-80AD6E9C 00183C 0020+00 1/0 0/0 0/0 .text            daNpc_Seirei_Delete__FPv */
static void daNpc_Seirei_Delete(void* param_0) {
    // NONMATCHING
}

/* 80AD6E9C-80AD6EBC 00185C 0020+00 1/0 0/0 0/0 .text            daNpc_Seirei_Execute__FPv */
static void daNpc_Seirei_Execute(void* param_0) {
    // NONMATCHING
}

/* 80AD6EBC-80AD6EDC 00187C 0020+00 1/0 0/0 0/0 .text            daNpc_Seirei_Draw__FPv */
static void daNpc_Seirei_Draw(void* param_0) {
    // NONMATCHING
}

/* 80AD6EDC-80AD6EE4 00189C 0008+00 1/0 0/0 0/0 .text            daNpc_Seirei_IsDelete__FPv */
static bool daNpc_Seirei_IsDelete(void* param_0) {
    return true;
}

/* 80AD6EE4-80AD6F2C 0018A4 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80AD6F2C-80AD72B4 0018EC 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
// daNpcT_c::~daNpcT_c() {
extern "C" void __dt__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80AD72B4-80AD72F0 001C74 003C+00 3/3 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80AD72F0-80AD732C 001CB0 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80AD732C-80AD7730 001CEC 0404+00 1/1 0/0 0/0 .text
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

/* 80AD7730-80AD7734 0020F0 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80AD7734-80AD7830 0020F4 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 80AD7830-80AD7834 0021F0 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80AD7834-80AD787C 0021F4 0048+00 1/0 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80AD787C-80AD78C4 00223C 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 80AD78C4-80AD7934 002284 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80AD7934-80AD7990 0022F4 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80AD7990-80AD7A00 002350 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80AD7A00-80AD7A48 0023C0 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80AD7A50-80AD7A54 002410 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 80AD7A8C-80AD7A94 00244C 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80AD7A94-80AD7A9C 002454 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80AD7AA0-80AD7AA8 002460 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 80AD7AB4-80AD7ABC 002474 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 80AD7ABC-80AD7AD4 00247C 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80AD7AD4-80AD7AD8 002494 0004+00 1/0 0/0 0/0 .text            drawOtherMdl__8daNpcT_cFv */
// void daNpcT_c::drawOtherMdl() {
extern "C" void drawOtherMdl__8daNpcT_cFv() {
    /* empty function */
}

/* 80AD7AD8-80AD7ADC 002498 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 80AD7ADC-80AD7AE4 00249C 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80AD7AE4-80AD7B14 0024A4 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 80AD7B14-80AD7B44 0024D4 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 80AD7B44-80AD7B48 002504 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80AD7B48-80AD7B4C 002508 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80AD7B4C-80AD7B50 00250C 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80AD7B50-80AD7B54 002510 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80AD7B54-80AD7B70 002514 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_80AD7B54(void* _this, int* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AD80E0-80AD80EC 0002FC 000C+00 2/2 0/0 0/0 .data            __vt__20daNpc_Seirei_Param_c */
SECTION_DATA extern void* __vt__20daNpc_Seirei_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__20daNpc_Seirei_Param_cFv,
};

/* 80AD80F8-80AD8104 000008 000C+00 1/1 0/0 0/0 .bss             @3835 */
static u8 lit_3835[12];

/* 80AD8104-80AD8108 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80AD7B70-80AD7BF8 002530 0088+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_seirei_cpp */
void __sinit_d_a_npc_seirei_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80AD7B70, __sinit_d_a_npc_seirei_cpp);
#pragma pop

/* 80AD7BF8-80AD7C3C 0025B8 0044+00 1/1 0/0 0/0 .text
 * __ct__14daNpc_Seirei_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
daNpc_Seirei_c::daNpc_Seirei_c(daNpcT_faceMotionAnmData_c const* param_0,
                                   daNpcT_motionAnmData_c const* param_1,
                                   daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2,
                                   int param_3,
                                   daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4,
                                   int param_5, daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
}

/* 80AD7C3C-80AD7C84 0025FC 0048+00 2/1 0/0 0/0 .text            __dt__20daNpc_Seirei_Param_cFv */
daNpc_Seirei_Param_c::~daNpc_Seirei_Param_c() {
    // NONMATCHING
}

/* 80AD7C84-80AD7C8C 002644 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80AD7C84() {
    // NONMATCHING
}

/* 80AD7C8C-80AD7C94 00264C 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80AD7C8C() {
    // NONMATCHING
}

/* 80AD7D88-80AD7D88 0000E0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
