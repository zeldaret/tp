/**
 * @file d_a_npc_bans.cpp
 * 
*/
#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_npc_bans.h"
#include "JSystem/JHostIO/JORFile.h"
#include "d/d_debug_viewer.h"
#include "d/actor/d_a_tag_evtarea.h"
#include "d/actor/d_a_tag_kmsg.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void __dt__12daNpc_Bans_cFv();
extern "C" void create__12daNpc_Bans_cFv();
extern "C" void CreateHeap__12daNpc_Bans_cFv();
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
extern "C" void Delete__12daNpc_Bans_cFv();
extern "C" void Execute__12daNpc_Bans_cFv();
extern "C" void Draw__12daNpc_Bans_cFv();
extern "C" void createHeapCallBack__12daNpc_Bans_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__12daNpc_Bans_cFP8J3DJointi();
extern "C" void getType__12daNpc_Bans_cFv();
extern "C" void isDelete__12daNpc_Bans_cFv();
extern "C" void reset__12daNpc_Bans_cFv();
extern "C" void afterJntAnm__12daNpc_Bans_cFi();
extern "C" void setParam__12daNpc_Bans_cFv();
extern "C" void checkChangeEvt__12daNpc_Bans_cFv();
extern "C" void setAfterTalkMotion__12daNpc_Bans_cFv();
extern "C" void srchActors__12daNpc_Bans_cFv();
extern "C" void evtTalk__12daNpc_Bans_cFv();
extern "C" void evtCutProc__12daNpc_Bans_cFv();
extern "C" void action__12daNpc_Bans_cFv();
extern "C" void beforeMove__12daNpc_Bans_cFv();
extern "C" void setAttnPos__12daNpc_Bans_cFv();
extern "C" void setCollision__12daNpc_Bans_cFv();
extern "C" bool drawDbgInfo__12daNpc_Bans_cFv();
extern "C" void drawOtherMdl__12daNpc_Bans_cFv();
extern "C" void setScoopAnm__12daNpc_Bans_cFiif();
extern "C" void afterSetMotionAnm__12daNpc_Bans_cFiifi();
extern "C" void selectAction__12daNpc_Bans_cFv();
extern "C" void chkAction__12daNpc_Bans_cFM12daNpc_Bans_cFPCvPvPv_i();
extern "C" void setAction__12daNpc_Bans_cFM12daNpc_Bans_cFPCvPvPv_i();
extern "C" void checkPlayerIn2ndFloorOfBombShop__12daNpc_Bans_cFv();
extern "C" void orderAngerEvt__12daNpc_Bans_cFv();
extern "C" void getKMsgTagP__12daNpc_Bans_cFv();
extern "C" void setPrtcls__12daNpc_Bans_cFv();
extern "C" void cutAnger__12daNpc_Bans_cFi();
extern "C" void cutPurchase__12daNpc_Bans_cFi();
extern "C" void wait__12daNpc_Bans_cFPv();
extern "C" void tend__12daNpc_Bans_cFPv();
extern "C" void getDistTable__12dAttention_cFi();
extern "C" void talk__12daNpc_Bans_cFPv();
extern "C" void shop__12daNpc_Bans_cFPv();
extern "C" static void daNpc_Bans_Create__FPv();
extern "C" static void daNpc_Bans_Delete__FPv();
extern "C" static void daNpc_Bans_Execute__FPv();
extern "C" static void daNpc_Bans_Draw__FPv();
extern "C" static bool daNpc_Bans_IsDelete__FPv();
extern "C" void calc__11J3DTexNoAnmCFPUs();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__18daNpcT_ActorMngr_cFv();
extern "C" void __ct__18daNpcT_ActorMngr_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__4cXyzFv();
extern "C" void __dt__5csXyzFv();
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
extern "C" void func_809679D8(void* _this, int*);
extern "C" void func_809679F4(void* _this, u8*);
extern "C" void __sinit_d_a_npc_bans_cpp();
extern "C" void
__ct__12daNpc_Bans_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" u16 getEyeballMaterialNo__12daNpc_Bans_cFv();
extern "C" s32 getHeadJointNo__12daNpc_Bans_cFv();
extern "C" s32 getNeckJointNo__12daNpc_Bans_cFv();
extern "C" bool getBackboneJointNo__12daNpc_Bans_cFv();
extern "C" void checkChangeJoint__12daNpc_Bans_cFi();
extern "C" void checkRemoveJoint__12daNpc_Bans_cFi();
extern "C" void __dt__18daNpc_Bans_Param_cFv();
extern "C" static void func_80967C6C();
extern "C" static void func_80967C74();
extern "C" void
__ct__13dShopSystem_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" bool getResName2__13dShopSystem_cFi();
extern "C" bool beforeStartSeqAction__13dShopSystem_cFP10dMsgFlow_ci();
extern "C" bool beforeSelectSeqAction__13dShopSystem_cFP10dMsgFlow_ci();
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz();
extern "C" u8 const m__18daNpc_Bans_Param_c[144];
extern "C" extern char const* const d_a_npc_bans__stringBase0;
extern "C" void* mCutNameList__12daNpc_Bans_c[4];
extern "C" u8 mCutList__12daNpc_Bans_c[48];

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFRC4cXyz();
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
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void addReal__21dDlst_shadowControl_cFUlP8J3DModel();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWallR__12dBgS_AcchCirFf();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __ct__11dBgS_LinChkFv();
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
extern "C" void checkEndSequence__22daNpcT_MotionSeqMngr_cFv();
extern "C" void initialize__15daNpcT_JntAnm_cFv();
extern "C" void setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz();
extern "C" void calcJntRad__15daNpcT_JntAnm_cFfff();
extern "C" void setParam__19daNpcT_DmgStagger_cFP10fopAc_ac_cP10fopAc_ac_cs();
extern "C" void calc__19daNpcT_DmgStagger_cFi();
extern "C" void tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" void srchActor__8daNpcT_cFPvPv();
extern "C" void getTrnsfrmKeyAnmP__8daNpcT_cFPCci();
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
extern "C" void chkPointInArea__8daNpcT_cF4cXyz4cXyzfffs();
extern "C" void srchPlayerActor__8daNpcT_cFv();
extern "C" void getAttnPos__8daNpcT_cFP10fopAc_ac_c();
extern "C" void step__8daNpcT_cFsiiii();
extern "C" void initTalk__8daNpcT_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci();
extern "C" void getNearestActorP__8daNpcT_cFs();
extern "C" void getEvtAreaTagP__8daNpcT_cFii();
extern "C" void getShopItemTagP__8daNpcT_cFv();
extern "C" void daNpcT_getDistTableIdx__Fii();
extern "C" void daNpcT_chkEvtBit__FUl();
extern "C" void daNpcT_onTmpBit__FUl();
extern "C" void daNpcT_offTmpBit__FUl();
extern "C" void daNpcT_chkTmpBit__FUl();
extern "C" void shop_cam_action_init__16ShopCam_action_cFv();
extern "C" void Save__16ShopCam_action_cFv();
extern "C" void EventRecoverNotime__16ShopCam_action_cFv();
extern "C" void Reset__16ShopCam_action_cFv();
extern "C" void move__16ShopCam_action_cFv();
extern "C" void __ct__15dShopItemCtrl_cFv();
extern "C" void initShopSystem__13dShopSystem_cFv();
extern "C" void __dt__13dShopSystem_cFv();
extern "C" void drawCursor__13dShopSystem_cFv();
extern "C" void itemRotate__13dShopSystem_cFv();
extern "C" void itemZoom__13dShopSystem_cFP4cXyz();
extern "C" void shop_init__13dShopSystem_cFb();
extern "C" void shop_process__13dShopSystem_cFP10fopAc_ac_cP10dMsgFlow_c();
extern "C" void deleteObject__13dShopSystem_cFv();
extern "C" void searchItemActor__13dShopSystem_cFv();
extern "C" void setSellItemMax__13dShopSystem_cFUc();
extern "C" void checkShopOpen__13dShopSystem_cFv();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __ct__10Z2CreatureFv();
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
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_22();
extern "C" void _restgpr_24();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern u8 const __ptmf_null[12 + 4 /* padding */];
extern "C" u8 dist_table__12dAttention_c[6552];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" u8 mCcDCyl__8daNpcT_c[68];
extern "C" extern void* __vt__8daNpcT_c[49];
extern "C" extern void* __vt__15daNpcT_MatAnm_c[4 + 1 /* padding */];
extern "C" extern void* __vt__13dShopSystem_c[52 + 1 /* padding */];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" extern void* __vt__14J3DMaterialAnm[4];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mFindActorPtrs__8daNpcT_c[200];
extern "C" u8 mSrchName__8daNpcT_c[2 + 2 /* padding */];
extern "C" u8 mFindCount__8daNpcT_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz4cXyz();
extern "C" void __register_global_object();
extern "C" void checkStartDemo13StbEvt__11daNpc_Len_cFP10fopAc_ac_cfffffff();

#if DEBUG
#define PARAM mHIO->param
#define PARAM_CLASS daNpc_Bans_HIO_c
class daNpc_Bans_HIO_c : public mDoHIO_entry_c {
public:
    void listenPropertyEvent(const JORPropertyEvent*);
    void genMessage(JORMContext*);

    /* 0x8 */ daNpc_Bans_HIOParam param;
};
#else
#define PARAM daNpc_Bans_Param_c::m
#define PARAM_CLASS daNpc_Bans_Param_c
#endif

void daNpc_Bans_HIO_c::listenPropertyEvent(const JORPropertyEvent* event) {
    char buffer[2000];
    JORReflexible::listenPropertyEvent(event);
    JORFile jorFile;

    switch (reinterpret_cast<u32>(event->id)) {
        case 0x40000002:
            if (jorFile.open(6, "", NULL, NULL, NULL)) {
                memset(buffer, 0, sizeof(buffer));
                int retval = 0;
                daNpcT_cmnListenPropertyEvent(buffer, &retval, &param.common);
                sprintf(&buffer[retval], "%.3ff,\t//  走り速度\n", param.run_spd);
                retval = strlen(buffer);
                jorFile.writeData(buffer, retval);
                jorFile.close();
                OS_REPORT("write append success!::%6d\n", retval);
            } else {
                OS_REPORT("write append failure!\n");
            }
            break;
    }
}

void daNpc_Bans_HIO_c::genMessage(JORMContext* ctx) {
    daNpcT_cmnGenMessage(ctx, &param.common);
    ctx->genSlider("走り速度        ", &param.run_spd, 0.0f, 32.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genButton("ファイル書き出し", 0x40000002, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
}

/* ############################################################################################## */
/* 80967F6C-80967F6C 00014C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80967F6C = "";
SECTION_DEAD static char const* const stringBase_80967F6D = "DEFAULT_GETITEM";
SECTION_DEAD static char const* const stringBase_80967F7D = "NO_RESPONSE";
SECTION_DEAD static char const* const stringBase_80967F89 = "DEMO13_STB";
SECTION_DEAD static char const* const stringBase_80967F94 = "ANGER";
SECTION_DEAD static char const* const stringBase_80967F9A = "ANGER2";
SECTION_DEAD static char const* const stringBase_80967FA1 = "ANGER_NEAR";
SECTION_DEAD static char const* const stringBase_80967FAC = "ANGER_NEAR2";
SECTION_DEAD static char const* const stringBase_80967FB8 = "GOBACK";
SECTION_DEAD static char const* const stringBase_80967FBF = "Bans";
SECTION_DEAD static char const* const stringBase_80967FC4 = "Bans_TW";
SECTION_DEAD static char const* const stringBase_80967FCC = "Bans1";
SECTION_DEAD static char const* const stringBase_80967FD2 = "Bans2";
SECTION_DEAD static char const* const stringBase_80967FD8 = "Len1";
SECTION_DEAD static char const* const stringBase_80967FDD = "PURCHASE";
SECTION_DEAD static char const* const stringBase_80967FE6 = "GO_BACK";
#pragma pop

/* 80968020-80968040 000020 0020+00 1/1 0/0 0/0 .data            l_bmdData */
static int l_bmdData[4][2] = {
    {0xC, 1},
    {7, 2},
    {0xE, 4},
    {0xF, 4},
};

/* 80968040-80968088 -00001 0048+00 0/1 0/0 0/0 .data            l_evtList */
static daNpcT_evtData_c l_evtList[9] = {
    {"", 0},
    {"DEFAULT_GETITEM", 0},
    {"NO_RESPONSE", 0},
    {"DEMO13_STB", 0},
    {"ANGER", 3},
    {"ANGER2", 4},
    {"ANGER_NEAR", 3},
    {"ANGER_NEAR2", 4},
    {"GOBACK", 3},
};

/* 80968088-809680A0 -00001 0018+00 3/4 0/0 0/0 .data            l_resNameList */
static char* l_resNameList[6] = {
    "",
    "Bans",
    "Bans_TW",
    "Bans1",
    "Bans2",
    "Len1",
};

/* 809680A0-809680A4 0000A0 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn0 */
static s8 l_loadResPtrn0[3] = {
    1, 3, -1,
};

/* 809680A4-809680A8 0000A4 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn1 */
static s8 l_loadResPtrn1[3] = {
    1, 4, -1,
};

/* 809680A8-809680AC 0000A8 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn2 */
static s8 l_loadResPtrn2[2] = {
    2, -1,
};

/* 809680AC-809680B0 0000AC 0004+00 1/0 0/0 0/0 .data            l_loadResPtrn3 */
static s8 l_loadResPtrn3[4] = {
    1, 3, 4, -1,
};

/* 809680B0-809680B8 0000B0 0005+03 1/0 0/0 0/0 .data            l_loadResPtrn4 */
static s8 l_loadResPtrn4[5] = {
    1, 2, 3, 4, -1,
};

/* 809680B8-809680D0 -00001 0018+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
static s8* l_loadResPtrnList[6] = {
    l_loadResPtrn3, l_loadResPtrn2, l_loadResPtrn1,
    l_loadResPtrn1, l_loadResPtrn0, l_loadResPtrn4,
};

/* 809680D0-8096815C 0000D0 008C+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
static daNpcT_faceMotionAnmData_c l_faceMotionAnmData[5] = {
    {-1, J3DFrameCtrl::EMode_NONE, 0, 0x12, J3DFrameCtrl::EMode_LOOP, 1, TRUE},
    {-1, J3DFrameCtrl::EMode_NONE, 0, -1, J3DFrameCtrl::EMode_NONE, 0, FALSE},
    {6, J3DFrameCtrl::EMode_NONE, 1, 0x12, J3DFrameCtrl::EMode_LOOP, 1, TRUE},
    {7, J3DFrameCtrl::EMode_NONE, 1, 0x12, J3DFrameCtrl::EMode_LOOP, 1, TRUE},
    {8, J3DFrameCtrl::EMode_LOOP, 1, 0x12, J3DFrameCtrl::EMode_LOOP, 1, TRUE},
};

/* 8096815C-8096838C 00015C 0230+00 0/1 0/0 0/0 .data            l_motionAnmData */
static daNpcT_motionAnmData_c l_motionAnmData[20] = {
    {0x9, J3DFrameCtrl::EMode_LOOP, 1, 0xF, J3DFrameCtrl::EMode_NONE, 1, 1, 0},
    {0xE, J3DFrameCtrl::EMode_LOOP, 3, 0xF, J3DFrameCtrl::EMode_NONE, 1, 1, 0},
    {0xF, J3DFrameCtrl::EMode_LOOP, 3, 0xF, J3DFrameCtrl::EMode_NONE, 1, 1, 0},
    {0x10, J3DFrameCtrl::EMode_LOOP, 3, 0xF, J3DFrameCtrl::EMode_NONE, 1, 1, 0},
    {0x4, J3DFrameCtrl::EMode_LOOP, 2, -1, J3DFrameCtrl::EMode_NONE, 0, 0, 0},
    {0x6, J3DFrameCtrl::EMode_NONE, 3, 0xF, J3DFrameCtrl::EMode_NONE, 1, 0, 0},
    {0x7, J3DFrameCtrl::EMode_NONE, 3, 0xF, J3DFrameCtrl::EMode_NONE, 1, 0, 0},
    {0x4, J3DFrameCtrl::EMode_NONE, 3, 0xF, J3DFrameCtrl::EMode_NONE, 1, 0, 0},
    {0x5, J3DFrameCtrl::EMode_NONE, 3, 0xF, J3DFrameCtrl::EMode_NONE, 1, 0, 0},
    {0x5, J3DFrameCtrl::EMode_NONE, 4, 0xF, J3DFrameCtrl::EMode_NONE, 1, 0, 0},
    {0xA, J3DFrameCtrl::EMode_NONE, 3, 0xF, J3DFrameCtrl::EMode_NONE, 1, 0, 0},
    {0xB, J3DFrameCtrl::EMode_NONE, 3, 0xF, J3DFrameCtrl::EMode_NONE, 1, 0, 0},
    {0xC, J3DFrameCtrl::EMode_NONE, 3, 0xF, J3DFrameCtrl::EMode_NONE, 1, 0, 0},
    {0xD, J3DFrameCtrl::EMode_NONE, 3, 0xF, J3DFrameCtrl::EMode_NONE, 1, 0, 0},
    {0x8, J3DFrameCtrl::EMode_NONE, 3, 0xF, J3DFrameCtrl::EMode_NONE, 1, 0, 0},
    {0x9, J3DFrameCtrl::EMode_NONE, 3, 0xF, J3DFrameCtrl::EMode_NONE, 1, 0, 0},
    {0xB, J3DFrameCtrl::EMode_LOOP, 4, 0xF, J3DFrameCtrl::EMode_NONE, 1, 0, 0},
    {0x7, J3DFrameCtrl::EMode_LOOP, 4, 0xF, J3DFrameCtrl::EMode_NONE, 1, 0, 0},
    {0x8, J3DFrameCtrl::EMode_LOOP, 4, 0xF, J3DFrameCtrl::EMode_NONE, 1, 0, 0},
    {0x6, J3DFrameCtrl::EMode_LOOP, 4, 0xF, J3DFrameCtrl::EMode_NONE, 1, 0, 0},
};

/* 8096838C-809683DC 00038C 0050+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_faceMotionSequenceData[20] = {
    {2, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {3, -1, 1}, {4, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {4, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {1, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
};

/* 809683DC-8096852C 0003DC 0150+00 0/1 0/0 0/0 .data            l_motionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_motionSequenceData[84] = {
    {0, 0xF7, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {1, 0xF7, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {5, 0, 1}, {1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {6, 0, 1}, {0, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {8, 0, 1}, {0, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0xA, 0, 1}, {2, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0xB, -1, 1}, {2, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {2, 0xF7, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {3, 0xF7, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0xC, -1, 1}, {3, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0xD, -1, 1}, {3, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0x10, 0xF7, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0x12, 0xF7, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0x13, 0xF7, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0xD, -1, 1}, {0xC, 0, 1}, {3, 0, 0}, {-1, 0, 0},
    {0x11, 0xF7, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {4, 0xF7, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {7, 0, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0xE, 0, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0xF, 0, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {9, 0, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
};

/* 8096852C-8096853C -00001 0010+00 1/1 0/0 0/0 .data            mCutNameList__12daNpc_Bans_c */
char* daNpc_Bans_c::mCutNameList[4] = {
    "",
    "ANGER",
    "PURCHASE",
    "GO_BACK",
};

/* 80968560-80968590 000560 0030+00 1/2 0/0 0/0 .data            mCutList__12daNpc_Bans_c */
daNpc_Bans_c::cutFunc daNpc_Bans_c::mCutList[4] = {
    NULL,
    &daNpc_Bans_c::cutAnger,
    &daNpc_Bans_c::cutPurchase,
    &daNpc_Bans_c::cutPurchase,
};

/* 80968590-8096859C -00001 000C+00 1/1 0/0 0/0 .data            @4728 */
SECTION_DATA static void* lit_4728[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_Bans_cFPv,
};

/* 8096859C-809685A8 -00001 000C+00 0/1 0/0 0/0 .data            @4816 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4816[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)shop__12daNpc_Bans_cFPv,
};
#pragma pop

/* 809685A8-809685B4 -00001 000C+00 0/1 0/0 0/0 .data            @4823 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4823[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)shop__12daNpc_Bans_cFPv,
};
#pragma pop

/* 809685B4-809685C0 -00001 000C+00 0/1 0/0 0/0 .data            @4826 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4826[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_Bans_cFPv,
};
#pragma pop

/* 809685C0-809685CC -00001 000C+00 0/1 0/0 0/0 .data            @4831 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4831[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_Bans_cFPv,
};
#pragma pop

/* 809685CC-8096866C 0005CC 00A0+00 1/1 0/0 0/0 .data            scoopAnmData$5227 */
static int scoopAnmData[20][2] = {
    {-1, 0},
    {-1, 0},
    {-1, 0},
    {-1, 0},
    {-1, 0},
    {-1, 0},
    {-1, 0},
    {-1, 0},
    {-1, 0},
    {-1, 0},
    {-1, 0},
    {-1, 0},
    {-1, 0},
    {-1, 0},
    {-1, 0},
    {-1, 0},
    {9, 4},
    {0xA, 4},
    {-1, 0},
    {-1, 0},
};

/* 8096866C-80968678 -00001 000C+00 1/1 0/0 0/0 .data            @5249 */
SECTION_DATA static void* lit_5249[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)tend__12daNpc_Bans_cFPv,
};

/* 80968678-80968684 -00001 000C+00 1/1 0/0 0/0 .data            @5251 */
SECTION_DATA static void* lit_5251[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__12daNpc_Bans_cFPv,
};

/* 809686D4-809686E0 0006D4 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 809686E0-809686EC 0006E0 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 809686EC-80968710 0006EC 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80967C74,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80967C6C,
};

/* 80968710-8096871C 000710 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 8096871C-80968728 00071C 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80968728-80968734 000728 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80968734-80968740 000734 000C+00 2/2 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80968740-8096874C 000740 000C+00 2/2 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 8096874C-80968758 00074C 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80968758-80968764 000758 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80968764-80968770 000764 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80968770-80968840 000770 00D0+00 2/2 0/0 0/0 .data            __vt__12daNpc_Bans_c */
SECTION_DATA extern void* __vt__12daNpc_Bans_c[52] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daNpc_Bans_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__12daNpc_Bans_cFi,
    (void*)checkRemoveJoint__12daNpc_Bans_cFi,
    (void*)getBackboneJointNo__12daNpc_Bans_cFv,
    (void*)getNeckJointNo__12daNpc_Bans_cFv,
    (void*)getHeadJointNo__12daNpc_Bans_cFv,
    (void*)getFootLJointNo__8daNpcT_cFv,
    (void*)getFootRJointNo__8daNpcT_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__12daNpc_Bans_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__12daNpc_Bans_cFi,
    (void*)setParam__12daNpc_Bans_cFv,
    (void*)checkChangeEvt__12daNpc_Bans_cFv,
    (void*)evtTalk__12daNpc_Bans_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__12daNpc_Bans_cFv,
    (void*)setAfterTalkMotion__12daNpc_Bans_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__12daNpc_Bans_cFv,
    (void*)beforeMove__12daNpc_Bans_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__12daNpc_Bans_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__12daNpc_Bans_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__12daNpc_Bans_cFv,
    (void*)drawOtherMdl__12daNpc_Bans_cFv,
    (void*)drawGhost__8daNpcT_cFv,
    (void*)afterSetFaceMotionAnm__8daNpcT_cFiifi,
    (void*)afterSetMotionAnm__12daNpc_Bans_cFiifi,
    (void*)getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c,
    (void*)getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c,
    (void*)changeAnm__8daNpcT_cFPiPi,
    (void*)changeBck__8daNpcT_cFPiPi,
    (void*)changeBtp__8daNpcT_cFPiPi,
    (void*)changeBtk__8daNpcT_cFPiPi,
    (void*)setMotionAnm__8daNpcT_cFifi,
    (void*)getResName2__13dShopSystem_cFi,
    (void*)beforeStartSeqAction__13dShopSystem_cFP10dMsgFlow_ci,
    (void*)beforeSelectSeqAction__13dShopSystem_cFP10dMsgFlow_ci,
};

/* 809628CC-80962AA0 0000EC 01D4+00 1/0 0/0 0/0 .text            __dt__12daNpc_Bans_cFv */
daNpc_Bans_c::~daNpc_Bans_c() {
    // NONMATCHING
    OS_REPORT("|%06d:%x|daNpc_Bans_c(%d) -> デストラクト\n", g_Counter.mCounter0, this, mType);

    deleteObject();

    if (mpMorf[0] != NULL) {
        mpMorf[0]->stopZelAnime();
    }

    if (field_0xf7c != NULL) {
        field_0xf7c->stopZelAnime();
    }

    #if DEBUG
    if (mHIO != NULL) {
        mHIO->removeHIO();
    }
    #endif

    deleteRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
}

/* 80967E20-80967EB0 000000 0090+00 12/12 0/0 0/0 .rodata          m__18daNpc_Bans_Param_c */
daNpc_Bans_HIOParam const daNpc_Bans_Param_c::m = {
    200.0f,
    -3.0f,
    1.0f,
    400.0f,
    255.0f,
    190.0f,
    35.0f,
    30.0f,
    0.0f,
    0.0f,
    10.0f,
    -10.0f,
    30.0f,
    -10.0f,
    45.0f,
    -45.0f,
    0.6f,
    12.0f,
    3,
    6,
    5,
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
    false,
    false,
    4.0f,
    -20.0f,
    0.0f,
    -20.0f,
    20.0f,
    40.0f,
    20.0f,
    110.0f,
    10.0f,
};

/* 80968864-80968868 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static PARAM_CLASS l_HIO;

/* 80962AA0-80962D6C 0002C0 02CC+00 1/1 0/0 0/0 .text            create__12daNpc_Bans_cFv */
cPhs__Step daNpc_Bans_c::create() {
    // NONMATCHING
    fopAcM_SetupActor2(this, daNpc_Bans_c, l_faceMotionAnmData, l_motionAnmData,
                       l_faceMotionSequenceData, 4, l_motionSequenceData, 4,
                       l_evtList, l_resNameList);
    mType = getType();
    mFlowNodeNo = getFlowNodeNo();
    mTwilight = dKy_darkworld_check();

    cPhs__Step phase = (cPhs__Step)loadRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
    if (phase == cPhs_COMPLEATE_e) {
        OS_REPORT("\t(%s:%d) flowNo:%d, PathID:%02x, MaxItem:%d, group:%d<%08x> ", fopAcM_getProcNameString(this), mType, mFlowNodeNo,
                  getPathID(), getMaxNumItem(), getGroupId(), fopAcM_GetParam(this));

        if (isDelete()) {
            OS_REPORT("===>isDelete:TRUE\n");
            return cPhs_ERROR_e;
        }

        OS_REPORT("\n");

        static u32 const heapSize[6] = {
            0x6C50, 0x4B40, 0x6C50,
            0x7580, 0x6460, 0x0000,
        };

        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, heapSize[mType])) {
            return cPhs_ERROR_e;
        }

        J3DModelData* modelData = mpMorf[0]->getModel()->getModelData();
        fopAcM_SetMtx(this, mpMorf[0]->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -200.0f, -100.0f, -200.0f, 200.0f, 300.0f, 200.0f);
        mSound.init(&current.pos, &eyePos, 3, 1);

        #if DEBUG
        mHIO = &l_HIO;
        mHIO->entryHIO("バ−ンズ"); // Barnes
        #endif

        reset();

        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
                  fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mCcStts.Init(PARAM.common.weight, 0, this);
        mCyl2.Set(mCcDCyl);
        mCyl2.SetStts(&mCcStts);
        mCyl2.SetTgHitCallback(tgHitCallBack);
        mCyl1.Set(mCcDCyl);
        mCyl1.SetStts(&mCcStts);
        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();

        if (mGroundH != -G_CM3D_F_INF) {
            setEnvTevColor();
            setRoomNo();
        }

        mCreating = true;
        Execute();
        mCreating = false;
    }

    return phase;
}

/* 80962D6C-8096317C 00058C 0410+00 1/1 0/0 0/0 .text            CreateHeap__12daNpc_Bans_cFv */
int daNpc_Bans_c::CreateHeap() {
    // NONMATCHING
    int idx = 0;
    idx = mTwilight == true ? 1 : 0;
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_resNameList[l_bmdData[idx][1]], l_bmdData[idx][0]);
    if (modelData == NULL) {
        return 0;
    }

    mpMorf[0] = new mDoExt_McaMorfSO(modelData, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mSound, idx == 1 ? 0x80000 : 0, 0x11020284);
    if (mpMorf[0] == NULL || mpMorf[0]->getModel() == NULL) {
        return 0;
    }

    J3DModel* model = mpMorf[0]->getModel();
    for (u16 i = 0; i < modelData->getJointNum(); i++) {
        modelData->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
    }
    model->setUserArea((uintptr_t)this);

    mpMatAnm[0] = new daNpcT_MatAnm_c();
    if (mpMatAnm[0] == NULL) {
        return 0;
    }

    if (mType == 3) {
        idx = 2;
        modelData = (J3DModelData*)dComIfG_getObjectRes(l_resNameList[l_bmdData[idx][1]], l_bmdData[idx][0]);
        if (modelData == NULL) {
            return 1;
        }

        field_0xf7c = new mDoExt_McaMorfSO(modelData, NULL, NULL, NULL, -1, 1.0f, 0, -1, NULL, 0x80000, 0x11000084);
        if (field_0xf7c == NULL || field_0xf7c->getModel() == NULL) {
            return 0;
        }
    }

    if (mType == 3) {
        if (l_bmdData[3][0] >= 0) {
            modelData = (J3DModelData*)dComIfG_getObjectRes(l_resNameList[l_bmdData[3][1]], l_bmdData[3][0]);
        } else {
            modelData = NULL;
        }

        if (modelData != NULL) {
            mModel[0] = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
            if (mModel[0] == NULL) {
                return 0;
            }
        }
    }

    if (mTwilight) {
        if (setMotionAnm(4, 0, FALSE)) {
            return 1;
        }

        return 0;
    }

    if (setFaceMotionAnm(2, false) && setMotionAnm(0, 0.0f, FALSE)) {
        return 1;
    }

    return 0;
}

/* 80963338-8096336C 000B58 0034+00 1/1 0/0 0/0 .text            Delete__12daNpc_Bans_cFv */
int daNpc_Bans_c::Delete() {
    OS_REPORT("|%06d:%x|daNpc_Bans_c -> Delete\n", g_Counter.mCounter0, this);
    fpc_ProcID id = fopAcM_GetID(this);
    this->~daNpc_Bans_c();
    return 1;
}

/* 8096336C-80963444 000B8C 00D8+00 2/2 0/0 0/0 .text            Execute__12daNpc_Bans_cFv */
int daNpc_Bans_c::Execute() {
    if (!mCreating && !checkShopOpen() && mType == 4 && field_0x1265 == 0) {
        initShopSystem();
        setSellItemMax(getMaxNumItem());
        field_0xf60 = -1;
        mShopCamAction.setCamDataIdx(0);
        mShopCamAction.setCamAction(NULL);
        field_0x1265 = 1;
    }

    execute();

    if (field_0x1265 != 0 && searchItemActor()) {
        mShopCamAction.move();
    }

    return 1;
}

/* 80963444-809634E0 000C64 009C+00 1/1 0/0 0/0 .text            Draw__12daNpc_Bans_cFv */
int daNpc_Bans_c::Draw() {
    if (mpMatAnm[0] != NULL) {
        J3DModelData* modelData = mpMorf[0]->getModel()->getModelData();
        modelData->getMaterialNodePointer(getEyeballMaterialNo())->setMaterialAnm(mpMatAnm[0]);
    }

    #if DEBUG
    return draw(chkAction(&daNpc_Bans_c::test), !(mTwilight & 0xFF), mRealShadowSize, NULL, 100.0f, FALSE, FALSE, FALSE);
    #else
    return draw(FALSE, !(mTwilight & 0xFF), mRealShadowSize, NULL, 100.0f, FALSE, FALSE, FALSE);
    #endif
}

/* 809634E0-80963500 000D00 0020+00 1/1 0/0 0/0 .text            createHeapCallBack__12daNpc_Bans_cFP10fopAc_ac_c */
int daNpc_Bans_c::createHeapCallBack(fopAc_ac_c* a_this) {
    daNpc_Bans_c* i_this = (daNpc_Bans_c*)a_this;
    return i_this->CreateHeap();
}

/* 80963500-80963558 000D20 0058+00 1/1 0/0 0/0 .text            ctrlJointCallBack__12daNpc_Bans_cFP8J3DJointi */
int daNpc_Bans_c::ctrlJointCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpc_Bans_c* i_this = (daNpc_Bans_c*)model->getUserArea();
        if (i_this != NULL) {
            i_this->ctrlJoint(i_joint, model);
        }
    }

    return 1;
}

/* 80963558-809635BC 000D78 0064+00 1/1 0/0 0/0 .text            getType__12daNpc_Bans_cFv */
u8 daNpc_Bans_c::getType() {
    u8 param = fopAcM_GetParam(this) & 0xFF;
    switch (param) {
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

        default:
            return 5;
    }
}

/* 809635BC-809636C0 000DDC 0104+00 1/1 0/0 0/0 .text            isDelete__12daNpc_Bans_cFv */
BOOL daNpc_Bans_c::isDelete() {
    switch (mType) {
        case 0:
            return !daNpcT_chkEvtBit(61) || // dSv_event_flag_c::M_028 - Cutscene - [cutscene: 14] restore mountain spirit - Reuinion with Colin et al.
                    daNpcT_chkEvtBit(53); // dSv_event_flag_c::M_020 - Cutscene - [cutscene: ] Colin kidnapped : ON once watched

        case 1:
            return FALSE;
        
        case 2:
            return !daNpcT_chkEvtBit(53) || // dSv_event_flag_c::M_020 - Cutscene - [cutscene: ] Colin kidnapped : ON once watched
                   daNpcT_chkEvtBit(85); // dSv_event_flag_c::M_052 - Main Event - Horseback battle clear

        case 3:
            return !daNpcT_chkEvtBit(85) || // dSv_event_flag_c::M_052 - Main Event - Horseback battle clear
                   daNpcT_chkEvtBit(64); // dSv_event_flag_c::M_031 - Goron Mines - Goron Mines clear

        case 4:
            return !daNpcT_chkEvtBit(64); // dSv_event_flag_c::M_031 - Goron Mines - Goron Mines clear

        default:
            return FALSE;
    }
}

/* 809636C0-80963840 000EE0 0180+00 1/1 0/0 0/0 .text            reset__12daNpc_Bans_cFv */
void daNpc_Bans_c::reset() {
    csXyz angle;
    int size = (u8*)&field_0x126c - (u8*)&mNextAction;
    if (mpMatAnm[0] != NULL) {
        mpMatAnm[0]->initialize();
    }
    
    initialize();

    for (int i = 0; i < 8; i++) {
        mActorMngrs[i].initialize();
    }

    memset(&mNextAction, 0, size);

    angle.setall(0);
    angle.y = home.angle.y;

    switch (mType) {
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        default:
            daNpcT_offTmpBit(57); // dSv_event_tmp_flag_c::T_0057 - Kakariko Village (inside) - Barnes bomb shop <purchase>
            setAngle(angle);
    }
}

/* 80963840-809638CC 001060 008C+00 1/0 0/0 0/0 .text            afterJntAnm__12daNpc_Bans_cFi */
void daNpc_Bans_c::afterJntAnm(int param_1) {
    if (param_1 == 1) {
        mDoMtx_stack_c::YrotM(-mStagger.getAngleZ(1));
        mDoMtx_stack_c::ZrotM(mStagger.getAngleX(1));
    } else if (param_1 == 6) {
        mDoMtx_stack_c::YrotM(-mStagger.getAngleZ(0));
        mDoMtx_stack_c::ZrotM(mStagger.getAngleX(0));
    }
}

/* 809638CC-80963A7C 0010EC 01B0+00 1/0 0/0 0/0 .text            setParam__12daNpc_Bans_cFv */
void daNpc_Bans_c::setParam() {
    if (field_0x1264) {
        if (field_0x125c == 2) {
            mShopCamAction.Reset();
        } else {
            mShopCamAction.EventRecoverNotime();
        }

        field_0x1264 = 0;
    }

    selectAction();
    srchActors();

    #if DEBUG
    u32 flags = 0x42;
    #else
    u32 flags = 10;
    #endif
    s16 talk_distance = PARAM.common.talk_distance;
    s16 talk_angle = PARAM.common.talk_angle;
    s16 attention_distance = PARAM.common.attention_distance;
    s16 attention_angle = PARAM.common.attention_angle;

    switch (mType) {
        case 0:
            talk_distance = 5;
            attention_distance = 5;
            break;

        case 1:
            talk_distance = 8;
            break;

        case 2:
            break;

        case 3:
            talk_distance = 4;
            attention_distance = 5;
            break;

        case 4:
            talk_distance = 5;
            attention_distance = 5;

            if (daPy_py_c::checkNowWolf()) {
                flags = 0;
            }
            break;
    }

    attention_info.distances[fopAc_attn_LOCK_e] = daNpcT_getDistTableIdx(attention_distance, attention_angle);
    attention_info.distances[fopAc_attn_TALK_e] = attention_info.distances[fopAc_attn_LOCK_e];
    attention_info.distances[fopAc_attn_SPEAK_e] = daNpcT_getDistTableIdx(talk_distance, talk_angle);
    attention_info.flags = flags;

    scale.set(PARAM.common.scale, PARAM.common.scale, PARAM.common.scale);
    mCcStts.SetWeight(PARAM.common.weight);
    mCylH = PARAM.common.height;
    mWallR = PARAM.common.width;
    mAttnFovY = PARAM.common.fov;
    mAcchCir.SetWallR(mWallR);
    mAcchCir.SetWallH(PARAM.common.knee_length);
    mRealShadowSize = PARAM.common.real_shadow_size;
    mExpressionMorfFrame = PARAM.common.expression_morf_frame;
    mMorfFrames = PARAM.common.morf_frame;
    gravity = PARAM.common.gravity;
}

/* 80963A7C-80963B30 00129C 00B4+00 1/0 0/0 0/0 .text            checkChangeEvt__12daNpc_Bans_cFv */
BOOL daNpc_Bans_c::checkChangeEvt() {
    if (!chkAction(&daNpc_Bans_c::talk)) {
        mPreItemNo = 0;

        if (dComIfGp_event_chkTalkXY()) {
            if (dComIfGp_evmng_ChkPresentEnd()) {
                mEvtNo = 2;
                evtChange();
            }

            return TRUE;
        }

        switch (mType) {
            default:
                break;
        }
    }

    return FALSE;
}

/* 80963B30-80963BA8 001350 0078+00 1/0 0/0 0/0 .text setAfterTalkMotion__12daNpc_Bans_cFv */
void daNpc_Bans_c::setAfterTalkMotion() {
    int motion = 3;

    switch (mFaceMotionSeqMngr.getNo()) {
        case 1:
            motion = 2;
            break;
    }

    mFaceMotionSeqMngr.setNo(motion, -1.0f, FALSE, 0);
}

/* 80963BA8-80963DB0 0013C8 0208+00 1/1 0/0 0/0 .text            srchActors__12daNpc_Bans_cFv */
void daNpc_Bans_c::srchActors() {
    switch (mType) {
        case 0:
            for (int i = 0; i < 2; i++) {
                if (mActorMngrs[i + 5].getActorP() == NULL) {
                    mActorMngrs[i + 5].entry(getEvtAreaTagP(3, i));
                }
            }
            break;
        
        case 1:
            for (int i = 0; i < 2; i++) {
                if (mActorMngrs[i + 5].getActorP() == NULL) {
                    mActorMngrs[i + 5].entry(getEvtAreaTagP(3, i));
                }
            }

            if (mActorMngrs[3].getActorP() == NULL) {
                mActorMngrs[3].entry(getNearestActorP(PROC_NPC_LEN));
            }
            break;

        case 2:
        case 3:
            for (int i = 0; i < 2; i++) {
                if (mActorMngrs[i + 5].getActorP() == NULL) {
                    mActorMngrs[i + 5].entry(getEvtAreaTagP(3, i));
                }
            }
            break;

        case 4:
            for (int i = 0; i < 2; i++) {
                if (mActorMngrs[i + 5].getActorP() == NULL) {
                    mActorMngrs[i + 5].entry(getEvtAreaTagP(3, i));
                }
            }

            if (mActorMngrs[7].getActorP() == NULL) {
                mActorMngrs[7].entry(getKMsgTagP());
            }

            if (mActorMngrs[4].getActorP() == NULL) {
                mActorMngrs[4].entry(getShopItemTagP());
            }
            break;
    }
}

/* 80963DB0-80963EDC 0015D0 012C+00 1/0 0/0 0/0 .text            evtTalk__12daNpc_Bans_cFv */
BOOL daNpc_Bans_c::evtTalk() {
    // NONMATCHING
    if (field_0x1265) {
        if (chkAction(&daNpc_Bans_c::shop)) {
            (this->*mAction)(NULL);
        } else {
            if (!daNpcT_chkTmpBit(57)) { // dSv_event_flag_c::M_024 - Cutscene - [cutscene: 16] take back Colin
                mShopCamAction.shop_cam_action_init();
            }

            setAction(&daNpc_Bans_c::shop);
        }
    } else if (chkAction(&daNpc_Bans_c::talk)) {
        (this->*mAction)(NULL);
    } else {
        setAction(&daNpc_Bans_c::talk);
    }

    return TRUE;
}

/* 80963EDC-80963FA4 0016FC 00C8+00 1/0 0/0 0/0 .text            evtCutProc__12daNpc_Bans_cFv */
BOOL daNpc_Bans_c::evtCutProc() {
    // NONMATCHING
    s32 staffId = dComIfGp_getEventManager().getMyStaffId("Bans", this, -1);
    if (staffId != -1) {
        mStaffId = staffId;
        int actIdx = dComIfGp_getEventManager().getMyActIdx(mStaffId, mCutNameList, 4, FALSE, FALSE);
        if ((this->*mCutList[actIdx])(mStaffId)) {
            dComIfGp_getEventManager().cutEnd(mStaffId);
        }

        return TRUE;
    }

    return FALSE;
}

/* 80963FA4-80964148 0017C4 01A4+00 1/0 0/0 0/0 .text            action__12daNpc_Bans_cFv */
void daNpc_Bans_c::action() {
    fopAc_ac_c* actor = NULL;
    if (!mTwilight) {
        actor = hitChk(&mCyl2, 0xFFFFFFFF);
    }

    if (actor != NULL) {
        if (mCyl2.GetTgHitObj()->ChkAtType(AT_TYPE_THROW_OBJ)) {
            mStagger.setParam(this, actor, mCurAngle.y);
            setDamage(0, 3, 0);
            mDamageTimerStart = 0;
            mJntAnm.lookNone(1);
        }
    }

    if (mStagger.checkRebirth()) {
        mStagger.initialize();
        mMode = 1;
    }

    if (mNextAction) {
        if (mAction == mNextAction) {
            (this->*mAction)(NULL);
        } else {
            setAction(mNextAction);
        }
    }
}

/* 80964148-80964228 001968 00E0+00 1/0 0/0 0/0 .text            beforeMove__12daNpc_Bans_cFv */
void daNpc_Bans_c::beforeMove() {
    fopAcM_OffStatus(this, fopAcM_STATUS_UNK_0x8000000);

    if (checkHide()) {
        fopAcM_OnStatus(this, fopAcM_STATUS_UNK_0x8000000);
    }

    if (checkPlayerIn2ndFloorOfBombShop()) {
        attention_info.flags = 0;
    } else if (checkHide() || mNoDraw) {
        attention_info.flags = 0;
    }
}

/* ############################################################################################## */
/* 80967F04-80967F08 0000E4 0004+00 0/1 0/0 0/0 .rodata          @5033 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5033 = 15.0f;
COMPILER_STRIP_GATE(0x80967F04, &lit_5033);
#pragma pop

/* 80967F08-80967F0C 0000E8 0004+00 0/1 0/0 0/0 .rodata          @5034 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5034 = 30.0f;
COMPILER_STRIP_GATE(0x80967F08, &lit_5034);
#pragma pop

/* 80967F0C-80967F10 0000EC 0004+00 0/1 0/0 0/0 .rodata          @5035 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5035 = 0x38C90FDB;
COMPILER_STRIP_GATE(0x80967F0C, &lit_5035);
#pragma pop

/* 80967F10-80967F14 0000F0 0004+00 0/2 0/0 0/0 .rodata          @5036 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5036 = 8.0f;
COMPILER_STRIP_GATE(0x80967F10, &lit_5036);
#pragma pop

/* 80967F14-80967F18 0000F4 0004+00 0/1 0/0 0/0 .rodata          @5037 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5037 = 34.0f;
COMPILER_STRIP_GATE(0x80967F14, &lit_5037);
#pragma pop

/* 80967F18-80967F1C 0000F8 0004+00 0/1 0/0 0/0 .rodata          @5038 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5038 = 180.0f;
COMPILER_STRIP_GATE(0x80967F18, &lit_5038);
#pragma pop

/* 80967F1C-80967F20 0000FC 0004+00 0/2 0/0 0/0 .rodata          @5039 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5039 = 10.0f;
COMPILER_STRIP_GATE(0x80967F1C, &lit_5039);
#pragma pop

/* 80967F20-80967F28 000100 0004+04 0/1 0/0 0/0 .rodata          @5040 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5040[1 + 1 /* padding */] = {
    70.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80967F20, &lit_5040);
#pragma pop

/* 80967F28-80967F30 000108 0008+00 1/3 0/0 0/0 .rodata          @5042 */
SECTION_RODATA static u8 const lit_5042[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80967F28, &lit_5042);

/* 80964228-809646E0 001A48 04B8+00 1/0 0/0 0/0 .text            setAttnPos__12daNpc_Bans_cFv */
void daNpc_Bans_c::setAttnPos() {
    // NONMATCHING
    cXyz sp70(15.0f, 30.0f, 0.0f);
    cXyz sp7c(15.0f, 0.0f, 0.0f);

    if (field_0x1267) {
        daPy_getPlayerActorClass()->onWolfEyeKeep();
    }

    mStagger.calc(FALSE);
    f32 rad = cM_s2rad((s16)(mCurAngle.y - field_0xd7e.y));

    if (mType == 0) {
        mJntAnm.setParam(this, mpMorf[0]->getModel(), &sp70, getBackboneJointNo(), getNeckJointNo(), getHeadJointNo(), 0.0f, 0.0f, 0.0f, 0.0f,
                         PARAM.common.head_angleX_min, PARAM.common.head_angleX_max, PARAM.common.head_angleY_min, PARAM.common.head_angleY_max,
                         PARAM.common.neck_rotation_ratio, rad, &sp7c);
    } else {
        mJntAnm.setParam(this, mpMorf[0]->getModel(), &sp70, getBackboneJointNo(), getNeckJointNo(), getHeadJointNo(),
                         PARAM.common.body_angleX_min, PARAM.common.body_angleX_max, PARAM.common.body_angleY_min, PARAM.common.body_angleY_max,
                         PARAM.common.head_angleX_min, PARAM.common.head_angleX_max, PARAM.common.head_angleY_min, PARAM.common.head_angleY_max,
                         PARAM.common.neck_rotation_ratio, rad, &sp7c);
    }

    mJntAnm.calcJntRad(0.2f, 1.0f, rad);
    setMtx();

    if (field_0xf7c != NULL) {
        if (mMotionSeqMngr.getNo() == 11) {
            if (mpMorf[0]->checkFrame(8.0f)) {
                mDoAud_seStart(Z2SE_BANS_SHOVEL, &current.pos, 0, 0);
            }

            if (mpMorf[0]->checkFrame(34.0f)) {
                mDoAud_seStart(Z2SE_BANS_SHOVEL2, &current.pos, 0, 0);
            }
        }

        field_0xf7c->play(0, 0);

        mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(0x15));
        Mtx mtx;

        #if DEBUG
        cMtx_copy(mDoMtx_stack_c::get(), mtx);
        #else
        MTXCopy(mDoMtx_stack_c::get(), mtx);
        #endif

        field_0xf7c->getModel()->setBaseTRMtx(mtx);
        field_0xf7c->modelCalc();
    }

    mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(getHeadJointNo()));
    mDoMtx_stack_c::multVec(&sp70, &eyePos);
    mJntAnm.setEyeAngleX(eyePos, 1.0f, 0);
    mJntAnm.setEyeAngleY(eyePos, mCurAngle.y, FALSE, 1.0f, 0);

    sp70.set(0.0f, 0.0f, 0.0f);
    sp70.y = PARAM.common.attention_offset;

    if (mType == 1) {
        sp70.set(30.0f, 180.0f, 10.0f);
    } else {
        if (mMotionSeqMngr.getNo() == 0xC) {
            sp70.set(0.0f, 180.0f, 70.0f);
        }
    }

    mDoMtx_stack_c::YrotS(mCurAngle.y);
    mDoMtx_stack_c::multVec(&sp70, &sp70);
    attention_info.position = sp70 + current.pos;
}

/* ############################################################################################## */
/* 80967F30-80967F38 000110 0008+00 0/1 0/0 0/0 .rodata          @5100 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5100[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80967F30, &lit_5100);
#pragma pop

/* 80967F38-80967F40 000118 0008+00 0/1 0/0 0/0 .rodata          @5101 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5101[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80967F38, &lit_5101);
#pragma pop

/* 80967F40-80967F48 000120 0008+00 0/1 0/0 0/0 .rodata          @5102 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5102[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80967F40, &lit_5102);
#pragma pop

/* 80967F48-80967F4C 000128 0004+00 0/1 0/0 0/0 .rodata          @5164 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5164 = 50.0f;
COMPILER_STRIP_GATE(0x80967F48, &lit_5164);
#pragma pop

/* 80967F4C-80967F50 00012C 0004+00 0/1 0/0 0/0 .rodata          @5165 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5165 = -60.0f;
COMPILER_STRIP_GATE(0x80967F4C, &lit_5165);
#pragma pop

/* 80967F50-80967F54 000130 0004+00 0/1 0/0 0/0 .rodata          @5166 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5166 = 40.0f;
COMPILER_STRIP_GATE(0x80967F50, &lit_5166);
#pragma pop

/* 80967F54-80967F58 000134 0004+00 0/1 0/0 0/0 .rodata          @5167 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5167 = 110.0f;
COMPILER_STRIP_GATE(0x80967F54, &lit_5167);
#pragma pop

/* 809646E0-80964994 001F00 02B4+00 1/0 0/0 0/0 .text            setCollision__12daNpc_Bans_cFv */
void daNpc_Bans_c::setCollision() {
    // NONMATCHING
    cXyz pos;

    if (!mHide) {
        u32 coSPrm = 0x79;
        u32 tgType = 0xD8FBFDFF;
        u32 tgSPrm = 0x1F;

        if (mTwilight) {
            tgType = 0;
            tgSPrm = 0;
        } else {
            if (mStagger.checkStagger()) {
                tgType = 0;
                tgSPrm = 0;
            }
        }

        f32 height, width;
        if (mType != 0 && mType != 4) {
            mCyl2.SetCoSPrm(coSPrm);
            mCyl2.SetTgType(tgType);
            mCyl2.SetTgSPrm(tgSPrm);
            mCyl2.OnTgNoHitMark();
            pos.set(0.0f, 0.0f, 10.0f);
            height = mCylH;
            width = mWallR;

            if (mType == 1) {
                pos.set(0.0f, 0.0f, 0.0f);
                height = mCylH;
                width = 50.0f;
            }

            mDoMtx_stack_c::YrotS(mCurAngle.y);
            mDoMtx_stack_c::multVec(&pos, &pos);
            pos += current.pos;
            mCyl2.SetH(height);
            mCyl2.SetR(width);
            mCyl2.SetC(pos);
            dComIfG_Ccsp()->Set(&mCyl2);
        }

        if (mType == 2) {
            pos.set(0.0f, 0.0f, -60.0f);
            height = mCylH;
            width = 100.0f;
            mDoMtx_stack_c::YrotS(mCurAngle.y);
            mDoMtx_stack_c::multVec(&pos, &pos);
            pos += current.pos;
            mCyl1.SetH(height);
            mCyl1.SetR(width);
            mCyl1.SetC(pos);
            dComIfG_Ccsp()->Set(&mCyl1);
        }

        if (mType == 3) {
            pos.set(0.0f, 0.0f, 50.0f);
            height = 40.0f;
            width = 110.0f;
            mDoMtx_stack_c::YrotS(mCurAngle.y);
            mDoMtx_stack_c::multVec(&pos, &pos);
            pos += current.pos;
            mCyl1.SetH(height);
            mCyl1.SetR(width);
            mCyl1.SetC(pos);
            dComIfG_Ccsp()->Set(&mCyl1);
        }
    }

    mCyl2.ClrCoHit();
    mCyl2.ClrTgHit();
}

/* 80964994-8096499C 0021B4 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__12daNpc_Bans_cFv */
int daNpc_Bans_c::drawDbgInfo() {
    #if DEBUG
    if (PARAM.common.debug_info_ON) {
        f32 dist_max_speak = dComIfGp_getAttention()->getDistTable(attention_info.distances[fopAc_attn_SPEAK_e]).mDistMax;
        f32 dist_max_talk = dComIfGp_getAttention()->getDistTable(attention_info.distances[fopAc_attn_TALK_e]).mDistMax;
        dDbVw_drawCircleOpa(attention_info.position, dist_max_speak, (GXColor){0x00, 0xC8, 0x00, 0xFF}, 1, 12);
        dDbVw_drawCircleOpa(attention_info.position, dist_max_talk, (GXColor){0xC8, 0x00, 0x00, 0xFF}, 1, 12);
        dDbVw_drawSphereXlu(eyePos, 18.0f, (GXColor){0x80, 0x80, 0x80, 0xA0}, 1);
        dDbVw_drawSphereXlu(eyePos, 9.0f, (GXColor){0x80, 0x80, 0x80, 0xA0}, 1);
    }
    #endif
    
    return 0;
}

/* 8096499C-80964AD8 0021BC 013C+00 1/0 0/0 0/0 .text            drawOtherMdl__12daNpc_Bans_cFv */
void daNpc_Bans_c::drawOtherMdl() {
    // NONMATCHING
    for (int i = 0; i < 1; i++) {
        if (mModel[i] != NULL && i == 0 && mType == 3) {
            g_env_light.setLightTevColorType_MAJI(mModel[i], &tevStr);
            mDoMtx_stack_c::transS(current.pos);
            mDoMtx_stack_c::YrotM(home.angle.y);
            mDoMtx_stack_c::scaleM(scale);
            mModel[i]->setBaseTRMtx(mDoMtx_stack_c::get());
            mDoExt_modelUpdateDL(mModel[i]);
            dComIfGd_addRealShadow(mShadowKey, mModel[i]);
        }
    }

    if (field_0xf7c != NULL) {
        g_env_light.setLightTevColorType_MAJI(field_0xf7c->getModel(), &tevStr);
        field_0xf7c->entryDL();dComIfGd_addRealShadow(mShadowKey, field_0xf7c->getModel());
    }

    if (field_0x1265) {
        cXyz pos;
        itemRotate();
        pos.set(0.0f, 0.0f, 0.0f);
        itemZoom(&pos);
        drawCursor();
    }
}

/* 80964AD8-80964B9C 0022F8 00C4+00 1/1 0/0 0/0 .text            setScoopAnm__12daNpc_Bans_cFiif */
bool daNpc_Bans_c::setScoopAnm(int i_idx, int i_attr, f32 i_morf) {
    // NONMATCHING
    J3DAnmTransform* anm = NULL;

    if (field_0xf7c != NULL) {
        if (scoopAnmData[i_idx][0] > 0) {
            anm = getTrnsfrmKeyAnmP(l_resNameList[scoopAnmData[i_idx][1]], scoopAnmData[i_idx][0]);
        }

        if (anm != NULL) {
            field_0xf7c->setAnm(anm, i_attr, i_morf, 1.0f, 0.0f, -1.0f);
        }
    }

    return 1;
}

/* 80964B9C-80964BD0 0023BC 0034+00 1/0 0/0 0/0 .text afterSetMotionAnm__12daNpc_Bans_cFiifi */
bool daNpc_Bans_c::afterSetMotionAnm(int i_idx, int i_attr, f32 i_morf, int param_4) {
    // NONMATCHING
    if (mCreating == true) {
        i_morf = 0.0f;
    }

    return setScoopAnm(i_idx, i_attr, i_morf);
}

/* 80964BD0-80964C4C 0023F0 007C+00 1/1 0/0 0/0 .text            selectAction__12daNpc_Bans_cFv */
BOOL daNpc_Bans_c::selectAction() {
    // NONMATCHING
    mNextAction = NULL;

    if (PARAM.common.debug_mode_ON) {
        mNextAction = &daNpc_Bans_c::test;
        return TRUE;
    }
    
    switch (mType) {
        case 4:
            mNextAction = &daNpc_Bans_c::tend;
            break;
        
        default:
            mNextAction = &daNpc_Bans_c::wait;
            break;
    }

    return TRUE;
}

/* 80964C4C-80964C78 00246C 002C+00 2/2 0/0 0/0 .text            chkAction__12daNpc_Bans_cFM12daNpc_Bans_cFPCvPvPv_i */
BOOL daNpc_Bans_c::chkAction(actionFunc action) {
    return mAction == action;
}

/* 80964C78-80964D20 002498 00A8+00 2/2 0/0 0/0 .text            setAction__12daNpc_Bans_cFM12daNpc_Bans_cFPCvPvPv_i */
BOOL daNpc_Bans_c::setAction(actionFunc action) {
    mMode = MODE_EXIT;
    if (mAction != NULL) {
        (this->*(mAction))(NULL);
    }

    mMode = MODE_ENTER;
    mAction = action;
    if (mAction != NULL) {
        (this->*(mAction))(NULL);
    }

    return 1;
}

/* 80964D20-80964DD0 002540 00B0+00 1/1 0/0 0/0 .text            checkPlayerIn2ndFloorOfBombShop__12daNpc_Bans_cFv */
BOOL daNpc_Bans_c::checkPlayerIn2ndFloorOfBombShop() {
    BOOL rv = FALSE;
    BOOL bVar1 = FALSE;

    if (strcmp("R_SP109", dComIfGp_getStartStageName()) == 0 && dComIfGp_roomControl_getStayNo() == 1) {
        bVar1 = TRUE;

    }

    if (bVar1) {
        if (300.0f < fabsf(daPy_getPlayerActorClass()->current.pos.y - current.pos.y)) {
            rv = TRUE;
        }
    }

    return rv;
}

/* 80964DD0-80964EB0 0025F0 00E0+00 2/2 0/0 0/0 .text            orderAngerEvt__12daNpc_Bans_cFv */
void daNpc_Bans_c::orderAngerEvt() {
    // NONMATCHING
    daPy_py_c* player = daPy_getPlayerActorClass();

    if (player->checkUseKandelaar(0) && player->getKandelaarFlamePos() != NULL) {
        mEvtNo = 4;

        for (int i = 0; i < 2; i++) {
            daTag_EvtArea_c* actor = (daTag_EvtArea_c*)mActorMngrs[i + 5].getActorP();
            bool bVar1 = false;
            bool bVar2 = false;

            if (actor != NULL) {
                cXyz pos(player->current.pos);
                bVar1 = true;
                if (actor->chkPointInArea(pos)) {
                    mEvtNo = 6;
                }
                break;
            }
        }
    }
}

/* 80964EB0-80964F48 0026D0 0098+00 1/1 0/0 0/0 .text            getKMsgTagP__12daNpc_Bans_cFv */
fopAc_ac_c* daNpc_Bans_c::getKMsgTagP() {
    // NONMATCHING
    fopAc_ac_c* rv = NULL;
    f32 fVar1 = 1000000000.0f;
    mFindCount = 0;
    mSrchName = PROC_TAG_KMSG;
    fopAcM_Search(srchActor, this);
    int i = 0;

    for (; i < mFindCount; i++) {
        if (((daTag_KMsg_c*)mFindActorPtrs[i])->getType() == 1) {
            rv = mFindActorPtrs[i];
            break;
        }
    }

    return NULL;
}

/* 80964F48-80964FEC 002768 00A4+00 1/1 0/0 0/0 .text            setPrtcls__12daNpc_Bans_cFv */
void daNpc_Bans_c::setPrtcls() {
    static u16 const id[8] = {
        0x862C, 0x86A3, 0x862D, 0x862E,
    };

    for (int i = 0; i < 4; i++) {
        dComIfGp_particle_set(id[i], &daPy_getPlayerActorClass()->current.pos, NULL, NULL);
    }
}

/* ############################################################################################## */
/* 80967F60-80967F64 000140 0004+00 0/1 0/0 0/0 .rodata          @5654 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5654 = 450.0f;
COMPILER_STRIP_GATE(0x80967F60, &lit_5654);
#pragma pop

/* 80967F64-80967F68 000144 0004+00 0/1 0/0 0/0 .rodata          @5655 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5655 = 16.0f;
COMPILER_STRIP_GATE(0x80967F64, &lit_5655);
#pragma pop

/* 80967F68-80967F6C 000148 0004+00 0/1 0/0 0/0 .rodata          @5656 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5656 = 9.0f;
COMPILER_STRIP_GATE(0x80967F68, &lit_5656);
#pragma pop

/* 80967F6C-80967F6C 00014C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80967FF6 = "prm";
SECTION_DEAD static char const* const stringBase_80967FFA = "timer";
#pragma pop

/* 80964FEC-809658F8 00280C 090C+00 1/0 0/0 0/0 .text            cutAnger__12daNpc_Bans_cFi */
int daNpc_Bans_c::cutAnger(int param_0) {
    // NONMATCHING
}

/* 809658F8-80965CCC 003118 03D4+00 2/0 0/0 0/0 .text            cutPurchase__12daNpc_Bans_cFi */
int daNpc_Bans_c::cutPurchase(int param_0) {
    // NONMATCHING
}

/* 80965CCC-809661F0 0034EC 0524+00 1/0 0/0 0/0 .text            wait__12daNpc_Bans_cFPv */
int daNpc_Bans_c::wait(void* param_0) {
    // NONMATCHING
}

/* 809661F0-80966874 003A10 0684+00 1/0 0/0 0/0 .text            tend__12daNpc_Bans_cFPv */
int daNpc_Bans_c::tend(void* param_0) {
    // NONMATCHING
}

/* 80966874-80966888 004094 0014+00 1/1 0/0 0/0 .text            getDistTable__12dAttention_cFi */
// void dAttention_c::getDistTable(int param_0) {
extern "C" void getDistTable__12dAttention_cFi() {
    // NONMATCHING
}

/* 80966888-80966B24 0040A8 029C+00 3/0 0/0 0/0 .text            talk__12daNpc_Bans_cFPv */
int daNpc_Bans_c::talk(void* param_0) {
    // NONMATCHING
}

/* 80966B24-80966C88 004344 0164+00 2/0 0/0 0/0 .text            shop__12daNpc_Bans_cFPv */
int daNpc_Bans_c::shop(void* param_0) {
    // NONMATCHING
}

int daNpc_Bans_c::test(void* param_1) {

}

/* 80966C88-80966CA8 0044A8 0020+00 1/0 0/0 0/0 .text            daNpc_Bans_Create__FPv */
static void daNpc_Bans_Create(void* param_0) {
    // NONMATCHING
}

/* 80966CA8-80966CC8 0044C8 0020+00 1/0 0/0 0/0 .text            daNpc_Bans_Delete__FPv */
static void daNpc_Bans_Delete(void* param_0) {
    // NONMATCHING
}

/* 80966CC8-80966CE8 0044E8 0020+00 1/0 0/0 0/0 .text            daNpc_Bans_Execute__FPv */
static void daNpc_Bans_Execute(void* param_0) {
    // NONMATCHING
}

/* 80966CE8-80966D08 004508 0020+00 1/0 0/0 0/0 .text            daNpc_Bans_Draw__FPv */
static void daNpc_Bans_Draw(void* param_0) {
    // NONMATCHING
}

/* 80966D08-80966D10 004528 0008+00 1/0 0/0 0/0 .text            daNpc_Bans_IsDelete__FPv */
static bool daNpc_Bans_IsDelete(void* param_0) {
    return true;
}

/* 80966D10-80966D40 004530 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 80966D40-80966D88 004560 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80966D88-80966DD0 0045A8 0048+00 3/2 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80966DD0-80966E0C 0045F0 003C+00 1/1 0/0 0/0 .text            __ct__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::daNpcT_ActorMngr_c() {
extern "C" void __ct__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80966E0C-80966E54 00462C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80966E54-80966E9C 004674 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80966E9C-80966ED8 0046BC 003C+00 2/2 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80966ED8-80966F14 0046F8 003C+00 1/1 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80966F14-80967318 004734 0404+00 1/1 0/0 0/0 .text
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

/* 80967318-8096731C 004B38 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 8096731C-80967418 004B3C 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 80967418-8096741C 004C38 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 8096741C-80967464 004C3C 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 80967464-809674D4 004C84 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 809674D4-80967530 004CF4 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80967530-809675A0 004D50 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 809675A0-809675E8 004DC0 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 809675E8-80967704 004E08 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* 80967704-8096790C 004F24 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 8096790C-80967910 00512C 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 80967920-80967928 005140 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80967928-80967930 005148 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80967930-80967938 005150 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 8096793C-80967944 00515C 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 80967944-8096795C 005164 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 8096795C-80967960 00517C 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 80967960-80967968 005180 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80967968-80967998 005188 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 80967998-809679C8 0051B8 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 809679C8-809679CC 0051E8 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 809679CC-809679D0 0051EC 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 809679D0-809679D4 0051F0 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 809679D4-809679D8 0051F4 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 809679D8-809679F4 0051F8 001C+00 2/2 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_809679D8(void* _this, int* param_0) {
    // NONMATCHING
}

/* 809679F4-80967A10 005214 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<Uc>__FPUc */
extern "C" void func_809679F4(void* _this, u8* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80968840-8096884C 000840 000C+00 2/2 0/0 0/0 .data            __vt__18daNpc_Bans_Param_c */
SECTION_DATA extern void* __vt__18daNpc_Bans_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpc_Bans_Param_cFv,
};

// /* 80968858-80968864 000008 000C+00 1/1 0/0 0/0 .bss             @3873 */
// static u8 lit_3873[12];

/* 80967A10-80967AC4 005230 00B4+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_bans_cpp */
void __sinit_d_a_npc_bans_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80967A10, __sinit_d_a_npc_bans_cpp);
#pragma pop

// /* 80967AC4-80967BE4 0052E4 0120+00 1/1 0/0 0/0 .text
//  * __ct__12daNpc_Bans_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
//  */
// daNpc_Bans_c::daNpc_Bans_c(daNpcT_faceMotionAnmData_c const* param_0,
//                                daNpcT_motionAnmData_c const* param_1,
//                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2,
//                                int param_3,
//                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4,
//                                int param_5, daNpcT_evtData_c const* param_6, char** param_7) {
//     // NONMATCHING
// }

/* 80967BE4-80967BEC 005404 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__12daNpc_Bans_cFv */
u16 daNpc_Bans_c::getEyeballMaterialNo() {
    return 2;
}

/* 80967BEC-80967BF4 00540C 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__12daNpc_Bans_cFv */
s32 daNpc_Bans_c::getHeadJointNo() {
    return 6;
}

/* 80967BF4-80967BFC 005414 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__12daNpc_Bans_cFv */
s32 daNpc_Bans_c::getNeckJointNo() {
    return 5;
}

/* 80967BFC-80967C04 00541C 0008+00 1/0 0/0 0/0 .text getBackboneJointNo__12daNpc_Bans_cFv */
s32 daNpc_Bans_c::getBackboneJointNo() {
    return true;
}

/* 80967C04-80967C14 005424 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__12daNpc_Bans_cFi
 */
BOOL daNpc_Bans_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 80967C14-80967C24 005434 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__12daNpc_Bans_cFi
 */
BOOL daNpc_Bans_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
}

/* 80967C24-80967C6C 005444 0048+00 2/1 0/0 0/0 .text            __dt__18daNpc_Bans_Param_cFv */
daNpc_Bans_Param_c::~daNpc_Bans_Param_c() {
    // NONMATCHING
}

/* 80967C6C-80967C74 00548C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80967C6C() {
    // NONMATCHING
}

/* 80967C74-80967C7C 005494 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80967C74() {
    // NONMATCHING
}

/* 80967C7C-80967D94 00549C 0118+00 1/1 0/0 0/0 .text
 * __ct__13dShopSystem_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
// dShopSystem_c::dShopSystem_c(daNpcT_faceMotionAnmData_c const* param_0,
//                                 daNpcT_motionAnmData_c const* param_1,
//                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2,
//                                 int param_3,
//                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4,
//                                 int param_5, daNpcT_evtData_c const* param_6, char** param_7) {
extern "C" void __ct__13dShopSystem_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc() {
    // NONMATCHING
}

/* 80967D94-80967D9C 0055B4 0008+00 1/0 0/0 0/0 .text            getResName2__13dShopSystem_cFi */
// bool dShopSystem_c::getResName2(int param_0) {
extern "C" bool getResName2__13dShopSystem_cFi() {
    return false;
}

/* 80967D9C-80967DA4 0055BC 0008+00 1/0 0/0 0/0 .text
 * beforeStartSeqAction__13dShopSystem_cFP10dMsgFlow_ci         */
// bool dShopSystem_c::beforeStartSeqAction(dMsgFlow_c* param_0, int param_1) {
extern "C" bool beforeStartSeqAction__13dShopSystem_cFP10dMsgFlow_ci() {
    return true;
}

/* 80967DA4-80967DAC 0055C4 0008+00 1/0 0/0 0/0 .text
 * beforeSelectSeqAction__13dShopSystem_cFP10dMsgFlow_ci        */
// bool dShopSystem_c::beforeSelectSeqAction(dMsgFlow_c* param_0, int param_1) {
extern "C" bool beforeSelectSeqAction__13dShopSystem_cFP10dMsgFlow_ci() {
    return true;
}

/* 80967DAC-80967E0C 0055CC 0060+00 1/1 0/0 0/0 .text chkPointInArea__15daTag_EvtArea_cF4cXyz */
// void daTag_EvtArea_c::chkPointInArea(cXyz param_0) {
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz() {
    // NONMATCHING
}

/* 80968684-809686A4 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Bans_MethodTable */
static actor_method_class daNpc_Bans_MethodTable = {
    (process_method_func)daNpc_Bans_Create,
    (process_method_func)daNpc_Bans_Delete,
    (process_method_func)daNpc_Bans_Execute,
    (process_method_func)daNpc_Bans_IsDelete,
    (process_method_func)daNpc_Bans_Draw,
};

/* 809686A4-809686D4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_BANS */
extern actor_process_profile_definition g_profile_NPC_BANS = {
  fpcLy_CURRENT_e,          // mLayerID
  7,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_NPC_BANS,            // mProcName
  &g_fpcLf_Method.base,    // sub_method
  sizeof(daNpc_Bans_c),     // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  322,                      // mPriority
  &daNpc_Bans_MethodTable,  // sub_method
  0x00040107,               // mStatus
  fopAc_NPC_e,              // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};
