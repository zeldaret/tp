/**
 * @file d_a_npc_ykm.cpp
 * 
*/

#include "d/actor/d_a_npc_ykm.h"
#include "Z2AudioLib/Z2Instances.h"
#include "d/actor/d_a_obj_gadget.h"
#include "d/d_item.h"
#include "dol2asm.h"

enum ykM_RES_File_ID {
    /* BCK */
    /* 0x06 */ BCK_YKM_F_ASK = 0x6,
    /* 0x07 */ BCK_YKM_F_LAUGH,
    /* 0x08 */ BCK_YKM_F_REGRET,
    /* 0x09 */ BCK_YKM_F_TALK_A,
    /* 0x0A */ BCK_YKM_F_TALK_B,
    /* 0x0B */ BCK_YKM_F_TALK_C,
    /* 0x0C */ BCK_YKM_FH_LAUGH,
    /* 0x0D */ BCK_YKM_FH_REGRET,
    /* 0x0E */ BCK_YKM_FUNWAIT,
    /* 0x0F */ BCK_YKM_STEP,
    /* 0x10 */ BCK_YKM_TALK_B,
    /* 0x11 */ BCK_YKM_TALK_C,
    /* 0x12 */ BCK_YKM_WAIT_A,
    /* 0x13 */ BCK_YKM_WALK,

    /* BMDR */
    /* 0x16 */ BMDR_YKM = 0x16,

    /* BTK */
    /* 0x19 */ BTK_YKM = 0x19,

    /* BTP */
    /* 0x1C */ BTP_YKM = 0x1C,
    /* 0x1D */ BTP_YKM_F_ASK,
    /* 0x1E */ BTP_YKM_F_LAUGH,
    /* 0x1F */ BTP_YKM_F_REGRET,
    /* 0x20 */ BTP_YKM_FH_LAUGH,
    /* 0x21 */ BTP_YKM_FH_REGRET,
};

enum ykM1_RES_File_ID {
    /* BCK */
    /* 0x07 */ BCK_YKM_DENY = 0x7,
    /* 0x08 */ BCK_YKM_F_HAPPY,
    /* 0x09 */ BCK_YKM_F_SHOUT,
    /* 0x0A */ BCK_YKM_F_SHUT,
    /* 0x0B */ BCK_YKM_F_TALK_D,
    /* 0x0C */ BCK_YKM_F_TALK_X,
    /* 0x0D */ BCK_YKM_F_TALK_Y,
    /* 0x0E */ BCK_YKM_FH_HAPPY,
    /* 0x0F */ BCK_YKM_HOLD,
    /* 0x10 */ BCK_YKM_HOLD_B,
    /* 0x11 */ BCK_YKM_PICKUP,
    /* 0x12 */ BCK_YKM_POUR,
    /* 0x13 */ BCK_YKM_PUSH,
    /* 0x14 */ BCK_YKM_RUN,
    /* 0x15 */ BCK_YKM_STOP,
    /* 0x16 */ BCK_YKM_TALK_D,
    /* 0x17 */ BCK_YKM_TALK_E,
    /* 0x18 */ BCK_YKM_WAIT_B,
    /* 0x19 */ BCK_YKM_WAIT_C,
    /* 0x1A */ BCK_YKM_WAIT_X,
    /* 0x1B */ BCK_YKM_WAITHOLD,
    /* 0x1C */ BCK_YKM_WAITHOLD_B_B,
    /* 0x1D */ BCK_YKM_WAITLIE,
    /* 0x1E */ BCK_YKM_WAITWAKE,
    /* 0x1F */ BCK_YKM_WAKE,

    /* BMDR */
    /* 0x22 */ BMDR_CHEESE = 0x22,
    /* 0x23 */ BMDR_TOMATO,
    /* 0x24 */ BMDR_YKM_CHEESE,
    /* 0x25 */ BMDR_YKM_TOMATO,

    /* BTK */
    /* 0x28 */ BTK_YKM_PICKUP = 0x28,
    /* 0x29 */ BTK_YKM_TALK_D,
    /* 0x2A */ BTK_YKM_WAIT_B,

    /* BTP */
    /* 0x2D */ BTP_YKM_F_HAPPY = 0x2D,
    /* 0x2E */ BTP_YKM_F_SHUT,
    /* 0x2F */ BTP_YKM_FH_HAPPY,

    /* EVT */
    /* 0x32 */ EVT_YKM1_EVENT_LIST = 0x32,
};

enum ykM2_RES_File_ID {
    /* BCK */
    /* 0x06 */ BCK_YKM_ASK = 0x6,
    /* 0x07 */ BCK_YKM_LAUGH,
    /* 0x08 */ BCK_YKM_REGRET,
    /* 0x09 */ BCK_YKM_REGRETWAIT,
    /* 0x0A */ BCK_YKM_SB_DAMAGE,
    /* 0x0B */ BCK_YKM_SB_GOAL,
    /* 0x0C */ BCK_YKM_SB_GOALWAIT,
    /* 0x0D */ BCK_YKM_SB_JUMP_A,
    /* 0x0E */ BCK_YKM_SB_JUMP_B,
    /* 0x0F */ BCK_YKM_SB_JUMP_C,
    /* 0x10 */ BCK_YKM_SB_TUNRL,
    /* 0x11 */ BCK_YKM_SB_TURNR,
    /* 0x12 */ BCK_YKM_SB_WAIT,

    /* BMDR */
    /* 0x15 */ BMDR_YKM_LEAF = 0x15,

    /* BTK */
    /* 0x18 */ BTK_YKM_REGRET = 0x18,
    /* 0x19 */ BTK_YKM_REGRETWAIT,
    /* 0x1A */ BTK_YKM_SB_DAMAGE,

    /* EVT */
    /* 0x1D */ EVT_YKM2_EVENT_LIST,
};

enum ykM3_RES_File_ID {
    /* BCK */
    /* 0x06 */ BCK_FISH_ATTACK = 0x6,
    /* 0x07 */ BCK_FISH_JUMP,
    /* 0x08 */ BCK_FISH_SB_WAIT,
    /* 0x09 */ BCK_FISH_WAIT_A,
    /* 0x0A */ BCK_LEAF_FALL,
    /* 0x0B */ BCK_LEAF_WAIT_A,
    /* 0x0C */ BCK_LEAF_WAIT_B,
    /* 0x0D */ BCK_YKM_FISH_ASK,
    /* 0x0E */ BCK_YKM_FISH_ATTACK,
    /* 0x0F */ BCK_YKM_FISH_JUMP,
    /* 0x10 */ BCK_YKM_FISH_LAUGH,
    /* 0x11 */ BCK_YKM_FISH_LOOK,
    /* 0x12 */ BCK_YKM_FISH_LOOKWAIT,
    /* 0x13 */ BCK_YKM_FISH_REGRET,
    /* 0x14 */ BCK_YKM_FISH_REGRETWAIT,
    /* 0x15 */ BCK_YKM_FISH_TALK_B,
    /* 0x16 */ BCK_YKM_FISH_TALK_C,
    /* 0x17 */ BCK_YKM_FISH_WAIT_A,
    /* 0x18 */ BCK_YKM_FISH_WAIT_B,

    /* BMDR */
    /* 0x1B */ BMDR_FISH = 0x1B,
    /* 0x1C */ BMDR_LEAF,

    /* BTK */
    /* 0x1F */ BTK_YKM_FISH_ATTACK = 0x1F,
    /* 0x20 */ BTK_YKM_FISH_JUMP,
    /* 0x21 */ BTK_YKM_FISH_LOOK,
    /* 0x22 */ BTK_YKM_FISH_LOOKWAIT,
    /* 0x23 */ BTK_YKM_FISH_REGRET,
    /* 0x24 */ BTK_YKM_FISH_REGRETWAIT,
    /* 0x25 */ BTK_YKM_FISH_WAIT_B,

    /* EVT */
    /* 0x28 */ EVT_YKM3_EVENT_LIST = 0x28,
};

enum RES_Name {
    /* 0x1 */ YKM = 0x1,
    /* 0x2 */ YKM1,
    /* 0x3 */ YKM2,
    /* 0x4 */ YKM3,
};

//
// Forward References:
//

extern "C" void __dt__11daNpc_ykM_cFv();
extern "C" void create__11daNpc_ykM_cFv();
extern "C" void CreateHeap__11daNpc_ykM_cFv();
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
extern "C" void Delete__11daNpc_ykM_cFv();
extern "C" void Execute__11daNpc_ykM_cFv();
extern "C" void Draw__11daNpc_ykM_cFv();
extern "C" void createHeapCallBack__11daNpc_ykM_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__11daNpc_ykM_cFP8J3DJointi();
extern "C" void srchGadget__11daNpc_ykM_cFPvPv();
extern "C" void getTomatoPureeP__11daNpc_ykM_cFv();
extern "C" void getCheeseP__11daNpc_ykM_cFv();
extern "C" void srchYkm__11daNpc_ykM_cFPvPv();
extern "C" void getOtherYkmP__11daNpc_ykM_cFi();
extern "C" void srchYkw__11daNpc_ykM_cFPvPv();
extern "C" void getOtherYkwP__11daNpc_ykM_cFi();
extern "C" void getType__11daNpc_ykM_cFv();
extern "C" void isDelete__11daNpc_ykM_cFv();
extern "C" void reset__11daNpc_ykM_cFv();
extern "C" void afterJntAnm__11daNpc_ykM_cFi();
extern "C" void setParam__11daNpc_ykM_cFv();
extern "C" void getDistTable__12dAttention_cFi();
extern "C" void checkChangeEvt__11daNpc_ykM_cFv();
extern "C" void setAfterTalkMotion__11daNpc_ykM_cFv();
extern "C" void srchActors__11daNpc_ykM_cFv();
extern "C" void evtTalk__11daNpc_ykM_cFv();
extern "C" void evtCutProc__11daNpc_ykM_cFv();
extern "C" void action__11daNpc_ykM_cFv();
extern "C" void beforeMove__11daNpc_ykM_cFv();
extern "C" void afterMoved__11daNpc_ykM_cFv();
extern "C" void setAttnPos__11daNpc_ykM_cFv();
extern "C" void setCollision__11daNpc_ykM_cFv();
extern "C" bool drawDbgInfo__11daNpc_ykM_cFv();
extern "C" void drawOtherMdl__11daNpc_ykM_cFv();
extern "C" void setFishAnm__11daNpc_ykM_cFiif();
extern "C" void setLeafAnm__11daNpc_ykM_cFif();
extern "C" void afterSetMotionAnm__11daNpc_ykM_cFiifi();
extern "C" void selectAction__11daNpc_ykM_cFv();
extern "C" void chkAction__11daNpc_ykM_cFM11daNpc_ykM_cFPCvPvPv_i();
extern "C" void setAction__11daNpc_ykM_cFM11daNpc_ykM_cFPCvPvPv_i();
extern "C" void chkContinueAttnPlayer__11daNpc_ykM_cFv();
extern "C" void chkTouchPlayer__11daNpc_ykM_cFv();
extern "C" void cutSlideDown__11daNpc_ykM_cFi();
extern "C" void cutMeetingAgain__11daNpc_ykM_cFi();
extern "C" void cutGetTomatoPuree__11daNpc_ykM_cFi();
extern "C" void cutGetTaste__11daNpc_ykM_cFi();
extern "C" void cutLv5DungeonClear__11daNpc_ykM_cFi();
extern "C" void cutFindWolf__11daNpc_ykM_cFi();
extern "C" void cutStartSnowboardRace__11daNpc_ykM_cFi();
extern "C" void cutEndSnowboardRace__11daNpc_ykM_cFi();
extern "C" void cutHug__11daNpc_ykM_cFi();
extern "C" void setDialogueMotion__11daNpc_ykM_cFv();
extern "C" void dialogue__11daNpc_ykM_cFv();
extern "C" void wait__11daNpc_ykM_cFPv();
extern "C" void cook__11daNpc_ykM_cFPv();
extern "C" void race__11daNpc_ykM_cFPv();
extern "C" void talk__11daNpc_ykM_cFPv();
extern "C" static void daNpc_ykM_Create__FPv();
extern "C" static void daNpc_ykM_Delete__FPv();
extern "C" static void daNpc_ykM_Execute__FPv();
extern "C" static void daNpc_ykM_Draw__FPv();
extern "C" static bool daNpc_ykM_IsDelete__FPv();
extern "C" void calc__11J3DTexNoAnmCFPUs();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__8daNpcT_cFv();
extern "C" void __dt__4cXyzFv();
extern "C" void __dt__5csXyzFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __dt__18daNpcT_ActorMngr_cFv();
extern "C" void __dt__13daNpcT_Path_cFv();
extern "C" void __ct__18daNpcT_ActorMngr_cFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void
__ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" void __ct__5csXyzFv();
extern "C" void __dt__15daNpcT_JntAnm_cFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs();
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs();
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi();
extern "C" s32 getFootLJointNo__8daNpcT_cFv();
extern "C" s32 getFootRJointNo__8daNpcT_cFv();
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv();
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv();
extern "C" bool evtEndProc__8daNpcT_cFv();
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
extern "C" void func_80B5D378(void* _this, int*);
extern "C" void func_80B5D394(void* _this, int, int);
extern "C" void __sinit_d_a_npc_ykm_cpp();
extern "C" void
__ct__11daNpc_ykM_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" u16 getEyeballMaterialNo__11daNpc_ykM_cFv();
extern "C" s32 getHeadJointNo__11daNpc_ykM_cFv();
extern "C" s32 getNeckJointNo__11daNpc_ykM_cFv();
extern "C" bool getBackboneJointNo__11daNpc_ykM_cFv();
extern "C" void checkChangeJoint__11daNpc_ykM_cFi();
extern "C" void checkRemoveJoint__11daNpc_ykM_cFi();
extern "C" void __dt__17daNpc_ykM_Param_cFv();
extern "C" static void func_80B5D710();
extern "C" static void func_80B5D718();
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz();
extern "C" u8 const m__17daNpc_ykM_Param_c[200];
extern "C" extern char const* const d_a_npc_ykm__stringBase0;
extern "C" void* mCutNameList__11daNpc_ykM_c[10];
extern "C" u8 mCutList__11daNpc_ykM_c[120];

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_getPolygonAngle__FRC13cBgS_PolyInfos();
extern "C" void fpcEx_SearchByID__FUi();
extern "C" void fpcEx_IsExist__FUi();
extern "C" void getTimerNowTimeMs__14dComIfG_play_cFv();
extern "C" void getTimerMode__14dComIfG_play_cFv();
extern "C" void getTimerPtr__14dComIfG_play_cFv();
extern "C" void dComIfG_TimerStart__Fis();
extern "C" void dComIfG_TimerEnd__Fii();
extern "C" void dComIfG_TimerDeleteRequest__Fi();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void isDungeonItem__12dSv_memBit_cCFi();
extern "C" void onEventBit__11dSv_event_cFUs();
extern "C" void offEventBit__11dSv_event_cFUs();
extern "C" void isEventBit__11dSv_event_cCFUs();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void setPt2__14dEvt_control_cFPv();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void setGoal__16dEvent_manager_cFP4cXyz();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
setPoly__13dPa_control_cFUlUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz();
extern "C" void dPath_GetRoomPath__Fii();
extern "C" void addReal__21dDlst_shadowControl_cFUlP8J3DModel();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo();
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
extern "C" void GetAc__22dCcD_GAtTgCoCommonBaseFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkCoHit__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void checkItemGet__FUci();
extern "C" void setPosition__7dTres_cFiUcPC3Veci();
extern "C" void initialize__18daNpcT_ActorMngr_cFv();
extern "C" void entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c();
extern "C" void remove__18daNpcT_ActorMngr_cFv();
extern "C" void getActorP__18daNpcT_ActorMngr_cFv();
extern "C" void initialize__15daNpcT_MatAnm_cFv();
extern "C" void initialize__22daNpcT_MotionSeqMngr_cFv();
extern "C" void checkEndSequence__22daNpcT_MotionSeqMngr_cFv();
extern "C" void initialize__13daNpcT_Path_cFv();
extern "C" void setPathInfo__13daNpcT_Path_cFUcScUc();
extern "C" void setNextIdx__13daNpcT_Path_cFi();
extern "C" void chkPassed1__13daNpcT_Path_cF4cXyzi();
extern "C" void initialize__15daNpcT_JntAnm_cFv();
extern "C" void setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz();
extern "C" void calcJntRad__15daNpcT_JntAnm_cFfff();
extern "C" void setParam__19daNpcT_DmgStagger_cFP10fopAc_ac_cP10fopAc_ac_cs();
extern "C" void calc__19daNpcT_DmgStagger_cFi();
extern "C" void tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" void getTrnsfrmKeyAnmP__8daNpcT_cFPCci();
extern "C" void loadRes__8daNpcT_cFPCScPPCc();
extern "C" void deleteRes__8daNpcT_cFPCScPPCc();
extern "C" void execute__8daNpcT_cFv();
extern "C" void draw__8daNpcT_cFiifP11_GXColorS10fiii();
extern "C" void setEnvTevColor__8daNpcT_cFv();
extern "C" void setRoomNo__8daNpcT_cFv();
extern "C" void ctrlBtk__8daNpcT_cFv();
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
extern "C" void setPos__8daNpcT_cF4cXyz();
extern "C" void setAngle__8daNpcT_cF5csXyz();
extern "C" void setAngle__8daNpcT_cFs();
extern "C" void hitChk__8daNpcT_cFP12dCcD_GObjInfUl();
extern "C" void chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs();
extern "C" void srchPlayerActor__8daNpcT_cFv();
extern "C" void step__8daNpcT_cFsiiii();
extern "C" void initTalk__8daNpcT_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci();
extern "C" void getNearestActorP__8daNpcT_cFs();
extern "C" void getEvtAreaTagP__8daNpcT_cFii();
extern "C" void daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz();
extern "C" void daNpcT_judgeRace__FP5dPathPP10fopAc_ac_cP16daNpcT_pntData_ciPi();
extern "C" void daNpcT_chkEvtBit__FUl();
extern "C" void daNpcT_onTmpBit__FUl();
extern "C" void daNpcT_offTmpBit__FUl();
extern "C" void daNpcT_chkTmpBit__FUl();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void setMeterString__13dMeter2Info_cFl();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void getEventId__10dMsgFlow_cFPi();
extern "C" void isStart__8dTimer_cFv();
extern "C" void dTimer_createTimer__FlUlUcUcffff();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rnd__Fv();
extern "C" void cM_rndF__Ff();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void __dt__11cBgS_GndChkFv();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void subBgmStart__8Z2SeqMgrFUl();
extern "C" void subBgmStop__8Z2SeqMgrFv();
extern "C" void bgmStreamStop__8Z2SeqMgrFUl();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void __dt__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void hide__13J3DShapeTableFv();
extern "C" void show__13J3DShapeTableFv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void getTexNo__16J3DAnmTexPatternCFUsPUs();
extern "C" void initialize__14J3DMaterialAnmFv();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void __ptmf_test();
extern "C" void __ptmf_cmpr();
extern "C" void __ptmf_scall();
extern "C" void __cvt_fp2unsigned();
extern "C" void _savegpr_17();
extern "C" void _savegpr_22();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_17();
extern "C" void _restgpr_22();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern u8 const __ptmf_null[12 + 4 /* padding */];
extern "C" u8 dist_table__12dAttention_c[6552];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" u8 mCcDCyl__8daNpcT_c[68];
extern "C" u8 mCcDSph__8daNpcT_c[64];
extern "C" extern void* __vt__8daNpcT_c[49];
extern "C" extern void* __vt__15daNpcT_MatAnm_c[4 + 1 /* padding */];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" extern void* __vt__14J3DMaterialAnm[4];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mFindActorPtrs__8daNpcT_c[200];
extern "C" extern u8 g_meter2_info[248];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mFindCount__8daNpcT_c[4];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz4cXyz();
extern "C" void __register_global_object();
extern "C" void getType__11daNpc_ykW_cFv();

UNK_REL_DATA;

/* 80B5DB08-80B5DB38 000020 0030+00 1/1 0/0 0/0 .data            l_bmdData */
static int l_bmdData[6][2] = {
    {BMDR_YKM, YKM},
    {BMDR_YKM_TOMATO, YKM1},
    {BMDR_YKM_LEAF, YKM2},
    {BMDR_YKM_CHEESE, YKM1},
    {BMDR_FISH, YKM3},
    {BMDR_LEAF, YKM3},
};

/* 80B5DB38-80B5DB88 -00001 0050+00 0/1 0/0 0/0 .data            l_evtList */
static daNpcT_evtData_c l_evtList[10] = {
    {"", 0},
    {"NO_RESPONSE", 0},
    {"SLIDEDOWN", 4},
    {"MEETING_AGAIN", 2},
    {"GET_TOMATOPUREE", 2},
    {"GET_TASTE", 2},
    {"FIND_WOLF", 3},
    {"START_SNOWBOARDRACE", 3},
    {"END_SNOWBOARDRACE", 3},
    {"HUG", 2},
};

/* 80B5DB88-80B5DB9C -00001 0014+00 4/5 0/0 0/0 .data            l_resNameList */
static char* l_resNameList[5] = {
    "",
    "ykM",
    "ykM1",
    "ykM2",
    "ykM3",
};

/* 80B5DB9C-80B5DBA0 0000B4 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn0 */
static s8 l_loadResPtrn0[3] = {YKM, YKM1, -1};

/* 80B5DBA0-80B5DBA4 0000B8 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn1 */
static s8 l_loadResPtrn1[3] = {YKM, YKM2, -1};

/* 80B5DBA4-80B5DBAC 0000BC 0005+03 1/0 0/0 0/0 .data            l_loadResPtrn2 */
static s8 l_loadResPtrn2[5] = {YKM, YKM1, YKM2, YKM3, -1};

/* 80B5DBAC-80B5DBB4 0000C4 0005+03 1/0 0/0 0/0 .data            l_loadResPtrn9 */
static s8 l_loadResPtrn9[5] = {YKM, YKM1, YKM2, YKM3, -1};

/* 80B5DBB4-80B5DBD4 -00001 0020+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
static s8* l_loadResPtrnList[8] = {
    l_loadResPtrn0, l_loadResPtrn0, l_loadResPtrn2, l_loadResPtrn0,
    l_loadResPtrn1, l_loadResPtrn1, l_loadResPtrn1, l_loadResPtrn9,
};

/* 80B5DBD4-80B5DD94 0000EC 01C0+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
static daNpcT_faceMotionAnmData_c l_faceMotionAnmData[16] = {
    {-1, 0, 0, BTP_YKM, 2, YKM, TRUE},
    {BCK_YKM_F_TALK_A, 0, YKM, BTP_YKM, 2, YKM, TRUE},
    {BCK_YKM_F_TALK_B, 0, YKM, BTP_YKM, 2, YKM, TRUE},
    {BCK_YKM_F_TALK_C, 0, YKM, BTP_YKM, 2, YKM, TRUE},
    {BCK_YKM_F_TALK_D, 0, YKM1, BTP_YKM, 2, YKM, TRUE},
    {BCK_YKM_F_REGRET, 0, YKM, BTP_YKM_F_REGRET, 0, YKM, FALSE},
    {BCK_YKM_F_LAUGH, 0, YKM, BTP_YKM_F_LAUGH, 0, YKM, FALSE},
    {BCK_YKM_F_ASK, 0, YKM, BTP_YKM_F_ASK, 0, YKM, FALSE},
    {BCK_YKM_FH_LAUGH, 2, YKM, BTP_YKM_FH_LAUGH, 2, YKM, FALSE},
    {BCK_YKM_FH_REGRET, 2, YKM, BTP_YKM_FH_REGRET, 2, YKM, FALSE},
    {BCK_YKM_F_TALK_X, 0, YKM1, BTP_YKM, 2, YKM, TRUE},
    {BCK_YKM_F_TALK_Y, 0, YKM1, BTP_YKM, 2, YKM, TRUE},
    {BCK_YKM_F_SHOUT, 0, YKM1, BTP_YKM, 2, YKM, TRUE},
    {BCK_YKM_F_SHUT, 0, YKM1, BTP_YKM_F_SHUT, 0, YKM1, FALSE},
    {BCK_YKM_F_HAPPY, 0, YKM1, BTP_YKM_F_HAPPY, 0, YKM1, FALSE},
    {BCK_YKM_FH_HAPPY, 2, YKM1, BTP_YKM_FH_HAPPY, 2, YKM1, FALSE},
};

/* 80B5DD94-80B5E328 0002AC 0594+00 0/1 0/0 0/0 .data            l_motionAnmData */
static daNpcT_motionAnmData_c l_motionAnmData[51] = {
    {0x12, 2, YKM, 0x19, 0, YKM, 1, 0},
    {0x18, 2, YKM1, 0x2A, 0, YKM1, 0, 0},
    {0x19, 2, YKM1, 0x19, 0, YKM, 1, 0},
    {-1, 0, 0, -1, 0, 0, 0, 0},
    {0x1A, 2, YKM1, 0x19, 0, YKM, 1, 0},
    {0xE, 2, YKM, 0x19, 0, YKM, 1, 0},
    {9, 2, YKM2, 0x19, 2, YKM2, 0, 0},
    {0x10, 0, YKM, 0x19, 0, YKM, 1, 0},
    {0x11, 0, YKM, 0x19, 0, YKM, 1, 0},
    {0x16, 0, YKM1, 0x29, 0, YKM1, 0, 0},
    {0x17, 0, YKM1, 0x19, 0, YKM, 1, 0},
    {-1, 0, 0, -1, 0, 0, 0, 0},
    {0x13, 0, YKM1, 0x19, 0, YKM, 1, 0},
    {0x11, 0, YKM1, 0x28, 0, YKM1, 0, 0},
    {0x12, 0, YKM1, 0x19, 0, YKM, 1, 0},
    {8, 0, YKM2, 0x18, 0, YKM2, 0, 0},
    {7, 0, YKM2, 0x19, 0, YKM, 1, 0},
    {6, 0, YKM2, 0x19, 0, YKM, 1, 0},
    {0x13, 2, YKM, 0x19, 0, YKM, 1, 0},
    {0xF, 0, YKM, 0x19, 0, YKM, 1, 0},
    {0x17, 2, YKM3, 0x19, 0, YKM, 1, 0},
    {0xE, 0, YKM3, 0x1F, 0, 4, 0, 0},
    {0x18, 2, YKM3, 0x25, 2, 4, 0, 0},
    {0xF, 0, YKM3, 0x20, 0, 4, 0, 0},
    {0x15, 0, YKM3, 0x19, 0, YKM, 1, 0},
    {0x16, 0, YKM3, 0x19, 0, YKM, 1, 0},
    {0x13, 0, YKM3, 0x23, 0, 4, 0, 0},
    {0x14, 2, YKM3, 0x24, 2, 4, 0, 0},
    {0x10, 0, YKM3, 0x19, 0, YKM, 1, 0},
    {0xD, 0, YKM3, 0x19, 0, YKM, 1, 0},
    {0x11, 0, YKM3, 0x21, 0, 4, 0, 0},
    {0x12, 2, YKM3, 0x22, 2, 4, 0, 0},
    {0x12, 2, YKM2, 0x19, 0, YKM, 1, 0},
    {0xD, 0, YKM2, 0x19, 0, YKM, 1, 0},
    {0xE, 2, YKM2, 0x19, 0, YKM, 1, 0},
    {0xF, 0, YKM2, 0x19, 0, YKM, 1, 0},
    {0x10, 2, YKM2, 0x19, 0, YKM, 1, 0},
    {0x11, 2, YKM2, 0x19, 0, YKM, 1, 0},
    {0xA, 0, YKM2, 0x1A, 0, YKM2, 0, 0},
    {0xB, 0, YKM2, 0x19, 0, YKM, 1, 0},
    {0xC, 2, YKM2, 0x19, 0, YKM, 1, 0},
    {7, 0, YKM1, 0x19, 0, YKM, 1, 0},
    {0x14, 2, YKM1, 0x19, 0, YKM, 1, 0},
    {0x15, 0, YKM1, 0x19, 0, YKM, 1, 0},
    {0x1D, 2, YKM1, 0x19, 0, YKM, 1, 0},
    {0x1F, 0, YKM1, 0x19, 0, YKM, 1, 0},
    {0x1E, 2, YKM1, 0x19, 0, YKM, 1, 3},
    {0xF, 0, YKM1, 0x19, 0, YKM, 1, 0},
    {0x1B, 2, YKM1, 0x19, 0, YKM, 1, 0},
    {0x10, 0, YKM1, 0x19, 0, YKM, 1, 0},
    {0x1C, 2, YKM1, 0x19, 0, YKM, 1, 0},
};

/* 80B5E328-80B5E428 000840 0100+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_faceMotionSequenceData[64] = {
    {1, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {2, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {3, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {4, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {5, -1, 1}, {9, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {6, -1, 1}, {8, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {7, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0xC, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0xD, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0xA, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0xE, -1, 1}, {0xF, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0xF, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0xB, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {9, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {8, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
};

/* 80B5E428-80B5E718 000940 02F0+00 0/1 0/0 0/0 .data            l_motionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_motionSequenceData[188] = {
    {0, 0xF7, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {1, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {7, -1, 1}, {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {8, -1, 1}, {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {9, -1, 1}, {1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0xA, -1, 1}, {0, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0xC, -1, 1}, {0, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0xD, -1, 1}, {0, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0xD, -1, 1}, {2, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {2, 0xF7, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {5, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0xF, -1, 1}, {6, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0x10, -1, 1}, {0, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0x11, -1, 1}, {0, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0x14, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0x18, -1, 1}, {0x14, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0x19, -1, 1}, {0x14, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0x1A, -1, 1}, {0x1B, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0x1C, -1, 1}, {0x14, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0x1D, -1, 1}, {0x14, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0x1E, -1, 1}, {0x1F, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0x2C, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0x2D, -1, 1}, {0x2E, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0x29, -1, 1}, {0x2E, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0x2E, 0xF7, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0x2F, -1, 1}, {0x30, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0x30, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {4, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0x32, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0x12, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0x13, 4, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0xE, -1, 1}, {0, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0x20, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0x21, 0, 1}, {0x22, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0x23, 4, 1}, {0x20, 4, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0x2A, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0x2B, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0x31, -1, 1}, {0x32, 0, 1}, {-1, 0, 0}, {-1, 0, 0},
    {3, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0xB, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0x26, 0, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0x14, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0x15, -1, 1}, {0x16, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0x17, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0x24, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0x25, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0x27, -1, 1}, {0x28, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
};

/* 80B5E718-80B5E740 -00001 0028+00 1/1 0/0 0/0 .data            mCutNameList__11daNpc_ykM_c */
char* daNpc_ykM_c::mCutNameList[10] = {
    "",
    "SLIDEDOWN",
    "MEETING_AGAIN",
    "GET_TOMATOPUREE",
    "GET_TASTE",
    "LV5DUNGEON_CLEAR",
    "FIND_WOLF",
    "START_SNOWBOARDRACE",
    "END_SNOWBOARDRACE",
    "HUG"
};

/* 80B5E7AC-80B5E824 000CC4 0078+00 1/2 0/0 0/0 .data            mCutList__11daNpc_ykM_c */
daNpc_ykM_c::cutFunc daNpc_ykM_c::mCutList[10] = {
    NULL,
    &daNpc_ykM_c::cutSlideDown,
    &daNpc_ykM_c::cutMeetingAgain,
    &daNpc_ykM_c::cutGetTomatoPuree,
    &daNpc_ykM_c::cutGetTaste,
    &daNpc_ykM_c::cutLv5DungeonClear,
    &daNpc_ykM_c::cutFindWolf,
    &daNpc_ykM_c::cutStartSnowboardRace,
    &daNpc_ykM_c::cutEndSnowboardRace,
    &daNpc_ykM_c::cutHug,
};

/* 80B5E824-80B5E840 -00001 001C+00 1/1 0/0 0/0 .data            @4838 */
SECTION_DATA static void* lit_4838[7] = {
    (void*)(((char*)getType__11daNpc_ykM_cFv) + 0x28),
    (void*)(((char*)getType__11daNpc_ykM_cFv) + 0x30),
    (void*)(((char*)getType__11daNpc_ykM_cFv) + 0x38),
    (void*)(((char*)getType__11daNpc_ykM_cFv) + 0x40),
    (void*)(((char*)getType__11daNpc_ykM_cFv) + 0x48),
    (void*)(((char*)getType__11daNpc_ykM_cFv) + 0x50),
    (void*)(((char*)getType__11daNpc_ykM_cFv) + 0x58),
};

/* 80B5E840-80B5E85C -00001 001C+00 1/1 0/0 0/0 .data            @4854 */
SECTION_DATA static void* lit_4854[7] = {
    (void*)(((char*)isDelete__11daNpc_ykM_cFv) + 0x30),
    (void*)(((char*)isDelete__11daNpc_ykM_cFv) + 0x38),
    (void*)(((char*)isDelete__11daNpc_ykM_cFv) + 0x50),
    (void*)(((char*)isDelete__11daNpc_ykM_cFv) + 0x5C),
    (void*)(((char*)isDelete__11daNpc_ykM_cFv) + 0x74),
    (void*)(((char*)isDelete__11daNpc_ykM_cFv) + 0x7C),
    (void*)(((char*)isDelete__11daNpc_ykM_cFv) + 0x84),
};

/* 80B5E85C-80B5E868 -00001 000C+00 1/1 0/0 0/0 .data            @5032 */
SECTION_DATA static void* lit_5032[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_ykM_cFPv,
};

/* 80B5E868-80B5E874 -00001 000C+00 1/1 0/0 0/0 .data            @5117 */
SECTION_DATA static void* lit_5117[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_ykM_cFPv,
};

/* 80B5E874-80B5E880 -00001 000C+00 1/1 0/0 0/0 .data            @5122 */
SECTION_DATA static void* lit_5122[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_ykM_cFPv,
};

/* 80B5EA3C-80B5EA48 -00001 000C+00 0/1 0/0 0/0 .data            @5860 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5860[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cook__11daNpc_ykM_cFPv,
};
#pragma pop

/* 80B5EA48-80B5EA54 -00001 000C+00 0/1 0/0 0/0 .data            @5864 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5864[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)race__11daNpc_ykM_cFPv,
};
#pragma pop

/* 80B5EA54-80B5EA60 -00001 000C+00 0/1 0/0 0/0 .data            @5866 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5866[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpc_ykM_cFPv,
};
#pragma pop

/* 80B5EA60-80B5EA6C -00001 000C+00 0/1 0/0 0/0 .data            @5870 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5870[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)race__11daNpc_ykM_cFPv,
};
#pragma pop

/* 80B5EA6C-80B5EA78 -00001 000C+00 0/1 0/0 0/0 .data            @5872 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5872[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpc_ykM_cFPv,
};
#pragma pop

/* 80B5EA78-80B5EA84 -00001 000C+00 0/1 0/0 0/0 .data            @5874 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5874[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpc_ykM_cFPv,
};
#pragma pop

/* 80B5EA84-80B5EAA0 -00001 001C+00 1/1 0/0 0/0 .data            @6145 */
SECTION_DATA static void* lit_6145[7] = {
    (void*)(((char*)cutSlideDown__11daNpc_ykM_cFi) + 0x38C),
    (void*)(((char*)cutSlideDown__11daNpc_ykM_cFi) + 0x3A4),
    (void*)(((char*)cutSlideDown__11daNpc_ykM_cFi) + 0x3AC),
    (void*)(((char*)cutSlideDown__11daNpc_ykM_cFi) + 0x428),
    (void*)(((char*)cutSlideDown__11daNpc_ykM_cFi) + 0x568),
    (void*)(((char*)cutSlideDown__11daNpc_ykM_cFi) + 0x6A4),
    (void*)(((char*)cutSlideDown__11daNpc_ykM_cFi) + 0x704),
};

/* 80B5EAA0-80B5EABC -00001 001C+00 1/1 0/0 0/0 .data            @6144 */
SECTION_DATA static void* lit_6144[7] = {
    (void*)(((char*)cutSlideDown__11daNpc_ykM_cFi) + 0xC0),
    (void*)(((char*)cutSlideDown__11daNpc_ykM_cFi) + 0xC8),
    (void*)(((char*)cutSlideDown__11daNpc_ykM_cFi) + 0x230),
    (void*)(((char*)cutSlideDown__11daNpc_ykM_cFi) + 0x248),
    (void*)(((char*)cutSlideDown__11daNpc_ykM_cFi) + 0x2AC),
    (void*)(((char*)cutSlideDown__11daNpc_ykM_cFi) + 0x2C0),
    (void*)(((char*)cutSlideDown__11daNpc_ykM_cFi) + 0x360),
};

/* 80B5EABC-80B5EAE0 -00001 0024+00 1/1 0/0 0/0 .data            @6555 */
SECTION_DATA static void* lit_6555[9] = {
    (void*)(((char*)cutGetTomatoPuree__11daNpc_ykM_cFi) + 0x34C),
    (void*)(((char*)cutGetTomatoPuree__11daNpc_ykM_cFi) + 0x380),
    (void*)(((char*)cutGetTomatoPuree__11daNpc_ykM_cFi) + 0x398),
    (void*)(((char*)cutGetTomatoPuree__11daNpc_ykM_cFi) + 0x3E0),
    (void*)(((char*)cutGetTomatoPuree__11daNpc_ykM_cFi) + 0x490),
    (void*)(((char*)cutGetTomatoPuree__11daNpc_ykM_cFi) + 0x6A8),
    (void*)(((char*)cutGetTomatoPuree__11daNpc_ykM_cFi) + 0x7A4),
    (void*)(((char*)cutGetTomatoPuree__11daNpc_ykM_cFi) + 0x704),
    (void*)(((char*)cutGetTomatoPuree__11daNpc_ykM_cFi) + 0x7D8),
};

/* 80B5EAE0-80B5EB04 -00001 0024+00 1/1 0/0 0/0 .data            @6554 */
SECTION_DATA static void* lit_6554[9] = {
    (void*)(((char*)cutGetTomatoPuree__11daNpc_ykM_cFi) + 0x138),
    (void*)(((char*)cutGetTomatoPuree__11daNpc_ykM_cFi) + 0x198),
    (void*)(((char*)cutGetTomatoPuree__11daNpc_ykM_cFi) + 0x1A0),
    (void*)(((char*)cutGetTomatoPuree__11daNpc_ykM_cFi) + 0x1B4),
    (void*)(((char*)cutGetTomatoPuree__11daNpc_ykM_cFi) + 0x1D0),
    (void*)(((char*)cutGetTomatoPuree__11daNpc_ykM_cFi) + 0x230),
    (void*)(((char*)cutGetTomatoPuree__11daNpc_ykM_cFi) + 0x28C),
    (void*)(((char*)cutGetTomatoPuree__11daNpc_ykM_cFi) + 0x2A0),
    (void*)(((char*)cutGetTomatoPuree__11daNpc_ykM_cFi) + 0x30C),
};

/* 80B5EB04-80B5EB28 -00001 0024+00 1/1 0/0 0/0 .data            @6858 */
SECTION_DATA static void* lit_6858[9] = {
    (void*)(((char*)cutGetTaste__11daNpc_ykM_cFi) + 0x7D8),
    (void*)(((char*)cutGetTaste__11daNpc_ykM_cFi) + 0x7D8),
    (void*)(((char*)cutGetTaste__11daNpc_ykM_cFi) + 0x330),
    (void*)(((char*)cutGetTaste__11daNpc_ykM_cFi) + 0x378),
    (void*)(((char*)cutGetTaste__11daNpc_ykM_cFi) + 0x428),
    (void*)(((char*)cutGetTaste__11daNpc_ykM_cFi) + 0x640),
    (void*)(((char*)cutGetTaste__11daNpc_ykM_cFi) + 0x73C),
    (void*)(((char*)cutGetTaste__11daNpc_ykM_cFi) + 0x69C),
    (void*)(((char*)cutGetTaste__11daNpc_ykM_cFi) + 0x770),
};

/* 80B5EB28-80B5EB4C -00001 0024+00 1/1 0/0 0/0 .data            @6857 */
SECTION_DATA static void* lit_6857[9] = {
    (void*)(((char*)cutGetTaste__11daNpc_ykM_cFi) + 0x300),
    (void*)(((char*)cutGetTaste__11daNpc_ykM_cFi) + 0x300),
    (void*)(((char*)cutGetTaste__11daNpc_ykM_cFi) + 0x138),
    (void*)(((char*)cutGetTaste__11daNpc_ykM_cFi) + 0x198),
    (void*)(((char*)cutGetTaste__11daNpc_ykM_cFi) + 0x1B4),
    (void*)(((char*)cutGetTaste__11daNpc_ykM_cFi) + 0x214),
    (void*)(((char*)cutGetTaste__11daNpc_ykM_cFi) + 0x270),
    (void*)(((char*)cutGetTaste__11daNpc_ykM_cFi) + 0x284),
    (void*)(((char*)cutGetTaste__11daNpc_ykM_cFi) + 0x2F0),
};

/* 80B5EB9C-80B5EBA8 0010B4 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80B5EBA8-80B5EBB4 0010C0 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80B5EBB4-80B5EBC0 0010CC 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80B5EBC0-80B5EBE4 0010D8 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B5D718,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B5D710,
};

/* 80B5EBE4-80B5EBF0 0010FC 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80B5EBF0-80B5EBFC 001108 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80B5EBFC-80B5EC08 001114 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80B5EC08-80B5EC14 001120 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80B5EC14-80B5EC20 00112C 000C+00 5/5 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80B5EC20-80B5EC2C 001138 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 80B5EC2C-80B5EC38 001144 000C+00 5/5 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80B5EC38-80B5EC44 001150 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80B5EC44-80B5EC50 00115C 000C+00 3/3 0/0 0/0 .data            __vt__13daNpcT_Path_c */
SECTION_DATA extern void* __vt__13daNpcT_Path_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpcT_Path_cFv,
};

/* 80B5EC50-80B5ED14 001168 00C4+00 2/2 0/0 0/0 .data            __vt__11daNpc_ykM_c */
SECTION_DATA extern void* __vt__11daNpc_ykM_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__11daNpc_ykM_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__11daNpc_ykM_cFi,
    (void*)checkRemoveJoint__11daNpc_ykM_cFi,
    (void*)getBackboneJointNo__11daNpc_ykM_cFv,
    (void*)getNeckJointNo__11daNpc_ykM_cFv,
    (void*)getHeadJointNo__11daNpc_ykM_cFv,
    (void*)getFootLJointNo__8daNpcT_cFv,
    (void*)getFootRJointNo__8daNpcT_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__11daNpc_ykM_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__11daNpc_ykM_cFi,
    (void*)setParam__11daNpc_ykM_cFv,
    (void*)checkChangeEvt__11daNpc_ykM_cFv,
    (void*)evtTalk__11daNpc_ykM_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__11daNpc_ykM_cFv,
    (void*)setAfterTalkMotion__11daNpc_ykM_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__11daNpc_ykM_cFv,
    (void*)beforeMove__11daNpc_ykM_cFv,
    (void*)afterMoved__11daNpc_ykM_cFv,
    (void*)setAttnPos__11daNpc_ykM_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__11daNpc_ykM_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__11daNpc_ykM_cFv,
    (void*)drawOtherMdl__11daNpc_ykM_cFv,
    (void*)drawGhost__8daNpcT_cFv,
    (void*)afterSetFaceMotionAnm__8daNpcT_cFiifi,
    (void*)afterSetMotionAnm__11daNpc_ykM_cFiifi,
    (void*)getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c,
    (void*)getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c,
    (void*)changeAnm__8daNpcT_cFPiPi,
    (void*)changeBck__8daNpcT_cFPiPi,
    (void*)changeBtp__8daNpcT_cFPiPi,
    (void*)changeBtk__8daNpcT_cFPiPi,
    (void*)setMotionAnm__8daNpcT_cFifi,
};

/* 80B534EC-80B53698 0000EC 01AC+00 1/0 0/0 0/0 .text            __dt__11daNpc_ykM_cFv */
daNpc_ykM_c::~daNpc_ykM_c() {
    // NONMATCHING
    if (mpMorf[0] != NULL) {
        mpMorf[0]->stopZelAnime();
    }

    if (field_0xe40 != NULL) {
        field_0xe40->stopZelAnime();
    }

    if (field_0xe44 != NULL) {
        field_0xe44->stopZelAnime();
    }

    deleteRes(l_loadResPtrnList[mType], (const char**)l_resNameList);

    if (field_0x157b != 0) {
        mDoAud_subBgmStop();
    }

    daNpcT_offTmpBit(0x54);
}

/* 80B5D794-80B5D85C 000000 00C8+00 23/23 0/0 0/0 .rodata          m__17daNpc_ykM_Param_c */
daNpc_ykM_HIOParam const daNpc_ykM_Param_c::m = {
    500.0f,
    -4.0f,
    1.0f,
    1600.0f,
    255.0f,
    170.0f,
    30.0f,
    120.0f,
    0.0f,
    -15.0f,
    25.0f,
    -25.0f,
    30.0f,
    -15.0f,
    20.0f,
    -20.0f,
    0.8f,
    12.0f,
    7,
    6,
    9,
    6,
    110.0f,
    0.0f,
    0.0f,
    0.0f,
    60,
    8,
    0,
    0,
    0,
    0,
    0,
    4.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    30,
    0,
    500.0f,
    300.0f,
    18.0f,
    50.0f,
    3.0f,
    20.0f,
    50.0f,
    56.0f,
    0.8f,
    52.0f,
    0x78,
    0,
    28.0f,
    1,
    5,
    0.6f,
};

/* 80B53698-80B53990 000298 02F8+00 1/1 0/0 0/0 .text            create__11daNpc_ykM_cFv */
cPhs__Step daNpc_ykM_c::create() {
    fopAcM_SetupActor2(this, daNpc_ykM_c, l_faceMotionAnmData, l_motionAnmData, l_faceMotionSequenceData,
                                                  4, l_motionSequenceData, 4, l_evtList, l_resNameList);
    mType = getType();
    mFlowNodeNo = getFlowNodeNo();
    mTwilight = false;

    cPhs__Step phase = (cPhs__Step)loadRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
    if (phase == cPhs_COMPLEATE_e) {
        OS_REPORT("\t(%s:%d) flowNo:%d, PathID:%02x, BitTRB:%02x<%08x> ", fopAcM_getProcNameString(this), mType, mFlowNodeNo,
                  (getPathID() >> 32) & 0xFF, getBitTRB() & 0xFF, fopAcM_GetParam(this));

        if (isDelete()) {
            OS_REPORT("===>isDelete:TRUE\n");
            return cPhs_ERROR_e;
        }

        static int const heapSize[8] = {
            0x8000, 0x5460, 0x8000, 0x4460,
            0x8000, 0x8000, 0x8000, 0x8000,
        };
        OS_REPORT("\n");
        OS_REPORT("YKM: %u 0x%04x\n", mType, heapSize[mType]);
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, heapSize[mType])) {
            return cPhs_ERROR_e;
        }

        fopAcM_SetMtx(this, mpMorf[0]->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -400.0f, -100.0f, -500.0f, 400.0f, 600.0f, 500.0f);

        mSound.init(&current.pos, &eyePos, 3, 1);
        
        reset();
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
                  fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mCcStts.Init(daNpc_ykM_Param_c::m.common.weight, 0, this);

        for (int i = 0; i < 4; i++) {
            field_0xf94[i].Set(mCcDSph);
            field_0xf94[i].SetStts(&mCcStts);
            field_0xf94[i].SetTgHitCallback(tgHitCallBack);
        }

        field_0xe58.Set(mCcDCyl);
        field_0xe58.SetStts(&mCcStts);
        field_0xe58.SetTgHitCallback(tgHitCallBack);

        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();

        if (mGroundH != -1000000000.0f) {
            setEnvTevColor();
            setRoomNo();
        }

        mCreating = true;
        Execute();
        mCreating = false;
    }

    return phase;
}

/* 80B53990-80B53F00 000590 0570+00 1/1 0/0 0/0 .text            CreateHeap__11daNpc_ykM_cFv */
int daNpc_ykM_c::CreateHeap() {
    // NONMATCHING
    J3DModelData* mdlData_p = (J3DModelData*)dComIfG_getObjectRes(l_resNameList[l_bmdData[mTwilight ? 0 : 1][1]], 
                                                                  l_bmdData[mTwilight ? 0 : 1][0]);
    if (mdlData_p == NULL) {
        return 1;
    }

    mpMorf[0] = new mDoExt_McaMorfSO(mdlData_p, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mSound, 0x80000, 0x11020284);
    if (mpMorf[0] == NULL || mpMorf[0]->getModel() == NULL) {
        return 0;
    }

    J3DModel* model = mpMorf[0]->getModel();
    for (u16 i = 0; i < mdlData_p->getJointNum(); i++) {
        mdlData_p->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
    }
    model->setUserArea((u32)this);

    mpMatAnm[0] = new daNpcT_MatAnm_c();
    if (mpMatAnm[0] == NULL) {
        return 0;
    }

    static int const bmdTypeList[3] = {1, 2, 3};
    switch (mType) {
        case 1:
            for (int i = 0; i < 3; i++) {
                if (l_bmdData[bmdTypeList[i]][0] >= 0) {
                    mdlData_p = (J3DModelData*)dComIfG_getObjectRes(l_resNameList[l_bmdData[bmdTypeList[i]][1]], 
                                                                    l_bmdData[bmdTypeList[i]][0]);
                } else {
                    mdlData_p = NULL;
                }

                if (mdlData_p != NULL) {
                    field_0xe4c[i] = mDoExt_J3DModel__create(mdlData_p, 0x80000, 0x11000084);
                } else {
                    field_0xe4c[i] = NULL;
                }
            }
            break;

        case 2:
            mdlData_p = (J3DModelData*)dComIfG_getObjectRes(l_resNameList[l_bmdData[4][1]], l_bmdData[4][0]);
            JUT_ASSERT(1595, 0 != mdlData_p);
            field_0xe40 = new mDoExt_McaMorfSO(mdlData_p, NULL, NULL, NULL, -1, 1.0f, 0, -1,
                                               NULL, 0x80000, 0x11000084);
            if (field_0xe40 == NULL || field_0xe40->getModel() == NULL) {
                return 0;
            }

            mdlData_p = (J3DModelData*)dComIfG_getObjectRes(l_resNameList[l_bmdData[5][1]], l_bmdData[5][0]);
            JUT_ASSERT(1622, 0 != mdlData_p);
            field_0xe44 = new mDoExt_McaMorfSO(mdlData_p, NULL, NULL, NULL, -1, 1.0f, 0, -1,
                                               NULL, 0x80000, 0x11000084);
            if (field_0xe44 == NULL || field_0xe44->getModel() == NULL) {
                return 0;
            }

            setLeafAnm(0, 0.0f);

            mdlData_p = (J3DModelData*)dComIfG_getObjectRes(l_resNameList[l_bmdData[bmdTypeList[1]][1]],
                                                            l_bmdData[bmdTypeList[1]][0]);
            if (mdlData_p != NULL) {
                field_0xe4c[1] = mDoExt_J3DModel__create(mdlData_p, 0x80000, 0x11000084);
            } else {
                field_0xe4c[1] = NULL;
            }
            break;

        case 3:
            break;

        case 4:
            mdlData_p = (J3DModelData*)dComIfG_getObjectRes(l_resNameList[l_bmdData[bmdTypeList[1]][1]],
                                                            l_bmdData[bmdTypeList[1]][0]);
            if (mdlData_p != NULL) {
                field_0xe4c[1] = mDoExt_J3DModel__create(mdlData_p, 0x80000, 0x11000084);
            } else {
                field_0xe4c[1] = NULL;
            }
            break;
    }

    if (setFaceMotionAnm(1, false) && setMotionAnm(0, 0.0f, FALSE)) {
        return 1;
    }

    return 0;
}

/* 80B540BC-80B540F0 000CBC 0034+00 1/1 0/0 0/0 .text            Delete__11daNpc_ykM_cFv */
int daNpc_ykM_c::Delete() {
    this->~daNpc_ykM_c();
    return 1;
}

/* 80B540F0-80B54110 000CF0 0020+00 2/2 0/0 0/0 .text            Execute__11daNpc_ykM_cFv */
int daNpc_ykM_c::Execute() {
    return execute();
}

/* 80B54110-80B541F8 000D10 00E8+00 1/1 0/0 0/0 .text            Draw__11daNpc_ykM_cFv */
int daNpc_ykM_c::Draw() {
    J3DModelData* mdlData_p = mpMorf[0]->getModel()->getModelData();

    if (mpMatAnm[0] != NULL) {
        mdlData_p->getMaterialNodePointer(getEyeballMaterialNo())->setMaterialAnm(mpMatAnm[0]);
    }

    if (field_0x157a != 0) {
        mdlData_p->getMaterialNodePointer(3)->getShape()->hide();
    }

    int rv = draw(
        #ifdef DEBUG
        chkAction(&daNpc_ykM_c::test),
        #else
        FALSE,
        #endif
        FALSE, mRealShadowSize, NULL, 0.0f, FALSE, field_0x1581 == 1, FALSE
    );

    if (field_0x157a != 0) {
        mdlData_p->getMaterialNodePointer(3)->getShape()->show();
    }

    return rv;
}

/* 80B541F8-80B54218 000DF8 0020+00 1/1 0/0 0/0 .text            createHeapCallBack__11daNpc_ykM_cFP10fopAc_ac_c */
int daNpc_ykM_c::createHeapCallBack(fopAc_ac_c* a_this) {
    daNpc_ykM_c* i_this = (daNpc_ykM_c*)a_this;
    return i_this->CreateHeap();
}

/* 80B54218-80B54270 000E18 0058+00 1/1 0/0 0/0 .text            ctrlJointCallBack__11daNpc_ykM_cFP8J3DJointi */
int daNpc_ykM_c::ctrlJointCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpc_ykM_c* i_this = (daNpc_ykM_c*)model->getUserArea();
        if (i_this != NULL) {
            i_this->ctrlJoint(i_joint, model);
        }
    }

    return 1;
}

/* 80B54270-80B5430C 000E70 009C+00 2/2 0/0 0/0 .text            srchGadget__11daNpc_ykM_cFPvPv */
void* daNpc_ykM_c::srchGadget(void* i_actor, void* i_data) {
    if (mFindCount < 50 && i_actor != NULL && i_actor != i_data) {
        if (fopAcM_IsExecuting(fopAcM_GetID(i_actor)) && fopAcM_GetName(i_actor) == PROC_OBJ_GADGET) {
            mFindActorPtrs[mFindCount] = (fopAc_ac_c*)i_actor;
            mFindCount++;
        }
    }

    return NULL;
}

/* 80B5430C-80B543DC 000F0C 00D0+00 1/1 0/0 0/0 .text            getTomatoPureeP__11daNpc_ykM_cFv */
fopAc_ac_c* daNpc_ykM_c::getTomatoPureeP() {
    fopAc_ac_c* actor = NULL;
    f32 fVar1 = 1000000000.0f;
    mFindCount = 0;

    fopAcM_Search(srchGadget, this);

    for (int i = 0; i < mFindCount; i++) {
        if (((daObj_Gadget_c*)mFindActorPtrs[i])->getType() == 0 && fopAcM_searchActorDistance(this, mFindActorPtrs[i]) < fVar1) {
            fVar1 = fopAcM_searchActorDistance(this, mFindActorPtrs[i]);
            actor = mFindActorPtrs[i];
        }
    }

    return actor;
}

/* 80B543DC-80B544B0 000FDC 00D4+00 1/1 0/0 0/0 .text            getCheeseP__11daNpc_ykM_cFv */
fopAc_ac_c* daNpc_ykM_c::getCheeseP() {
    fopAc_ac_c* actor = NULL;
    f32 fVar1 = 1000000000.0f;
    mFindCount = 0;

    fopAcM_Search(srchGadget, this);

    for (int i = 0; i < mFindCount; i++) {
        if (((daObj_Gadget_c*)mFindActorPtrs[i])->getType() == 1 && fopAcM_searchActorDistance(this, mFindActorPtrs[i]) < fVar1) {
            fVar1 = fopAcM_searchActorDistance(this, mFindActorPtrs[i]);
            actor = mFindActorPtrs[i];
        }
    }

    return actor;
}

/* 80B544B0-80B5454C 0010B0 009C+00 1/1 0/0 0/0 .text            srchYkm__11daNpc_ykM_cFPvPv */
void* daNpc_ykM_c::srchYkm(void* i_actor, void* i_data) {
    if (mFindCount < 50 && i_actor != NULL && i_actor != i_data) {
        if (fopAcM_IsExecuting(fopAcM_GetID(i_actor)) && fopAcM_GetName(i_actor) == PROC_NPC_YKM) {
            mFindActorPtrs[mFindCount] = (fopAc_ac_c*)i_actor;
            mFindCount++;
        }
    }

    return NULL;
}

/* 80B5454C-80B54628 00114C 00DC+00 4/4 0/0 0/0 .text            getOtherYkmP__11daNpc_ykM_cFi */
fopAc_ac_c* daNpc_ykM_c::getOtherYkmP(int param_1) {
    fopAc_ac_c* actor = NULL;
    f32 fVar1 = 1000000000.0f;
    mFindCount = 0;

    fopAcM_Search(srchYkm, this);

    for (int i = 0; i < mFindCount; i++) {
        if (param_1 == (((daNpc_ykM_c*)mFindActorPtrs[i])->getType() & 0xFF) && fopAcM_searchActorDistance(this, mFindActorPtrs[i]) < fVar1) {
            fVar1 = fopAcM_searchActorDistance(this, mFindActorPtrs[i]);
            actor = mFindActorPtrs[i];
        }
    }

    return actor;
}

/* 80B54628-80B546C4 001228 009C+00 1/1 0/0 0/0 .text            srchYkw__11daNpc_ykM_cFPvPv */
void* daNpc_ykM_c::srchYkw(void* i_actor, void* i_data) {
    if (mFindCount < 50 && i_actor != NULL && i_actor != i_data) {
        if (fopAcM_IsExecuting(fopAcM_GetID(i_actor)) && fopAcM_GetName(i_actor) == PROC_NPC_YKW) {
            mFindActorPtrs[mFindCount] = (fopAc_ac_c*)i_actor;
            mFindCount++;
        }
    }

    return NULL;
}

/* 80B546C4-80B547A0 0012C4 00DC+00 1/1 0/0 0/0 .text            getOtherYkwP__11daNpc_ykM_cFi */
fopAc_ac_c* daNpc_ykM_c::getOtherYkwP(int param_1) {
    fopAc_ac_c* actor = NULL;
    f32 fVar1 = 1000000000.0f;
    mFindCount = 0;

    fopAcM_Search(srchYkw, this);

    for (int i = 0; i < mFindCount; i++) {
        if (param_1 == (((daNpc_ykW_c*)mFindActorPtrs[i])->getType() & 0xFF) && fopAcM_searchActorDistance(this, mFindActorPtrs[i]) < fVar1) {
            fVar1 = fopAcM_searchActorDistance(this, mFindActorPtrs[i]);
            actor = mFindActorPtrs[i];
        }
    }

    return actor;
}

/* 80B547A0-80B54808 0013A0 0068+00 3/2 0/0 1/1 .text            getType__11daNpc_ykM_cFv */
u8 daNpc_ykM_c::getType() {
    // NONMATCHING
    switch (fopAcM_GetParam(this) & 0xFF) {
        case 0:
            return 0;

        case 1:
            return 1;

        case 2:
            return 2;

        case 3:
            return 3;

        case 4:
            return 4;

        case 5:
            return 5;

        case 6:
            return 6;

        default:
            return 7;
    }
}

/* 80B54808-80B548A8 001408 00A0+00 2/1 0/0 0/0 .text            isDelete__11daNpc_ykM_cFv */
BOOL daNpc_ykM_c::isDelete() {
    // NONMATCHING
    switch (mType) {
        case 0:
            return FALSE;

        case 1:
            return dComIfGs_isDungeonItemBossKey();

        case 2:
            return daNpcT_chkEvtBit(0x134);

        case 3:
            return dComIfGs_isStageBossEnemy();

        case 4:
            return FALSE;

        case 5:
            return FALSE;

        case 6:
            return FALSE;

        default:
            return TRUE;
    }
}

/* 80B548A8-80B54B44 0014A8 029C+00 1/1 0/0 0/0 .text            reset__11daNpc_ykM_cFv */
void daNpc_ykM_c::reset() {
    // NONMATCHING
    csXyz angle;
    int iVar1 = (u8*)&field_0x1588 - (u8*)&field_0x14e4;

    if (mpMatAnm[0] != NULL) {
        mpMatAnm[0]->initialize();
    }
    initialize();
    for (int i = 0; i < 8; i++) {
        mActorMngr[i].initialize();
    }

    memset(&field_0x14e4, 0, iVar1);
    
    if (getPathID() != 0xFF) {
        mPath.initialize();
        mPath.setPathInfo(getPathID(), fopAcM_GetRoomNo(this), 0);

        mRoomPath = NULL;
        if (mType == 4 && mPath.chkNextId()) {
            dPath* path = mPath.getPathInfo();
            mRoomPath = dPath_GetRoomPath(path->m_nextID, fopAcM_GetRoomNo(this));
        }
    }

    angle.setall(0);
    angle.y = home.angle.y;

    switch (mType) {
        case 2:
            field_0x1568 = -20.0f;
            field_0x1579 = 1;
            eventInfo.setIdx(0);
            break;

        case 3:
            mHide = true;
            fopAcM_OnStatus(this, fopAcM_STATUS_UNK_80000000);
            break;

        case 4:
            eventInfo.setIdx(0);
            break;

        case 5:
            mHide = true;
            fopAcM_OnStatus(this, fopAcM_STATUS_UNK_80000000);
            eventInfo.setIdx(1);
            break;

        case 6:
            mHide = true;
            fopAcM_OnStatus(this, fopAcM_STATUS_UNK_80000000);
            eventInfo.setIdx(2);
            break;
    }

    daNpcT_offTmpBit(0x53);
    daNpcT_offTmpBit(0x54);
    daNpcT_offTmpBit(0x55);
    setAngle(angle);
}

/* 80B54B44-80B54BD0 001744 008C+00 1/0 0/0 0/0 .text            afterJntAnm__11daNpc_ykM_cFi */
void daNpc_ykM_c::afterJntAnm(int param_1) {
    if (param_1 == 1) {
        mDoMtx_stack_c::YrotM(-mStagger.getAngleZ(1));
        mDoMtx_stack_c::ZrotM(mStagger.getAngleX(1));
    } else if (param_1 == 4) {
        mDoMtx_stack_c::YrotM(-mStagger.getAngleZ(0));
        mDoMtx_stack_c::ZrotM(mStagger.getAngleX(0));
    }
}

/* 80B54BD0-80B54E48 0017D0 0278+00 1/0 0/0 0/0 .text            setParam__11daNpc_ykM_cFv */
void daNpc_ykM_c::setParam() {
    selectAction();
    srchActors();

    if (mType != 5 && mType != 6) {
        u32 uVar1 = 10;
        dComIfGp_getAttention()->getDistTable(71).mDistMax = daNpc_ykM_Param_c::m.attention_dist;
        dComIfGp_getAttention()->getDistTable(71).mDistMaxRelease = daNpc_ykM_Param_c::m.attention_dist;
        dComIfGp_getAttention()->getDistTable(70).mDistMax = daNpc_ykM_Param_c::m.conversation_dist;
        dComIfGp_getAttention()->getDistTable(70).mDistMaxRelease = daNpc_ykM_Param_c::m.conversation_dist;
        u32 uVar2 = 4;

        if (mType == 1 || mType == 2) {
            if (mType == 1) {
                dComIfGp_getAttention()->getDistTable(71).mDistMax = 350.0f;
                dComIfGp_getAttention()->getDistTable(71).mDistMaxRelease = 350.0f;
                dComIfGp_getAttention()->getDistTable(70).mDistMax = 350.0f;
                dComIfGp_getAttention()->getDistTable(70).mDistMaxRelease = 350.0f;
            }

            uVar2 |= 0x80;
        } else if (mType == 4) {
            dComIfGp_getAttention()->getDistTable(71).mDistMax = 800.0f;
            dComIfGp_getAttention()->getDistTable(71).mDistMaxRelease = 900.0f;
            dComIfGp_getAttention()->getDistTable(70).mDistMax = 600.0f;
            dComIfGp_getAttention()->getDistTable(70).mDistMaxRelease = 700.0f;
        }

        dComIfGp_getAttention()->getDistTable(71).mAngleSelect = uVar2;
        dComIfGp_getAttention()->getDistTable(70).mAngleSelect = uVar2;
        attention_info.distances[0] = 71;
        attention_info.distances[1] = attention_info.distances[0];
        attention_info.distances[3] = 70;

        if (daPy_py_c::checkNowWolf()) {
            uVar1 |= 0x800000;
        }

        attention_info.flags = uVar1;
    } else {
        attention_info.flags = 0;
    }

    scale.set(daNpc_ykM_Param_c::m.common.scale, daNpc_ykM_Param_c::m.common.scale, daNpc_ykM_Param_c::m.common.scale);
    mCcStts.SetWeight(daNpc_ykM_Param_c::m.common.weight);
    mCylH = daNpc_ykM_Param_c::m.common.height;
    mWallR = daNpc_ykM_Param_c::m.common.width;
    mAttnFovY = daNpc_ykM_Param_c::m.common.fov;
    mAcchCir.SetWallR(mWallR);
    mAcchCir.SetWallH(daNpc_ykM_Param_c::m.common.knee_length);

    fopAcM_OnStatus(this, fopAcM_STATUS_UNK_000100);
    mRealShadowSize = daNpc_ykM_Param_c::m.common.real_shadow_size;

    if (field_0x157b != 0) {
        fopAcM_OffStatus(this, fopAcM_STATUS_UNK_000100);
    }

    if (mType == 3) {
        fopAcM_OffStatus(this, fopAcM_STATUS_UNK_000100);
        mRealShadowSize = 1800.0f;
    }

    mExpressionMorfFrame = daNpc_ykM_Param_c::m.common.expression_morf_frame;
    mMorfFrames = daNpc_ykM_Param_c::m.common.morf_frame;
    gravity = daNpc_ykM_Param_c::m.common.gravity;
    field_0x1574 = 0;
    field_0x1575 = 0;
    field_0xd8a.y = 0;
}

/* 80B54E5C-80B55004 001A5C 01A8+00 1/0 0/0 0/0 .text            checkChangeEvt__11daNpc_ykM_cFv */
BOOL daNpc_ykM_c::checkChangeEvt() {
    // NONMATCHING
    if (!chkAction(&daNpc_ykM_c::talk)) {
        mPreItemNo = 0;

        if (dComIfGp_event_chkTalkXY()) {
            if (dComIfGp_evmng_ChkPresentEnd()) {
                mEvtNo = 1;
                evtChange();
            }

            return TRUE;
        }

        switch (mType) {
            case 0:
                break;

            case 1:
                if (!daNpcT_chkEvtBit(4) && checkItemGet(fpcNm_ITEM_TASTE, 1) != 0) {
                    mEvtNo = 5;
                    evtChange();
                    return TRUE;
                }

                if (!daNpcT_chkEvtBit(3) && checkItemGet(fpcNm_ITEM_TOMATO_PUREE, 1) != 0) {
                    mEvtNo = 4;
                    evtChange();
                    return TRUE;
                }
                break;

            case 2:
                break;

            case 3:
                mEvtNo = 9;
                evtChange();
                return TRUE;

            case 4:
                if (daPy_py_c::checkNowWolf()) {
                    mEvtNo = 6;
                    evtChange();
                    return TRUE;
                }
                break;

            case 5:
            case 6:
                break;
        }
    }

    return FALSE;
}

/* 80B55004-80B550A4 001C04 00A0+00 1/0 0/0 0/0 .text            setAfterTalkMotion__11daNpc_ykM_cFv */
void daNpc_ykM_c::setAfterTalkMotion() {
    int i_index = 15;
    int iVar2 = mFaceMotionSeqMngr.getNo();

    switch (iVar2) {
        case 4:
            i_index = 13;
            break;

        case 5:
            i_index = 14;
            break;

        case 10:
            i_index = 11;
            break;
    }

    mFaceMotionSeqMngr.setNo(i_index, -1.0f, FALSE, 0);
}

/* 80B550A4-80B55254 001CA4 01B0+00 1/1 0/0 0/0 .text            srchActors__11daNpc_ykM_cFv */
void daNpc_ykM_c::srchActors() {
    switch (mType) {
        case 1:
            if (mActorMngr[6].getActorP() == NULL) {
                mActorMngr[6].entry(getEvtAreaTagP(14, 0));
            }

            if (mActorMngr[3].getActorP() == NULL) {
                mActorMngr[3].entry(getTomatoPureeP());
            }

            if (mActorMngr[4].getActorP() == NULL) {
                mActorMngr[4].entry(getCheeseP());
            }
            break;

        case 2:
            if (mActorMngr[6].getActorP() == NULL) {
                mActorMngr[6].entry(getEvtAreaTagP(14, 0));
            }
            break;

        case 3:
            if (mActorMngr[5].getActorP() == NULL) {
                mActorMngr[5].entry(getNearestActorP(0x27C));
            }
            break;

        case 4:
            if (mActorMngr[6].getActorP() == NULL) {
                mActorMngr[6].entry(getEvtAreaTagP(14, 1));
            }

            if (mActorMngr[7].getActorP() == NULL) {
                mActorMngr[7].entry(getEvtAreaTagP(14, 2));
            }

            if (mActorMngr[5].getActorP() == NULL) {
                mActorMngr[5].entry(getOtherYkwP(3));
            }
            break;

        case 5:
        case 6:
            break;
    }
}

/* 80B55254-80B552F4 001E54 00A0+00 1/0 0/0 0/0 .text            evtTalk__11daNpc_ykM_cFv */
BOOL daNpc_ykM_c::evtTalk() {
    // NONMATCHING
    if (chkAction(&daNpc_ykM_c::talk)) {
        (this->*field_0x14f0)(NULL);
    } else {
        setAction(&daNpc_ykM_c::talk);
    }

    return TRUE;
}

/* 80B552F4-80B553BC 001EF4 00C8+00 1/0 0/0 0/0 .text            evtCutProc__11daNpc_ykM_cFv */
BOOL daNpc_ykM_c::evtCutProc() {
    s32 staffId = dComIfGp_getEventManager().getMyStaffId("ykM", this, -1);
    if (staffId != -1) {
        mStaffId = staffId;
        int actIdx = dComIfGp_getEventManager().getMyActIdx(mStaffId, mCutNameList, 10, 0, 0);
        if ((this->*mCutList[actIdx])(mStaffId)) {
            dComIfGp_getEventManager().cutEnd(mStaffId);
        }

        return TRUE;
    }

    return FALSE;
}

/* 80B553BC-80B55658 001FBC 029C+00 1/0 0/0 0/0 .text            action__11daNpc_ykM_cFv */
void daNpc_ykM_c::action() {
    fopAc_ac_c* actor;

    int i = 0;
    do {
        actor = hitChk(&field_0xf94[i], 0xFFFFFFFF);
        if (actor != NULL) break;
        i++;
    } while (i < 4);

    if (actor == NULL) {
        actor = hitChk(&field_0xe58, 0xFFFFFFFF);
    }

    if (actor != NULL && field_0x157b != 0) {
        mStagger.setParam(this, actor, mCurAngle.y);
        mMotionSeqMngr.setNo(0x28, 0.0f, 0, 0);

        mDamageTimer = mCutType == 8 ? 20 : 8;
        mDamageTimerStart = 0;

        mJntAnm.lookNone(1);

        mSound.startCreatureSound(Z2SE_YM_SNOBO_SPIN, 0, -1);
        mSound.startCreatureVoice(Z2SE_YM_V_SNOBO_SPIN, -1);
    }

    if (mStagger.checkRebirth() != 0) {
        mStagger.initialize();
        mMode = 1;
    }

    if (field_0x14e4) {
        if (field_0x14f0 == field_0x14e4) {
            (this->*field_0x14f0)(NULL);
        } else {
            setAction(field_0x14e4);
        }
    }

    if (field_0x1582 != 0 && !dComIfGp_event_runCheck()) {
        fopAcM_delete(this);
    }

    if (field_0x1540 > 0) {
        field_0x1540--;
    } else if (field_0x1540 < 0) {
        field_0x1540 = 0;
    }
}

/* 80B55658-80B5571C 002258 00C4+00 1/0 0/0 0/0 .text            beforeMove__11daNpc_ykM_cFv */
void daNpc_ykM_c::beforeMove() {
    fopAcM_OffStatus(this, fopAcM_STATUS_UNK_80000000);

    if (checkHide()) {
        fopAcM_OnStatus(this, fopAcM_STATUS_UNK_80000000);
    }

    if (checkHide() || mNoDraw) {
        attention_info.flags = 0;
    }
}

/* 80B5571C-80B55A64 00231C 0348+00 1/0 0/0 0/0 .text            afterMoved__11daNpc_ykM_cFv */
void daNpc_ykM_c::afterMoved() {
    f32 fVar1;

    if (field_0x157b != 0 && field_0x157e == 0) {
        if (dComIfG_Bgsp().GetPolyAtt0(mAcch.m_gnd) == 13 && 3.0f < speedF) {
            cXyz sp70(current.pos);
            sp70.y -= 30.0f;
            field_0x1570 = dComIfGp_particle_setPolyColor(field_0x1570, 0x8B8F, mAcch.m_gnd, &sp70, &tevStr, &mCurAngle,
                                                          NULL, 0, NULL, -1, NULL);
            JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(field_0x1570);
            if (emitter != NULL) {
                cXyz sp7c;
                fVar1 = speedF / daNpc_ykM_Param_c::m.slide_speed;

                if (fVar1 > 1.0f) {
                    fVar1 = 1.0f;
                }

                emitter->setRate(fVar1 * 2.0f + 1.0f);
                emitter->setAwayFromCenterSpeed(fVar1 * 4.0f + 1.0f);
                sp7c.x = fVar1 * 0.3f + 0.7f;
                sp7c.y = sp7c.x;
                sp7c.z = sp7c.x;
                emitter->setGlobalParticleScale(sp7c);
                emitter->setGlobalAlpha(fVar1 * 205.0f + 50.0f);
            }
        }

        f32 fVar2 = mGroundH - current.pos.y;
        fVar1 = current.pos.absXZ(old.pos) * cM_ssin(mGroundAngle);
        
        if (fVar1 < 0.0f) {
            fVar1 = 0.0f;
        }

        if (fVar2  <= 0.000001f && fVar2 >= (-mAcchCir.GetWallH() - fVar1)) {
            current.pos.y = mGroundH;
            mAcch.SetGroundHit();
            speed.y = 0.0f;
        }
    }
}

/* 80B55A64-80B560B4 002664 0650+00 1/0 0/0 0/0 .text            setAttnPos__11daNpc_ykM_cFv */
void daNpc_ykM_c::setAttnPos() {
    // NONMATCHING
    cXyz sp104(80.0f, 30.0f, 0.0f);
    cXyz sp110(80.0f, 0.0f, 0.0f);

    if (field_0x157b != 0) {
        if (mStagger.checkStagger() && (mMotionSeqMngr.getNo() != 0x28 || mMotionSeqMngr.checkEndSequence())) {
            mStagger.setRebirth();
        }
    } else {
        mStagger.calc(FALSE);
    }

    f32 fVar1 = cM_s2rad((s16)(mCurAngle.y - field_0xd7e.y));
    f32 fVar2 = field_0x1574 != 0 ? 0.0f : daNpc_ykM_Param_c::m.common.head_angleY_max;
    f32 fVar3 = field_0x1574 != 0 ? 0.0f : daNpc_ykM_Param_c::m.common.head_angleY_min;
    f32 fVar4 = field_0x1574 != 0 ? 0.0f : daNpc_ykM_Param_c::m.common.head_angleX_max;
    f32 fVar5 = field_0x1574 != 0 ? 0.0f : daNpc_ykM_Param_c::m.common.head_angleX_min;
    f32 fVar6 = field_0x1575 != 0 ? 0.0f : daNpc_ykM_Param_c::m.common.body_angleY_max;
    f32 fVar7 = field_0x1575 != 0 ? 0.0f : daNpc_ykM_Param_c::m.common.body_angleY_min;
    f32 fVar8 = field_0x1575 != 0 ? 0.0f : daNpc_ykM_Param_c::m.common.body_angleX_max;
    f32 fVar9 = field_0x1575 != 0 ? 0.0f : daNpc_ykM_Param_c::m.common.body_angleX_min;
    J3DModel* model = mpMorf[0]->getModel();
    mJntAnm.setParam(this, model, &sp104, getBackboneJointNo(), getNeckJointNo(), getHeadJointNo(), fVar9, fVar8, fVar7, fVar6, fVar5, fVar4, fVar3, 
                     fVar2, daNpc_ykM_Param_c::m.common.neck_rotation_ratio, fVar1, &sp110);
    
    if (mJntAnm.getMode() == 8) {
        mJntAnm.calcJntRad(0.1f, 1.0f, fVar1);
    } else {
        mJntAnm.calcJntRad(0.2f, 1.0f, fVar1);
    }

    model = mpMorf[0]->getModel();
    cXyz sp11c(current.pos);
    sp11c.y += field_0x1568;
    mDoMtx_stack_c::transS(sp11c);
    mDoMtx_stack_c::ZXYrotM(mCurAngle);
    mDoMtx_stack_c::scaleM(scale);
    model->setBaseTRMtx(mDoMtx_stack_c::get());
    model->setUserArea((u32)this);

    mpMorf[0]->onMorfNone();
    if (cM3d_IsZero(field_0xdfc) != false) {
        mpMorf[0]->offMorfNone();
    }

    if ((mAnmFlags & 0x400) != 0) {
        mBckAnm.getBckAnm()->setFrame(mBckAnm.getFrame());
    }

    mpMorf[0]->modelCalc();

    if (field_0xe40 != NULL) {
        cXyz sp128;
        field_0xe40->play(0, 0);
        mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(0x14));
        mDoMtx_stack_c::multVecZero(&sp128);

        Mtx mtx;
        MTXCopy(mDoMtx_stack_c::get(), mtx);
        field_0xe40->getModel()->setBaseTRMtx(mtx);
        field_0xe40->modelCalc();

        if (field_0x1579 != 0) {
            mDoAud_seStartLevel(Z2SE_YM_FISH, &sp128, 0, 0);
        }
    }

    if (field_0xe44 != NULL) {
        field_0xe44->play(0, 0);

        fopAc_ac_c* otherYkmP = getOtherYkmP(5);
        if (otherYkmP != NULL) {
            mDoMtx_stack_c::transS(otherYkmP->current.pos);
            mDoMtx_stack_c::ZXYrotM(otherYkmP->shape_angle);
            mDoMtx_stack_c::scaleM(otherYkmP->scale);
            field_0xe44->getModel()->setBaseTRMtx(mDoMtx_stack_c::get());
            field_0xe44->modelCalc();
        }
    }

    mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(getHeadJointNo()));
    mDoMtx_stack_c::multVec(&sp104, &eyePos);

    mJntAnm.setEyeAngleX(eyePos, 1.0f, 0);
    mJntAnm.setEyeAngleY(eyePos, mCurAngle.y + field_0xd8a.y, TRUE, 1.0f, 0);

    sp104.set(0.0f, 0.0f, 50.0f);
    sp104.y = daNpc_ykM_Param_c::m.common.attention_offset + field_0x1568;

    if (field_0x1581 != 0) {
        sp104.set(55.0f, 440.0f, 55.0f);
    } else if (mType == 1) {
        sp104.set(0.0f, 480.0f, 50.0f);
    }

    mDoMtx_stack_c::YrotS(mCurAngle.y);
    mDoMtx_stack_c::multVec(&sp104, &sp104);
    attention_info.position = current.pos + sp104;
}

/* 80B560B4-80B5641C 002CB4 0368+00 1/0 0/0 0/0 .text            setCollision__11daNpc_ykM_cFv */
void daNpc_ykM_c::setCollision() {
    cXyz sp28;

    if (!mHide && field_0x1580 == 0) {
        u32 tgType = 0xD8FBFDFF;
        u32 tgSPrm = 31;
        u32 atSPrm = 0;

        if (dComIfGp_event_runCheck() || field_0x1581 != 0) {
            tgType = 0;
            tgSPrm = 0;
        } else if (mTwilight) {
            tgType = 0;
            tgSPrm = 0;
        } else {
            if (mStagger.checkStagger()) {
                tgType = 0;
                tgSPrm = 0;
            }

            if (field_0x157b != 0) {
                atSPrm = 19;
            }
        }

        int iVar1[4] = {2, 13, 19, 29};
        f32 fVar1[4] = {140.0f, 60.0f, 60.0f, 140.0f};
        for (int i = 0; i < 4; i++) {
            field_0xf94[i].SetCoSPrm(0x79);
            field_0xf94[i].SetTgType(tgType);
            field_0xf94[i].SetTgSPrm(tgSPrm);
            field_0xf94[i].SetAtType(AT_TYPE_IRON_BALL);
            field_0xf94[i].SetAtSPrm(atSPrm);
            field_0xf94[i].OnTgNoHitMark();

            mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(iVar1[i]));

            if (iVar1[i] == 29) {
                sp28.set(170.0f, 0.0f, 0.0f);
                mDoMtx_stack_c::multVec(&sp28, &sp28);
            } else {
                mDoMtx_stack_c::multVecZero(&sp28);
            }

            field_0xf94[i].SetC(sp28);
            field_0xf94[i].SetR(fVar1[i]);
            dComIfG_Ccsp()->Set(&field_0xf94[i]);
        }

        field_0xe58.SetCoSPrm(0x79);
        field_0xe58.SetTgType(tgType);
        field_0xe58.SetTgSPrm(tgSPrm);
        field_0xe58.SetAtType(AT_TYPE_IRON_BALL);
        field_0xe58.SetAtSPrm(atSPrm);
        field_0xe58.OnTgNoHitMark();
        field_0xe58.SetH(mCylH);
        field_0xe58.SetR(mWallR);

        mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(0));
        mDoMtx_stack_c::multVecZero(&sp28);
        sp28.y = current.pos.y;
        field_0xe58.SetC(sp28);
        dComIfG_Ccsp()->Set(&field_0xe58);
    }

    for (int i = 0; i < 4; i++) {
        field_0xf94[i].ClrCoHit();
    }
    field_0xe58.ClrCoHit();

    for (int i = 0; i < 4; i++) {
        field_0xf94[i].ClrTgHit();
    }
    field_0xe58.ClrTgHit();

    for (int i = 0; i < 4; i++) {
        field_0xf94[i].ClrAtHit();
    }
    field_0xe58.ClrAtHit();
}

/* 80B5641C-80B56424 00301C 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__11daNpc_ykM_cFv */
int daNpc_ykM_c::drawDbgInfo() {
    return 0;
}

/* 80B56424-80B56624 003024 0200+00 1/0 0/0 0/0 .text            drawOtherMdl__11daNpc_ykM_cFv */
void daNpc_ykM_c::drawOtherMdl() {
    J3DModel* model = mpMorf[0]->getModel();

    if (field_0xe40 != NULL) {
        g_env_light.setLightTevColorType_MAJI(field_0xe40->getModel(), &tevStr);

        if (field_0x1579 == 0) {
            field_0xe40->getModel()->getModelData()->hide();
        } else {
            field_0xe40->getModel()->getModelData()->show();
        }

        field_0xe40->entryDL();
        dComIfGd_addRealShadow(mShadowKey, field_0xe40->getModel());
    }

    if (field_0xe44 != NULL) {
        g_env_light.setLightTevColorType_MAJI(field_0xe44->getModel(), &tevStr);

        if (field_0x1576 != 0) {
            field_0xe44->getModel()->getModelData()->hide();
        } else {
            field_0xe44->getModel()->getModelData()->show();
        }

        field_0xe44->entryDL();
    }

    static int const jointNo[3] = {
        0x14, 0x1C, 0x14,
    };
    for (int i = 0; i < 3; i++) {
        if (field_0xe4c[i] != NULL && ((i == 0 && field_0x1577 != 0) || (i == 2 && field_0x1578 != 0) || (i == 1 && field_0x1576 != 0))) {
            g_env_light.setLightTevColorType_MAJI(field_0xe4c[i], &tevStr);
            mDoMtx_stack_c::copy(model->getAnmMtx(jointNo[i]));

            Mtx mtx;
            MTXCopy(mDoMtx_stack_c::get(), mtx);
            field_0xe4c[i]->setBaseTRMtx(mtx);
            mDoExt_modelUpdateDL(field_0xe4c[i]);
            dComIfGd_addRealShadow(mShadowKey, field_0xe4c[i]);
        }
    }
}

/* 80B56624-80B566E8 003224 00C4+00 1/1 0/0 0/0 .text            setFishAnm__11daNpc_ykM_cFiif */
bool daNpc_ykM_c::setFishAnm(int i_index, int i_attr, f32 i_morf) {
    // NONMATCHING
    static struct {
        int resIdx;
        int arcIdx;
    } fishAnmData[51] = {
        {-1, 0}, {-1, 0},
        {-1, 0}, {-1, 0},
        {-1, 0}, {-1, 0},
        {-1, 0}, {-1, 0},
        {-1, 0}, {-1, 0},
        {-1, 0}, {-1, 0},
        {-1, 0}, {-1, 0},
        {-1, 0}, {-1, 0},
        {-1, 0}, {-1, 0},
        {-1, 0}, {-1, 0},
        {BCK_FISH_WAIT_A, YKM3}, {BCK_FISH_ATTACK, YKM3},
        {BCK_FISH_WAIT_A, YKM3}, {BCK_FISH_JUMP, YKM3},
        {BCK_FISH_WAIT_A, YKM3}, {BCK_FISH_WAIT_A, YKM3},
        {BCK_FISH_WAIT_A, YKM3}, {BCK_FISH_WAIT_A, YKM3},
        {BCK_FISH_WAIT_A, YKM3}, {BCK_FISH_WAIT_A, YKM3},
        {BCK_FISH_WAIT_A, YKM3}, {BCK_FISH_WAIT_A, YKM3},
        {BCK_FISH_SB_WAIT, YKM3}, {-1, 0},
        {-1, 0}, {-1, 0},
        {-1, 0}, {-1, 0},
        {-1, 0}, {-1, 0},
        {-1, 0}, {-1, 0},
        {-1, 0}, {-1, 0},
        {-1, 0}, {-1, 0},
        {-1, 0}, {-1, 0},
        {-1, 0}, {-1, 0},
        {-1, 0},
    };

    J3DAnmTransform* anmTransform = NULL;

    if (field_0xe40 != NULL) {
        if (fishAnmData[i_index].resIdx > 0) {
            anmTransform = getTrnsfrmKeyAnmP(l_resNameList[fishAnmData[i_index].arcIdx], fishAnmData[i_index].resIdx);
        }

        if (anmTransform != NULL) {
            field_0xe40->setAnm(anmTransform, i_attr, i_morf, 1.0f, 0.0f, -1.0f);
        }
    }

    return true;
}

/* 80B566E8-80B567B4 0032E8 00CC+00 2/2 0/0 0/0 .text            setLeafAnm__11daNpc_ykM_cFif */
bool daNpc_ykM_c::setLeafAnm(int i_index, f32 i_morf) {
    // NONMATCHING
    static struct {
        int resIdx;
        int attr;
        int arcIdx;
    } leafAnmData[3] = {
        {BCK_LEAF_WAIT_A, 2, YKM3},
        {BCK_LEAF_FALL, 0, YKM3},
        {BCK_LEAF_WAIT_B, 2, YKM3},
    };

    J3DAnmTransform* anmTransform = NULL;

    if (field_0xe44 != NULL) {
        if (leafAnmData[i_index].resIdx > 0) {
            anmTransform = getTrnsfrmKeyAnmP(l_resNameList[leafAnmData[i_index].arcIdx], leafAnmData[i_index].resIdx);
        }

        if (anmTransform != NULL) {
            field_0xe44->setAnm(anmTransform, leafAnmData[i_index].attr, i_morf, 1.0f, 0.0f, -1.0f);
        }
    }

    return true;
}

/* 80B567B4-80B5680C 0033B4 0058+00 1/0 0/0 0/0 .text afterSetMotionAnm__11daNpc_ykM_cFiifi */
bool daNpc_ykM_c::afterSetMotionAnm(int i_index, int i_attr, f32 i_morf, int param_3) {
    if (mCreating == true) {
        i_morf = 0.0f;
    }

    switch (i_index) {
        case 0x23:
            mpMorf[0]->setStartFrame(15.0f);
            break;
    }

    return setFishAnm(i_index, i_attr, i_morf);
}

/* 80B5680C-80B56954 00340C 0148+00 1/1 0/0 0/0 .text            selectAction__11daNpc_ykM_cFv */
int daNpc_ykM_c::selectAction() {
    // NONMATCHING
    field_0x14e4 = NULL;

    switch (mType) {
        case 1:
            field_0x14e4 = &daNpc_ykM_c::cook;
            break;

        case 2:
            if (field_0x157b != 0) {
                field_0x14e4 = &daNpc_ykM_c::race;
                mAcch.SetWallNone();
            } else {
                field_0x14e4 = &daNpc_ykM_c::wait;
                mAcch.ClrWallNone();
            }
            break;

        case 4:
            if (field_0x157b != 0) {
                field_0x14e4 = &daNpc_ykM_c::race;
                mAcch.SetWallNone();
            } else {
                field_0x14e4 = &daNpc_ykM_c::wait;
                mAcch.ClrWallNone();
            }
            break;

        default:
            field_0x14e4 = &daNpc_ykM_c::wait;
            break;
    }

    return 1;
}

/* 80B56954-80B56980 003554 002C+00 2/2 0/0 0/0 .text            chkAction__11daNpc_ykM_cFM11daNpc_ykM_cFPCvPvPv_i */
BOOL daNpc_ykM_c::chkAction(ActionFn action) {
    return field_0x14f0 == action;
}

/* 80B56980-80B56A28 003580 00A8+00 2/2 0/0 0/0 .text            setAction__11daNpc_ykM_cFM11daNpc_ykM_cFPCvPvPv_i */
int daNpc_ykM_c::setAction(ActionFn action) {
    mMode = 3;

    if (field_0x14f0) {
        (this->*field_0x14f0)(NULL);
    }

    mMode = 0;
    field_0x14f0 = action;

    if (field_0x14f0) {
        (this->*field_0x14f0)(NULL);
    }

    return 1;
}

/* 80B56A28-80B56AB4 003628 008C+00 2/2 0/0 0/0 .text chkContinueAttnPlayer__11daNpc_ykM_cFv */
BOOL daNpc_ykM_c::chkContinueAttnPlayer() {
    if (mType == 1 && daNpcT_chkEvtBit(0xB)) {
        if (daNpcT_chkEvtBit(4) && daNpcT_chkEvtBit(8)) {
            return TRUE;
        }

        if (daNpcT_chkEvtBit(3) && daNpcT_chkEvtBit(7)) {
            return TRUE;
        }
    }

    return FALSE;
}

/* 80B56AB4-80B56B84 0036B4 00D0+00 1/1 0/0 0/0 .text            chkTouchPlayer__11daNpc_ykM_cFv */
BOOL daNpc_ykM_c::chkTouchPlayer() {
    if (20.0f < speedF) {
        fopAc_ac_c* actor;
        for (int i = 0; i < 4; i++) {
            if (field_0xf94[i].ChkCoHit()) {
                actor = field_0xf94[i].GetCoHitAc();

                if (actor != NULL && fopAcM_GetName(actor) == PROC_ALINK) {
                    return TRUE;
                }
            }
        }

        if (field_0xe58.ChkCoHit()) {
            actor = field_0xe58.GetCoHitAc();

            if (actor != NULL && fopAcM_GetName(actor) == PROC_ALINK) {
                return TRUE;
            }
        }
    }

    return FALSE;
}

/* 80B56B84-80B572C8 003784 0744+00 3/0 0/0 0/0 .text            cutSlideDown__11daNpc_ykM_cFi */
int daNpc_ykM_c::cutSlideDown(int i_cutIndex) {
    // NONMATCHING
    fopAc_ac_c* actor_p;
    cXyz work;
    csXyz angle;
    int rv = 0;
    int prm = -1;
    int timer = 0;
    
    int* piVar1 = dComIfGp_evmng_getMyIntegerP(i_cutIndex, "prm");
    if (piVar1 != NULL) {
        prm = *piVar1;
    }

    piVar1 = dComIfGp_evmng_getMyIntegerP(i_cutIndex, "timer");
    if (piVar1 != NULL) {
        timer = *piVar1;
    }

    dEvent_manager_c* eventManager = &dComIfGp_getEventManager();

    if (eventManager->getIsAddvance(i_cutIndex) != 0) {
        switch (prm) {
            case 0:
                mEventTimer = timer;
                break;

            case 1:
                mFaceMotionSeqMngr.setNo(0xF, -1.0f, FALSE, 0);
                mMotionSeqMngr.setNo(0x29, -1.0f, FALSE, 0);
                work.set(400.0f, 500.0f, -200.0f);
                angle.y = mCurAngle.y;
                mDoMtx_stack_c::YrotS(angle.y);
                mDoMtx_stack_c::multVec(&work, &work);
                work += current.pos;
                mGndChk.SetPos(&work);
                work.y = dComIfG_Bgsp().GroundCross(&mGndChk);

                JUT_ASSERT(3443, -(1000000000.0f) != work.y);

                daPy_getPlayerActorClass()->setPlayerPosAndAngle(&work, angle.y, 0);
                work.set(400.0f, 500.0f, 0.0f);
                angle.y = mCurAngle.y;
                mDoMtx_stack_c::YrotS(angle.y);
                mDoMtx_stack_c::multVec(&work, &work);
                work += current.pos;
                mGndChk.SetPos(&work);
                work.y = dComIfG_Bgsp().GroundCross(&mGndChk);

                JUT_ASSERT(3454, -(1000000000.0f) != work.y);

                dComIfGp_evmng_setGoal(&work);
                break;

            case 2:
                initTalk(mFlowNodeNo, NULL);
                mEventTimer = timer;
                break;

            case 3:
                mMotionSeqMngr.setNo(0x2A, 0.0f, TRUE, 0);
                mJntAnm.lookNone(1);
                break;

            case 4:
                setLeafAnm(1, 0.0f);
                break;

            case 5:
                mMotionSeqMngr.setNo(0x2B, 0.0f, TRUE, 0);
                actor_p = getOtherYkmP(5);
                
                JUT_ASSERT(3475, 0 != actor_p);

                setPos(actor_p->current.pos);
                setAngle(actor_p->shape_angle.y);
                field_0x1568 = 0.0f;
                setLeafAnm(2, 0.0f);
                mSound.startCreatureVoice(Z2SE_YKM_V_JUMP_TO_LEAF, -1);
                break;

            case 6:
                field_0x157b = 1;
                field_0x1582 = 1;
                break;
        }
    }

    cXyz i_sePos;
    switch (prm) {
        case 0:
            if (cLib_calcTimer(&mEventTimer) == 0) {
                rv = 1;
            }
            break;

        case 1:
            rv = 1;
            break;

        case 2:
            mJntAnm.lookPlayer(0);

            if (cLib_calcTimer(&mEventTimer) == 0 && talkProc(NULL, FALSE, NULL, FALSE) && mFlow.checkEndFlow()) {
                rv = 1;
            }
            break;

        case 3:
            mJntAnm.lookNone(0);

            if (mMotionSeqMngr.getStepNo() == 0) {
                if (mpMorf[0]->checkFrame(65.0f)) {
                    rv = 1;
                } else if (mpMorf[0]->checkFrame(50.0f)) {
                    mSound.startCreatureVoice(Z2SE_YKM_V_ATTACK_TREE, -1);
                } else if (mpMorf[0]->checkFrame(62.0f)) {
                    i_sePos.set(-14483.0f, 2023.0f, -9768.0f);
                    mDoAud_seStart(Z2SE_YM_ATTACK_TREE, &i_sePos, 0, 0);
                    dComIfGp_getVibration().StartShock(5, 15, cXyz(0.0f, 1.0f, 0.0f));
                }
            }
            break;

        case 4:
            mJntAnm.lookNone(0);

            if (field_0xe44->isStop()) {
                actor_p = getOtherYkmP(5);

                JUT_ASSERT(3565, 0 != actor_p);

                angle.y = fopAcM_searchActorAngleY(daPy_getPlayerActorClass(), actor_p);
                work = daPy_getPlayerActorClass()->current.pos;
                daPy_getPlayerActorClass()->setPlayerPosAndAngle(&work, angle.y, 0);
                rv = 1;
            } else {
                actor_p = getOtherYkmP(5);

                if (actor_p != NULL && field_0xe44->checkFrame(22.0f)) {
                    mDoAud_seStart(Z2SE_OBJ_LEAF_FALL_DOWN, &actor_p->current.pos, 0, 0);
                }
            }
            break;

        case 5:
            if (mMotionSeqMngr.checkEndSequence()) {
                rv = 1;
            } else if (mpMorf[0]->checkFrame(27.0f)) {
                mSound.startCreatureSound(Z2SE_YM_RIDE_LEAF, 0, -1);
            }
            break;

        case 6:
            action();

            if (17 < (int)mPath.getIdx()) {
                rv = 1;
            }
            break;
    }

    return rv;
}

/* 80B572C8-80B57638 003EC8 0370+00 1/0 0/0 0/0 .text            cutMeetingAgain__11daNpc_ykM_cFi */
int daNpc_ykM_c::cutMeetingAgain(int i_cutIndex) {
    // NONMATCHING
    cXyz work;
    int rv = 0;
    int prm = -1;
    int timer = 0;
    
    int* piVar1 = dComIfGp_evmng_getMyIntegerP(i_cutIndex, "prm");
    if (piVar1 != NULL) {
        prm = *piVar1;
    }

    piVar1 = dComIfGp_evmng_getMyIntegerP(i_cutIndex, "timer");
    if (piVar1 != NULL) {
        timer = *piVar1;
    }

    dComIfGp_evmng_getMyIntegerP(i_cutIndex, "msgNo");

    dEvent_manager_c* eventManager = &dComIfGp_getEventManager();

    if (eventManager->getIsAddvance(i_cutIndex)) {
        switch (prm) {
            case 0:
                daNpcT_offTmpBit(0xB);
                daNpcT_offTmpBit(0xC);
                daNpcT_offTmpBit(0xD);
                initTalk(mFlowNodeNo, NULL);
                break;

            case 1:
                mEventTimer = timer;
                field_0x156c = fopAcM_searchActorAngleY(daPy_getPlayerActorClass(), this);
                work.set(0.0f, 0.0f, 1000.0f);
                mDoMtx_stack_c::YrotS(field_0x156c);
                mDoMtx_stack_c::multVec(&work, &work);
                field_0x1520 = work + daPy_getPlayerActorClass()->current.pos;
                dComIfGp_evmng_setGoal(&field_0x1520);

                work.set(0.0f, 0.0f, 80.0f);
                mDoMtx_stack_c::YrotS(field_0x156c);
                mDoMtx_stack_c::multVec(&work, &work);
                work += daPy_getPlayerActorClass()->current.pos;
                daPy_getPlayerActorClass()->setPlayerPosAndAngle(&work, field_0x156c, 0);
                break;

            case 2:
                initTalk(mFlowNodeNo, NULL);
                daPy_getPlayerActorClass()->setPlayerPosAndAngle(&field_0x1520, field_0x156c, 0);
                break;

            case 3:
                break;
        }
    }

    switch (prm) {
        case 0:
            mJntAnm.lookPlayer(0);
            if (talkProc(NULL, FALSE, NULL, FALSE) && mFlow.checkEndFlow()) {
                rv = 1;
            }
            break;

        case 1:
            if (cLib_calcTimer(&mEventTimer) == 0) {
                rv = 1;
            }
            break;

        case 2:
            mJntAnm.lookPlayer(0);
            if (talkProc(NULL, FALSE, NULL, FALSE) && mFlow.checkEndFlow()) {
                rv = 1;
            }
            break;

        case 3:
            rv = 1;
            break;
    }

    return rv;
}

/* ############################################################################################## */
/* 80B5D9A0-80B5D9A8 00020C 0008+00 0/1 0/0 0/0 .rodata          @6262 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6262[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80B5D9A0, &lit_6262);
#pragma pop

/* 80B5D9A8-80B5D9AC 000214 0004+00 0/3 0/0 0/0 .rodata          @6549 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6549 = 200.0f;
COMPILER_STRIP_GATE(0x80B5D9A8, &lit_6549);
#pragma pop

/* 80B5D9AC-80B5D9B0 000218 0004+00 0/3 0/0 0/0 .rodata          @6550 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6550 = 450.0f;
COMPILER_STRIP_GATE(0x80B5D9AC, &lit_6550);
#pragma pop

/* 80B57638-80B5806C 004238 0A34+00 3/0 0/0 0/0 .text            cutGetTomatoPuree__11daNpc_ykM_cFi */
int daNpc_ykM_c::cutGetTomatoPuree(int i_cutIndex) {
    // NONMATCHING
    cXyz work;
    csXyz angle;
}

/* ############################################################################################## */
/* 80B5D9B0-80B5D9B4 00021C 0004+00 0/1 0/0 0/0 .rodata          @6551 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_6551 = 0x43360B61;
COMPILER_STRIP_GATE(0x80B5D9B0, &lit_6551);
#pragma pop

/* 80B5D9B4-80B5D9B8 000220 0004+00 0/0 0/0 0/0 .rodata          @6552 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6552 = 19.0f;
COMPILER_STRIP_GATE(0x80B5D9B4, &lit_6552);
#pragma pop

/* 80B5D9B8-80B5D9BC 000224 0004+00 0/0 0/0 0/0 .rodata          @6553 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6553 = 18.0f;
COMPILER_STRIP_GATE(0x80B5D9B8, &lit_6553);
#pragma pop

/* 80B5D9BC-80B5D9C4 000228 0008+00 0/1 0/0 0/0 .rodata          @6578 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6578[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80B5D9BC, &lit_6578);
#pragma pop

/* 80B5806C-80B58A38 004C6C 09CC+00 3/0 0/0 0/0 .text            cutGetTaste__11daNpc_ykM_cFi */
int daNpc_ykM_c::cutGetTaste(int param_0) {
    // NONMATCHING
}

/* 80B58A38-80B59500 005638 0AC8+00 1/0 0/0 0/0 .text            cutLv5DungeonClear__11daNpc_ykM_cFi */
int daNpc_ykM_c::cutLv5DungeonClear(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B5D9C4-80B5D9CC 000230 0008+00 0/0 0/0 0/0 .rodata          @6889 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6889[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80B5D9C4, &lit_6889);
#pragma pop

/* 80B5D9CC-80B5D9D4 000238 0008+00 0/1 0/0 0/0 .rodata          @7183 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_7183[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B5D9CC, &lit_7183);
#pragma pop

/* 80B59500-80B59748 006100 0248+00 1/0 0/0 0/0 .text            cutFindWolf__11daNpc_ykM_cFi */
int daNpc_ykM_c::cutFindWolf(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B5D9D4-80B5D9DC 000240 0008+00 0/0 0/0 0/0 .rodata          @7190 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_7190[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80B5D9D4, &lit_7190);
#pragma pop

/* 80B5D9DC-80B5D9E0 000248 0004+00 0/1 0/0 0/0 .rodata          @7353 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7353 = -72610.0f;
COMPILER_STRIP_GATE(0x80B5D9DC, &lit_7353);
#pragma pop

/* 80B5D9E0-80B5D9E4 00024C 0004+00 0/1 0/0 0/0 .rodata          @7354 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7354 = -54260.0f;
COMPILER_STRIP_GATE(0x80B5D9E0, &lit_7354);
#pragma pop

/* 80B5D9E4-80B5D9E8 000250 0004+00 0/1 0/0 0/0 .rodata          @7355 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7355 = 56590.0f;
COMPILER_STRIP_GATE(0x80B5D9E4, &lit_7355);
#pragma pop

/* 80B5D9E8-80B5D9EC 000254 0004+00 0/1 0/0 0/0 .rodata          @7356 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7356 = 210.0f;
COMPILER_STRIP_GATE(0x80B5D9E8, &lit_7356);
#pragma pop

/* 80B5D9EC-80B5D9F0 000258 0004+00 0/1 0/0 0/0 .rodata          @7357 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7357 = 410.0f;
COMPILER_STRIP_GATE(0x80B5D9EC, &lit_7357);
#pragma pop

/* 80B5D9F0-80B5D9F4 00025C 0004+00 0/1 0/0 0/0 .rodata          @7358 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7358 = 32.0f;
COMPILER_STRIP_GATE(0x80B5D9F0, &lit_7358);
#pragma pop

/* 80B5D9F4-80B5D9F8 000260 0004+00 0/1 0/0 0/0 .rodata          @7359 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7359 = 419.0f;
COMPILER_STRIP_GATE(0x80B5D9F4, &lit_7359);
#pragma pop

/* 80B59748-80B59B90 006348 0448+00 1/0 0/0 0/0 .text cutStartSnowboardRace__11daNpc_ykM_cFi */
int daNpc_ykM_c::cutStartSnowboardRace(int param_0) {
    // NONMATCHING
}

/* 80B59B90-80B5A0B8 006790 0528+00 1/0 0/0 0/0 .text cutEndSnowboardRace__11daNpc_ykM_cFi */
int daNpc_ykM_c::cutEndSnowboardRace(int param_0) {
    // NONMATCHING
}

/* 80B5A0B8-80B5A128 006CB8 0070+00 1/0 0/0 0/0 .text            cutHug__11daNpc_ykM_cFi */
int daNpc_ykM_c::cutHug(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B5D9F8-80B5DA00 000264 0008+00 0/0 0/0 0/0 .rodata          @7385 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_7385[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80B5D9F8, &lit_7385);
#pragma pop

/* 80B5DA00-80B5DA10 00026C 0010+00 0/1 0/0 0/0 .rodata          motionTbl2$7522 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const motionTbl2[16] = {
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x02,
};
COMPILER_STRIP_GATE(0x80B5DA00, &motionTbl2);
#pragma pop

/* 80B5DA10-80B5DA18 00027C 0008+00 0/1 0/0 0/0 .rodata          motionTbl1$7524 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const motionTbl1[8] = {
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0D,
};
COMPILER_STRIP_GATE(0x80B5DA10, &motionTbl1);
#pragma pop

/* 80B5DA18-80B5DA1C 000284 0004+00 0/3 0/0 0/0 .rodata          @7540 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7540 = 0.5f;
COMPILER_STRIP_GATE(0x80B5DA18, &lit_7540);
#pragma pop

/* 80B5A128-80B5A224 006D28 00FC+00 1/1 0/0 0/0 .text            setDialogueMotion__11daNpc_ykM_cFv
 */
void daNpc_ykM_c::setDialogueMotion() {
    // NONMATCHING
}

/* 80B5A224-80B5A3FC 006E24 01D8+00 1/1 0/0 0/0 .text            dialogue__11daNpc_ykM_cFv */
void daNpc_ykM_c::dialogue() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B5DA1C-80B5DA20 000288 0004+00 0/1 0/0 0/0 .rodata          @7841 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7841 = -40.0f;
COMPILER_STRIP_GATE(0x80B5DA1C, &lit_7841);
#pragma pop

/* 80B5A3FC-80B5ABA8 006FFC 07AC+00 3/0 0/0 0/0 .text            wait__11daNpc_ykM_cFPv */
BOOL daNpc_ykM_c::wait(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B5DA20-80B5DA24 00028C 0004+00 0/1 0/0 0/0 .rodata          @8049 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8049 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x80B5DA20, &lit_8049);
#pragma pop

/* 80B5ABA8-80B5B260 0077A8 06B8+00 1/0 0/0 0/0 .text            cook__11daNpc_ykM_cFPv */
BOOL daNpc_ykM_c::cook(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B5DA24-80B5DA2C 000290 0008+00 0/1 0/0 0/0 .rodata          @8053 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_8053[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B5DA24, &lit_8053);
#pragma pop

/* 80B5DA2C-80B5DA30 000298 0004+00 0/1 0/0 0/0 .rodata          @8468 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8468 = 640000.0f;
COMPILER_STRIP_GATE(0x80B5DA2C, &lit_8468);
#pragma pop

/* 80B5DA30-80B5DA34 00029C 0004+00 0/1 0/0 0/0 .rodata          @8469 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8469 = 3.0f / 20.0f;
COMPILER_STRIP_GATE(0x80B5DA30, &lit_8469);
#pragma pop

/* 80B5DA34-80B5DA38 0002A0 0004+00 0/1 0/0 0/0 .rodata          @8470 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_8470 = 0x3BB40000;
COMPILER_STRIP_GATE(0x80B5DA34, &lit_8470);
#pragma pop

/* 80B5DA38-80B5DA3C 0002A4 0004+00 0/1 0/0 0/0 .rodata          @8471 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8471 = 24.0f;
COMPILER_STRIP_GATE(0x80B5DA38, &lit_8471);
#pragma pop

/* 80B5DA3C-80B5DA40 0002A8 0004+00 0/1 0/0 0/0 .rodata          @8472 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8472 = -4.0f;
COMPILER_STRIP_GATE(0x80B5DA3C, &lit_8472);
#pragma pop

/* 80B5B260-80B5BE08 007E60 0BA8+00 2/0 0/0 0/0 .text            race__11daNpc_ykM_cFPv */
BOOL daNpc_ykM_c::race(void* param_0) {
    // NONMATCHING
}

/* 80B5BE08-80B5C0C4 008A08 02BC+00 3/0 0/0 0/0 .text            talk__11daNpc_ykM_cFPv */
BOOL daNpc_ykM_c::talk(void* param_0) {
    // NONMATCHING
}

#ifdef DEBUG
BOOL daNpc_ykM_c::test(void* param_1) {
    // NONMATCHING
    switch (mMode) {
        case 1:
            speedF = 0.0f;
            speed.setall(0.0f);
            mMode = 2;
            // fallthrough
        case 2:
            mFaceMotionSeqMngr.setNo(daNpc_ykM_Param_c::m.common.face_expression, -1.0f, FALSE, 0);
            mMotionSeqMngr.setNo(daNpc_ykM_Param_c::m.common.motion, -1.0f, FALSE, 0);
            mJntAnm.lookNone(0);
            attention_info.flags = 0;
            break;

        case 3:
            break;
    }

    return FALSE;
}
#endif

/* 80B5C0C4-80B5C0E4 008CC4 0020+00 1/0 0/0 0/0 .text            daNpc_ykM_Create__FPv */
static void daNpc_ykM_Create(void* param_0) {
    // NONMATCHING
}

/* 80B5C0E4-80B5C104 008CE4 0020+00 1/0 0/0 0/0 .text            daNpc_ykM_Delete__FPv */
static void daNpc_ykM_Delete(void* param_0) {
    // NONMATCHING
}

/* 80B5C104-80B5C124 008D04 0020+00 1/0 0/0 0/0 .text            daNpc_ykM_Execute__FPv */
static void daNpc_ykM_Execute(void* param_0) {
    // NONMATCHING
}

/* 80B5C124-80B5C144 008D24 0020+00 1/0 0/0 0/0 .text            daNpc_ykM_Draw__FPv */
static void daNpc_ykM_Draw(void* param_0) {
    // NONMATCHING
}

/* 80B5C144-80B5C14C 008D44 0008+00 1/0 0/0 0/0 .text            daNpc_ykM_IsDelete__FPv */
static bool daNpc_ykM_IsDelete(void* param_0) {
    return true;
}

/* 80B5C14C-80B5C17C 008D4C 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 80B5C17C-80B5C1C4 008D7C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80B5C1C4-80B5C54C 008DC4 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
// daNpcT_c::~daNpcT_c() {
extern "C" void __dt__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80B5C54C-80B5C588 00914C 003C+00 4/4 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80B5C588-80B5C5C4 009188 003C+00 3/3 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80B5C5C4-80B5C690 0091C4 00CC+00 2/2 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

/* 80B5C690-80B5C6D8 009290 0048+00 3/2 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80B5C6D8-80B5C720 0092D8 0048+00 1/0 0/0 0/0 .text            __dt__13daNpcT_Path_cFv */
// daNpcT_Path_c::~daNpcT_Path_c() {
extern "C" void __dt__13daNpcT_Path_cFv() {
    // NONMATCHING
}

/* 80B5C720-80B5C75C 009320 003C+00 1/1 0/0 0/0 .text            __ct__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::daNpcT_ActorMngr_c() {
extern "C" void __ct__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80B5C75C-80B5C7E0 00935C 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
extern "C" void __ct__8dCcD_SphFv() {
    // NONMATCHING
}

/* 80B5C7E0-80B5C828 0093E0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80B5C828-80B5C870 009428 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80B5C870-80B5C8B8 009470 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80B5C8B8-80B5CCBC 0094B8 0404+00 1/1 0/0 0/0 .text
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

/* 80B5CCBC-80B5CCC0 0098BC 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80B5CCC0-80B5CDBC 0098C0 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 80B5CDBC-80B5CDC0 0099BC 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80B5CDC0-80B5CE08 0099C0 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 80B5CE08-80B5CE78 009A08 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80B5CE78-80B5CED4 009A78 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80B5CED4-80B5CF44 009AD4 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80B5CF44-80B5CF8C 009B44 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80B5CF8C-80B5D0A8 009B8C 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* 80B5D0A8-80B5D2B0 009CA8 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 80B5D2B0-80B5D2B4 009EB0 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 80B5D2C4-80B5D2CC 009EC4 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80B5D2CC-80B5D2D4 009ECC 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80B5D2D4-80B5D2DC 009ED4 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 80B5D2DC-80B5D2E4 009EDC 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 80B5D2E4-80B5D2FC 009EE4 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80B5D2FC-80B5D300 009EFC 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 80B5D300-80B5D308 009F00 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80B5D308-80B5D338 009F08 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 80B5D338-80B5D368 009F38 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 80B5D368-80B5D36C 009F68 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B5D36C-80B5D370 009F6C 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B5D370-80B5D374 009F70 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B5D374-80B5D378 009F74 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B5D378-80B5D394 009F78 001C+00 10/10 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_80B5D378(void* _this, int* param_0) {
    // NONMATCHING
}

/* 80B5D394-80B5D410 009F94 007C+00 2/2 0/0 0/0 .text            cLib_getRndValue<i>__Fii */
extern "C" void func_80B5D394(void* _this, int param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B5ED14-80B5ED20 00122C 000C+00 2/2 0/0 0/0 .data            __vt__17daNpc_ykM_Param_c */
SECTION_DATA extern void* __vt__17daNpc_ykM_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17daNpc_ykM_Param_cFv,
};

UNK_REL_BSS;

/* 80B5ED74-80B5ED80 000054 000C+00 0/1 0/0 0/0 .bss             l_SBRaceStartPos */
static cXyz l_SBRaceStartPos;

/* 80B5ED8C-80B5ED94 00006C 0006+02 0/1 0/0 0/0 .bss             l_SBRaceStartAngle */
static csXyz l_SBRaceStartAngle;

/* 80B5EDA0-80B5EDA4 000080 0004+00 0/1 0/0 0/0 .bss             l_HIO */
static daNpc_ykM_Param_c l_HIO;

// /* 80B5D588-80B5D688 00A188 0100+00 1/1 0/0 0/0 .text
//  * __ct__11daNpc_ykM_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
//  */
// daNpc_ykM_c::daNpc_ykM_c(daNpcT_faceMotionAnmData_c const* param_0,
//                              daNpcT_motionAnmData_c const* param_1,
//                              daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2, int param_3,
//                              daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4, int param_5,
//                              daNpcT_evtData_c const* param_6, char** param_7) {
//     // NONMATCHING
// }

/* 80B5D688-80B5D690 00A288 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__11daNpc_ykM_cFv */
u16 daNpc_ykM_c::getEyeballMaterialNo() {
    return 2;
}

/* 80B5D690-80B5D698 00A290 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__11daNpc_ykM_cFv */
s32 daNpc_ykM_c::getHeadJointNo() {
    return 4;
}

/* 80B5D698-80B5D6A0 00A298 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__11daNpc_ykM_cFv */
s32 daNpc_ykM_c::getNeckJointNo() {
    return 3;
}

/* 80B5D6A0-80B5D6A8 00A2A0 0008+00 1/0 0/0 0/0 .text            getBackboneJointNo__11daNpc_ykM_cFv */
s32 daNpc_ykM_c::getBackboneJointNo() {
    return 1;
}

/* 80B5D6A8-80B5D6B8 00A2A8 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__11daNpc_ykM_cFi */
BOOL daNpc_ykM_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 80B5D6B8-80B5D6C8 00A2B8 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__11daNpc_ykM_cFi */
BOOL daNpc_ykM_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
}

/* 80B5D6C8-80B5D710 00A2C8 0048+00 2/1 0/0 0/0 .text            __dt__17daNpc_ykM_Param_cFv */
daNpc_ykM_Param_c::~daNpc_ykM_Param_c() {
    // NONMATCHING
}

/* 80B5D710-80B5D718 00A310 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80B5D710() {
    // NONMATCHING
}

/* 80B5D718-80B5D720 00A318 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80B5D718() {
    // NONMATCHING
}

/* 80B5D720-80B5D780 00A320 0060+00 2/2 0/0 0/0 .text chkPointInArea__15daTag_EvtArea_cF4cXyz */
// void daTag_EvtArea_c::chkPointInArea(cXyz param_0) {
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz() {
    // NONMATCHING
}

AUDIO_INSTANCES;

/* 80B5DA40-80B5DA40 0002AC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

/* 80B5EB4C-80B5EB6C -00001 0020+00 1/0 0/0 0/0 .data            daNpc_ykM_MethodTable */
static actor_method_class daNpc_ykM_MethodTable = {
    (process_method_func)daNpc_ykM_Create,
    (process_method_func)daNpc_ykM_Delete,
    (process_method_func)daNpc_ykM_Execute,
    (process_method_func)daNpc_ykM_IsDelete,
    (process_method_func)daNpc_ykM_Draw,
};

/* 80B5EB6C-80B5EB9C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_YKM */
extern actor_process_profile_definition g_profile_NPC_YKM = {
  fpcLy_CURRENT_e,          // mLayerID
  7,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_NPC_YKM,             // mProcName
  &g_fpcLf_Method.base,    // sub_method
  sizeof(daNpc_ykM_c),      // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  380,                      // mPriority
  &daNpc_ykM_MethodTable,   // sub_method
  0x00040107,               // mStatus
  fopAc_NPC_e,              // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};
