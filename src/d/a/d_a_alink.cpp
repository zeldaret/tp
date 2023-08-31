/**
 * d_a_alink.cpp
 * Player (Link) Actor
 */

#include "d/a/d_a_alink.h"
#include "JSystem/J2DGraph/J2DAnmLoader.h"
#include "JSystem/J3DGraphBase/J3DMaterial.h"
#include "JSystem/J3DGraphLoader/J3DAnmLoader.h"
#include "JSystem/JKernel/JKRExpHeap.h"
#include "JSystem/JMath/JMath.h"
#include "SSystem/SComponent/c_math.h"
#include "d/d_item.h"
#include "d/d_procname.h"
#include "d/meter/d_meter2_draw.h"
#include "d/msg/d_msg_object.h"
#include "d/pane/d_pane_class.h"
#include "dol2asm.h"
#include "dolphin/os/OS.h"
#include "rel/d/a/d_a_crod/d_a_crod.h"
#include "rel/d/a/d_a_horse/d_a_horse.h"
#include "rel/d/a/d_a_mg_rod/d_a_mg_rod.h"
#include "rel/d/a/d_a_scene_exit/d_a_scene_exit.h"
#include "rel/d/a/d_a_spinner/d_a_spinner.h"
#include "rel/d/a/e/d_a_e_wb/d_a_e_wb.h"
#include "rel/d/a/obj/d_a_obj_carry/d_a_obj_carry.h"
#include "rel/d/a/tag/d_a_tag_magne/d_a_tag_magne.h"
#include "rel/d/a/d_a_mirror/d_a_mirror.h"

//
// Types:
//

struct daTagMist_c {
    /* 80031CF0 */ void getPlayerNo();
};

struct daObj_Sekizoa_c {
    /* 801312C8 */ void setWolfHowling();
};

struct daObjMovebox {
    struct Act_c {
        struct Prm_e {};
    };
};

struct daObj {
    template <typename A1>
    void PrmAbstract(/* ... */);
    /* 80141ACC */ /* daObj::PrmAbstract<daObjMovebox::Act_c::Prm_e> */
    void func_80141ACC(void* _this, fopAc_ac_c const*, daObjMovebox::Act_c::Prm_e,
                       daObjMovebox::Act_c::Prm_e);
};

struct daNpcT_ActorMngr_c {
    /* 80145708 */ void getActorP();
};

struct dPaPoF_c {
    /* 800512E8 */ void setEffectFour(dKy_tevstr_c const*, cXyz const*, u32, u32, cXyz const*,
                                      cXyz const*, cXyz const*, cXyz const*, cXyz const*,
                                      csXyz const*, cXyz const*, s8, f32, f32);
    /* 80051424 */ void clearFourAllID();

    static u8 m_typeFourData[60];
    static u8 m_emitterFourData[60 + 28 /* padding */];
};

struct JASKernel {
    /* 80290B08 */ void getAramHeap();
};

struct JAISeq {
    /* 802A0A8C */ JAISeq(JAISeqMgr*, JAISoundStrategyMgr<JAISeq>*);
};

//
// Forward References:
//

extern "C" bool getE3Zhint__9daAlink_cFv();
extern "C" void getAlinkArcName__9daAlink_cFv();
extern "C" static void
daAlink_tgHitCallback__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" static void
daAlink_coHitCallback__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" void init__16daAlink_matAnm_cFv();
extern "C" void calc__16daAlink_matAnm_cCFP11J3DMaterial();
extern "C" void checkStageName__9daAlink_cFPCc();
extern "C" void tgHitCallback__9daAlink_cFP10fopAc_ac_cP12dCcD_GObjInfP12dCcD_GObjInf();
extern "C" void coHitCallback__9daAlink_cFP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" void setMatrixWorldAxisRot__9daAlink_cFPA4_fsssiPC4cXyz();
extern "C" void jointControll__9daAlink_cFi();
extern "C" void setUpperFront__9daAlink_cFv();
extern "C" void changeBlendRate__9daAlink_cFi();
extern "C" void resetRootMtx__9daAlink_cFv();
extern "C" void modelCallBack__9daAlink_cFi();
extern "C" static void daAlink_modelCallBack__FP8J3DJointi();
extern "C" void headModelCallBack__9daAlink_cFi();
extern "C" static void daAlink_headModelCallBack__FP8J3DJointi();
extern "C" void wolfModelCallBack__9daAlink_cFi();
extern "C" static void daAlink_wolfModelCallBack__FP8J3DJointi();
extern "C" void setHatAngle__9daAlink_cFv();
extern "C" void calcHairAngle__9daAlink_cFPs();
extern "C" void setHairAngle__9daAlink_cFP4cXyzff();
extern "C" void setLookPosFromOut__9daAlink_cFP4cXyz();
extern "C" void checkAttentionPosAngle__9daAlink_cFP4cXyz();
extern "C" void checkActorPosAngle__9daAlink_cFP10fopAc_ac_cPP4cXyz();
extern "C" void getNeckAimPos__9daAlink_cFP4cXyzPii();
extern "C" void getNeckAimAngle__9daAlink_cFP4cXyzPsPsPsPs();
extern "C" void setEyeMove__9daAlink_cFP4cXyzss();
extern "C" void setNeckAngle__9daAlink_cFv();
extern "C" void getStickAngleFromPlayerShape__9daAlink_cCFPs();
extern "C" void commonLineCheck__9daAlink_cFP4cXyzP4cXyz();
extern "C" void getMoveBGActorName__9daAlink_cFR13cBgS_PolyInfoi();
extern "C" void checkGoronRide__9daAlink_cFv();
extern "C" void setMoveSlantAngle__9daAlink_cFv();
extern "C" void setArmMatrix__9daAlink_cFv();
extern "C" void setFootMatrix__9daAlink_cFv();
extern "C" void setMatrixOffset__9daAlink_cFPff();
extern "C" void setLegAngle__9daAlink_cFfP18daAlink_footData_cPsPsi();
extern "C" void footBgCheck__9daAlink_cFv();
extern "C" void handBgCheck__9daAlink_cFv();
extern "C" void setItemHeap__9daAlink_cFv();
extern "C" void setIdxMask__9daAlink_cFPUsPUs();
extern "C" void getAnimeResource__9daAlink_cFP14daPy_anmHeap_cUsUl();
extern "C" void initModel__9daAlink_cFP12J3DModelDataUlUl();
extern "C" void initModel__9daAlink_cFUsUl();
extern "C" void initModelEnv__9daAlink_cFUsUl();
extern "C" void initDemoModel__9daAlink_cFPP8J3DModelPCcUl();
extern "C" void initDemoBck__9daAlink_cFPP13mDoExt_bckAnmPCc();
extern "C" void createHeap__9daAlink_cFv();
extern "C" void __dt__14J3DMaterialAnmFv();
extern "C" static void daAlink_createHeap__FP10fopAc_ac_c();
extern "C" void setSelectEquipItem__9daAlink_cFi();
extern "C" void checkBoarStart__9daAlink_cFv();
extern "C" void checkCanoeStart__9daAlink_cFv();
extern "C" void playerInit__9daAlink_cFv();
extern "C" void checkHorseStart__9daAlink_cFUli();
extern "C" void setStartProcInit__9daAlink_cFv();
extern "C" void create__9daAlink_cFv();
extern "C" static void daAlink_Create__FP10fopAc_ac_c();
extern "C" void setRoomInfo__9daAlink_cFv();
extern "C" void setShapeAngleOnGround__9daAlink_cFv();
extern "C" void setStepsOffset__9daAlink_cFv();
extern "C" void iceSlipBgCheck__9daAlink_cFv();
extern "C" void setIceSlipSpeed__9daAlink_cFv();
extern "C" void setPolygonSpeed__9daAlink_cFv();
extern "C" void checkWindSpeedOnAngle__9daAlink_cCFv();
extern "C" void checkWindSpeedOnAngleAnime__9daAlink_cCFi();
extern "C" void checkDashAnime__9daAlink_cCFv();
extern "C" void checkWindWallRate__9daAlink_cFRC4cXyz();
extern "C" void setWindSpeed__9daAlink_cFv();
extern "C" void setBodyPartPos__9daAlink_cFv();
extern "C" void setRollJump__9daAlink_cFffs();
extern "C" void setAttentionPos__9daAlink_cFv();
extern "C" void setMatrix__9daAlink_cFv();
extern "C" void simpleAnmPlay__9daAlink_cFP10J3DAnmBase();
extern "C" void setSwordPos__9daAlink_cFv();
extern "C" void setItemMatrix__9daAlink_cFi();
extern "C" void setWolfItemMatrix__9daAlink_cFv();
extern "C" void setHandIndex__9daAlink_cFQ29daAlink_c11daAlink_ANM();
extern "C" void setSwordAtCollision__9daAlink_cFi();
extern "C" void checkNoCollisionCorret__9daAlink_cFv();
extern "C" void decSwordBlur__9daAlink_cFv();
extern "C" void resetWolfAtCollision__9daAlink_cFv();
extern "C" void setWolfAtCollision__9daAlink_cFv();
extern "C" void resetAtCollision__9daAlink_cFi();
extern "C" void setAtCollision__9daAlink_cFv();
extern "C" void setWolfCollisionPos__9daAlink_cFv();
extern "C" void initLockAt__9daAlink_cFv();
extern "C" void cancelLockAt__9daAlink_cFv();
extern "C" void setCollisionPos__9daAlink_cFv();
extern "C" void setCollision__9daAlink_cFv();
extern "C" void getBaseAnimeFrame__9daAlink_cCFv();
extern "C" void setAnimeFrame__9daAlink_cFf();
extern "C" void setFrameCtrl__9daAlink_cFP16daPy_frameCtrl_cUcssff();
extern "C" void getMainBckData__9daAlink_cCFQ29daAlink_c11daAlink_ANM();
extern "C" void checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM();
extern "C" void checkUnderMove1BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM();
extern "C" void
getUnderUpperAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMPP15J3DAnmTransformPP15J3DAnmTransformiUl();
extern "C" void setDoubleAnimeBlendRatio__9daAlink_cFf();
extern "C" void
commonDoubleAnime__9daAlink_cFP15J3DAnmTransformP15J3DAnmTransformP15J3DAnmTransformP15J3DAnmTransformfffi();
extern "C" void
setDoubleAnime__9daAlink_cFfffQ29daAlink_c11daAlink_ANMQ29daAlink_c11daAlink_ANMif();
extern "C" void commonSingleAnime__9daAlink_cFP15J3DAnmTransformP15J3DAnmTransformffs();
extern "C" void setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM();
extern "C" void setSingleAnimeBaseMorf__9daAlink_cFQ29daAlink_c11daAlink_ANMf();
extern "C" void setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff();
extern "C" void setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf();
extern "C" void setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c();
extern "C" void animePlay__9daAlink_cFP15J3DAnmTransformP16daPy_frameCtrl_c();
extern "C" void allAnimePlay__9daAlink_cFv();
extern "C" void setUpperAnimeMorf__9daAlink_cFf();
extern "C" void setUpperAnimeBase__9daAlink_cFUs();
extern "C" void setUpperAnimeBaseMorf__9daAlink_cFUsf();
extern "C" void setUpperAnimeBaseSpeed__9daAlink_cFUsff();
extern "C" void setUpperAnime__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERffsf();
extern "C" void setUpperAnimeParam__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERPC16daAlinkHIO_anm_c();
extern "C" void resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf();
extern "C" void setUnderAnimeMorf__9daAlink_cFf();
extern "C" void setUnderAnime__9daAlink_cFUsQ29daAlink_c13daAlink_UNDERffsf();
extern "C" void setUnderAnimeParam__9daAlink_cFUsQ29daAlink_c13daAlink_UNDERPC16daAlinkHIO_anm_c();
extern "C" void resetUnderAnime__9daAlink_cFQ29daAlink_c13daAlink_UNDERf();
extern "C" void setOldRootQuaternion__9daAlink_cFsss();
extern "C" void checkAtnLeftAnime__9daAlink_cFv();
extern "C" void checkAtnRightAnime__9daAlink_cFv();
extern "C" void getMoveGroundAngleSpeedRate__9daAlink_cFv();
extern "C" void setBlendMoveAnime__9daAlink_cFf();
extern "C" void setBlendAtnMoveAnime__9daAlink_cFf();
extern "C" void setBlendAtnBackMoveAnime__9daAlink_cFf();
extern "C" void setFaceBck__9daAlink_cFUsiUs();
extern "C" void setFaceBtp__9daAlink_cFUsiUs();
extern "C" void setFaceBtk__9daAlink_cFUsiUs();
extern "C" void setFaceBasicTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM();
extern "C" void setFaceBasicAnime__9daAlink_cFQ29daAlink_c11daAlink_ANM();
extern "C" void setFacePriTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM();
extern "C" void setFacePriAnime__9daAlink_cFQ29daAlink_c11daAlink_ANM();
extern "C" void resetFacePriBck__9daAlink_cFv();
extern "C" void resetFacePriBtp__9daAlink_cFv();
extern "C" void resetFacePriBtk__9daAlink_cFv();
extern "C" void resetFacePriTexture__9daAlink_cFv();
extern "C" void resetFacePriAnime__9daAlink_cFv();
extern "C" void playFaceTextureAnime__9daAlink_cFv();
extern "C" void getGroundAngle__9daAlink_cFP13cBgS_PolyInfos();
extern "C" void getRoofAngle__9daAlink_cFP13cBgS_PolyInfos();
extern "C" void getWallEdgePos__9daAlink_cFRC4cXyzP8cM3dGPlaP8cM3dGPlaP4cXyzi();
extern "C" void setFrontWallType__9daAlink_cFv();
extern "C" void SetPos__12dBgS_RoofChkFRC4cXyz();
extern "C" void checkWaterPolygonUnder__9daAlink_cFv();
extern "C" void setWaterY__9daAlink_cFv();
extern "C" void setHangWaterY__9daAlink_cFv();
extern "C" void setSandDownBgCheckWallH__9daAlink_cFv();
extern "C" void setBgCheckParam__9daAlink_cFv();
extern "C" void checkNotJumpSinkLimit__9daAlink_cFv();
extern "C" void checkNotItemSinkLimit__9daAlink_cFv();
extern "C" void setSandShapeOffset__9daAlink_cFv();
extern "C" void checkLv2MiddleBossBgRide__9daAlink_cFs();
extern "C" void getSlidePolygon__9daAlink_cFP8cM3dGPla();
extern "C" void checkSlope__9daAlink_cCFv();
extern "C" void setPlayerPosAndAngle__9daAlink_cFPC4cXyzsi();
extern "C" void setPlayerPosAndAngle__9daAlink_cFPC4cXyzPC5csXyz();
extern "C" void setPlayerPosAndAngle__9daAlink_cFPA4_f();
extern "C" void itemTriggerCheck__9daAlink_cFUc();
extern "C" void itemButtonCheck__9daAlink_cFUc();
extern "C" void itemButton__9daAlink_cFv();
extern "C" void itemTrigger__9daAlink_cFv();
extern "C" void spActionButton__9daAlink_cFv();
extern "C" void spActionTrigger__9daAlink_cFv();
extern "C" void midnaTalkTrigger__9daAlink_cCFv();
extern "C" void swordSwingTrigger__9daAlink_cFv();
extern "C" void setItemActionButtonStatus__9daAlink_cFUc();
extern "C" void itemActionTrigger__9daAlink_cFv();
extern "C" void setStickData__9daAlink_cFv();
extern "C" void setAtnList__9daAlink_cFv();
extern "C" void setRStatus__9daAlink_cFUc();
extern "C" void setRStatusEmphasys__9daAlink_cFUc();
extern "C" void setDoStatus__9daAlink_cFUc();
extern "C" void setDoStatusEmphasys__9daAlink_cFUc();
extern "C" void setDoStatusContinuation__9daAlink_cFUc();
extern "C" void setBStatus__9daAlink_cFUc();
extern "C" void checkAtnWaitAnime__9daAlink_cFv();
extern "C" void setTiredVoice__9daAlink_cFP16daPy_frameCtrl_c();
extern "C" void checkRestHPAnime__9daAlink_cFv();
extern "C" void getDirectionFromAngle__9daAlink_cFs();
extern "C" void checkAttentionState__9daAlink_cFv();
extern "C" void getShapeAngleYAtnActor__9daAlink_cFv();
extern "C" void setShapeAngleToAtnActor__9daAlink_cFi();
extern "C" void initServiceWaitTime__9daAlink_cFv();
extern "C" void checkZeroSpeedF__9daAlink_cCFv();
extern "C" void setNormalSpeedF__9daAlink_cFff();
extern "C" void getStickAngleDistanceRate__9daAlink_cFv();
extern "C" void setSpeedAndAngleNormal__9daAlink_cFv();
extern "C" void setSpeedAndAngleAtn__9daAlink_cFv();
extern "C" void checkRequestTalkActor__9daAlink_cFP10dAttList_cP10fopAc_ac_c();
extern "C" void checkServiceWaitMode__9daAlink_cFv();
extern "C" void setJumpMode__9daAlink_cFv();
extern "C" void getMetamorphoseNearDis__9daAlink_cCFv();
extern "C" void getMetamorphoseFarDis__9daAlink_cCFv();
extern "C" void getMetamorphoseFarAngle__9daAlink_cCFv();
extern "C" void setMidnaMsg__9daAlink_cFv();
extern "C" void notTalk__9daAlink_cFv();
extern "C" void setTalkStatus__9daAlink_cFv();
extern "C" void getFrontRollRate__9daAlink_cFv();
extern "C" void decideCommonDoStatus__9daAlink_cFv();
extern "C" void decideDoStatus__9daAlink_cFv();
extern "C" void checkWaitAction__9daAlink_cFv();
extern "C" void setFallVoice__9daAlink_cFv();
extern "C" void setLandPassiveData__9daAlink_cFv();
extern "C" void setStepLandVibration__9daAlink_cFv();
extern "C" void checkLandAction__9daAlink_cFi();
extern "C" void checkSlideAction__9daAlink_cFv();
extern "C" void checkAutoJumpAction__9daAlink_cFv();
extern "C" void checkCutJumpInFly__9daAlink_cFv();
extern "C" void checkFrontWallTypeAction__9daAlink_cFv();
extern "C" void checkItemActionInitStart__9daAlink_cFv();
extern "C" void checkItemChangeAutoAction__9daAlink_cFv();
extern "C" void setFastShotTimer__9daAlink_cFv();
extern "C" void cancelItemUseQuake__9daAlink_cFi();
extern "C" void cancelUpperItemReadyAnime__9daAlink_cFi();
extern "C" void checkItemActorPointer__9daAlink_cFv();
extern "C" void checkSwordTwirlAction__9daAlink_cFv();
extern "C" void checkUpperItemActionFly__9daAlink_cFv();
extern "C" void checkItemButtonChange__9daAlink_cFv();
extern "C" void checkUpperItemAction__9daAlink_cFv();
extern "C" void orderPeep__9daAlink_cFv();
extern "C" void orderTalk__9daAlink_cFi();
extern "C" static void daAlink_searchBouDoor__FP10fopAc_ac_cPv();
extern "C" static void daAlink_searchKolin__FP10fopAc_ac_cPv();
extern "C" void orderZTalk__9daAlink_cFv();
extern "C" void checkNormalAction__9daAlink_cFv();
extern "C" void checkReadyItem__9daAlink_cFv();
extern "C" void checkItemAction__9daAlink_cFv();
extern "C" bool checkRAction__9daAlink_cFv();
extern "C" void checkMoveDoAction__9daAlink_cFv();
extern "C" void checkSideRollAction__9daAlink_cFi();
extern "C" void checkNoUpperAnime__9daAlink_cCFv();
extern "C" void checkOneHandItemEquipAnime__9daAlink_cCFv();
extern "C" void checkItemEquipAnime__9daAlink_cCFv();
extern "C" void checkEquipAnime__9daAlink_cCFv();
extern "C" void checkWindDashAnime__9daAlink_cCFv();
extern "C" void checkSwordTwirlAnime__9daAlink_cCFv();
extern "C" void swordEquip__9daAlink_cFi();
extern "C" void swordUnequip__9daAlink_cFv();
extern "C" void itemEquip__9daAlink_cFUs();
extern "C" void itemUnequip__9daAlink_cFUsf();
extern "C" void checkFastUnequip__9daAlink_cFv();
extern "C" void allUnequip__9daAlink_cFi();
extern "C" void checkItemChangeFromButton__9daAlink_cFv();
extern "C" void checkNextActionFromButton__9daAlink_cFv();
extern "C" void checkGroundSpecialMode__9daAlink_cFv();
extern "C" void commonCheckNextAction__9daAlink_cFi();
extern "C" void checkNextAction__9daAlink_cFi();
extern "C" void commonChangeItem__9daAlink_cFv();
extern "C" void setItemAction__9daAlink_cFv();
extern "C" void checkNextActionFromCrouch__9daAlink_cFi();
extern "C" void checkUpperReadyThrowAnime__9daAlink_cCFv();
extern "C" void getBodyAngleXBasePos__9daAlink_cFP4cXyz();
extern "C" void getBodyAngleXAtnActor__9daAlink_cFi();
extern "C" void setBodyAngleXReadyAnime__9daAlink_cFi();
extern "C" void setMagicArmorBrk__9daAlink_cFi();
extern "C" void checkMagicArmorHeavy__9daAlink_cCFv();
extern "C" void checkBootsOrArmorHeavy__9daAlink_cCFv();
extern "C" void checkHeavyStateOn__9daAlink_cFii();
extern "C" void setOutPower__9daAlink_cFfsi();
extern "C" void initGravity__9daAlink_cFv();
extern "C" void setSpecialGravity__9daAlink_cFffi();
extern "C" void transAnimeProc__9daAlink_cFP4cXyzff();
extern "C" void setFootSpeed__9daAlink_cFv();
extern "C" void posMove__9daAlink_cFv();
extern "C" void autoGroundHit__9daAlink_cFv();
extern "C" void startPeepChange__9daAlink_cFv();
extern "C" void setLastSceneDamage__9daAlink_cFiPUl();
extern "C" void setLastSceneMode__9daAlink_cFPUl();
extern "C" void startRestartRoom__9daAlink_cFUliii();
extern "C" void checkCoachGuardGame__9daAlink_cFv();
extern "C" void checkRoofRestart__9daAlink_cFv();
extern "C" void checkRestartRoom__9daAlink_cFv();
extern "C" void getSceneExitMoveAngle__9daAlink_cFv();
extern "C" void checkSceneChange__9daAlink_cFi();
extern "C" void voiceStart__9daAlink_cFUl();
extern "C" void voiceStartLevel__9daAlink_cFUl();
extern "C" void seStartSwordCut__9daAlink_cFUl();
extern "C" void seStartOnlyReverb__9daAlink_cFUl();
extern "C" void seStartOnlyReverbLevel__9daAlink_cFUl();
extern "C" void seStartMapInfo__9daAlink_cFUl();
extern "C" void seStartMapInfoLevel__9daAlink_cFUl();
extern "C" void setBasAnime__9daAlink_cFQ29daAlink_c13daAlink_UNDER();
extern "C" void initBasAnime__9daAlink_cFv();
extern "C" void resetBasAnime__9daAlink_cFv();
extern "C" void checkSightLine__9daAlink_cFfP4cXyz();
extern "C" void setMetamorphoseModel__9daAlink_cFi();
extern "C" void keepItemData__9daAlink_cFv();
extern "C" void returnKeepItemData__9daAlink_cFv();
extern "C" void setItemModel__9daAlink_cFv();
extern "C" void setItemActor__9daAlink_cFv();
extern "C" void makeItemType__9daAlink_cFv();
extern "C" void checkZoraWearAbility__9daAlink_cCFv();
extern "C" void checkMagicArmorWearAbility__9daAlink_cCFv();
extern "C" void loadAramBmd__9daAlink_cFUsUl();
extern "C" void loadAram__9daAlink_cFUsUl();
extern "C" void loadAramItemBrk__9daAlink_cFUsP8J3DModel();
extern "C" void loadAramItemBtk__9daAlink_cFUsP8J3DModel();
extern "C" void loadAramItemBtp__9daAlink_cFUsP8J3DModel();
extern "C" void changeItemBck__9daAlink_cFUsf();
extern "C" void checkGroupItem__9daAlink_cCFii();
extern "C" void checkSetItemTrigger__9daAlink_cFi();
extern "C" void checkItemSetButton__9daAlink_cFi();
extern "C" void checkField__9daAlink_cFv();
extern "C" void checkBossRoom__9daAlink_cFv();
extern "C" void checkDungeon__9daAlink_cFv();
extern "C" void checkCastleTown__9daAlink_cFv();
extern "C" void checkCloudSea__9daAlink_cFv();
extern "C" void checkRoomOnly__9daAlink_cFv();
extern "C" void checkLv2DungeonRoomSpecial__9daAlink_cFv();
extern "C" void checkRoomSpecial__9daAlink_cFv();
extern "C" void checkRoom__9daAlink_cFv();
extern "C" void checkNotBattleStage__9daAlink_cFv();
extern "C" void checkNotHeavyBootsStage__9daAlink_cFv();
extern "C" void checkNotAutoJumpStage__9daAlink_cFv();
extern "C" void checkCastleTownUseItem__9daAlink_cFUs();
extern "C" void changeItemTriggerKeepProc__9daAlink_cFUci();
extern "C" void checkNewItemChange__9daAlink_cFUc();
extern "C" void deleteEquipItem__9daAlink_cFii();
extern "C" void setLight__9daAlink_cFv();
extern "C" void setFrontRollCrashShock__9daAlink_cFUc();
extern "C" void getModelJointMtx__9daAlink_cFUs();
extern "C" void onFrollCrashFlg__9daAlink_cFUci();
extern "C" void changeWarpMaterial__9daAlink_cFQ29daAlink_c21daAlink_WARP_MAT_MODE();
extern "C" void commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC();
extern "C" void commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC();
extern "C" void procPreActionUnequipInit__9daAlink_cFiP10fopAc_ac_c();
extern "C" void procPreActionUnequip__9daAlink_cFv();
extern "C" void procServiceWaitInit__9daAlink_cFv();
extern "C" void procServiceWait__9daAlink_cFv();
extern "C" void procTiredWaitInit__9daAlink_cFv();
extern "C" void procTiredWait__9daAlink_cFv();
extern "C" void procWaitInit__9daAlink_cFv();
extern "C" void procWait__9daAlink_cFv();
extern "C" void procMoveInit__9daAlink_cFv();
extern "C" void procMove__9daAlink_cFv();
extern "C" void procAtnMoveInit__9daAlink_cFv();
extern "C" void procAtnMove__9daAlink_cFv();
extern "C" void procAtnActorWaitInit__9daAlink_cFv();
extern "C" void procAtnActorWait__9daAlink_cFv();
extern "C" void procAtnActorMoveInit__9daAlink_cFv();
extern "C" void procAtnActorMove__9daAlink_cFv();
extern "C" void procWaitTurnInit__9daAlink_cFv();
extern "C" void procWaitTurn__9daAlink_cFv();
extern "C" void procMoveTurnInit__9daAlink_cFi();
extern "C" void procMoveTurn__9daAlink_cFv();
extern "C" void procSideStepInit__9daAlink_cFi();
extern "C" void procSideStep__9daAlink_cFv();
extern "C" void procSideStepLandInit__9daAlink_cFv();
extern "C" void procSideStepLand__9daAlink_cFv();
extern "C" void procSlideInit__9daAlink_cFs();
extern "C" void procSlide__9daAlink_cFv();
extern "C" void procSlideLandInit__9daAlink_cFi();
extern "C" void procSlideLand__9daAlink_cFv();
extern "C" void procFrontRollInit__9daAlink_cFv();
extern "C" void procFrontRoll__9daAlink_cFv();
extern "C" void procFrontRollCrashInit__9daAlink_cFv();
extern "C" void procFrontRollCrash__9daAlink_cFv();
extern "C" void procFrontRollSuccessInit__9daAlink_cFv();
extern "C" void procFrontRollSuccess__9daAlink_cFv();
extern "C" void procSideRollInit__9daAlink_cFi();
extern "C" void procSideRoll__9daAlink_cFv();
extern "C" void backJumpSpeedDec__9daAlink_cFv();
extern "C" void procBackJumpInit__9daAlink_cFi();
extern "C" void procBackJump__9daAlink_cFv();
extern "C" void procBackJumpLandInit__9daAlink_cFi();
extern "C" void procBackJumpLand__9daAlink_cFv();
extern "C" void procSlipInit__9daAlink_cFv();
extern "C" void procSlip__9daAlink_cFv();
extern "C" void procAutoJumpInit__9daAlink_cFi();
extern "C" void procAutoJump__9daAlink_cFv();
extern "C" void procDiveJumpInit__9daAlink_cFv();
extern "C" void procDiveJump__9daAlink_cFv();
extern "C" void procRollJumpInit__9daAlink_cFv();
extern "C" void procRollJump__9daAlink_cFv();
extern "C" void procFallInit__9daAlink_cFif();
extern "C" void procFall__9daAlink_cFv();
extern "C" void procLandInit__9daAlink_cFf();
extern "C" void procLand__9daAlink_cFv();
extern "C" void procSmallJumpInit__9daAlink_cFi();
extern "C" void procSmallJump__9daAlink_cFv();
extern "C" void procStepMoveInit__9daAlink_cFv();
extern "C" void procStepMove__9daAlink_cFv();
extern "C" void procCrouchInit__9daAlink_cFv();
extern "C" void procCrouch__9daAlink_cFv();
extern "C" void procCoMetamorphoseInit__9daAlink_cFv();
extern "C" void procCoMetamorphose__9daAlink_cFv();
extern "C" void procCoMetamorphoseOnlyInit__9daAlink_cFv();
extern "C" void procCoMetamorphoseOnly__9daAlink_cFv();
extern "C" void procFloorDownReboundInit__9daAlink_cFv();
extern "C" void procFloorDownRebound__9daAlink_cFv();
extern "C" void procGoronRideWaitInit__9daAlink_cFP10fopAc_ac_c();
extern "C" void procGoronRideWait__9daAlink_cFv();
extern "C" void execute__9daAlink_cFv();
extern "C" static void daAlink_Execute__FP9daAlink_c();
extern "C" void setDrawHand__9daAlink_cFv();
extern "C" void checkSwordDraw__9daAlink_cFv();
extern "C" void checkShieldDraw__9daAlink_cFv();
extern "C" void checkItemDraw__9daAlink_cFv();
extern "C" void initShadowScaleLight__9daAlink_cFv();
extern "C" void moveShadowScaleLight__9daAlink_cFv();
extern "C" void shadowDraw__9daAlink_cFv();
extern "C" void modelCalc__9daAlink_cFP8J3DModel();
extern "C" void basicModelDraw__9daAlink_cFP8J3DModel();
extern "C" void modelDraw__9daAlink_cFP8J3DModeli();
extern "C" void setWaterDropColor__9daAlink_cFPC13J3DGXColorS10();
extern "C" void initTevCustomColor__9daAlink_cFv();
extern "C" void draw__9daAlink_cFv();
extern "C" static void daAlink_Draw__FP9daAlink_c();
extern "C" void __dt__9daAlink_cFv();
extern "C" static void daAlink_Delete__FP9daAlink_c();
extern "C" void checkNoSubjectModeCamera__9daAlink_cFv();
extern "C" void acceptSubjectModeChange__9daAlink_cFv();
extern "C" void checkSubjectAction__9daAlink_cFv();
extern "C" void checkBodyAngleX__9daAlink_cFs();
extern "C" void setBodyAngleToCamera__9daAlink_cFv();
extern "C" void setSubjectMode__9daAlink_cFv();
extern "C" void subjectCancelTrigger__9daAlink_cFv();
extern "C" void checkSubjectEnd__9daAlink_cFi();
extern "C" void searchPeepObj__9daAlink_cFP10fopAc_ac_cPv();
extern "C" static void daAlink_searchPeepObj__FP10fopAc_ac_cPv();
extern "C" void procCoSubjectivityInit__9daAlink_cFv();
extern "C" void procCoSubjectivity__9daAlink_cFv();
extern "C" void procCoSwimSubjectivityInit__9daAlink_cFv();
extern "C" void procCoSwimSubjectivity__9daAlink_cFv();
extern "C" void procCoPeepSubjectivityInit__9daAlink_cFv();
extern "C" void procCoPeepSubjectivity__9daAlink_cFv();
extern "C" void checkBoardRide__9daAlink_cCFv();
extern "C" void checkCanoeRide__9daAlink_cCFv();
extern "C" void checkHorseRide__9daAlink_cCFv();
extern "C" void getLeftItemMatrix__9daAlink_cFv();
extern "C" void checkBoarRide__9daAlink_cCFv();
extern "C" void checkSpinnerRide__9daAlink_cCFv();
extern "C" void getLeftHandMatrix__9daAlink_cFv();
extern "C" void getRightHandMatrix__9daAlink_cFv();
extern "C" void onSceneChangeArea__9daAlink_cFUcUcP10fopAc_ac_c();
extern "C" void getRightItemMatrix__9daAlink_cFv();
extern "C" void checkPlayerNoDraw__9daAlink_cFv();
extern "C" void __ct__9daAlink_cFv();
extern "C" void __dt__Q29daAlink_c14firePointEff_cFv();
extern "C" void __ct__Q29daAlink_c14firePointEff_cFv();
extern "C" void __dt__15LIGHT_INFLUENCEFv();
extern "C" void __dt__18daAlink_footData_cFv();
extern "C" void __ct__18daAlink_footData_cFv();
extern "C" void __dt__29dAlink_bottleWaterPcallBack_cFv();
extern "C" void __dt__14daAlink_blur_cFv();
extern "C" void __dt__15daAlink_sight_cFv();
extern "C" void __dt__20daAlink_lockCursor_cFv();
extern "C" void checkRideOn__9daAlink_cCFv();
extern "C" static void dComIfGp_att_getCatghTarget__Fv();
extern "C" static void mDoAud_setLinkHp__Fll();
extern "C" static void dComIfGs_getLife__Fv();
extern "C" static void dComIfGp_getRStatus__Fv();
extern "C" void checkAttentionLock__9daAlink_cFv();
extern "C" void dComIfGp_setItemLifeCount__FfUc(f32, u8);
extern "C" static void cMtx_multVec__FPA4_CfPC3VecP3Vec();
static void cMtx_multVec(f32 const (*param_0)[4], Vec const* param_1, Vec* param_2);
extern "C" void getAnmMtx__8J3DModelFi();
extern "C" void setBaseTRMtx__8J3DModelFPA4_f();
extern "C" void checkFmChainGrabAnime__9daAlink_cCFv();
extern "C" void checkSmallUpperGuardAnime__9daAlink_cCFv();
extern "C" static void dComIfGp_evmng_startCheck__FPCc();
extern "C" static void mDoAud_setLinkGroupInfo__FUc();
extern "C" void getAnm__25mDoExt_MtxCalcAnmBlendTblFi();
extern "C" void ChkRoofHit__9dBgS_AcchCFv();
extern "C" void ClrGroundHit__9dBgS_AcchFv();
extern "C" void checkReinRide__9daAlink_cCFv();
extern "C" void checkWolfEnemyThrowAnime__9daAlink_cCFv();
extern "C" void checkSpecialDemoMode__9daAlink_cCFv();
extern "C" void setMidnaTalkStatus__9daAlink_cFUc();
extern "C" void set3DStatus__9daAlink_cFUcUc();
extern "C" void offSetFlg__16daAlink_matAnm_cFv();
extern "C" void checkModeFlg__9daAlink_cCFUl();
extern "C" void getShieldChangeWaitTimer__9daAlink_cCFv();
extern "C" void getClothesChangeWaitTimer__9daAlink_cCFv();
extern "C" void checkHorseStart__9daAlink_cFv();
extern "C" void checkCutTurnCharge__9daAlink_cCFv();
extern "C" void checkAcceptDungeonWarpAlink__9daAlink_cFi();
extern "C" void getSpinnerActor__9daAlink_cFv();
extern "C" void getSumouCounter__9daAlink_cCFv();
extern "C" void checkSumouWithstand__9daAlink_cCFv();
extern "C" void setMidnaMsgNum__9daAlink_cFP10fopAc_ac_cUs();
extern "C" void getModelMtx__9daAlink_cFv();
extern "C" void getInvMtx__9daAlink_cFv();
extern "C" void getLinkBackBone1Matrix__9daAlink_cFv();
extern "C" void getWolfMouthMatrix__9daAlink_cFv();
extern "C" void getWolfBackbone2Matrix__9daAlink_cFv();
extern "C" void getBottleMtx__9daAlink_cFv();
extern "C" void getHeadMtx__9daAlink_cFv();
extern "C" void getGroundY__9daAlink_cFv();
extern "C" void getBaseAnimeFrameRate__9daAlink_cCFv();
extern "C" void getAtnActorID__9daAlink_cCFv();
extern "C" void getItemID__9daAlink_cCFv();
extern "C" void getGrabActorID__9daAlink_cCFv();
extern "C" void setForcePutPos__9daAlink_cFRC4cXyz();
extern "C" void checkPlayerFly__9daAlink_cCFv();
extern "C" void checkFrontRoll__9daAlink_cCFv();
extern "C" void checkWolfDash__9daAlink_cCFv();
extern "C" void checkAutoJump__9daAlink_cCFv();
extern "C" void checkSideStep__9daAlink_cCFv();
extern "C" void checkWolfTriggerJump__9daAlink_cCFv();
extern "C" void checkGuardBreakMode__9daAlink_cCFv();
extern "C" void checkLv3Slide__9daAlink_cCFv();
extern "C" void checkWolfHowlDemoMode__9daAlink_cCFv();
extern "C" void checkElecDamage__9daAlink_cCFv();
extern "C" void checkEmptyBottleSwing__9daAlink_cCFv();
extern "C" void checkBottleSwingMode__9daAlink_cCFv();
extern "C" void checkHawkWait__9daAlink_cCFv();
extern "C" void checkGoatThrow__9daAlink_cCFv();
extern "C" void checkGoatThrowAfter__9daAlink_cCFv();
extern "C" void checkWolfTagLockJump__9daAlink_cCFv();
extern "C" void checkWolfTagLockJumpLand__9daAlink_cCFv();
extern "C" void checkWolfRopeHang__9daAlink_cCFv();
extern "C" void checkRollJump__9daAlink_cCFv();
extern "C" void checkGoronRideWait__9daAlink_cCFv();
extern "C" void checkWolfChain__9daAlink_cCFv();
extern "C" void checkWolfWait__9daAlink_cCFv();
extern "C" void checkWolfJumpAttack__9daAlink_cCFv();
extern "C" void checkWolfRSit__9daAlink_cCFv();
extern "C" void checkBottleDrinkEnd__9daAlink_cCFv();
extern "C" void checkWolfDig__9daAlink_cCFv();
extern "C" void checkCutCharge__9daAlink_cCFv();
extern "C" void checkCutLargeJumpCharge__9daAlink_cCFv();
extern "C" void checkComboCutTurn__9daAlink_cCFv();
extern "C" void checkClimbMove__9daAlink_cCFv();
extern "C" void checkGrassWhistle__9daAlink_cCFv();
extern "C" void checkBoarRun__9daAlink_cCFv();
extern "C" void checkHorseRideNotReady__9daAlink_cCFv();
extern "C" void getSearchBallScale__9daAlink_cCFv();
extern "C" void checkFastShotTime__9daAlink_cFv();
extern "C" void checkCutJumpCancelTurn__9daAlink_cCFv();
extern "C" void checkSingleBoarBattleSecondBowReady__9daAlink_cCFv();
extern "C" void cancelDungeonWarpReadyNeck__9daAlink_cFv();
extern "C" void onSceneChangeAreaJump__9daAlink_cFUcUcP10fopAc_ac_c();
extern "C" void onSceneChangeDead__9daAlink_cFUci();
extern "C" void checkNoEquipItem__9daAlink_cCFv();
extern "C" void getBoardCutTurnOffsetAngleY__9daAlink_cCFv();
extern "C" void getMagneBootsTopVec__9daAlink_cFv();
extern "C" void setCargoCarry__9daAlink_cFP10fopAc_ac_c();
extern "C" void setGoronSideMove__9daAlink_cFP10fopAc_ac_c();
extern "C" void setSumouReady__9daAlink_cFP10fopAc_ac_c();
extern "C" void setSumouPushBackDirection__9daAlink_cFs();
extern "C" void setSumouLoseHeadUp__9daAlink_cFv();
extern "C" void checkPriActorOwn__9daAlink_cCFPC10fopAc_ac_c();
extern "C" void checkWolfEnemyBiteAllOwn__9daAlink_cCFPC10fopAc_ac_c();
extern "C" void setWolfEnemyHangBiteAngle__9daAlink_cFs();
extern "C" void setSumouGraspCancelCount__9daAlink_cFi();
extern "C" void checkItemSwordEquip__9daAlink_cCFv();
extern "C" void getSinkShapeOffset__9daAlink_cCFv();
extern "C" void checkSinkDead__9daAlink_cCFv();
extern "C" void checkCutJumpMode__9daAlink_cCFv();
extern "C" void getGiantPuzzleAimAngle__9daAlink_cCFv();
extern "C" void getSwordChangeWaitTimer__9daAlink_cCFv();
extern "C" void checkMetamorphose__9daAlink_cCFv();
extern "C" void checkWolfDownAttackPullOut__9daAlink_cCFv();
extern "C" void getMidnaAtnPos__9daAlink_cCFv();
extern "C" void checkCopyRodEquip__9daAlink_cCFv();
extern "C" void checkCanoeFishingGetLeft__9daAlink_cCFv();
extern "C" void checkCanoeFishingGetRight__9daAlink_cCFv();
extern "C" void checkBeeChildDrink__9daAlink_cCFv();
extern "C" void getWolfHowlMgrP__9daAlink_cFv();
extern "C" void checkWolfHowlSuccessAnime__9daAlink_cCFv();
extern "C" void checkOctaIealHang__9daAlink_cCFv();
extern "C" void cancelOctaIealHang__9daAlink_cFv();
extern "C" void cancelDragonHangBackJump__9daAlink_cFv();
extern "C" void setOctaIealWildHang__9daAlink_cFv();
extern "C" void checkDragonHangRide__9daAlink_cCFv();
extern "C" void playerStartCollisionSE__9daAlink_cFUlUl();
extern "C" void __dt__16daAlink_matAnm_cFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__Q29daAlink_c14hsChainShape_cFv();
extern "C" static void daAlink_searchNightStalker__FP10fopAc_ac_cPv();
extern "C" void checkLightSwordMtrl__9daAlink_cFv();
extern "C" void checkSwordEquipAnime__9daAlink_cCFv();
extern "C" void checkCutDashAnime__9daAlink_cCFv();
extern "C" void checkCutDashEnemyHit__9daAlink_cFR12dCcD_GObjInf();
extern "C" void getSwordAtType__9daAlink_cFv();
extern "C" void initCutTurnAt__9daAlink_cFfi();
extern "C" void checkCutFinishJumpUp__9daAlink_cFv();
extern "C" void changeCutFast__9daAlink_cFv();
extern "C" void checkCutFastReady__9daAlink_cFv();
extern "C" void setSwordModel__9daAlink_cFv();
extern "C" void offSwordModel__9daAlink_cFv();
extern "C" void checkCutTypeNoBlur__9daAlink_cCFv();
extern "C" void checkCutTurnInput__9daAlink_cCFv();
extern "C" void getCutTurnDirection__9daAlink_cCFv();
extern "C" void resetCombo__9daAlink_cFi();
extern "C" void checkComboCnt__9daAlink_cFv();
extern "C" void setCutType__9daAlink_cFUc();
extern "C" void setCylAtParam__9daAlink_cFUl11dCcG_At_SplUcUciff();
extern "C" void setSwordAtParam__9daAlink_cF11dCcG_At_SplUcUciff();
extern "C" void notSwordHitVibActor__9daAlink_cFP10fopAc_ac_c();
extern "C" void setSwordHitVibration__9daAlink_cFP12dCcD_GObjInf();
extern "C" void checkAtShieldHit__9daAlink_cFR12dCcD_GObjInf();
extern "C" void checkCutReverseAt__9daAlink_cFP12dCcD_GObjInf();
extern "C" void changeCutReverseProc__9daAlink_cFQ29daAlink_c11daAlink_ANM();
extern "C" void setCutDash__9daAlink_cFii();
extern "C" void checkForceSwordSwing__9daAlink_cFv();
extern "C" void setComboReserb__9daAlink_cFv();
extern "C" void checkComboReserb__9daAlink_cFv();
extern "C" void commonCutAction__9daAlink_cFv();
extern "C" void setSwordVoiceSe__9daAlink_cFUl();
extern "C" void setSwordChargeVoiceSe__9daAlink_cFv();
extern "C" void setSwordComboVoice__9daAlink_cFv();
extern "C" void checkCutTurnInputTrigger__9daAlink_cFv();
extern "C" void checkCutAction__9daAlink_cFv();
extern "C" void checkCutTurnCharge__9daAlink_cFv();
extern "C" void getCutDirection__9daAlink_cFv();
extern "C" void checkCutCancelNextMode__9daAlink_cFi();
extern "C" void checkDoCutAction__9daAlink_cFv();
extern "C" void checkCutBackState__9daAlink_cFv();
extern "C" void checkCutHeadState__9daAlink_cFv();
extern "C" void checkDownAttackState__9daAlink_cFv();
extern "C" void checkCutLargeTurnState__9daAlink_cCFv();
extern "C" void cancelCutCharge__9daAlink_cFv();
extern "C" void initCutAtnActorSearch__9daAlink_cFv();
extern "C" void checkCutAtnActorChange__9daAlink_cFv();
extern "C" void setCutJumpSpeed__9daAlink_cFi();
extern "C" void procCutNormalInit__9daAlink_cFi();
extern "C" void procCutNormal__9daAlink_cFv();
extern "C" void procCutFinishInit__9daAlink_cFi();
extern "C" void procCutFinish__9daAlink_cFv();
extern "C" void procCutFinishJumpUpInit__9daAlink_cFv();
extern "C" void procCutFinishJumpUp__9daAlink_cFv();
extern "C" void procCutFinishJumpUpLandInit__9daAlink_cFv();
extern "C" void procCutFinishJumpUpLand__9daAlink_cFv();
extern "C" void procCutReverseInit__9daAlink_cFQ29daAlink_c11daAlink_ANM();
extern "C" void procCutReverse__9daAlink_cFv();
extern "C" void procCutJumpInit__9daAlink_cFi();
extern "C" void procCutJump__9daAlink_cFv();
extern "C" void procCutJumpLandInit__9daAlink_cFi();
extern "C" void procCutJumpLand__9daAlink_cFv();
extern "C" void procCutTurnInit__9daAlink_cFii();
extern "C" void procCutTurn__9daAlink_cFv();
extern "C" void procCutTurnChargeInit__9daAlink_cFv();
extern "C" void procCutTurnCharge__9daAlink_cFv();
extern "C" void procCutTurnMoveInit__9daAlink_cFi();
extern "C" void procCutTurnMove__9daAlink_cFv();
extern "C" void procCutDownInit__9daAlink_cFv();
extern "C" void procCutDown__9daAlink_cFv();
extern "C" void procCutDownLandInit__9daAlink_cFP13fopEn_enemy_c();
extern "C" void procCutDownLand__9daAlink_cFv();
extern "C" void procCutHeadInit__9daAlink_cFv();
extern "C" void procCutHead__9daAlink_cFv();
extern "C" void procCutHeadLandInit__9daAlink_cFv();
extern "C" void procCutHeadLand__9daAlink_cFv();
extern "C" void procCutLargeJumpChargeInit__9daAlink_cFv();
extern "C" void procCutLargeJumpCharge__9daAlink_cFv();
extern "C" void procCutLargeJumpInit__9daAlink_cFv();
extern "C" void procCutLargeJump__9daAlink_cFv();
extern "C" void procCutLargeJumpLandInit__9daAlink_cFi();
extern "C" void procCutLargeJumpLand__9daAlink_cFv();
extern "C" void procSwordUnequipSpInit__9daAlink_cFv();
extern "C" void procSwordUnequipSp__9daAlink_cFv();
extern "C" void getFreezeR__9daAlink_cCFv();
extern "C" void getFreezeG__9daAlink_cCFv();
extern "C" void getFreezeB__9daAlink_cCFv();
extern "C" void checkMiddleBossGoronRoom__9daAlink_cFv();
extern "C" void setDkCaught__9daAlink_cFP10fopAc_ac_c();
extern "C" void freezeTimerDamage__9daAlink_cFv();
extern "C" void onPressedDamage__9daAlink_cFRC4cXyzs();
extern "C" void checkNoLandDamageSlidePolygon__9daAlink_cFv();
extern "C" void checkCutLandDamage__9daAlink_cFv();
extern "C" void checkCaughtEscapeCutTurn__9daAlink_cFv();
extern "C" void setThrowDamage__9daAlink_cFsffiii();
extern "C" void damageMagnification__9daAlink_cFii();
extern "C" void setDamagePoint__9daAlink_cFiiii();
extern "C" void setDamagePointNormal__9daAlink_cFi();
extern "C" void setLandDamagePoint__9daAlink_cFi();
extern "C" void getDamageVec__9daAlink_cFP12dCcD_GObjInf();
extern "C" void setDashDamage__9daAlink_cFv();
extern "C" void checkIcePolygonDamage__9daAlink_cFP13cBgS_PolyInfo();
extern "C" void checkMagicArmorNoDamage__9daAlink_cFv();
extern "C" void checkPolyDamage__9daAlink_cFv();
extern "C" void checkElecReturnDamage__9daAlink_cFR12dCcD_GObjInfPP10fopAc_ac_c();
extern "C" void damageTimerCount__9daAlink_cFv();
extern "C" void checkHugeAttack__9daAlink_cCFi();
extern "C" void checkLargeAttack__9daAlink_cCFi();
extern "C" void checkDamageAction__9daAlink_cFv();
extern "C" void procDamageInit__9daAlink_cFP12dCcD_GObjInfi();
extern "C" void procDamage__9daAlink_cFv();
extern "C" void procCoLargeDamageInit__9daAlink_cFiissP12dCcD_GObjInfi();
extern "C" void procCoLargeDamage__9daAlink_cFv();
extern "C" void procLargeDamageUpInit__9daAlink_cFiiss();
extern "C" void procLargeDamageUp__9daAlink_cFv();
extern "C" void procCoLargeDamageWallInit__9daAlink_cFiiss();
extern "C" void procCoLargeDamageWall__9daAlink_cFv();
extern "C" void procCoPolyDamageInit__9daAlink_cFv();
extern "C" void procCoPolyDamage__9daAlink_cFv();
extern "C" void procLandDamageInit__9daAlink_cFi();
extern "C" void procLandDamage__9daAlink_cFv();
extern "C" void procCoElecDamageInit__9daAlink_cFP10fopAc_ac_cP12dCcD_GObjInfi();
extern "C" void procCoElecDamage__9daAlink_cFv();
extern "C" void procStEscapeInit__9daAlink_cFv();
extern "C" void procStEscape__9daAlink_cFv();
extern "C" void procDkCaughtInit__9daAlink_cFUi();
extern "C" void procDkCaught__9daAlink_cFv();
extern "C" void setScreamWaitAnime__9daAlink_cFv();
extern "C" void procScreamWaitInit__9daAlink_cFv();
extern "C" void procScreamWait__9daAlink_cFv();
extern "C" void procCoSandWallHitInit__9daAlink_cFv();
extern "C" void procCoSandWallHit__9daAlink_cFv();
extern "C" void procCoLavaReturnInit__9daAlink_cFi();
extern "C" void procCoLavaReturn__9daAlink_cFv();
extern "C" void procCoSwimFreezeReturnInit__9daAlink_cFv();
extern "C" void procCoSwimFreezeReturn__9daAlink_cFv();
extern "C" void checkEnemyGroup__9daAlink_cFP10fopAc_ac_c();
extern "C" void checkSpecialNpc__9daAlink_cFP10fopAc_ac_c();
extern "C" void checkShieldAttackEmphasys__9daAlink_cFv();
extern "C" void checkGuardActionChange__9daAlink_cFv();
extern "C" void stickArrowIncrement__9daAlink_cFi();
extern "C" void setArrowShieldActor__9daAlink_cFP10fopAc_ac_ci();
extern "C" void checkWoodShieldEquipNotIronBall__9daAlink_cCFv();
extern "C" void getArrowShieldOffset__9daAlink_cCFPC4cXyzPC5csXyzP4cXyzP4cXyz();
extern "C" void setArrowShieldPos__9daAlink_cCFP4cXyzP5csXyzPC4cXyzPC4cXyz();
extern "C" void checkUpperGuardAnime__9daAlink_cCFv();
extern "C" void checkPlayerGuard__9daAlink_cCFv();
extern "C" void checkPlayerGuardAndAttack__9daAlink_cCFv();
extern "C" void checkGuardAccept__9daAlink_cFv();
extern "C" void setUpperGuardAnime__9daAlink_cFf();
extern "C" void setShieldGuard__9daAlink_cFv();
extern "C" void setGuardSe__9daAlink_cFP12dCcD_GObjInf();
extern "C" void setSmallGuard__9daAlink_cFP12dCcD_GObjInf();
extern "C" void procGuardSlipInit__9daAlink_cFiP12dCcD_GObjInf();
extern "C" void procGuardSlip__9daAlink_cFv();
extern "C" void procGuardAttackInit__9daAlink_cFv();
extern "C" void procGuardAttack__9daAlink_cFv();
extern "C" void procGuardBreakInit__9daAlink_cFv();
extern "C" void procGuardBreak__9daAlink_cFv();
extern "C" void procTurnMoveInit__9daAlink_cFi();
extern "C" void procTurnMove__9daAlink_cFv();
extern "C" void getArrowFlyData__9daAlink_cCFPfPfi();
extern "C" void getArrowIncAtR__9daAlink_cCFv();
extern "C" void getBombArrowFlyExplodeTime__9daAlink_cCFv();
extern "C" void getArrowIncAtMaxStart__9daAlink_cCFv();
extern "C" void getArrowIncAtMax__9daAlink_cCFv();
extern "C" void checkBowAndSlingItem__9daAlink_cFi();
extern "C" void setSlingModel__9daAlink_cFv();
extern "C" void checkBowCameraArrowPosP__9daAlink_cFPsPs();
extern "C" void checkArrowChargeEnd__9daAlink_cCFv();
extern "C" void checkBowReadyAnime__9daAlink_cCFv();
extern "C" void checkBowAnime__9daAlink_cCFv();
extern "C" void makeArrow__9daAlink_cFv();
extern "C" void deleteArrow__9daAlink_cFv();
extern "C" void setBowOrSlingStatus__9daAlink_cFv();
extern "C" void changeArrowType__9daAlink_cFv();
extern "C" void cancelBowMoveRideNotAtn__9daAlink_cFv();
extern "C" void cancelBowMove__9daAlink_cFv();
extern "C" void setBowReadyAnime__9daAlink_cFv();
extern "C" void setBowReloadAnime__9daAlink_cFv();
extern "C" void checkUpperItemActionBow__9daAlink_cFv();
extern "C" void checkUpperItemActionBowFly__9daAlink_cFv();
extern "C" void checkNextActionBow__9daAlink_cFv();
extern "C" void setBowModel__9daAlink_cFv();
extern "C" void checkBowGrabLeftHand__9daAlink_cCFv();
extern "C" void setBowHangAnime__9daAlink_cFv();
extern "C" void setBowNormalAnime__9daAlink_cFv();
extern "C" void setBowSight__9daAlink_cFv();
extern "C" void procBowSubjectInit__9daAlink_cFv();
extern "C" void procBowSubject__9daAlink_cFv();
extern "C" void procBowMoveInit__9daAlink_cFv();
extern "C" void procBowMove__9daAlink_cFv();
extern "C" void checkBoomerangLockAccept__9daAlink_cFv();
extern "C" void getBoomSpeed__9daAlink_cFv();
extern "C" void getBoomCatchSpeed__9daAlink_cCFv();
extern "C" void getBoomFlyMax__9daAlink_cCFv();
extern "C" void getBoomLockMax__9daAlink_cFv();
extern "C" void getBoomBgThroughTime__9daAlink_cCFv();
extern "C" void checkBossBabaRoom__9daAlink_cFv();
extern "C" void cancelBoomerangLock__9daAlink_cFP10fopAc_ac_c();
extern "C" void getBoomerangActor__9daAlink_cFv();
extern "C" void checkBoomerangChargeEnd__9daAlink_cFv();
extern "C" void checkBoomerangCarry__9daAlink_cFP10fopAc_ac_c();
extern "C" void initBoomerangUpperAnimeSpeed__9daAlink_cFi();
extern "C" void checkBoomerangAnime__9daAlink_cCFv();
extern "C" void checkBoomerangThrowAnime__9daAlink_cCFv();
extern "C" void setBoomerangReadyQuake__9daAlink_cFv();
extern "C" void setBoomerangReadyAnime__9daAlink_cFv();
extern "C" void setThrowBoomerangAnime__9daAlink_cFv();
extern "C" void setBoomerangCatchAnime__9daAlink_cFv();
extern "C" void throwBoomerang__9daAlink_cFv();
extern "C" void returnBoomerang__9daAlink_cFi();
extern "C" void checkUpperItemActionBoomerang__9daAlink_cFv();
extern "C" void checkUpperItemActionBoomerangFly__9daAlink_cFv();
extern "C" void checkNextActionBoomerang__9daAlink_cFv();
extern "C" void checkBoomerangCatchAction__9daAlink_cFv();
extern "C" void setBoomerangSight__9daAlink_cFv();
extern "C" void procBoomerangSubjectInit__9daAlink_cFv();
extern "C" void procBoomerangSubject__9daAlink_cFv();
extern "C" void procBoomerangMoveInit__9daAlink_cFv();
extern "C" void procBoomerangMove__9daAlink_cFv();
extern "C" void procBoomerangCatchInit__9daAlink_cFv();
extern "C" void procBoomerangCatch__9daAlink_cFv();
extern "C" void checkLv6BossRoom__9daAlink_cFv();
extern "C" void getCopyRodBallSpeed__9daAlink_cCFv();
extern "C" void getCopyRodBallReturnSpeed__9daAlink_cCFv();
extern "C" void getCopyRodBallDisMax__9daAlink_cCFv();
extern "C" void getCopyRodControllActor__9daAlink_cFv();
extern "C" void getCopyRodCameraActor__9daAlink_cFv();
extern "C" void initCopyRodUpperAnimeSpeed__9daAlink_cFi();
extern "C" void checkForestOldCentury__9daAlink_cFv();
extern "C" void checkCopyRodTopUse__9daAlink_cFv();
extern "C" void checkCopyRodAnime__9daAlink_cCFv();
extern "C" void setCopyRodControllAnime__9daAlink_cFv();
extern "C" void setCopyRodControllUpperSpeedRate__9daAlink_cFv();
extern "C" void setCopyRodModel__9daAlink_cFv();
extern "C" void setCopyRodReadyAnime__9daAlink_cFv();
extern "C" void throwCopyRod__9daAlink_cFv();
extern "C" void returnCopyRod__9daAlink_cFv();
extern "C" void checkUpperItemActionCopyRod__9daAlink_cFv();
extern "C" void checkUpperItemActionCopyRodFly__9daAlink_cFv();
extern "C" void checkNextActionCopyRod__9daAlink_cFv();
extern "C" void setCopyRodSight__9daAlink_cFv();
extern "C" void procCopyRodSubjectInit__9daAlink_cFv();
extern "C" void procCopyRodSubject__9daAlink_cFv();
extern "C" void procCopyRodMoveInit__9daAlink_cFv();
extern "C" void procCopyRodMove__9daAlink_cFv();
extern "C" void procCopyRodSwingInit__9daAlink_cFv();
extern "C" void procCopyRodSwing__9daAlink_cFv();
extern "C" void procCopyRodReviveInit__9daAlink_cFv();
extern "C" void procCopyRodRevive__9daAlink_cFv();
extern "C" void concatMagneBootMtx__9daAlink_cFv();
extern "C" void concatMagneBootInvMtx__9daAlink_cFv();
extern "C" void multVecMagneBootInvMtx__9daAlink_cFP4cXyz();
extern "C" void commonMagneLineCheck__9daAlink_cFP4cXyzP4cXyz();
extern "C" void checkBootsMoveAnime__9daAlink_cFi();
extern "C" void setHeavyBoots__9daAlink_cFi();
extern "C" void getMagneBootsLocalAngleY__9daAlink_cFsi();
extern "C" void setMagneBootsMtx__9daAlink_cFP13cBgS_PolyInfoi();
extern "C" void cancelMagneBootsOn__9daAlink_cFv();
extern "C" void checkMagneBootsFly__9daAlink_cFv();
extern "C" void procBootsEquipInit__9daAlink_cFv();
extern "C" void procBootsEquip__9daAlink_cFv();
extern "C" void procMagneBootsFlyInit__9daAlink_cFv();
extern "C" void procMagneBootsFly__9daAlink_cFv();
extern "C" void getBombExplodeTime__9daAlink_cCFv();
extern "C" void getBombGravity__9daAlink_cCFv();
extern "C" void getBombMaxFallSpeed__9daAlink_cCFv();
extern "C" void getBombBoundRate__9daAlink_cCFv();
extern "C" void getBombStopSpeedY__9daAlink_cCFv();
extern "C" void getBombMaxSpeedY__9daAlink_cCFv();
extern "C" void getBombEffScale__9daAlink_cCFv();
extern "C" void getBombAtR__9daAlink_cCFv();
extern "C" void getEnemyBombColorR__9daAlink_cCFv();
extern "C" void getBombWaterGravity__9daAlink_cCFv();
extern "C" void getBombWaterMaxFallSpeed__9daAlink_cCFv();
extern "C" void getBombExplodeWaterEffectLimit__9daAlink_cCFv();
extern "C" void getBombInsectLimitAngle__9daAlink_cCFv();
extern "C" static void daAlink_checkLightBallA__FP10fopAc_ac_c();
extern "C" static void daAlink_checkLightBallB__FP10fopAc_ac_c();
extern "C" static void daAlink_searchLightBall__FP10fopAc_ac_cPv();
extern "C" void checkGrabLineCheck__9daAlink_cFv();
extern "C" void setGrabCollisionOffset__9daAlink_cFffP13cBgS_PolyInfo();
extern "C" void exchangeGrabActor__9daAlink_cFP10fopAc_ac_c();
extern "C" void setForceGrab__9daAlink_cFP10fopAc_ac_cii();
extern "C" void getGrabThrowRate__9daAlink_cFv();
extern "C" void checkGrabThrowAnime__9daAlink_cCFv();
extern "C" void checkGrabAnime__9daAlink_cCFv();
extern "C" void checkGrabAnimeAndThrow__9daAlink_cCFv();
extern "C" void checkGrabCarryActor__9daAlink_cFv();
extern "C" void checkGrabSlowMoveActor__9daAlink_cFv();
extern "C" void checkGrabHeavyActor__9daAlink_cFv();
extern "C" void checkGrabSideActor__9daAlink_cFv();
extern "C" void setGrabUpperAnime__9daAlink_cFf();
extern "C" void checkGrabRooster__9daAlink_cFv();
extern "C" void setGrabItemPos__9daAlink_cFv();
extern "C" void freeGrabItem__9daAlink_cFv();
extern "C" void setGrabUpperSpeedRate__9daAlink_cFv();
extern "C" void setCarryArmAngle__9daAlink_cFff();
extern "C" void checkGrabNotThrow__9daAlink_cFv();
extern "C" void checkNextActionGrab__9daAlink_cFv();
extern "C" void initGrabNextMode__9daAlink_cFv();
extern "C" void setGrabItemThrow__9daAlink_cFv();
extern "C" void checkUpperGrabItemThrow__9daAlink_cFf();
extern "C" void putObjLineCheck__9daAlink_cFR11dBgS_LinChkP4cXyzP10fopAc_ac_c();
extern "C" void grabLineCheck__9daAlink_cFP4cXyzP4cXyz();
extern "C" void setGrabItemActor__9daAlink_cFP10fopAc_ac_c();
extern "C" void procGrabReadyInit__9daAlink_cFv();
extern "C" void procGrabReady__9daAlink_cFv();
extern "C" void procGrabUpInit__9daAlink_cFv();
extern "C" void procGrabUp__9daAlink_cFv();
extern "C" void procGrabMiss__9daAlink_cFv();
extern "C" void procGrabThrowInit__9daAlink_cFi();
extern "C" void procGrabThrow__9daAlink_cFv();
extern "C" void procGrabPutInit__9daAlink_cFv();
extern "C" void procGrabPut__9daAlink_cFv();
extern "C" void procGrabWaitInit__9daAlink_cFv();
extern "C" void procGrabWait__9daAlink_cFv();
extern "C" void procGrabReboundInit__9daAlink_cFi();
extern "C" void procGrabRebound__9daAlink_cFv();
extern "C" void procGrabStandInit__9daAlink_cFv();
extern "C" void procGrabStand__9daAlink_cFv();
extern "C" void checkInsectActorName__9daAlink_cFP10fopAc_ac_c();
extern "C" void procInsectCatchInit__9daAlink_cFv();
extern "C" void procInsectCatch__9daAlink_cFv();
extern "C" void procPickUpInit__9daAlink_cFv();
extern "C" void procPickUp__9daAlink_cFv();
extern "C" void procPickPutInit__9daAlink_cFi();
extern "C" void procPickPut__9daAlink_cFv();
extern "C" void checkSetChainPullAnime__9daAlink_cFs();
extern "C" void getChainStickAngleY__9daAlink_cCFs();
extern "C" void checkChainEmphasys__9daAlink_cFv();
extern "C" void searchFmChainPos__9daAlink_cFv();
extern "C" void setFmChainPosFromOut__9daAlink_cFP10fopAc_ac_cP4cXyzi();
extern "C" void checkChainBlockPushPull__9daAlink_cFv();
extern "C" void procFmChainUpInit__9daAlink_cFv();
extern "C" void procFmChainUp__9daAlink_cFv();
extern "C" void procFmChainStrongPullInit__9daAlink_cFv();
extern "C" void procFmChainStrongPull__9daAlink_cFv();
extern "C" void setWallGrabStatus__9daAlink_cFUcUc();
extern "C" void getWallGrabStatus__9daAlink_cFv();
extern "C" void wallGrabTrigger__9daAlink_cFv();
extern "C" void wallGrabButton__9daAlink_cFv();
extern "C" void setPushPullKeepData__9daAlink_cFQ29dBgW_Base13PushPullLabeli();
extern "C" void checkPushPullTurnBlock__9daAlink_cFv();
extern "C" void checkPullBehindWall__9daAlink_cFv();
extern "C" void offGoatStopGame__9daAlink_cFv();
extern "C" void checkGoatCatchActor__9daAlink_cFP10fopAc_ac_c();
extern "C" void getGoatCatchDistance2__9daAlink_cFv();
extern "C" void endPushPull__9daAlink_cFv();
extern "C" void getPushPullAnimeSpeed__9daAlink_cFv();
extern "C" void procCoPushPullWaitInit__9daAlink_cFi();
extern "C" void procCoPushPullWait__9daAlink_cFv();
extern "C" void procCoPushMoveInit__9daAlink_cFii();
extern "C" void procCoPushMove__9daAlink_cFv();
extern "C" void procPullMoveInit__9daAlink_cFi();
extern "C" void procPullMove__9daAlink_cFv();
extern "C" static void daAlink_searchGoat__FP10fopAc_ac_cPv();
extern "C" void cancelGoronThrowEvent__9daAlink_cFv();
extern "C" void setGoatStopGameFail__9daAlink_cFP10fopAc_ac_c();
extern "C" void procGoatMoveInit__9daAlink_cFv();
extern "C" void procGoatMove__9daAlink_cFv();
extern "C" void procGoatCatchInit__9daAlink_cFP10fopAc_ac_cf();
extern "C" void procGoatCatch__9daAlink_cFv();
extern "C" void procGoatStrokeInit__9daAlink_cFv();
extern "C" void procGoatStroke__9daAlink_cFv();
extern "C" void procGoronMoveInit__9daAlink_cFv();
extern "C" void procGoronMove__9daAlink_cFv();
extern "C" void checkSumouVsActor__9daAlink_cFv();
extern "C" void cancelSumouMode__9daAlink_cFv();
extern "C" void sumouPunchTrigger__9daAlink_cFv();
extern "C" void setSumouPunchStatus__9daAlink_cFv();
extern "C" void procSumouReadyInit__9daAlink_cFv();
extern "C" void procSumouReady__9daAlink_cFv();
extern "C" void procSumouMoveInit__9daAlink_cFv();
extern "C" void procSumouMove__9daAlink_cFv();
extern "C" void procSumouSideMoveInit__9daAlink_cFv();
extern "C" void procSumouSideMove__9daAlink_cFv();
extern "C" void procSumouActionInit__9daAlink_cFiii();
extern "C" void procSumouAction__9daAlink_cFv();
extern "C" void procSumouStaggerInit__9daAlink_cFv();
extern "C" void procSumouStagger__9daAlink_cFv();
extern "C" void procSumouWinLoseInit__9daAlink_cFv();
extern "C" void procSumouWinLose__9daAlink_cFv();
extern "C" void procSumouShikoInit__9daAlink_cFv();
extern "C" void procSumouShiko__9daAlink_cFv();
extern "C" static void daAlink_searchBoar__FP10fopAc_ac_cPv();
extern "C" static void daAlink_searchCoach__FP10fopAc_ac_cPv();
extern "C" void checkHorseZeldaBowMode__9daAlink_cFv();
extern "C" void setHorseZeldaDamage__9daAlink_cFv();
extern "C" void checkHorseDashAccept__9daAlink_cFv();
extern "C" void checkCowGame__9daAlink_cFv();
extern "C" void getReinRideDirection__9daAlink_cFv();
extern "C" void checkReinRideBgCheck__9daAlink_cFv();
extern "C" void commonInitForceRideRein__9daAlink_cFv();
extern "C" void initForceRideBoar__9daAlink_cFv();
extern "C" void initForceRideHorse__9daAlink_cFv();
extern "C" void rideGetOff__9daAlink_cFv();
extern "C" void checkHorseNotDamageReaction__9daAlink_cCFv();
extern "C" void checkHorseWaitLashAnime__9daAlink_cCFv();
extern "C" void checkHorseReinLeftOnly__9daAlink_cCFv();
extern "C" void getReinHandType__9daAlink_cCFv();
extern "C" void checkHorseLieAnime__9daAlink_cCFv();
extern "C" void checkHorseSubjectivity__9daAlink_cCFv();
extern "C" void setHorseSwordUpAnime__9daAlink_cFv();
extern "C" void setHorseTurnUpperAnime__9daAlink_cFi();
extern "C" void checkHorseNoUpperAnime__9daAlink_cCFv();
extern "C" void getHorseReinHandPos__9daAlink_cFP4cXyzP4cXyz();
extern "C" void checkHorseNotGrab__9daAlink_cCFv();
extern "C" void setHorseStirrup__9daAlink_cFv();
extern "C" void changeBoarRunRide__9daAlink_cFv();
extern "C" void setSyncHorsePos__9daAlink_cFv();
extern "C" void setSyncBoarPos__9daAlink_cFv();
extern "C" void setSyncBoarRunPos__9daAlink_cFv();
extern "C" void setSyncRidePos__9daAlink_cFv();
extern "C" void setHorseTurnAnime__9daAlink_cFv();
extern "C" void getBaseHorseAnime__9daAlink_cFPQ29daAlink_c11daAlink_ANM();
extern "C" void checkHorseSpecialProc__9daAlink_cFv();
extern "C" void checkHorseServiceWaitAnime__9daAlink_cFv();
extern "C" void setSyncHorse__9daAlink_cFi();
extern "C" void setSyncBoar__9daAlink_cFi();
extern "C" void setSyncRide__9daAlink_cFi();
extern "C" void setBaseHorseAnimeFrame__9daAlink_cFv();
extern "C" void setBaseBoarAnime__9daAlink_cFv();
extern "C" void setBaseRideAnime__9daAlink_cFv();
extern "C" void checkHorseSwordUpSpped__9daAlink_cFv();
extern "C" void setHorseSwordUp__9daAlink_cFi();
extern "C" void setRideSubjectAngle__9daAlink_cFs();
extern "C" void setBodyAngleRideReadyAnime__9daAlink_cFv();
extern "C" void checkHorseGetOffWallCheck__9daAlink_cFP4cXyzP4cXyzs();
extern "C" void checkHorseGetOffDirection__9daAlink_cFv();
extern "C" void boarForceGetOff__9daAlink_cFv();
extern "C" void horseGetOffEnd__9daAlink_cFv();
extern "C" void checkNextActionHorse__9daAlink_cFv();
extern "C" void checkHorseGetOff__9daAlink_cFv();
extern "C" void checkHorseGetOffAndSetDoStatus__9daAlink_cFv();
extern "C" void setHorseGetOff__9daAlink_cFi();
extern "C" void procHorseRideInit__9daAlink_cFv();
extern "C" void procHorseRide__9daAlink_cFv();
extern "C" void procHorseGetOffInit__9daAlink_cFi();
extern "C" void procHorseGetOff__9daAlink_cFv();
extern "C" void procHorseWaitInit__9daAlink_cFv();
extern "C" void procHorseWait__9daAlink_cFv();
extern "C" void procHorseTurnInit__9daAlink_cFv();
extern "C" void procHorseTurn__9daAlink_cFv();
extern "C" void procHorseJumpInit__9daAlink_cFv();
extern "C" void procHorseJump__9daAlink_cFv();
extern "C" void procHorseLandInit__9daAlink_cFv();
extern "C" void procHorseLand__9daAlink_cFv();
extern "C" void procHorseSubjectivityInit__9daAlink_cFv();
extern "C" void procHorseSubjectivity__9daAlink_cFv();
extern "C" void procHorseCutInit__9daAlink_cFv();
extern "C" void procHorseCut__9daAlink_cFv();
extern "C" void procHorseCutChargeReadyInit__9daAlink_cFv();
extern "C" void procHorseCutChargeReady__9daAlink_cFv();
extern "C" void procHorseCutTurnInit__9daAlink_cFv();
extern "C" void procHorseCutTurn__9daAlink_cFv();
extern "C" void procHorseDamageInit__9daAlink_cFP12dCcD_GObjInf();
extern "C" void procHorseDamage__9daAlink_cFv();
extern "C" void procHorseBowSubjectInit__9daAlink_cFv();
extern "C" void procHorseBowSubject__9daAlink_cFv();
extern "C" void procHorseBowMoveInit__9daAlink_cFv();
extern "C" void procHorseBowMove__9daAlink_cFv();
extern "C" void procHorseGrabMoveInit__9daAlink_cFv();
extern "C" void procHorseGrabMove__9daAlink_cFv();
extern "C" void procHorseBoomerangSubjectInit__9daAlink_cFv();
extern "C" void procHorseBoomerangSubject__9daAlink_cFv();
extern "C" void procHorseBoomerangMoveInit__9daAlink_cFv();
extern "C" void procHorseBoomerangMove__9daAlink_cFv();
extern "C" void procHorseHookshotSubjectInit__9daAlink_cFv();
extern "C" void procHorseHookshotSubject__9daAlink_cFv();
extern "C" void procHorseHookshotMoveInit__9daAlink_cFv();
extern "C" void procHorseHookshotMove__9daAlink_cFv();
extern "C" void procHorseBottleDrinkInit__9daAlink_cFUs();
extern "C" void procHorseBottleDrink__9daAlink_cFv();
extern "C" void procHorseKandelaarPourInit__9daAlink_cFv();
extern "C" void procHorseKandelaarPour__9daAlink_cFv();
extern "C" void procHorseComebackInit__9daAlink_cFv();
extern "C" void procHorseComeback__9daAlink_cFv();
extern "C" void procHorseRunInit__9daAlink_cFv();
extern "C" void procHorseRun__9daAlink_cFv();
extern "C" void procHorseHangInit__9daAlink_cFP12dCcD_GObjInfi();
extern "C" void procHorseHang__9daAlink_cFv();
extern "C" void procHorseGetKeyInit__9daAlink_cFv();
extern "C" void procHorseGetKey__9daAlink_cFv();
extern "C" void procHorseLookDownInit__9daAlink_cFv();
extern "C" void procHorseLookDown__9daAlink_cFv();
extern "C" void procBoarRunInit__9daAlink_cFv();
extern "C" void procBoarRun__9daAlink_cFv();
extern "C" void getCanoeMaxSpeed__9daAlink_cCFv();
extern "C" void getCanoeBackMaxSpeed__9daAlink_cCFv();
extern "C" void getCanoeCres__9daAlink_cCFv();
extern "C" void getCanoeSpeedRate__9daAlink_cCFv();
extern "C" void getCanoeMaxRotSpeed__9daAlink_cCFv();
extern "C" void getCanoeLocalPaddleTop__9daAlink_cFv();
extern "C" static void daAlink_searchCanoe__FP10fopAc_ac_cPv();
extern "C" void checkCanoeRideTandem__9daAlink_cFv();
extern "C" void checkFishingRodAndLureItem__9daAlink_cCFv();
extern "C" void initFishingRodHand__9daAlink_cFv();
extern "C" void getCanoePaddleMatrix__9daAlink_cFv();
extern "C" void checkFishingRodGrab__9daAlink_cCFP10fopAc_ac_c();
extern "C" void checkCanoePaddleGrab__9daAlink_cCFP10fopAc_ac_c();
extern "C" void checkCanoeFishingRodGrabOrPut__9daAlink_cCFv();
extern "C" void initCanoeRide__9daAlink_cFv();
extern "C" void checkCanoeJumpRide__9daAlink_cFv();
extern "C" void setArmReelAnime__9daAlink_cFv();
extern "C" void setFishingWaitAction__9daAlink_cFv();
extern "C" void setFishGetFace__9daAlink_cFv();
extern "C" void setRideCanoeBasePos__9daAlink_cFP10fopAc_ac_c();
extern "C" void setSyncCanoePos__9daAlink_cFv();
extern "C" void canoeCommon__9daAlink_cFv();
extern "C" void checkNextActionCanoe__9daAlink_cFv();
extern "C" void procCanoeRideInit__9daAlink_cFv();
extern "C" void procCanoeRide__9daAlink_cFv();
extern "C" void procCanoeJumpRideInit__9daAlink_cFP10fopAc_ac_c();
extern "C" void procCanoeJumpRide__9daAlink_cFv();
extern "C" void procCanoeGetOffInit__9daAlink_cFv();
extern "C" void procCanoeGetOff__9daAlink_cFv();
extern "C" void procCanoeWaitInit__9daAlink_cFi();
extern "C" void procCanoeWait__9daAlink_cFv();
extern "C" void procCanoeRowInit__9daAlink_cFi();
extern "C" void procCanoeRow__9daAlink_cFv();
extern "C" void procCanoePaddleShiftInit__9daAlink_cFi();
extern "C" void procCanoePaddleShift__9daAlink_cFv();
extern "C" void procCanoePaddlePutInit__9daAlink_cFi();
extern "C" void procCanoePaddlePut__9daAlink_cFv();
extern "C" void procCanoePaddleGrabInit__9daAlink_cFv();
extern "C" void procCanoePaddleGrab__9daAlink_cFv();
extern "C" void procCanoeRodGrabInit__9daAlink_cFv();
extern "C" void procCanoeRodGrab__9daAlink_cFv();
extern "C" void procCanoeFishingWaitInit__9daAlink_cFv();
extern "C" void procCanoeFishingWait__9daAlink_cFv();
extern "C" void procCanoeFishingReelInit__9daAlink_cFv();
extern "C" void procCanoeFishingReel__9daAlink_cFv();
extern "C" void procCanoeFishingGetInit__9daAlink_cFv();
extern "C" void procCanoeFishingGet__9daAlink_cFv();
extern "C" void procCanoeSubjectivityInit__9daAlink_cFv();
extern "C" void procCanoeSubjectivity__9daAlink_cFv();
extern "C" void procCanoeBowSubjectInit__9daAlink_cFv();
extern "C" void procCanoeBowSubject__9daAlink_cFv();
extern "C" void procCanoeBowMoveInit__9daAlink_cFv();
extern "C" void procCanoeBowMove__9daAlink_cFv();
extern "C" void procCanoeGrabMoveInit__9daAlink_cFv();
extern "C" void procCanoeGrabMove__9daAlink_cFv();
extern "C" void procCanoeBoomerangSubjectInit__9daAlink_cFv();
extern "C" void procCanoeBoomerangSubject__9daAlink_cFv();
extern "C" void procCanoeBoomerangMoveInit__9daAlink_cFv();
extern "C" void procCanoeBoomerangMove__9daAlink_cFv();
extern "C" void procCanoeHookshotSubjectInit__9daAlink_cFv();
extern "C" void procCanoeHookshotSubject__9daAlink_cFv();
extern "C" void procCanoeHookshotMoveInit__9daAlink_cFv();
extern "C" void procCanoeHookshotMove__9daAlink_cFv();
extern "C" void procCanoeBottleDrinkInit__9daAlink_cFUs();
extern "C" void procCanoeBottleDrink__9daAlink_cFv();
extern "C" void procCanoeKandelaarPourInit__9daAlink_cFv();
extern "C" void procCanoeKandelaarPour__9daAlink_cFv();
extern "C" void setGroundFishingRodActor__9daAlink_cFv();
extern "C" void procFishingCastInit__9daAlink_cFv();
extern "C" void procFishingCast__9daAlink_cFv();
extern "C" void procFishingFoodInit__9daAlink_cFv();
extern "C" void procFishingFood__9daAlink_cFv();
extern "C" void getCrawlMoveAnmSpeed__9daAlink_cFv();
extern "C" void getCrawlMoveSpeed__9daAlink_cFv();
extern "C" void setCrawlMoveDirectionArrow__9daAlink_cFv();
extern "C" void changeCrawlAutoMoveProc__9daAlink_cFP4cXyz();
extern "C" void getCrawlMoveVec__9daAlink_cFP4cXyzP4cXyzP4cXyziiPUc();
extern "C" void crawlBgCheck__9daAlink_cFP4cXyzP4cXyzi();
extern "C" void checkCrawlSideWall__9daAlink_cFP4cXyzP4cXyzP4cXyzP4cXyzPsPs();
extern "C" void decideCrawlDoStatus__9daAlink_cFv();
extern "C" void checkNotCrawlStand__9daAlink_cFP4cXyz();
extern "C" void checkNotCrawlStand__9daAlink_cFP4cXyzP4cXyz();
extern "C" void checkCrawlInHoll__9daAlink_cFP4cXyzP4cXyzP4cXyzi();
extern "C" void setCrawlMoveHoll__9daAlink_cFv();
extern "C" void setCrawlMoveAngle__9daAlink_cFv();
extern "C" void stopHalfMoveAnime__9daAlink_cFf();
extern "C" void setCrawlAutoMoveAimPos__9daAlink_cFv();
extern "C" void procCrawlStartInit__9daAlink_cFv();
extern "C" void procCrawlStart__9daAlink_cFv();
extern "C" void procCrawlMoveInit__9daAlink_cFss();
extern "C" void procCrawlMove__9daAlink_cFv();
extern "C" void procCrawlAutoMoveInit__9daAlink_cFiP4cXyz();
extern "C" void procCrawlAutoMove__9daAlink_cFv();
extern "C" void procCrawlEndInit__9daAlink_cFiss();
extern "C" void procCrawlEnd__9daAlink_cFv();
extern "C" void getHangMoveAnmSpeed__9daAlink_cFv();
extern "C" void getHangDirectionFromAngle__9daAlink_cFv();
extern "C" void hangMoveBgCheck__9daAlink_cFsP4cXyz();
extern "C" void changeHangMoveProc__9daAlink_cFi();
extern "C" void checkHangFootWall__9daAlink_cFv();
extern "C" void setHangGroundY__9daAlink_cFv();
extern "C" void changeHangEndProc__9daAlink_cFv();
extern "C" void checkHangStartSideWall__9daAlink_cFs();
extern "C" void procHangStartInit__9daAlink_cFv();
extern "C" void procHangStart__9daAlink_cFv();
extern "C" void procHangFallStartInit__9daAlink_cFP8cM3dGPla();
extern "C" void procHangFallStart__9daAlink_cFv();
extern "C" void procHangUpInit__9daAlink_cFi();
extern "C" void procHangUp__9daAlink_cFv();
extern "C" void procHangWaitInit__9daAlink_cFv();
extern "C" void procHangWait__9daAlink_cFv();
extern "C" void procHangMoveInit__9daAlink_cFi();
extern "C" void procHangMove__9daAlink_cFv();
extern "C" void procHangClimbInit__9daAlink_cFf();
extern "C" void procHangClimb__9daAlink_cFv();
extern "C" void procHangWallCatchInit__9daAlink_cFv();
extern "C" void procHangWallCatch__9daAlink_cFv();
extern "C" void procHangReadyInit__9daAlink_cFv();
extern "C" void procHangReady__9daAlink_cFv();
extern "C" void procHangLeverDownInit__9daAlink_cFv();
extern "C" void procHangLeverDown__9daAlink_cFv();
extern "C" void changeDragonActor__9daAlink_cFP10fopAc_ac_c();
extern "C" void setDragonHangPos__9daAlink_cFv();
extern "C" void setOctaIealHangPos__9daAlink_cFv();
extern "C" void setBossBodyHangPos__9daAlink_cFv();
extern "C" void procBossBodyHangInit__9daAlink_cFP10fopAc_ac_c();
extern "C" void procBossBodyHang__9daAlink_cFv();
extern "C" void getLadderUnitCount__9daAlink_cCFv();
extern "C" void setLadderInit__9daAlink_cFv();
extern "C" void setLadderPosInit__9daAlink_cFv();
extern "C" void setLadderPos__9daAlink_cFi();
extern "C" void getLadderMoveAnmSpeed__9daAlink_cFv();
extern "C" void changeLadderMoveProc__9daAlink_cFi();
extern "C" void setMoveBGLadderCorrect__9daAlink_cFv();
extern "C" void checkLadderFall__9daAlink_cFv();
extern "C" void procLadderUpStartInit__9daAlink_cFv();
extern "C" void procLadderUpStart__9daAlink_cFv();
extern "C" void procLadderUpEndInit__9daAlink_cFi();
extern "C" void procLadderUpEnd__9daAlink_cFv();
extern "C" void procLadderDownStartInit__9daAlink_cFv();
extern "C" void procLadderDownStart__9daAlink_cFv();
extern "C" void procLadderDownEndInit__9daAlink_cFi();
extern "C" void procLadderDownEnd__9daAlink_cFv();
extern "C" void procLadderMoveInit__9daAlink_cFiiP4cXyz();
extern "C" void procLadderMove__9daAlink_cFv();
extern "C" void getClimbMoveUpDownAnmSpeed__9daAlink_cFv();
extern "C" void getClimbMoveSideAnmSpeed__9daAlink_cFv();
extern "C" void checkClimbCode__9daAlink_cFR13cBgS_PolyInfo();
extern "C" void setClimbInit__9daAlink_cFv();
extern "C" void setClimbShapeOffset__9daAlink_cFv();
extern "C" void getClimbDirectionFromAngle__9daAlink_cFv();
extern "C" void changeClimbMoveProc__9daAlink_cFi();
extern "C" void checkClimbMoveUpDownProc__9daAlink_cFi();
extern "C" void checkClimbMoveSideProc__9daAlink_cFi();
extern "C" void setMoveBGClimbCorrect__9daAlink_cFv();
extern "C" void checkBgCorrectClimbMove__9daAlink_cFP4cXyzP4cXyz();
extern "C" void checkClimbRoof__9daAlink_cFf();
extern "C" void checkClimbGround__9daAlink_cFP4cXyzf();
extern "C" void checkBgClimbMove__9daAlink_cFi();
extern "C" void setClimbStartNotGround__9daAlink_cFv();
extern "C" void procClimbUpStartInit__9daAlink_cFi();
extern "C" void procClimbUpStart__9daAlink_cFv();
extern "C" void procClimbDownStartInit__9daAlink_cFs();
extern "C" void procClimbDownStart__9daAlink_cFv();
extern "C" void procClimbMoveUpDownInit__9daAlink_cFi();
extern "C" void procClimbMoveUpDown__9daAlink_cFv();
extern "C" void procClimbMoveSideInit__9daAlink_cFv();
extern "C" void procClimbMoveSide__9daAlink_cFv();
extern "C" void procClimbWaitInit__9daAlink_cFii();
extern "C" void procClimbWait__9daAlink_cFv();
extern "C" void procClimbToRoofInit__9daAlink_cFv();
extern "C" void procClimbToRoof__9daAlink_cFv();
extern "C" void getRoofHangFMoveAnmSpeed__9daAlink_cCFv();
extern "C" void getRoofHangSMoveAnmSpeed__9daAlink_cCFv();
extern "C" void setRoofHangHandOnSE__9daAlink_cFP13cBgS_PolyInfo();
extern "C" void checkRoofHangMovePos__9daAlink_cFv();
extern "C" void commonRoofHangProc__9daAlink_cFv();
extern "C" void checkNextActionRoofHang__9daAlink_cFv();
extern "C" void procRoofHangStartInit__9daAlink_cFRC13cBgS_PolyInfoRC4cXyzi();
extern "C" void procRoofHangStart__9daAlink_cFv();
extern "C" void procRoofHangWaitInit__9daAlink_cFi();
extern "C" void procRoofHangWait__9daAlink_cFv();
extern "C" void procRoofHangFrontMoveInit__9daAlink_cFv();
extern "C" void procRoofHangFrontMove__9daAlink_cFv();
extern "C" void procRoofHangSideMoveInit__9daAlink_cFv();
extern "C" void procRoofHangSideMove__9daAlink_cFv();
extern "C" void procRoofHangTurnInit__9daAlink_cFv();
extern "C" void procRoofHangTurn__9daAlink_cFv();
extern "C" void setRoofHangSwitch__9daAlink_cFv();
extern "C" void procRoofSwitchHangInit__9daAlink_cFP10fopAc_ac_c();
extern "C" void procRoofSwitchHang__9daAlink_cFv();
extern "C" void getHangPos__13daObjSwHang_cFv();
extern "C" void checkZoraWearMaskDraw__9daAlink_cFv();
extern "C" void checkAcceptUseItemInWater__9daAlink_cCFUs();
extern "C" void swimDeleteItem__9daAlink_cFv();
extern "C" void getZoraSwim__9daAlink_cCFv();
extern "C" void getSwimFrontMaxSpeed__9daAlink_cCFv();
extern "C" void getSwimMaxFallSpeed__9daAlink_cCFv();
extern "C" void checkOxygenTimer__9daAlink_cFv();
extern "C" void offOxygenTimer__9daAlink_cFv();
extern "C" void checkPossibleWaterInMode__9daAlink_cCFv();
extern "C" void setWaterInAnmRate__9daAlink_cFP16daPy_frameCtrl_cf();
extern "C" void swimBgCheck__9daAlink_cFf();
extern "C" void setSpeedAndAngleSwim__9daAlink_cFv();
extern "C" void checkNextActionSwim__9daAlink_cFv();
extern "C" void checkSwimAction__9daAlink_cFi();
extern "C" void checkSwimUpAction__9daAlink_cFv();
extern "C" void swimOutAfter__9daAlink_cFi();
extern "C" void checkSwimFall__9daAlink_cFv();
extern "C" void checkSwimOutAction__9daAlink_cFv();
extern "C" void setSwimMoveAnime__9daAlink_cFv();
extern "C" void checkSwimButtonAccept__9daAlink_cFv();
extern "C" void checkUpSwimButtonAccept__9daAlink_cFv();
extern "C" void checkSwimButtonMove__9daAlink_cFv();
extern "C" void checkZoraSwimMove__9daAlink_cFv();
extern "C" void checkSwimNeckUpDown__9daAlink_cCFv();
extern "C" void setSwimUpDownOffset__9daAlink_cFv();
extern "C" void procSwimUpInit__9daAlink_cFv();
extern "C" void procSwimUp__9daAlink_cFv();
extern "C" void procSwimWaitInit__9daAlink_cFi();
extern "C" void procSwimWait__9daAlink_cFv();
extern "C" void procSwimMoveInit__9daAlink_cFv();
extern "C" void procSwimMove__9daAlink_cFv();
extern "C" void procSwimDiveInit__9daAlink_cFv();
extern "C" void procSwimDive__9daAlink_cFv();
extern "C" void procSwimHookshotSubjectInit__9daAlink_cFv();
extern "C" void procSwimHookshotSubject__9daAlink_cFv();
extern "C" void procSwimHookshotMoveInit__9daAlink_cFv();
extern "C" void procSwimHookshotMove__9daAlink_cFv();
extern "C" void procSwimDamageInit__9daAlink_cFP12dCcD_GObjInf();
extern "C" void procSwimDamage__9daAlink_cFv();
extern "C" void procOctaIealSpitInit__9daAlink_cFv();
extern "C" void procOctaIealSpit__9daAlink_cFv();
extern "C" static void daAlink_searchIceLeaf__FP10fopAc_ac_cPv();
extern "C" void checkSnowCode__9daAlink_cCFv();
extern "C" void checkSnowCodePolygon__9daAlink_cFR13cBgS_PolyInfo();
extern "C" void checkBoardRestart__9daAlink_cFv();
extern "C" void boardCommon__9daAlink_cFi();
extern "C" void setCommonBoardAnime__9daAlink_cFi();
extern "C" void checkNextActionBoard__9daAlink_cFv();
extern "C" void checkBoardSwordTriggerAction__9daAlink_cFv();
extern "C" void commonProcBoardInit__9daAlink_cFQ29daAlink_c12daAlink_PROC();
extern "C" void getBoardRowAnmSpeed__9daAlink_cFv();
extern "C" void setBoardLandAnime__9daAlink_cFv();
extern "C" void procBoardRideInit__9daAlink_cFv();
extern "C" void procBoardRide__9daAlink_cFv();
extern "C" void procBoardWaitInit__9daAlink_cFP10fopAc_ac_c();
extern "C" void procBoardWait__9daAlink_cFv();
extern "C" void procBoardRowInit__9daAlink_cFv();
extern "C" void procBoardRow__9daAlink_cFv();
extern "C" void procBoardTurnInit__9daAlink_cFv();
extern "C" void procBoardTurn__9daAlink_cFv();
extern "C" void procBoardJumpInit__9daAlink_cFfi();
extern "C" void procBoardJump__9daAlink_cFv();
extern "C" void procBoardSubjectivityInit__9daAlink_cFv();
extern "C" void procBoardSubjectivity__9daAlink_cFv();
extern "C" void procBoardCutInit__9daAlink_cFv();
extern "C" void procBoardCut__9daAlink_cFv();
extern "C" void procBoardCutTurnInit__9daAlink_cFv();
extern "C" void procBoardCutTurn__9daAlink_cFv();
extern "C" void draw__Q29daAlink_c14hsChainShape_cFv();
extern "C" void hookshotAtHitCallBack__9daAlink_cFP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" static void
daAlink_hookshotAtHitCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" void getHookshotTopPos__9daAlink_cFv();
extern "C" void checkHookshotReturnMode__9daAlink_cCFv();
extern "C" void checkHookshotShootReturnMode__9daAlink_cCFv();
extern "C" void resetHookshotMode__9daAlink_cFv();
extern "C" void setEnemyBombHookshot__9daAlink_cFP10fopAc_ac_c();
extern "C" void checkLv7BossRoom__9daAlink_cFv();
extern "C" void checkHookshotStickBG__9daAlink_cFR13cBgS_PolyInfo();
extern "C" void cancelHookshotCarry__9daAlink_cFv();
extern "C" void changeHookshotDrawModel__9daAlink_cFv();
extern "C" void checkHookshotRoofLv7Boss__9daAlink_cFv();
extern "C" void checkChaseHookshot__9daAlink_cFv();
extern "C" void checkOctaIealSpecialCollect__9daAlink_cFv();
extern "C" void checkBossOctaIealRoom__9daAlink_cFv();
extern "C" void checkHookshotWait__9daAlink_cCFv();
extern "C" void setHookshotCatchNow__9daAlink_cFv();
extern "C" void setHookshotCarryOffset__9daAlink_cFUiPC4cXyz();
extern "C" void setHookshotModel__9daAlink_cFv();
extern "C" void setHookshotSight__9daAlink_cFv();
extern "C" void cancelHookshotShot__9daAlink_cFv();
extern "C" void cancelHookshotMove__9daAlink_cFv();
extern "C" void checkHookshotReadyMaterialOffMode__9daAlink_cCFv();
extern "C" void setHookshotReadyMaterial__9daAlink_cFv();
extern "C" void initHookshotUpperAnimeSpeed__9daAlink_cFi();
extern "C" void initHookshotReady__9daAlink_cFv();
extern "C" void setHookshotReadyAnime__9daAlink_cFv();
extern "C" void checkUpperItemActionHookshot__9daAlink_cFv();
extern "C" void checkNextActionHookshot__9daAlink_cFv();
extern "C" void setHookshotReturnEnd__9daAlink_cFv();
extern "C" void setHookshotHangMoveBGCollect__9daAlink_cFv();
extern "C" void setHookshotTopPosFly__9daAlink_cFv();
extern "C" void setHookshotPos__9daAlink_cFv();
extern "C" void setHookshotRoofWaitAnime__9daAlink_cFv();
extern "C" void setHookshotWallWaitAnime__9daAlink_cFv();
extern "C" void hookshotRoofTurn__9daAlink_cFv();
extern "C" void initHookshotRoofWaitActor__9daAlink_cFP10fopAc_ac_c();
extern "C" void checkNextHookPoint__9daAlink_cFv();
extern "C" void checkLandHookshotHang__9daAlink_cFv();
extern "C" void commonHookshotRoofWait__9daAlink_cFv();
extern "C" void commonHookshotWallWait__9daAlink_cFv();
extern "C" void procHookshotSubjectInit__9daAlink_cFv();
extern "C" void procHookshotSubject__9daAlink_cFv();
extern "C" void procHookshotMoveInit__9daAlink_cFv();
extern "C" void procHookshotMove__9daAlink_cFv();
extern "C" void procHookshotFlyInit__9daAlink_cFv();
extern "C" void procHookshotFly__9daAlink_cFv();
extern "C" void procHookshotRoofWaitInit__9daAlink_cFiP10fopAc_ac_ci();
extern "C" void procHookshotRoofWait__9daAlink_cFv();
extern "C" void procHookshotRoofShootInit__9daAlink_cFP10fopAc_ac_c();
extern "C" void procHookshotRoofShoot__9daAlink_cFv();
extern "C" void procHookshotRoofBootsInit__9daAlink_cFP10fopAc_ac_c();
extern "C" void procHookshotRoofBoots__9daAlink_cFv();
extern "C" void procHookshotWallWaitInit__9daAlink_cFisi();
extern "C" void procHookshotWallWait__9daAlink_cFv();
extern "C" void procHookshotWallShootInit__9daAlink_cFv();
extern "C" void procHookshotWallShoot__9daAlink_cFv();
extern "C" void getSpinnerGravity__9daAlink_cCFv();
extern "C" void getSpinnerMaxFallSpeed__9daAlink_cCFv();
extern "C" void getSpinnerJumpRate__9daAlink_cCFv();
extern "C" void getSpinnerRideMoveTime__9daAlink_cFv();
extern "C" void getSpinnerRideSpeedF__9daAlink_cFv();
extern "C" void getSpinnerRideDecSpeedMax__9daAlink_cCFv();
extern "C" void getSpinnerRideDecSpeedMin__9daAlink_cCFv();
extern "C" void getSpinnerRideDecSpeedRate__9daAlink_cCFv();
extern "C" void getSpinnerRideRotAngleMax__9daAlink_cCFv();
extern "C" void getSpinnerRideRotAngleMin__9daAlink_cCFv();
extern "C" void onSpinnerPathForceRemove__9daAlink_cFv();
extern "C" void checkSpinnerPathMove__9daAlink_cFv();
extern "C" void checkLv4BossRoom__9daAlink_cFv();
extern "C" void checkSpinnerTriggerAttack__9daAlink_cFv();
extern "C" void setSpinnerSyncPos__9daAlink_cFv();
extern "C" void procSpinnerReadyInit__9daAlink_cFv();
extern "C" void procSpinnerReady__9daAlink_cFv();
extern "C" void setSpinnerStatus__9daAlink_cFUcUc();
extern "C" void procSpinnerWaitInit__9daAlink_cFv();
extern "C" void procSpinnerWait__9daAlink_cFv();
extern "C" void bottleModelCallBack__9daAlink_cFv();
extern "C" static void daAlink_bottleModelCallBack__FP8J3DJointi();
extern "C" void getBottleOpenAppearItem__9daAlink_cCFv();
extern "C" void checkOilBottleItemNotGet__9daAlink_cFUs();
extern "C" void setBottleModel__9daAlink_cFUs();
extern "C" void commonBottleDrink__9daAlink_cFi();
extern "C" void makeFairy__9daAlink_cFP4cXyzUl();
extern "C" void procBottleDrinkInit__9daAlink_cFUs();
extern "C" void procBottleDrink__9daAlink_cFv();
extern "C" void procBottleOpenInit__9daAlink_cFUs();
extern "C" void procBottleOpen__9daAlink_cFv();
extern "C" void procBottleSwingInit__9daAlink_cFP10fopAc_ac_ci();
extern "C" void procBottleSwing__9daAlink_cFv();
extern "C" void procBottleGetInit__9daAlink_cFi();
extern "C" void procBottleGet__9daAlink_cFv();
extern "C" void Insect_Release__9dInsect_cFv();
extern "C" static void daAlink_searchTagKandelaar__FP10fopAc_ac_cPv();
extern "C" static void daAlink_searchTagKtOnFire__FP10fopAc_ac_cPv();
extern "C" void setKandelaarMtx__9daAlink_cFPA4_fii();
extern "C" void checkWaterInKandelaarOffset__9daAlink_cFf();
extern "C" void checkWaterInKandelaar__9daAlink_cFf();
extern "C" void offKandelaarModel__9daAlink_cFv();
extern "C" void checkUseKandelaar__9daAlink_cFi();
extern "C" void checkKandelaarSwing__9daAlink_cCFi();
extern "C" void kandelaarModelCallBack__9daAlink_cFv();
extern "C" static void daAlink_kandelaarModelCallBack__FP8J3DJointi();
extern "C" void getKandelaarFlamePos__9daAlink_cFv();
extern "C" void checkKandelaarEquipAnime__9daAlink_cCFv();
extern "C" void preKandelaarDraw__9daAlink_cFv();
extern "C" void setTevColor__11J3DTevBlockFUlPC13J3DGXColorS10();
extern "C" void setKandelaarModel__9daAlink_cFv();
extern "C" void resetOilBottleModel__9daAlink_cFv();
extern "C" void commonKandelaarPourInit__9daAlink_cFv();
extern "C" void commonKandelaarPour__9daAlink_cFi();
extern "C" void initKandelaarSwing__9daAlink_cFv();
extern "C" void procKandelaarSwingInit__9daAlink_cFv();
extern "C" void procKandelaarSwing__9daAlink_cFv();
extern "C" void procKandelaarPourInit__9daAlink_cFv();
extern "C" void procKandelaarPour__9daAlink_cFv();
extern "C" static void daAlink_searchWhistle__FP10fopAc_ac_cPv();
extern "C" static void daAlink_searchHawk__FP10fopAc_ac_cPv();
extern "C" void setGrassWhistleModel__9daAlink_cFi();
extern "C" void setHorseWhistleModel__9daAlink_cFv();
extern "C" void procGrassWhistleGetInit__9daAlink_cFv();
extern "C" void procGrassWhistleGet__9daAlink_cFv();
extern "C" void procGrassWhistleWaitInit__9daAlink_cFiiisP4cXyz();
extern "C" void procGrassWhistleWait__9daAlink_cFv();
extern "C" void procCoHorseCallWaitInit__9daAlink_cFi();
extern "C" void procCoHorseCallWait__9daAlink_cFv();
extern "C" void procHawkCatchInit__9daAlink_cFv();
extern "C" void procHawkCatch__9daAlink_cFv();
extern "C" void procHawkSubjectInit__9daAlink_cFv();
extern "C" void procHawkSubject__9daAlink_cFv();
extern "C" void getIronBallCenterPos__9daAlink_cFv();
extern "C" void getIronBallBgHit__9daAlink_cCFv();
extern "C" void checkIronBallThrowMode__9daAlink_cCFv();
extern "C" void checkIronBallThrowReturnMode__9daAlink_cCFv();
extern "C" void checkIronBallReturn__9daAlink_cCFv();
extern "C" void checkIronBallGroundStop__9daAlink_cCFv();
extern "C" void setIronBallWaitUpperAnime__9daAlink_cFi();
extern "C" void checkIronBallDelete__9daAlink_cFv();
extern "C" void setIronBallReturn__9daAlink_cFi();
extern "C" void setIronBallBgCheckPos__9daAlink_cFv();
extern "C" void setIronBallModel__9daAlink_cFv();
extern "C" void __ct__5csXyzFv();
extern "C" void setIronBallGroundVec__9daAlink_cFPC4cXyzP4cXyz();
extern "C" void setIronBallChainPos__9daAlink_cFv();
extern "C" void checkIronBallReturnChange__9daAlink_cFv();
extern "C" void setIronBallPos__9daAlink_cFv();
extern "C" void checkIronBallAnime__9daAlink_cCFv();
extern "C" void setIronBallReadyAnime__9daAlink_cFv();
extern "C" void setIronBallBaseAnime__9daAlink_cFv();
extern "C" void checkUpperItemActionIronBall__9daAlink_cFv();
extern "C" void checkNextActionIronBall__9daAlink_cFv();
extern "C" void procIronBallSubjectInit__9daAlink_cFv();
extern "C" void procIronBallSubject__9daAlink_cFv();
extern "C" void procIronBallMoveInit__9daAlink_cFv();
extern "C" void procIronBallMove__9daAlink_cFv();
extern "C" void procIronBallThrowInit__9daAlink_cFv();
extern "C" void procIronBallThrow__9daAlink_cFv();
extern "C" void procIronBallReturnInit__9daAlink_cFv();
extern "C" void procIronBallReturn__9daAlink_cFv();
extern "C" void checkEventRun__9daAlink_cCFv();
extern "C" void createNpcTks__9daAlink_cFP4cXyziUl();
extern "C" void checkSetNpcTks__9daAlink_cFP4cXyzii();
extern "C" void checkDemoAction__9daAlink_cFv();
extern "C" void checkDemoMoveMode__9daAlink_cCFUl();
extern "C" void setDemoMoveData__9daAlink_cFPUlPC4cXyz();
extern "C" void setNoDrawSwordShield__9daAlink_cFiUs();
extern "C" void setDemoData__9daAlink_cFv();
extern "C" void resetDemoBck__9daAlink_cFv();
extern "C" void endHighModel__9daAlink_cFv();
extern "C" void resetSpecialEvent__9daAlink_cFv();
extern "C" void endDemoMode__9daAlink_cFv();
extern "C" void getDemoLookActor__9daAlink_cFv();
extern "C" void checkFlyAtnWait__9daAlink_cFv();
extern "C" void setGetItemFace__9daAlink_cFUs();
extern "C" void checkGrabTalkActor__9daAlink_cFP10fopAc_ac_c();
extern "C" void setTalkStartBack__9daAlink_cFP4cXyz();
extern "C" void setShapeAngleToTalkActor__9daAlink_cFv();
extern "C" void setTalkAnime__9daAlink_cFv();
extern "C" void setTradeItemAnime__9daAlink_cFv();
extern "C" void setTradeItemOutHand__9daAlink_cFv();
extern "C" void checkEndMessage__9daAlink_cFUl();
extern "C" void setDemoRightHandIndex__9daAlink_cFUs();
extern "C" void setDemoLeftHandIndex__9daAlink_cFUs();
extern "C" void setDemoRide__9daAlink_cFUs();
extern "C" void setDemoBodyBck__9daAlink_cFP13dDemo_actor_cUs();
extern "C" void checkFinalBattle__9daAlink_cFv();
extern "C" void checkRestartDead__9daAlink_cFii();
extern "C" void setDeadRideSyncPos__9daAlink_cFv();
extern "C" void checkDeadHP__9daAlink_cFv();
extern "C" void checkDeadAction__9daAlink_cFi();
extern "C" void setHighModelBck__9daAlink_cFP13mDoExt_bckAnmUs();
extern "C" void setHighModelFaceBtk__9daAlink_cFUs();
extern "C" void setDemoBrk__9daAlink_cFPP15J3DAnmTevRegKeyP8J3DModelUs();
extern "C" void setStickAnmData__9daAlink_cFP10J3DAnmBaseiiUsi();
extern "C" static void daAlink_c_getDemoIDData__FP13dDemo_actor_cPiPiPiPUsPiPi();
extern "C" void procDemoCommon__9daAlink_cFv();
extern "C" void procCoToolDemoInit__9daAlink_cFv();
extern "C" void procCoToolDemo__9daAlink_cFv();
extern "C" void procCoTalkInit__9daAlink_cFv();
extern "C" void procCoTalk__9daAlink_cFv();
extern "C" void procCoOpenTreasureInit__9daAlink_cFv();
extern "C" void procCoOpenTreasure__9daAlink_cFv();
extern "C" void procCoUnequipInit__9daAlink_cFv();
extern "C" void procCoUnequip__9daAlink_cFv();
extern "C" void setGetSubBgm__9daAlink_cFi();
extern "C" void checkTreasureRupeeReturn__9daAlink_cCFi();
extern "C" void procCoGetItemInit__9daAlink_cFv();
extern "C" void procCoGetItem__9daAlink_cFv();
extern "C" void procCoTurnBackInit__9daAlink_cFv();
extern "C" void procCoTurnBack__9daAlink_cFv();
extern "C" void procDoorOpenInit__9daAlink_cFv();
extern "C" void procDoorOpen__9daAlink_cFv();
extern "C" void procCoLookWaitInit__9daAlink_cFv();
extern "C" void procCoLookWait__9daAlink_cFv();
extern "C" void procCoDemoPushPullWaitInit__9daAlink_cFv();
extern "C" void procCoDemoPushMoveInit__9daAlink_cFv();
extern "C" void setMonkeyMoveAnime__9daAlink_cFv();
extern "C" void procMonkeyMoveInit__9daAlink_cFv();
extern "C" void procMonkeyMove__9daAlink_cFv();
extern "C" void procDemoBoomerangCatchInit__9daAlink_cFv();
extern "C" void procDemoBoomerangCatch__9daAlink_cFv();
extern "C" void procCoDeadInit__9daAlink_cFi();
extern "C" void procCoDead__9daAlink_cFv();
extern "C" void procCoLookAroundInit__9daAlink_cFv();
extern "C" void procCoLookAround__9daAlink_cFv();
extern "C" void procBossAtnWaitInit__9daAlink_cFv();
extern "C" void procCoQuakeWaitInit__9daAlink_cFv();
extern "C" void procCoCaughtInit__9daAlink_cFv();
extern "C" void procLookUpInit__9daAlink_cFv();
extern "C" void procLookUp__9daAlink_cFv();
extern "C" void procLookUpToGetItemInit__9daAlink_cFv();
extern "C" void procLookUpToGetItem__9daAlink_cFv();
extern "C" void procHandPatInit__9daAlink_cFv();
extern "C" void procHandPat__9daAlink_cFv();
extern "C" void procCoFogDeadInit__9daAlink_cFv();
extern "C" void procCoFogDead__9daAlink_cFv();
extern "C" void procWolfSmellWaitInit__9daAlink_cFv();
extern "C" void procCoNodInit__9daAlink_cFv();
extern "C" void procCoNod__9daAlink_cFv();
extern "C" void procCoEyeAwayInit__9daAlink_cFv();
extern "C" void procCoGlareInit__9daAlink_cFv();
extern "C" void procCoGlare__9daAlink_cFv();
extern "C" void procGoatStopReadyInit__9daAlink_cFv();
extern "C" void procGoatStopReady__9daAlink_cFv();
extern "C" void procCoGetReadySitInit__9daAlink_cFv();
extern "C" void procCoGetReadySit__9daAlink_cFv();
extern "C" void procCoTwGateInit__9daAlink_cFv();
extern "C" void procCoTwGate__9daAlink_cFv();
extern "C" void procWolfSnowEscapeInit__9daAlink_cFv();
extern "C" void procWolfSnowEscape__9daAlink_cFv();
extern "C" void procZoraMoveInit__9daAlink_cFv();
extern "C" void procZoraMove__9daAlink_cFv();
extern "C" void procLookAroundTurnInit__9daAlink_cFv();
extern "C" void procLookAroundTurn__9daAlink_cFv();
extern "C" void procTradeItemOutInit__9daAlink_cFv();
extern "C" void procTradeItemOut__9daAlink_cFv();
extern "C" void checkLetterItem__9daAlink_cFi();
extern "C" void procNotUseItemInit__9daAlink_cFi();
extern "C" void procNotUseItem__9daAlink_cFv();
extern "C" void procSwordReadyInit__9daAlink_cFv();
extern "C" void procSwordReady__9daAlink_cFv();
extern "C" void setSwordPushAnime__9daAlink_cFv();
extern "C" void procSwordPushInit__9daAlink_cFv();
extern "C" void procSwordPush__9daAlink_cFv();
extern "C" void procGanonFinishInit__9daAlink_cFv();
extern "C" void procGanonFinish__9daAlink_cFv();
extern "C" void procCutFastReadyInit__9daAlink_cFv();
extern "C" void procCutFastReady__9daAlink_cFv();
extern "C" void procMasterSwordStickInit__9daAlink_cFv();
extern "C" void procMasterSwordStick__9daAlink_cFv();
extern "C" void procMasterSwordPullInit__9daAlink_cFv();
extern "C" void procMasterSwordPull__9daAlink_cFv();
extern "C" void checkLv7DungeonShop__9daAlink_cFv();
extern "C" void procDungeonWarpReadyInit__9daAlink_cFv();
extern "C" void procDungeonWarpReady__9daAlink_cFv();
extern "C" void procDungeonWarpInit__9daAlink_cFv();
extern "C" void procDungeonWarp__9daAlink_cFv();
extern "C" void procDungeonWarpSceneStartInit__9daAlink_cFv();
extern "C" void procDungeonWarpSceneStart__9daAlink_cFv();
extern "C" static void daAlink_searchPortal__FP10fopAc_ac_cPv();
extern "C" void checkAcceptWarp__9daAlink_cFv();
extern "C" void dungeonReturnWarp__9daAlink_cFv();
extern "C" void skipPortalObjWarp__9daAlink_cFv();
extern "C" void checkWarpStart__9daAlink_cFv();
extern "C" void warpModelTexScroll__9daAlink_cFv();
extern "C" void procCoWarpInit__9daAlink_cFii();
extern "C" void procCoWarp__9daAlink_cFv();
extern "C" void commonWaitTurnInit__9daAlink_cFv();
extern "C" void commonGrabPutInit__9daAlink_cFv();
extern "C" void commonLargeDamageUpInit__9daAlink_cFiiss();
extern "C" void commonFallInit__9daAlink_cFi();
extern "C" void setEmitter__9daAlink_cFPUlUsPC4cXyzPC5csXyz();
extern "C" void setEmitterPolyColor__9daAlink_cFPUlUsR13cBgS_PolyInfoPC4cXyzPC5csXyz();
extern "C" void setEmitterColor__9daAlink_cFPUlUsPC4cXyzPC5csXyz();
extern "C" void stopDrawParticle__9daAlink_cFUl();
extern "C" void setEffectFrontRollParam__9daAlink_cFv();
extern "C" void setEffectSlipParam__9daAlink_cFv();
extern "C" void setEffectRunParam__9daAlink_cFv();
extern "C" void setEffectSmallLandParam__9daAlink_cFv();
extern "C" void setEffectLandParam__9daAlink_cFv();
extern "C" void setEffectSumouParam__9daAlink_cFv();
extern "C" void setFootEffectProcType__9daAlink_cFi();
extern "C" void setWolfFootOn__9daAlink_cFi();
extern "C" void setFootMark__9daAlink_cFP4cXyzUsi();
extern "C" void setEffect__9daAlink_cFv();
extern "C" void setSumouEffect__9daAlink_cFv();
extern "C" void setWaterfallEffect__9daAlink_cFPC4cXyzPUl();
extern "C" void setWaterfallEffect__9daAlink_cFv();
extern "C" void setMagneBootsEffect__9daAlink_cFv();
extern "C" void setSwordChargeEffect__9daAlink_cFv();
extern "C" void setElecDamageEffect__9daAlink_cFv();
extern "C" void clearCutTurnEffectID__9daAlink_cFv();
extern "C" void setCutTurnEffect__9daAlink_cFv();
extern "C" void setHorseCutTurnEffect__9daAlink_cFv();
extern "C" void setCutLargeJumpLandEffect__9daAlink_cFv();
extern "C" void setBootsLightEffect__9daAlink_cFv();
extern "C" void setLightningSwordEffect__9daAlink_cFv();
extern "C" void setWolfRollAttackEffect__9daAlink_cFv();
extern "C" void setWolfDigEffect__9daAlink_cFv();
extern "C" void setWolfSwimEndEffect__9daAlink_cFPP14JPABaseEmitterPP14JPABaseEmitter();
extern "C" void setWolfLockAttackEffect__9daAlink_cFv();
extern "C" void setWolfJumpAttackEffect__9daAlink_cFv();
extern "C" void setWolfBarrierHitEffect__9daAlink_cFR11dBgS_LinChk();
extern "C" void setCutWaterDropEffect__9daAlink_cFv();
extern "C" void setWaterDropEffect__9daAlink_cFv();
extern "C" void setSwordUpColorEffect__9daAlink_cFv();
extern "C" void setSwordCutSplash__9daAlink_cFv();
extern "C" void setMetamorphoseEffectStartLink__9daAlink_cFv();
extern "C" void setMetamorphoseEffect__9daAlink_cFv();
extern "C" void setRunSplash__9daAlink_cFv();
extern "C" void execute__29dAlink_bottleWaterPcallBack_cFP14JPABaseEmitterP15JPABaseParticle();
extern "C" void resetFairyEffect__9daAlink_cFv();
extern "C" void setBottleEffect__9daAlink_cFv();
extern "C" void clearFirePointDamageEffect__9daAlink_cFi();
extern "C" void initFirePointDamageEffectAll__9daAlink_cFv();
extern "C" void initFirePointDamageEffect__9daAlink_cFPC4cXyzP12dCcD_GObjInf();
extern "C" void setFirePointDamageEffect__9daAlink_cFv();
extern "C" void setFreezeEffect__9daAlink_cFv();
extern "C" void setWoodShieldBurnEffect__9daAlink_cFv();
extern "C" void clearWoodShieldBurnEffect__9daAlink_cFv();
extern "C" void setWoodShieldBurnOutEffect__9daAlink_cFv();
extern "C" void initBlur__14daAlink_blur_cFfiPC4cXyzPC4cXyzPC4cXyz();
extern "C" static void setBezierPos__FPC4cXyzPC4cXyzPC4cXyzPC4cXyzfP4cXyz();
extern "C" void copyBlur__14daAlink_blur_cFPC4cXyzPC4cXyzPC4cXyz();
extern "C" void traceBlur__14daAlink_blur_cFPC4cXyzPC4cXyzs();
extern "C" void draw__14daAlink_blur_cFv();
extern "C" void create__20daAlink_lockCursor_cFv();
extern "C" void setAnimation__7J2DPaneFP15J2DAnmTevRegKey();
extern "C" void setAnimation__7J2DPaneFP11J2DAnmColor();
extern "C" void update__20daAlink_lockCursor_cFv();
extern "C" void draw__20daAlink_lockCursor_cFv();
extern "C" void create__15daAlink_sight_cFv();
extern "C" void draw__15daAlink_sight_cFv();
extern "C" void onLockFlg__15daAlink_sight_cFv();
extern "C" void changeCommon__9daAlink_cFv();
extern "C" void changeWolf__9daAlink_cFv();
extern "C" void changeLink__9daAlink_cFi();
extern "C" void onWolfEyeUp__9daAlink_cFv();
extern "C" void offWolfEyeUp__9daAlink_cFv();
extern "C" void wolfSenseTrigger__9daAlink_cFv();
extern "C" void setWolfSenceStatus__9daAlink_cFUc();
extern "C" void wolfClawTrigger__9daAlink_cFv();
extern "C" void setWolfDigStatus__9daAlink_cFUc();
extern "C" void checkWolfShapeReverse__9daAlink_cCFv();
extern "C" void checkWolfSideStep__9daAlink_cCFv();
extern "C" void setWolfTailAngle__9daAlink_cFv();
extern "C" void checkWolfSlowDash__9daAlink_cFv();
extern "C" void setSpeedAndAngleWolf__9daAlink_cFv();
extern "C" void setSpeedAndAngleWolfAtn__9daAlink_cFv();
extern "C" void checkWolfAtnWait__9daAlink_cFv();
extern "C" void checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM();
extern "C" void setBlendWolfMoveAnime__9daAlink_cFf();
extern "C" void checkWolfAtnMoveBack__9daAlink_cFs();
extern "C" void setWolfAtnMoveDirection__9daAlink_cFv();
extern "C" void setBlendWolfAtnMoveAnime__9daAlink_cFf();
extern "C" void setBlendWolfAtnBackMoveAnime__9daAlink_cFf();
extern "C" void
setDoubleAnimeWolf__9daAlink_cFfffQ29daAlink_c12daAlink_WANMQ29daAlink_c12daAlink_WANMif();
extern "C" void setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM();
extern "C" void setSingleAnimeWolfBaseMorf__9daAlink_cFQ29daAlink_c12daAlink_WANMf();
extern "C" void setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff();
extern "C" void setSingleAnimeWolf__9daAlink_cFQ29daAlink_c12daAlink_WANMffsf();
extern "C" void
setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c();
extern "C" void checkWolfLandAction__9daAlink_cFi();
extern "C" void checkMidnaUseAbility__9daAlink_cCFv();
extern "C" void checkWolfUseAbility__9daAlink_cFv();
extern "C" void checkWolfGroundSpecialMode__9daAlink_cFv();
extern "C" void checkNextActionWolf__9daAlink_cFi();
extern "C" void wolfSideBgCheck__9daAlink_cFs();
extern "C" void checkWolfAttackReverse__9daAlink_cFi();
extern "C" void checkWolfBarrierHitReverse__9daAlink_cFv();
extern "C" void checkWolfBarrierWallHit__9daAlink_cFR13cBgS_PolyInfo();
extern "C" void wolfBgCheck__9daAlink_cFv();
extern "C" void changeWolfBlendRate__9daAlink_cFi();
extern "C" void setWolfFootMatrix__9daAlink_cFv();
extern "C" void wolfFootBgCheck__9daAlink_cFv();
extern "C" void checkWolfWaitSlipPolygon__9daAlink_cFv();
extern "C" void setWolfWaitSlip__9daAlink_cFv();
extern "C" void checkWolfAtnDoCharge__9daAlink_cFv();
extern "C" void setWolfChainPos__9daAlink_cFv();
extern "C" void setWolfAnmVoice__9daAlink_cFv();
extern "C" void procWolfServiceWaitInit__9daAlink_cFi();
extern "C" void procWolfServiceWait__9daAlink_cFv();
extern "C" void procWolfTiredWaitInit__9daAlink_cFv();
extern "C" void procWolfTiredWait__9daAlink_cFv();
extern "C" void procWolfMidnaRideShockInit__9daAlink_cFv();
extern "C" void procWolfMidnaRideShock__9daAlink_cFv();
extern "C" void procWolfWaitInit__9daAlink_cFv();
extern "C" void procWolfWait__9daAlink_cFv();
extern "C" void procWolfMoveInit__9daAlink_cFv();
extern "C" void procWolfMove__9daAlink_cFv();
extern "C" void procWolfDashInit__9daAlink_cFv();
extern "C" void procWolfDash__9daAlink_cFv();
extern "C" void procWolfDashReverseInit__9daAlink_cFi();
extern "C" void procWolfDashReverse__9daAlink_cFv();
extern "C" void procWolfAtnActorMoveInit__9daAlink_cFv();
extern "C" void procWolfAtnActorMove__9daAlink_cFv();
extern "C" void procWolfWaitTurnInit__9daAlink_cFv();
extern "C" void procWolfWaitTurn__9daAlink_cFv();
extern "C" void procWolfSideStepInit__9daAlink_cFi();
extern "C" void procWolfSideStep__9daAlink_cFv();
extern "C" void procWolfSideStepLandInit__9daAlink_cFs();
extern "C" void procWolfSideStepLand__9daAlink_cFv();
extern "C" void procWolfBackJumpInit__9daAlink_cFi();
extern "C" void procWolfBackJump__9daAlink_cFv();
extern "C" void procWolfBackJumpLandInit__9daAlink_cFss();
extern "C" void procWolfBackJumpLand__9daAlink_cFv();
extern "C" void procWolfHowlInit__9daAlink_cFi();
extern "C" void procWolfHowl__9daAlink_cFv();
extern "C" void procWolfAutoJumpInit__9daAlink_cFi();
extern "C" void procWolfAutoJump__9daAlink_cFv();
extern "C" void procWolfFallInit__9daAlink_cFif();
extern "C" void procWolfFall__9daAlink_cFv();
extern "C" void procWolfLandInit__9daAlink_cFv();
extern "C" void procWolfLand__9daAlink_cFv();
extern "C" void procWolfSitInit__9daAlink_cFi();
extern "C" void procWolfSit__9daAlink_cFv();
extern "C" void procWolfStepMoveInit__9daAlink_cFv();
extern "C" void procWolfStepMove__9daAlink_cFv();
extern "C" void procWolfSlipInit__9daAlink_cFv();
extern "C" void procWolfSlip__9daAlink_cFv();
extern "C" void procWolfSlipTurnInit__9daAlink_cFi();
extern "C" void procWolfSlipTurn__9daAlink_cFv();
extern "C" void procWolfSlipTurnLandInit__9daAlink_cFv();
extern "C" void procWolfSlipTurnLand__9daAlink_cFv();
extern "C" void procWolfSlideReadyInit__9daAlink_cFsi();
extern "C" void procWolfSlideReady__9daAlink_cFv();
extern "C" void procWolfSlideInit__9daAlink_cFsi();
extern "C" void procWolfSlide__9daAlink_cFv();
extern "C" void procWolfSlideLandInit__9daAlink_cFv();
extern "C" void procWolfSlideLand__9daAlink_cFv();
extern "C" void procWolfWaitSlipInit__9daAlink_cFv();
extern "C" void procWolfWaitSlip__9daAlink_cFv();
extern "C" void procWolfSlopeStartInit__9daAlink_cFi();
extern "C" void procWolfSlopeStart__9daAlink_cFv();
extern "C" static void daAlink_searchGoldWolf__FP10fopAc_ac_cPv();
extern "C" static void daAlink_searchWolfHowl__FP10fopAc_ac_cPv();
extern "C" void setWolfHowlNotHappen__9daAlink_cFi();
extern "C" void procWolfHowlDemoInit__9daAlink_cFv();
extern "C" void procWolfHowlDemo__9daAlink_cFv();
extern "C" void setWolfHowling__15daObj_Sekizoa_cFv();
extern "C" void checkWolfRope__9daAlink_cFv();
extern "C" void checkWolfRopeHit__9daAlink_cCFP12dCcD_GObjInfPC4cXyzi();
extern "C" void checkWolfRopeJumpHang__9daAlink_cFv();
extern "C" void getWolfRopeMoveSpeed__9daAlink_cFv();
extern "C" void setWolfRopePosY__9daAlink_cFv();
extern "C" void initWolfRopeShapeAngle__9daAlink_cFv();
extern "C" void wolfRopeSwingInc__9daAlink_cFf();
extern "C" void setWolfRopeOffsetY__9daAlink_cFi();
extern "C" void getDirectionRopeMove__9daAlink_cCFv();
extern "C" void procWolfRopeMoveInit__9daAlink_cFii();
extern "C" void procWolfRopeMove__9daAlink_cFv();
extern "C" void procWolfRopeHangInit__9daAlink_cFi();
extern "C" void procWolfRopeHang__9daAlink_cFv();
extern "C" void procWolfRopeTurnInit__9daAlink_cFv();
extern "C" void procWolfRopeTurn__9daAlink_cFv();
extern "C" void procWolfRopeStaggerInit__9daAlink_cFi();
extern "C" void procWolfRopeStagger__9daAlink_cFv();
extern "C" void procWolfRopeSubjectivityInit__9daAlink_cFv();
extern "C" void procWolfRopeSubjectivity__9daAlink_cFv();
extern "C" void getWolfTagJumpTime__9daAlink_cCFv();
extern "C" void checkMidnaLockJumpPoint__9daAlink_cCFv();
extern "C" void procWolfTagJumpInit__9daAlink_cFP10fopAc_ac_c();
extern "C" void procWolfTagJump__9daAlink_cFv();
extern "C" void procWolfTagJumpLandInit__9daAlink_cFP10fopAc_ac_c();
extern "C" void procWolfTagJumpLand__9daAlink_cFv();
extern "C" static void daAlink_searchGiant__FP10fopAc_ac_cPv();
extern "C" static void daAlink_searchGiantTalk__FP10fopAc_ac_cPv();
extern "C" void procWolfGiantPuzzleInit__9daAlink_cFv();
extern "C" void procWolfGiantPuzzle__9daAlink_cFv();
extern "C" void setWolfHangGroundY__9daAlink_cFv();
extern "C" void changeWolfHangEndProc__9daAlink_cFv();
extern "C" void procWolfHangReadyInit__9daAlink_cFv();
extern "C" void procWolfHangReady__9daAlink_cFv();
extern "C" void procWolfHangWallCatchInit__9daAlink_cFi();
extern "C" void procWolfHangWallCatch__9daAlink_cFv();
extern "C" void procWolfHangFallStartInit__9daAlink_cFP8cM3dGPla();
extern "C" void procWolfHangFallStart__9daAlink_cFv();
extern "C" void setWolfHeadDamage__9daAlink_cFv();
extern "C" void procWolfDamageInit__9daAlink_cFP12dCcD_GObjInf();
extern "C" void procWolfDamage__9daAlink_cFv();
extern "C" void procWolfLargeDamageUpInit__9daAlink_cFiiss();
extern "C" void procWolfLargeDamageUp__9daAlink_cFv();
extern "C" void procWolfLandDamageInit__9daAlink_cFi();
extern "C" void procWolfLandDamage__9daAlink_cFv();
extern "C" void setWolfScreamWaitAnime__9daAlink_cFv();
extern "C" void procWolfScreamWaitInit__9daAlink_cFv();
extern "C" void procWolfScreamWait__9daAlink_cFv();
extern "C" void getWolfLieMoveAnmSpeed__9daAlink_cFv();
extern "C" void getWolfLieMoveSpeed__9daAlink_cFv();
extern "C" void checkMidnaDisappearMode__9daAlink_cCFv();
extern "C" void checkWolfLieContinue__9daAlink_cFi();
extern "C" void checkNextActionWolfFromLie__9daAlink_cFv();
extern "C" void setWolfLieMoveVoice__9daAlink_cFi();
extern "C" void checkWolfLieCode__9daAlink_cFv();
extern "C" void procWolfLieStartInit__9daAlink_cFi();
extern "C" void procWolfLieStart__9daAlink_cFv();
extern "C" void procWolfLieMoveInit__9daAlink_cFi();
extern "C" void procWolfLieMove__9daAlink_cFv();
extern "C" void procWolfLieAutoMoveInit__9daAlink_cFiP4cXyz();
extern "C" void procWolfLieAutoMove__9daAlink_cFv();
extern "C" void setSpeedAndAngleSwimWolf__9daAlink_cFv();
extern "C" void getWolfSwimMoveAnmSpeed__9daAlink_cFv();
extern "C" void decideDoStatusSwimWolf__9daAlink_cFv();
extern "C" void procWolfSwimUpInit__9daAlink_cFv();
extern "C" void procWolfSwimUp__9daAlink_cFv();
extern "C" void procWolfSwimWaitInit__9daAlink_cFi();
extern "C" void procWolfSwimWait__9daAlink_cFv();
extern "C" void procWolfSwimMoveInit__9daAlink_cFv();
extern "C" void procWolfSwimMove__9daAlink_cFv();
extern "C" void procWolfSwimEndWaitInit__9daAlink_cFi();
extern "C" void procWolfSwimEndWait__9daAlink_cFv();
extern "C" void onWolfEnemyBiteAll__9daAlink_cFP10fopAc_ac_cQ29daPy_py_c9daPy_FLG2();
extern "C" void resetWolfEnemyBiteAll__9daAlink_cFv();
extern "C" void checkWolfEnemyThrowAction__9daAlink_cFv();
extern "C" void setWolfLockDomeModel__9daAlink_cFv();
extern "C" void setWolfBallModel__9daAlink_cFv();
extern "C" void resetWolfBallGrab__9daAlink_cFv();
extern "C" void checkWolfLockData__9daAlink_cFv();
extern "C" void checkWolfLock__9daAlink_cCFP10fopAc_ac_c();
extern "C" void cancelWolfLock__9daAlink_cFP10fopAc_ac_c();
extern "C" void getWolfLockActorEnd__9daAlink_cFv();
extern "C" void searchWolfLockEnemy__9daAlink_cFP10fopAc_ac_cPv();
extern "C" static void daAlink_searchWolfLockEnemy__FP10fopAc_ac_cPv();
extern "C" void checkWolfComboCnt__9daAlink_cFv();
extern "C" void checkWolfAttackAction__9daAlink_cFv();
extern "C" void setWolfEnemyThrowUpperAnime__9daAlink_cFQ29daAlink_c12daAlink_WANMf();
extern "C" void setWolfEnemyHangBitePos__9daAlink_cFP13fopEn_enemy_c();
extern "C" void setWolfBiteDamage__9daAlink_cFP13fopEn_enemy_c();
extern "C" void checkWolfLockAttackChargeState__9daAlink_cFv();
extern "C" void procWolfRollAttackChargeInit__9daAlink_cFv();
extern "C" void procWolfRollAttackCharge__9daAlink_cFv();
extern "C" void procWolfRollAttackMoveInit__9daAlink_cFv();
extern "C" void procWolfRollAttackMove__9daAlink_cFv();
extern "C" void procWolfJumpAttackInit__9daAlink_cFi();
extern "C" void procWolfJumpAttack__9daAlink_cFv();
extern "C" void procWolfJumpAttackKickInit__9daAlink_cFv();
extern "C" void procWolfJumpAttackKick__9daAlink_cFv();
extern "C" void procWolfJumpAttackSlideLandInit__9daAlink_cFiii();
extern "C" void procWolfJumpAttackSlideLand__9daAlink_cFv();
extern "C" void procWolfJumpAttackNormalLandInit__9daAlink_cFi();
extern "C" void procWolfJumpAttackNormalLand__9daAlink_cFv();
extern "C" void procWolfWaitAttackInit__9daAlink_cFi();
extern "C" void procWolfWaitAttack__9daAlink_cFv();
extern "C" void procWolfRollAttackInit__9daAlink_cFii();
extern "C" void procWolfRollAttack__9daAlink_cFv();
extern "C" void procWolfDownAttackInit__9daAlink_cFv();
extern "C" void procWolfDownAttack__9daAlink_cFv();
extern "C" void procWolfDownAtLandInit__9daAlink_cFP13fopEn_enemy_c();
extern "C" void procWolfDownAtLand__9daAlink_cFv();
extern "C" void procWolfDownAtMissLandInit__9daAlink_cFv();
extern "C" void procWolfDownAtMissLand__9daAlink_cFv();
extern "C" void procWolfLockAttackInit__9daAlink_cFi();
extern "C" void procWolfLockAttack__9daAlink_cFv();
extern "C" void procWolfLockAttackTurnInit__9daAlink_cFi();
extern "C" void procWolfLockAttackTurn__9daAlink_cFv();
extern "C" void procWolfAttackReverseInit__9daAlink_cFv();
extern "C" void procWolfAttackReverse__9daAlink_cFv();
extern "C" void procWolfEnemyThrowInit__9daAlink_cFi();
extern "C" void procWolfEnemyThrow__9daAlink_cFv();
extern "C" void procWolfEnemyHangBiteInit__9daAlink_cFv();
extern "C" void procWolfEnemyHangBite__9daAlink_cFv();
extern "C" void procWolfGrabUpInit__9daAlink_cFv();
extern "C" void procWolfGrabUp__9daAlink_cFv();
extern "C" void procWolfGrabPutInit__9daAlink_cFv();
extern "C" void procWolfGrabPut__9daAlink_cFv();
extern "C" void procWolfGrabThrowInit__9daAlink_cFv();
extern "C" void procWolfGrabThrow__9daAlink_cFv();
extern "C" void procWolfPushInit__9daAlink_cFv();
extern "C" void procWolfPush__9daAlink_cFv();
extern "C" static void daAlink_searchEnemyCargo__FP10fopAc_ac_cPv();
extern "C" void procWolfCargoCarryInit__9daAlink_cFv();
extern "C" void procWolfCargoCarry__9daAlink_cFv();
extern "C" void procWolfChainUpInit__9daAlink_cFv();
extern "C" void procWolfChainUp__9daAlink_cFv();
extern "C" void procWolfGanonCatchInit__9daAlink_cFv();
extern "C" void procWolfGanonCatch__9daAlink_cFv();
extern "C" void procWolfChainReadyInit__9daAlink_cFv();
extern "C" void procWolfChainReady__9daAlink_cFv();
extern "C" void procWolfChainWaitInit__9daAlink_cFv();
extern "C" void procWolfChainWait__9daAlink_cFv();
extern "C" void procWolfDigInit__9daAlink_cFv();
extern "C" void procWolfDig__9daAlink_cFv();
extern "C" void procWolfDigThroughInit__9daAlink_cFi();
extern "C" void procWolfDigThrough__9daAlink_cFv();
extern "C" void setSmellSave__9daAlink_cFv();
extern "C" void procWolfGetSmellInit__9daAlink_cFv();
extern "C" void procWolfGetSmell__9daAlink_cFv();
extern "C" void setArcName__9daAlink_cFi();
extern "C" void setShieldArcName__9daAlink_cFv();
extern "C" void setOriginalHeap__9daAlink_cFPP10JKRExpHeapUl();
extern "C" void setClothesChange__9daAlink_cFi();
extern "C" void setShieldChange__9daAlink_cFv();
extern "C" void loadModelDVD__9daAlink_cFv();
extern "C" void setShieldModel__9daAlink_cFv();
extern "C" void loadShieldModelDVD__9daAlink_cFv();
extern "C" void changeModelDataDirect__9daAlink_cFi();
extern "C" void changeModelDataDirectWolf__9daAlink_cFi();
extern "C" void initStatusWindow__9daAlink_cFv();
extern "C" void statusWindowExecute__9daAlink_cFPC4cXyzs();
extern "C" void statusWindowDraw__9daAlink_cFv();
extern "C" void resetStatusWindow__9daAlink_cFv();
extern "C" void __ct__12daAlinkHIO_cFv();
extern "C" void __dt__17daAlinkHIO_wolf_cFv();
extern "C" void __dt__16daAlinkHIO_cut_cFv();
extern "C" void __dt__12daAlinkHIO_cFv();
extern "C" void __dt__8dEyeHL_cFv();
extern "C" void __dt__18daPy_sightPacket_cFv();
extern "C" void __dt__16daPy_frameCtrl_cFv();
extern "C" void __ct__16daPy_frameCtrl_cFv();
extern "C" void __defctor__14daPy_anmHeap_cFv();
extern "C" void __dt__19mDoExt_AnmRatioPackFv();
extern "C" void __ct__19mDoExt_AnmRatioPackFv();
extern "C" void __dt__16dBgS_LinkRoofChkFv();
extern "C" void __dt__15dBgS_LinkGndChkFv();
extern "C" void __dt__13dBgS_LinkAcchFv();
extern "C" void __ct__8dCcD_CpsFv();
extern "C" void __ct__8dCcD_CylFv();
extern "C" void __dt__9cCcD_SttsFv();
extern "C" void __ct__16daPy_actorKeep_cFv();
extern "C" void onNoResetFlg2__9daPy_py_cFQ29daPy_py_c9daPy_FLG2();
extern "C" void offNoResetFlg0__9daPy_py_cFQ29daPy_py_c9daPy_FLG0();
extern "C" static void mDoAud_seStartLevel__FUlPC3VecUlSc();
extern "C" void checkEndResetFlg2__9daPy_py_cCFQ29daPy_py_c11daPy_ERFLG2();
extern "C" static void dComIfGp_setBottleStatus__FUcUc();
extern "C" void getSumouMode__9daPy_py_cCFv();
extern "C" void checkNoResetFlg3__9daPy_py_cCFQ29daPy_py_c9daPy_FLG3();
extern "C" void onCondition__11dEvt_info_cFUs();
extern "C" void __ct__8cM3dGPlaFv();
extern "C" void offCondition__11dEvt_info_cFUs();
extern "C" void checkShieldGet__9daPy_py_cFv();
extern "C" static void fopAcM_onSwitch__FPC10fopAc_ac_ci();
extern "C" void dComIfGs_isItemFirstBit__FUc(u8);
extern "C" static void dStage_stagInfo_GetSaveTbl__FP21stage_stag_info_class();
extern "C" static void dComIfGp_getStage__Fv();
extern "C" void checkEquipHeavyBoots__9daPy_py_cCFv();
extern "C" void fopAcM_GetName__FPv();
extern "C" void onNoResetFlg0__9daPy_py_cFQ29daPy_py_c9daPy_FLG0();
extern "C" void isOrderOK__14dEvt_control_cFv();
extern "C" static void dComIfGp_getEvent__Fv();
extern "C" static void dComIfGp_checkPlayerStatus0__FiUl();
extern "C" static void dComIfGp_checkPlayerStatus1__FiUl();
extern "C" void checkEndResetFlg1__9daPy_py_cCFQ29daPy_py_c11daPy_ERFLG1();
extern "C" static void dComIfGp_getEventManager__Fv();
extern "C" void offNoResetFlg1__9daPy_py_cFQ29daPy_py_c9daPy_FLG1();
extern "C" void offNoResetFlg2__9daPy_py_cFQ29daPy_py_c9daPy_FLG2();
extern "C" void setSpecialDemoType__11daPy_demo_cFv();
extern "C" void checkCommandCatch__11dEvt_info_cFv();
extern "C" void dComIfGs_isEventBit__FUs();
extern "C" void checkWolf__9daPy_py_cCFv();
extern "C" void checkSwordGet__9daPy_py_cFv();
extern "C" void checkResetFlg0__9daPy_py_cCFQ29daPy_py_c10daPy_RFLG0();
extern "C" void ChkGroundHit__9dBgS_AcchCFv();
extern "C" void checkNoResetFlg0__9daPy_py_cCFQ29daPy_py_c9daPy_FLG0();
extern "C" static void dComIfGp_getPlayerCameraID__Fi();
extern "C" static void dComIfGp_event_chkEventFlag__FUs();
extern "C" void checkCommandDoor__11dEvt_info_cFv();
extern "C" static void dComIfGp_evmng_getMyStaffId__FPCcP10fopAc_ac_ci();
extern "C" static void dComIfGp_event_runCheck__Fv();
extern "C" void checkNoResetFlg2__9daPy_py_cCFQ29daPy_py_c9daPy_FLG2();
extern "C" void checkMagneBootsOn__9daPy_py_cCFv();
extern "C" void dComIfGp_getHorseActor__Fv();
extern "C" void checkBoarSingleBattle__9daPy_py_cCFv();
extern "C" void checkEndResetFlg0__9daPy_py_cCFQ29daPy_py_c11daPy_ERFLG0();
extern "C" bool getMidnaAtnPos__9daPy_py_cCFv();
extern "C" void setMidnaMsgNum__9daPy_py_cFP10fopAc_ac_cUs();
extern "C" void getModelMtx__9daPy_py_cFv();
extern "C" void getInvMtx__9daPy_py_cFv();
extern "C" void getShadowTalkAtnPos__9daPy_py_cFv();
extern "C" void getLeftItemMatrix__9daPy_py_cFv();
extern "C" void getRightItemMatrix__9daPy_py_cFv();
extern "C" void getLeftHandMatrix__9daPy_py_cFv();
extern "C" void getRightHandMatrix__9daPy_py_cFv();
extern "C" void getLinkBackBone1Matrix__9daPy_py_cFv();
extern "C" void getWolfMouthMatrix__9daPy_py_cFv();
extern "C" void getWolfBackbone2Matrix__9daPy_py_cFv();
extern "C" bool getBottleMtx__9daPy_py_cFv();
extern "C" bool checkPlayerGuard__9daPy_py_cCFv();
extern "C" bool checkAutoJump__9daPy_py_cCFv();
extern "C" bool checkSideStep__9daPy_py_cCFv();
extern "C" bool checkWolfTriggerJump__9daPy_py_cCFv();
extern "C" bool checkGuardBreakMode__9daPy_py_cCFv();
extern "C" bool checkLv3Slide__9daPy_py_cCFv();
extern "C" bool checkWolfHowlDemoMode__9daPy_py_cCFv();
extern "C" bool checkChainBlockPushPull__9daPy_py_cFv();
extern "C" bool checkElecDamage__9daPy_py_cCFv();
extern "C" bool checkEmptyBottleSwing__9daPy_py_cCFv();
extern "C" bool checkBottleSwingMode__9daPy_py_cCFv();
extern "C" bool checkHawkWait__9daPy_py_cCFv();
extern "C" bool checkGoatThrow__9daPy_py_cCFv();
extern "C" bool checkGoatThrowAfter__9daPy_py_cCFv();
extern "C" bool checkWolfTagLockJump__9daPy_py_cCFv();
extern "C" bool checkWolfTagLockJumpLand__9daPy_py_cCFv();
extern "C" bool checkWolfRope__9daPy_py_cFv();
extern "C" bool checkWolfRopeHang__9daPy_py_cCFv();
extern "C" bool checkRollJump__9daPy_py_cCFv();
extern "C" bool checkGoronRideWait__9daPy_py_cCFv();
extern "C" bool checkWolfChain__9daPy_py_cCFv();
extern "C" bool checkWolfWait__9daPy_py_cCFv();
extern "C" bool checkWolfJumpAttack__9daPy_py_cCFv();
extern "C" bool checkWolfRSit__9daPy_py_cCFv();
extern "C" bool checkBubbleFly__9daPy_py_cCFv();
extern "C" bool checkBottleDrinkEnd__9daPy_py_cCFv();
extern "C" bool checkWolfDig__9daPy_py_cCFv();
extern "C" bool checkCutCharge__9daPy_py_cCFv();
extern "C" bool checkCutTurnCharge__9daPy_py_cCFv();
extern "C" bool checkCutLargeJumpCharge__9daPy_py_cCFv();
extern "C" bool getBokoFlamePos__9daPy_py_cFP4cXyz();
extern "C" bool checkComboCutTurn__9daPy_py_cCFv();
extern "C" bool checkClimbMove__9daPy_py_cCFv();
extern "C" bool checkGrassWhistle__9daPy_py_cCFv();
extern "C" bool checkBoarRun__9daPy_py_cCFv();
extern "C" bool checkFmChainPut__9daPy_py_cCFv();
extern "C" bool checkHorseElecDamage__9daPy_py_cCFv();
extern "C" void getBaseAnimeFrameRate__9daPy_py_cCFv();
extern "C" void getBaseAnimeFrame__9daPy_py_cCFv();
extern "C" void setAnimeFrame__9daPy_py_cFf();
extern "C" bool checkWolfLock__9daPy_py_cCFP10fopAc_ac_c();
extern "C" bool cancelWolfLock__9daPy_py_cFP10fopAc_ac_c();
extern "C" s32 getItemID__9daPy_py_cCFv();
extern "C" bool exchangeGrabActor__9daPy_py_cFP10fopAc_ac_c();
extern "C" bool setForceGrab__9daPy_py_cFP10fopAc_ac_cii();
extern "C" void setForcePutPos__9daPy_py_cFRC4cXyz();
extern "C" bool checkPlayerNoDraw__9daPy_py_cFv();
extern "C" bool checkRopeTag__9daPy_py_cFv();
extern "C" void voiceStart__9daPy_py_cFUl();
extern "C" void seStartOnlyReverb__9daPy_py_cFUl();
extern "C" void seStartOnlyReverbLevel__9daPy_py_cFUl();
extern "C" void setOutPower__9daPy_py_cFfsi();
extern "C" void setGrabCollisionOffset__9daPy_py_cFffP13cBgS_PolyInfo();
extern "C" void onMagneGrab__9daPy_py_cFff();
extern "C" bool getModelJointMtx__9daPy_py_cFUs();
extern "C" bool getHeadMtx__9daPy_py_cFv();
extern "C" bool setHookshotCarryOffset__9daPy_py_cFUiPC4cXyz();
extern "C" bool checkIronBallReturn__9daPy_py_cCFv();
extern "C" bool checkIronBallGroundStop__9daPy_py_cCFv();
extern "C" bool checkSingleBoarBattleSecondBowReady__9daPy_py_cCFv();
extern "C" bool checkPointSubWindowMode__9daPy_py_cCFv();
extern "C" void setClothesChange__9daPy_py_cFi();
extern "C" void setPlayerPosAndAngle__9daPy_py_cFPA4_f();
extern "C" void setPlayerPosAndAngle__9daPy_py_cFPC4cXyzPC5csXyz();
extern "C" void setPlayerPosAndAngle__9daPy_py_cFPC4cXyzsi();
extern "C" bool setThrowDamage__9daPy_py_cFsffiii();
extern "C" bool checkSetNpcTks__9daPy_py_cFP4cXyzii();
extern "C" bool setRollJump__9daPy_py_cFffs();
extern "C" void playerStartCollisionSE__9daPy_py_cFUlUl();
extern "C" void changeTextureAnime__9daPy_py_cFUsUsi();
extern "C" void cancelChangeTextureAnime__9daPy_py_cFv();
extern "C" void cancelDungeonWarpReadyNeck__9daPy_py_cFv();
extern "C" void onSceneChangeArea__9daPy_py_cFUcUcP10fopAc_ac_c();
extern "C" void onSceneChangeAreaJump__9daPy_py_cFUcUcP10fopAc_ac_c();
extern "C" void onSceneChangeDead__9daPy_py_cFUci();
extern "C" bool getSpinnerActor__9daPy_py_cFv();
extern "C" bool checkHorseRideNotReady__9daPy_py_cCFv();
extern "C" bool checkArrowChargeEnd__9daPy_py_cCFv();
extern "C" void getSearchBallScale__9daPy_py_cCFv();
extern "C" bool checkFastShotTime__9daPy_py_cFv();
extern "C" bool checkNoEquipItem__9daPy_py_cCFv();
extern "C" bool checkFireMaterial__9daPy_py_cCFv();
extern "C" bool checkKandelaarSwing__9daPy_py_cCFi();
extern "C" bool getBoardCutTurnOffsetAngleY__9daPy_py_cCFv();
extern "C" void getMagneHitPos__9daPy_py_cFv();
extern "C" void getMagneBootsTopVec__9daPy_py_cFv();
extern "C" bool checkUseKandelaar__9daPy_py_cFi();
extern "C" void setDkCaught__9daPy_py_cFP10fopAc_ac_c();
extern "C" void onPressedDamage__9daPy_py_cFRC4cXyzs();
extern "C" bool checkPriActorOwn__9daPy_py_cCFPC10fopAc_ac_c();
extern "C" bool onWolfEnemyBiteAll__9daPy_py_cFP10fopAc_ac_cQ29daPy_py_c9daPy_FLG2();
extern "C" bool checkWolfEnemyBiteAllOwn__9daPy_py_cCFPC10fopAc_ac_c();
extern "C" void setWolfEnemyHangBiteAngle__9daPy_py_cFs();
extern "C" void setKandelaarMtx__9daPy_py_cFPA4_fii();
extern "C" bool getStickAngleFromPlayerShape__9daPy_py_cCFPs();
extern "C" bool checkSpinnerPathMove__9daPy_py_cFv();
extern "C" bool checkSpinnerTriggerAttack__9daPy_py_cFv();
extern "C" void onSpinnerPathForceRemove__9daPy_py_cFv();
extern "C" bool getIronBallBgHit__9daPy_py_cCFv();
extern "C" bool getIronBallCenterPos__9daPy_py_cFv();
extern "C" bool checkCanoeFishingGetLeft__9daPy_py_cCFv();
extern "C" bool checkCanoeFishingGetRight__9daPy_py_cCFv();
extern "C" bool checkBeeChildDrink__9daPy_py_cCFv();
extern "C" void skipPortalObjWarp__9daPy_py_cFv();
extern "C" bool checkTreasureRupeeReturn__9daPy_py_cCFi();
extern "C" void setSumouReady__9daPy_py_cFP10fopAc_ac_c();
extern "C" bool checkAcceptDungeonWarpAlink__9daPy_py_cFi();
extern "C" bool getSumouCounter__9daPy_py_cCFv();
extern "C" bool checkSumouWithstand__9daPy_py_cCFv();
extern "C" void cancelGoronThrowEvent__9daPy_py_cFv();
extern "C" void setSumouGraspCancelCount__9daPy_py_cFi();
extern "C" void setSumouPushBackDirection__9daPy_py_cFs();
extern "C" void setSumouLoseHeadUp__9daPy_py_cFv();
extern "C" void getGiantPuzzleAimAngle__9daPy_py_cCFv();
extern "C" void setGoronSideMove__9daPy_py_cFP10fopAc_ac_c();
extern "C" void setCargoCarry__9daPy_py_cFP10fopAc_ac_c();
extern "C" bool getDpdFarFlg__9daPy_py_cCFv();
extern "C" bool getHookshotTopPos__9daPy_py_cFv();
extern "C" bool checkHookshotReturnMode__9daPy_py_cCFv();
extern "C" bool checkHookshotShootReturnMode__9daPy_py_cCFv();
extern "C" bool checkOctaIealHang__9daPy_py_cCFv();
extern "C" void cancelOctaIealHang__9daPy_py_cFv();
extern "C" void cancelDragonHangBackJump__9daPy_py_cFv();
extern "C" void setOctaIealWildHang__9daPy_py_cFv();
extern "C" bool checkDragonHangRide__9daPy_py_cCFv();
extern "C" void changeDragonActor__9daPy_py_cFP10fopAc_ac_c();
extern "C" bool getClothesChangeWaitTimer__9daPy_py_cCFv();
extern "C" bool getShieldChangeWaitTimer__9daPy_py_cCFv();
extern "C" bool getSwordChangeWaitTimer__9daPy_py_cCFv();
extern "C" bool checkMetamorphose__9daPy_py_cCFv();
extern "C" bool checkWolfDownAttackPullOut__9daPy_py_cCFv();
extern "C" bool checkBootsOrArmorHeavy__9daPy_py_cCFv();
extern "C" s32 getBottleOpenAppearItem__9daPy_py_cCFv();
extern "C" bool checkItemSwordEquip__9daPy_py_cCFv();
extern "C" void getSinkShapeOffset__9daPy_py_cCFv();
extern "C" bool checkSinkDead__9daPy_py_cCFv();
extern "C" bool checkHorseStart__9daPy_py_cFv();
extern "C" bool getWolfHowlMgrP__9daPy_py_cFv();
extern "C" bool checkWolfHowlSuccessAnime__9daPy_py_cCFv();
extern "C" bool checkCopyRodTopUse__9daPy_py_cFv();
extern "C" bool checkCopyRodEquip__9daPy_py_cCFv();
extern "C" bool checkCutJumpMode__9daPy_py_cCFv();
extern "C" void getZeldaActor__9daHorse_cFv();
extern "C" static void dComIfGp_getDoStatus__Fv();
extern "C" void __ct__4cXyzFfff(f32, f32, f32);
extern "C" static void dMeter2Info_offUseButton__Fi();
extern "C" void setLinkState__14Z2CreatureLinkFUc();
extern "C" void dComIfGs_getRupee__Fv();
extern "C" void dComIfGp_setItemRupeeCount__Fl(s32);
extern "C" static void dMeter2Info_setFloatingMessage__FUssb();
extern "C" void onForcePanic__9daMidna_cFv();
extern "C" void checkForceNormalColor__9daMidna_cCFv();
extern "C" void checkForceTiredColor__9daMidna_cCFv();
extern "C" void checkMidnaTired__9daMidna_cFv();
extern "C" void onNoServiceWait__9daMidna_cFv();
extern "C" void setControllActorData__8daCrod_cFv();
extern "C" void func_80141ACC(void* _this, fopAc_ac_c const*, daObjMovebox::Act_c::Prm_e,
                              daObjMovebox::Act_c::Prm_e);
extern "C" int func_80141AE8(u8*);
extern "C" void __sinit_d_a_alink_cpp();
extern "C" static void func_801446D4();
extern "C" static void func_801446DC();
extern "C" static void func_801446E4();
extern "C" static void func_801446EC();
extern "C" static void func_801446F4();
extern "C" static void func_801446FC();
extern "C" static void func_80144704();
extern "C" static void func_8014470C();
extern "C" static void func_80144714();
extern "C" static void func_8014471C();
extern "C" u8 const m__19daAlinkHIO_basic_c0[88];
extern "C" u8 const m__18daAlinkHIO_move_c0[88];
extern "C" u8 const m__21daAlinkHIO_atnMove_c0[84];
extern "C" u8 const m__26daAlinkHIO_noActAtnMove_c0[84];
extern "C" u8 const m__23daAlinkHIO_frontRoll_c0[112];
extern "C" u8 const m__22daAlinkHIO_backJump_c0[56];
extern "C" u8 const m__22daAlinkHIO_sideStep_c0[104];
extern "C" u8 const m__19daAlinkHIO_slide_c0[120];
extern "C" u8 const m__20daAlinkHIO_cutNmV_c0[32];
extern "C" u8 const m__20daAlinkHIO_cutNmL_c0[32];
extern "C" u8 const m__20daAlinkHIO_cutNmR_c0[32];
extern "C" u8 const m__21daAlinkHIO_cutNmSL_c0[32];
extern "C" u8 const m__21daAlinkHIO_cutNmSR_c0[32];
extern "C" u8 const m__20daAlinkHIO_cutFnL_c0[44];
extern "C" u8 const m__20daAlinkHIO_cutFnV_c0[44];
extern "C" u8 const m__20daAlinkHIO_cutFnS_c0[44];
extern "C" u8 const m__21daAlinkHIO_cutFnSl_c0[44];
extern "C" u8 const m__21daAlinkHIO_cutFnSm_c0[44];
extern "C" u8 const m__20daAlinkHIO_cutFnR_c0[44];
extern "C" u8 const m__21daAlinkHIO_cutFnJU_c0[84];
extern "C" u8 const m__21daAlinkHIO_cutJump_c0[68];
extern "C" u8 const m__21daAlinkHIO_cutTurn_c0[152];
extern "C" u8 const m__21daAlinkHIO_hoCutLA_c0[32];
extern "C" u8 const m__21daAlinkHIO_hoCutLB_c0[32];
extern "C" u8 const m__21daAlinkHIO_hoCutRA_c0[32];
extern "C" u8 const m__21daAlinkHIO_hoCutRB_c0[32];
extern "C" u8 const m__25daAlinkHIO_hoCutCharge_c0[84];
extern "C" u8 const m__20daAlinkHIO_cutDaL_c0[28];
extern "C" u8 const m__20daAlinkHIO_cutDaR_c0[28];
extern "C" u8 const m__25daAlinkHIO_cutDaCharge_c0[28];
extern "C" u8 const m__21daAlinkHIO_cutDown_c0[116];
extern "C" u8 const m__21daAlinkHIO_cutHead_c0[96];
extern "C" u8 const m__26daAlinkHIO_cutLargeJump_c0[116];
extern "C" u8 const m__17daAlinkHIO_cut_c0[156];
extern "C" u8 const m__21daAlinkHIO_gAtPush_c0[36];
extern "C" u8 const m__21daAlinkHIO_gAtKick_c0[36];
extern "C" u8 const m__22daAlinkHIO_turnMove_c0[44];
extern "C" u8 const m__19daAlinkHIO_guard_c0[128];
extern "C" u8 const m__20daAlinkHIO_crouch_c0[76];
extern "C" u8 const m__22daAlinkHIO_autoJump_c0[180];
extern "C" u8 const m__23daAlinkHIO_smallJump_c0[72];
extern "C" u8 const m__23daAlinkHIO_wallCatch_c0[84];
extern "C" u8 const m__22daAlinkHIO_wallFall_c0[40];
extern "C" u8 const m__22daAlinkHIO_wallMove_c0[20];
extern "C" u8 const m__22daAlinkHIO_wallHang_c0[28];
extern "C" u8 const m__22daAlinkHIO_pushpull_c0[60];
extern "C" u8 const m__23daAlinkHIO_damNormal_c0[100];
extern "C" u8 const m__22daAlinkHIO_damLarge_c0[188];
extern "C" u8 const m__21daAlinkHIO_damHuge_c0[188];
extern "C" u8 const m__22daAlinkHIO_damHorse_c0[44];
extern "C" u8 const m__21daAlinkHIO_damFall_c0[72];
extern "C" u8 const m__23daAlinkHIO_damCaught_c0[36];
extern "C" u8 const m__21daAlinkHIO_damSwim_c0[140];
extern "C" u8 const m__20daAlinkHIO_damage_c0[88];
extern "C" u8 const m__19daAlinkHIO_horse_c0[108];
extern "C" u8 const m__19daAlinkHIO_canoe_c0[72];
extern "C" u8 const m__17daAlinkHIO_bow_c0[112];
extern "C" u8 const m__18daAlinkHIO_boom_c0[76];
extern "C" u8 const m__18daAlinkHIO_bomb_c0[76];
extern "C" u8 const m__21daAlinkHIO_huLight_c0[28];
extern "C" u8 const m__23daAlinkHIO_kandelaar_c0[80];
extern "C" u8 const m__21daAlinkHIO_fmChain_c0[40];
extern "C" u8 const m__24daAlinkHIO_magneBoots_c0[76];
extern "C" u8 const m__20daAlinkHIO_pickUp_c0[48];
extern "C" u8 const m__19daAlinkHIO_board_c0[156];
extern "C" u8 const m__20daAlinkHIO_bottle_c0[180];
extern "C" u8 const m__22daAlinkHIO_hookshot_c0[112];
extern "C" u8 const m__21daAlinkHIO_spinner_c0[64];
extern "C" u8 const m__22daAlinkHIO_ironBall_c0[140];
extern "C" u8 const m__21daAlinkHIO_copyRod_c0[56];
extern "C" u8 const m__21daAlinkHIO_zwLight_c0[28];
extern "C" u8 const m__18daAlinkHIO_item_c0[60];
extern "C" u8 const m__20daAlinkHIO_ladder_c0[112];
extern "C" u8 const m__22daAlinkHIO_roofHang_c0[76];
extern "C" u8 const m__18daAlinkHIO_grab_c0[228];
extern "C" u8 const m__18daAlinkHIO_swim_c0[252];
extern "C" u8 const m__20daAlinkHIO_wlMove_c0[256];
extern "C" u8 const m__23daAlinkHIO_wlMoveNoP_c0[72];
extern "C" u8 const m__23daAlinkHIO_wlAtnMove_c0[56];
extern "C" u8 const m__24daAlinkHIO_wlSideStep_c0[104];
extern "C" u8 const m__24daAlinkHIO_wlBackJump_c0[56];
extern "C" u8 const m__20daAlinkHIO_wlHowl_c0[96];
extern "C" u8 const m__24daAlinkHIO_wlAutoJump_c0[124];
extern "C" u8 const m__20daAlinkHIO_wlPush_c0[20];
extern "C" u8 const m__19daAlinkHIO_wlLie_c0[76];
extern "C" u8 const m__21daAlinkHIO_wlLight_c0[28];
extern "C" u8 const m__24daAlinkHIO_wlWallHang_c0[156];
extern "C" u8 const m__25daAlinkHIO_wlDamNormal_c0[96];
extern "C" u8 const m__24daAlinkHIO_wlDamLarge_c0[108];
extern "C" u8 const m__23daAlinkHIO_wlDamHuge_c0[108];
extern "C" u8 const m__23daAlinkHIO_wlDamFall_c0[64];
extern "C" u8 const m__25daAlinkHIO_wlDamCaught_c0[16];
extern "C" u8 const m__22daAlinkHIO_wlDamage_c0[44];
extern "C" u8 const m__21daAlinkHIO_wlSlide_c0[124];
extern "C" u8 const m__20daAlinkHIO_wlRope_c0[56];
extern "C" u8 const m__22daAlinkHIO_wlAtWaLr_c0[60];
extern "C" u8 const m__22daAlinkHIO_wlAtWaSc_c0[60];
extern "C" u8 const m__22daAlinkHIO_wlAtWaTl_c0[60];
extern "C" u8 const m__22daAlinkHIO_wlAtRoll_c0[32];
extern "C" u8 const m__23daAlinkHIO_wlAtNjump_c0[60];
extern "C" u8 const m__23daAlinkHIO_wlAtCjump_c0[100];
extern "C" u8 const m__22daAlinkHIO_wlAtLand_c0[64];
extern "C" u8 const m__22daAlinkHIO_wlAtDown_c0[156];
extern "C" u8 const m__22daAlinkHIO_wlAtLock_c0[84];
extern "C" u8 const m__22daAlinkHIO_wlAtBite_c0[92];
extern "C" u8 const m__22daAlinkHIO_wlAttack_c0[56];
extern "C" u8 const m__21daAlinkHIO_wlPoint_c0[124];
extern "C" u8 const m__21daAlinkHIO_wlChain_c0[92];
extern "C" u8 const m__20daAlinkHIO_wlSwim_c0[168];
extern "C" u8 const m__20daAlinkHIO_wlGrab_c0[100];
extern "C" u8 const m__20daAlinkHIO_wlBall_c0[56];
extern "C" u8 const m__18daAlinkHIO_wolf_c0[24];
extern "C" u8 const m_mainBckShield__9daAlink_c[80];
extern "C" u8 const m_mainBckSword__9daAlink_c[20];
extern "C" u8 const m_mainBckFishing__9daAlink_c[112];
extern "C" u8 const m_anmDataTable__9daAlink_c[4968];
extern "C" void* const m_wlAnmDataTable__9daAlink_c[294];
extern "C" u8 const m_faceTexDataTable__9daAlink_c[652];
extern "C" u8 const m_handLeftOutSidePos__9daAlink_c[12];
extern "C" u8 const m_handRightOutSidePos__9daAlink_c[12];
extern "C" u8 const m_handLeftInSidePos__9daAlink_c[12];
extern "C" u8 const m_handRightInSidePos__9daAlink_c[12];
extern "C" extern char const* const d_a_d_a_alink__stringBase0;
extern "C" u8 m_procInitTable__9daAlink_c[5632];
extern "C" u8 m_demoInitTable__9daAlink_c[1140];
extern "C" u8 m_fEffParamProc__9daAlink_c[72];

//
// External References:
//

extern "C" void __dt__4cXyzFv();
extern "C" s32 getAtnActorID__9daPy_py_cCFv();
extern "C" void mDoMtx_XYZrotM__FPA4_fsss();
extern "C" void mDoMtx_ZXYrotS__FPA4_fsss();
extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void mDoMtx_XrotS__FPA4_fs();
extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotS__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void mDoMtx_QuatConcat__FPC10QuaternionPC10QuaternionP10Quaternion();
extern "C" void mDoMtx_MtxToRot__FPA4_CfP5csXyz();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void transM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotS__14mDoMtx_stack_cFRC5csXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void quatM__14mDoMtx_stack_cFPC10Quaternion();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb();
extern "C" void changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform();
extern "C" void entry__13mDoExt_bckAnmFP12J3DModelDataf();
extern "C" void init__13mDoExt_blkAnmFP13J3DDeformDataP13J3DAnmClusteriifss();
extern "C" void mDoExt_modelEntryDL__FP8J3DModel();
extern "C" void __ct__13J3DGXColorS10Fv();
extern "C" void mDoExt_getGameHeap__Fv();
extern "C" void mDoExt_destroyExpHeap__FP10JKRExpHeap();
extern "C" void mDoExt_setCurrentHeap__FP7JKRHeap();
extern "C" void initOldFrameMorf__22mDoExt_MtxCalcOldFrameFfUsUs();
extern "C" void __ct__4cXyzFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void mDoLib_project__FP3VecP3Vec();
extern "C" void mDoLib_pos2camera__FP3VecP3Vec();
extern "C" void draw__19JPAParticleCallBackFP14JPABaseEmitterP15JPABaseParticle();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__5csXyzFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Executor__FPFPvPv_iPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_setStageLayer__FPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc();
extern "C" void fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_seenActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderTalkEvent__FP10fopAc_ac_cP10fopAc_ac_cUsUs();
extern "C" void fopAcM_orderTalkItemBtnEvent__FUsP10fopAc_ac_cP10fopAc_ac_cUsUs();
extern "C" void fopAcM_orderDoorEvent__FP10fopAc_ac_cP10fopAc_ac_cUsUs();
extern "C" void fopAcM_orderCatchEvent__FP10fopAc_ac_cP10fopAc_ac_cUsUs();
extern "C" void fopAcM_orderOtherEvent__FP10fopAc_ac_cPCcUsUsUs();
extern "C" void fopAcM_orderOtherEvent__FP10fopAc_ac_cP10fopAc_ac_cPCcUsUsUs();
extern "C" void fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs();
extern "C" void fopAcM_orderTreasureEvent__FP10fopAc_ac_cP10fopAc_ac_cUsUs();
extern "C" void fopAcM_getTalkEventPartner__FPC10fopAc_ac_c();
extern "C" void fopAcM_getItemEventPartner__FPC10fopAc_ac_c();
extern "C" void fopAcM_getEventPartner__FPC10fopAc_ac_c();
extern "C" void fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz();
extern "C" void fopAcM_createItemForSimpleDemo__FPC4cXyziiPC5csXyzPC4cXyzff();
extern "C" void fopAcM_setCarryNow__FP10fopAc_ac_ci();
extern "C" void fopAcM_cancelCarryNow__FP10fopAc_ac_c();
extern "C" void fopAcM_getWaterY__FPC4cXyzPf();
extern "C" void fpoAcM_relativePos__FPC10fopAc_ac_cPC4cXyzP4cXyz();
extern "C" void fopAcM_getWaterStream__FPC4cXyzRC13cBgS_PolyInfoP4cXyzPii();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" void fopAcM_getPolygonAngle__FPC8cM3dGPlas();
extern "C" void lineCheck__11fopAcM_lc_cFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void waterCheck__11fopAcM_wt_cFPC4cXyz();
extern "C" void onFrollCrashFlg__9daPy_py_cFUci();
extern "C" bool checkWolfDash__9daPy_py_cCFv();
extern "C" bool checkFrontRoll__9daPy_py_cCFv();
extern "C" bool checkHorseRide__9daPy_py_cCFv();
extern "C" s32 getGrabActorID__9daPy_py_cCFv();
extern "C" void fopOvlpM_IsPeek__Fv();
extern "C" void fopKyM_create__FsiP4cXyzP4cXyzPFPv_i();
extern "C" void fopKyM_createWpillar__FPC4cXyzfi();
extern "C" void fopMsgM_SearchByID__FUi();
extern "C" void fopMsgM_messageSet__FUlUl();
extern "C" void fpcM_IsCreating__FUi();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dStage_RoomCheck__FP11cBgS_GndChk();
extern "C" void dStage_changeSceneExitId__FR13cBgS_PolyInfofUlScs();
extern "C" void dStage_changeScene__FifUlScsi();
extern "C" void dStage_restartRoom__FUlUli();
extern "C" void dComIfGp_checkItemGet__FUci();
extern "C" void getLayerNo__14dComIfG_play_cFi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCcP7JKRHeap();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGp_setNextStage__FPCcsScScfUliScsii();
extern "C" void dComIfGs_isOneZoneSwitch__Fii();
extern "C" void dComIfGs_getMaxLifeGauge__Fv();
extern "C" void dComIfGp_getSelectItem__Fi();
extern "C" s32 dComIfGs_getBottleMax__Fv();
extern "C" void dComIfGp_getSelectItemNum__Fi();
extern "C" void dComIfGp_setSelectItemNum__Fis();
extern "C" void dComIfGp_addSelectItemNum__Fis();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void dComIfGs_setSelectEquipClothes__FUc();
extern "C" void dComIfGs_getWarpStageName__Fv();
extern "C" void dComIfGs_getWarpPlayerPos__Fv();
extern "C" void dComIfGs_getWarpPlayerAngleY__Fv();
extern "C" void dComIfGs_getWarpRoomNo__Fv();
extern "C" void dComIfGs_Wolf_Change_Check__Fv();
extern "C" void dComIfGs_PolyDamageOff_Check__Fv();
extern "C" void dComIfGp_TargetWarpPt_set__FUc();
extern "C" void dComIfGp_TargetWarpPt_get__Fv();
extern "C" void dComIfGp_TransportWarp_check__Fv();
extern "C" void entry__10daMirror_cFP8J3DModel();
extern "C" void checkMagnetCode__12daTagMagne_cFR13cBgS_PolyInfo();
extern "C" void getPlayerNo__11daTagMist_cFv();
extern "C" void getRupeeMax__21dSv_player_status_a_cCFv();
extern "C" void isTransformLV__21dSv_player_status_b_cCFi();
extern "C" void setItem__17dSv_player_item_cFiUc();
extern "C" void setBottleItemIn__17dSv_player_item_cFUcUc();
extern "C" void setEquipBottleItemIn__17dSv_player_item_cFUcUc();
extern "C" void setEquipBottleItemEmpty__17dSv_player_item_cFUc();
extern "C" void checkBottle__17dSv_player_item_cFUc();
extern "C" void setBaitItem__17dSv_player_item_cFUc();
extern "C" void isFirstBit__21dSv_player_get_item_cCFUc();
extern "C" void getLightDropNum__16dSv_light_drop_cCFUc();
extern "C" void isDungeonItem__12dSv_memBit_cCFi();
extern "C" void onEventBit__11dSv_event_cFUs();
extern "C" void offEventBit__11dSv_event_cFUs();
extern "C" void isEventBit__11dSv_event_cCFUs();
extern "C" void isSwitch__12dSv_danBit_cCFi();
extern "C" void setRoom__13dSv_restart_cFRC4cXyzsSc();
extern "C" void set__17dSv_turnRestart_cFRC4cXyzsScUl();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void offSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void __ct__9dJntCol_cFv();
extern "C" void init__9dJntCol_cFP10fopAc_ac_cPC13dJntColData_cP8J3DModeli();
extern "C" void getHitmarkPosAndAngle__9dJntCol_cCFPC4cXyzPC5csXyzP4cXyzP5csXyzi();
extern "C" void getItemNo__12daItemBase_cFv();
extern "C" void hide__12daItemBase_cFv();
extern "C" void show__12daItemBase_cFv();
extern "C" void dead__12daItemBase_cFv();
extern "C" void checkWait__10e_wb_classFv();
extern "C" void setPlayerRideNow__10e_wb_classFv();
extern "C" void setPlayerRide__10e_wb_classFv();
extern "C" void getOff__10e_wb_classFv();
extern "C" void checkDownDamage__10e_wb_classFv();
extern "C" void checkNormalRideMode__10e_wb_classCFv();
extern "C" void setRunRideMode__10e_wb_classFv();
extern "C" void getPrm_Morf__13dDemo_actor_cFv();
extern "C" void getDemoIDData__13dDemo_actor_cFPiPiPiPUsPUc();
extern "C" void getActor__14dDemo_object_cFUc();
extern "C" void setBranchId__7dDemo_cFUss();
extern "C" void onWarpMaterial__11dRes_info_cFP12J3DModelData();
extern "C" void offWarpMaterial__11dRes_info_cFP12J3DModelData();
extern "C" void setWarpSRT__11dRes_info_cFP12J3DModelDataRC4cXyzff();
extern "C" void loaderBasicBmd__11dRes_info_cFUlPv();
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
extern "C" void getResInfo__14dRes_control_cFPCcP11dRes_info_ci();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci();
extern "C" void getIDRes__14dRes_control_cFPCcUsP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void reset__14dEvt_control_cFPv();
extern "C" void dEv_noFinishSkipProc__FPvi();
extern "C" void setSkipProc__14dEvt_control_cFPvPFPvi_ii();
extern "C" void compulsory__14dEvt_control_cFPvPCcUs();
extern "C" void convPId__14dEvt_control_cFUi();
extern "C" void setPtI_Id__14dEvt_control_cFUi();
extern "C" void setPtD__14dEvt_control_cFPv();
extern "C" void setStartDemo__18dEvent_exception_cFi();
extern "C" void setObjectArchive__16dEvent_manager_cFPc();
extern "C" void orderStartDemo__16dEvent_manager_cFv();
extern "C" void getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc();
extern "C" void startCheckOld__16dEvent_manager_cFPCc();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getMyNowCutName__16dEvent_manager_cFi();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void setGoal__16dEvent_manager_cFP4cXyz();
extern "C" void getGoal__16dEvent_manager_cFv();
extern "C" void getRunEventName__16dEvent_manager_cFv();
extern "C" void checkStartDemo__16dEvent_manager_cFv();
extern "C" void forceOnEventMove__Q213dPa_control_c7level_cFUl();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl();
extern "C" void
setWaterRipple__13dPa_control_cFPUlR13cBgS_PolyInfoPC4cXyzfPC12dKy_tevstr_cPC4cXyzSc();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void getPolyColor__13dPa_control_cFR13cBgS_PolyInfoiP8_GXColorP8_GXColorPUcPf();
extern "C" void
setPoly__13dPa_control_cFUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
setPoly__13dPa_control_cFUlUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz();
extern "C" void setOldPosP__22dPa_hermiteEcallBack_cFPC4cXyzPC4cXyz();
extern "C" void init__7dPaPo_cFP9dBgS_Acchff();
extern "C" void setEffectCenter__7dPaPo_cFPC12dKy_tevstr_cPC4cXyzUlUlPC4cXyzPC5csXyzPC4cXyzScff();
extern "C" void
setEffectFour__8dPaPoF_cFPC12dKy_tevstr_cPC4cXyzUlUlPC4cXyzPC4cXyzPC4cXyzPC4cXyzPC4cXyzPC5csXyzPC4cXyzScff();
extern "C" void clearFourAllID__8dPaPoF_cFv();
extern "C" void dPath_GetRoomPath__Fii();
extern "C" void addReal__21dDlst_shadowControl_cFUlP8J3DModel();
extern "C" void newData__13dDlst_peekZ_cFssPUl();
extern "C" void entryZSortXluDrawList__12dDlst_list_cFP13J3DDrawBufferP9J3DPacketR4cXyz();
extern "C" void dKyw_get_AllWind_vec__FP4cXyzP4cXyzPf();
extern "C" bool getKandelaarFlamePos__9daPy_py_cFv();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void StartQuake__12dVibration_cFii4cXyz();
extern "C" void StopQuake__12dVibration_cFi();
extern "C" void GetLockonList__12dAttention_cFl();
extern "C" void getActionBtnB__12dAttention_cFv();
extern "C" void getActionBtnXY__12dAttention_cFv();
extern "C" void LockonTarget__12dAttention_cFl();
extern "C" void LockonTruth__12dAttention_cFv();
extern "C" void getActor__10dAttList_cFv();
extern "C" void convPId__10dAttHint_cFUi();
extern "C" void convPId__11dAttCatch_cFUi();
extern "C" void convPId__10dAttLook_cFUi();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void GetActorPointer__4cBgSCFi();
extern "C" void GetBgWBasePointer__4cBgSCFRC13cBgS_PolyInfo();
extern "C" void ChkPolySafe__4cBgSFRC13cBgS_PolyInfo();
extern "C" void GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla();
extern "C" void GetTriPnt__4cBgSCFRC13cBgS_PolyInfoP4cXyzP4cXyzP4cXyz();
extern "C" void ChkMoveBG__4dBgSFRC13cBgS_PolyInfo();
extern "C" void ChkMoveBG_NoDABg__4dBgSFRC13cBgS_PolyInfo();
extern "C" void GetExitId__4dBgSFRC13cBgS_PolyInfo();
extern "C" void GetPolyColor__4dBgSFRC13cBgS_PolyInfo();
extern "C" void GetHorseNoEntry__4dBgSFRC13cBgS_PolyInfo();
extern "C" void GetSpecialCode__4dBgSFRC13cBgS_PolyInfo();
extern "C" void GetMagnetCode__4dBgSFRC13cBgS_PolyInfo();
extern "C" void GetMonkeyBarsCode__4dBgSFRC13cBgS_PolyInfo();
extern "C" void GetWallCode__4dBgSFRC13cBgS_PolyInfo();
extern "C" void GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo();
extern "C" void GetPolyAtt1__4dBgSFRC13cBgS_PolyInfo();
extern "C" void GetGroundCode__4dBgSFRC13cBgS_PolyInfo();
extern "C" void GetRoomPathId__4dBgSFRC13cBgS_PolyInfo();
extern "C" void GetGrpSoundId__4dBgSFRC13cBgS_PolyInfo();
extern "C" void GetRoomId__4dBgSFRC13cBgS_PolyInfo();
extern "C" void GetPolyAttackThrough__4dBgSFRC13cBgS_PolyInfo();
extern "C" void ChkPolyHSStick__4dBgSFRC13cBgS_PolyInfo();
extern "C" void RoofChk__4dBgSFP12dBgS_RoofChk();
extern "C" void MoveBgCrrPos__4dBgSFRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyzbb();
extern "C" void MoveBgTransPos__4dBgSFRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void
PushPullCallBack__4dBgSFRC13cBgS_PolyInfoP10fopAc_ac_csQ29dBgW_Base13PushPullLabel();
extern "C" void dBgS_CheckBWallPoly__FRC13cBgS_PolyInfo();
extern "C" void dBgS_CheckBGroundPoly__FRC13cBgS_PolyInfo();
extern "C" void dBgS_GetNY__FRC13cBgS_PolyInfo();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWallR__12dBgS_AcchCirFf();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void Set__9dBgS_AcchFP10fopAc_ac_ciP12dBgS_AcchCir();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void SetGndThinCellingOff__9dBgS_AcchFv();
extern "C" void ClrGndThinCellingOff__9dBgS_AcchFv();
extern "C" void OnWallSort__9dBgS_AcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" bool checkPlayerFly__9daPy_py_cCFv();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void __ct__14dBgS_ObjLinChkFv();
extern "C" void __dt__14dBgS_ObjLinChkFv();
extern "C" void __ct__15dBgS_LinkLinChkFv();
extern "C" void __dt__15dBgS_LinkLinChkFv();
extern "C" void __ct__16dBgS_ArrowLinChkFv();
extern "C" void __dt__16dBgS_ArrowLinChkFv();
extern "C" void __ct__20dBgS_BoomerangLinChkFv();
extern "C" void __dt__20dBgS_BoomerangLinChkFv();
extern "C" void __ct__15dBgS_RopeLinChkFv();
extern "C" void __dt__15dBgS_RopeLinChkFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void ClrObj__16dBgS_PolyPassChkFv();
extern "C" void SetLink__16dBgS_PolyPassChkFv();
extern "C" void ClrLink__16dBgS_PolyPassChkFv();
extern "C" void SetBomb__16dBgS_PolyPassChkFv();
extern "C" void ClrBomb__16dBgS_PolyPassChkFv();
extern "C" void SetStatue__16dBgS_PolyPassChkFv();
extern "C" void ClrStatue__16dBgS_PolyPassChkFv();
extern "C" void SetIronBall__16dBgS_PolyPassChkFv();
extern "C" void __ct__12dBgS_RoofChkFv();
extern "C" void __dt__12dBgS_RoofChkFv();
extern "C" void GetAc__22dCcD_GAtTgCoCommonBaseFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void ResetAtHit__12dCcD_GObjInfFv();
extern "C" void GetAtHitGObj__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void ResetTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitGObj__12dCcD_GObjInfFv();
extern "C" void GetTgHitObjSe__12dCcD_GObjInfFv();
extern "C" void getHitSeID__12dCcD_GObjInfFUci();
extern "C" void ChkCoHit__12dCcD_GObjInfFv();
extern "C" void ResetCoHit__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CpsFRC11dCcD_SrcCps();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void StartCAt__8dCcD_CylFR4cXyz();
extern "C" void MoveCAt__8dCcD_CylFR4cXyz();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void StartCAt__8dCcD_SphFR4cXyz();
extern "C" void MoveCAt__8dCcD_SphFR4cXyz();
extern "C" void __dt__8dCcD_CylFv();
extern "C" void __dt__8dCcD_CpsFv();
extern "C" void Set__12dCcMassS_MngFP8cCcD_ObjUc();
extern "C" bool checkCutJumpCancelTurn__9daPy_py_cCFv();
extern "C" void StartEventCamera__9dCamera_cFiie();
extern "C" void EndEventCamera__9dCamera_cFi();
extern "C" void abs__4cXyzCFv();
extern "C" void checkMidnaRide__9daPy_py_cCFv();
extern "C" void __as__4cXyzFRC4cXyz();
extern "C" void __ct__4cXyzFRC4cXyz();
extern "C" bool checkCanoeRide__9daPy_py_cCFv();
extern "C" bool checkBoardRide__9daPy_py_cCFv();
extern "C" bool checkSpinnerRide__9daPy_py_cCFv();
extern "C" bool checkBoarRide__9daPy_py_cCFv();
extern "C" void getShadowTalkAtnPos__9daAlink_cFv();
extern "C" void execItemGet__FUc();
extern "C" void checkItemGet__FUci();
extern "C" void entry__8dEyeHL_cFP12J3DModelDataPCc();
extern "C" void remove__8dEyeHL_cFv();
extern "C" void getActorP__18daNpcT_ActorMngr_cFv();
extern "C" void daNpcF_getPlayerInfoFromPlayerList__FiiR4cXyzR5csXyz();
extern "C" void checkAnmEnd__16daPy_frameCtrl_cFv();
extern "C" void updateFrame__16daPy_frameCtrl_cFv();
extern "C" void setFrameCtrl__16daPy_frameCtrl_cFUcssff();
extern "C" void setParamData__9daPy_py_cFiiii();
extern "C" void checkFishingRodItem__9daPy_py_cFi();
extern "C" void checkBombItem__9daPy_py_cFi();
extern "C" void checkBottleItem__9daPy_py_cFi();
extern "C" void checkDrinkBottleItem__9daPy_py_cFi();
extern "C" void checkOilBottleItem__9daPy_py_cFi();
extern "C" void checkOpenBottleItem__9daPy_py_cFi();
extern "C" void checkBowItem__9daPy_py_cFi();
extern "C" void checkHookshotItem__9daPy_py_cFi();
extern "C" void checkTradeItem__9daPy_py_cFi();
extern "C" void checkDungeonWarpItem__9daPy_py_cFi();
extern "C" void setActor__16daPy_actorKeep_cFv();
extern "C" void setData__16daPy_actorKeep_cFP10fopAc_ac_c();
extern "C" void clearData__16daPy_actorKeep_cFv();
extern "C" void __ct__14daPy_anmHeap_cFUl();
extern "C" void __dt__14daPy_anmHeap_cFv();
extern "C" void mallocBuffer__14daPy_anmHeap_cFv();
extern "C" void createHeap__14daPy_anmHeap_cFQ214daPy_anmHeap_c16daAlinkHEAP_TYPE();
extern "C" void loadDataIdx__14daPy_anmHeap_cFUs();
extern "C" void loadDataPriIdx__14daPy_anmHeap_cFUs();
extern "C" void loadDataDemoRID__14daPy_anmHeap_cFUsUs();
extern "C" void setAnimeHeap__14daPy_anmHeap_cFv();
extern "C" void draw__18daPy_sightPacket_cFv();
extern "C" void setSight__18daPy_sightPacket_cFv();
extern "C" void setSightImage__18daPy_sightPacket_cFP7ResTIMG();
extern "C" void checkMasterSwordEquip__9daPy_py_cFv();
extern "C" void checkWoodShieldEquip__9daPy_py_cFv();
extern "C" void checkCarryStartLightBallA__9daPy_py_cFv();
extern "C" void checkCarryStartLightBallB__9daPy_py_cFv();
extern "C" void daPy_addCalcShort__FPsssss();
extern "C" void Start__9dCamera_cFv();
extern "C" void Stop__9dCamera_cFv();
extern "C" void ChangeModeOK__9dCamera_cFl();
extern "C" void SetTrimTypeForce__9dCamera_cFl();
extern "C" void GetCameraTypeFromCameraName__9dCamera_cFPCc();
extern "C" void GetForceLockOnActor__9dCamera_cFv();
extern "C" void dCam_getControledAngleY__FP12camera_class();
extern "C" void dCam_getBody__Fv();
extern "C" void d_GameOver_Create__FUc();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_setLight_again__Fv();
extern "C" void dKy_plight_set__FP15LIGHT_INFLUENCE();
extern "C" void dKy_plight_cut__FP15LIGHT_INFLUENCE();
extern "C" void dKy_Itemgetcol_chg_on__Fv();
extern "C" void dKy_Sound_set__F4cXyziUii();
extern "C" void dKy_SordFlush_set__F4cXyzi();
extern "C" void dKy_GxFog_tevstr_set__FP12dKy_tevstr_c();
extern "C" void dKy_WolfEyeLight_set__FP4cXyzfffP8_GXColorfUcUc();
extern "C" void dKy_pol_efftype_get__FPC13cBgS_PolyInfo();
extern "C" void dKy_pol_sound_get__FPC13cBgS_PolyInfo();
extern "C" void dKy_pol_argument_get__FPC13cBgS_PolyInfo();
extern "C" void dKy_TeachWind_existence_chk__Fv();
extern "C" bool dKy_withwarp_capture_check__Fv();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void dKy_shadow_mode_set__FUc();
extern "C" void dKy_shadow_mode_reset__FUc();
extern "C" void setFloatingMessage__13dMeter2Info_cFUssb();
extern "C" void onDirectUseItem__13dMeter2Info_cFi();
extern "C" void resetWarpStatus__13dMeter2Info_cFv();
extern "C" void warpInProc__13dMeter2Info_cFv();
extern "C" void warpOutProc__13dMeter2Info_cFv();
extern "C" void dMeter2Info_setShield__FUcb();
extern "C" void getStatus__12dMsgObject_cFv();
extern "C" void onMsgSend__12dMsgObject_cFv();
extern "C" void setSmellType__12dMsgObject_cFUc();
extern "C" void isHowlHearingMode__12dMsgObject_cFv();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c();
extern "C" void doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci();
extern "C" void dPaneClass_showNullPane__FP9J2DScreen();
extern "C" void ClrCcMove__9cCcD_SttsFv();
extern "C" void SetIGrp__10cCcD_ObjCoFUl();
extern "C" void SetVsGrp__10cCcD_ObjCoFUl();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void cPhs_Reset__FP30request_of_phase_process_class();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void __dv__4cXyzCFf();
extern "C" void outprod__4cXyzCFRC3Vec();
extern "C" void normZP__4cXyzCFv();
extern "C" void normalize__4cXyzFv();
extern "C" void normalizeZP__4cXyzFv();
extern "C" void atan2sX_Z__4cXyzCFv();
extern "C" void atan2sY_XZ__4cXyzCFv();
extern "C" void __ct__5csXyzFsss();
extern "C" void cM_rad2s__Ff();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_atan2f__Fff();
extern "C" void cM_rnd__Fv();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void __ct__13cBgS_PolyInfoFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void ClearPi__13cBgS_PolyInfoFv();
extern "C" void SetPolyInfo__13cBgS_PolyInfoFRC13cBgS_PolyInfo();
extern "C" void cBgW_CheckBGround__Ff();
extern "C" void cBgW_CheckBRoof__Ff();
extern "C" void cBgW_CheckBWall__Ff();
extern "C" void cM3d_Len2dSqPntAndSegLine__FffffffPfPfPf();
extern "C" void cM3d_SignedLenPlaAndPos__FPC8cM3dGPlaPC3Vec();
extern "C" void cM3d_3PlaneCrossPos__FRC8cM3dGPlaRC8cM3dGPlaRC8cM3dGPlaP3Vec();
extern "C" void __ct__8cM3dGCpsFv();
extern "C" void __dt__8cM3dGCpsFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void SetStartEnd__8cM3dGLinFRC4cXyzRC4cXyz();
extern "C" void __ct__8cM3dGPlaFPC4cXyzf();
extern "C" void crossInfLin__8cM3dGPlaCFRC4cXyzRC4cXyzR4cXyz();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_memCpy__FPvPCvUl();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void cLib_addCalcPos__FP4cXyzRC4cXyzfff();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chaseUC__FPUcUcUc();
extern "C" void cLib_chaseS__FPsss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_chasePos__FP4cXyzRC4cXyzf();
extern "C" void cLib_chasePosXZ__FP4cXyzRC4cXyzf();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_distanceAngleS__Fss();
extern "C" void __dt__18JPAEmitterCallBackFv();
extern "C" void __dt__19JPAParticleCallBackFv();
extern "C" void func_802807E0();
extern "C" void JPACalcKeyAnmValue__FfUsPCf();
extern "C" void
getData__Q47JStudio3stb4data22TParse_TParagraph_dataCFPQ57JStudio3stb4data22TParse_TParagraph_data5TData();
extern "C" void getAramHeap__9JASKernelFv();
extern "C" void func_802A0A8C();
extern "C" void releaseSound__14JAISoundHandleFv();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void bgmStart__8Z2SeqMgrFUlUll();
extern "C" void subBgmStart__8Z2SeqMgrFUl();
extern "C" void subBgmStop__8Z2SeqMgrFv();
extern "C" void changeBgmStatus__8Z2SeqMgrFl();
extern "C" void changeSubBgmStatus__8Z2SeqMgrFl();
extern "C" void bgmSetSwordUsing__8Z2SeqMgrFl();
extern "C" void taktModeMute__8Z2SeqMgrFv();
extern "C" void taktModeMuteOff__8Z2SeqMgrFv();
extern "C" void deleteObject__14Z2SoundObjBaseFv();
extern "C" void __ct__16Z2SoundObjSimpleFv();
extern "C" void initAnime__10Z2CreatureFPvbff();
extern "C" void updateAnime__10Z2CreatureFff();
extern "C" void startCollisionSE__10Z2CreatureFUlUl();
extern "C" void setLinkGroupInfo__14Z2CreatureLinkFUc();
extern "C" void setLinkHp__14Z2CreatureLinkFll();
extern "C" void setLinkSwordType__14Z2CreatureLinkFll();
extern "C" void setLinkShieldType__14Z2CreatureLinkFll();
extern "C" void setLinkBootsType__14Z2CreatureLinkFl();
extern "C" void __ct__14Z2CreatureLinkFv();
extern "C" void __dt__14Z2CreatureLinkFv();
extern "C" void init__14Z2CreatureLinkFP3VecP3VecP3Vec();
extern "C" void initKantera__14Z2CreatureLinkFP3Vec();
extern "C" void deleteKantera__14Z2CreatureLinkFv();
extern "C" void setKanteraState__14Z2CreatureLinkFUc();
extern "C" void setSinkDepth__14Z2CreatureLinkFSc();
extern "C" void setRiding__14Z2CreatureLinkFb();
extern "C" void setMagnetized__14Z2CreatureLinkFb();
extern "C" void setWolfEyeOpen__14Z2CreatureLinkFb();
extern "C" void startLinkSound__14Z2CreatureLinkF10JAISoundIDUlSc();
extern "C" void startLinkSoundLevel__14Z2CreatureLinkF10JAISoundIDUlSc();
extern "C" void startLinkVoice__14Z2CreatureLinkF10JAISoundIDSc();
extern "C" void startLinkVoiceLevel__14Z2CreatureLinkF10JAISoundIDSc();
extern "C" void startLinkSwordSound__14Z2CreatureLinkF10JAISoundIDUlSc();
extern "C" void startHitItemSE__14Z2CreatureLinkFUlUlP14Z2SoundObjBasef();
extern "C" void setResumeAttack__14Z2CreatureLinkFb();
extern "C" void __ct__13Z2WolfHowlMgrFv();
extern "C" void startWolfHowlSound__13Z2WolfHowlMgrFffbf();
extern "C" void setCorrectData__13Z2WolfHowlMgrFScP14Z2WolfHowlData();
extern "C" void skipCorrectDemo__13Z2WolfHowlMgrFv();
extern "C" void freeAll__7JKRHeapFv();
extern "C" void* __nw__FUl();
extern "C" void* __nwa__FUl();
extern "C" void* __nwa__FUli();
extern "C" void __dl__FPv();
extern "C" void create__10JKRExpHeapFUlP7JKRHeapb();
extern "C" void getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader();
extern "C" void readIdxResource__10JKRArchiveFPvUlUl();
extern "C" void __ct__9J2DScreenFv();
extern "C" void setPriority__9J2DScreenFPCcUlP10JKRArchive();
extern "C" void draw__9J2DScreenFffPC14J2DGrafContext();
extern "C" void animation__9J2DScreenFv();
extern "C" void load__20J2DAnmLoaderDataBaseFPCv();
extern "C" void reinitGX__6J3DSysFv();
extern "C" bool entry__9J3DPacketFP13J3DDrawBuffer();
extern "C" void loadPreDrawSetting__8J3DShapeCFv();
extern "C" void entryImm__13J3DDrawBufferFP9J3DPacketUs();
extern "C" void diff__8J3DModelFv();
extern "C" void setDeformData__8J3DModelFP13J3DDeformDataUl();
extern "C" void calcWeightEnvelopeMtx__8J3DModelFv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void searchUpdateMaterialID__16J3DAnmTexPatternFP12J3DModelData();
extern "C" void searchUpdateMaterialID__19J3DAnmTextureSRTKeyFP12J3DModelData();
extern "C" void getTevColorReg__15J3DAnmTevRegKeyCFUsP11_GXColorS10();
extern "C" void searchUpdateMaterialID__15J3DAnmTevRegKeyFP12J3DModelData();
extern "C" void initialize__14J3DMaterialAnmFv();
extern "C" void calc__14J3DMaterialAnmCFP11J3DMaterial();
extern "C" void removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey();
extern "C" void removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey();
extern "C" void entryTexNoAnimator__16J3DMaterialTableFP16J3DAnmTexPattern();
extern "C" void entryTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey();
extern "C" void entryTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey();
extern "C" void load__20J3DAnmLoaderDataBaseFPCv24J3DAnmLoaderDataBaseFlag();
extern "C" void JMAEulerToQuat__FsssP10Quaternion();
extern "C" void GXClearVtxDesc();
extern "C" void __register_global_object();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void __construct_new_array();
extern "C" void __ptmf_test();
extern "C" void __ptmf_scall();
extern "C" void __cvt_fp2unsigned();
extern "C" void _savegpr_14();
extern "C" void _savegpr_15();
extern "C" void _savegpr_16();
extern "C" void _savegpr_20();
extern "C" void _savegpr_21();
extern "C" void _savegpr_22();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_14();
extern "C" void _restgpr_15();
extern "C" void _restgpr_16();
extern "C" void _restgpr_20();
extern "C" void _restgpr_21();
extern "C" void _restgpr_22();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 const tempBitLabels__20dSv_event_tmp_flag_c[370 + 2 /* padding */];
extern "C" extern u8 const __ptmf_null[12 + 4 /* padding */];
extern "C" extern void* __vt__12J3DFrameCtrl[3];
extern "C" extern void* data_803A3360[11];
extern "C" extern void* __vt__19J3DMtxCalcNoAnmBase[11];
extern "C" extern void* __vt__28mDoExt_MtxCalcAnmBlendTblOld[11];
extern "C" extern void* __vt__25mDoExt_MtxCalcAnmBlendTbl[11];
extern "C" extern void* __vt__10J3DMtxCalc[11 + 1 /* padding */];
extern "C" extern void* __vt__19JPAParticleCallBack[5];
extern "C" extern void* __vt__8cM3dGPla[3];
extern "C" extern void* __vt__14dBgS_ObjGndChk[12 + 1 /* padding */];
extern "C" extern void* __vt__12dDlst_base_c[3];
extern "C" extern void* __vt__8cM3dGCyl[3];
extern "C" extern void* __vt__8cM3dGAab[3];
extern "C" u8 saveBitLabels__16dSv_event_flag_c[1644 + 4 /* padding */];
extern "C" extern void* __vt__8cM3dGSph[3];
extern "C" extern void* __vt__22dPa_hermiteEcallBack_c[9];
extern "C" extern void* __vt__18dPa_levelEcallBack[9];
extern "C" extern void* __vt__18JPAEmitterCallBack[7];
extern "C" u8 m_typeFourData__8dPaPoF_c[60];
extern "C" u8 m_emitterFourData__8dPaPoF_c[60 + 28 /* padding */];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__8dCcD_Cps[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__10dCcD_GStts[3];
extern "C" extern void* __vt__10cCcD_GStts[3];
extern "C" extern void* __vt__18daPy_sightPacket_c[4 + 1 /* padding */];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__12cCcD_CpsAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" extern void* __vt__9J3DPacket[5];
extern "C" extern void* __vt__14J3DMaterialAnm[4];
extern "C" u8 m_cpadInfo__8mDoCPd_c[256];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mLineCheck__11fopAcM_lc_c[112];
extern "C" u8 mGndCheck__11fopAcM_gc_c[84];
extern "C" u8 mWaterCheck__11fopAcM_wt_c[84 + 4 /* padding */];
extern "C" u8 mDemoArcName__20dStage_roomControl_c[10 + 2 /* padding */];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" f32 Zero__4cXyz[3];
extern "C" u8 BaseX__4cXyz[12];
extern "C" u8 BaseY__4cXyz[12];
extern "C" u8 BaseZ__4cXyz[12];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u16 m_branchId__7dDemo_c[1 + 3 /* padding */];
extern "C" f32 mGroundY__11fopAcM_gc_c;
extern "C" f32 mWaterY__11fopAcM_wt_c[1 + 1 /* padding */];
extern "C" u8 m_top__12daTagHstop_c[4 + 4 /* padding */];
extern "C" u8 m_object__7dDemo_c[4];
extern "C" u8 mWaterBubblePcallBack__13dPa_control_c[4];
extern "C" u8 mParticleTracePCB__13dPa_control_c[4 + 4 /* padding */];
extern "C" extern u8 struct_80450FB8[4];
extern "C" extern u8 struct_80450FBC[4];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" extern u8 m_dropAngleY__20daPy_boomerangMove_c[4];
extern "C" u8 Zero__5csXyz[4];
extern "C" u8 mLinkPtr__14Z2CreatureLink[4 + 4 /* padding */];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" u8 sOldVcdVatCmd__8J3DShape[4];

//
// Declarations:
//

/* 8009D87C-8009D884 0981BC 0008+00 0/0 1/1 0/0 .text            getE3Zhint__9daAlink_cFv */
bool daAlink_c::getE3Zhint() {
    return false;
}

/* ############################################################################################## */
/* 80452C50-80452C58 001250 0005+03 2/2 0/0 0/0 .sdata2          l_wArcName */
SECTION_SDATA2 static char l_wArcName[8] = "Wmdl";

/* 80452C58-80452C60 001258 0005+03 2/2 0/0 0/0 .sdata2          l_bArcName */
SECTION_SDATA2 static char l_bArcName[8] = "Bmdl";

/* 80452C60-80452C68 001260 0005+03 2/2 0/0 0/0 .sdata2          l_kArcName */
SECTION_SDATA2 static char l_kArcName[8] = "Kmdl";

/* 80452C68-80452C70 001268 0005+03 2/2 0/0 0/0 .sdata2          l_zArcName */
SECTION_SDATA2 static char l_zArcName[8] = "Zmdl";

/* 80452C70-80452C78 001270 0005+03 3/3 0/0 0/0 .sdata2          l_mArcName */
SECTION_SDATA2 static char l_mArcName[8] = "Mmdl";

/* 80452C78-80452C80 001278 0006+02 1/1 0/0 0/0 .sdata2          l_hyShdArcName */
SECTION_SDATA2 static char l_hyShdArcName[8] = "HyShd";

/* 80452C80-80452C88 001280 0006+02 1/1 0/0 0/0 .sdata2          l_cWShdArcName */
SECTION_SDATA2 static char l_cWShdArcName[8] = "CWShd";

/* 80452C88-80452C90 001288 0006+02 1/1 0/0 0/0 .sdata2          l_sWShdArcName */
SECTION_SDATA2 static char l_sWShdArcName[8] = "SWShd";

/* 80452C90-80452C98 001290 0006+02 7/7 0/0 0/0 .sdata2          l_arcName */
SECTION_SDATA2 static char l_arcName[8] = "Alink";

/* 8009D884-8009D88C 0981C4 0008+00 0/0 0/0 13/13 .text            getAlinkArcName__9daAlink_cFv */
char* daAlink_c::getAlinkArcName() {
    return l_arcName;
}

/* 8009D88C-8009D8B8 0981CC 002C+00 1/1 0/0 0/0 .text
 * daAlink_tgHitCallback__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf */
static void daAlink_tgHitCallback(fopAc_ac_c* param_0, dCcD_GObjInf* param_1, fopAc_ac_c* param_2,
                                  dCcD_GObjInf* param_3) {
    static_cast<daAlink_c*>(param_0)->tgHitCallback(param_2, param_1, param_3);
}

/* 8009D8B8-8009D8E4 0981F8 002C+00 1/1 0/0 0/0 .text
 * daAlink_coHitCallback__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf */
static void daAlink_coHitCallback(fopAc_ac_c* param_0, dCcD_GObjInf* param_1, fopAc_ac_c* param_2,
                                  dCcD_GObjInf* param_3) {
    static_cast<daAlink_c*>(param_0)->coHitCallback(param_2, param_1);
}

/* ############################################################################################## */
/* 80450FC0-80450FC4 0004C0 0004+00 1/1 0/0 0/0 .sbss            it$36766 */
static int it;

/* 80450FC4-80450FC8 -00001 0004+00 1/1 0/0 0/0 .sbss            None */
/* 80450FC4 0001+00 data_80450FC4 None */
/* 80450FC5 0001+00 data_80450FC5 None */
/* 80450FC6 0001+00 data_80450FC6 None */
/* 80450FC7 0001+00 data_80450FC7 None */
static u8 struct_80450FC4[4];

/* 80450FC8-80450FCC -00001 0004+00 5/5 0/0 0/0 .sbss            None */
/* 80450FC8 0001+00 data_80450FC8 None */
static bool m_eye_move_flg;

/* 80450FC9 0003+00 data_80450FC9 None */
#pragma push
#pragma force_active on
u8 daAlink_matAnm_c::m_morf_frame;
#pragma pop

/* 80452C98-80452C9C 001298 0004+00 102/102 0/0 0/0 .sdata2          @5943 */
SECTION_SDATA2 static f32 lit_5943 = 0.5f;

/* 80452C9C-80452CA0 00129C 0004+00 23/23 0/0 0/0 .sdata2          @5944 */
SECTION_SDATA2 static f32 lit_5944 = 25.0f;

/* 80452CA0-80452CA4 0012A0 0004+00 3/3 0/0 0/0 .sdata2          @5945 */
SECTION_SDATA2 static f32 lit_5945 = -25.0f;

/* 80452CA4-80452CA8 0012A4 0004+00 121/122 0/0 0/0 .sdata2          @6021 */
SECTION_SDATA2 static f32 lit_6021 = 1.0f / 20.0f;

/* 80452CA8-80452CAC 0012A8 0004+00 1/1 0/0 0/0 .sdata2          @6022 */
SECTION_SDATA2 static f32 lit_6022 = 512.0f;

/* 80452CAC-80452CB0 0012AC 0004+00 6/6 0/0 0/0 .sdata2          @6023 */
SECTION_SDATA2 static f32 lit_6023 = 3.0f / 5.0f;

/* 80452CB0-80452CB8 0012B0 0008+00 117/117 0/0 0/0 .sdata2          @6025 */
SECTION_SDATA2 static f64 lit_6025 = 4503601774854144.0 /* cast s32 to float */;

/* 80452CB8-80452CBC 0012B8 0004+00 327/327 0/0 0/0 .sdata2          @6040 */
SECTION_SDATA2 static f32 lit_6040 = 1.0f;

/* 80452CBC-80452CC0 0012BC 0004+00 182/182 0/0 0/0 .sdata2          @6041 */
SECTION_SDATA2 static f32 lit_6041 = -1.0f;

/* 80452CC0-80452CC4 0012C0 0004+00 674/674 0/0 0/0 .sdata2          @6108 */
SECTION_SDATA2 static u8 lit_6108[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};

// temporary for literal matching
bool daAlink_c::checkInputOnR() const {
    return field_0x33ac > /* 0.05f */ lit_6021;
}
bool daAlink_c::checkWindSpeedOnXZ() const {
    return field_0x35b8.abs2XZ() > lit_6040 /* 1.0f */;
}

/* 8009D8E4-8009D90C 098224 0028+00 2/2 0/0 0/0 .text            init__16daAlink_matAnm_cFv */
void daAlink_matAnm_c::init() {
    f32 tmp_0 = FLOAT_LABEL(lit_6108);
    field_0xf4 = tmp_0;
    field_0xf8 = tmp_0;
    mNowOffsetX = tmp_0;
    mNowOffsetY = tmp_0;
    m_eye_move_flg = false;
    m_morf_frame = 0;
    mSetFlag = 0;
}

/* 8009D90C-8009DA60 09824C 0154+00 1/0 0/0 0/0 .text calc__16daAlink_matAnm_cCFP11J3DMaterial */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_matAnm_c::calc(J3DMaterial* param_0) const {
    nofralloc
#include "asm/d/a/d_a_alink/calc__16daAlink_matAnm_cCFP11J3DMaterial.s"
}
#pragma pop

/* void daAlink_matAnm_c::calc(J3DMaterial* param_0) const {
    J3DMaterialAnm::calc(param_0);

    if (!daAlink_getAlinkActorClass()->checkStatusWindowDraw()) {
        for (u32 i = 0; i < 8; i++) {
            if (getTexMtxAnm(i).getAnmFlag()) {
                J3DTexMtxInfo* info = &param_0->getTexGenBlock()->getTexMtx(i)->getTexMtxInfo();
                if (m_morf_frame != 0) {
                    if (mSetFlag == 0) {
                        f32 tmp = 1.0f / m_morf_frame;
                        info->field_0x10.field_0xc = field_0xf4 * (1.0f - tmp) +
info->field_0x10.field_0xc * tmp; info->field_0x10.mCheckFrame = field_0xf8 * (1.0f - tmp) +
info->field_0x10.field_0xc * tmp;
                        //mSetFlag = 1;
                    } else {
                        info->field_0x10.field_0xc = field_0xf4;
                        info->field_0x10.mCheckFrame = field_0xf8;
                    }
                }

                if (m_eye_move_flg) {
                        info->field_0x10.field_0xc = mNowOffsetX;
                        info->field_0x10.mCheckFrame = mNowOffsetY;
                    }



            }
        }
    }
} */

bool daAlink_c::checkStageName(const char* stage) {
    return strcmp(dComIfGp_getStartStageName(), stage) == 0;
}

/* 8009DA98-8009DB64 0983D8 00CC+00 1/1 0/0 0/0 .text
 * tgHitCallback__9daAlink_cFP10fopAc_ac_cP12dCcD_GObjInfP12dCcD_GObjInf */
void daAlink_c::tgHitCallback(fopAc_ac_c* param_0, dCcD_GObjInf* param_1, dCcD_GObjInf* param_2) {
    if (param_2->ChkAtType(AT_TYPE_40000)) {
        field_0x369c = *param_2->GetAtVecP();
        for (int i = 0; i < 3; i++) {
            if (param_1 == &field_0x850[i]) {
                field_0x2fb8 |= (1 << i);
                field_0x36b4 = param_0->current.pos;
                return;
            }
        }
    } else {
        for (int i = 0; i < 3; i++) {
            if (param_1 == &field_0x850[i]) {
                field_0x2fb8 &= ~(1 << i);
                return;
            }
        }
    }
}

/* 8009DB64-8009DC6C 0984A4 0108+00 1/1 0/0 0/0 .text
 * coHitCallback__9daAlink_cFP10fopAc_ac_cP12dCcD_GObjInf       */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::coHitCallback(fopAc_ac_c* param_0, dCcD_GObjInf* param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/coHitCallback__9daAlink_cFP10fopAc_ac_cP12dCcD_GObjInf.s"
}
#pragma pop

/* 8009DC6C-8009DD90 0985AC 0124+00 5/5 0/0 0/0 .text
 * setMatrixWorldAxisRot__9daAlink_cFPA4_fsssiPC4cXyz           */
void daAlink_c::setMatrixWorldAxisRot(MtxP param_0, s16 param_1, s16 param_2, s16 param_3,
                                      int param_4, cXyz const* param_5) {
    cXyz tmp;
    mDoMtx_multVecZero(param_0, &tmp);
    if (param_5 != NULL) {
        mDoMtx_stack_c::transS(*param_5);
    } else {
        mDoMtx_stack_c::transS(tmp);
    }

    concatMagneBootMtx();
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mDoMtx_stack_c::ZXYrotM(param_1, param_2, param_3);
    mDoMtx_stack_c::YrotM(-shape_angle.y);
    concatMagneBootInvMtx();
    mDoMtx_stack_c::transM(-tmp.x, -tmp.y, -tmp.z);
    MTXConcat(mDoMtx_stack_c::get(), param_0, mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), param_0);
    if (param_4 != 0) {
        MTXCopy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
    }
}

/* 8009DD90-8009E7B8 0986D0 0A28+00 2/2 0/0 0/0 .text            jointControll__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::jointControll(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/jointControll__9daAlink_cFi.s"
}
#pragma pop

/* 8009E7B8-8009E91C 0990F8 0164+00 1/1 0/0 0/0 .text            setUpperFront__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setUpperFront() {
    nofralloc
#include "asm/d/a/d_a_alink/setUpperFront__9daAlink_cFv.s"
}
#pragma pop

/* 8009E91C-8009EB18 09925C 01FC+00 1/1 0/0 0/0 .text            changeBlendRate__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::changeBlendRate(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/changeBlendRate__9daAlink_cFi.s"
}
#pragma pop

/* 8009EB18-8009EB58 099458 0040+00 1/1 0/0 0/0 .text            resetRootMtx__9daAlink_cFv */
void daAlink_c::resetRootMtx() {
    MTXCopy(mRootMtx, J3DSys::mCurrentMtx);
    field_0x2f90 = 0;
}

/* 8009EB58-8009EC28 099498 00D0+00 1/1 0/0 0/0 .text            modelCallBack__9daAlink_cFi */
bool daAlink_c::modelCallBack(int i_jointNo) {
    jointControll(i_jointNo);

    if (i_jointNo == 0) {
        setUpperFront();
    } else if (i_jointNo == 26) {
        if (!i_getSumouMode()) {
            setFootMatrix();
        }
        setArmMatrix();
    }

    if (field_0x2fb6 != 0 && (i_jointNo == 0 || i_jointNo == 5 || i_jointNo == 10 ||
                              i_jointNo == 4 || i_jointNo == 13 || i_jointNo == 15))
    {
        changeBlendRate(i_jointNo);
    }
    return true;
}

/* 8009EC28-8009ECA0 099568 0078+00 1/1 0/0 0/0 .text            daAlink_modelCallBack__FP8J3DJointi
 */
static int daAlink_modelCallBack(J3DJoint* p_joint, int param_1) {
    int jntNo = p_joint->getJntNo();
    daAlink_c* alink = (daAlink_c*)j3dSys.getModel()->getUserArea();

    if (param_1 == 0) {
        alink->modelCallBack(jntNo);
    } else if (param_1 == 1 && alink->checkResetRootMtx(jntNo)) {
        alink->resetRootMtx();
    }

    return 1;
}

/* ############################################################################################## */
/* 80452CC4-80452CC8 0012C4 0004+00 137/137 0/0 0/0 .sdata2          @6109 */
SECTION_SDATA2 static f32 lit_6109 = 3.0f;

/* 80452CC8-80452CCC 0012C8 0004+00 1/1 0/0 0/0 .sdata2          @6183 */
SECTION_SDATA2 static f32 lit_6183 = 10000000.0f;

/* 80452CCC-80452CD0 0012CC 0004+00 2/2 0/0 0/0 .sdata2          @6237 */
SECTION_SDATA2 static f32 lit_6237 = 250000.0f;

/* 80452CD0-80452CD4 0012D0 0004+00 6/6 0/0 0/0 .sdata2          @6238 */
SECTION_SDATA2 static f32 lit_6238 = 300.0f;

/* 80452CD4-80452CD8 0012D4 0004+00 1/1 0/0 0/0 .sdata2          @6398 */
SECTION_SDATA2 static f32 lit_6398 = 160000.0f;

/* 80452CD8-80452CDC 0012D8 0004+00 1/1 0/0 0/0 .sdata2          @6399 */
SECTION_SDATA2 static f32 lit_6399 = 202500.0f;

/* 80452CDC-80452CE0 0012DC 0004+00 1/1 0/0 0/0 .sdata2          @6400 */
SECTION_SDATA2 static f32 lit_6400 = 350.0f;

/* 80452CE0-80452CE8 0012E0 0004+04 59/59 0/0 0/0 .sdata2          @6845 */
SECTION_SDATA2 static f32 lit_6845 = 30.0f;

/* 80452CE8-80452CF0 0012E8 0008+00 84/84 0/0 0/0 .sdata2          @6846 */
SECTION_SDATA2 static f64 lit_6846 = 0.5;

/* 80452CF0-80452CF8 0012F0 0008+00 84/84 0/0 0/0 .sdata2          @6847 */
SECTION_SDATA2 static f64 lit_6847 = 3.0;

/* 80452CF8-80452D00 0012F8 0008+00 84/84 0/0 0/0 .sdata2          @6848 */
SECTION_SDATA2 static u8 lit_6848[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80452D00-80452D04 001300 0004+00 47/47 0/0 0/0 .sdata2          @6895 */
SECTION_SDATA2 static f32 lit_6895 = 50.0f;

/* 80452D04-80452D08 001304 0004+00 6/6 0/0 0/0 .sdata2          @6896 */
SECTION_SDATA2 static f32 lit_6896 = 130.0f;

/* 80452D08-80452D0C 001308 0004+00 1/1 0/0 0/0 .sdata2          @7174 */
SECTION_SDATA2 static f32 lit_7174 = 640000.0f;

/* 80452D0C-80452D10 00130C 0004+00 1/1 0/0 0/0 .sdata2          @7305 */
SECTION_SDATA2 static f32 lit_7305 = 27.0f / 20.0f;

/* 80452D10-80452D14 001310 0004+00 15/15 0/0 0/0 .sdata2          @7306 */
SECTION_SDATA2 static f32 lit_7306 = 70.0f;

/* 80452D14-80452D18 001314 0004+00 57/57 0/0 0/0 .sdata2          @7307 */
SECTION_SDATA2 static f32 lit_7307 = 2.0f;

/* 80452D18-80452D1C 001318 0004+00 9/9 0/0 0/0 .sdata2          @7308 */
SECTION_SDATA2 static f32 lit_7308 = 500.0f;

/* 80452D1C-80452D20 00131C 0004+00 23/23 0/0 0/0 .sdata2          @7448 */
SECTION_SDATA2 static f32 lit_7448 = 12.0f;

/* 80452D20-80452D24 001320 0004+00 11/11 0/0 0/0 .sdata2          @7449 */
SECTION_SDATA2 static f32 lit_7449 = 24.0f;

/* 80452D24-80452D28 001324 0004+00 38/38 0/0 0/0 .sdata2          @7450 */
SECTION_SDATA2 static f32 lit_7450 = 4.0f;

/* 80452D28-80452D2C 001328 0004+00 7/7 0/0 0/0 .sdata2          @7451 */
SECTION_SDATA2 static f32 lit_7451 = 26.0f;

/* 80452D2C-80452D30 00132C 0004+00 28/28 0/0 0/0 .sdata2          @7624 */
SECTION_SDATA2 static f32 lit_7624 = 1.5f;

/* 80452D30-80452D34 001330 0004+00 67/67 0/0 0/0 .sdata2          @7625 */
SECTION_SDATA2 static f32 lit_7625 = 10.0f;

/* 80452D34-80452D38 001334 0004+00 36/36 0/0 0/0 .sdata2          @7710 */
SECTION_SDATA2 static f32 lit_7710 = 9.0f;

/* 80452D38-80452D3C 001338 0004+00 5/5 0/0 0/0 .sdata2          @7807 */
SECTION_SDATA2 static f32 lit_7807 = 27.0f;

/* 80452D3C-80452D40 00133C 0004+00 82/82 0/0 0/0 .sdata2          @7808 */
SECTION_SDATA2 static f32 lit_7808 = 5.0f;

/* 80452D40-80452D44 001340 0004+00 1/1 0/0 0/0 .sdata2          @7945 */
SECTION_SDATA2 static f32 lit_7945 = 44.0f;

/* 80452D44-80452D48 001344 0004+00 27/27 0/0 0/0 .sdata2          @7977 */
SECTION_SDATA2 static f32 lit_7977 = 6.0f;

/* 80452D48-80452D4C 001348 0004+00 21/21 0/0 0/0 .sdata2          @8130 */
SECTION_SDATA2 static f32 lit_8130 = 14.0f;

/* 80452D4C-80452D50 00134C 0004+00 8/8 0/0 0/0 .sdata2          @8131 */
SECTION_SDATA2 static f32 lit_8131 = -0.5f;

/* 80452D50-80452D54 001350 0004+00 39/39 0/0 0/0 .sdata2          @8247 */
SECTION_SDATA2 static f32 lit_8247 = 100.0f;

/* 80452D54-80452D58 001354 0004+00 6/6 0/0 0/0 .sdata2          @8248 */
SECTION_SDATA2 static f32 lit_8248 = 95.0f;

/* 80452D58-80452D5C 001358 0004+00 3/3 0/0 0/0 .sdata2          @8249 */
SECTION_SDATA2 static f32 lit_8249 = 800.0f;

/* 80452D5C-80452D60 00135C 0004+00 9/9 0/0 0/0 .sdata2          @8322 */
SECTION_SDATA2 static f32 lit_8322 = 10000.0f;

/* 80452D60-80452D64 001360 0004+00 3/3 0/0 0/0 .sdata2          @8369 */
SECTION_SDATA2 static f32 lit_8369 = 37.0f;

/* 80452D64-80452D68 001364 0004+00 1/1 0/0 0/0 .sdata2          @8370 */
SECTION_SDATA2 static f32 lit_8370 = 54.0f;

/* 80452D68-80452D6C 001368 0004+00 13/13 0/0 0/0 .sdata2          @8472 */
SECTION_SDATA2 static f32 lit_8472 = 200.0f;

/* 80452D6C-80452D70 00136C 0004+00 9/9 0/0 0/0 .sdata2          @8473 */
SECTION_SDATA2 static f32 lit_8473 = -2.0f;

/* 80452D70-80452D74 001370 0004+00 3/3 0/0 0/0 .sdata2          @8501 */
SECTION_SDATA2 static f32 lit_8501 = 99.0f / 100.0f;

/* 80452D74-80452D78 001374 0004+00 21/21 0/0 0/0 .sdata2          @8502 */
SECTION_SDATA2 static f32 lit_8502 = 7.0f;

/* 80452D78-80452D7C 001378 0004+00 31/31 0/0 0/0 .sdata2          @8676 */
SECTION_SDATA2 static f32 lit_8676 = 20.0f;

/* 80452D7C-80452D80 00137C 0004+00 5/5 0/0 0/0 .sdata2          @8779 */
SECTION_SDATA2 static f32 lit_8779 = 39.0f;

/* 80452D80-80452D84 001380 0004+00 7/7 0/0 0/0 .sdata2          @8780 */
SECTION_SDATA2 static f32 lit_8780 = 36.0f;

/* 80452D84-80452D88 001384 0004+00 19/19 0/0 0/0 .sdata2          @8781 */
SECTION_SDATA2 static f32 lit_8781 = 13.0f;

/* 80452D88-80452D8C 001388 0004+00 29/29 0/0 0/0 .sdata2          @8782 */
SECTION_SDATA2 static f32 lit_8782 = 1.0f / 100.0f;

/* 80452D8C-80452D90 00138C 0004+00 23/23 0/0 0/0 .sdata2          @8783 */
SECTION_SDATA2 static f32 lit_8783 = 8.0f;

/* 80452D90-80452D94 001390 0004+00 4/4 0/0 0/0 .sdata2          @8784 */
SECTION_SDATA2 static f32 lit_8784 = 28.0f;

/* 80452D94-80452D98 001394 0004+00 10/10 0/0 0/0 .sdata2          @8785 */
SECTION_SDATA2 static f32 lit_8785 = 38.0f;

/* 80452D98-80452D9C 001398 0004+00 4/4 0/0 0/0 .sdata2          @8786 */
SECTION_SDATA2 static f32 lit_8786 = 48.0f;

/* 80452D9C-80452DA0 00139C 0004+00 4/4 0/0 0/0 .sdata2          @9053 */
SECTION_SDATA2 static f32 lit_9053 = -10.0f;

/* 80452DA0-80452DA4 0013A0 0004+00 43/43 0/0 0/0 .sdata2          @9054 */
SECTION_SDATA2 static f32 lit_9054 = 1.0f / 10.0f;

/* 80452DA4-80452DA8 0013A4 0004+00 19/19 0/0 0/0 .sdata2          @9138 */
SECTION_SDATA2 static f32 lit_9138 = -1000000000.0f;

/* 80452DA8-80452DAC 0013A8 0004+00 15/15 0/0 0/0 .sdata2          @9652 */
SECTION_SDATA2 static f32 lit_9652 = 7.0f / 10.0f;

/* 80452DAC-80452DB0 0013AC 0004+00 8/8 0/0 0/0 .sdata2          @9828 */
SECTION_SDATA2 static f32 lit_9828 = 3.1415927410125732f;

/* 80452DB0-80452DB4 0013B0 0004+00 13/13 0/0 0/0 .sdata2          @10039 */
SECTION_SDATA2 static f32 lit_10039 = 80.0f;

/* 80452DB4-80452DB8 0013B4 0004+00 14/14 0/0 0/0 .sdata2          @10040 */
SECTION_SDATA2 static f32 lit_10040 = 60.0f;

/* 80452DB8-80452DBC 0013B8 0004+00 15/15 0/0 0/0 .sdata2          @10041 */
SECTION_SDATA2 static f32 lit_10041 = 1000.0f;

/* 80452DBC-80452DC0 0013BC 0004+00 15/15 0/0 0/0 .sdata2          @10042 */
SECTION_SDATA2 static f32 lit_10042 = 35.0f;

/* 80452DC0-80452DC4 0013C0 0004+00 12/12 0/0 0/0 .sdata2          @10193 */
SECTION_SDATA2 static f32 lit_10193 = 18.0f;

/* 80452DC4-80452DC8 0013C4 0004+00 6/6 0/0 0/0 .sdata2          @10194 */
SECTION_SDATA2 static f32 lit_10194 = 29.0f;

/* 80452DC8-80452DCC 0013C8 0004+00 11/11 0/0 0/0 .sdata2          @10286 */
SECTION_SDATA2 static f32 lit_10286 = 19.0f;

/* 80452DCC-80452DD0 0013CC 0004+00 6/6 0/0 0/0 .sdata2          @10532 */
SECTION_SDATA2 static f32 lit_10532 = -50.0f;

/* 80452DD0-80452DD4 0013D0 0004+00 1/1 0/0 0/0 .sdata2          @11122 */
SECTION_SDATA2 static f32 lit_11122 = 4096.0f;

/* 80452DD4-80452DD8 0013D4 0004+00 23/23 0/0 0/0 .sdata2          @11442 */
SECTION_SDATA2 static f32 lit_11442 = 40.0f;

/* 80452DD8-80452DDC 0013D8 0004+00 10/10 0/0 0/0 .sdata2          @11470 */
SECTION_SDATA2 static f32 lit_11470 = 2.5f;

/* 80452DDC-80452DE0 0013DC 0004+00 3/3 0/0 0/0 .sdata2          @11471 */
SECTION_SDATA2 static f32 lit_11471 = 1.25f;

/* 80452DE0-80452DE4 0013E0 0004+00 17/17 0/0 0/0 .sdata2          @11673 */
SECTION_SDATA2 static f32 lit_11673 = 150.0f;

/* 80452DE4-80452DE8 0013E4 0004+00 16/16 0/0 0/0 .sdata2          @12328 */
SECTION_SDATA2 static f32 lit_12328 = 0.0010000000474974513f;

/* 80452DE8-80452DEC 0013E8 0004+00 1/1 0/0 0/0 .sdata2          @12475 */
SECTION_SDATA2 static f32 lit_12475 = 2600.0f;

/* 80452DEC-80452DF0 0013EC 0004+00 6/6 0/0 0/0 .sdata2          @13119 */
SECTION_SDATA2 static f32 lit_13119 = 3.0f / 20.0f;

/* 80452DF0-80452DF4 0013F0 0004+00 7/7 0/0 0/0 .sdata2          @13382 */
SECTION_SDATA2 static f32 lit_13382 = 21.0f;

/* 80452DF4-80452DF8 0013F4 0004+00 1/1 0/0 0/0 .sdata2          @13699 */
SECTION_SDATA2 static f32 lit_13699 = 0.9998999834060669f;

/* 80452DF8-80452DFC 0013F8 0004+00 19/19 0/0 0/0 .sdata2          @13700 */
SECTION_SDATA2 static f32 lit_13700 = 1.0f / 5.0f;

/* 80452DFC-80452E00 0013FC 0004+00 6/6 0/0 0/0 .sdata2          @13701 */
SECTION_SDATA2 static f32 lit_13701 = 2.0f / 5.0f;

/* 80452E00-80452E04 001400 0004+00 2/2 0/0 0/0 .sdata2          @13702 */
SECTION_SDATA2 static f32 lit_13702 = 1.0f / 40.0f;

/* 80452E04-80452E08 001404 0004+00 10/10 0/0 0/0 .sdata2          @13794 */
SECTION_SDATA2 static f32 lit_13794 = 16.0f;

/* 80452E08-80452E0C 001408 0004+00 10/10 0/0 0/0 .sdata2          @14064 */
SECTION_SDATA2 static f32 lit_14064 = 4.0f / 5.0f;

/* 80452E0C-80452E10 00140C 0004+00 12/12 0/0 0/0 .sdata2          @14614 */
SECTION_SDATA2 static f32 lit_14614 = -30.0f;

/* 80452E10-80452E14 001410 0004+00 2/2 0/0 0/0 .sdata2          @14615 */
SECTION_SDATA2 static f32 lit_14615 = -5.0f;

/* 80452E14-80452E18 001414 0004+00 4/4 0/0 0/0 .sdata2          @14616 */
SECTION_SDATA2 static f32 lit_14616 = -3.0f;

/* 80452E18-80452E1C 001418 0004+00 1/1 0/0 0/0 .sdata2          @14617 */
SECTION_SDATA2 static f32 lit_14617 = -4.5f;

/* 80452E1C-80452E20 00141C 0004+00 1/1 0/0 0/0 .sdata2          @14618 */
SECTION_SDATA2 static f32 lit_14618 = -33.0f;

/* 80452E20-80452E24 001420 0004+00 2/2 0/0 0/0 .sdata2          @14619 */
SECTION_SDATA2 static f32 lit_14619 = 78.0f;

/* 80452E24-80452E28 001424 0004+00 3/3 0/0 0/0 .sdata2          @14620 */
SECTION_SDATA2 static f32 lit_14620 = 42.0f;

/* 80452E28-80452E2C 001428 0004+00 16/16 0/0 0/0 .sdata2          @14621 */
SECTION_SDATA2 static f32 lit_14621 = 32.0f;

/* 80452E2C-80452E30 00142C 0004+00 1/1 0/0 0/0 .sdata2          @14622 */
SECTION_SDATA2 static f32 lit_14622 = 5461.0f;

/* 80452E30-80452E34 001430 0004+00 2/2 0/0 0/0 .sdata2          @14623 */
SECTION_SDATA2 static f32 lit_14623 = -8.0f;

/* 80452E34-80452E38 001434 0004+00 5/5 0/0 0/0 .sdata2          @14624 */
SECTION_SDATA2 static f32 lit_14624 = -15.0f;

/* 80452E38-80452E3C 001438 0004+00 2/2 0/0 0/0 .sdata2          @14625 */
SECTION_SDATA2 static f32 lit_14625 = -18.0f;

/* 80452E3C-80452E40 00143C 0004+00 1/1 0/0 0/0 .sdata2          @14626 */
SECTION_SDATA2 static f32 lit_14626 = -13.789082527160645f;

/* 80452E40-80452E44 001440 0004+00 1/1 0/0 0/0 .sdata2          @14627 */
SECTION_SDATA2 static f32 lit_14627 = -13.825372695922852f;

/* 80452E44-80452E48 001444 0004+00 5/5 0/0 0/0 .sdata2          @14760 */
SECTION_SDATA2 static f32 lit_14760 = 1.0f / 50.0f;

/* 80452E48-80452E4C 001448 0004+00 1/1 0/0 0/0 .sdata2          @14781 */
SECTION_SDATA2 static f32 lit_14781 = -1500.0f;

/* 80452E4C-80452E50 00144C 0004+00 5/5 0/0 0/0 .sdata2          @14782 */
SECTION_SDATA2 static f32 lit_14782 = 2000.0f;

/* 80452E50-80452E54 001450 0004+00 1/1 0/0 0/0 .sdata2          @14783 */
SECTION_SDATA2 static f32 lit_14783 = 3500.0f;

/* 80452E54-80452E58 001454 0004+00 4/4 0/0 0/0 .sdata2          @14784 */
SECTION_SDATA2 static f32 lit_14784 = 2500.0f;

/* 80452E58-80452E5C 001458 0004+00 2/2 0/0 0/0 .sdata2          @14785 */
SECTION_SDATA2 static f32 lit_14785 = 4000.0f;

/* 80452E5C-80452E60 00145C 0004+00 2/2 0/0 0/0 .sdata2          @14786 */
SECTION_SDATA2 static f32 lit_14786 = -5000.0f;

/* 80452E60-80452E64 001460 0004+00 2/2 0/0 0/0 .sdata2          @14787 */
SECTION_SDATA2 static f32 lit_14787 = 5000.0f;

/* 80452E64-80452E68 001464 0004+00 47/47 0/0 0/0 .sdata2          @14954 */
SECTION_SDATA2 static f32 lit_14954 = 15.0f;

/* 80452E68-80452E6C 001468 0004+00 7/7 0/0 0/0 .sdata2          @14955 */
SECTION_SDATA2 static f32 lit_14955 = 90.0f;

/* 80452E6C-80452E70 00146C 0004+00 1/1 0/0 0/0 .sdata2          @15106 */
SECTION_SDATA2 static f32 lit_15106 = 93.0f / 100.0f;

/* 80452E70-80452E74 001470 0004+00 1/1 0/0 0/0 .sdata2          @15188 */
SECTION_SDATA2 static f32 lit_15188 = 46.051204681396484f;

/* 80452E74-80452E78 001474 0004+00 5/5 0/0 0/0 .sdata2          @15341 */
SECTION_SDATA2 static f32 lit_15341 = 23.0f;

/* 80452E78-80452E7C 001478 0004+00 5/5 0/0 0/0 .sdata2          @15460 */
SECTION_SDATA2 static f32 lit_15460 = 0.004999999888241291f;

/* 80452E7C-80452E80 00147C 0004+00 2/2 0/0 0/0 .sdata2          @15808 */
SECTION_SDATA2 static f32 lit_15808 = 14400.0f;

/* 80452E80-80452E84 001480 0004+00 6/6 0/0 0/0 .sdata2          @16036 */
SECTION_SDATA2 static f32 lit_16036 = 75.0f;

/* 80452E84-80452E88 001484 0004+00 3/3 0/0 0/0 .sdata2          @16037 */
SECTION_SDATA2 static f32 lit_16037 = 129.99000549316406f;

/* 80452E88-80452E8C 001488 0004+00 2/2 0/0 0/0 .sdata2          @16038 */
SECTION_SDATA2 static f32 lit_16038 = 34.0f;

/* 80452E8C-80452E90 00148C 0004+00 1/1 0/0 0/0 .sdata2          @16066 */
SECTION_SDATA2 static f32 lit_16066 = 1000000.0f;

/* 80452E90-80452E94 001490 0004+00 2/2 0/0 0/0 .sdata2          @16067 */
SECTION_SDATA2 static f32 lit_16067 = 90000.0f;

/* 80452E94-80452E98 001494 0004+00 12/12 0/0 0/0 .sdata2          @16210 */
SECTION_SDATA2 static f32 lit_16210 = 17.0f;

/* 80452E98-80452E9C 001498 0004+00 1/1 0/0 0/0 .sdata2          @16566 */
SECTION_SDATA2 static f32 lit_16566 = 700.0f;

/* 80452E9C-80452EA0 00149C 0004+00 4/4 0/0 0/0 .sdata2          @16567 */
SECTION_SDATA2 static f32 lit_16567 = 600.0f;

/* 80452EA0-80452EA4 0014A0 0004+00 3/3 0/0 0/0 .sdata2          @16568 */
SECTION_SDATA2 static f32 lit_16568 = -100.0f;

/* 80452EA4-80452EA8 0014A4 0004+00 1/1 0/0 0/0 .sdata2          @16569 */
SECTION_SDATA2 static f32 lit_16569 = 250.0f;

/* 80452EA8-80452EAC 0014A8 0004+00 20/20 0/0 0/0 .sdata2          @16570 */
SECTION_SDATA2 static f32 lit_16570 = 3.0f / 10.0f;

/* 80452EAC-80452EB0 0014AC 0004+00 11/11 0/0 0/0 .sdata2          @16641 */
SECTION_SDATA2 static f32 lit_16641 = 0.75f;

/* 80452EB0-80452EB4 0014B0 0004+00 2/2 0/0 0/0 .sdata2          @16790 */
SECTION_SDATA2 static f32 lit_16790 = 81.0f;

/* 80452EB4-80452EB8 0014B4 0004+00 22/22 0/0 0/0 .sdata2          @17382 */
SECTION_SDATA2 static f32 lit_17382 = 11.0f;

/* 80452EB8-80452EBC 0014B8 0004+00 3/3 0/0 0/0 .sdata2          @17592 */
SECTION_SDATA2 static f32 lit_17592 = 127.0f;

/* 80452EBC-80452EC0 0014BC 0004+00 6/6 0/0 0/0 .sdata2          @17593 */
SECTION_SDATA2 static f32 lit_17593 = 65.0f;

/* 80452EC0-80452EC4 0014C0 0004+00 1/1 0/0 0/0 .sdata2          @18068 */
SECTION_SDATA2 static f32 lit_18068 = -11.0f;

/* 80452EC4-80452EC8 0014C4 0004+00 2/2 0/0 0/0 .sdata2          @18176 */
SECTION_SDATA2 static f32 lit_18176 = 230.0f;

/* 80452EC8-80452ECC 0014C8 0004+00 2/2 0/0 0/0 .sdata2          @18706 */
SECTION_SDATA2 static f32 lit_18706 = 0.0020000000949949026f;

/* 80452ECC-80452ED0 0014CC 0004+00 1/1 0/0 0/0 .sdata2          @18830 */
SECTION_SDATA2 static f32 lit_18830 = 10.0f / 3.0f;

/* 80452ED0-80452ED4 0014D0 0004+00 6/6 0/0 0/0 .sdata2          @18847 */
SECTION_SDATA2 static f32 lit_18847 = 9.0f / 10.0f;

/* 80452ED4-80452ED8 0014D4 0004+00 7/7 0/0 0/0 .sdata2          @18929 */
SECTION_SDATA2 static f32 lit_18929 = 182.04444885253906f;

/* 80452ED8-80452EDC 0014D8 0004+00 1/1 0/0 0/0 .sdata2          @18997 */
SECTION_SDATA2 static f32 lit_18997 = 125.0f;

/* 80452EDC-80452EE0 0014DC 0004+00 3/3 0/0 0/0 .sdata2          @19240 */
SECTION_SDATA2 static f32 lit_19240 = 6.0f / 5.0f;

/* 8009ECA0-8009EF38 0995E0 0298+00 1/1 0/0 0/0 .text            headModelCallBack__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::headModelCallBack(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/headModelCallBack__9daAlink_cFi.s"
}
#pragma pop

/* 8009EF38-8009EF7C 099878 0044+00 1/1 0/0 0/0 .text daAlink_headModelCallBack__FP8J3DJointi */
static int daAlink_headModelCallBack(J3DJoint* i_joint, int param_1) {
    int joint_no = i_joint->getJntNo();
    daAlink_c* this_ = (daAlink_c*)j3dSys.getModel()->getUserArea();

    if (param_1 == 0) {
        this_->headModelCallBack(joint_no);
    }

    return 1;
}

/* 8009EF7C-8009EFF0 0998BC 0074+00 1/1 0/0 0/0 .text            wolfModelCallBack__9daAlink_cFi */
int daAlink_c::wolfModelCallBack(int i_jointNo) {
    jointControll(i_jointNo);

    if (i_jointNo == 36) {
        setWolfFootMatrix();
    } else if (i_jointNo == 7 || i_jointNo == 2 || i_jointNo == 3) {
        changeWolfBlendRate(i_jointNo);
    }

    return 1;
}

/* 8009EFF0-8009F034 099930 0044+00 1/1 0/0 0/0 .text daAlink_wolfModelCallBack__FP8J3DJointi */
static int daAlink_wolfModelCallBack(J3DJoint* i_joint, int param_1) {
    int joint_no = i_joint->getJntNo();
    daAlink_c* this_ = (daAlink_c*)j3dSys.getModel()->getUserArea();

    if (param_1 == 0) {
        this_->wolfModelCallBack(joint_no);
    }

    return 1;
}

/* ############################################################################################## */
/* 80452EE0-80452EE4 0014E0 0004+00 6/6 0/0 0/0 .sdata2          @19379 */
SECTION_SDATA2 static f32 lit_19379 = 0.25f;

/* 80452EE4-80452EE8 0014E4 0004+00 4/4 0/0 0/0 .sdata2          @19380 */
SECTION_SDATA2 static f32 lit_19380 = 46.0f;

/* 80452EE8-80452EEC 0014E8 0004+00 1/1 0/0 0/0 .sdata2          @19381 */
SECTION_SDATA2 static f32 lit_19381 = 53.0f;

/* 80452EEC-80452EF0 0014EC 0004+00 3/3 0/0 0/0 .sdata2          @19382 */
SECTION_SDATA2 static f32 lit_19382 = 41.0f;

/* 80452EF0-80452EF4 0014F0 0004+00 1/1 0/0 0/0 .sdata2          @19428 */
SECTION_SDATA2 static f32 lit_19428 = 102.0f;

/* 80452EF4-80452EF8 0014F4 0004+00 1/1 0/0 0/0 .sdata2          @19580 */
SECTION_SDATA2 static f32 lit_19580 = 360000.0f;

/* 80452EF8-80452EFC 0014F8 0004+00 1/1 0/0 0/0 .sdata2          @20303 */
SECTION_SDATA2 static f32 lit_20303 = 68.0f;

/* 80452EFC-80452F00 0014FC 0004+00 2/2 0/0 0/0 .sdata2          @20400 */
SECTION_SDATA2 static f32 lit_20400 = 256.0f;

/* 80452F00-80452F04 001500 0004+00 1/1 0/0 0/0 .sdata2          @20401 */
SECTION_SDATA2 static f32 lit_20401 = 9.999999747378752e-05f;

/* 80452F04-80452F08 001504 0004+00 2/2 0/0 0/0 .sdata2          @20402 */
SECTION_SDATA2 static f32 lit_20402 = 6.2831854820251465f;

/* 80452F08-80452F0C 001508 0004+00 4/4 0/0 0/0 .sdata2          @20495 */
SECTION_SDATA2 static f32 lit_20495 = 3000.0f;

/* 80452F0C-80452F10 00150C 0004+00 5/5 0/0 0/0 .sdata2          @20496 */
SECTION_SDATA2 static f32 lit_20496 = 1500.0f;

/* 80452F10-80452F14 001510 0004+00 1/1 0/0 0/0 .sdata2          @20790 */
SECTION_SDATA2 static f32 lit_20790 = 6.103515625e-05f;

/* 80452F14-80452F18 001514 0004+00 3/3 0/0 0/0 .sdata2          @20823 */
SECTION_SDATA2 static f32 lit_20823 = -35.0f;

/* 80452F18-80452F1C 001518 0004+00 5/5 0/0 0/0 .sdata2          @20824 */
SECTION_SDATA2 static f32 lit_20824 = 175.0f;

/* 80452F1C-80452F20 00151C 0004+00 6/6 0/0 0/0 .sdata2          @20991 */
SECTION_SDATA2 static f32 lit_20991 = 55.0f;

/* 80452F20-80452F24 001520 0004+00 1/1 0/0 0/0 .sdata2          @20992 */
SECTION_SDATA2 static f32 lit_20992 = -55.0f;

/* 80452F24-80452F28 001524 0004+00 1/1 0/0 0/0 .sdata2          @21021 */
SECTION_SDATA2 static f32 lit_21021 = -4.0f;

/* 80452F28-80452F2C 001528 0004+00 3/3 0/0 0/0 .sdata2          @21624 */
SECTION_SDATA2 static f32 lit_21624 = 32768.0f;

/* 80452F2C-80452F30 00152C 0004+00 3/3 0/0 0/0 .sdata2          @21680 */
SECTION_SDATA2 static f32 lit_21680 = 1024.0f;

/* 80452F30-80452F34 001530 0004+00 4/4 0/0 0/0 .sdata2          @21736 */
SECTION_SDATA2 static f32 lit_21736 = 45.0f;

/* 80452F34-80452F38 001534 0004+00 1/1 0/0 0/0 .sdata2          @22146 */
SECTION_SDATA2 static f32 lit_22146 = 0.18479956686496735f;

/* 80452F38-80452F3C -00001 0004+00 1/1 0/0 0/0 .sdata2          None */
SECTION_SDATA2 static u8 data_80452F38 = 1;

SECTION_SDATA2 static u8 data_80452F39 = 4;

/* 80452F3C-80452F40 00153C 0004+00 1/1 0/0 0/0 .sdata2          @22608 */
SECTION_SDATA2 static f32 lit_22608 = 9025.0f;

/* 80452F40-80452F44 001540 0004+00 1/1 0/0 0/0 .sdata2          @22609 */
SECTION_SDATA2 static f32 lit_22609 = 4900.0f;

/* 80452F44-80452F48 001544 0004+00 1/1 0/0 0/0 .sdata2          @23155 */
SECTION_SDATA2 static f32 lit_23155 = 15.5f;

/* 80452F48-80452F4C 001548 0004+00 6/6 0/0 0/0 .sdata2          @23416 */
SECTION_SDATA2 static f32 lit_23416 = 4.5f;

/* 80452F4C-80452F50 00154C 0004+00 1/1 0/0 0/0 .sdata2          @23542 */
SECTION_SDATA2 static f32 lit_23542 = 0.9986000061035156f;

/* 80452F50-80452F54 001550 0004+00 10/10 0/0 0/0 .sdata2          @23595 */
SECTION_SDATA2 static f32 lit_23595 = 120.0f;

/* 80452F54-80452F58 001554 0004+00 2/2 0/0 0/0 .sdata2          @24322 */
SECTION_SDATA2 static f32 lit_24322 = 33.0f;

/* 80452F58-80452F5C 001558 0004+00 4/4 0/0 0/0 .sdata2          @24323 */
SECTION_SDATA2 static f32 lit_24323 = 31.0f;

/* 80452F5C-80452F60 00155C 0004+00 1/1 0/0 0/0 .sdata2          @24400 */
SECTION_SDATA2 static f32 lit_24400 = 424.8800048828125f;

/* 80452F60-80452F64 001560 0004+00 1/1 0/0 0/0 .sdata2          @24401 */
SECTION_SDATA2 static f32 lit_24401 = 347.0299987792969f;

/* 80452F64-80452F68 001564 0004+00 2/2 0/0 0/0 .sdata2          @24589 */
SECTION_SDATA2 static f32 lit_24589 = 61.0f;

/* 80452F68-80452F6C 001568 0004+00 2/2 0/0 0/0 .sdata2          @24590 */
SECTION_SDATA2 static f32 lit_24590 = 59.0f;

/* 80452F6C-80452F70 00156C 0004+00 4/4 0/0 0/0 .sdata2          @24591 */
SECTION_SDATA2 static f32 lit_24591 = 51.0f;

/* 80452F70-80452F74 001570 0004+00 1/1 0/0 0/0 .sdata2          @24592 */
SECTION_SDATA2 static f32 lit_24592 = 148.0f;

/* 80452F74-80452F78 001574 0004+00 1/1 0/0 0/0 .sdata2          @24593 */
SECTION_SDATA2 static f32 lit_24593 = 136.0f;

/* 80452F78-80452F7C 001578 0004+00 1/1 0/0 0/0 .sdata2          @24594 */
SECTION_SDATA2 static f32 lit_24594 = 117.0f;

/* 80452F7C-80452F80 00157C 0004+00 1/1 0/0 0/0 .sdata2          @24595 */
SECTION_SDATA2 static f32 lit_24595 = 105.0f;

/* 80452F80-80452F84 001580 0004+00 1/1 0/0 0/0 .sdata2          @24600 */
SECTION_SDATA2 static f32 lit_24600 = 2.0f / 75.0f;

/* 80452F84-80452F88 001584 0004+00 4/4 0/0 0/0 .sdata2          @24618 */
SECTION_SDATA2 static f32 lit_24618 = 37.5f;

/* 80452F88-80452F8C 001588 0004+00 4/4 0/0 0/0 .sdata2          @24680 */
SECTION_SDATA2 static f32 lit_24680 = 5.5f;

/* 80452F8C-80452F90 00158C 0004+00 1/1 0/0 0/0 .sdata2          @24852 */
SECTION_SDATA2 static f32 lit_24852 = 187.5f;

/* 80452F90-80452F94 001590 0004+00 5/5 0/0 0/0 .sdata2          @25059 */
SECTION_SDATA2 static f32 lit_25059 = -20.0f;

/* 80452F94-80452F98 001594 0004+00 2/2 0/0 0/0 .sdata2          @25113 */
SECTION_SDATA2 static f32 lit_25113 = 110.0f;

/* 80452F98-80452F9C 001598 0004+00 2/2 0/0 0/0 .sdata2          @25684 */
SECTION_SDATA2 static f32 lit_25684 = 190.0f;

/* 80452F9C-80452FA0 00159C 0004+00 1/1 0/0 0/0 .sdata2          @25873 */
SECTION_SDATA2 static f32 lit_25873 = 0.00016276042151730508f;

/* 80452FA0-80452FA4 0015A0 0004+00 1/1 0/0 0/0 .sdata2          @25874 */
SECTION_SDATA2 static f32 lit_25874 = -0.00016276042151730508f;

/* 80452FA4-80452FA8 0015A4 0004+00 6/6 0/0 0/0 .sdata2          @25916 */
SECTION_SDATA2 static f32 lit_25916 = 214.0f;

/* 80452FA8-80452FB0 0015A8 0008+00 1/1 0/0 0/0 .sdata2          offsetAngle$25945 */
SECTION_SDATA2 static u8 offsetAngle[8] = {
    0x00, 0x00, 0x80, 0x00, 0x40, 0x00, 0xC0, 0x00,
};

/* 80452FB0-80452FB4 0015B0 0004+00 1/1 0/0 0/0 .sdata2          @26233 */
SECTION_SDATA2 static f32 lit_26233 = 1.0f / 12.0f;

/* 80452FB4-80452FB8 0015B4 0004+00 1/1 0/0 0/0 .sdata2          @26275 */
SECTION_SDATA2 static f32 lit_26275 = -8.899365425109863f;

/* 80452FB8-80452FBC 0015B8 0004+00 1/1 0/0 0/0 .sdata2          @26276 */
SECTION_SDATA2 static f32 lit_26276 = 18.5f;

/* 80452FBC-80452FC0 0015BC 0004+00 1/1 0/0 0/0 .sdata2          @26297 */
SECTION_SDATA2 static f32 lit_26297 = 17.798730850219727f;

/* 80452FC0-80452FC4 0015C0 0004+00 2/2 0/0 0/0 .sdata2          @26816 */
SECTION_SDATA2 static f32 lit_26816 = 22500.0f;

/* 80452FC4-80452FC8 0015C4 0004+00 1/1 0/0 0/0 .sdata2          @26817 */
SECTION_SDATA2 static f32 lit_26817 = 16384.0f;

/* 80452FC8-80452FCC 0015C8 0004+00 1/1 0/0 0/0 .sdata2          @26818 */
SECTION_SDATA2 static f32 lit_26818 = 6144.0f;

/* 80452FCC-80452FD0 0015CC 0004+00 1/1 0/0 0/0 .sdata2          @26819 */
SECTION_SDATA2 static f32 lit_26819 = 8192.0f;

/* 80452FD0-80452FD4 0015D0 0004+00 2/2 0/0 0/0 .sdata2          @27005 */
SECTION_SDATA2 static f32 lit_27005 = -65.0f;

/* 80452FD4-80452FD8 0015D4 0004+00 1/1 0/0 0/0 .sdata2          @27418 */
SECTION_SDATA2 static f32 lit_27418 = 13653.0f;

/* 80452FD8-80452FDC 0015D8 0004+00 1/1 0/0 0/0 .sdata2          @27476 */
SECTION_SDATA2 static f32 lit_27476 = 2330.0f;

/* 80452FDC-80452FE0 0015DC 0004+00 7/7 0/0 0/0 .sdata2          @27477 */
SECTION_SDATA2 static f32 lit_27477 = 17.0f / 20.0f;

/* 80452FE0-80452FE4 0015E0 0004+00 2/2 0/0 0/0 .sdata2          @28016 */
SECTION_SDATA2 static f32 lit_28016 = -45.0f;

/* 80452FE4-80452FE8 0015E4 0004+00 1/1 0/0 0/0 .sdata2          @28017 */
SECTION_SDATA2 static f32 lit_28017 = 145.0f;

/* 80452FE8-80452FEC 0015E8 0004+00 1/1 0/0 0/0 .sdata2          @28045 */
SECTION_SDATA2 static f32 lit_28045 = -34.0f;

/* 80452FEC-80452FF0 0015EC 0004+00 1/1 0/0 0/0 .sdata2          @28285 */
SECTION_SDATA2 static f32 lit_28285 = 910.0f;

/* 80452FF0-80452FF4 0015F0 0004+00 2/2 0/0 0/0 .sdata2          @28286 */
SECTION_SDATA2 static f32 lit_28286 = 7.0f / 20.0f;

/* 80452FF4-80452FF8 0015F4 0004+00 1/1 0/0 0/0 .sdata2          @28287 */
SECTION_SDATA2 static f32 lit_28287 = 1.5707963705062866f;

/* 80452FF8-80452FFC 0015F8 0004+00 1/1 0/0 0/0 .sdata2          @28405 */
SECTION_SDATA2 static f32 lit_28405 = 1.0f / 48.0f;

/* 80452FFC-80453000 0015FC 0004+00 2/2 0/0 0/0 .sdata2          @30372 */
SECTION_SDATA2 static f32 lit_30372 = 400.0f;

/* 80453000-80453004 001600 0004+00 4/4 0/0 0/0 .sdata2          @30895 */
SECTION_SDATA2 static f32 lit_30895 = 6.5f;

/* 80453004-80453008 001604 0004+00 1/1 0/0 0/0 .sdata2          @31530 */
SECTION_SDATA2 static f32 lit_31530 = 384.0f;

/* 80453008-80453010 001608 0008+00 5/5 0/0 0/0 .sdata2          @32072 */
SECTION_SDATA2 static f64 lit_32072 = 4503599627370496.0 /* cast u32 to float */;

/* 80453010-80453014 001610 0004+00 1/1 0/0 0/0 .sdata2          @32830 */
SECTION_SDATA2 static f32 lit_32830 = 608.0f;

/* 80453014-80453018 001614 0004+00 1/1 0/0 0/0 .sdata2          @32831 */
SECTION_SDATA2 static f32 lit_32831 = 448.0f;

/* 80453018-8045301C 001618 0004+00 1/1 0/0 0/0 .sdata2          @32832 */
SECTION_SDATA2 static f32 lit_32832 = -1.0f / 100.0f;

/* 8045301C-80453020 00161C 0004+00 1/1 0/0 0/0 .sdata2          @32833 */
SECTION_SDATA2 static f32 lit_32833 = 16777215.0f;

/* 80453020-80453024 001620 0004+00 1/1 0/0 0/0 .sdata2          grassWhistleIdx$33097 */
SECTION_SDATA2 static u16 grassWhistleIdx[2] = {
    3,
    3,
};

/* 80453024-80453028 001624 0004+00 1/1 0/0 0/0 .sdata2          @33587 */
SECTION_SDATA2 static f32 lit_33587 = 64.0f;

/* 80453028-8045302C 001628 0004+00 1/1 0/0 0/0 .sdata2          @34189 */
SECTION_SDATA2 static f32 lit_34189 = -16384.0f;

/* 8045302C-80453030 00162C 0004+00 3/3 0/0 0/0 .sdata2          @34190 */
SECTION_SDATA2 static f32 lit_34190 = 14336.0f;

/* 80453030-80453034 001630 0004+00 1/1 0/0 0/0 .sdata2          @34772 */
SECTION_SDATA2 static f32 lit_34772 = -6.0f;

/* 80453034-80453038 001634 0004+00 1/1 0/0 0/0 .sdata2          @34773 */
SECTION_SDATA2 static f32 lit_34773 = -18.0f / 5.0f;

/* 80453038-8045303C 001638 0004+00 1/1 0/0 0/0 .sdata2          @34774 */
SECTION_SDATA2 static f32 lit_34774 = -35.29999923706055f;

/* 8045303C-80453040 00163C 0004+00 1/1 0/0 0/0 .sdata2          @34775 */
SECTION_SDATA2 static f32 lit_34775 = -9.5f;

/* 80453040-80453044 001640 0004+00 1/1 0/0 0/0 .sdata2          @34776 */
SECTION_SDATA2 static f32 lit_34776 = -16.0f;

/* 80453044-80453048 001644 0004+00 1/1 0/0 0/0 .sdata2          @34777 */
SECTION_SDATA2 static f32 lit_34777 = 65536.0f;

/* 80453048-8045304C 001648 0004+00 1/1 0/0 0/0 .sdata2          @34778 */
SECTION_SDATA2 static f32 lit_34778 = 5.0f / 3.0f;

/* 8045304C-80453050 00164C 0004+00 1/1 0/0 0/0 .sdata2          @34779 */
SECTION_SDATA2 static f32 lit_34779 = -1.0f / 5.0f;

/* 80453050-80453054 001650 0004+00 3/3 0/0 0/0 .sdata2          @34957 */
SECTION_SDATA2 static f32 lit_34957 = 22.0f;

/* 80453054-80453058 001654 0004+00 1/1 0/0 0/0 .sdata2          @35610 */
SECTION_SDATA2 static f32 lit_35610 = 0.3500000238418579f;

/* 80453058-8045305C 001658 0004+00 4/4 0/0 0/0 .sdata2          @37152 */
SECTION_SDATA2 static f32 lit_37152 = 3.5f;

/* 8045305C-80453060 00165C 0004+00 1/1 0/0 0/0 .sdata2          @37322 */
SECTION_SDATA2 static f32 lit_37322 = 111.0f;

/* 80453060-80453064 001660 0004+00 1/1 0/0 0/0 .sdata2          @37323 */
SECTION_SDATA2 static f32 lit_37323 = 88.0f;

/* 80453064-80453068 001664 0004+00 1/1 0/0 0/0 .sdata2          @37527 */
SECTION_SDATA2 static f32 lit_37527 = 1.0f / 9.0f;

/* 80453068-8045306C 001668 0004+00 3/3 0/0 0/0 .sdata2          @37528 */
SECTION_SDATA2 static f32 lit_37528 = 1.0f / 7.0f;

/* 8045306C-80453070 00166C 0004+00 1/1 0/0 0/0 .sdata2          @37749 */
SECTION_SDATA2 static f32 lit_37749 = 35.0f / 9.0f;

/* 80453070-80453074 001670 0004+00 2/2 0/0 0/0 .sdata2          @38059 */
SECTION_SDATA2 static f32 lit_38059 = 19.0f / 50.0f;

/* 80453074-80453078 001674 0004+00 1/1 0/0 0/0 .sdata2          @38175 */
SECTION_SDATA2 static f32 lit_38175 = 101.0f;

/* 80453078-8045307C 001678 0004+00 1/1 0/0 0/0 .sdata2          @38176 */
SECTION_SDATA2 static f32 lit_38176 = 122.0f;

/* 8045307C-80453080 00167C 0004+00 1/1 0/0 0/0 .sdata2          @38177 */
SECTION_SDATA2 static f32 lit_38177 = 114.0f;

/* 80453080-80453084 001680 0004+00 1/1 0/0 0/0 .sdata2          @38624 */
SECTION_SDATA2 static f32 lit_38624 = -90.0f;

/* 80453084-80453088 001684 0004+00 1/1 0/0 0/0 .sdata2          @39330 */
SECTION_SDATA2 static f32 lit_39330 = 3.0f / 50.0f;

/* 80453088-8045308C 001688 0004+00 1/1 0/0 0/0 .sdata2          @40561 */
SECTION_SDATA2 static f32 lit_40561 = 0.0625f;

/* 8045308C-80453090 00168C 0004+00 1/1 0/0 0/0 .sdata2          @40562 */
SECTION_SDATA2 static f32 lit_40562 = 205.0f;

/* 80453090-80453094 001690 0004+00 1/1 0/0 0/0 .sdata2          @40716 */
SECTION_SDATA2 static f32 lit_40716 = 84.0f;

/* 80453094-8045309C 001694 0006+02 1/1 0/0 0/0 .sdata2          effName$40765 */
SECTION_SDATA2 static u8 effName_40765[6 + 2 /* padding */] = {
    0x04,
    0x07,
    0x04,
    0x08,
    0x04,
    0x09,
    /* padding */
    0x00,
    0x00,
};

/* 8045309C-804530A4 00169C 0006+02 1/1 0/0 0/0 .sdata2          effName0$40950 */
SECTION_SDATA2 static u8 effName0[6 + 2 /* padding */] = {
    0x86,
    0x7D,
    0x86,
    0x7E,
    0x86,
    0x7F,
    /* padding */
    0x00,
    0x00,
};

/* 804530A4-804530AC 0016A4 0006+02 1/1 0/0 0/0 .sdata2          effName1$40951 */
SECTION_SDATA2 static u8 effName1[6 + 2 /* padding */] = {
    0x89,
    0x81,
    0x89,
    0x82,
    0x89,
    0x83,
    /* padding */
    0x00,
    0x00,
};

/* 804530AC-804530B0 0016AC 0004+00 1/1 0/0 0/0 .sdata2          effNameNormal$41086 */
SECTION_SDATA2 static u8 effNameNormal[4] = {
    0x01,
    0x59,
    0x01,
    0x5A,
};

/* 804530B0-804530B8 0016B0 0008+00 1/1 0/0 0/0 .sdata2          effNameLight$41091 */
SECTION_SDATA2 static u8 effNameLight[8] = {
    0x0A, 0x28, 0x0A, 0x29, 0x0A, 0x2A, 0x0A, 0x2B,
};

/* 804530B8-804530BC 0016B8 0004+00 1/1 0/0 0/0 .sdata2          effNameWater$41101 */
SECTION_SDATA2 static u8 effNameWater[4] = {
    0x0C,
    0x52,
    0x0C,
    0x53,
};

/* 804530BC-804530C0 0016BC 0004+00 1/1 0/0 0/0 .sdata2          @41180 */
SECTION_SDATA2 static f32 lit_41180 = 0.005493247881531715f;

/* 804530C0-804530C8 0016C0 0008+00 1/1 0/0 0/0 .sdata2          jointID$41285 */
SECTION_SDATA2 static u8 jointID[8] = {
    0x00, 0x14, 0x00, 0x13, 0x00, 0x18, 0x00, 0x19,
};

/* 804530C8-804530D0 0016C8 0008+00 1/1 0/0 0/0 .sdata2          effName$41286 */
SECTION_SDATA2 static u8 effName_41286[8] = {
    0x88, 0xE1, 0x88, 0xE2, 0x88, 0xE3, 0x88, 0xE4,
};

/* 804530D0-804530D8 0016D0 0006+02 1/1 0/0 0/0 .sdata2          effName$41312 */
SECTION_SDATA2 static u8 effName_41312[6 + 2 /* padding */] = {
    0x0A,
    0x58,
    0x0A,
    0x59,
    0x0B,
    0x9D,
    /* padding */
    0x00,
    0x00,
};

/* 804530D8-804530E0 0016D8 0006+02 1/1 0/0 0/0 .sdata2          name0$41422 */
SECTION_SDATA2 static u8 name0[6 + 2 /* padding */] = {
    0x02,
    0xA3,
    0x83,
    0xA2,
    0x88,
    0x4F,
    /* padding */
    0x00,
    0x00,
};

/* 804530E0-804530E8 0016E0 0006+02 1/1 0/0 0/0 .sdata2          name1$41423 */
SECTION_SDATA2 static u8 name1[6 + 2 /* padding */] = {
    0x02,
    0xA3,
    0x83,
    0xA3,
    0x88,
    0x50,
    /* padding */
    0x00,
    0x00,
};

/* 804530E8-804530F0 0016E8 0006+02 1/1 0/0 0/0 .sdata2          effID$41443 */
SECTION_SDATA2 static u8 effID[6 + 2 /* padding */] = {
    0x02,
    0x44,
    0x02,
    0x45,
    0x02,
    0x46,
    /* padding */
    0x00,
    0x00,
};

/* 804530F0-804530F4 0016F0 0004+00 1/1 0/0 0/0 .sdata2          normalNameID$41521 */
SECTION_SDATA2 static u8 normalNameID[4] = {
    0x83,
    0x90,
    0x83,
    0x91,
};

/* 804530F4-804530F8 0016F4 0004+00 1/1 0/0 0/0 .sdata2          ganonNameID$41522 */
SECTION_SDATA2 static u8 ganonNameID[4] = {
    0x8C,
    0x2A,
    0x8C,
    0x2B,
};

/* 804530F8-80453100 0016F8 0008+00 1/1 0/0 0/0 .sdata2          effDataTable$41650 */
SECTION_SDATA2 static u8 effDataTable[8] = {
    0x02, 0xA5, 0x02, 0xA6, 0x02, 0xA7, 0x02, 0xA8,
};

/* 80453100-80453104 001700 0004+00 4/4 0/0 0/0 .sdata2          @41718 */
SECTION_SDATA2 static f32 lit_41718 = 13.0f / 20.0f;

/* 80453104-8045310C 001704 0008+00 1/1 0/0 0/0 .sdata2          cutSplashName$41756 */
SECTION_SDATA2 static u8 cutSplashName[8] = {
    0x01, 0xB8, 0x01, 0xB9, 0x01, 0xBA, 0x01, 0xBB,
};

/* 8045310C-80453110 00170C 0004+00 1/1 0/0 0/0 .sdata2          effName$42224 */
SECTION_SDATA2 static u8 effName_42224[4] = {
    0x88,
    0x18,
    0x88,
    0x19,
};

/* 80453110-80453114 001710 0004+00 1/1 0/0 0/0 .sdata2          effName$42309 */
SECTION_SDATA2 static u16 effName_42309[2] = {
    0x0814,
    0x0815,
};

/* 80453114-80453118 001714 0004+00 1/1 0/0 0/0 .sdata2          effName$42340 */
SECTION_SDATA2 static u16 effName_42340[2] = {
    0x0816,
    0x0817,
};

/* 80453118-8045311C 001718 0004+00 4/4 0/0 0/0 .sdata2          @42493 */
SECTION_SDATA2 static f32 lit_42493 = -60.0f;

/* 8045311C-80453120 00171C 0004+00 2/2 0/0 0/0 .sdata2          @42622 */
SECTION_SDATA2 static f32 lit_42622 = -29.0f;

/* 80453120-80453124 001720 0004+00 1/1 0/0 0/0 .sdata2          @42685 */
SECTION_SDATA2 static f32 lit_42685 = 1.0f / 6.0f;

/* 80453124-80453128 001724 0004+00 1/1 0/0 0/0 .sdata2          @42686 */
SECTION_SDATA2 static f32 lit_42686 = 0.00390625f;

/* 80453128-8045312C 001728 0004+00 1/1 0/0 0/0 .sdata2          @42687 */
SECTION_SDATA2 static f32 lit_42687 = 2.6179938316345215f;

/* 8045312C-80453130 00172C 0004+00 1/1 0/0 0/0 .sdata2          @42688 */
SECTION_SDATA2 static f32 lit_42688 = 0.5235987901687622f;

/* 80453130-80453134 001730 0004+00 1/1 0/0 0/0 .sdata2          @42933 */
SECTION_SDATA2 static f32 lit_42933 = 115.0f;

/* 80453134-80453138 001734 0004+00 1/1 0/0 0/0 .sdata2          @42934 */
SECTION_SDATA2 static f32 lit_42934 = -130.0f;

/* 80453138-8045313C 001738 0004+00 1/1 0/0 0/0 .sdata2          @43529 */
SECTION_SDATA2 static f32 lit_43529 = 180.0f;

/* 8045313C-80453140 00173C 0004+00 2/2 0/0 0/0 .sdata2          @43530 */
SECTION_SDATA2 static f32 lit_43530 = -120.0f;

/* 80453140-80453144 001740 0004+00 2/2 0/0 0/0 .sdata2          @43531 */
SECTION_SDATA2 static f32 lit_43531 = -200.0f;

/* 80453144-80453148 001744 0004+00 1/1 0/0 0/0 .sdata2          @44003 */
SECTION_SDATA2 static f32 lit_44003 = -0.3826834261417389f;

/* 80453148-8045314C 001748 0004+00 1/1 0/0 0/0 .sdata2          @44004 */
SECTION_SDATA2 static f32 lit_44004 = -0.1736481785774231f;

/* 8045314C-80453150 00174C 0004+00 1/1 0/0 0/0 .sdata2          fFootJoint$44785 */
SECTION_SDATA2 static u8 fFootJoint[4] = {
    0x00,
    0x10,
    0x00,
    0x15,
};

/* 80453150-80453154 001750 0004+00 1/1 0/0 0/0 .sdata2          bFootJoint$44786 */
SECTION_SDATA2 static u8 bFootJoint[4] = {
    0x00,
    0x1C,
    0x00,
    0x21,
};

/* 80453154-80453158 001754 0004+00 1/1 0/0 0/0 .sdata2          @45401 */
SECTION_SDATA2 static f32 lit_45401 = 165.0f;

/* 80453158-8045315C 001758 0004+00 2/2 0/0 0/0 .sdata2          @45501 */
SECTION_SDATA2 static f32 lit_45501 = -1000.0f;

/* 8045315C-80453160 00175C 0004+00 1/1 0/0 0/0 .sdata2          @45756 */
SECTION_SDATA2 static f32 lit_45756 = -1.5f;

/* 80453160-80453164 001760 0004+00 1/1 0/0 0/0 .sdata2          @46081 */
SECTION_SDATA2 static f32 lit_46081 = 16.5f;

/* 80453164-80453168 001764 0004+00 3/3 0/0 0/0 .sdata2          @46462 */
SECTION_SDATA2 static f32 lit_46462 = 56.0f;

/* 80453168-8045316C 001768 0004+00 1/1 0/0 0/0 .sdata2          @47052 */
SECTION_SDATA2 static f32 lit_47052 = 9000000.0f;

/* 8045316C-80453170 00176C 0004+00 1/1 0/0 0/0 .sdata2          @47417 */
SECTION_SDATA2 static f32 lit_47417 = -6144.0f;

/* 80453170-80453174 001770 0004+00 3/3 0/0 0/0 .sdata2          @47597 */
SECTION_SDATA2 static f32 lit_47597 = 13.5f;

/* 80453174-80453178 001774 0004+00 1/1 0/0 0/0 .sdata2          @47598 */
SECTION_SDATA2 static f32 lit_47598 = 0.2327105700969696f;

/* 80453178-8045317C 001778 0004+00 1/1 0/0 0/0 .sdata2          @47725 */
SECTION_SDATA2 static f32 lit_47725 = 3072.0f;

/* 8045317C-80453180 00177C 0004+00 1/1 0/0 0/0 .sdata2          @47726 */
SECTION_SDATA2 static f32 lit_47726 = 1536.0f;

/* 80453180-80453184 001780 0004+00 2/2 0/0 0/0 .sdata2          @48076 */
SECTION_SDATA2 static f32 lit_48076 = 85.0f;

/* 80453184-80453188 001784 0004+00 2/2 0/0 0/0 .sdata2          @48077 */
SECTION_SDATA2 static f32 lit_48077 = 12.5f;

/* 80453188-8045318C 001788 0004+00 2/2 0/0 0/0 .sdata2          @48078 */
SECTION_SDATA2 static f32 lit_48078 = 14.5f;

/* 8045318C-80453190 00178C 0004+00 1/1 0/0 0/0 .sdata2          @48504 */
SECTION_SDATA2 static f32 lit_48504 = 86.0f;

/* 80453190-80453194 001790 0004+00 1/1 0/0 0/0 .sdata2          @48505 */
SECTION_SDATA2 static f32 lit_48505 = 71.0f;

/* 80453194-80453198 001794 0004+00 1/1 0/0 0/0 .sdata2          @48506 */
SECTION_SDATA2 static f32 lit_48506 = 63.0f;

/* 80453198-8045319C 001798 0004+00 1/1 0/0 0/0 .sdata2          @49124 */
SECTION_SDATA2 static f32 lit_49124 = 40000.0f;

/* 8045319C-804531A0 00179C 0004+00 1/1 0/0 0/0 .sdata2          @49395 */
SECTION_SDATA2 static f32 lit_49395 = 0.33864477276802063f;

/* 804531A0-804531A4 0017A0 0004+00 1/1 0/0 0/0 .sdata2          @49396 */
SECTION_SDATA2 static f32 lit_49396 = -29.525135040283203f;

/* 804531A4-804531A8 0017A4 0004+00 1/1 0/0 0/0 .sdata2          @49938 */
SECTION_SDATA2 static f32 lit_49938 = 0.20943951606750488f;

/* 804531A8-804531AC 0017A8 0004+00 1/1 0/0 0/0 .sdata2          @49992 */
SECTION_SDATA2 static f32 lit_49992 = 20.5f;

/* 804531AC-804531B0 0017AC 0004+00 1/1 0/0 0/0 .sdata2          @50951 */
SECTION_SDATA2 static f32 lit_50951 = 135.0f;

/* 804531B0-804531B4 0017B0 0004+00 1/1 0/0 0/0 .sdata2          @51575 */
SECTION_SDATA2 static f32 lit_51575 = 155.0f;

/* 804531B4-804531B8 0017B4 0004+00 4/4 0/0 0/0 .sdata2          @52234 */
SECTION_SDATA2 static f32 lit_52234 = 7.5f;

/* 804531B8-804531BC 0017B8 0004+00 1/1 0/0 0/0 .sdata2          @52470 */
SECTION_SDATA2 static f32 lit_52470 = 17.5f;

/* 804531BC-804531C0 0017BC 0004+00 1/1 0/0 0/0 .sdata2          @52534 */
SECTION_SDATA2 static f32 lit_52534 = -9.0f;

/* 804531C0-804531C4 0017C0 0004+00 1/1 0/0 0/0 .sdata2          @52535 */
SECTION_SDATA2 static f32 lit_52535 = -17.0f;

/* 804531C4-804531C8 0017C4 0004+00 2/2 0/0 0/0 .sdata2          @52536 */
SECTION_SDATA2 static f32 lit_52536 = -7.0f;

/* 804531C8-804531CC 0017C8 0004+00 1/1 0/0 0/0 .sdata2          @52882 */
SECTION_SDATA2 static f32 lit_52882 = 94.0f;

/* 804531CC-804531D0 0017CC 0004+00 2/2 0/0 0/0 .sdata2          @52883 */
SECTION_SDATA2 static f32 lit_52883 = 97.0f;

/* 804531D0-804531D4 0017D0 0004+00 1/1 0/0 0/0 .sdata2          @52884 */
SECTION_SDATA2 static f32 lit_52884 = 19.0f / 20.0f;

/* 804531D4-804531D8 0017D4 0004+00 1/1 0/0 0/0 .sdata2          @53012 */
SECTION_SDATA2 static f32 lit_53012 = 66.0f;

/* 804531D8-804531E0 0017D8 0008+00 1/1 0/0 0/0 .sdata2          snowID$53110 */
SECTION_SDATA2 static u8 snowID[8] = {
    0x88, 0x4D, 0x88, 0x4E, 0x88, 0x51, 0x88, 0x52,
};

/* 804531E0-804531E8 0017E0 0008+00 1/1 0/0 0/0 .sdata2          smokeID$53111 */
SECTION_SDATA2 static u8 smokeID[8] = {
    0x83, 0xA0, 0x83, 0xA1, 0x83, 0xA4, 0x83, 0xA5,
};

/* 804531E8-804531F0 0017E8 0008+00 1/1 0/0 0/0 .sdata2          waterColor$53845 */
SECTION_SDATA2 static GXColorS10 waterColor = {0, 0, 0, 0};

/* 804531F0-804531F4 0017F0 0004+00 1/1 0/0 0/0 .sdata2          @55047 */
SECTION_SDATA2 static f32 lit_55047 = 77.0f;

/* 804531F4-804531F8 0017F4 0004+00 1/1 0/0 0/0 .sdata2          @55048 */
SECTION_SDATA2 static f32 lit_55048 = 4060.0f;

/* 8009F034-8009FFF8 099974 0FC4+00 1/1 0/0 0/0 .text            setHatAngle__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setHatAngle() {
    nofralloc
#include "asm/d/a/d_a_alink/setHatAngle__9daAlink_cFv.s"
}
#pragma pop

/* 8009FFF8-800A002C 09A938 0034+00 1/1 0/0 0/0 .text            calcHairAngle__9daAlink_cFPs */
void daAlink_c::calcHairAngle(s16* o_angle) {
    cLib_addCalcAngleS(o_angle, 0, 5, 400, 50);
}

/* ############################################################################################## */
/* 804531F8-804531FC 0017F8 0004+00 2/2 0/0 0/0 .sdata2          @55145 */
SECTION_SDATA2 static f32 lit_55145 = 1.0f / 30.0f;

/* 804531FC-80453200 0017FC 0004+00 1/1 0/0 0/0 .sdata2          @55146 */
SECTION_SDATA2 static f32 lit_55146 = 6000.0f;

/* 80453200-80453204 001800 0004+00 1/1 0/0 0/0 .sdata2          @55147 */
SECTION_SDATA2 static f32 lit_55147 = 8000.0f;

/* 80453204-80453208 001804 0004+00 1/1 0/0 0/0 .sdata2          @55148 */
SECTION_SDATA2 static f32 lit_55148 = 7000.0f;

/* 80453208-8045320C 001808 0004+00 1/1 0/0 0/0 .sdata2          @55149 */
SECTION_SDATA2 static f32 lit_55149 = -9000.0f;

/* 8045320C-80453210 00180C 0004+00 1/1 0/0 0/0 .sdata2          @55150 */
SECTION_SDATA2 static f32 lit_55150 = -15000.0f;

/* 80453210-80453214 001810 0004+00 1/1 0/0 0/0 .sdata2          @55151 */
SECTION_SDATA2 static f32 lit_55151 = -7000.0f;

/* 800A002C-800A0744 09A96C 0718+00 1/1 0/0 0/0 .text            setHairAngle__9daAlink_cFP4cXyzff
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setHairAngle(cXyz* param_0, f32 param_1, f32 param_2) {
    nofralloc
#include "asm/d/a/d_a_alink/setHairAngle__9daAlink_cFP4cXyzff.s"
}
#pragma pop

/* 800A0744-800A07D8 09B084 0094+00 0/0 1/1 0/0 .text setLookPosFromOut__9daAlink_cFP4cXyz */
void daAlink_c::setLookPosFromOut(cXyz* p_pos) {
    if (i_checkEndResetFlg0(ERFLG0_UNK_4)) {
        if (current.pos.abs2(mLookPosFromOut) < current.pos.abs2(*p_pos)) {
            return;
        }
    }

    i_onEndResetFlg0(ERFLG0_UNK_4);
    mLookPosFromOut = *p_pos;
}

/* ############################################################################################## */
/* 8038D658-8038D664 019CB8 000C+00 69/69 0/0 0/0 .rodata          @3757 */
SECTION_RODATA static u8 const lit_3757[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8038D658, &lit_3757);

#include "d/a/d_a_alink_HIO_data.inc"

/* 800A07D8-800A0868 09B118 0090+00 2/2 0/0 0/0 .text checkAttentionPosAngle__9daAlink_cFP4cXyz */
bool daAlink_c::checkAttentionPosAngle(cXyz* param_0) {
    if (i_checkNoResetFlg1(FLG1_UNK_4)) {
        return true;
    }

    int tmp;
    if (i_checkModeFlg(MODE_RIDING) || i_checkEndResetFlg0(ERFLG0_UNK_400)) {
        tmp = daAlinkHIO_horse_c0::m.mSearchRangeAngle;
    } else {
        tmp = 0x6000;
    }

    s16 targetY = cLib_targetAngleY(&field_0x34e0, param_0);
    return cLib_distanceAngleS(targetY, field_0x2fe6) <= tmp;
}

/* 800A0868-800A093C 09B1A8 00D4+00 1/1 0/0 0/0 .text
 * checkActorPosAngle__9daAlink_cFP10fopAc_ac_cPP4cXyz          */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkActorPosAngle(fopAc_ac_c* param_0, cXyz** param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/checkActorPosAngle__9daAlink_cFP10fopAc_ac_cPP4cXyz.s"
}
#pragma pop

/* 800A093C-800A142C 09B27C 0AF0+00 1/1 0/0 0/0 .text            getNeckAimPos__9daAlink_cFP4cXyzPii
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::getNeckAimPos(cXyz* param_0, int* param_1, int param_2) {
    nofralloc
#include "asm/d/a/d_a_alink/getNeckAimPos__9daAlink_cFP4cXyzPii.s"
}
#pragma pop

/* 800A142C-800A1AEC 09BD6C 06C0+00 1/1 0/0 0/0 .text getNeckAimAngle__9daAlink_cFP4cXyzPsPsPsPs
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::getNeckAimAngle(cXyz* param_0, s16* param_1, s16* param_2, s16* param_3,
                                    s16* param_4) {
    nofralloc
#include "asm/d/a/d_a_alink/getNeckAimAngle__9daAlink_cFP4cXyzPsPsPsPs.s"
}
#pragma pop

/* ############################################################################################## */
/* 80453214-80453218 001814 0004+00 1/1 0/0 0/0 .sdata2          @55845 */
SECTION_SDATA2 static f32 lit_55845 = 0.0001220703125f;

/* 80453218-8045321C 001818 0004+00 1/1 0/0 0/0 .sdata2          @55846 */
SECTION_SDATA2 static f32 lit_55846 = 0.000244140625f;

/* 8045321C-80453220 00181C 0004+00 2/2 0/0 0/0 .sdata2          @55847 */
SECTION_SDATA2 static f32 lit_55847 = 3.0f / 100.0f;

/* 80453220-80453224 001820 0004+00 1/1 0/0 0/0 .sdata2          @55848 */
SECTION_SDATA2 static f32 lit_55848 = 2.0f / 25.0f;

/* 800A1AEC-800A1F90 09C42C 04A4+00 1/1 0/0 0/0 .text            setEyeMove__9daAlink_cFP4cXyzss */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setEyeMove(cXyz* param_0, s16 param_1, s16 param_2) {
    nofralloc
#include "asm/d/a/d_a_alink/setEyeMove__9daAlink_cFP4cXyzss.s"
}
#pragma pop

/* 800A1F90-800A2160 09C8D0 01D0+00 1/1 0/0 0/0 .text            setNeckAngle__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setNeckAngle() {
    nofralloc
#include "asm/d/a/d_a_alink/setNeckAngle__9daAlink_cFv.s"
}
#pragma pop

/* 800A2160-800A2198 09CAA0 0038+00 1/0 0/0 0/0 .text getStickAngleFromPlayerShape__9daAlink_cCFPs
 */
bool daAlink_c::getStickAngleFromPlayerShape(s16* o_angle) const {
    if (checkInputOnR()) {
        *o_angle = field_0x2fe2 - shape_angle.y;
        return true;
    }

    *o_angle = 0;
    return false;
}

/* 800A2198-800A21E0 09CAD8 0048+00 42/42 0/0 0/0 .text commonLineCheck__9daAlink_cFP4cXyzP4cXyz
 */
bool daAlink_c::commonLineCheck(cXyz* i_startPos, cXyz* i_endPos) {
    mLinkLinChk.Set(i_startPos, i_endPos, this);
    return dComIfG_Bgsp().LineCross(&mLinkLinChk);
}

/* 800A21E0-800A2280 09CB20 00A0+00 18/18 0/0 2/2 .text
 * getMoveBGActorName__9daAlink_cFR13cBgS_PolyInfoi             */
s16 daAlink_c::getMoveBGActorName(cBgS_PolyInfo& param_0, int param_1) {
    if ((param_1 != 0 || dComIfG_Bgsp().ChkPolySafe(param_0)) &&
        dComIfG_Bgsp().ChkMoveBG_NoDABg(param_0) && dComIfG_Bgsp().GetActorPointer(param_0))
    {
        return fopAcM_GetName(dComIfG_Bgsp().GetActorPointer(param_0));
    }

    return PROC_ALINK;
}

/* 800A2280-800A22E8 09CBC0 0068+00 2/2 0/0 0/0 .text            checkGoronRide__9daAlink_cFv */
fopAc_ac_c* daAlink_c::checkGoronRide() {
    if (mLinkAcch.ChkGroundHit() && getMoveBGActorName(mLinkAcch.m_gnd, 0) == PROC_OBJ_GRA) {
        return dComIfG_Bgsp().GetActorPointer(mLinkAcch.m_gnd);
    }

    return NULL;
}

/* ############################################################################################## */
/* 80453224-80453228 001824 0004+00 1/1 0/0 0/0 .sdata2          @56018 */
SECTION_SDATA2 static f32 lit_56018 = -3.8999998569488525f;

/* 800A22E8-800A2710 09CC28 0428+00 1/1 0/0 0/0 .text            setMoveSlantAngle__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setMoveSlantAngle() {
    nofralloc
#include "asm/d/a/d_a_alink/setMoveSlantAngle__9daAlink_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 8038FA10-8038FA20 01C070 0010+00 0/0 0/0 0/0 .rodata          l_worldChangeEventName */
#pragma push
#pragma force_active on
SECTION_RODATA static char const l_worldChangeEventName[16] = "WORLD_CHANGE_IN";
COMPILER_STRIP_GATE(0x8038FA10, &l_worldChangeEventName);
#pragma pop

/* 8038FA20-8038FA38 01C080 0015+03 0/0 0/0 0/0 .rodata          l_wolfWorldChangeEventName */
#pragma push
#pragma force_active on
SECTION_RODATA static char const l_wolfWorldChangeEventName[24] = "WOLF_WORLD_CHANGE_IN";
COMPILER_STRIP_GATE(0x8038FA20, &l_wolfWorldChangeEventName);
#pragma pop

/* 8038FA38-8038FA48 01C098 0010+00 0/1 0/0 0/0 .rodata          l_defaultGetEventName */
#pragma push
#pragma force_active on
SECTION_RODATA static char const l_defaultGetEventName[16] = "DEFAULT_GETITEM";
COMPILER_STRIP_GATE(0x8038FA38, &l_defaultGetEventName);
#pragma pop

/* 8038FA48-8038FA54 01C0A8 000C+00 0/0 0/0 0/0 .rodata          l_crawlStartFrontOffset */
#pragma push
#pragma force_active on
SECTION_RODATA static float const l_crawlStartFrontOffset[3] = {0.0f, 30.0f, 112.0f};
COMPILER_STRIP_GATE(0x8038FA48, &l_crawlStartFrontOffset);
#pragma pop

/* 8038FA54-8038FA60 01C0B4 000C+00 1/2 0/0 0/0 .rodata          l_crawlFrontOffset */
SECTION_RODATA static Vec const l_crawlFrontOffset = {0.0f, 30.0f, 80.0f};
COMPILER_STRIP_GATE(0x8038FA54, &l_crawlFrontOffset);

/* 8038FA60-8038FA6C 01C0C0 000C+00 0/1 0/0 0/0 .rodata          l_crawlBackOffset */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_crawlBackOffset[12] = {
    0x00, 0x00, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00, 0xC1, 0xF0, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8038FA60, &l_crawlBackOffset);
#pragma pop

/* 8038FA6C-8038FA78 01C0CC 000C+00 1/1 0/0 0/0 .rodata          l_crawlTopOffset */
SECTION_RODATA static Vec const l_crawlTopOffset = {0.0f, 30.0f, 0.0f};
COMPILER_STRIP_GATE(0x8038FA6C, &l_crawlTopOffset);

/* 8038FA78-8038FA84 01C0D8 000C+00 1/2 0/0 0/0 .rodata          l_crawlFrontUpOffset */
SECTION_RODATA static u8 const l_crawlFrontUpOffset[12] = {
    0x00, 0x00, 0x00, 0x00, 0x42, 0xA0, 0x00, 0x00, 0x42, 0xA0, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8038FA78, &l_crawlFrontUpOffset);

/* 8038FA84-8038FA90 01C0E4 000C+00 0/1 0/0 0/0 .rodata          l_wolfLieFrontUpOffset */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_wolfLieFrontUpOffset[12] = {
    0x00, 0x00, 0x00, 0x00, 0x42, 0x96, 0x00, 0x00, 0x42, 0xC8, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8038FA84, &l_wolfLieFrontUpOffset);
#pragma pop

/* 8038FA90-8038FA9C 01C0F0 000C+00 1/2 0/0 0/0 .rodata          l_crawlBackUpOffset */
SECTION_RODATA static u8 const l_crawlBackUpOffset[12] = {
    0x00, 0x00, 0x00, 0x00, 0x42, 0xA0, 0x00, 0x00, 0xC1, 0xF0, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8038FA90, &l_crawlBackUpOffset);

/* 8038FA9C-8038FAA8 01C0FC 000C+00 0/1 0/0 0/0 .rodata          l_wolfLieBackUpOffset */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_wolfLieBackUpOffset[12] = {
    0x00, 0x00, 0x00, 0x00, 0x42, 0x96, 0x00, 0x00, 0xC2, 0x8C, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8038FA9C, &l_wolfLieBackUpOffset);
#pragma pop

/* 8038FAA8-8038FAB4 01C108 000C+00 0/1 0/0 0/0 .rodata          l_crawlStandUpOffset */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_crawlStandUpOffset[12] = {
    0x00, 0x00, 0x00, 0x00, 0x42, 0xA0, 0x00, 0x00, 0xC1, 0xF0, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8038FAA8, &l_crawlStandUpOffset);
#pragma pop

/* 8038FAB4-8038FAC0 01C114 000C+00 0/1 0/0 0/0 .rodata          l_wolfLieStandUpOffset */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_wolfLieStandUpOffset[12] = {
    0x00, 0x00, 0x00, 0x00, 0x42, 0xA0, 0x00, 0x00, 0xC2, 0x8C, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8038FAB4, &l_wolfLieStandUpOffset);
#pragma pop

/* 8038FAC0-8038FACC 01C120 000C+00 1/2 0/0 0/0 .rodata          l_crawlTopUpOffset */
SECTION_RODATA static Vec const l_crawlTopUpOffset = {0.0f, 80.0f, 0.0f};
COMPILER_STRIP_GATE(0x8038FAC0, &l_crawlTopUpOffset);

/* 8038FACC-8038FAD8 01C12C 000C+00 0/1 0/0 0/0 .rodata          l_wolfLieTopUpOffset */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_wolfLieTopUpOffset[12] = {
    0x00, 0x00, 0x00, 0x00, 0x42, 0x96, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8038FACC, &l_wolfLieTopUpOffset);
#pragma pop

/* 8038FAD8-8038FAE4 01C138 000C+00 0/1 0/0 0/0 .rodata          l_crawlSideOffset */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_crawlSideOffset[12] = {
    0x42, 0x5C, 0x00, 0x00, 0x42, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8038FAD8, &l_crawlSideOffset);
#pragma pop

/* 8038FAE4-8038FAF0 01C144 000C+00 0/1 0/0 0/0 .rodata          l_wolfLieSideOffset */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_wolfLieSideOffset[12] = {
    0x42, 0x5C, 0x00, 0x00, 0x42, 0x96, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8038FAE4, &l_wolfLieSideOffset);
#pragma pop

/* 8038FAF0-8038FAFC 01C150 000C+00 0/1 0/0 0/0 .rodata          l_crawlLSideOffset */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const l_crawlLSideOffset = {55.0f, 0.0f, 0.0f};
COMPILER_STRIP_GATE(0x8038FAF0, &l_crawlLSideOffset);
#pragma pop

/* 8038FAFC-8038FB08 01C15C 000C+00 0/1 0/0 0/0 .rodata          l_crawlRSideOffset */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const l_crawlRSideOffset = {-55.0f, 0.0f, 0.0f};
COMPILER_STRIP_GATE(0x8038FAFC, &l_crawlRSideOffset);
#pragma pop

/* 8038FB08-8038FB14 01C168 000C+00 0/1 0/0 0/0 .rodata          l_crawlLSideFrontOffset */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const l_crawlLSideFrontOffset = {55.0f, 5.0f, 80.0f};
COMPILER_STRIP_GATE(0x8038FB08, &l_crawlLSideFrontOffset);
#pragma pop

/* 8038FB14-8038FB20 01C174 000C+00 0/1 0/0 0/0 .rodata          l_crawlRSideFrontOffset */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const l_crawlRSideFrontOffset = {-55.0f, 5.0f, 80.0f};
COMPILER_STRIP_GATE(0x8038FB14, &l_crawlRSideFrontOffset);
#pragma pop

/* 8038FB20-8038FB2C 01C180 000C+00 0/2 0/0 0/0 .rodata          l_crawlMinSideOffset */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_crawlMinSideOffset[12] = {
    0x42, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8038FB20, &l_crawlMinSideOffset);
#pragma pop

/* 8038FB2C-8038FB38 01C18C 000C+00 0/2 0/0 0/0 .rodata          l_swordTopLocalN */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_swordTopLocalN[12] = {
    0x42, 0xC8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8038FB2C, &l_swordTopLocalN);
#pragma pop

/* 8038FB38-8038FB44 01C198 000C+00 0/2 0/0 0/0 .rodata          l_swordTopLocalM */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_swordTopLocalM[12] = {
    0x42, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8038FB38, &l_swordTopLocalM);
#pragma pop

/* 8038FB44-8038FB50 01C1A4 000C+00 1/2 0/0 0/0 .rodata          l_ironBallChainVec */
SECTION_RODATA static u8 const l_ironBallChainVec[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8038FB44, &l_ironBallChainVec);

/* 8038FB50-8038FB5C 01C1B0 000C+00 1/2 0/0 0/0 .rodata          l_ironBallCenterVec */
SECTION_RODATA static Vec const l_ironBallCenterVec = {
    0.0f,
    0.0f,
    42.0f,
};
COMPILER_STRIP_GATE(0x8038FB50, &l_ironBallCenterVec);

/* 8038FB5C-8038FBBC 01C1BC 0060+00 1/2 0/0 0/0 .rodata          l_wolfFootOnFrame */
SECTION_RODATA static u8 const l_wolfFootOnFrame[96] = {
    0x00, 0x00, 0x00, 0x00, 0x41, 0x80, 0x00, 0x00, 0x41, 0x98, 0x00, 0x00, 0x40, 0xC0, 0x00, 0x00,
    0x41, 0x20, 0x00, 0x00, 0x41, 0x40, 0x00, 0x00, 0x40, 0xE0, 0x00, 0x00, 0x40, 0x40, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00, 0x41, 0xD8, 0x00, 0x00, 0x41, 0x00, 0x00, 0x00,
    0x41, 0x88, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0xC0, 0x00, 0x00, 0x41, 0x30, 0x00, 0x00,
    0x41, 0xC0, 0x00, 0x00, 0x42, 0x00, 0x00, 0x00, 0x41, 0x40, 0x00, 0x00, 0x41, 0xD0, 0x00, 0x00,
    0x42, 0x60, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x30, 0x00, 0x00, 0x42, 0x68, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8038FB5C, &l_wolfFootOnFrame);

/* 8038FBBC-8038FBD4 01C21C 0018+00 1/1 0/0 0/0 .rodata          l_insectNameList */
SECTION_RODATA static s16 const l_insectNameList[12] = {
    PROC_Obj_Kabuto, PROC_Obj_Cho, PROC_Obj_Kuw, PROC_Obj_Batta, PROC_Obj_Nan, PROC_Obj_Dan,
    PROC_Obj_Kam,    PROC_Obj_Ten, PROC_Obj_Kat, PROC_Obj_Tombo, PROC_Obj_Ari, PROC_Obj_Kag,
};
COMPILER_STRIP_GATE(0x8038FBBC, &l_insectNameList);

/* 8038FBD4-8038FC24 01C234 0050+00 0/1 0/0 0/0 .rodata          m_mainBckShield__9daAlink_c */
#pragma push
#pragma force_active on
SECTION_RODATA daAlink_BckData const daAlink_c::m_mainBckShield[20] = {
    {0x0025, 0x0025}, {0x0023, 0x0023}, {0x0012, 0x001B}, {0x0010, 0x001B}, {0x0021, 0x0021},
    {0x001E, 0x001E}, {0x003C, 0x003C}, {0x002C, 0x002C}, {0x003E, 0x003E}, {0x002E, 0x002E},
    {0x0030, 0x0030}, {0x0028, 0x0028}, {0x0032, 0x0032}, {0x002A, 0x002A}, {0x0274, 0x001B},
    {0x0020, 0x001B}, {0x001B, 0x001B}, {0x0026, 0x0026}, {0x0277, 0x001B}, {0x00CD, 0x001B},
};
COMPILER_STRIP_GATE(0x8038FBD4, &daAlink_c::m_mainBckShield);
#pragma pop

/* 8038FC24-8038FC38 01C284 0014+00 0/1 0/0 0/0 .rodata          m_mainBckSword__9daAlink_c */
#pragma push
#pragma force_active on
SECTION_RODATA daAlink_BckData const daAlink_c::m_mainBckSword[5] = {
    {0x001A, 0x001A}, {0x001C, 0x001C}, {0x0277, 0x0277}, {0x00CD, 0x00CD}, {0x0243, 0x0244},
};
COMPILER_STRIP_GATE(0x8038FC24, &daAlink_c::m_mainBckSword);
#pragma pop

/* 8038FC38-8038FCA8 01C298 0070+00 0/1 0/0 0/0 .rodata          m_mainBckFishing__9daAlink_c */
#pragma push
#pragma force_active on
SECTION_RODATA daAlink_BckData const daAlink_c::m_mainBckFishing[28] = {
    {0x0025, 0x0273}, {0x0023, 0x00C8}, {0x0012, 0x0273}, {0x0010, 0x00C8}, {0x0021, 0x0273},
    {0x001E, 0x00C8}, {0x003C, 0x0273}, {0x002C, 0x0273}, {0x003E, 0x0273}, {0x002E, 0x0273},
    {0x0030, 0x00C8}, {0x0028, 0x00C8}, {0x0032, 0x00C8}, {0x002A, 0x00C8}, {0x0274, 0x0273},
    {0x0020, 0x0273}, {0x001A, 0x0273}, {0x001C, 0x0273}, {0x0277, 0x0273}, {0x00CD, 0x00C8},
    {0x0243, 0x0244}, {0x0233, 0x0273}, {0x0234, 0x0273}, {0x0233, 0x0273}, {0x0234, 0x0273},
    {0x026A, 0x0273}, {0x0256, 0x0273}, {0x0257, 0x0273},
};
COMPILER_STRIP_GATE(0x8038FC38, &daAlink_c::m_mainBckFishing);
#pragma pop

/* 8038FCA8-80391010 01C308 1368+00 3/4 0/0 0/0 .rodata          m_anmDataTable__9daAlink_c */
daAlink_AnmData const daAlink_c::m_anmDataTable[414] = {
    {37, 36, 254, 254, 0, 232, 0},
    {35, 34, 254, 254, 0, 232, 0},
    {18, 18, 254, 254, 0, 232, 0},
    {16, 16, 254, 254, 0, 232, 0},
    {33, 31, 254, 254, 0, 232, 0},
    {30, 29, 254, 254, 0, 232, 0},
    {60, 59, 4, 10, 0, 232, 0},
    {44, 43, 4, 10, 0, 232, 0},
    {62, 61, 4, 10, 0, 232, 0},
    {46, 45, 4, 10, 0, 232, 0},
    {48, 47, 4, 10, 0, 232, 0},
    {40, 39, 4, 10, 0, 232, 0},
    {50, 49, 4, 10, 0, 232, 0},
    {42, 41, 4, 10, 0, 232, 0},
    {628, 628, 254, 254, 0, 232, 0},
    {32, 26, 254, 254, 0, 0, 0},
    {26, 14, 254, 254, 0, 232, 0},
    {28, 14, 254, 254, 0, 232, 0},
    {631, 631, 4, 10, 0, 0, 0},
    {205, 197, 4, 10, 0, 232, 0},
    {579, 579, 254, 254, 0, 345, 0},
    {563, 563, 4, 10, 0, 0, 0},
    {564, 564, 4, 10, 0, 0, 0},
    {563, 604, 4, 10, 0, 0, 0},
    {564, 604, 4, 10, 0, 0, 0},
    {618, 618, 4, 10, 0, 0, 0},
    {598, 598, 1, 6, 0, 232, 0},
    {599, 599, 1, 6, 0, 351, 0},
    {198, 198, 1, 6, 0, 232, 0},
    {54, 54, 254, 254, 0, 328, 0},
    {56, 56, 254, 254, 0, 328, 0},
    {53, 53, 1, 6, 0, 232, 0},
    {55, 55, 1, 6, 0, 232, 0},
    {52, 52, 254, 254, 0, 328, 0},
    {51, 51, 1, 6, 0, 232, 0},
    {519, 519, 254, 254, 0, 328, 0},
    {521, 521, 254, 254, 0, 223, 0},
    {520, 520, 1, 6, 38, 335, 0},
    {518, 518, 4, 10, 0, 328, 0},
    {517, 517, 4, 10, 0, 232, 0},
    {559, 559, 254, 254, 0, 232, 0},
    {123, 123, 254, 254, 0, 0, 0},
    {126, 126, 254, 6, 0, 232, 0},
    {19, 19, 254, 6, 0, 232, 0},
    {21, 21, 254, 6, 0, 232, 0},
    {124, 124, 254, 6, 0, 232, 0},
    {23, 23, 254, 6, 0, 232, 0},
    {24, 24, 254, 6, 0, 232, 0},
    {20, 20, 1, 6, 125, 233, 0},
    {421, 421, 254, 254, 0, 327, 0},
    {419, 419, 254, 254, 0, 327, 0},
    {420, 420, 254, 254, 0, 223, 0},
    {436, 436, 254, 254, 0, 223, 0},
    {437, 437, 254, 254, 0, 223, 0},
    {617, 617, 254, 254, 0, 223, 0},
    {503, 503, 254, 254, 10, 333, 0},
    {502, 502, 254, 254, 4, 232, 0},
    {501, 501, 254, 254, 4, 232, 0},
    {500, 500, 0, 5, 11, 332, 0},
    {499, 499, 254, 254, 0, 232, 0},
    {498, 498, 0, 5, 0, 232, 0},
    {510, 510, 254, 254, 0, 223, 0},
    {511, 511, 254, 254, 0, 223, 0},
    {509, 509, 254, 254, 0, 223, 0},
    {225, 225, 4, 10, 0, 223, 0},
    {226, 226, 4, 10, 0, 223, 0},
    {565, 565, 4, 5, 0, 232, 0},
    {566, 566, 4, 5, 0, 232, 0},
    {562, 562, 4, 5, 0, 232, 0},
    {418, 418, 4, 5, 0, 232, 0},
    {416, 416, 4, 5, 0, 232, 0},
    {417, 417, 4, 5, 0, 232, 0},
    {614, 614, 4, 5, 0, 0, 0},
    {629, 629, 4, 5, 0, 0, 0},
    {630, 630, 4, 5, 0, 0, 0},
    {202, 202, 4, 5, 0, 232, 0},
    {203, 203, 4, 5, 0, 232, 0},
    {781, 614, 4, 5, 0, 0, 0},
    {221, 221, 4, 5, 0, 258, 0},
    {435, 435, 4, 5, 0, 261, 0},
    {149, 149, 100, 5, 36, 272, 0},
    {568, 568, 4, 5, 55, 338, 0},
    {569, 569, 4, 5, 56, 0, 0},
    {214, 214, 4, 10, 88, 300, 0},
    {587, 587, 4, 5, 37, 0, 0},
    {613, 613, 4, 5, 0, 232, 0},
    {560, 560, 4, 5, 109, 336, 0},
    {561, 561, 4, 5, 109, 336, 0},
    {373, 373, 4, 5, 110, 321, 0},
    {374, 374, 4, 5, 110, 321, 0},
    {588, 588, 4, 5, 114, 0, 0},
    {589, 589, 4, 5, 115, 0, 0},
    {512, 512, 254, 254, 0, 223, 0},
    {513, 513, 254, 254, 0, 223, 0},
    {227, 227, 4, 10, 0, 223, 0},
    {228, 228, 4, 10, 0, 223, 0},
    {624, 624, 254, 254, 16, 357, 0},
    {623, 623, 4, 5, 17, 356, 0},
    {127, 127, 100, 6, 46, 259, 0},
    {153, 153, 0, 6, 47, 275, 0},
    {154, 154, 0, 6, 48, 276, 0},
    {143, 143, 100, 6, 49, 267, 0},
    {144, 144, 100, 6, 49, 267, 0},
    {132, 132, 100, 6, 50, 262, 0},
    {133, 133, 100, 6, 51, 263, 0},
    {134, 134, 100, 5, 0, 261, 0},
    {138, 138, 0, 5, 0, 223, 0},
    {137, 137, 100, 5, 0, 223, 0},
    {139, 139, 100, 5, 52, 264, 0},
    {136, 136, 0, 5, 0, 223, 0},
    {135, 135, 100, 5, 0, 223, 0},
    {155, 155, 0, 6, 89, 277, 0},
    {156, 156, 0, 6, 89, 277, 0},
    {152, 152, 100, 6, 60, 274, 0},
    {151, 151, 100, 6, 61, 273, 0},
    {159, 159, 100, 6, 58, 280, 0},
    {158, 158, 100, 6, 59, 279, 0},
    {164, 164, 0, 6, 0, 232, 0},
    {165, 165, 100, 6, 0, 232, 0},
    {166, 166, 100, 6, 0, 232, 0},
    {170, 170, 0, 5, 0, 261, 0},
    {167, 167, 0, 5, 90, 285, 0},
    {168, 168, 0, 5, 0, 286, 0},
    {169, 169, 100, 5, 18, 287, 0},
    {142, 142, 0, 6, 127, 266, 0},
    {140, 140, 0, 6, 128, 265, 0},
    {141, 141, 0, 6, 0, 232, 0},
    {174, 174, 1, 6, 39, 234, 0},
    {172, 172, 1, 6, 39, 234, 0},
    {189, 189, 1, 6, 39, 234, 0},
    {190, 190, 1, 6, 39, 234, 0},
    {178, 178, 254, 254, 40, 248, 0},
    {175, 175, 254, 254, 40, 248, 0},
    {180, 180, 254, 254, 40, 248, 0},
    {182, 182, 254, 254, 40, 248, 0},
    {179, 179, 254, 254, 42, 292, 0},
    {176, 176, 254, 254, 43, 290, 0},
    {181, 181, 254, 254, 44, 293, 0},
    {183, 183, 254, 254, 44, 293, 0},
    {171, 171, 1, 6, 39, 234, 0},
    {431, 431, 1, 6, 39, 234, 0},
    {432, 432, 254, 254, 0, 223, 0},
    {324, 324, 0, 6, 6, 305, 0},
    {325, 325, 0, 10, 7, 306, 0},
    {567, 567, 4, 10, 28, 337, 0},
    {591, 591, 254, 254, 0, 223, 0},
    {592, 592, 254, 254, 0, 223, 0},
    {593, 593, 254, 254, 0, 223, 0},
    {594, 594, 254, 254, 0, 223, 0},
    {372, 372, 254, 254, 0, 223, 0},
    {378, 378, 254, 254, 0, 223, 0},
    {376, 376, 254, 254, 0, 223, 0},
    {377, 377, 254, 254, 0, 223, 0},
    {430, 430, 254, 254, 0, 223, 0},
    {428, 428, 254, 254, 0, 223, 0},
    {429, 429, 254, 254, 0, 223, 0},
    {425, 425, 254, 254, 0, 223, 0},
    {423, 423, 254, 254, 0, 223, 0},
    {424, 424, 254, 254, 0, 223, 0},
    {427, 427, 254, 254, 0, 223, 0},
    {426, 426, 254, 254, 0, 223, 0},
    {106, 106, 3, 9, 0, 232, 0},
    {112, 112, 3, 9, 0, 232, 0},
    {108, 108, 3, 9, 0, 232, 0},
    {109, 109, 3, 9, 0, 232, 0},
    {110, 110, 3, 9, 0, 232, 0},
    {111, 111, 3, 9, 0, 232, 0},
    {107, 107, 3, 9, 92, 254, 0},
    {527, 527, 3, 9, 0, 232, 0},
    {528, 528, 3, 9, 0, 232, 0},
    {522, 522, 3, 9, 0, 232, 0},
    {524, 524, 3, 9, 0, 232, 0},
    {525, 525, 3, 9, 0, 232, 0},
    {526, 526, 3, 9, 0, 232, 0},
    {523, 523, 3, 9, 0, 232, 0},
    {366, 366, 254, 254, 24, 313, 0},
    {369, 369, 254, 254, 25, 316, 0},
    {368, 368, 254, 254, 0, 315, 0},
    {379, 379, 254, 254, 26, 322, 0},
    {365, 365, 254, 254, 27, 312, 0},
    {367, 367, 254, 254, 0, 314, 0},
    {95, 95, 254, 254, 0, 223, 0},
    {604, 604, 4, 10, 1, 352, 0},
    {596, 596, 4, 10, 1, 349, 0},
    {585, 585, 4, 10, 0, 223, 0},
    {620, 620, 1, 6, 12, 355, 0},
    {157, 157, 1, 6, 13, 278, 0},
    {82, 82, 254, 254, 0, 232, 0},
    {632, 632, 1, 6, 0, 223, 0},
    {557, 557, 254, 254, 0, 223, 0},
    {555, 555, 254, 254, 0, 223, 0},
    {558, 558, 254, 254, 0, 223, 0},
    {556, 556, 254, 254, 0, 223, 0},
    {574, 574, 254, 254, 21, 342, 0},
    {578, 578, 254, 254, 22, 344, 0},
    {57, 57, 254, 254, 0, 232, 0},
    {58, 58, 254, 254, 0, 232, 0},
    {17, 17, 254, 254, 0, 232, 0},
    {570, 570, 254, 254, 3, 232, 0},
    {573, 573, 254, 254, 23, 341, 0},
    {577, 577, 254, 254, 0, 232, 0},
    {576, 576, 254, 254, 0, 232, 0},
    {193, 193, 1, 6, 39, 234, 0},
    {192, 192, 1, 6, 39, 234, 0},
    {194, 194, 1, 6, 39, 234, 0},
    {195, 195, 1, 6, 39, 234, 0},
    {196, 196, 1, 6, 39, 234, 0},
    {87, 87, 254, 254, 77, 247, 0},
    {86, 86, 254, 254, 78, 246, 0},
    {85, 85, 254, 254, 79, 245, 0},
    {361, 361, 254, 254, 0, 308, 0},
    {362, 362, 254, 254, 0, 310, 0},
    {362, 618, 254, 254, 0, 307, 0},
    {362, 381, 254, 254, 0, 307, 0},
    {586, 586, 4, 10, 41, 346, 0},
    {595, 595, 254, 254, 0, 348, 0},
    {619, 619, 254, 254, 0, 223, 0},
    {603, 602, 254, 5, 0, 223, 0},
    {603, 603, 0, 254, 0, 223, 0},
    {619, 533, 254, 5, 0, 223, 0},
    {619, 534, 0, 254, 0, 223, 0},
    {619, 531, 254, 5, 0, 223, 0},
    {619, 532, 0, 254, 0, 223, 0},
    {619, 103, 254, 5, 0, 223, 0},
    {90, 90, 2, 254, 0, 304, 0},
    {91, 91, 2, 254, 0, 304, 0},
    {92, 92, 2, 254, 0, 223, 0},
    {94, 94, 2, 5, 120, 249, 0},
    {491, 491, 254, 254, 0, 223, 0},
    {506, 506, 2, 5, 0, 223, 0},
    {508, 508, 2, 5, 0, 223, 0},
    {434, 434, 2, 5, 0, 223, 0},
    {217, 217, 4, 10, 30, 301, 0},
    {218, 218, 4, 10, 31, 302, 0},
    {215, 215, 3, 10, 0, 223, 0},
    {216, 216, 3, 10, 0, 223, 0},
    {219, 219, 254, 254, 0, 223, 0},
    {220, 220, 254, 254, 0, 223, 0},
    {492, 492, 254, 254, 29, 223, 0},
    {529, 529, 1, 6, 0, 223, 0},
    {484, 484, 1, 6, 0, 223, 0},
    {485, 485, 1, 6, 0, 223, 0},
    {552, 552, 254, 254, 0, 223, 0},
    {544, 544, 254, 254, 0, 223, 0},
    {543, 543, 254, 254, 0, 223, 0},
    {549, 549, 254, 254, 0, 223, 0},
    {547, 547, 254, 254, 0, 223, 0},
    {545, 545, 254, 254, 0, 223, 0},
    {546, 546, 254, 254, 0, 223, 0},
    {548, 548, 254, 254, 0, 223, 0},
    {551, 551, 100, 254, 0, 223, 0},
    {550, 550, 100, 254, 0, 223, 0},
    {530, 530, 254, 254, 0, 223, 0},
    {102, 102, 254, 254, 53, 252, 0},
    {105, 105, 254, 254, 54, 253, 0},
    {625, 625, 4, 10, 0, 358, 0},
    {72, 72, 3, 254, 62, 238, 0},
    {70, 70, 3, 254, 63, 236, 0},
    {71, 71, 3, 254, 64, 237, 0},
    {69, 69, 3, 254, 65, 235, 0},
    {75, 75, 3, 254, 66, 241, 0},
    {76, 76, 3, 5, 67, 242, 0},
    {73, 73, 3, 5, 68, 239, 0},
    {78, 78, 3, 254, 69, 243, 0},
    {79, 79, 3, 254, 70, 244, 0},
    {74, 74, 3, 254, 71, 240, 0},
    {77, 77, 3, 254, 0, 223, 0},
    {438, 438, 0, 10, 0, 223, 0},
    {495, 495, 0, 9, 0, 223, 0},
    {493, 493, 0, 9, 0, 223, 0},
    {494, 494, 0, 9, 0, 223, 0},
    {371, 371, 2, 254, 74, 319, 0},
    {370, 370, 2, 254, 76, 318, 0},
    {97, 97, 2, 254, 75, 251, 0},
    {621, 621, 2, 254, 75, 251, 0},
    {605, 605, 1, 6, 14, 355, 0},
    {610, 610, 1, 6, 15, 353, 0},
    {483, 483, 254, 254, 0, 223, 0},
    {212, 212, 4, 10, 80, 298, 0},
    {213, 213, 4, 10, 81, 299, 0},
    {571, 571, 254, 254, 82, 339, 0},
    {572, 572, 254, 254, 83, 340, 0},
    {114, 114, 3, 9, 0, 255, 0},
    {116, 116, 3, 9, 85, 256, 0},
    {115, 115, 3, 9, 0, 232, 0},
    {113, 113, 3, 9, 0, 232, 0},
    {117, 117, 3, 9, 0, 232, 0},
    {119, 119, 3, 9, 86, 257, 0},
    {120, 120, 3, 9, 87, 257, 0},
    {28, 121, 3, 9, 0, 232, 0},
    {122, 122, 3, 9, 0, 232, 0},
    {118, 118, 254, 254, 0, 304, 0},
    {222, 222, 4, 10, 84, 303, 0},
    {224, 224, 254, 254, 40, 248, 0},
    {8, 8, 0, 5, 0, 232, 0},
    {554, 554, 254, 254, 0, 223, 0},
    {553, 553, 254, 254, 0, 223, 0},
    {394, 394, 1, 6, 0, 232, 0},
    {395, 395, 1, 6, 0, 232, 0},
    {396, 396, 254, 254, 0, 232, 0},
    {384, 384, 1, 6, 0, 232, 0},
    {385, 385, 1, 6, 0, 232, 0},
    {386, 386, 1, 6, 0, 232, 0},
    {388, 388, 1, 6, 0, 232, 0},
    {392, 392, 1, 6, 0, 232, 0},
    {393, 393, 1, 6, 0, 232, 0},
    {390, 390, 1, 6, 0, 232, 0},
    {391, 391, 1, 6, 0, 232, 0},
    {387, 387, 1, 6, 0, 232, 0},
    {389, 389, 1, 6, 0, 232, 0},
    {398, 398, 1, 6, 0, 232, 0},
    {399, 399, 1, 6, 0, 232, 0},
    {400, 400, 1, 6, 0, 232, 0},
    {401, 401, 1, 6, 0, 232, 0},
    {404, 404, 1, 6, 0, 232, 0},
    {405, 405, 1, 6, 0, 232, 0},
    {402, 402, 1, 6, 0, 232, 0},
    {403, 403, 1, 6, 0, 232, 0},
    {504, 504, 254, 254, 0, 334, 0},
    {4142, 4142, 0, 5, 0, 223, 0},
    {4141, 4141, 0, 5, 0, 223, 0},
    {4106, 4106, 254, 254, 0, 223, 0},
    {4104, 4104, 254, 254, 0, 223, 0},
    {4105, 4105, 254, 254, 0, 223, 0},
    {4103, 4103, 254, 254, 0, 223, 0},
    {4129, 4129, 254, 254, 0, 223, 0},
    {4131, 4131, 254, 254, 0, 223, 0},
    {4130, 4130, 254, 254, 0, 223, 0},
    {4132, 4132, 254, 254, 0, 223, 0},
    {4133, 4133, 254, 254, 94, 4113, 0},
    {4136, 4136, 254, 254, 0, 223, 0},
    {4137, 4137, 254, 254, 0, 223, 0},
    {4134, 4134, 254, 254, 95, 4114, 0},
    {4135, 4135, 254, 254, 95, 4114, 0},
    {4138, 4138, 254, 254, 99, 4115, 0},
    {4121, 4121, 254, 254, 0, 223, 0},
    {4123, 4123, 254, 254, 97, 4110, 0},
    {4124, 4124, 254, 254, 98, 4111, 0},
    {4122, 4122, 254, 254, 96, 4109, 0},
    {4128, 4128, 254, 254, 95, 4114, 0},
    {4125, 4125, 254, 254, 101, 4112, 0},
    {4119, 4119, 254, 254, 100, 4108, 0},
    {4120, 4120, 254, 254, 100, 4108, 0},
    {4139, 4139, 254, 254, 0, 223, 0},
    {4140, 4140, 254, 254, 0, 223, 0},
    {4117, 4117, 254, 254, 102, 4107, 0},
    {4118, 4118, 254, 254, 102, 4107, 0},
    {4102, 4102, 254, 254, 0, 223, 0},
    {4116, 4116, 254, 254, 0, 223, 0},
    {4126, 4126, 0, 5, 0, 223, 0},
    {4127, 4127, 254, 254, 0, 223, 0},
    {177, 177, 254, 254, 93, 291, 0},
    {412, 412, 254, 5, 0, 232, 0},
    {413, 413, 254, 5, 0, 232, 0},
    {406, 406, 0, 5, 0, 232, 0},
    {411, 411, 0, 5, 0, 232, 0},
    {410, 410, 0, 5, 0, 232, 0},
    {409, 409, 0, 5, 0, 232, 0},
    {407, 407, 254, 5, 0, 232, 0},
    {408, 408, 254, 5, 0, 232, 0},
    {8204, 8204, 3, 9, 0, 232, 0},
    {8205, 8205, 3, 9, 0, 232, 0},
    {8206, 8206, 3, 9, 0, 232, 0},
    {8207, 8207, 100, 254, 0, 232, 0},
    {8201, 8201, 100, 9, 103, 232, 0},
    {8202, 8202, 100, 9, 104, 232, 0},
    {8203, 8203, 100, 10, 105, 8200, 0},
    {8208, 8208, 0, 5, 0, 223, 0},
    {20493, 20493, 1, 6, 0, 232, 0},
    {20494, 20494, 1, 6, 0, 232, 0},
    {20490, 20490, 3, 9, 0, 232, 0},
    {20491, 20491, 3, 9, 0, 232, 0},
    {20492, 20492, 100, 254, 0, 232, 0},
    {20487, 20487, 100, 9, 106, 232, 0},
    {20488, 20488, 100, 9, 107, 232, 0},
    {20489, 20489, 100, 10, 108, 20495, 0},
    {515, 515, 2, 5, 111, 232, 0},
    {516, 516, 2, 5, 112, 232, 0},
    {363, 363, 2, 10, 113, 309, 0},
    {606, 606, 3, 9, 39, 234, 0},
    {486, 486, 3, 9, 40, 248, 0},
    {487, 487, 3, 9, 40, 248, 0},
    {422, 422, 4, 5, 116, 330, 0},
    {614, 362, 254, 254, 0, 310, 0},
    {12292, 12292, 1, 6, 0, 12291, 0},
    {101, 101, 254, 254, 0, 223, 0},
    {98, 98, 3, 9, 0, 232, 0},
    {100, 100, 3, 9, 0, 232, 0},
    {99, 99, 3, 9, 0, 232, 0},
    {615, 615, 4, 10, 121, 354, 0},
    {208, 208, 4, 10, 126, 295, 0},
    {375, 375, 254, 254, 0, 223, 0},
    {633, 633, 4, 10, 0, 359, 0},
    {634, 634, 4, 10, 0, 307, 0},
    {207, 207, 0, 6, 0, 232, 0},
    {162, 162, 100, 6, 129, 283, 0},
    {163, 163, 100, 6, 129, 232, 0},
    {160, 160, 100, 6, 131, 281, 0},
    {161, 161, 100, 6, 132, 282, 0},
    {24587, 24587, 0, 10, 133, 24585, 0},
    {24588, 24588, 0, 5, 0, 232, 0},
    {24586, 24586, 100, 5, 0, 24584, 0},
    {28682, 28682, 0, 6, 0, 232, 0},
    {28683, 28683, 0, 6, 0, 232, 0},
    {28684, 28684, 0, 6, 0, 232, 0},
    {28686, 28686, 0, 6, 0, 232, 0},
    {28685, 28685, 0, 6, 0, 232, 0},
    {28680, 28680, 0, 5, 134, 28688, 0},
    {28681, 28681, 0, 5, 0, 28689, 0},
    {614, 28687, 4, 5, 135, 28690, 0},
    {415, 415, 254, 254, 0, 223, 0},
    {414, 414, 254, 254, 0, 223, 0},
    {490, 490, 254, 254, 136, 331, 0},
    {11, 11, 254, 254, 137, 231, 0},
};

/* 80391010-803914A8 -00001 0498+00 4/4 0/0 0/0 .rodata          m_wlAnmDataTable__9daAlink_c */
daAlink_WlAnmData const daAlink_c::m_wlAnmDataTable[147] = {
    {767, 0, 1, 2600, 255, 255},      {778, 0, 2, 270, 255, 255},
    {779, 0, 2, 270, 255, 255},       {692, 0, 12, 65535, 255, 255},
    {716, 1, 12, 65535, 255, 255},    {714, 1, 12, 65535, 255, 255},
    {715, 1, 12, 65535, 255, 255},    {773, 0, 1, 4095, 255, 255},
    {736, 0, 7, 767, 255, 255},       {735, 0, 7, 1568, 255, 255},
    {734, 0, 12, 65535, 255, 255},    {745, 1, 0, 2047, 255, 255},
    {724, 1, 12, 65535, 255, 255},    {725, 2, 12, 65535, 255, 255},
    {774, 1, 0, 511, 255, 255},       {666, 1, 7, 2559, 255, 255},
    {766, 1, 5, 2559, 255, 255},      {668, 1, 5, 1023, 255, 255},
    {667, 1, 12, 65535, 255, 255},    {765, 1, 6, 6655, 255, 255},
    {764, 1, 12, 65535, 255, 255},    {763, 0, 8, 1023, 255, 255},
    {679, 0, 12, 65535, 255, 255},    {771, 0, 3, 2590, 50, 255},
    {768, 0, 3, 1791, 255, 255},      {706, 1, 5, 1791, 255, 255},
    {750, 1, 12, 65535, 255, 255},    {762, 1, 12, 65535, 255, 255},
    {638, 0, 12, 65535, 255, 255},    {780, 1, 2, 274, 255, 255},
    {746, 1, 12, 65535, 255, 255},    {747, 1, 12, 65535, 255, 255},
    {748, 2, 12, 65535, 255, 255},    {743, 0, 2, 270, 255, 255},
    {739, 1, 5, 5375, 255, 255},      {740, 1, 5, 6911, 255, 255},
    {742, 0, 12, 65535, 255, 255},    {744, 8, 1, 6450, 255, 255},
    {741, 9, 2, 270, 30, 45},         {693, 1, 12, 65535, 255, 255},
    {684, 2, 12, 65535, 255, 255},    {682, 2, 12, 65535, 255, 255},
    {686, 2, 12, 65535, 255, 255},    {688, 2, 12, 65535, 255, 255},
    {685, 2, 10, 8447, 255, 255},     {683, 2, 11, 5375, 255, 255},
    {687, 2, 12, 65535, 255, 255},    {689, 2, 12, 65535, 255, 255},
    {752, 0, 12, 65535, 255, 255},    {770, 0, 1, 2600, 255, 255},
    {719, 0, 12, 65535, 255, 255},    {720, 0, 12, 65535, 255, 255},
    {717, 0, 12, 65535, 255, 255},    {718, 0, 12, 65535, 255, 255},
    {759, 1, 12, 65535, 255, 255},    {760, 0, 1, 3583, 255, 255},
    {758, 0, 2, 511, 255, 255},       {755, 0, 4, 1023, 255, 255},
    {753, 1, 12, 65535, 255, 255},    {775, 0, 12, 65535, 255, 255},
    {681, 1, 12, 65535, 255, 255},    {680, 1, 12, 65535, 255, 255},
    {690, 1, 12, 65535, 255, 255},    {691, 1, 12, 65535, 255, 255},
    {653, 1, 12, 65535, 255, 255},    {654, 1, 12, 65535, 255, 255},
    {655, 0, 12, 65535, 255, 255},    {656, 1, 12, 65535, 255, 255},
    {639, 0, 12, 65535, 255, 255},    {641, 0, 12, 65535, 255, 255},
    {640, 0, 12, 65535, 255, 255},    {730, 0, 12, 65535, 255, 255},
    {645, 1, 12, 65535, 255, 255},    {644, 1, 12, 65535, 255, 255},
    {647, 1, 12, 65535, 255, 255},    {646, 1, 12, 65535, 255, 255},
    {643, 1, 12, 65535, 255, 255},    {642, 1, 12, 65535, 255, 255},
    {731, 0, 12, 65535, 255, 255},    {732, 0, 9, 2047, 255, 255},
    {652, 1, 12, 65535, 255, 255},    {648, 1, 12, 65535, 255, 255},
    {649, 1, 12, 65535, 255, 255},    {651, 1, 12, 65535, 255, 255},
    {650, 1, 12, 65535, 255, 255},    {661, 2, 12, 65535, 255, 255},
    {660, 2, 12, 65535, 255, 255},    {707, 1, 12, 65535, 255, 255},
    {709, 1, 12, 65535, 255, 255},    {708, 1, 12, 65535, 255, 255},
    {676, 0, 12, 65535, 255, 255},    {678, 0, 12, 65535, 255, 255},
    {710, 0, 12, 65535, 255, 255},    {711, 1, 12, 65535, 255, 255},
    {712, 1, 12, 65535, 255, 255},    {713, 0, 1, 7935, 255, 255},
    {722, 1, 12, 65535, 255, 255},    {723, 1, 10, 1279, 255, 255},
    {665, 0, 12, 65535, 255, 255},    {662, 1, 12, 65535, 255, 255},
    {663, 1, 12, 65535, 255, 255},    {664, 1, 11, 10495, 255, 255},
    {738, 1, 12, 65535, 255, 255},    {737, 1, 12, 65535, 255, 255},
    {697, 0, 11, 16895, 255, 255},    {698, 13, 12, 65535, 255, 255},
    {761, 0, 5, 14662, 85, 255},      {749, 1, 6, 511, 255, 255},
    {721, 1, 12, 65535, 255, 255},    {733, 0, 12, 65535, 255, 255},
    {677, 0, 12, 65535, 255, 255},    {674, 0, 12, 65535, 255, 255},
    {675, 0, 12, 65535, 255, 255},    {776, 1, 12, 65535, 255, 255},
    {751, 0, 12, 65535, 255, 255},    {694, 2, 4, 511, 255, 255},
    {659, 1, 12, 65535, 255, 255},    {657, 1, 12, 65535, 255, 255},
    {700, 0, 12, 65535, 255, 255},    {703, 0, 12, 65535, 255, 255},
    {670, 2, 12, 65535, 255, 255},    {669, 2, 12, 65535, 255, 255},
    {658, 1, 5, 4351, 255, 255},      {696, 6, 12, 65535, 255, 255},
    {756, 7, 12, 65535, 255, 255},    {757, 7, 12, 65535, 255, 255},
    {772, 2, 12, 65535, 255, 255},    {769, 0, 1, 4095, 255, 255},
    {754, 0, 1, 3885, 255, 255},      {727, 0, 12, 65535, 255, 255},
    {699, 3, 12, 65535, 255, 255},    {705, 1, 12, 65535, 255, 255},
    {704, 1, 0, 1535, 255, 255},      {777, 0, 1, 511, 255, 255},
    {671, 5, 12, 65535, 255, 255},    {728, 0, 12, 65535, 255, 255},
    {729, 2, 12, 65535, 255, 255},    {16387, 0, 12, 65535, 255, 255},
    {672, 0, 12, 65535, 255, 255},    {673, 0, 12, 65535, 255, 255},
    {726, 1, 0, 5178, 255, 255},      {32808, 10, 12, 65535, 255, 255},
    {32807, 10, 12, 65535, 255, 255}, {32810, 11, 12, 65535, 255, 255},
    {32809, 11, 12, 65535, 255, 255}, {32812, 12, 12, 65535, 255, 255},
    {32811, 12, 12, 65535, 255, 255},
};

/* 803914A8-80391734 01DB08 028C+00 2/2 0/0 0/0 .rodata          m_faceTexDataTable__9daAlink_c */
SECTION_RODATA daAlink_FaceTexData const daAlink_c::m_faceTexDataTable[] = {
    0x03DF, 0x0379, 0x03E0, 0x037A, 0x03E1, 0x037B, 0x03DF, 0x0378, 0x03DF, 0x0383, 0x03E2, 0x032C,
    0x03C6, 0x036A, 0x03D5, 0x036B, 0x03B0, 0x032D, 0x03B1, 0x032E, 0x03E6, 0x0382, 0x03E5, 0x0381,
    0x03F2, 0x0398, 0x03C3, 0x0353, 0x03AF, 0x0398, 0x03F0, 0x0396, 0x03F4, 0x032C, 0x03F3, 0x032C,
    0x03C5, 0x035C, 0x03AF, 0x0342, 0x03AF, 0x0343, 0x03EE, 0x038E, 0x03EF, 0x038F, 0x03ED, 0x038D,
    0x03D8, 0x036E, 0x03D9, 0x036F, 0x03DB, 0x0373, 0x03D7, 0x036D, 0x03E9, 0x0388, 0x03E4, 0x037D,
    0x03D1, 0x0367, 0x03D2, 0x0368, 0x03AF, 0x034A, 0x03AF, 0x034B, 0x03AF, 0x034C, 0x03AF, 0x034D,
    0x03AF, 0x034E, 0x03AF, 0x0391, 0x03E7, 0x0386, 0x03B4, 0x032C, 0x03BC, 0x032C, 0x03AF, 0x0390,
    0x03C9, 0x035E, 0x03C7, 0x035D, 0x03CA, 0x035F, 0x03AF, 0x0395, 0x03AF, 0x0341, 0x03AF, 0x0351,
    0x03AF, 0x0352, 0x03AF, 0x0349, 0x03AF, 0x0344, 0x03AF, 0x0345, 0x03AF, 0x0346, 0x03BD, 0x032C,
    0x03BE, 0x032C, 0x03EA, 0x0389, 0x03AF, 0x038A, 0x03CB, 0x032C, 0x03AF, 0x0355, 0x03AF, 0x0354,
    0x03AF, 0x0350, 0x03AF, 0x034F, 0x03B8, 0x0334, 0x03B6, 0x0332, 0x03B7, 0x0333, 0x03B5, 0x0331,
    0x03AF, 0x0336, 0x03AF, 0x0337, 0x03B9, 0x032C, 0x03AF, 0x0338, 0x03AF, 0x0339, 0x03AF, 0x0335,
    0x03DC, 0x0335, 0x03DE, 0x0335, 0x03DA, 0x0370, 0x03AF, 0x033E, 0x03D3, 0x032C, 0x03BB, 0x033C,
    0x03AF, 0x033B, 0x03BA, 0x033A, 0x03CE, 0x0364, 0x03CF, 0x0365, 0x03EB, 0x038B, 0x03EC, 0x038C,
    0x03D4, 0x0369, 0x03C0, 0x032C, 0x03C1, 0x033F, 0x03C1, 0x0340, 0x03D0, 0x0366, 0x03C2, 0x032C,
    0x03AF, 0x035A, 0x03C4, 0x035B, 0x03BF, 0x032C, 0x03C8, 0x032C, 0x1045, 0x103B, 0x1046, 0x032C,
    0x1041, 0x1037, 0x1042, 0x1038, 0x1043, 0x1039, 0x1047, 0x103C, 0x1040, 0x1036, 0x1044, 0x103A,
    0x103F, 0x032C, 0x03AF, 0x2032, 0x03AF, 0x2033, 0x2039, 0x2034, 0x03AF, 0x5054, 0x03AF, 0x5055,
    0x5059, 0x5056, 0x03E8, 0x0387, 0x03AF, 0x0372, 0x03AF, 0x0384, 0x03AF, 0x0385, 0x03D6, 0x036C,
    0x03AF, 0x0392, 0x03AF, 0x0393, 0x03AF, 0x0377, 0x03AF, 0x0361, 0x03AF, 0x0362, 0x03CD, 0x0363,
    0x03AF, 0x033D, 0x03F1, 0x0397, 0x03DC, 0x032C, 0x03DD, 0x032C, 0x03DE, 0x032C, 0x03B3, 0x0330,
    0x03CC, 0x0360, 0x03AF, 0x0348, 0x03AF, 0x0347, 0x03AF, 0x0358, 0x03AF, 0x0359, 0x03AF, 0x0356,
    0x03AF, 0x0357, 0x6018, 0x6015, 0x03AF, 0x7070, 0x03AF, 0x7071, 0x03E3, 0x037C, 0x03B2, 0x032F,
    0x03AF, 0x0394, 0x0417, 0x03A9, 0x0418, 0x03AA, 0x041A, 0x03A7, 0x041E, 0x03A7, 0x041B, 0x03A7,
    0x040E, 0x03A7, 0x040C, 0x03A7, 0x040F, 0x03A7, 0x0410, 0x03A7, 0x0420, 0x03A7, 0x0415, 0x03A7,
    0x0416, 0x03A7, 0x040B, 0x03A7, 0x0411, 0x03A7, 0x041F, 0x03A7, 0x040A, 0x03A7, 0x0409, 0x03A7,
    0x0412, 0x03A7, 0x041C, 0x03A7, 0x041D, 0x03A7, 0x0419, 0x03AB, 0x0413, 0x03A8, 0x0414, 0x03A7,
    0x040D, 0x03A7,
};
COMPILER_STRIP_GATE(0x803914A8, &daAlink_c::m_faceTexDataTable);

/* 80391734-80391740 01DD94 000C+00 1/1 0/0 0/0 .rodata          @5908 */
SECTION_RODATA static u8 const lit_5908[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391734, &lit_5908);

/* 80391740-80391754 01DDA0 0014+00 0/1 0/0 0/0 .rodata          atnNormalType1$6976 */
#pragma push
#pragma force_active on
static int const atnNormalType1[5] = {4, 1, 1, 2, 0};
#pragma pop

/* 80391754-80391768 01DDB4 0014+00 0/1 0/0 0/0 .rodata          atnNormalType2$6977 */
#pragma push
#pragma force_active on
static int const atnNormalType2[5] = {3, 0, 0, 1, 1};
#pragma pop

/* 80391768-8039177C 01DDC8 0014+00 0/1 0/0 0/0 .rodata          atnNormalType3$6978 */
#pragma push
#pragma force_active on
static int const atnNormalType3[5] = {4, 1, 1, 0, 0};
#pragma pop

/* 8039177C-80391790 01DDDC 0014+00 0/1 0/0 0/0 .rodata          atnFinishType$6979 */
#pragma push
#pragma force_active on
static int const atnFinishType[5] = {2, 1, 0, 5, 1};
#pragma pop

/* 80391790-803917A4 01DDF0 0014+00 0/1 0/0 0/0 .rodata          hitType$6980 */
#pragma push
#pragma force_active on
static int const hitType[5] = {4, 0, 5, 0, 1};
#pragma pop

/* 803917A4-803917B8 01DE04 0014+00 0/1 0/0 0/0 .rodata          hitFinishType$6981 */
#pragma push
#pragma force_active on
static int const hitFinishType[5] = {2, 1, 0, 5, 0};
#pragma pop

/* 803917B8-803917CC 01DE18 0014+00 0/1 0/0 0/0 .rodata          normalType1$6982 */
#pragma push
#pragma force_active on
static int const normalType1_6982[5] = {0, 2, 1, 2, 1};
#pragma pop

/* 803917CC-803917E0 01DE2C 0014+00 0/1 0/0 0/0 .rodata          normalType2$6983 */
#pragma push
#pragma force_active on
static int const normalType2[5] = {1, 1, 2, 1, 2};
#pragma pop

/* 803917E0-803917F4 01DE40 0014+00 0/1 0/0 0/0 .rodata          normalType3$6984 */
#pragma push
#pragma force_active on
static int const normalType3[5] = {4, 0, 1, 2, 1};
#pragma pop

/* 803917F4-80391808 01DE54 0014+00 0/1 0/0 0/0 .rodata          finishType$6985 */
#pragma push
#pragma force_active on
static int const finishType[5] = {2, 0, 0, 5, 1};
#pragma pop

struct daAlink_cutParamTbl {
    /* 0x0 */ daAlink_c::daAlink_ANM m_anmID;
    /* 0x4 */ int field_0x4;
    /* 0x8 */ u8 m_cutType;
    /* 0x9 */ u8 m_atSe;
    /* 0xA */ u8 field_0xa;
    /* 0xB */ u8 field_0xb;
    /* 0xC */ f32 m_morf;
};  // Size: 0x10

/* 80391808-80391858 01DE68 0050+00 0/1 0/0 0/0 .rodata          cutParamTable$7312 */
#pragma push
#pragma force_active on
SECTION_RODATA static daAlink_cutParamTbl const cutParamTable_7312[5] = {
    {
        daAlink_c::ANM_CUT_NM_VERTICAL,
        0x6F,
        daAlink_c::CUT_TYPE_NM_VERTICAL,
        1,
        0,
        0,
        6.0f,
    },
    {
        daAlink_c::ANM_CUT_NM_LEFT,
        0x6F,
        daAlink_c::CUT_TYPE_NM_LEFT,
        1,
        0,
        0,
        5.0f,
    },
    {
        daAlink_c::ANM_CUT_NM_RIGHT,
        0x6F,
        daAlink_c::CUT_TYPE_NM_RIGHT,
        1,
        0,
        0,
        5.0f,
    },
    {
        daAlink_c::ANM_CUT_COMBO_STAB,
        0x6F,
        daAlink_c::CUT_TYPE_COMBO_STAB,
        14,
        0,
        0,
        6.0f,
    },
    {
        daAlink_c::ANM_CUT_NM_STAB,
        0x70,
        daAlink_c::CUT_TYPE_NM_STAB,
        14,
        0,
        0,
        6.0f,
    },
};
COMPILER_STRIP_GATE(0x80391808, &cutParamTable_7312);
#pragma pop

/* 80391858-803918B8 01DEB8 0060+00 0/1 0/0 0/0 .rodata          cutParamTable$7455 */
#pragma push
#pragma force_active on
SECTION_RODATA static daAlink_cutParamTbl const cutParamTable_7455[6] = {
    {
        daAlink_c::ANM_CUT_FINISH_LEFT,
        0x6F,
        daAlink_c::CUT_TYPE_FINISH_LEFT,
        1,
        100,
        100,
        5.0f,
    },
    {
        daAlink_c::ANM_CUT_FINISH_VERTICAL,
        0x6F,
        daAlink_c::CUT_TYPE_FINISH_VERTICAL,
        1,
        100,
        100,
        8.0f,
    },
    {
        daAlink_c::ANM_CUT_FINISH_STAB,
        0x6F,
        daAlink_c::CUT_TYPE_FINISH_STAB,
        14,
        100,
        100,
        10.0f,
    },
    {
        daAlink_c::ANM_CUT_MORTAL_DRAW_A,
        0x6F,
        daAlink_c::CUT_TYPE_MORTAL_DRAW_A,
        1,
        5,
        12,
        10.0f,
    },
    {
        daAlink_c::ANM_CUT_MORTAL_DRAW_B,
        0x6F,
        daAlink_c::CUT_TYPE_MORTAL_DRAW_B,
        1,
        7,
        14,
        10.0f,
    },
    {
        daAlink_c::ANM_CUT_FINISH_RIGHT,
        0x6F,
        daAlink_c::CUT_TYPE_FINISH_RIGHT,
        1,
        100,
        100,
        10.0f,
    },
};
COMPILER_STRIP_GATE(0x80391858, &cutParamTable_7455);
#pragma pop

/* 803918B8-803918C4 01DF18 000C+00 1/1 0/0 0/0 .rodata          localCenter$11047 */
static Vec const localCenter = {-15.0f, 0.0f, 18.0f};

/* 803918C4-803918D0 01DF24 000C+00 1/1 0/0 0/0 .rodata          localPos$11819 */
static Vec const localPos = {3.45f, 45.32f, -7.0f};

/* 803918D0-803918DC 01DF30 000C+00 1/1 0/0 0/0 .rodata          slingLocalPos$12042 */
static Vec const slingLocalPos = {10.0f, 10.0f, 0.0f};

/* 803918DC-803918E8 01DF3C 000C+00 1/1 0/0 0/0 .rodata          localSidePos$14270 */
static Vec const localSidePos = {2.3f, -15.5f, 15.6f};

/* 803918E8-803918F4 01DF48 000C+00 0/1 0/0 0/0 .rodata          m_handLeftOutSidePos__9daAlink_c */
#pragma push
#pragma force_active on
SECTION_RODATA u8 const daAlink_c::m_handLeftOutSidePos[12] = {
    0x41, 0x10, 0x00, 0x00, 0xC0, 0xA0, 0x00, 0x00, 0x40, 0x40, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x803918E8, &daAlink_c::m_handLeftOutSidePos);
#pragma pop

/* 803918F4-80391900 01DF54 000C+00 0/1 0/0 0/0 .rodata          m_handRightOutSidePos__9daAlink_c
 */
#pragma push
#pragma force_active on
SECTION_RODATA u8 const daAlink_c::m_handRightOutSidePos[12] = {
    0x41, 0x10, 0x00, 0x00, 0xC0, 0xA0, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x803918F4, &daAlink_c::m_handRightOutSidePos);
#pragma pop

/* 80391900-8039190C 01DF60 000C+00 0/1 0/0 1/1 .rodata          m_handLeftInSidePos__9daAlink_c */
SECTION_RODATA u8 const daAlink_c::m_handLeftInSidePos[12] = {
    0x41, 0x10, 0x00, 0x00, 0x40, 0xA0, 0x00, 0x00, 0x40, 0x40, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391900, &daAlink_c::m_handLeftInSidePos);

/* 8039190C-80391918 01DF6C 000C+00 0/1 0/0 1/1 .rodata          m_handRightInSidePos__9daAlink_c */
SECTION_RODATA u8 const daAlink_c::m_handRightInSidePos[12] = {
    0x41, 0x10, 0x00, 0x00, 0x40, 0xA0, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8039190C, &daAlink_c::m_handRightInSidePos);

/* 80391918-80391924 01DF78 000C+00 0/1 0/0 0/0 .rodata          horseLocalLeft$17678 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const horseLocalLeft[12] = {
    0x41, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391918, &horseLocalLeft);
#pragma pop

/* 80391924-80391930 01DF84 000C+00 0/1 0/0 0/0 .rodata          horseLocalRight$17679 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const horseLocalRight[12] = {
    0xC1, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391924, &horseLocalRight);
#pragma pop

/* 80391930-8039193C 01DF90 000C+00 0/1 0/0 0/0 .rodata          horseLocalBack$17680 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const horseLocalBack[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC3, 0x48, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391930, &horseLocalBack);
#pragma pop

/* 8039193C-80391948 01DF9C 000C+00 0/1 0/0 0/0 .rodata          boarLocalLeft$17681 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const boarLocalLeft[12] = {
    0x43, 0x48, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0x90, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8039193C, &boarLocalLeft);
#pragma pop

/* 80391948-80391954 01DFA8 000C+00 0/1 0/0 0/0 .rodata          boarLocalRight$17682 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const boarLocalRight[12] = {
    0xC3, 0x48, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0x90, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391948, &boarLocalRight);
#pragma pop

/* 80391954-80391960 01DFB4 000C+00 1/1 0/0 0/0 .rodata          localHorseRun$18095 */
SECTION_RODATA static u8 const localHorseRun_18095[12] = {
    0x41, 0x70, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391954, &localHorseRun_18095);

/* 80391960-8039196C 01DFC0 000C+00 1/1 0/0 0/0 .rodata          localHorseRun$18103 */
SECTION_RODATA static u8 const localHorseRun_18103[12] = {
    0x41, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391960, &localHorseRun_18103);

/* 8039196C-80391978 01DFCC 000C+00 1/1 0/0 0/0 .rodata          localOffset$18237 */
SECTION_RODATA static u8 const localOffset_18237[12] = {
    0xC1, 0xF0, 0x00, 0x00, 0xC1, 0x90, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8039196C, &localOffset_18237);

/* 80391978-80391984 01DFD8 000C+00 1/1 0/0 0/0 .rodata          @18938 */
SECTION_RODATA static u8 const lit_18938[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391978, &lit_18938);

/* 80391984-80391990 01DFE4 000C+00 1/1 0/0 0/0 .rodata          boarRideOffset$19147 */
SECTION_RODATA static u8 const boarRideOffset[12] = {
    0xBF, 0x5E, 0xB8, 0x52, 0x40, 0x55, 0x1E, 0xB8, 0xC1, 0xBE, 0x28, 0xF6,
};
COMPILER_STRIP_GATE(0x80391984, &boarRideOffset);

/* 80391990-8039199C 01DFF0 000C+00 1/1 0/0 0/0 .rodata          leftOffset$19386 */
SECTION_RODATA static u8 const leftOffset[12] = {
    0x42, 0x96, 0x00, 0x00, 0x42, 0xCC, 0x00, 0x00, 0x40, 0xC7, 0x2B, 0x02,
};
COMPILER_STRIP_GATE(0x80391990, &leftOffset);

/* 8039199C-803919A8 01DFFC 000C+00 1/1 0/0 0/0 .rodata          rightOffset$19387 */
SECTION_RODATA static u8 const rightOffset[12] = {
    0xC2, 0x96, 0x00, 0x00, 0x42, 0xCC, 0x00, 0x00, 0x40, 0xC7, 0x12, 0x6F,
};
COMPILER_STRIP_GATE(0x8039199C, &rightOffset);

/* 803919A8-803919D8 01E008 0030+00 0/1 0/0 0/0 .rodata          cutParamTable$19765 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const cutParamTable_19765[48] = {
    0x00, 0x00, 0x00, 0x20, 0x00, 0x91, 0x01, 0x0C, 0x00, 0x0E, 0x22, 0x00, 0x00, 0x00, 0x00, 0x21,
    0x00, 0x92, 0x01, 0x0D, 0x00, 0x13, 0x23, 0x00, 0x00, 0x00, 0x00, 0x22, 0x00, 0x93, 0x01, 0x0E,
    0x00, 0x13, 0x2A, 0x00, 0x00, 0x00, 0x00, 0x23, 0x00, 0x94, 0x01, 0x0F, 0x00, 0x00, 0x2A, 0x00,
};
COMPILER_STRIP_GATE(0x803919A8, &cutParamTable_19765);
#pragma pop

/* 803919D8-803919E4 01E038 000A+02 1/1 0/0 0/0 .rodata          anmIdx$19945 */
SECTION_RODATA static u8 const anmIdx[10 + 2 /* padding */] = {
    0x00,
    0xBA,
    0x00,
    0xB8,
    0x00,
    0xBB,
    0x00,
    0xBC,
    0x00,
    0xB9,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x803919D8, &anmIdx);

/* 803919E4-803919F0 01E044 000C+00 1/1 0/0 0/0 .rodata          localPaddleTop$20605 */
SECTION_RODATA static Vec const localPaddleTop = {
    0.0f,
    0.0f,
    -158.0f,
};
COMPILER_STRIP_GATE(0x803919E4, &localPaddleTop);

/* 803919F0-803919FC 01E050 000C+00 1/1 0/0 0/0 .rodata          underOffsetY$23302 */
SECTION_RODATA static u8 const underOffsetY[12] = {
    0x41, 0x70, 0x00, 0x00, 0x42, 0xB4, 0x00, 0x00, 0x43, 0x16, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x803919F0, &underOffsetY);

/* 803919FC-80391A08 01E05C 000C+00 1/1 0/0 0/0 .rodata          hsVec$28749 */
SECTION_RODATA static u8 const hsVec[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0xA0, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x803919FC, &hsVec);

/* 80391A08-80391A14 01E068 000C+00 1/1 0/0 0/0 .rodata          hookRoot$29726 */
SECTION_RODATA static f32 const hookRoot[3] = {
    0.0f,
    0.0f,
    23.5f,
};
COMPILER_STRIP_GATE(0x80391A08, &hookRoot);

/* 80391A14-80391A20 01E074 000C+00 1/1 0/0 0/0 .rodata          bottleTop$32160 */
SECTION_RODATA static u8 const bottleTop[12] = {
    0x00, 0x00, 0x00, 0x00, 0x41, 0xC8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391A14, &bottleTop);

/* 80391A20-80391A2C 01E080 000C+00 1/1 0/0 0/0 .rodata          kandelaarOffset$32655 */
SECTION_RODATA static u8 const kandelaarOffset[12] = {
    0x00, 0x00, 0x00, 0x00, 0xC1, 0x88, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391A20, &kandelaarOffset);

/* 80391A2C-80391A38 01E08C 000C+00 1/1 0/0 0/0 .rodata          @33690 */
SECTION_RODATA static u8 const lit_33690[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391A2C, &lit_33690);

/* 80391A38-80391A44 01E098 000C+00 0/1 0/0 0/0 .rodata          ironBallPosVec$34212 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const ironBallPosVec[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC2, 0x28, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391A38, &ironBallPosVec);
#pragma pop

/* 80391A44-80391A50 01E0A4 000C+00 0/1 0/0 0/0 .rodata          handCenterOffsetVec$34213 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const handCenterOffsetVec[12] = {
    0x40, 0x00, 0x00, 0x00, 0xC1, 0xC8, 0x00, 0x00, 0x41, 0x48, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391A44, &handCenterOffsetVec);
#pragma pop

/* 80391A50-80391A5C 01E0B0 000C+00 1/1 0/0 0/0 .rodata          @34968 */
SECTION_RODATA static u8 const lit_34968[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391A50, &lit_34968);

/* 80391A5C-80391B5C 01E0BC 00FF+01 1/1 0/0 0/0 .rodata          getSeType$37390 */
SECTION_RODATA static u8 const getSeType[255] = {
    0x08, 0x03, 0x03, 0x03, 0x03, 0x03, 0x02, 0x02, 0x08, 0x08, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03,
    0x03, 0x03, 0x03, 0x08, 0x08, 0x08, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x02, 0x08,
    0x02, 0x02, 0x00, 0x01, 0x01, 0x02, 0x01, 0x08, 0x01, 0x08, 0x01, 0x01, 0x01, 0x08, 0x08, 0x08,
    0x01, 0x01, 0x08, 0x02, 0x08, 0x01, 0x01, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x01, 0x01, 0x02,
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x08, 0x08, 0x01,
    0x01, 0x01, 0x08, 0x08, 0x08, 0x01, 0x01, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08,
    0x01, 0x02, 0x02, 0x02, 0x02, 0x01, 0x02, 0x08, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02,
    0x08, 0x08, 0x08, 0x01, 0x02, 0x01, 0x02, 0x01, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02,
    0x02, 0x02, 0x02, 0x02, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08,
    0x02, 0x02, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x02, 0x01, 0x02, 0x02,
    0x08, 0x01, 0x01, 0x01, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08,
    0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08,
    0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04,
    0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08,
    0x06, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x02, 0x02, 0x01, 0x02, 0x02, 0x02, 0x08,
    0x08, 0x08, 0x08, 0x02, 0x03, 0x03, 0x01, 0x08, 0x03, 0x02, 0x02, 0x02, 0x02, 0x01, 0x02,
};
COMPILER_STRIP_GATE(0x80391A5C, &getSeType);

/* 80391B5C-80391B7C 01E1BC 0020+00 1/1 0/0 0/0 .rodata          bgmLabel$37391 */
static u32 const bgmLabel[8] = {
    Z2BGM_HEART_GET,       Z2BGM_ITEM_GET,       Z2BGM_ITEM_GET_MINI, Z2BGM_ITEM_GET_ME,
    Z2BGM_ITEM_GET_INSECT, Z2BGM_ITEM_GET_SMELL, Z2BGM_ITEM_GET_POU,  Z2BGM_ITEM_GET_ME_S,
};

/* 80391B7C-80391B8C 01E1DC 0010+00 1/1 0/0 0/0 .rodata          rupeeCount$37407 */
static int const rupeeCount[4] = {20, 50, 100, 200};

/* 80391B8C-80391BA0 01E1EC 0014+00 0/1 0/0 0/0 .rodata          heartPieceMessage$37580 */
#pragma push
#pragma force_active on
static u32 const heartPieceMessage[5] = {0x86, 0x9C, 0x9D, 0x9E, 0x9F};
#pragma pop

/* 80391BA0-80391BAC 01E200 000C+00 0/1 0/0 0/0 .rodata          effName$39419 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const effName_39419[12] = {
    0x09, 0xF5, 0x09, 0xF6, 0x09, 0xF7, 0x09, 0xF8, 0x09, 0xF9, 0x09, 0xFA,
};
COMPILER_STRIP_GATE(0x80391BA0, &effName_39419);
#pragma pop

/* 80391BAC-80391BB8 01E20C 000C+00 1/1 0/0 0/0 .rodata          smokeParticleScale$39643 */
SECTION_RODATA static u8 const smokeParticleScale_39643[12] = {
    0x3F, 0x33, 0x33, 0x33, 0x3F, 0x33, 0x33, 0x33, 0x3F, 0x33, 0x33, 0x33,
};
COMPILER_STRIP_GATE(0x80391BAC, &smokeParticleScale_39643);

/* 80391BB8-80391BC4 01E218 000C+00 1/1 0/0 0/0 .rodata          wolfWaterCenterScale$39644 */
SECTION_RODATA static u8 const wolfWaterCenterScale[12] = {
    0x3F, 0x99, 0x99, 0x9A, 0x3F, 0x99, 0x99, 0x9A, 0x3F, 0x99, 0x99, 0x9A,
};
COMPILER_STRIP_GATE(0x80391BB8, &wolfWaterCenterScale);

/* 80391BC4-80391BD0 01E224 000C+00 0/1 0/0 0/0 .rodata          waterScale$39762 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const waterScale_39762[12] = {
    0x3F, 0x14, 0x7A, 0xE1, 0x3F, 0x14, 0x7A, 0xE1, 0x3F, 0x14, 0x7A, 0xE1,
};
COMPILER_STRIP_GATE(0x80391BC4, &waterScale_39762);
#pragma pop

/* 80391BD0-80391BDC 01E230 000C+00 0/1 0/0 0/0 .rodata          waterCenterScale$39763 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const waterCenterScale[12] = {
    0x3F, 0x99, 0x99, 0x9A, 0x3F, 0x99, 0x99, 0x9A, 0x3F, 0x99, 0x99, 0x9A,
};
COMPILER_STRIP_GATE(0x80391BD0, &waterCenterScale);
#pragma pop

/* 80391BDC-80391BE8 01E23C 000C+00 0/1 0/0 0/0 .rodata          waterSmokeScale$39764 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const waterSmokeScale[12] = {
    0x3F, 0x33, 0x33, 0x33, 0x3F, 0x33, 0x33, 0x33, 0x3F, 0x33, 0x33, 0x33,
};
COMPILER_STRIP_GATE(0x80391BDC, &waterSmokeScale);
#pragma pop

/* 80391BE8-80391BF4 01E248 000C+00 0/1 0/0 0/0 .rodata          smokeParticleScale$39891 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const smokeParticleScale_39891[12] = {
    0x3F, 0x4C, 0xCC, 0xCD, 0x3F, 0x4C, 0xCC, 0xCD, 0x3F, 0x4C, 0xCC, 0xCD,
};
COMPILER_STRIP_GATE(0x80391BE8, &smokeParticleScale_39891);
#pragma pop

/* 80391BF4-80391C00 01E254 000C+00 0/1 0/0 0/0 .rodata          waterScale$39892 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const waterScale_39892[12] = {
    0x3F, 0xA0, 0x00, 0x00, 0x3F, 0xA0, 0x00, 0x00, 0x3F, 0xA0, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391BF4, &waterScale_39892);
#pragma pop

/* 80391C00-80391C0C 01E260 000C+00 0/1 0/0 0/0 .rodata          wolfSmokeScale$39893 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const wolfSmokeScale[12] = {
    0x3F, 0x33, 0x33, 0x33, 0x3F, 0x33, 0x33, 0x33, 0x3F, 0x33, 0x33, 0x33,
};
COMPILER_STRIP_GATE(0x80391C00, &wolfSmokeScale);
#pragma pop

/* 80391C0C-80391C18 01E26C 000C+00 0/1 0/0 0/0 .rodata          shikoScale$40012 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const shikoScale[12] = {
    0x3F, 0x33, 0x33, 0x33, 0x3F, 0x33, 0x33, 0x33, 0x3F, 0x33, 0x33, 0x33,
};
COMPILER_STRIP_GATE(0x80391C0C, &shikoScale);
#pragma pop

/* 80391C18-80391C24 01E278 000C+00 0/1 0/0 0/0 .rodata          pushedSlip$40013 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const pushedSlip[12] = {
    0x3F, 0x4C, 0xCC, 0xCD, 0x3F, 0x4C, 0xCC, 0xCD, 0x3F, 0x4C, 0xCC, 0xCD,
};
COMPILER_STRIP_GATE(0x80391C18, &pushedSlip);
#pragma pop

/* 80391C24-80391C30 01E284 000C+00 0/1 0/0 0/0 .rodata          loseScale$40014 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const loseScale[12] = {
    0x3F, 0x8C, 0xCC, 0xCD, 0x3F, 0x8C, 0xCC, 0xCD, 0x3F, 0x8C, 0xCC, 0xCD,
};
COMPILER_STRIP_GATE(0x80391C24, &loseScale);
#pragma pop

/* 80391C30-80391C3C 01E290 000C+00 1/1 0/0 0/0 .rodata          releaeScale$40567 */
SECTION_RODATA static u8 const releaeScale[12] = {
    0x3F, 0x4C, 0xCC, 0xCD, 0x3F, 0x4C, 0xCC, 0xCD, 0x3F, 0x4C, 0xCC, 0xCD,
};
COMPILER_STRIP_GATE(0x80391C30, &releaeScale);

/* 80391C3C-80391C48 01E29C 000C+00 0/1 0/0 0/0 .rodata          lightAParticleScale$40829 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lightAParticleScale[12] = {
    0x3F, 0x80, 0x00, 0x00, 0x3F, 0x95, 0xE3, 0x54, 0x3F, 0x80, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391C3C, &lightAParticleScale);
#pragma pop

/* 80391C48-80391C54 01E2A8 000C+00 0/1 0/0 0/0 .rodata          lightALocalTrans$40830 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lightALocalTrans[12] = {
    0x42, 0x88, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391C48, &lightALocalTrans);
#pragma pop

/* 80391C54-80391C60 01E2B4 000C+00 0/1 0/0 0/0 .rodata          localOffset$40952 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const localOffset_40952[12] = {
    0x00, 0x00, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391C54, &localOffset_40952);
#pragma pop

/* 80391C60-80391C6C 01E2C0 000C+00 0/1 0/0 0/0 .rodata          localScale0$40953 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const localScale0[12] = {
    0x3F, 0x33, 0x33, 0x33, 0x3F, 0x59, 0x99, 0x9A, 0x3F, 0xC0, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391C60, &localScale0);
#pragma pop

/* 80391C6C-80391C78 01E2CC 000C+00 0/1 0/0 0/0 .rodata          localScale1$40954 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const localScale1[12] = {
    0x3F, 0x80, 0x00, 0x00, 0x3F, 0x59, 0x99, 0x9A, 0x3F, 0xC0, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391C6C, &localScale1);
#pragma pop

/* 80391C78-80391C84 01E2D8 000C+00 0/1 0/0 0/0 .rodata          waterEffScale$41082 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const waterEffScale[12] = {
    0x3F, 0xC0, 0x00, 0x00, 0x3F, 0xC0, 0x00, 0x00, 0x3F, 0xC0, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391C78, &waterEffScale);
#pragma pop

/* 80391C84-80391C9C 01E2E4 0018+00 0/1 0/0 0/0 .rodata          leftTransNormal$41090 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const leftTransNormal[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391C84, &leftTransNormal);
#pragma pop

/* 80391C9C-80391CCC 01E2FC 0030+00 0/1 0/0 0/0 .rodata          leftTransLight$41095 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const leftTransLight[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391C9C, &leftTransLight);
#pragma pop

/* 80391CCC-80391CD8 01E32C 000C+00 0/1 0/0 0/0 .rodata          effNameLarge$41096 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const effNameLarge[12] = {
    0x0B, 0xA5, 0x0B, 0xA6, 0x0B, 0xA7, 0x0B, 0xA8, 0x0B, 0xA9, 0x0B, 0xAA,
};
COMPILER_STRIP_GATE(0x80391CCC, &effNameLarge);
#pragma pop

/* 80391CD8-80391D20 01E338 0048+00 0/1 0/0 0/0 .rodata          leftTransLarge$41100 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const leftTransLarge[72] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x42, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391CD8, &leftTransLarge);
#pragma pop

/* 80391D20-80391D38 01E380 0018+00 0/1 0/0 0/0 .rodata          leftTransWater$41105 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const leftTransWater[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391D20, &leftTransWater);
#pragma pop

/* 80391D38-80391D44 01E398 000C+00 1/1 0/0 0/0 .rodata          effName$41208 */
SECTION_RODATA static u8 const effName_41208[12] = {
    0x09, 0xD0, 0x09, 0xD1, 0x09, 0xD2, 0x09, 0xD3, 0x09, 0xD4, 0x09, 0xD5,
};
COMPILER_STRIP_GATE(0x80391D38, &effName_41208);

/* 80391D44-80391D54 01E3A4 0010+00 1/1 0/0 0/0 .rodata          swordUpColor$41733 */
static GXColorS10 const swordUpColor[2] = {{13, 10, 2, 255}, {28, 16, 4, 255}};

/* 80391D54-80391D60 01E3B4 000C+00 1/1 0/0 0/0 .rodata          swordCutSplashScale$41755 */
SECTION_RODATA static u8 const swordCutSplashScale[12] = {
    0x3F, 0x19, 0x99, 0x9A, 0x3F, 0x19, 0x99, 0x9A, 0x3F, 0x19, 0x99, 0x9A,
};
COMPILER_STRIP_GATE(0x80391D54, &swordCutSplashScale);

/* 80391D60-80391D6C 01E3C0 000C+00 0/1 0/0 0/0 .rodata          fairyScale$41951 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const fairyScale[12] = {
    0x3F, 0x00, 0x00, 0x00, 0x3F, 0x00, 0x00, 0x00, 0x3F, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391D60, &fairyScale);
#pragma pop

/* 80391D6C-80391D78 01E3CC 000C+00 0/1 0/0 0/0 .rodata          chuchuLocalOffset$41952 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const chuchuLocalOffset[12] = {
    0x00, 0x00, 0x00, 0x00, 0x41, 0x70, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391D6C, &chuchuLocalOffset);
#pragma pop

/* 80391D78-80391D84 01E3D8 000C+00 0/1 0/0 0/0 .rodata          chuchuScale$41953 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const chuchuScale[12] = {
    0x3F, 0x4C, 0xCC, 0xCD, 0x3F, 0x4C, 0xCC, 0xCD, 0x3F, 0x4C, 0xCC, 0xCD,
};
COMPILER_STRIP_GATE(0x80391D78, &chuchuScale);
#pragma pop

/* 80391D84-80391D94 01E3E4 0010+00 1/1 0/0 0/0 .rodata          effJoint$42070 */
SECTION_RODATA static u8 const effJoint[16] = {
    0x00, 0x07, 0x00, 0x0C, 0x00, 0x10, 0x00, 0x22, 0x00, 0x03, 0x00, 0x03, 0x00, 0x03, 0x00, 0x03,
};
COMPILER_STRIP_GATE(0x80391D84, &effJoint);

/* 80391D94-80391DF4 01E3F4 0060+00 1/1 0/0 0/0 .rodata          effOffset$42071 */
SECTION_RODATA static u8 const effOffset[96] = {
    0xC0, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x70, 0x00, 0x00,
    0x40, 0x40, 0x00, 0x00, 0x40, 0xA0, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
    0x41, 0x70, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC0, 0xA0, 0x00, 0x00, 0xC0, 0xE0, 0x00, 0x00,
    0x41, 0x70, 0x00, 0x00, 0x40, 0xA0, 0x00, 0x00, 0xC1, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xC1, 0xC8, 0x00, 0x00, 0x40, 0xA0, 0x00, 0x00, 0x41, 0x70, 0x00, 0x00, 0xC0, 0xA0, 0x00, 0x00,
    0x41, 0xA0, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1, 0xC8, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391D94, &effOffset);

/* 80391DF4-80391E00 01E454 000C+00 0/1 0/0 0/0 .rodata          effScale$42225 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const effScale[12] = {
    0x3F, 0x80, 0x00, 0x00, 0x3F, 0xE6, 0x66, 0x66, 0x3F, 0x80, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391DF4, &effScale);
#pragma pop

/* 80391E00-80391E0C 01E460 000C+00 0/1 0/0 0/0 .rodata          wolfEffScale$42226 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const wolfEffScale[12] = {
    0x3F, 0x80, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x3F, 0xC0, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391E00, &wolfEffScale);
#pragma pop

/* 80391E0C-80391E18 01E46C 000C+00 0/1 0/0 0/0 .rodata          offsetPos$42227 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const offsetPos[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391E0C, &offsetPos);
#pragma pop

/* 80391E18-80391E24 01E478 000C+00 1/1 0/0 0/0 .rodata          localFootOffset$45107 */
SECTION_RODATA static u8 const localFootOffset[12] = {
    0x40, 0xC0, 0x00, 0x00, 0xC0, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391E18, &localFootOffset);

/* 80391E24-80391E30 01E484 000C+00 1/1 0/0 0/0 .rodata          frontOffset$45186 */
SECTION_RODATA static u8 const frontOffset[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391E24, &frontOffset);

/* 80391E30-80391E3C 01E490 000C+00 1/1 0/0 0/0 .rodata          wolfChainBaseOffset$45513 */
SECTION_RODATA static u8 const wolfChainBaseOffset[12] = {
    0x41, 0xB0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0x40, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391E30, &wolfChainBaseOffset);

/* 80391E3C-80391E48 01E49C 000C+00 1/1 0/0 0/0 .rodata          wolfChainVec$45514 */
SECTION_RODATA static u8 const wolfChainVec[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0x10, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391E3C, &wolfChainVec);

/* 80391E48-80391E78 01E4A8 0030+00 1/1 0/0 0/0 .rodata          label$45760 */
SECTION_RODATA static u32 const label[12] = {
    Z2SE_WL_V_BREATH_SIT, Z2SE_WL_V_BREATH_WAIT, Z2SE_WL_V_BREATH_WALK, Z2SE_WL_V_BREATH_TIRED,
    Z2SE_WL_V_DASH,       Z2SE_WL_V_BREATH_JUMP, Z2SE_WL_V_SLIP_CLIMB,  Z2SE_WL_V_PUSH_ROCK,
    Z2SE_WL_V_TURN_BACK,  Z2SE_WL_V_HOLD_THROW,  Z2SE_WL_V_FAILED,      Z2SE_WL_V_NOSE,
};
COMPILER_STRIP_GATE(0x80391E48, &label);

/* 80391E78-80391E8C 01E4D8 0014+00 1/1 0/0 0/0 .rodata          normalType0$50859 */
SECTION_RODATA static u8 const normalType0[20] = {
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00,
    0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391E78, &normalType0);

/* 80391E8C-80391EA0 01E4EC 0014+00 1/1 0/0 0/0 .rodata          normalType1$50860 */
SECTION_RODATA static u8 const normalType1_50860[20] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03,
};
COMPILER_STRIP_GATE(0x80391E8C, &normalType1_50860);

/* 80391EA0-80391EC0 01E500 0020+00 0/1 0/0 0/0 .rodata          dataTabl$51470 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const dataTabl[32] = {
    0x00, 0x00, 0x00, 0x40, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x2E, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x43, 0x2F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x2D, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391EA0, &dataTabl);
#pragma pop

/* 80391EC0-80391ECC 01E520 000C+00 1/1 0/0 0/0 .rodata          arm1Vec$56040 */
SECTION_RODATA static u8 const arm1Vec[12] = {
    0x41, 0xE8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391EC0, &arm1Vec);

/* 80391ECC-80391ED8 01E52C 000C+00 1/1 0/0 0/0 .rodata          arm2Vec$56041 */
SECTION_RODATA static u8 const arm2Vec[12] = {
    0x41, 0xD4, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391ECC, &arm2Vec);

/* 80453228-8045322C 001828 0004+00 1/1 0/0 0/0 .sdata2          armJointTable$56027 */
SECTION_SDATA2 static u8 armJointTable[4] = {
    0x00,
    0x07,
    0x00,
    0x0C,
};

/* 800A2710-800A29DC 09D050 02CC+00 1/1 0/0 0/0 .text            setArmMatrix__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setArmMatrix() {
    nofralloc
#include "asm/d/a/d_a_alink/setArmMatrix__9daAlink_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80391ED8-80391EE4 01E538 000C+00 0/1 0/0 0/0 .rodata          leg1Vec$56150 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const leg1Vec[12] = {
    0x41, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391ED8, &leg1Vec);
#pragma pop

/* 80391EE4-80391EF0 01E544 000C+00 0/1 0/0 0/0 .rodata          leg2Vec$56151 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const leg2Vec[12] = {
    0x42, 0x1D, 0x74, 0x39, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391EE4, &leg2Vec);
#pragma pop

/* 80391EF0-80391EFC 01E550 000C+00 0/1 0/0 0/0 .rodata          footVec$56152 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const footVec[12] = {
    0x41, 0x62, 0xE1, 0x48, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391EF0, &footVec);
#pragma pop

/* 8045322C-80453230 00182C 0004+00 1/1 0/0 0/0 .sdata2          footJointTable$56137 */
SECTION_SDATA2 static u8 footJointTable[4] = {
    0x00,
    0x12,
    0x00,
    0x17,
};

/* 800A29DC-800A2C24 09D31C 0248+00 1/1 0/0 0/0 .text            setFootMatrix__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setFootMatrix() {
    nofralloc
#include "asm/d/a/d_a_alink/setFootMatrix__9daAlink_cFv.s"
}
#pragma pop

/* 800A2C24-800A2CE0 09D564 00BC+00 3/3 0/0 0/0 .text            setMatrixOffset__9daAlink_cFPff */
void daAlink_c::setMatrixOffset(f32* param_0, f32 param_1) {
    if (param_0 != &mSinkShapeOffset) {
        cLib_addCalc(param_0, param_1, lit_5943, lit_52234, lit_11470);
    } else if (mProcID == PROC_TOOL_DEMO) {
        return;
    }

    mpLinkModel->getBaseTRMtx()[1][3] += *param_0;
    mInvMtx[1][3] -= *param_0;

    mDoMtx_stack_c::XrotS(shape_angle.x);
    mDoMtx_stack_c::concat(mInvMtx);
    mDoMtx_copy(mDoMtx_stack_c::get(), field_0x2be8);
}

/* 800A2CE0-800A3430 09D620 0750+00 3/3 0/0 0/0 .text
 * setLegAngle__9daAlink_cFfP18daAlink_footData_cPsPsi          */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setLegAngle(f32 param_0, daAlink_footData_c* param_1, s16* param_2,
                                s16* param_3, int param_4) {
    nofralloc
#include "asm/d/a/d_a_alink/setLegAngle__9daAlink_cFfP18daAlink_footData_cPsPsi.s"
}
#pragma pop

/* ############################################################################################## */
/* 80391EFC-80391F08 01E55C 000C+00 0/1 0/0 0/0 .rodata          localLeftFootOffset$56542 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const localLeftFootOffset[12] = {
    0xC0, 0x40, 0x00, 0x00, 0x41, 0x50, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391EFC, &localLeftFootOffset);
#pragma pop

/* 80391F08-80391F14 01E568 000C+00 0/1 0/0 0/0 .rodata          localRightFootOffset$56543 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const localRightFootOffset[12] = {
    0xC0, 0x40, 0x00, 0x00, 0xC1, 0x50, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391F08, &localRightFootOffset);
#pragma pop

/* 80391F14-80391F20 01E574 000C+00 0/1 0/0 0/0 .rodata          localLeftToeOffset$56544 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const localLeftToeOffset[12] = {
    0x41, 0x20, 0x00, 0x00, 0x40, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391F14, &localLeftToeOffset);
#pragma pop

/* 80391F20-80391F2C 01E580 000C+00 0/1 0/0 0/0 .rodata          localRightToeOffset$56545 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const localRightToeOffset[12] = {
    0x41, 0x20, 0x00, 0x00, 0xC0, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391F20, &localRightToeOffset);
#pragma pop

/* 80450690-80450694 000110 0004+00 20/20 0/0 0/0 .sdata           l_autoUpHeight */
SECTION_SDATA static f32 l_autoUpHeight = 30.010000228881836f;

/* 80450694-80450698 000114 0004+00 12/12 0/0 0/0 .sdata           l_autoDownHeight */
SECTION_SDATA static f32 l_autoDownHeight = -30.010000228881836f;

/* 800A3430-800A39B8 09DD70 0588+00 1/1 0/0 0/0 .text            footBgCheck__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::footBgCheck() {
    nofralloc
#include "asm/d/a/d_a_alink/footBgCheck__9daAlink_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80391F2C-80391F44 01E58C 0018+00 1/1 0/0 0/0 .rodata          localHandPos$56752 */
SECTION_RODATA static u8 const localHandPos[24] = {
    0x41, 0xB0, 0xC5, 0x60, 0x40, 0xAF, 0xC1, 0x20, 0x00, 0x00, 0x00, 0x00,
    0xC1, 0xAF, 0x33, 0x80, 0x40, 0xB0, 0xCF, 0xDF, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391F2C, &localHandPos);

/* 800A39B8-800A3C8C 09E2F8 02D4+00 1/1 0/0 0/0 .text            handBgCheck__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::handBgCheck() {
    nofralloc
#include "asm/d/a/d_a_alink/handBgCheck__9daAlink_cFv.s"
}
#pragma pop

/* 800A3C8C-800A3CE4 09E5CC 0058+00 11/11 0/0 0/0 .text            setItemHeap__9daAlink_cFv */
JKRHeap* daAlink_c::setItemHeap() {
    if (!i_checkResetFlg0(RFLG0_UNK_4000)) {
        field_0x2fa0 ^= 1;
        i_onResetFlg0(RFLG0_UNK_4000);
    }

    return mItemHeap[field_0x2fa0].setAnimeHeap();
}

/**
 * Sets the animation archive ID and resource ID based on combined ID
 * The left most digit is the arcNo if not 0
 * The latter 3 digits are the resource ID
 */
/* 800A3CE4-800A3D0C 09E624 0028+00 4/4 0/0 0/0 .text            setIdxMask__9daAlink_cFPUsPUs */
void daAlink_c::setIdxMask(u16* o_arcNo, u16* o_resID) {
    if (*o_arcNo == 0xFFFF) {
        u16 arc_id = (*o_resID >> 12) & 0xF;
        *o_resID &= 0xFFF;

        if (arc_id != 0) {
            *o_arcNo = arc_id;
        }
    }
}

/* 800A3D0C-800A3D7C 09E64C 0070+00 5/5 0/0 0/0 .text
 * getAnimeResource__9daAlink_cFP14daPy_anmHeap_cUsUl           */
void* daAlink_c::getAnimeResource(daPy_anmHeap_c* p_anmHeap, u16 i_anmID, u32 buf_size) {
    u16 arcNo;
    u16 resID = i_anmID;

    p_anmHeap->setBufferSize(buf_size);
    arcNo = 0xFFFF;

    setIdxMask(&arcNo, &resID);

    if (arcNo == 0xFFFF) {
        return p_anmHeap->loadDataIdx(resID);
    }

    return p_anmHeap->loadDataDemoRID(resID, arcNo);
}

/* 800A3D7C-800A3E30 09E6BC 00B4+00 16/16 0/0 0/0 .text initModel__9daAlink_cFP12J3DModelDataUlUl
 */
J3DModel* daAlink_c::initModel(J3DModelData* i_modelData, u32 mdlFlags, u32 diffFlags) {
    J3DTexture* tex = i_modelData->getTexture();
    int texNo = tex->getNum() - 1;

    int warpMaterial = false;
    if (texNo >= 0) {
        ResTIMG* timg = tex->getResTIMG(texNo);

        if (mpWarpTexData == (u32)timg + timg->imageOffset) {
            warpMaterial = true;
        }
    }

    if (warpMaterial) {
        dRes_info_c::onWarpMaterial(i_modelData);
        diffFlags |= 0x2000400;
    }

    J3DModel* model = mDoExt_J3DModel__create(i_modelData, mdlFlags, diffFlags | 0x11000084);

    if (warpMaterial) {
        dRes_info_c::offWarpMaterial(i_modelData);
    }

    return model;
}

/* 800A3E30-800A3E98 09E770 0068+00 1/1 0/0 0/0 .text            initModel__9daAlink_cFUsUl */
J3DModel* daAlink_c::initModel(u16 param_0, u32 param_1) {
    return initModel((J3DModelData*)dComIfG_getObjectRes(l_arcName, param_0), param_1);
}

/* 800A3E98-800A3F00 09E7D8 0068+00 1/1 0/0 0/0 .text            initModelEnv__9daAlink_cFUsUl */
J3DModel* daAlink_c::initModelEnv(u16 param_0, u32 param_1) {
    return initModelEnv((J3DModelData*)dComIfG_getObjectRes(l_arcName, param_0), param_1);
}

/* 800A3F00-800A3F98 09E840 0098+00 1/1 0/0 0/0 .text initDemoModel__9daAlink_cFPP8J3DModelPCcUl
 */
int daAlink_c::initDemoModel(J3DModel** p_model, char const* resName, u32 param_2) {
    *p_model = NULL;

    J3DModelData* modelData =
        (J3DModelData*)dComIfG_getObjectRes(dStage_roomControl_c::getDemoArcName(), resName);
    if (modelData != NULL) {
        *p_model = initModel(modelData, param_2);

        if (*p_model == NULL) {
            return 0;
        }
    }

    return 1;
}

/* 800A3F98-800A4068 09E8D8 00D0+00 1/1 0/0 1/1 .text initDemoBck__9daAlink_cFPP13mDoExt_bckAnmPCc
 */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::initDemoBck(mDoExt_bckAnm** p_bck, char const* resName) {
    J3DAnmTransform* res =
        (J3DAnmTransform*)dComIfG_getObjectRes(dStage_roomControl_c::getDemoArcName(), resName);

    if (res != NULL) {
        *p_bck = new mDoExt_bckAnm();

        if (*p_bck == NULL) {
            return 0;
        }

        if ((*p_bck)->init(res, 1, 2, 1.0f, 0, -1, false)) {
            return 0;
        }
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::initDemoBck(mDoExt_bckAnm** param_0, char const* param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/initDemoBck__9daAlink_cFPP13mDoExt_bckAnmPCc.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80392094-80392094 01E6F4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80392094 = "Rotary";
SECTION_DEAD static char const* const stringBase_8039209B = "Rampart2";
SECTION_DEAD static char const* const stringBase_803920A4 = "Allay";
SECTION_DEAD static char const* const stringBase_803920AA = "AllayR";
SECTION_DEAD static char const* const stringBase_803920B1 = "AllayR2";
SECTION_DEAD static char const* const stringBase_803920B9 = "AllayS";
SECTION_DEAD static char const* const stringBase_803920C0 = "StreetP";
SECTION_DEAD static char const* const stringBase_803920C8 = "Street";
SECTION_DEAD static char const* const stringBase_803920CF = "D_MN04B";
SECTION_DEAD static char const* const stringBase_803920D7 = "Type";
SECTION_DEAD static char const* const stringBase_803920DC = "D_MN07B";
SECTION_DEAD static char const* const stringBase_803920E4 = "D_MN05A";
SECTION_DEAD static char const* const stringBase_803920EC = "D_MN06A";
SECTION_DEAD static char const* const stringBase_803920F4 = "F_SP117";
SECTION_DEAD static char const* const stringBase_803920FC = "D_MN54";
SECTION_DEAD static char const* const stringBase_80392103 = "F_SP103";
SECTION_DEAD static char const* const stringBase_8039210B = "F_SP00";
SECTION_DEAD static char const* const stringBase_80392112 = "F_SP127";
SECTION_DEAD static char const* const stringBase_8039211A = "D_MN07A";
SECTION_DEAD static char const* const stringBase_80392122 = "D_MN01A";
SECTION_DEAD static char const* const stringBase_8039212A = "D_MN10";
SECTION_DEAD static char const* const stringBase_80392131 = "D_MN10A";
SECTION_DEAD static char const* const stringBase_80392139 = "F_SP108";
SECTION_DEAD static char const* const stringBase_80392141 = "J_Tobi";
SECTION_DEAD static char const* const stringBase_80392148 = "J_Umak";
SECTION_DEAD static char const* const stringBase_8039214F = "D_MN01";
SECTION_DEAD static char const* const stringBase_80392156 = "D_MN06";
SECTION_DEAD static char const* const stringBase_8039215D = "D_MN05";
SECTION_DEAD static char const* const stringBase_80392164 = "R22-opening";
SECTION_DEAD static char const* const stringBase_80392170 = "pos";
SECTION_DEAD static char const* const stringBase_80392174 = "angle";
SECTION_DEAD static char const* const stringBase_8039217A = "prm0";
SECTION_DEAD static char const* const stringBase_8039217F = "prm1";
SECTION_DEAD static char const* const stringBase_80392184 = "stick";
SECTION_DEAD static char const* const stringBase_8039218A = "D_MN09B";
SECTION_DEAD static char const* const stringBase_80392192 = "D_MN05B";
SECTION_DEAD static char const* const stringBase_8039219A = "F_SP115";
SECTION_DEAD static char const* const stringBase_803921A2 = "D_MN11";
SECTION_DEAD static char const* const stringBase_803921A9 = "D_MN07";
SECTION_DEAD static char const* const stringBase_803921B0 = "F_SP102";
SECTION_DEAD static char const* const stringBase_803921B8 = "D_MN08D";
SECTION_DEAD static char const* const stringBase_803921C0 = "D_MN09A";
SECTION_DEAD static char const* const stringBase_803921C8 = "D_MN08C";
SECTION_DEAD static char const* const stringBase_803921D0 = "R_SP161";
SECTION_DEAD static char const* const stringBase_803921D8 = "Obj_kbrg";
SECTION_DEAD static char const* const stringBase_803921E1 = "Obj_obrg";
SECTION_DEAD static char const* const stringBase_803921EA = "M_VolcBom";
SECTION_DEAD static char const* const stringBase_803921F4 = "SCanCrs";
SECTION_DEAD static char const* const stringBase_803921FC = "F_SP125";
SECTION_DEAD static char const* const stringBase_80392204 = "D_MN08";
SECTION_DEAD static char const* const stringBase_8039220B = "F_SP116";
SECTION_DEAD static char const* const stringBase_80392213 = "zelda_v_cursor_new_yellow.blo";
SECTION_DEAD static char const* const stringBase_80392231 = "zelda_v_cursor_new_yellow.bpk";
SECTION_DEAD static char const* const stringBase_8039224F = "zelda_v_cursor_new_yellow.bck";
SECTION_DEAD static char const* const stringBase_8039226D = "zelda_v_cursor_new_yellow_02.brk";
SECTION_DEAD static char const* const stringBase_8039228E = "zelda_v_cursor_new_yellow.brk";
SECTION_DEAD static char const* const stringBase_803922AC = "wl_eye_Hilight";
SECTION_DEAD static char const* const stringBase_803922BB = "midona_eye_Hlight";
SECTION_DEAD static char const* const stringBase_803922CD = "alSumou";
SECTION_DEAD static char const* const stringBase_803922D5 = "bl.bmd";
SECTION_DEAD static char const* const stringBase_803922DC = "bl_head.bmd";
SECTION_DEAD static char const* const stringBase_803922E8 = "bl_hands.bmd";
SECTION_DEAD static char const* const stringBase_803922F5 = "zl.bmd";
SECTION_DEAD static char const* const stringBase_803922FC = "zl_head.bmd";
SECTION_DEAD static char const* const stringBase_80392308 = "al_hands.bmd";
SECTION_DEAD static char const* const stringBase_80392315 = "ml.bmd";
SECTION_DEAD static char const* const stringBase_8039231C = "ml_head.bmd";
SECTION_DEAD static char const* const stringBase_80392328 = "al.bmd";
SECTION_DEAD static char const* const stringBase_8039232F = "al_head.bmd";
SECTION_DEAD static char const* const stringBase_8039233B = "al_face.bmd";
SECTION_DEAD static char const* const stringBase_80392347 = "zl_face.bmd";
SECTION_DEAD static char const* const stringBase_80392353 = "al_bootsH.bmd";
SECTION_DEAD static char const* const stringBase_80392361 = "al_kantera.bmd";
SECTION_DEAD static char const* const stringBase_80392370 = "ef_ktGlow.bmd";
SECTION_DEAD static char const* const stringBase_8039237E = "ef_ktGlow.btk";
SECTION_DEAD static char const* const stringBase_8039238C = "al_SWB.bmd";
SECTION_DEAD static char const* const stringBase_80392397 = "highlight02";
SECTION_DEAD static char const* const stringBase_803923A3 = "F_SP200";
SECTION_DEAD static char const* const stringBase_803923AB = "R_SP30";
SECTION_DEAD static char const* const stringBase_803923B2 = "SMELL_1st";
SECTION_DEAD static char const* const stringBase_803923BC = "SMELL_Child";
SECTION_DEAD static char const* const stringBase_803923C8 = "Always";
SECTION_DEAD static char const* const stringBase_803923CF = "demo00_Link_cut00_HL_tmp.bmd";
SECTION_DEAD static char const* const stringBase_803923EC = "demo00_Link_cut00_HL_tmp.bck";
SECTION_DEAD static char const* const stringBase_80392409 = "demo00_Link_cut00_HR_tmp.bmd";
SECTION_DEAD static char const* const stringBase_80392426 = "demo00_Link_cut00_HR_tmp.bck";
SECTION_DEAD static char const* const stringBase_80392443 = "demo00_Link_cut00_FC_blend.bmd";
SECTION_DEAD static char const* const stringBase_80392462 = "demo00_Link_cut00_FC_tongue.bmd";
SECTION_DEAD static char const* const stringBase_80392482 = "demo00_Link_cut00_FC_tmp.bck";
SECTION_DEAD static char const* const stringBase_8039249F = "demo00_Link_cut00_HD_tmp.bck";
SECTION_DEAD static char const* const stringBase_803924BC = "demo00_Link_cut00_FC_tmp.bls";
SECTION_DEAD static char const* const stringBase_803924D9 = "F_SP118";
SECTION_DEAD static char const* const stringBase_803924E1 = "D_MN08B";
SECTION_DEAD static char const* const stringBase_803924E9 = "F_SP109";
SECTION_DEAD static char const* const stringBase_803924F1 = "F_SP123";
SECTION_DEAD static char const* const stringBase_803924F9 = "SCENE_EXIT";
SECTION_DEAD static char const* const stringBase_80392504 = "R_SP127";
SECTION_DEAD static char const* const stringBase_8039250C = "R_SP01";
SECTION_DEAD static char const* const stringBase_80392513 = "D_MN08A";
SECTION_DEAD static char const* const stringBase_8039251B = "ANGER";
SECTION_DEAD static char const* const stringBase_80392521 = "ANGER2";
SECTION_DEAD static char const* const stringBase_80392528 = "ml_body_power_down.brk";
SECTION_DEAD static char const* const stringBase_8039253F = "ml_body_power_up_a.brk";
SECTION_DEAD static char const* const stringBase_80392556 = "ml_body_power_up_b.brk";
SECTION_DEAD static char const* const stringBase_8039256D = "ml_head_power_down.brk";
SECTION_DEAD static char const* const stringBase_80392584 = "ml_head_power_up_a.brk";
SECTION_DEAD static char const* const stringBase_8039259B = "ml_head_power_up_b.brk";
#pragma pop

/* 803AF990-803AF99C 00CAB0 000C+00 4/4 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 803AF99C-803AF9A8 00CABC 000A+02 2/2 0/0 0/0 .data            l_peepEventName */
SECTION_DATA static const char l_peepEventName[10] = "PEEP_HOLE";

/* 803AF9A8-803AF9B4 -00001 000C+00 0/1 0/0 0/0 .data            @4422 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4422[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procPreActionUnequip__9daAlink_cFv,
};
#pragma pop

/* 803AF9B4-803AF9C0 -00001 000C+00 0/1 0/0 0/0 .data            @4423 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4423[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procServiceWait__9daAlink_cFv,
};
#pragma pop

/* 803AF9C0-803AF9CC -00001 000C+00 0/1 0/0 0/0 .data            @4424 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4424[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procTiredWait__9daAlink_cFv,
};
#pragma pop

/* 803AF9CC-803AF9D8 -00001 000C+00 0/1 0/0 0/0 .data            @4425 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4425[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWait__9daAlink_cFv,
};
#pragma pop

/* 803AF9D8-803AF9E4 -00001 000C+00 0/1 0/0 0/0 .data            @4426 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4426[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procMove__9daAlink_cFv,
};
#pragma pop

/* 803AF9E4-803AF9F0 -00001 000C+00 0/1 0/0 0/0 .data            @4427 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4427[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procAtnMove__9daAlink_cFv,
};
#pragma pop

/* 803AF9F0-803AF9FC -00001 000C+00 0/1 0/0 0/0 .data            @4428 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4428[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procAtnActorWait__9daAlink_cFv,
};
#pragma pop

/* 803AF9FC-803AFA08 -00001 000C+00 0/1 0/0 0/0 .data            @4429 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4429[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procAtnActorMove__9daAlink_cFv,
};
#pragma pop

/* 803AFA08-803AFA14 -00001 000C+00 0/1 0/0 0/0 .data            @4430 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4430[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWaitTurn__9daAlink_cFv,
};
#pragma pop

/* 803AFA14-803AFA20 -00001 000C+00 0/1 0/0 0/0 .data            @4431 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4431[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procMoveTurn__9daAlink_cFv,
};
#pragma pop

/* 803AFA20-803AFA2C -00001 000C+00 0/1 0/0 0/0 .data            @4432 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4432[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procSideStep__9daAlink_cFv,
};
#pragma pop

/* 803AFA2C-803AFA38 -00001 000C+00 0/1 0/0 0/0 .data            @4433 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4433[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procSideStepLand__9daAlink_cFv,
};
#pragma pop

/* 803AFA38-803AFA44 -00001 000C+00 0/1 0/0 0/0 .data            @4434 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4434[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procSlide__9daAlink_cFv,
};
#pragma pop

/* 803AFA44-803AFA50 -00001 000C+00 0/1 0/0 0/0 .data            @4435 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4435[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procSlideLand__9daAlink_cFv,
};
#pragma pop

/* 803AFA50-803AFA5C -00001 000C+00 0/1 0/0 0/0 .data            @4436 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4436[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procFrontRoll__9daAlink_cFv,
};
#pragma pop

/* 803AFA5C-803AFA68 -00001 000C+00 0/1 0/0 0/0 .data            @4437 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4437[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procFrontRollCrash__9daAlink_cFv,
};
#pragma pop

/* 803AFA68-803AFA74 -00001 000C+00 0/1 0/0 0/0 .data            @4438 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4438[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procFrontRollSuccess__9daAlink_cFv,
};
#pragma pop

/* 803AFA74-803AFA80 -00001 000C+00 0/1 0/0 0/0 .data            @4439 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4439[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procSideRoll__9daAlink_cFv,
};
#pragma pop

/* 803AFA80-803AFA8C -00001 000C+00 0/1 0/0 0/0 .data            @4440 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4440[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procBackJump__9daAlink_cFv,
};
#pragma pop

/* 803AFA8C-803AFA98 -00001 000C+00 0/1 0/0 0/0 .data            @4441 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4441[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procBackJumpLand__9daAlink_cFv,
};
#pragma pop

/* 803AFA98-803AFAA4 -00001 000C+00 0/1 0/0 0/0 .data            @4442 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4442[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procSlip__9daAlink_cFv,
};
#pragma pop

/* 803AFAA4-803AFAB0 -00001 000C+00 0/1 0/0 0/0 .data            @4443 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4443[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procAutoJump__9daAlink_cFv,
};
#pragma pop

/* 803AFAB0-803AFABC -00001 000C+00 0/1 0/0 0/0 .data            @4444 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4444[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procDiveJump__9daAlink_cFv,
};
#pragma pop

/* 803AFABC-803AFAC8 -00001 000C+00 0/1 0/0 0/0 .data            @4445 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4445[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procRollJump__9daAlink_cFv,
};
#pragma pop

/* 803AFAC8-803AFAD4 -00001 000C+00 0/1 0/0 0/0 .data            @4446 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4446[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procFall__9daAlink_cFv,
};
#pragma pop

/* 803AFAD4-803AFAE0 -00001 000C+00 0/1 0/0 0/0 .data            @4447 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4447[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procLand__9daAlink_cFv,
};
#pragma pop

/* 803AFAE0-803AFAEC -00001 000C+00 0/1 0/0 0/0 .data            @4448 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4448[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procSmallJump__9daAlink_cFv,
};
#pragma pop

/* 803AFAEC-803AFAF8 -00001 000C+00 0/1 0/0 0/0 .data            @4449 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4449[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procStepMove__9daAlink_cFv,
};
#pragma pop

/* 803AFAF8-803AFB04 -00001 000C+00 0/1 0/0 0/0 .data            @4450 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4450[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCrouch__9daAlink_cFv,
};
#pragma pop

/* 803AFB04-803AFB10 -00001 000C+00 0/1 0/0 0/0 .data            @4451 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4451[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procGuardSlip__9daAlink_cFv,
};
#pragma pop

/* 803AFB10-803AFB1C -00001 000C+00 0/1 0/0 0/0 .data            @4452 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4452[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procGuardAttack__9daAlink_cFv,
};
#pragma pop

/* 803AFB1C-803AFB28 -00001 000C+00 0/1 0/0 0/0 .data            @4453 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4453[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procGuardBreak__9daAlink_cFv,
};
#pragma pop

/* 803AFB28-803AFB34 -00001 000C+00 0/1 0/0 0/0 .data            @4454 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4454[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procTurnMove__9daAlink_cFv,
};
#pragma pop

/* 803AFB34-803AFB40 -00001 000C+00 0/1 0/0 0/0 .data            @4455 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4455[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCutNormal__9daAlink_cFv,
};
#pragma pop

/* 803AFB40-803AFB4C -00001 000C+00 0/1 0/0 0/0 .data            @4456 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4456[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCutFinish__9daAlink_cFv,
};
#pragma pop

/* 803AFB4C-803AFB58 -00001 000C+00 0/1 0/0 0/0 .data            @4457 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4457[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCutFinishJumpUp__9daAlink_cFv,
};
#pragma pop

/* 803AFB58-803AFB64 -00001 000C+00 0/1 0/0 0/0 .data            @4458 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4458[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCutFinishJumpUpLand__9daAlink_cFv,
};
#pragma pop

/* 803AFB64-803AFB70 -00001 000C+00 0/1 0/0 0/0 .data            @4459 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4459[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCutReverse__9daAlink_cFv,
};
#pragma pop

/* 803AFB70-803AFB7C -00001 000C+00 0/1 0/0 0/0 .data            @4460 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4460[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCutJump__9daAlink_cFv,
};
#pragma pop

/* 803AFB7C-803AFB88 -00001 000C+00 0/1 0/0 0/0 .data            @4461 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4461[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCutJumpLand__9daAlink_cFv,
};
#pragma pop

/* 803AFB88-803AFB94 -00001 000C+00 0/1 0/0 0/0 .data            @4462 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4462[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCutTurn__9daAlink_cFv,
};
#pragma pop

/* 803AFB94-803AFBA0 -00001 000C+00 0/1 0/0 0/0 .data            @4463 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4463[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCutTurnCharge__9daAlink_cFv,
};
#pragma pop

/* 803AFBA0-803AFBAC -00001 000C+00 0/1 0/0 0/0 .data            @4464 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4464[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCutTurnMove__9daAlink_cFv,
};
#pragma pop

/* 803AFBAC-803AFBB8 -00001 000C+00 0/1 0/0 0/0 .data            @4465 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4465[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCutDown__9daAlink_cFv,
};
#pragma pop

/* 803AFBB8-803AFBC4 -00001 000C+00 0/1 0/0 0/0 .data            @4466 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4466[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCutDownLand__9daAlink_cFv,
};
#pragma pop

/* 803AFBC4-803AFBD0 -00001 000C+00 0/1 0/0 0/0 .data            @4467 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4467[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCutHead__9daAlink_cFv,
};
#pragma pop

/* 803AFBD0-803AFBDC -00001 000C+00 0/1 0/0 0/0 .data            @4468 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4468[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCutHeadLand__9daAlink_cFv,
};
#pragma pop

/* 803AFBDC-803AFBE8 -00001 000C+00 0/1 0/0 0/0 .data            @4469 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4469[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCutLargeJumpCharge__9daAlink_cFv,
};
#pragma pop

/* 803AFBE8-803AFBF4 -00001 000C+00 0/1 0/0 0/0 .data            @4470 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4470[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCutLargeJump__9daAlink_cFv,
};
#pragma pop

/* 803AFBF4-803AFC00 -00001 000C+00 0/1 0/0 0/0 .data            @4471 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4471[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCutLargeJumpLand__9daAlink_cFv,
};
#pragma pop

/* 803AFC00-803AFC0C -00001 000C+00 0/1 0/0 0/0 .data            @4472 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4472[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procDamage__9daAlink_cFv,
};
#pragma pop

/* 803AFC0C-803AFC18 -00001 000C+00 0/1 0/0 0/0 .data            @4473 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4473[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procLargeDamageUp__9daAlink_cFv,
};
#pragma pop

/* 803AFC18-803AFC24 -00001 000C+00 0/1 0/0 0/0 .data            @4474 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4474[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procLandDamage__9daAlink_cFv,
};
#pragma pop

/* 803AFC24-803AFC30 -00001 000C+00 0/1 0/0 0/0 .data            @4475 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4475[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCrawlStart__9daAlink_cFv,
};
#pragma pop

/* 803AFC30-803AFC3C -00001 000C+00 0/1 0/0 0/0 .data            @4476 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4476[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCrawlMove__9daAlink_cFv,
};
#pragma pop

/* 803AFC3C-803AFC48 -00001 000C+00 0/1 0/0 0/0 .data            @4477 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4477[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCrawlAutoMove__9daAlink_cFv,
};
#pragma pop

/* 803AFC48-803AFC54 -00001 000C+00 0/1 0/0 0/0 .data            @4478 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4478[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCrawlEnd__9daAlink_cFv,
};
#pragma pop

/* 803AFC54-803AFC60 -00001 000C+00 0/1 0/0 0/0 .data            @4479 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4479[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procPullMove__9daAlink_cFv,
};
#pragma pop

/* 803AFC60-803AFC6C -00001 000C+00 0/1 0/0 0/0 .data            @4480 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4480[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHorseRide__9daAlink_cFv,
};
#pragma pop

/* 803AFC6C-803AFC78 -00001 000C+00 0/1 0/0 0/0 .data            @4481 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4481[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHorseGetOff__9daAlink_cFv,
};
#pragma pop

/* 803AFC78-803AFC84 -00001 000C+00 0/1 0/0 0/0 .data            @4482 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4482[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHorseWait__9daAlink_cFv,
};
#pragma pop

/* 803AFC84-803AFC90 -00001 000C+00 0/1 0/0 0/0 .data            @4483 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4483[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHorseTurn__9daAlink_cFv,
};
#pragma pop

/* 803AFC90-803AFC9C -00001 000C+00 0/1 0/0 0/0 .data            @4484 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4484[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHorseJump__9daAlink_cFv,
};
#pragma pop

/* 803AFC9C-803AFCA8 -00001 000C+00 0/1 0/0 0/0 .data            @4485 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4485[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHorseLand__9daAlink_cFv,
};
#pragma pop

/* 803AFCA8-803AFCB4 -00001 000C+00 0/1 0/0 0/0 .data            @4486 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4486[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHorseSubjectivity__9daAlink_cFv,
};
#pragma pop

/* 803AFCB4-803AFCC0 -00001 000C+00 0/1 0/0 0/0 .data            @4487 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4487[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHorseCut__9daAlink_cFv,
};
#pragma pop

/* 803AFCC0-803AFCCC -00001 000C+00 0/1 0/0 0/0 .data            @4488 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4488[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHorseCutChargeReady__9daAlink_cFv,
};
#pragma pop

/* 803AFCCC-803AFCD8 -00001 000C+00 0/1 0/0 0/0 .data            @4489 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4489[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHorseCutTurn__9daAlink_cFv,
};
#pragma pop

/* 803AFCD8-803AFCE4 -00001 000C+00 0/1 0/0 0/0 .data            @4490 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4490[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHorseDamage__9daAlink_cFv,
};
#pragma pop

/* 803AFCE4-803AFCF0 -00001 000C+00 0/1 0/0 0/0 .data            @4491 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4491[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHorseBowSubject__9daAlink_cFv,
};
#pragma pop

/* 803AFCF0-803AFCFC -00001 000C+00 0/1 0/0 0/0 .data            @4492 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4492[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHorseBowMove__9daAlink_cFv,
};
#pragma pop

/* 803AFCFC-803AFD08 -00001 000C+00 0/1 0/0 0/0 .data            @4493 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4493[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHorseGrabMove__9daAlink_cFv,
};
#pragma pop

/* 803AFD08-803AFD14 -00001 000C+00 0/1 0/0 0/0 .data            @4494 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4494[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHorseBoomerangSubject__9daAlink_cFv,
};
#pragma pop

/* 803AFD14-803AFD20 -00001 000C+00 0/1 0/0 0/0 .data            @4495 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4495[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHorseBoomerangMove__9daAlink_cFv,
};
#pragma pop

/* 803AFD20-803AFD2C -00001 000C+00 0/1 0/0 0/0 .data            @4496 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4496[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHorseHookshotSubject__9daAlink_cFv,
};
#pragma pop

/* 803AFD2C-803AFD38 -00001 000C+00 0/1 0/0 0/0 .data            @4497 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4497[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHorseHookshotMove__9daAlink_cFv,
};
#pragma pop

/* 803AFD38-803AFD44 -00001 000C+00 0/1 0/0 0/0 .data            @4498 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4498[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHorseBottleDrink__9daAlink_cFv,
};
#pragma pop

/* 803AFD44-803AFD50 -00001 000C+00 0/1 0/0 0/0 .data            @4499 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4499[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHorseComeback__9daAlink_cFv,
};
#pragma pop

/* 803AFD50-803AFD5C -00001 000C+00 0/1 0/0 0/0 .data            @4500 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4500[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHorseKandelaarPour__9daAlink_cFv,
};
#pragma pop

/* 803AFD5C-803AFD68 -00001 000C+00 0/1 0/0 0/0 .data            @4501 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4501[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHorseRun__9daAlink_cFv,
};
#pragma pop

/* 803AFD68-803AFD74 -00001 000C+00 0/1 0/0 0/0 .data            @4502 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4502[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHorseHang__9daAlink_cFv,
};
#pragma pop

/* 803AFD74-803AFD80 -00001 000C+00 0/1 0/0 0/0 .data            @4503 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4503[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHorseGetKey__9daAlink_cFv,
};
#pragma pop

/* 803AFD80-803AFD8C -00001 000C+00 0/1 0/0 0/0 .data            @4504 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4504[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHorseLookDown__9daAlink_cFv,
};
#pragma pop

/* 803AFD8C-803AFD98 -00001 000C+00 0/1 0/0 0/0 .data            @4505 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4505[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procBoarRun__9daAlink_cFv,
};
#pragma pop

/* 803AFD98-803AFDA4 -00001 000C+00 0/1 0/0 0/0 .data            @4506 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4506[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procSwordUnequipSp__9daAlink_cFv,
};
#pragma pop

/* 803AFDA4-803AFDB0 -00001 000C+00 0/1 0/0 0/0 .data            @4507 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4507[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHangStart__9daAlink_cFv,
};
#pragma pop

/* 803AFDB0-803AFDBC -00001 000C+00 0/1 0/0 0/0 .data            @4508 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4508[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHangFallStart__9daAlink_cFv,
};
#pragma pop

/* 803AFDBC-803AFDC8 -00001 000C+00 0/1 0/0 0/0 .data            @4509 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4509[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHangUp__9daAlink_cFv,
};
#pragma pop

/* 803AFDC8-803AFDD4 -00001 000C+00 0/1 0/0 0/0 .data            @4510 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4510[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHangWait__9daAlink_cFv,
};
#pragma pop

/* 803AFDD4-803AFDE0 -00001 000C+00 0/1 0/0 0/0 .data            @4511 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4511[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHangMove__9daAlink_cFv,
};
#pragma pop

/* 803AFDE0-803AFDEC -00001 000C+00 0/1 0/0 0/0 .data            @4512 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4512[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHangClimb__9daAlink_cFv,
};
#pragma pop

/* 803AFDEC-803AFDF8 -00001 000C+00 0/1 0/0 0/0 .data            @4513 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4513[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHangWallCatch__9daAlink_cFv,
};
#pragma pop

/* 803AFDF8-803AFE04 -00001 000C+00 0/1 0/0 0/0 .data            @4514 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4514[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHangReady__9daAlink_cFv,
};
#pragma pop

/* 803AFE04-803AFE10 -00001 000C+00 0/1 0/0 0/0 .data            @4515 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4515[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHangLeverDown__9daAlink_cFv,
};
#pragma pop

/* 803AFE10-803AFE1C -00001 000C+00 0/1 0/0 0/0 .data            @4516 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4516[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procBowSubject__9daAlink_cFv,
};
#pragma pop

/* 803AFE1C-803AFE28 -00001 000C+00 0/1 0/0 0/0 .data            @4517 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4517[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procBowMove__9daAlink_cFv,
};
#pragma pop

/* 803AFE28-803AFE34 -00001 000C+00 0/1 0/0 0/0 .data            @4518 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4518[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procBoomerangSubject__9daAlink_cFv,
};
#pragma pop

/* 803AFE34-803AFE40 -00001 000C+00 0/1 0/0 0/0 .data            @4519 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4519[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procBoomerangMove__9daAlink_cFv,
};
#pragma pop

/* 803AFE40-803AFE4C -00001 000C+00 0/1 0/0 0/0 .data            @4520 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4520[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procBoomerangCatch__9daAlink_cFv,
};
#pragma pop

/* 803AFE4C-803AFE58 -00001 000C+00 0/1 0/0 0/0 .data            @4521 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4521[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCopyRodSubject__9daAlink_cFv,
};
#pragma pop

/* 803AFE58-803AFE64 -00001 000C+00 0/1 0/0 0/0 .data            @4522 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4522[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCopyRodMove__9daAlink_cFv,
};
#pragma pop

/* 803AFE64-803AFE70 -00001 000C+00 0/1 0/0 0/0 .data            @4523 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4523[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCopyRodSwing__9daAlink_cFv,
};
#pragma pop

/* 803AFE70-803AFE7C -00001 000C+00 0/1 0/0 0/0 .data            @4524 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4524[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCopyRodRevive__9daAlink_cFv,
};
#pragma pop

/* 803AFE7C-803AFE88 -00001 000C+00 0/1 0/0 0/0 .data            @4525 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4525[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procLadderUpStart__9daAlink_cFv,
};
#pragma pop

/* 803AFE88-803AFE94 -00001 000C+00 0/1 0/0 0/0 .data            @4526 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4526[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procLadderUpEnd__9daAlink_cFv,
};
#pragma pop

/* 803AFE94-803AFEA0 -00001 000C+00 0/1 0/0 0/0 .data            @4527 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4527[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procLadderDownStart__9daAlink_cFv,
};
#pragma pop

/* 803AFEA0-803AFEAC -00001 000C+00 0/1 0/0 0/0 .data            @4528 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4528[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procLadderDownEnd__9daAlink_cFv,
};
#pragma pop

/* 803AFEAC-803AFEB8 -00001 000C+00 0/1 0/0 0/0 .data            @4529 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4529[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procLadderMove__9daAlink_cFv,
};
#pragma pop

/* 803AFEB8-803AFEC4 -00001 000C+00 0/1 0/0 0/0 .data            @4530 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4530[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procGrabReady__9daAlink_cFv,
};
#pragma pop

/* 803AFEC4-803AFED0 -00001 000C+00 0/1 0/0 0/0 .data            @4531 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4531[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procGrabUp__9daAlink_cFv,
};
#pragma pop

/* 803AFED0-803AFEDC -00001 000C+00 0/1 0/0 0/0 .data            @4532 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4532[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procGrabMiss__9daAlink_cFv,
};
#pragma pop

/* 803AFEDC-803AFEE8 -00001 000C+00 0/1 0/0 0/0 .data            @4533 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4533[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procGrabThrow__9daAlink_cFv,
};
#pragma pop

/* 803AFEE8-803AFEF4 -00001 000C+00 0/1 0/0 0/0 .data            @4534 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4534[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procGrabPut__9daAlink_cFv,
};
#pragma pop

/* 803AFEF4-803AFF00 -00001 000C+00 0/1 0/0 0/0 .data            @4535 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4535[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procGrabWait__9daAlink_cFv,
};
#pragma pop

/* 803AFF00-803AFF0C -00001 000C+00 0/1 0/0 0/0 .data            @4536 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4536[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procGrabRebound__9daAlink_cFv,
};
#pragma pop

/* 803AFF0C-803AFF18 -00001 000C+00 0/1 0/0 0/0 .data            @4537 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4537[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procGrabStand__9daAlink_cFv,
};
#pragma pop

/* 803AFF18-803AFF24 -00001 000C+00 0/1 0/0 0/0 .data            @4538 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4538[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procInsectCatch__9daAlink_cFv,
};
#pragma pop

/* 803AFF24-803AFF30 -00001 000C+00 0/1 0/0 0/0 .data            @4539 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4539[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procPickUp__9daAlink_cFv,
};
#pragma pop

/* 803AFF30-803AFF3C -00001 000C+00 0/1 0/0 0/0 .data            @4540 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4540[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procPickPut__9daAlink_cFv,
};
#pragma pop

/* 803AFF3C-803AFF48 -00001 000C+00 0/1 0/0 0/0 .data            @4541 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4541[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procStEscape__9daAlink_cFv,
};
#pragma pop

/* 803AFF48-803AFF54 -00001 000C+00 0/1 0/0 0/0 .data            @4542 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4542[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procDkCaught__9daAlink_cFv,
};
#pragma pop

/* 803AFF54-803AFF60 -00001 000C+00 0/1 0/0 0/0 .data            @4543 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4543[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procSwimUp__9daAlink_cFv,
};
#pragma pop

/* 803AFF60-803AFF6C -00001 000C+00 0/1 0/0 0/0 .data            @4544 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4544[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procSwimWait__9daAlink_cFv,
};
#pragma pop

/* 803AFF6C-803AFF78 -00001 000C+00 0/1 0/0 0/0 .data            @4545 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4545[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procSwimMove__9daAlink_cFv,
};
#pragma pop

/* 803AFF78-803AFF84 -00001 000C+00 0/1 0/0 0/0 .data            @4546 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4546[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procSwimDive__9daAlink_cFv,
};
#pragma pop

/* 803AFF84-803AFF90 -00001 000C+00 0/1 0/0 0/0 .data            @4547 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4547[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procSwimHookshotSubject__9daAlink_cFv,
};
#pragma pop

/* 803AFF90-803AFF9C -00001 000C+00 0/1 0/0 0/0 .data            @4548 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4548[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procSwimHookshotMove__9daAlink_cFv,
};
#pragma pop

/* 803AFF9C-803AFFA8 -00001 000C+00 0/1 0/0 0/0 .data            @4549 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4549[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procSwimDamage__9daAlink_cFv,
};
#pragma pop

/* 803AFFA8-803AFFB4 -00001 000C+00 0/1 0/0 0/0 .data            @4550 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4550[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procClimbUpStart__9daAlink_cFv,
};
#pragma pop

/* 803AFFB4-803AFFC0 -00001 000C+00 0/1 0/0 0/0 .data            @4551 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4551[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procClimbDownStart__9daAlink_cFv,
};
#pragma pop

/* 803AFFC0-803AFFCC -00001 000C+00 0/1 0/0 0/0 .data            @4552 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4552[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procClimbMoveUpDown__9daAlink_cFv,
};
#pragma pop

/* 803AFFCC-803AFFD8 -00001 000C+00 0/1 0/0 0/0 .data            @4553 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4553[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procClimbMoveSide__9daAlink_cFv,
};
#pragma pop

/* 803AFFD8-803AFFE4 -00001 000C+00 0/1 0/0 0/0 .data            @4554 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4554[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procClimbWait__9daAlink_cFv,
};
#pragma pop

/* 803AFFE4-803AFFF0 -00001 000C+00 0/1 0/0 0/0 .data            @4555 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4555[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procClimbToRoof__9daAlink_cFv,
};
#pragma pop

/* 803AFFF0-803AFFFC -00001 000C+00 0/1 0/0 0/0 .data            @4556 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4556[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procRoofHangStart__9daAlink_cFv,
};
#pragma pop

/* 803AFFFC-803B0008 -00001 000C+00 0/1 0/0 0/0 .data            @4557 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4557[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procRoofHangWait__9daAlink_cFv,
};
#pragma pop

/* 803B0008-803B0014 -00001 000C+00 0/1 0/0 0/0 .data            @4558 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4558[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procRoofHangFrontMove__9daAlink_cFv,
};
#pragma pop

/* 803B0014-803B0020 -00001 000C+00 0/1 0/0 0/0 .data            @4559 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4559[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procRoofHangSideMove__9daAlink_cFv,
};
#pragma pop

/* 803B0020-803B002C -00001 000C+00 0/1 0/0 0/0 .data            @4560 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4560[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procRoofHangTurn__9daAlink_cFv,
};
#pragma pop

/* 803B002C-803B0038 -00001 000C+00 0/1 0/0 0/0 .data            @4561 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4561[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procRoofSwitchHang__9daAlink_cFv,
};
#pragma pop

/* 803B0038-803B0044 -00001 000C+00 0/1 0/0 0/0 .data            @4562 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4562[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCanoeRide__9daAlink_cFv,
};
#pragma pop

/* 803B0044-803B0050 -00001 000C+00 0/1 0/0 0/0 .data            @4563 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4563[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCanoeJumpRide__9daAlink_cFv,
};
#pragma pop

/* 803B0050-803B005C -00001 000C+00 0/1 0/0 0/0 .data            @4564 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4564[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCanoeGetOff__9daAlink_cFv,
};
#pragma pop

/* 803B005C-803B0068 -00001 000C+00 0/1 0/0 0/0 .data            @4565 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4565[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCanoeWait__9daAlink_cFv,
};
#pragma pop

/* 803B0068-803B0074 -00001 000C+00 0/1 0/0 0/0 .data            @4566 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4566[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCanoeRow__9daAlink_cFv,
};
#pragma pop

/* 803B0074-803B0080 -00001 000C+00 0/1 0/0 0/0 .data            @4567 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4567[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCanoePaddleShift__9daAlink_cFv,
};
#pragma pop

/* 803B0080-803B008C -00001 000C+00 0/1 0/0 0/0 .data            @4568 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4568[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCanoePaddlePut__9daAlink_cFv,
};
#pragma pop

/* 803B008C-803B0098 -00001 000C+00 0/1 0/0 0/0 .data            @4569 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4569[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCanoePaddleGrab__9daAlink_cFv,
};
#pragma pop

/* 803B0098-803B00A4 -00001 000C+00 0/1 0/0 0/0 .data            @4570 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4570[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCanoeRodGrab__9daAlink_cFv,
};
#pragma pop

/* 803B00A4-803B00B0 -00001 000C+00 0/1 0/0 0/0 .data            @4571 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4571[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCanoeFishingWait__9daAlink_cFv,
};
#pragma pop

/* 803B00B0-803B00BC -00001 000C+00 0/1 0/0 0/0 .data            @4572 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4572[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCanoeFishingReel__9daAlink_cFv,
};
#pragma pop

/* 803B00BC-803B00C8 -00001 000C+00 0/1 0/0 0/0 .data            @4573 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4573[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCanoeFishingGet__9daAlink_cFv,
};
#pragma pop

/* 803B00C8-803B00D4 -00001 000C+00 0/1 0/0 0/0 .data            @4574 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4574[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCanoeSubjectivity__9daAlink_cFv,
};
#pragma pop

/* 803B00D4-803B00E0 -00001 000C+00 0/1 0/0 0/0 .data            @4575 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4575[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCanoeBowSubject__9daAlink_cFv,
};
#pragma pop

/* 803B00E0-803B00EC -00001 000C+00 0/1 0/0 0/0 .data            @4576 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4576[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCanoeBowMove__9daAlink_cFv,
};
#pragma pop

/* 803B00EC-803B00F8 -00001 000C+00 0/1 0/0 0/0 .data            @4577 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4577[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCanoeGrabMove__9daAlink_cFv,
};
#pragma pop

/* 803B00F8-803B0104 -00001 000C+00 0/1 0/0 0/0 .data            @4578 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4578[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCanoeBoomerangSubject__9daAlink_cFv,
};
#pragma pop

/* 803B0104-803B0110 -00001 000C+00 0/1 0/0 0/0 .data            @4579 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4579[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCanoeBoomerangMove__9daAlink_cFv,
};
#pragma pop

/* 803B0110-803B011C -00001 000C+00 0/1 0/0 0/0 .data            @4580 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4580[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCanoeHookshotSubject__9daAlink_cFv,
};
#pragma pop

/* 803B011C-803B0128 -00001 000C+00 0/1 0/0 0/0 .data            @4581 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4581[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCanoeHookshotMove__9daAlink_cFv,
};
#pragma pop

/* 803B0128-803B0134 -00001 000C+00 0/1 0/0 0/0 .data            @4582 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4582[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCanoeBottleDrink__9daAlink_cFv,
};
#pragma pop

/* 803B0134-803B0140 -00001 000C+00 0/1 0/0 0/0 .data            @4583 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4583[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCanoeKandelaarPour__9daAlink_cFv,
};
#pragma pop

/* 803B0140-803B014C -00001 000C+00 0/1 0/0 0/0 .data            @4584 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4584[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procFishingCast__9daAlink_cFv,
};
#pragma pop

/* 803B014C-803B0158 -00001 000C+00 0/1 0/0 0/0 .data            @4585 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4585[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procFishingFood__9daAlink_cFv,
};
#pragma pop

/* 803B0158-803B0164 -00001 000C+00 0/1 0/0 0/0 .data            @4586 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4586[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procSpinnerReady__9daAlink_cFv,
};
#pragma pop

/* 803B0164-803B0170 -00001 000C+00 0/1 0/0 0/0 .data            @4587 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4587[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procSpinnerWait__9daAlink_cFv,
};
#pragma pop

/* 803B0170-803B017C -00001 000C+00 0/1 0/0 0/0 .data            @4588 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4588[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procBoardRide__9daAlink_cFv,
};
#pragma pop

/* 803B017C-803B0188 -00001 000C+00 0/1 0/0 0/0 .data            @4589 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4589[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procBoardWait__9daAlink_cFv,
};
#pragma pop

/* 803B0188-803B0194 -00001 000C+00 0/1 0/0 0/0 .data            @4590 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4590[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procBoardRow__9daAlink_cFv,
};
#pragma pop

/* 803B0194-803B01A0 -00001 000C+00 0/1 0/0 0/0 .data            @4591 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4591[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procBoardTurn__9daAlink_cFv,
};
#pragma pop

/* 803B01A0-803B01AC -00001 000C+00 0/1 0/0 0/0 .data            @4592 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4592[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procBoardJump__9daAlink_cFv,
};
#pragma pop

/* 803B01AC-803B01B8 -00001 000C+00 0/1 0/0 0/0 .data            @4593 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4593[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procBoardSubjectivity__9daAlink_cFv,
};
#pragma pop

/* 803B01B8-803B01C4 -00001 000C+00 0/1 0/0 0/0 .data            @4594 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4594[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procBoardCut__9daAlink_cFv,
};
#pragma pop

/* 803B01C4-803B01D0 -00001 000C+00 0/1 0/0 0/0 .data            @4595 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4595[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procBoardCutTurn__9daAlink_cFv,
};
#pragma pop

/* 803B01D0-803B01DC -00001 000C+00 0/1 0/0 0/0 .data            @4596 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4596[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procFmChainUp__9daAlink_cFv,
};
#pragma pop

/* 803B01DC-803B01E8 -00001 000C+00 0/1 0/0 0/0 .data            @4597 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4597[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procFmChainStrongPull__9daAlink_cFv,
};
#pragma pop

/* 803B01E8-803B01F4 -00001 000C+00 0/1 0/0 0/0 .data            @4598 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4598[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procDoorOpen__9daAlink_cFv,
};
#pragma pop

/* 803B01F4-803B0200 -00001 000C+00 0/1 0/0 0/0 .data            @4599 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4599[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procMonkeyMove__9daAlink_cFv,
};
#pragma pop

/* 803B0200-803B020C -00001 000C+00 0/1 0/0 0/0 .data            @4600 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4600[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procDemoBoomerangCatch__9daAlink_cFv,
};
#pragma pop

/* 803B020C-803B0218 -00001 000C+00 0/1 0/0 0/0 .data            @4601 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4601[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procBottleDrink__9daAlink_cFv,
};
#pragma pop

/* 803B0218-803B0224 -00001 000C+00 0/1 0/0 0/0 .data            @4602 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4602[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procBottleOpen__9daAlink_cFv,
};
#pragma pop

/* 803B0224-803B0230 -00001 000C+00 0/1 0/0 0/0 .data            @4603 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4603[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procBottleSwing__9daAlink_cFv,
};
#pragma pop

/* 803B0230-803B023C -00001 000C+00 0/1 0/0 0/0 .data            @4604 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4604[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procBottleGet__9daAlink_cFv,
};
#pragma pop

/* 803B023C-803B0248 -00001 000C+00 0/1 0/0 0/0 .data            @4605 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4605[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procKandelaarSwing__9daAlink_cFv,
};
#pragma pop

/* 803B0248-803B0254 -00001 000C+00 0/1 0/0 0/0 .data            @4606 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4606[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procKandelaarPour__9daAlink_cFv,
};
#pragma pop

/* 803B0254-803B0260 -00001 000C+00 0/1 0/0 0/0 .data            @4607 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4607[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procGrassWhistleGet__9daAlink_cFv,
};
#pragma pop

/* 803B0260-803B026C -00001 000C+00 0/1 0/0 0/0 .data            @4608 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4608[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procGrassWhistleWait__9daAlink_cFv,
};
#pragma pop

/* 803B026C-803B0278 -00001 000C+00 0/1 0/0 0/0 .data            @4609 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4609[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHawkCatch__9daAlink_cFv,
};
#pragma pop

/* 803B0278-803B0284 -00001 000C+00 0/1 0/0 0/0 .data            @4610 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4610[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHawkSubject__9daAlink_cFv,
};
#pragma pop

/* 803B0284-803B0290 -00001 000C+00 0/1 0/0 0/0 .data            @4611 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4611[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procFloorDownRebound__9daAlink_cFv,
};
#pragma pop

/* 803B0290-803B029C -00001 000C+00 0/1 0/0 0/0 .data            @4612 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4612[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procGoronRideWait__9daAlink_cFv,
};
#pragma pop

/* 803B029C-803B02A8 -00001 000C+00 0/1 0/0 0/0 .data            @4613 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4613[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procGoatMove__9daAlink_cFv,
};
#pragma pop

/* 803B02A8-803B02B4 -00001 000C+00 0/1 0/0 0/0 .data            @4614 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4614[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procGoatCatch__9daAlink_cFv,
};
#pragma pop

/* 803B02B4-803B02C0 -00001 000C+00 0/1 0/0 0/0 .data            @4615 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4615[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procGoatStroke__9daAlink_cFv,
};
#pragma pop

/* 803B02C0-803B02CC -00001 000C+00 0/1 0/0 0/0 .data            @4616 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4616[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procGoronMove__9daAlink_cFv,
};
#pragma pop

/* 803B02CC-803B02D8 -00001 000C+00 0/1 0/0 0/0 .data            @4617 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4617[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procDemoCommon__9daAlink_cFv,
};
#pragma pop

/* 803B02D8-803B02E4 -00001 000C+00 0/1 0/0 0/0 .data            @4618 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4618[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHookshotSubject__9daAlink_cFv,
};
#pragma pop

/* 803B02E4-803B02F0 -00001 000C+00 0/1 0/0 0/0 .data            @4619 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4619[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHookshotMove__9daAlink_cFv,
};
#pragma pop

/* 803B02F0-803B02FC -00001 000C+00 0/1 0/0 0/0 .data            @4620 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4620[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHookshotFly__9daAlink_cFv,
};
#pragma pop

/* 803B02FC-803B0308 -00001 000C+00 0/1 0/0 0/0 .data            @4621 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4621[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHookshotRoofWait__9daAlink_cFv,
};
#pragma pop

/* 803B0308-803B0314 -00001 000C+00 0/1 0/0 0/0 .data            @4622 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4622[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHookshotRoofShoot__9daAlink_cFv,
};
#pragma pop

/* 803B0314-803B0320 -00001 000C+00 0/1 0/0 0/0 .data            @4623 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4623[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHookshotRoofBoots__9daAlink_cFv,
};
#pragma pop

/* 803B0320-803B032C -00001 000C+00 0/1 0/0 0/0 .data            @4624 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4624[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHookshotWallWait__9daAlink_cFv,
};
#pragma pop

/* 803B032C-803B0338 -00001 000C+00 0/1 0/0 0/0 .data            @4625 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4625[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHookshotWallShoot__9daAlink_cFv,
};
#pragma pop

/* 803B0338-803B0344 -00001 000C+00 0/1 0/0 0/0 .data            @4626 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4626[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procMagneBootsFly__9daAlink_cFv,
};
#pragma pop

/* 803B0344-803B0350 -00001 000C+00 0/1 0/0 0/0 .data            @4627 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4627[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procBootsEquip__9daAlink_cFv,
};
#pragma pop

/* 803B0350-803B035C -00001 000C+00 0/1 0/0 0/0 .data            @4628 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4628[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procSumouReady__9daAlink_cFv,
};
#pragma pop

/* 803B035C-803B0368 -00001 000C+00 0/1 0/0 0/0 .data            @4629 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4629[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procSumouMove__9daAlink_cFv,
};
#pragma pop

/* 803B0368-803B0374 -00001 000C+00 0/1 0/0 0/0 .data            @4630 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4630[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procSumouSideMove__9daAlink_cFv,
};
#pragma pop

/* 803B0374-803B0380 -00001 000C+00 0/1 0/0 0/0 .data            @4631 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4631[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procSumouAction__9daAlink_cFv,
};
#pragma pop

/* 803B0380-803B038C -00001 000C+00 0/1 0/0 0/0 .data            @4632 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4632[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procSumouStagger__9daAlink_cFv,
};
#pragma pop

/* 803B038C-803B0398 -00001 000C+00 0/1 0/0 0/0 .data            @4633 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4633[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procSumouWinLose__9daAlink_cFv,
};
#pragma pop

/* 803B0398-803B03A4 -00001 000C+00 0/1 0/0 0/0 .data            @4634 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4634[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procSumouShiko__9daAlink_cFv,
};
#pragma pop

/* 803B03A4-803B03B0 -00001 000C+00 0/1 0/0 0/0 .data            @4635 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4635[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procLookUp__9daAlink_cFv,
};
#pragma pop

/* 803B03B0-803B03BC -00001 000C+00 0/1 0/0 0/0 .data            @4636 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4636[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procLookUpToGetItem__9daAlink_cFv,
};
#pragma pop

/* 803B03BC-803B03C8 -00001 000C+00 0/1 0/0 0/0 .data            @4637 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4637[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHandPat__9daAlink_cFv,
};
#pragma pop

/* 803B03C8-803B03D4 -00001 000C+00 0/1 0/0 0/0 .data            @4638 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4638[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procIronBallSubject__9daAlink_cFv,
};
#pragma pop

/* 803B03D4-803B03E0 -00001 000C+00 0/1 0/0 0/0 .data            @4639 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4639[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procIronBallMove__9daAlink_cFv,
};
#pragma pop

/* 803B03E0-803B03EC -00001 000C+00 0/1 0/0 0/0 .data            @4640 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4640[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procIronBallThrow__9daAlink_cFv,
};
#pragma pop

/* 803B03EC-803B03F8 -00001 000C+00 0/1 0/0 0/0 .data            @4641 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4641[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procIronBallReturn__9daAlink_cFv,
};
#pragma pop

/* 803B03F8-803B0404 -00001 000C+00 0/1 0/0 0/0 .data            @4642 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4642[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procBossBodyHang__9daAlink_cFv,
};
#pragma pop

/* 803B0404-803B0410 -00001 000C+00 0/1 0/0 0/0 .data            @4643 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4643[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procOctaIealSpit__9daAlink_cFv,
};
#pragma pop

/* 803B0410-803B041C -00001 000C+00 0/1 0/0 0/0 .data            @4644 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4644[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procScreamWait__9daAlink_cFv,
};
#pragma pop

/* 803B041C-803B0428 -00001 000C+00 0/1 0/0 0/0 .data            @4645 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4645[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procGoatStopReady__9daAlink_cFv,
};
#pragma pop

/* 803B0428-803B0434 -00001 000C+00 0/1 0/0 0/0 .data            @4646 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4646[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procZoraMove__9daAlink_cFv,
};
#pragma pop

/* 803B0434-803B0440 -00001 000C+00 0/1 0/0 0/0 .data            @4647 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4647[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procLookAroundTurn__9daAlink_cFv,
};
#pragma pop

/* 803B0440-803B044C -00001 000C+00 0/1 0/0 0/0 .data            @4648 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4648[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procTradeItemOut__9daAlink_cFv,
};
#pragma pop

/* 803B044C-803B0458 -00001 000C+00 0/1 0/0 0/0 .data            @4649 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4649[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procNotUseItem__9daAlink_cFv,
};
#pragma pop

/* 803B0458-803B0464 -00001 000C+00 0/1 0/0 0/0 .data            @4650 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4650[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procSwordReady__9daAlink_cFv,
};
#pragma pop

/* 803B0464-803B0470 -00001 000C+00 0/1 0/0 0/0 .data            @4651 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4651[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procSwordPush__9daAlink_cFv,
};
#pragma pop

/* 803B0470-803B047C -00001 000C+00 0/1 0/0 0/0 .data            @4652 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4652[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procGanonFinish__9daAlink_cFv,
};
#pragma pop

/* 803B047C-803B0488 -00001 000C+00 0/1 0/0 0/0 .data            @4653 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4653[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCutFastReady__9daAlink_cFv,
};
#pragma pop

/* 803B0488-803B0494 -00001 000C+00 0/1 0/0 0/0 .data            @4654 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4654[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procMasterSwordStick__9daAlink_cFv,
};
#pragma pop

/* 803B0494-803B04A0 -00001 000C+00 0/1 0/0 0/0 .data            @4655 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4655[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procMasterSwordPull__9daAlink_cFv,
};
#pragma pop

/* 803B04A0-803B04AC -00001 000C+00 0/1 0/0 0/0 .data            @4656 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4656[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procDungeonWarpReady__9daAlink_cFv,
};
#pragma pop

/* 803B04AC-803B04B8 -00001 000C+00 0/1 0/0 0/0 .data            @4657 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4657[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procDungeonWarp__9daAlink_cFv,
};
#pragma pop

/* 803B04B8-803B04C4 -00001 000C+00 0/1 0/0 0/0 .data            @4658 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4658[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procDungeonWarpSceneStart__9daAlink_cFv,
};
#pragma pop

/* 803B04C4-803B04D0 -00001 000C+00 0/1 0/0 0/0 .data            @4659 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4659[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfHowlDemo__9daAlink_cFv,
};
#pragma pop

/* 803B04D0-803B04DC -00001 000C+00 0/1 0/0 0/0 .data            @4660 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4660[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfServiceWait__9daAlink_cFv,
};
#pragma pop

/* 803B04DC-803B04E8 -00001 000C+00 0/1 0/0 0/0 .data            @4661 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4661[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfTiredWait__9daAlink_cFv,
};
#pragma pop

/* 803B04E8-803B04F4 -00001 000C+00 0/1 0/0 0/0 .data            @4662 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4662[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfMidnaRideShock__9daAlink_cFv,
};
#pragma pop

/* 803B04F4-803B0500 -00001 000C+00 0/1 0/0 0/0 .data            @4663 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4663[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfWait__9daAlink_cFv,
};
#pragma pop

/* 803B0500-803B050C -00001 000C+00 0/1 0/0 0/0 .data            @4664 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4664[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfMove__9daAlink_cFv,
};
#pragma pop

/* 803B050C-803B0518 -00001 000C+00 0/1 0/0 0/0 .data            @4665 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4665[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfDash__9daAlink_cFv,
};
#pragma pop

/* 803B0518-803B0524 -00001 000C+00 0/1 0/0 0/0 .data            @4666 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4666[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfDashReverse__9daAlink_cFv,
};
#pragma pop

/* 803B0524-803B0530 -00001 000C+00 0/1 0/0 0/0 .data            @4667 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4667[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfWaitTurn__9daAlink_cFv,
};
#pragma pop

/* 803B0530-803B053C -00001 000C+00 0/1 0/0 0/0 .data            @4668 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4668[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfAtnActorMove__9daAlink_cFv,
};
#pragma pop

/* 803B053C-803B0548 -00001 000C+00 0/1 0/0 0/0 .data            @4669 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4669[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfSideStep__9daAlink_cFv,
};
#pragma pop

/* 803B0548-803B0554 -00001 000C+00 0/1 0/0 0/0 .data            @4670 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4670[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfSideStepLand__9daAlink_cFv,
};
#pragma pop

/* 803B0554-803B0560 -00001 000C+00 0/1 0/0 0/0 .data            @4671 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4671[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfBackJump__9daAlink_cFv,
};
#pragma pop

/* 803B0560-803B056C -00001 000C+00 0/1 0/0 0/0 .data            @4672 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4672[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfBackJumpLand__9daAlink_cFv,
};
#pragma pop

/* 803B056C-803B0578 -00001 000C+00 0/1 0/0 0/0 .data            @4673 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4673[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfHowl__9daAlink_cFv,
};
#pragma pop

/* 803B0578-803B0584 -00001 000C+00 0/1 0/0 0/0 .data            @4674 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4674[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfAutoJump__9daAlink_cFv,
};
#pragma pop

/* 803B0584-803B0590 -00001 000C+00 0/1 0/0 0/0 .data            @4675 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4675[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfFall__9daAlink_cFv,
};
#pragma pop

/* 803B0590-803B059C -00001 000C+00 0/1 0/0 0/0 .data            @4676 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4676[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfLand__9daAlink_cFv,
};
#pragma pop

/* 803B059C-803B05A8 -00001 000C+00 0/1 0/0 0/0 .data            @4677 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4677[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfSit__9daAlink_cFv,
};
#pragma pop

/* 803B05A8-803B05B4 -00001 000C+00 0/1 0/0 0/0 .data            @4678 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4678[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfLieStart__9daAlink_cFv,
};
#pragma pop

/* 803B05B4-803B05C0 -00001 000C+00 0/1 0/0 0/0 .data            @4679 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4679[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfLieMove__9daAlink_cFv,
};
#pragma pop

/* 803B05C0-803B05CC -00001 000C+00 0/1 0/0 0/0 .data            @4680 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4680[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfLieAutoMove__9daAlink_cFv,
};
#pragma pop

/* 803B05CC-803B05D8 -00001 000C+00 0/1 0/0 0/0 .data            @4681 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4681[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfHangReady__9daAlink_cFv,
};
#pragma pop

/* 803B05D8-803B05E4 -00001 000C+00 0/1 0/0 0/0 .data            @4682 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4682[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfStepMove__9daAlink_cFv,
};
#pragma pop

/* 803B05E4-803B05F0 -00001 000C+00 0/1 0/0 0/0 .data            @4683 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4683[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfHangWallCatch__9daAlink_cFv,
};
#pragma pop

/* 803B05F0-803B05FC -00001 000C+00 0/1 0/0 0/0 .data            @4684 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4684[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfHangFallStart__9daAlink_cFv,
};
#pragma pop

/* 803B05FC-803B0608 -00001 000C+00 0/1 0/0 0/0 .data            @4685 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4685[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfDamage__9daAlink_cFv,
};
#pragma pop

/* 803B0608-803B0614 -00001 000C+00 0/1 0/0 0/0 .data            @4686 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4686[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfLargeDamageUp__9daAlink_cFv,
};
#pragma pop

/* 803B0614-803B0620 -00001 000C+00 0/1 0/0 0/0 .data            @4687 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4687[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfLandDamage__9daAlink_cFv,
};
#pragma pop

/* 803B0620-803B062C -00001 000C+00 0/1 0/0 0/0 .data            @4688 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4688[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfScreamWait__9daAlink_cFv,
};
#pragma pop

/* 803B062C-803B0638 -00001 000C+00 0/1 0/0 0/0 .data            @4689 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4689[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfSlip__9daAlink_cFv,
};
#pragma pop

/* 803B0638-803B0644 -00001 000C+00 0/1 0/0 0/0 .data            @4690 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4690[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfSlipTurn__9daAlink_cFv,
};
#pragma pop

/* 803B0644-803B0650 -00001 000C+00 0/1 0/0 0/0 .data            @4691 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4691[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfSlipTurnLand__9daAlink_cFv,
};
#pragma pop

/* 803B0650-803B065C -00001 000C+00 0/1 0/0 0/0 .data            @4692 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4692[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfSlideReady__9daAlink_cFv,
};
#pragma pop

/* 803B065C-803B0668 -00001 000C+00 0/1 0/0 0/0 .data            @4693 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4693[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfSlide__9daAlink_cFv,
};
#pragma pop

/* 803B0668-803B0674 -00001 000C+00 0/1 0/0 0/0 .data            @4694 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4694[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfSlideLand__9daAlink_cFv,
};
#pragma pop

/* 803B0674-803B0680 -00001 000C+00 0/1 0/0 0/0 .data            @4695 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4695[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfWaitSlip__9daAlink_cFv,
};
#pragma pop

/* 803B0680-803B068C -00001 000C+00 0/1 0/0 0/0 .data            @4696 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4696[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfSlopeStart__9daAlink_cFv,
};
#pragma pop

/* 803B068C-803B0698 -00001 000C+00 0/1 0/0 0/0 .data            @4697 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4697[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfRopeMove__9daAlink_cFv,
};
#pragma pop

/* 803B0698-803B06A4 -00001 000C+00 0/1 0/0 0/0 .data            @4698 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4698[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfRopeHang__9daAlink_cFv,
};
#pragma pop

/* 803B06A4-803B06B0 -00001 000C+00 0/1 0/0 0/0 .data            @4699 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4699[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfRopeTurn__9daAlink_cFv,
};
#pragma pop

/* 803B06B0-803B06BC -00001 000C+00 0/1 0/0 0/0 .data            @4700 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4700[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfRopeStagger__9daAlink_cFv,
};
#pragma pop

/* 803B06BC-803B06C8 -00001 000C+00 0/1 0/0 0/0 .data            @4701 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4701[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfRopeSubjectivity__9daAlink_cFv,
};
#pragma pop

/* 803B06C8-803B06D4 -00001 000C+00 0/1 0/0 0/0 .data            @4702 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4702[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfTagJump__9daAlink_cFv,
};
#pragma pop

/* 803B06D4-803B06E0 -00001 000C+00 0/1 0/0 0/0 .data            @4703 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4703[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfTagJumpLand__9daAlink_cFv,
};
#pragma pop

/* 803B06E0-803B06EC -00001 000C+00 0/1 0/0 0/0 .data            @4704 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4704[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfRollAttackCharge__9daAlink_cFv,
};
#pragma pop

/* 803B06EC-803B06F8 -00001 000C+00 0/1 0/0 0/0 .data            @4705 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4705[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfRollAttackMove__9daAlink_cFv,
};
#pragma pop

/* 803B06F8-803B0704 -00001 000C+00 0/1 0/0 0/0 .data            @4706 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4706[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfJumpAttack__9daAlink_cFv,
};
#pragma pop

/* 803B0704-803B0710 -00001 000C+00 0/1 0/0 0/0 .data            @4707 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4707[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfJumpAttackKick__9daAlink_cFv,
};
#pragma pop

/* 803B0710-803B071C -00001 000C+00 0/1 0/0 0/0 .data            @4708 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4708[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfJumpAttackSlideLand__9daAlink_cFv,
};
#pragma pop

/* 803B071C-803B0728 -00001 000C+00 0/1 0/0 0/0 .data            @4709 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4709[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfJumpAttackNormalLand__9daAlink_cFv,
};
#pragma pop

/* 803B0728-803B0734 -00001 000C+00 0/1 0/0 0/0 .data            @4710 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4710[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfWaitAttack__9daAlink_cFv,
};
#pragma pop

/* 803B0734-803B0740 -00001 000C+00 0/1 0/0 0/0 .data            @4711 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4711[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfRollAttack__9daAlink_cFv,
};
#pragma pop

/* 803B0740-803B074C -00001 000C+00 0/1 0/0 0/0 .data            @4712 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4712[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfDownAttack__9daAlink_cFv,
};
#pragma pop

/* 803B074C-803B0758 -00001 000C+00 0/1 0/0 0/0 .data            @4713 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4713[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfDownAtLand__9daAlink_cFv,
};
#pragma pop

/* 803B0758-803B0764 -00001 000C+00 0/1 0/0 0/0 .data            @4714 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4714[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfDownAtMissLand__9daAlink_cFv,
};
#pragma pop

/* 803B0764-803B0770 -00001 000C+00 0/1 0/0 0/0 .data            @4715 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4715[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfLockAttack__9daAlink_cFv,
};
#pragma pop

/* 803B0770-803B077C -00001 000C+00 0/1 0/0 0/0 .data            @4716 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4716[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfLockAttackTurn__9daAlink_cFv,
};
#pragma pop

/* 803B077C-803B0788 -00001 000C+00 0/1 0/0 0/0 .data            @4717 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4717[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfSwimUp__9daAlink_cFv,
};
#pragma pop

/* 803B0788-803B0794 -00001 000C+00 0/1 0/0 0/0 .data            @4718 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4718[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfSwimWait__9daAlink_cFv,
};
#pragma pop

/* 803B0794-803B07A0 -00001 000C+00 0/1 0/0 0/0 .data            @4719 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4719[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfSwimMove__9daAlink_cFv,
};
#pragma pop

/* 803B07A0-803B07AC -00001 000C+00 0/1 0/0 0/0 .data            @4720 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4720[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfSwimEndWait__9daAlink_cFv,
};
#pragma pop

/* 803B07AC-803B07B8 -00001 000C+00 0/1 0/0 0/0 .data            @4721 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4721[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfGrabUp__9daAlink_cFv,
};
#pragma pop

/* 803B07B8-803B07C4 -00001 000C+00 0/1 0/0 0/0 .data            @4722 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4722[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfGrabPut__9daAlink_cFv,
};
#pragma pop

/* 803B07C4-803B07D0 -00001 000C+00 0/1 0/0 0/0 .data            @4723 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4723[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfGrabThrow__9daAlink_cFv,
};
#pragma pop

/* 803B07D0-803B07DC -00001 000C+00 0/1 0/0 0/0 .data            @4724 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4724[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfChainUp__9daAlink_cFv,
};
#pragma pop

/* 803B07DC-803B07E8 -00001 000C+00 0/1 0/0 0/0 .data            @4725 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4725[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfPush__9daAlink_cFv,
};
#pragma pop

/* 803B07E8-803B07F4 -00001 000C+00 0/1 0/0 0/0 .data            @4726 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4726[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfChainReady__9daAlink_cFv,
};
#pragma pop

/* 803B07F4-803B0800 -00001 000C+00 0/1 0/0 0/0 .data            @4727 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4727[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfChainWait__9daAlink_cFv,
};
#pragma pop

/* 803B0800-803B080C -00001 000C+00 0/1 0/0 0/0 .data            @4728 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4728[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfDig__9daAlink_cFv,
};
#pragma pop

/* 803B080C-803B0818 -00001 000C+00 0/1 0/0 0/0 .data            @4729 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4729[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfDigThrough__9daAlink_cFv,
};
#pragma pop

/* 803B0818-803B0824 -00001 000C+00 0/1 0/0 0/0 .data            @4730 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4730[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfAttackReverse__9daAlink_cFv,
};
#pragma pop

/* 803B0824-803B0830 -00001 000C+00 0/1 0/0 0/0 .data            @4731 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4731[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfEnemyThrow__9daAlink_cFv,
};
#pragma pop

/* 803B0830-803B083C -00001 000C+00 0/1 0/0 0/0 .data            @4732 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4732[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfEnemyHangBite__9daAlink_cFv,
};
#pragma pop

/* 803B083C-803B0848 -00001 000C+00 0/1 0/0 0/0 .data            @4733 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4733[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfGiantPuzzle__9daAlink_cFv,
};
#pragma pop

/* 803B0848-803B0854 -00001 000C+00 0/1 0/0 0/0 .data            @4734 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4734[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfCargoCarry__9daAlink_cFv,
};
#pragma pop

/* 803B0854-803B0860 -00001 000C+00 0/1 0/0 0/0 .data            @4735 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4735[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfGetSmell__9daAlink_cFv,
};
#pragma pop

/* 803B0860-803B086C -00001 000C+00 0/1 0/0 0/0 .data            @4736 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4736[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procDemoCommon__9daAlink_cFv,
};
#pragma pop

/* 803B086C-803B0878 -00001 000C+00 0/1 0/0 0/0 .data            @4737 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4737[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfSnowEscape__9daAlink_cFv,
};
#pragma pop

/* 803B0878-803B0884 -00001 000C+00 0/1 0/0 0/0 .data            @4738 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4738[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfGanonCatch__9daAlink_cFv,
};
#pragma pop

/* 803B0884-803B0890 -00001 000C+00 0/1 0/0 0/0 .data            @4739 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4739[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoToolDemo__9daAlink_cFv,
};
#pragma pop

/* 803B0890-803B089C -00001 000C+00 0/1 0/0 0/0 .data            @4740 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4740[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoSubjectivity__9daAlink_cFv,
};
#pragma pop

/* 803B089C-803B08A8 -00001 000C+00 0/1 0/0 0/0 .data            @4741 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4741[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoSwimSubjectivity__9daAlink_cFv,
};
#pragma pop

/* 803B08A8-803B08B4 -00001 000C+00 0/1 0/0 0/0 .data            @4742 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4742[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoPeepSubjectivity__9daAlink_cFv,
};
#pragma pop

/* 803B08B4-803B08C0 -00001 000C+00 0/1 0/0 0/0 .data            @4743 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4743[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoPolyDamage__9daAlink_cFv,
};
#pragma pop

/* 803B08C0-803B08CC -00001 000C+00 0/1 0/0 0/0 .data            @4744 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4744[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoElecDamage__9daAlink_cFv,
};
#pragma pop

/* 803B08CC-803B08D8 -00001 000C+00 0/1 0/0 0/0 .data            @4745 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4745[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoPushPullWait__9daAlink_cFv,
};
#pragma pop

/* 803B08D8-803B08E4 -00001 000C+00 0/1 0/0 0/0 .data            @4746 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4746[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoPushMove__9daAlink_cFv,
};
#pragma pop

/* 803B08E4-803B08F0 -00001 000C+00 0/1 0/0 0/0 .data            @4747 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4747[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoTalk__9daAlink_cFv,
};
#pragma pop

/* 803B08F0-803B08FC -00001 000C+00 0/1 0/0 0/0 .data            @4748 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4748[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoOpenTreasure__9daAlink_cFv,
};
#pragma pop

/* 803B08FC-803B0908 -00001 000C+00 0/1 0/0 0/0 .data            @4749 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4749[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoUnequip__9daAlink_cFv,
};
#pragma pop

/* 803B0908-803B0914 -00001 000C+00 0/1 0/0 0/0 .data            @4750 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4750[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoGetItem__9daAlink_cFv,
};
#pragma pop

/* 803B0914-803B0920 -00001 000C+00 0/1 0/0 0/0 .data            @4751 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4751[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoTurnBack__9daAlink_cFv,
};
#pragma pop

/* 803B0920-803B092C -00001 000C+00 0/1 0/0 0/0 .data            @4752 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4752[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoLookWait__9daAlink_cFv,
};
#pragma pop

/* 803B092C-803B0938 -00001 000C+00 0/1 0/0 0/0 .data            @4753 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4753[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procDemoCommon__9daAlink_cFv,
};
#pragma pop

/* 803B0938-803B0944 -00001 000C+00 0/1 0/0 0/0 .data            @4754 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4754[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procDemoCommon__9daAlink_cFv,
};
#pragma pop

/* 803B0944-803B0950 -00001 000C+00 0/1 0/0 0/0 .data            @4755 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4755[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoMetamorphose__9daAlink_cFv,
};
#pragma pop

/* 803B0950-803B095C -00001 000C+00 0/1 0/0 0/0 .data            @4756 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4756[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoMetamorphoseOnly__9daAlink_cFv,
};
#pragma pop

/* 803B095C-803B0968 -00001 000C+00 0/1 0/0 0/0 .data            @4757 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4757[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoWarp__9daAlink_cFv,
};
#pragma pop

/* 803B0968-803B0974 -00001 000C+00 0/1 0/0 0/0 .data            @4758 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4758[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoDead__9daAlink_cFv,
};
#pragma pop

/* 803B0974-803B0980 -00001 000C+00 0/1 0/0 0/0 .data            @4759 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4759[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoFogDead__9daAlink_cFv,
};
#pragma pop

/* 803B0980-803B098C -00001 000C+00 0/1 0/0 0/0 .data            @4760 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4760[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoLookAround__9daAlink_cFv,
};
#pragma pop

/* 803B098C-803B0998 -00001 000C+00 0/1 0/0 0/0 .data            @4761 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4761[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procDemoCommon__9daAlink_cFv,
};
#pragma pop

/* 803B0998-803B09A4 -00001 000C+00 0/1 0/0 0/0 .data            @4762 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4762[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoSandWallHit__9daAlink_cFv,
};
#pragma pop

/* 803B09A4-803B09B0 -00001 000C+00 0/1 0/0 0/0 .data            @4763 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4763[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoLavaReturn__9daAlink_cFv,
};
#pragma pop

/* 803B09B0-803B09BC -00001 000C+00 0/1 0/0 0/0 .data            @4764 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4764[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoSwimFreezeReturn__9daAlink_cFv,
};
#pragma pop

/* 803B09BC-803B09C8 -00001 000C+00 0/1 0/0 0/0 .data            @4765 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4765[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoGetReadySit__9daAlink_cFv,
};
#pragma pop

/* 803B09C8-803B09D4 -00001 000C+00 0/1 0/0 0/0 .data            @4766 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4766[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoTwGate__9daAlink_cFv,
};
#pragma pop

/* 803B09D4-803B09E0 -00001 000C+00 0/1 0/0 0/0 .data            @4767 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4767[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoLargeDamage__9daAlink_cFv,
};
#pragma pop

/* 803B09E0-803B09EC -00001 000C+00 0/1 0/0 0/0 .data            @4768 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4768[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoLargeDamageWall__9daAlink_cFv,
};
#pragma pop

/* 803B09EC-803B09F8 -00001 000C+00 0/1 0/0 0/0 .data            @4769 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4769[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoNod__9daAlink_cFv,
};
#pragma pop

/* 803B09F8-803B0A04 -00001 000C+00 0/1 0/0 0/0 .data            @4770 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4770[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procDemoCommon__9daAlink_cFv,
};
#pragma pop

/* 803B0A04-803B0A10 -00001 000C+00 0/1 0/0 0/0 .data            @4771 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4771[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoGlare__9daAlink_cFv,
};
#pragma pop

/* 803B0A10-803B0A1C -00001 000C+00 0/1 0/0 0/0 .data            @4772 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4772[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoHorseCallWait__9daAlink_cFv,
};
#pragma pop

/* 803B0A1C-803B0A28 -00001 000C+00 0/1 0/0 0/0 .data            @4773 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4773[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procDemoCommon__9daAlink_cFv,
};
#pragma pop

/* 803B0A28-803B2028 00DB48 1600+00 1/2 0/0 0/0 .data            m_procInitTable__9daAlink_c */
SECTION_DATA u8 daAlink_c::m_procInitTable[5632] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x21,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x85,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x11, 0x85,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x11, 0x85,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x11, 0x84,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x11, 0x84,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x11, 0x85,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x11, 0x84,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x10, 0x85,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x10, 0x84,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x11, 0x86,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x11, 0x85,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x82, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x10, 0x86,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11, 0x85,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x05,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x11, 0x84,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x03, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x03, 0x20,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x02, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x02, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x22,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x20, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x22,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x80, 0x08,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0xA0, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0xE0, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F, 0x00, 0xA0, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0xA0, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x20, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x24, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x24, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x35, 0x85,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x25, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x25, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x25, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x00, 0x34, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x25, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x25, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x25, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x24, 0x08,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x00, 0x34, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x00, 0x34, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x34, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x00, 0x34, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x00, 0x34, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x00, 0x34, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x00, 0x34, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x24, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x24, 0x09,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x24, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x24, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x24, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x24, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x24, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x24, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x41,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x41,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x41,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x41,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x40,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x40,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x40,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x21,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x10, 0x05,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x10, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0x10, 0x05,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0x10, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0x10, 0x05,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0x10, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x02, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11, 0x05,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x21,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x01, 0x05,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x01, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x04, 0x10, 0x05,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x04, 0x10, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x08,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x30,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x24, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x24, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x24, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x35, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x25, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x25, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x24, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x24, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x24, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x44, 0x00, 0x24, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x44, 0x00, 0x25, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x24, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x64, 0x00, 0x24, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x64, 0x00, 0x34, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x64, 0x00, 0x34, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x10, 0x34, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x64, 0x00, 0x34, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x64, 0x00, 0x34, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x64, 0x00, 0x34, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x64, 0x00, 0x34, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x24, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x24, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x21, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x25, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x22,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x15, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x15, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x15, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x00, 0x04, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x01, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x21,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x21,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x21,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x11, 0x85,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x21, 0x21,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0xA0, 0x21,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x21, 0x21,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x10, 0x05,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x10, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x68, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x69, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x69, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x68, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x69, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11, 0x03,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x10, 0x05,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x10, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x29,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x20, 0x08,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE0, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x01, 0x21,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x21,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE0, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x21,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x03,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x03,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0x21,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x01, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x20, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x11, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x50, 0x40,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x50, 0x41,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x12, 0x00, 0x80, 0x08,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x10, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x10, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x10, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x80, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x31, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x02, 0x30, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x02, 0x30, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x02, 0x30, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x30, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x22,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x20,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x22,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x20, 0x21,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x01, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x01, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x02, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x20,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE0, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE0, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0xE0, 0x22,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE0, 0x21,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x20, 0x21,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x10, 0x05,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x04, 0x10, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x20, 0x0B,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x20, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x20, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x01, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE0, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0xE0, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x09,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x09,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE0, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x20, 0x09,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x20, 0x09,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE0, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};

/* 803B2028-803B2034 -00001 000C+00 0/1 0/0 0/0 .data            @4774 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4774[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)commonWaitTurnInit__9daAlink_cFv,
};
#pragma pop

/* 803B2034-803B2040 -00001 000C+00 0/1 0/0 0/0 .data            @4775 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4775[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoOpenTreasureInit__9daAlink_cFv,
};
#pragma pop

/* 803B2040-803B204C -00001 000C+00 0/1 0/0 0/0 .data            @4776 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4776[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoGetItemInit__9daAlink_cFv,
};
#pragma pop

/* 803B204C-803B2058 -00001 000C+00 0/1 0/0 0/0 .data            @4777 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4777[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoUnequipInit__9daAlink_cFv,
};
#pragma pop

/* 803B2058-803B2064 -00001 000C+00 0/1 0/0 0/0 .data            @4778 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4778[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)commonGrabPutInit__9daAlink_cFv,
};
#pragma pop

/* 803B2064-803B2070 -00001 000C+00 0/1 0/0 0/0 .data            @4779 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4779[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procMonkeyMoveInit__9daAlink_cFv,
};
#pragma pop

/* 803B2070-803B207C -00001 000C+00 0/1 0/0 0/0 .data            @4780 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4780[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoLookAroundInit__9daAlink_cFv,
};
#pragma pop

/* 803B207C-803B2088 -00001 000C+00 0/1 0/0 0/0 .data            @4781 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4781[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoTurnBackInit__9daAlink_cFv,
};
#pragma pop

/* 803B2088-803B2094 -00001 000C+00 0/1 0/0 0/0 .data            @4782 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4782[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procDemoBoomerangCatchInit__9daAlink_cFv,
};
#pragma pop

/* 803B2094-803B20A0 -00001 000C+00 0/1 0/0 0/0 .data            @4783 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4783[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHawkCatchInit__9daAlink_cFv,
};
#pragma pop

/* 803B20A0-803B20AC -00001 000C+00 0/1 0/0 0/0 .data            @4784 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4784[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procSwordUnequipSpInit__9daAlink_cFv,
};
#pragma pop

/* 803B20AC-803B20B8 -00001 000C+00 0/1 0/0 0/0 .data            @4785 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4785[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoDemoPushPullWaitInit__9daAlink_cFv,
};
#pragma pop

/* 803B20B8-803B20C4 -00001 000C+00 0/1 0/0 0/0 .data            @4786 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4786[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoDemoPushMoveInit__9daAlink_cFv,
};
#pragma pop

/* 803B20C4-803B20D0 -00001 000C+00 0/1 0/0 0/0 .data            @4787 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4787[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procBossAtnWaitInit__9daAlink_cFv,
};
#pragma pop

/* 803B20D0-803B20DC -00001 000C+00 0/1 0/0 0/0 .data            @4788 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4788[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procDoorOpenInit__9daAlink_cFv,
};
#pragma pop

/* 803B20DC-803B20E8 -00001 000C+00 0/1 0/0 0/0 .data            @4789 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4789[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procTradeItemOutInit__9daAlink_cFv,
};
#pragma pop

/* 803B20E8-803B20F4 -00001 000C+00 0/1 0/0 0/0 .data            @4790 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4790[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procKandelaarSwingInit__9daAlink_cFv,
};
#pragma pop

/* 803B20F4-803B2100 -00001 000C+00 0/1 0/0 0/0 .data            @4791 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4791[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procFrontRollInit__9daAlink_cFv,
};
#pragma pop

/* 803B2100-803B210C -00001 000C+00 0/1 0/0 0/0 .data            @4792 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4792[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCrouchInit__9daAlink_cFv,
};
#pragma pop

/* 803B210C-803B2118 -00001 000C+00 0/1 0/0 0/0 .data            @4793 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4793[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoCaughtInit__9daAlink_cFv,
};
#pragma pop

/* 803B2118-803B2124 -00001 000C+00 0/1 0/0 0/0 .data            @4794 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4794[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procLookUpInit__9daAlink_cFv,
};
#pragma pop

/* 803B2124-803B2130 -00001 000C+00 0/1 0/0 0/0 .data            @4795 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4795[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procLookUpToGetItemInit__9daAlink_cFv,
};
#pragma pop

/* 803B2130-803B213C -00001 000C+00 0/1 0/0 0/0 .data            @4796 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4796[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHandPatInit__9daAlink_cFv,
};
#pragma pop

/* 803B213C-803B2148 -00001 000C+00 0/1 0/0 0/0 .data            @4797 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4797[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfMidnaRideShockInit__9daAlink_cFv,
};
#pragma pop

/* 803B2148-803B2154 -00001 000C+00 0/1 0/0 0/0 .data            @4798 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4798[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procSumouShikoInit__9daAlink_cFv,
};
#pragma pop

/* 803B2154-803B2160 -00001 000C+00 0/1 0/0 0/0 .data            @4799 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4799[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoFogDeadInit__9daAlink_cFv,
};
#pragma pop

/* 803B2160-803B216C -00001 000C+00 0/1 0/0 0/0 .data            @4800 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4800[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfSmellWaitInit__9daAlink_cFv,
};
#pragma pop

/* 803B216C-803B2178 -00001 000C+00 0/1 0/0 0/0 .data            @4801 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4801[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfCargoCarryInit__9daAlink_cFv,
};
#pragma pop

/* 803B2178-803B2184 -00001 000C+00 0/1 0/0 0/0 .data            @4802 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4802[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoMetamorphoseInit__9daAlink_cFv,
};
#pragma pop

/* 803B2184-803B2190 -00001 000C+00 0/1 0/0 0/0 .data            @4803 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4803[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoMetamorphoseInit__9daAlink_cFv,
};
#pragma pop

/* 803B2190-803B219C -00001 000C+00 0/1 0/0 0/0 .data            @4804 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4804[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHorseGetKeyInit__9daAlink_cFv,
};
#pragma pop

/* 803B219C-803B21A8 -00001 000C+00 0/1 0/0 0/0 .data            @4805 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4805[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoNodInit__9daAlink_cFv,
};
#pragma pop

/* 803B21A8-803B21B4 -00001 000C+00 0/1 0/0 0/0 .data            @4806 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4806[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoGlareInit__9daAlink_cFv,
};
#pragma pop

/* 803B21B4-803B21C0 -00001 000C+00 0/1 0/0 0/0 .data            @4807 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4807[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoEyeAwayInit__9daAlink_cFv,
};
#pragma pop

/* 803B21C0-803B21CC -00001 000C+00 0/1 0/0 0/0 .data            @4808 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4808[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procGoatStopReadyInit__9daAlink_cFv,
};
#pragma pop

/* 803B21CC-803B21D8 -00001 000C+00 0/1 0/0 0/0 .data            @4809 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4809[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoGetReadySitInit__9daAlink_cFv,
};
#pragma pop

/* 803B21D8-803B21E4 -00001 000C+00 0/1 0/0 0/0 .data            @4810 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4810[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoTwGateInit__9daAlink_cFv,
};
#pragma pop

/* 803B21E4-803B21F0 -00001 000C+00 0/1 0/0 0/0 .data            @4811 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4811[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procFmChainStrongPullInit__9daAlink_cFv,
};
#pragma pop

/* 803B21F0-803B21FC -00001 000C+00 0/1 0/0 0/0 .data            @4812 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4812[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procWolfSnowEscapeInit__9daAlink_cFv,
};
#pragma pop

/* 803B21FC-803B2208 -00001 000C+00 0/1 0/0 0/0 .data            @4813 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4813[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procZoraMoveInit__9daAlink_cFv,
};
#pragma pop

/* 803B2208-803B2214 -00001 000C+00 0/1 0/0 0/0 .data            @4814 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4814[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoMetamorphoseOnlyInit__9daAlink_cFv,
};
#pragma pop

/* 803B2214-803B2220 -00001 000C+00 0/1 0/0 0/0 .data            @4815 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4815[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoMetamorphoseOnlyInit__9daAlink_cFv,
};
#pragma pop

/* 803B2220-803B222C -00001 000C+00 0/1 0/0 0/0 .data            @4816 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4816[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procLookAroundTurnInit__9daAlink_cFv,
};
#pragma pop

/* 803B222C-803B2238 -00001 000C+00 0/1 0/0 0/0 .data            @4817 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4817[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCoQuakeWaitInit__9daAlink_cFv,
};
#pragma pop

/* 803B2238-803B2244 -00001 000C+00 0/1 0/0 0/0 .data            @4818 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4818[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procGuardAttackInit__9daAlink_cFv,
};
#pragma pop

/* 803B2244-803B2250 -00001 000C+00 0/1 0/0 0/0 .data            @4819 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4819[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procSwordReadyInit__9daAlink_cFv,
};
#pragma pop

/* 803B2250-803B225C -00001 000C+00 0/1 0/0 0/0 .data            @4820 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4820[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procDungeonWarpInit__9daAlink_cFv,
};
#pragma pop

/* 803B225C-803B2268 -00001 000C+00 0/1 0/0 0/0 .data            @4821 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4821[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procDungeonWarpSceneStartInit__9daAlink_cFv,
};
#pragma pop

/* 803B2268-803B2274 -00001 000C+00 0/1 0/0 0/0 .data            @4822 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4822[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procMasterSwordStickInit__9daAlink_cFv,
};
#pragma pop

/* 803B2274-803B2280 -00001 000C+00 0/1 0/0 0/0 .data            @4823 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4823[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procMasterSwordPullInit__9daAlink_cFv,
};
#pragma pop

/* 803B2280-803B228C -00001 000C+00 0/1 0/0 0/0 .data            @4824 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4824[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCutDownInit__9daAlink_cFv,
};
#pragma pop

/* 803B228C-803B2298 -00001 000C+00 0/1 0/0 0/0 .data            @4825 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4825[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCutHeadInit__9daAlink_cFv,
};
#pragma pop

/* 803B2298-803B22A4 -00001 000C+00 0/1 0/0 0/0 .data            @4826 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4826[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCutLargeJumpInit__9daAlink_cFv,
};
#pragma pop

/* 803B22A4-803B22B0 -00001 000C+00 0/1 0/0 0/0 .data            @4827 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4827[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCutFastReadyInit__9daAlink_cFv,
};
#pragma pop

/* 803B22B0-803B22BC -00001 000C+00 0/1 0/0 0/0 .data            @4828 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4828[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procCopyRodReviveInit__9daAlink_cFv,
};
#pragma pop

/* 803B22BC-803B22C8 -00001 000C+00 0/1 0/0 0/0 .data            @4829 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4829[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procSwordPushInit__9daAlink_cFv,
};
#pragma pop

/* 803B22C8-803B22D4 -00001 000C+00 0/1 0/0 0/0 .data            @4830 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4830[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procGanonFinishInit__9daAlink_cFv,
};
#pragma pop

/* 803B22D4-803B22E0 -00001 000C+00 0/1 0/0 0/0 .data            @4831 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4831[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)procHorseLookDownInit__9daAlink_cFv,
};
#pragma pop

/* 803B22E0-803B2754 00F400 0474+00 1/2 0/0 0/0 .data            m_demoInitTable__9daAlink_c */
SECTION_DATA u8 daAlink_c::m_demoInitTable[1140] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
};

/* 803B2754-803B2798 00F874 0044+00 0/1 0/0 0/0 .data            l_cylSrc */
static dCcD_SrcCyl l_cylSrc = {
    {
        {0, {{AT_TYPE_WOLF_ATTACK, 3, 0x1A}, {0xD8FFFDFF, 5}, 0x73}},
        {dCcD_SE_WOLF_BITE, 3, 1, 0, {1}},
        {dCcD_SE_NONE, 6, 0, 0, {0}},
        {0},
    },
    {
        {0.0f, 0.0f, 0.0f},
        35.0f,
        180.0f,
    },
};

/* 803B2798-803B27D8 00F8B8 0040+00 1/2 0/0 0/0 .data            l_sphSrc */
static dCcD_SrcSph l_sphSrc = {
    {
        {0, {{AT_TYPE_NORMAL_SWORD, 3, 0x1A}, {0xD8FBFDFF, 5}, 0x73}},
        {dCcD_SE_SWORD, 3, 1, 0, {1}},
        {dCcD_SE_NONE, 6, 0, 0, {0}},
        {0},
    },
    {
        {
            {0.0f, 0.0f, 0.0f},
            40.0f,
        }
    },
};

/* 803B27D8-803B281C 00F8F8 0044+00 0/1 0/0 0/0 .data            l_atCylSrc */
static dCcD_SrcCyl l_atCylSrc = {
    {
        {0, {{AT_TYPE_NORMAL_SWORD, 2, 0x1B}, {0, 0}, 0}},
        {dCcD_SE_SWORD, 3, 1, 0, {1}},
        {dCcD_SE_NONE, 0, 0, 0, {0}},
        {0},
    },
    {
        {0.0f, 0.0f, 0.0f},
        180.0f,
        130.0f,
    },
};

/* 803B281C-803B2868 00F93C 004C+00 0/1 0/0 0/0 .data            l_atCpsSrc */
static dCcD_SrcCps l_atCpsSrc = {
    {
        {0, {{AT_TYPE_NORMAL_SWORD, 1, 0x1B}, {0, 0}, 0}},
        {dCcD_SE_SWORD, 1, 0, 0, {1}},
        {dCcD_SE_NONE, 0, 0, 0, {0}},
        {0},
    },
    {
        {
            {0.0f, 0.0f, 0.0f},
            {0.0f, 0.0f, 0.0f},
            20.0f,
        }
    },
};

/* 803B2868-803B2880 00F988 0018+00 1/0 0/0 0/0 .data            l_jntColPos0 */
SECTION_DATA static u8 l_jntColPos0[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x42, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 803B2880-803B288C 00F9A0 000C+00 1/0 0/0 0/0 .data            l_jntColPos1 */
SECTION_DATA static u8 l_jntColPos1[12] = {
    0x00, 0x00, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 803B288C-803B28A4 00F9AC 0018+00 1/0 0/0 0/0 .data            l_jntColPos2 */
SECTION_DATA static u8 l_jntColPos2[24] = {
    0xC0, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x41, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 803B28A4-803B28BC 00F9C4 0018+00 1/0 0/0 0/0 .data            l_jntColPos4 */
SECTION_DATA static u8 l_jntColPos4[24] = {
    0xC0, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x41, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 803B28BC-803B28C8 00F9DC 000C+00 1/0 0/0 0/0 .data            l_jntColPos6 */
SECTION_DATA static u8 l_jntColPos6[12] = {
    0x41, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 803B28C8-803B28E0 00F9E8 0018+00 1/0 0/0 0/0 .data            l_jntColPos8 */
SECTION_DATA static u8 l_jntColPos8[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x42, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 803B28E0-803B28F8 00FA00 0018+00 1/0 0/0 0/0 .data            l_jntColPos9 */
SECTION_DATA static u8 l_jntColPos9[24] = {
    0x00, 0x00, 0x00, 0x00, 0xC0, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x42, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 803B28F8-803B2910 00FA18 0018+00 1/0 0/0 0/0 .data            l_jntColPos10 */
SECTION_DATA static u8 l_jntColPos10[24] = {
    0x00, 0x00, 0x00, 0x00, 0x40, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x42, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 803B2910-803B2928 00FA30 0018+00 1/0 0/0 0/0 .data            l_jntColPos11 */
SECTION_DATA static u8 l_jntColPos11[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x42, 0x40, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 803B2928-803B2940 00FA48 0018+00 1/0 0/0 0/0 .data            l_jntColPos12 */
SECTION_DATA static u8 l_jntColPos12[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x42, 0x40, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 803B2940-803B2958 00FA60 0018+00 1/0 0/0 0/0 .data            l_jntColPos13 */
SECTION_DATA static u8 l_jntColPos13[24] = {
    0x00, 0x00, 0x00, 0x00, 0x40, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x41, 0xB0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 803B2958-803B2970 00FA78 0018+00 1/0 0/0 0/0 .data            l_jntColPos14 */
SECTION_DATA static u8 l_jntColPos14[24] = {
    0x00, 0x00, 0x00, 0x00, 0xC0, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x41, 0xB0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 803B2970-803B2988 00FA90 0018+00 1/0 0/0 0/0 .data            l_jntColPos15 */
SECTION_DATA static u8 l_jntColPos15[24] = {
    0xC1, 0x70, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x88, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00,
};

/* 803B2988-803B29A0 00FAA8 0018+00 1/0 0/0 0/0 .data            l_jntColPos16 */
SECTION_DATA static u8 l_jntColPos16[24] = {
    0x41, 0x50, 0x00, 0x00, 0x41, 0x50, 0x00, 0x00, 0xC1, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 803B29A0-803B29AC 00FAC0 000C+00 1/0 0/0 0/0 .data            l_jntColPos17 */
SECTION_DATA static u8 l_jntColPos17[12] = {
    0xC1, 0x70, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0xC1, 0xF0, 0x00, 0x00,
};

/* 803B29AC-803B2A84 -00001 00D8+00 1/1 0/0 0/0 .data            l_jntColData */
SECTION_DATA static void* l_jntColData[54] = {
    (void*)0x01000001,     (void*)0x41900000,     (void*)&l_jntColPos0,  (void*)0x00000004,
    (void*)0x41800000,     (void*)&l_jntColPos1,  (void*)0x01000007,     (void*)0x40E00000,
    (void*)&l_jntColPos2,  (void*)0x0100000C,     (void*)0x40E00000,     (void*)&l_jntColPos2,
    (void*)0x01000008,     (void*)0x40C00000,     (void*)&l_jntColPos4,  (void*)0x0100000D,
    (void*)0x40C00000,     (void*)&l_jntColPos4,  (void*)0x00000009,     (void*)0x40C00000,
    (void*)&l_jntColPos6,  (void*)0x0000000E,     (void*)0x40C00000,     (void*)&l_jntColPos6,
    (void*)0x01000010,     (void*)0x41900000,     (void*)&l_jntColPos8,  (void*)0x01000012,
    (void*)0x41000000,     (void*)&l_jntColPos9,  (void*)0x01000017,     (void*)0x41000000,
    (void*)&l_jntColPos10, (void*)0x01000013,     (void*)0x40E00000,     (void*)&l_jntColPos11,
    (void*)0x01000018,     (void*)0x40E00000,     (void*)&l_jntColPos12, (void*)0x01000014,
    (void*)0x40C00000,     (void*)&l_jntColPos13, (void*)0x01000019,     (void*)0x40C00000,
    (void*)&l_jntColPos14, (void*)0x0203000F,     (void*)0x42200000,     (void*)&l_jntColPos15,
    (void*)0x02030005,     (void*)0x42200000,     (void*)&l_jntColPos16, (void*)0x0003000F,
    (void*)0x42340000,     (void*)&l_jntColPos17,
};

/* 803B2A84-803B2A9C 00FBA4 0018+00 1/0 0/0 0/0 .data            l_wolfJntColPos0 */
SECTION_DATA static u8 l_wolfJntColPos0[24] = {
    0xC1, 0xC8, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x42, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 803B2A9C-803B2AA8 00FBBC 000C+00 1/0 0/0 0/0 .data            l_wolfJntColPos1 */
SECTION_DATA static u8 l_wolfJntColPos1[12] = {
    0x40, 0xA0, 0x00, 0x00, 0x40, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 803B2AA8-803B2AC0 00FBC8 0018+00 1/0 0/0 0/0 .data            l_wolfJntColPos2 */
SECTION_DATA static u8 l_wolfJntColPos2[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x42, 0x0C, 0x00, 0x00, 0x40, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 803B2AC0-803B2AD8 00FBE0 0018+00 1/0 0/0 0/0 .data            l_wolfJntColPos4 */
SECTION_DATA static u8 l_wolfJntColPos4[24] = {
    0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 803B2AD8-803B2AF0 00FBF8 0018+00 1/0 0/0 0/0 .data            l_wolfJntColPos6 */
SECTION_DATA static u8 l_wolfJntColPos6[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x41, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 803B2AF0-803B2B08 00FC10 0018+00 1/0 0/0 0/0 .data            l_wolfJntColPos8 */
SECTION_DATA static u8 l_wolfJntColPos8[24] = {
    0x00, 0x00, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x41, 0x40, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 803B2B08-803B2B20 00FC28 0018+00 1/0 0/0 0/0 .data            l_wolfJntColPos10 */
SECTION_DATA static u8 l_wolfJntColPos10[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x42, 0x04, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 803B2B20-803B2B38 00FC40 0018+00 1/0 0/0 0/0 .data            l_wolfJntColPos12 */
SECTION_DATA static u8 l_wolfJntColPos12[24] = {
    0xC0, 0xA0, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x41, 0x70, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 803B2B38-803B2B50 00FC58 0018+00 1/0 0/0 0/0 .data            l_wolfJntColPos14 */
SECTION_DATA static u8 l_wolfJntColPos14[24] = {
    0xC0, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x42, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 803B2B50-803B2B68 00FC70 0018+00 1/0 0/0 0/0 .data            l_wolfJntColPos16 */
SECTION_DATA static u8 l_wolfJntColPos16[24] = {
    0x00, 0x00, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x41, 0x50, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 803B2B68-803B2C40 -00001 00D8+00 1/1 0/0 0/0 .data            l_wolfJntColData */
SECTION_DATA static void* l_wolfJntColData[54] = {
    (void*)0x01000001, (void*)0x41E00000, (void*)&l_wolfJntColPos0,
    (void*)0x00000004, (void*)0x41C80000, (void*)&l_wolfJntColPos1,
    (void*)0x01000010, (void*)0x41200000, (void*)&l_wolfJntColPos2,
    (void*)0x01000015, (void*)0x41200000, (void*)&l_wolfJntColPos2,
    (void*)0x01000011, (void*)0x40C00000, (void*)&l_wolfJntColPos4,
    (void*)0x01000016, (void*)0x40C00000, (void*)&l_wolfJntColPos4,
    (void*)0x01000012, (void*)0x40800000, (void*)&l_wolfJntColPos6,
    (void*)0x01000017, (void*)0x40800000, (void*)&l_wolfJntColPos6,
    (void*)0x01000013, (void*)0x40800000, (void*)&l_wolfJntColPos8,
    (void*)0x01000018, (void*)0x40800000, (void*)&l_wolfJntColPos8,
    (void*)0x0100001C, (void*)0x41300000, (void*)&l_wolfJntColPos10,
    (void*)0x01000021, (void*)0x41300000, (void*)&l_wolfJntColPos10,
    (void*)0x0100001D, (void*)0x40E00000, (void*)&l_wolfJntColPos12,
    (void*)0x01000022, (void*)0x40E00000, (void*)&l_wolfJntColPos12,
    (void*)0x0100001E, (void*)0x40A00000, (void*)&l_wolfJntColPos14,
    (void*)0x01000023, (void*)0x40A00000, (void*)&l_wolfJntColPos14,
    (void*)0x0100001F, (void*)0x40C00000, (void*)&l_wolfJntColPos16,
    (void*)0x01000024, (void*)0x40A00000, (void*)&l_wolfJntColPos16,
};

/* 803B2C40-803B2C50 00FD60 000D+03 0/1 0/0 0/0 .data            defaultPortal$39238 */
#pragma push
#pragma force_active on
SECTION_DATA static const char defaultPortal[13] = "POTAL_WARPIN";
#pragma pop

/* 803B2C50-803B2C64 00FD70 0014+00 0/1 0/0 0/0 .data            kBridgePortal$39239 */
#pragma push
#pragma force_active on
SECTION_DATA static const char kBridgePortal[20] = "PORTAL_WARP_KBRIDGE";
#pragma pop

/* 803B2C64-803B2C78 00FD84 0014+00 0/1 0/0 0/0 .data            oBridgePortal$39240 */
#pragma push
#pragma force_active on
SECTION_DATA static const char oBridgePortal[20] = "PORTAL_WARP_OBRIDGE";
#pragma pop

/* 803B2C78-803B2C8C 00FD98 0014+00 0/1 0/0 0/0 .data            volcBomPortal$39241 */
#pragma push
#pragma force_active on
SECTION_DATA static const char volcBomPortal[20] = "PORTAL_WARP_BIGVOLC";
#pragma pop

/* 803B2C8C-803B2CA4 00FDAC 0016+02 0/1 0/0 0/0 .data            cannonPortal$39242 */
#pragma push
#pragma force_active on
SECTION_DATA static const char cannonPortal[22] = "SKY_CANNON_WARP_START";
#pragma pop

/* 803B2CA4-803B2CB0 -00001 000C+00 0/1 0/0 0/0 .data            @39610 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_39610[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)setEffectFrontRollParam__9daAlink_cFv,
};
#pragma pop

/* 803B2CB0-803B2CBC -00001 000C+00 0/1 0/0 0/0 .data            @39611 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_39611[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)setEffectSlipParam__9daAlink_cFv,
};
#pragma pop

/* 803B2CBC-803B2CC8 -00001 000C+00 0/1 0/0 0/0 .data            @39612 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_39612[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)setEffectSmallLandParam__9daAlink_cFv,
};
#pragma pop

/* 803B2CC8-803B2CD4 -00001 000C+00 0/1 0/0 0/0 .data            @39613 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_39613[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)setEffectRunParam__9daAlink_cFv,
};
#pragma pop

/* 803B2CD4-803B2CE0 -00001 000C+00 0/1 0/0 0/0 .data            @39614 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_39614[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)setEffectLandParam__9daAlink_cFv,
};
#pragma pop

/* 803B2CE0-803B2CEC -00001 000C+00 0/1 0/0 0/0 .data            @39615 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_39615[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)setEffectSumouParam__9daAlink_cFv,
};
#pragma pop

/* 803B2CEC-803B2D34 00FE0C 0048+00 1/2 0/0 0/0 .data            m_fEffParamProc__9daAlink_c */
SECTION_DATA u8 daAlink_c::m_fEffParamProc[72] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 803B2D34-803B2D40 00FE54 000C+00 0/1 0/0 0/0 .data            leftRotNormal$41087 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 leftRotNormal[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 803B2D40-803B2D58 00FE60 0018+00 0/1 0/0 0/0 .data            leftRotLight$41092 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 leftRotLight[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 803B2D58-803B2D7C 00FE78 0024+00 0/1 0/0 0/0 .data            leftRotLarge$41097 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 leftRotLarge[36] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 803B2D7C-803B2D88 00FE9C 000C+00 0/1 0/0 0/0 .data            leftRotWater$41102 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 leftRotWater[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 803B2D88-803B2D94 00FEA8 000C+00 1/1 0/0 0/0 .data            rodTopOffset$61388 */
SECTION_DATA static u8 rodTopOffset[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 803B2D94-803B2DA0 -00001 000C+00 1/1 0/0 0/0 .data            bodyBrkName$69118 */
SECTION_DATA static const char* bodyBrkName[3] = {
    "ml_body_power_down.brk",
    "ml_body_power_up_a.brk",
    "ml_body_power_up_b.brk",
};

/* 803B2DA0-803B2DAC -00001 000C+00 1/1 0/0 0/0 .data            headBrkName$69119 */
SECTION_DATA static const char* headBrkName[3] = {
    "ml_head_power_down.brk",
    "ml_head_power_up_a.brk",
    "ml_head_power_up_b.brk",
};

// move these later
static int daAlink_Create(fopAc_ac_c* i_this);
static int daAlink_Delete(daAlink_c* i_this);
static int daAlink_Execute(daAlink_c* i_this);
static int daAlink_Draw(daAlink_c* i_this);

/* 803B2DAC-803B2DCC -00001 0020+00 1/0 0/0 0/0 .data            l_daAlink_Method */
static actor_method_class l_daAlink_Method = {
    (process_method_func)daAlink_Create,  (process_method_func)daAlink_Delete,
    (process_method_func)daAlink_Execute, (process_method_func)NULL,
    (process_method_func)daAlink_Draw,
};

/* 803B2DCC-803B2E20 -00001 0030+24 0/0 0/0 1/0 .data            g_profile_ALINK */
extern actor_process_profile_definition g_profile_ALINK = {
    -3,
    5,
    -3,
    PROC_ALINK,
    &g_fpcLf_Method.mBase,
    sizeof(daAlink_c),
    0,
    0,
    &g_fopAc_Method.base,
    0x5B,
    &l_daAlink_Method,
    0x00060400,
    1,
    0,
};

// tons of extra padding? not sure what this is
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_803B2DFC[0x24] = {0};
#pragma pop

/* 803B2E20-803B2E80 00FF40 000C+54 2/2 0/0 0/0 .data            __vt__16daPy_frameCtrl_c */
SECTION_DATA extern void* __vt__16daPy_frameCtrl_c[3 + 21 /* padding */] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__16daPy_frameCtrl_cFv,
    /* padding */
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
};

/* 803B2E80-803B2EC8 00FFA0 000C+3C 3/3 0/0 0/0 .data            __vt__8dEyeHL_c */
SECTION_DATA extern void* __vt__8dEyeHL_c[3 + 15 /* padding */] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8dEyeHL_cFv,
    /* padding */
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
};

/* 803B2EC8-803B2EF8 00FFE8 0030+00 3/3 0/0 0/0 .data            __vt__16dBgS_LinkRoofChk */
SECTION_DATA extern void* __vt__16dBgS_LinkRoofChk[12] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__16dBgS_LinkRoofChkFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8014470C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8014471C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80144714,
};

/* 803B2EF8-803B2F28 010018 0030+00 3/3 0/0 0/0 .data            __vt__15dBgS_LinkGndChk */
SECTION_DATA extern void* __vt__15dBgS_LinkGndChk[12] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15dBgS_LinkGndChkFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_801446F4,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80144704,
    (void*)NULL,
    (void*)NULL,
    (void*)func_801446FC,
};

/* 803B2F28-803B2F70 010048 0024+24 3/3 0/0 0/0 .data            __vt__13dBgS_LinkAcch */
SECTION_DATA extern void* __vt__13dBgS_LinkAcch[9 + 9 /* padding */] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13dBgS_LinkAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_801446EC,
    (void*)NULL,
    (void*)NULL,
    (void*)func_801446E4,
    /* padding */
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
};

/* 803B2F70-803B321C 010090 02AC+00 2/2 0/0 0/0 .data            __vt__9daPy_py_c */
SECTION_DATA extern void* __vt__9daPy_py_c[171] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)getMidnaAtnPos__9daPy_py_cCFv,
    (void*)setMidnaMsgNum__9daPy_py_cFP10fopAc_ac_cUs,
    (void*)getModelMtx__9daPy_py_cFv,
    (void*)getInvMtx__9daPy_py_cFv,
    (void*)getShadowTalkAtnPos__9daPy_py_cFv,
    (void*)NULL,
    (void*)getLeftItemMatrix__9daPy_py_cFv,
    (void*)getRightItemMatrix__9daPy_py_cFv,
    (void*)getLeftHandMatrix__9daPy_py_cFv,
    (void*)getRightHandMatrix__9daPy_py_cFv,
    (void*)getLinkBackBone1Matrix__9daPy_py_cFv,
    (void*)getWolfMouthMatrix__9daPy_py_cFv,
    (void*)getWolfBackbone2Matrix__9daPy_py_cFv,
    (void*)getBottleMtx__9daPy_py_cFv,
    (void*)checkPlayerGuard__9daPy_py_cCFv,
    (void*)checkPlayerFly__9daPy_py_cCFv,
    (void*)checkFrontRoll__9daPy_py_cCFv,
    (void*)checkWolfDash__9daPy_py_cCFv,
    (void*)checkAutoJump__9daPy_py_cCFv,
    (void*)checkSideStep__9daPy_py_cCFv,
    (void*)checkWolfTriggerJump__9daPy_py_cCFv,
    (void*)checkGuardBreakMode__9daPy_py_cCFv,
    (void*)checkLv3Slide__9daPy_py_cCFv,
    (void*)checkWolfHowlDemoMode__9daPy_py_cCFv,
    (void*)checkChainBlockPushPull__9daPy_py_cFv,
    (void*)checkElecDamage__9daPy_py_cCFv,
    (void*)checkEmptyBottleSwing__9daPy_py_cCFv,
    (void*)checkBottleSwingMode__9daPy_py_cCFv,
    (void*)checkHawkWait__9daPy_py_cCFv,
    (void*)checkGoatThrow__9daPy_py_cCFv,
    (void*)checkGoatThrowAfter__9daPy_py_cCFv,
    (void*)checkWolfTagLockJump__9daPy_py_cCFv,
    (void*)checkWolfTagLockJumpLand__9daPy_py_cCFv,
    (void*)checkWolfRope__9daPy_py_cFv,
    (void*)checkWolfRopeHang__9daPy_py_cCFv,
    (void*)checkRollJump__9daPy_py_cCFv,
    (void*)checkGoronRideWait__9daPy_py_cCFv,
    (void*)checkWolfChain__9daPy_py_cCFv,
    (void*)checkWolfWait__9daPy_py_cCFv,
    (void*)checkWolfJumpAttack__9daPy_py_cCFv,
    (void*)checkWolfRSit__9daPy_py_cCFv,
    (void*)checkBubbleFly__9daPy_py_cCFv,
    (void*)checkBottleDrinkEnd__9daPy_py_cCFv,
    (void*)checkWolfDig__9daPy_py_cCFv,
    (void*)checkCutCharge__9daPy_py_cCFv,
    (void*)checkCutTurnCharge__9daPy_py_cCFv,
    (void*)checkCutLargeJumpCharge__9daPy_py_cCFv,
    (void*)getBokoFlamePos__9daPy_py_cFP4cXyz,
    (void*)checkComboCutTurn__9daPy_py_cCFv,
    (void*)checkClimbMove__9daPy_py_cCFv,
    (void*)checkGrassWhistle__9daPy_py_cCFv,
    (void*)checkBoarRun__9daPy_py_cCFv,
    (void*)checkFmChainPut__9daPy_py_cCFv,
    (void*)checkHorseElecDamage__9daPy_py_cCFv,
    (void*)getBaseAnimeFrameRate__9daPy_py_cCFv,
    (void*)getBaseAnimeFrame__9daPy_py_cCFv,
    (void*)setAnimeFrame__9daPy_py_cFf,
    (void*)checkWolfLock__9daPy_py_cCFP10fopAc_ac_c,
    (void*)cancelWolfLock__9daPy_py_cFP10fopAc_ac_c,
    (void*)getAtnActorID__9daPy_py_cCFv,
    (void*)getItemID__9daPy_py_cCFv,
    (void*)getGrabActorID__9daPy_py_cCFv,
    (void*)exchangeGrabActor__9daPy_py_cFP10fopAc_ac_c,
    (void*)setForceGrab__9daPy_py_cFP10fopAc_ac_cii,
    (void*)setForcePutPos__9daPy_py_cFRC4cXyz,
    (void*)checkPlayerNoDraw__9daPy_py_cFv,
    (void*)checkRopeTag__9daPy_py_cFv,
    (void*)voiceStart__9daPy_py_cFUl,
    (void*)seStartOnlyReverb__9daPy_py_cFUl,
    (void*)seStartOnlyReverbLevel__9daPy_py_cFUl,
    (void*)setOutPower__9daPy_py_cFfsi,
    (void*)setGrabCollisionOffset__9daPy_py_cFffP13cBgS_PolyInfo,
    (void*)onMagneGrab__9daPy_py_cFff,
    (void*)onFrollCrashFlg__9daPy_py_cFUci,
    (void*)getModelJointMtx__9daPy_py_cFUs,
    (void*)getHeadMtx__9daPy_py_cFv,
    (void*)setHookshotCarryOffset__9daPy_py_cFUiPC4cXyz,
    (void*)checkCutJumpCancelTurn__9daPy_py_cCFv,
    (void*)checkIronBallReturn__9daPy_py_cCFv,
    (void*)checkIronBallGroundStop__9daPy_py_cCFv,
    (void*)checkSingleBoarBattleSecondBowReady__9daPy_py_cCFv,
    (void*)checkPointSubWindowMode__9daPy_py_cCFv,
    (void*)setClothesChange__9daPy_py_cFi,
    (void*)setPlayerPosAndAngle__9daPy_py_cFPC4cXyzsi,
    (void*)setPlayerPosAndAngle__9daPy_py_cFPC4cXyzPC5csXyz,
    (void*)setPlayerPosAndAngle__9daPy_py_cFPA4_f,
    (void*)setThrowDamage__9daPy_py_cFsffiii,
    (void*)checkSetNpcTks__9daPy_py_cFP4cXyzii,
    (void*)setRollJump__9daPy_py_cFffs,
    (void*)playerStartCollisionSE__9daPy_py_cFUlUl,
    (void*)changeTextureAnime__9daPy_py_cFUsUsi,
    (void*)cancelChangeTextureAnime__9daPy_py_cFv,
    (void*)cancelDungeonWarpReadyNeck__9daPy_py_cFv,
    (void*)onSceneChangeArea__9daPy_py_cFUcUcP10fopAc_ac_c,
    (void*)onSceneChangeAreaJump__9daPy_py_cFUcUcP10fopAc_ac_c,
    (void*)onSceneChangeDead__9daPy_py_cFUci,
    (void*)checkHorseRide__9daPy_py_cCFv,
    (void*)checkBoarRide__9daPy_py_cCFv,
    (void*)checkCanoeRide__9daPy_py_cCFv,
    (void*)checkBoardRide__9daPy_py_cCFv,
    (void*)checkSpinnerRide__9daPy_py_cCFv,
    (void*)getSpinnerActor__9daPy_py_cFv,
    (void*)checkHorseRideNotReady__9daPy_py_cCFv,
    (void*)checkArrowChargeEnd__9daPy_py_cCFv,
    (void*)getSearchBallScale__9daPy_py_cCFv,
    (void*)checkFastShotTime__9daPy_py_cFv,
    (void*)checkNoEquipItem__9daPy_py_cCFv,
    (void*)checkFireMaterial__9daPy_py_cCFv,
    (void*)checkKandelaarSwing__9daPy_py_cCFi,
    (void*)getBoardCutTurnOffsetAngleY__9daPy_py_cCFv,
    (void*)getMagneHitPos__9daPy_py_cFv,
    (void*)getMagneBootsTopVec__9daPy_py_cFv,
    (void*)getKandelaarFlamePos__9daPy_py_cFv,
    (void*)checkUseKandelaar__9daPy_py_cFi,
    (void*)setDkCaught__9daPy_py_cFP10fopAc_ac_c,
    (void*)onPressedDamage__9daPy_py_cFRC4cXyzs,
    (void*)checkPriActorOwn__9daPy_py_cCFPC10fopAc_ac_c,
    (void*)onWolfEnemyBiteAll__9daPy_py_cFP10fopAc_ac_cQ29daPy_py_c9daPy_FLG2,
    (void*)checkWolfEnemyBiteAllOwn__9daPy_py_cCFPC10fopAc_ac_c,
    (void*)setWolfEnemyHangBiteAngle__9daPy_py_cFs,
    (void*)setKandelaarMtx__9daPy_py_cFPA4_fii,
    (void*)getStickAngleFromPlayerShape__9daPy_py_cCFPs,
    (void*)checkSpinnerPathMove__9daPy_py_cFv,
    (void*)checkSpinnerTriggerAttack__9daPy_py_cFv,
    (void*)onSpinnerPathForceRemove__9daPy_py_cFv,
    (void*)getIronBallBgHit__9daPy_py_cCFv,
    (void*)getIronBallCenterPos__9daPy_py_cFv,
    (void*)checkCanoeFishingGetLeft__9daPy_py_cCFv,
    (void*)checkCanoeFishingGetRight__9daPy_py_cCFv,
    (void*)checkBeeChildDrink__9daPy_py_cCFv,
    (void*)skipPortalObjWarp__9daPy_py_cFv,
    (void*)checkTreasureRupeeReturn__9daPy_py_cCFi,
    (void*)setSumouReady__9daPy_py_cFP10fopAc_ac_c,
    (void*)checkAcceptDungeonWarpAlink__9daPy_py_cFi,
    (void*)getSumouCounter__9daPy_py_cCFv,
    (void*)checkSumouWithstand__9daPy_py_cCFv,
    (void*)cancelGoronThrowEvent__9daPy_py_cFv,
    (void*)setSumouGraspCancelCount__9daPy_py_cFi,
    (void*)setSumouPushBackDirection__9daPy_py_cFs,
    (void*)setSumouLoseHeadUp__9daPy_py_cFv,
    (void*)getGiantPuzzleAimAngle__9daPy_py_cCFv,
    (void*)setGoronSideMove__9daPy_py_cFP10fopAc_ac_c,
    (void*)setCargoCarry__9daPy_py_cFP10fopAc_ac_c,
    (void*)getDpdFarFlg__9daPy_py_cCFv,
    (void*)getHookshotTopPos__9daPy_py_cFv,
    (void*)checkHookshotReturnMode__9daPy_py_cCFv,
    (void*)checkHookshotShootReturnMode__9daPy_py_cCFv,
    (void*)checkOctaIealHang__9daPy_py_cCFv,
    (void*)cancelOctaIealHang__9daPy_py_cFv,
    (void*)cancelDragonHangBackJump__9daPy_py_cFv,
    (void*)setOctaIealWildHang__9daPy_py_cFv,
    (void*)checkDragonHangRide__9daPy_py_cCFv,
    (void*)changeDragonActor__9daPy_py_cFP10fopAc_ac_c,
    (void*)getClothesChangeWaitTimer__9daPy_py_cCFv,
    (void*)getShieldChangeWaitTimer__9daPy_py_cCFv,
    (void*)getSwordChangeWaitTimer__9daPy_py_cCFv,
    (void*)checkMetamorphose__9daPy_py_cCFv,
    (void*)checkWolfDownAttackPullOut__9daPy_py_cCFv,
    (void*)checkBootsOrArmorHeavy__9daPy_py_cCFv,
    (void*)getBottleOpenAppearItem__9daPy_py_cCFv,
    (void*)checkItemSwordEquip__9daPy_py_cCFv,
    (void*)getSinkShapeOffset__9daPy_py_cCFv,
    (void*)checkSinkDead__9daPy_py_cCFv,
    (void*)checkHorseStart__9daPy_py_cFv,
    (void*)getWolfHowlMgrP__9daPy_py_cFv,
    (void*)checkWolfHowlSuccessAnime__9daPy_py_cCFv,
    (void*)checkCopyRodTopUse__9daPy_py_cFv,
    (void*)checkCopyRodEquip__9daPy_py_cCFv,
    (void*)checkCutJumpMode__9daPy_py_cCFv,
};

/* 803B321C-803B32B8 01033C 000C+90 2/2 0/0 0/0 .data            __vt__12daAlinkHIO_c */
SECTION_DATA extern void* __vt__12daAlinkHIO_c[3 + 36 /* padding */] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daAlinkHIO_cFv,
    /* padding */
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
};

/* 803B32B8-803B3564 0103D8 02AC+00 2/2 0/0 0/0 .data            __vt__9daAlink_c */
SECTION_DATA extern void* __vt__9daAlink_c[171] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)getMidnaAtnPos__9daAlink_cCFv,
    (void*)setMidnaMsgNum__9daAlink_cFP10fopAc_ac_cUs,
    (void*)getModelMtx__9daAlink_cFv,
    (void*)getInvMtx__9daAlink_cFv,
    (void*)getShadowTalkAtnPos__9daAlink_cFv,
    (void*)getGroundY__9daAlink_cFv,
    (void*)getLeftItemMatrix__9daAlink_cFv,
    (void*)getRightItemMatrix__9daAlink_cFv,
    (void*)getLeftHandMatrix__9daAlink_cFv,
    (void*)getRightHandMatrix__9daAlink_cFv,
    (void*)getLinkBackBone1Matrix__9daAlink_cFv,
    (void*)getWolfMouthMatrix__9daAlink_cFv,
    (void*)getWolfBackbone2Matrix__9daAlink_cFv,
    (void*)getBottleMtx__9daAlink_cFv,
    (void*)checkPlayerGuard__9daAlink_cCFv,
    (void*)checkPlayerFly__9daAlink_cCFv,
    (void*)checkFrontRoll__9daAlink_cCFv,
    (void*)checkWolfDash__9daAlink_cCFv,
    (void*)checkAutoJump__9daAlink_cCFv,
    (void*)checkSideStep__9daAlink_cCFv,
    (void*)checkWolfTriggerJump__9daAlink_cCFv,
    (void*)checkGuardBreakMode__9daAlink_cCFv,
    (void*)checkLv3Slide__9daAlink_cCFv,
    (void*)checkWolfHowlDemoMode__9daAlink_cCFv,
    (void*)checkChainBlockPushPull__9daAlink_cFv,
    (void*)checkElecDamage__9daAlink_cCFv,
    (void*)checkEmptyBottleSwing__9daAlink_cCFv,
    (void*)checkBottleSwingMode__9daAlink_cCFv,
    (void*)checkHawkWait__9daAlink_cCFv,
    (void*)checkGoatThrow__9daAlink_cCFv,
    (void*)checkGoatThrowAfter__9daAlink_cCFv,
    (void*)checkWolfTagLockJump__9daAlink_cCFv,
    (void*)checkWolfTagLockJumpLand__9daAlink_cCFv,
    (void*)checkWolfRope__9daAlink_cFv,
    (void*)checkWolfRopeHang__9daAlink_cCFv,
    (void*)checkRollJump__9daAlink_cCFv,
    (void*)checkGoronRideWait__9daAlink_cCFv,
    (void*)checkWolfChain__9daAlink_cCFv,
    (void*)checkWolfWait__9daAlink_cCFv,
    (void*)checkWolfJumpAttack__9daAlink_cCFv,
    (void*)checkWolfRSit__9daAlink_cCFv,
    (void*)checkBubbleFly__9daPy_py_cCFv,
    (void*)checkBottleDrinkEnd__9daAlink_cCFv,
    (void*)checkWolfDig__9daAlink_cCFv,
    (void*)checkCutCharge__9daAlink_cCFv,
    (void*)checkCutTurnCharge__9daAlink_cCFv,
    (void*)checkCutLargeJumpCharge__9daAlink_cCFv,
    (void*)getBokoFlamePos__9daPy_py_cFP4cXyz,
    (void*)checkComboCutTurn__9daAlink_cCFv,
    (void*)checkClimbMove__9daAlink_cCFv,
    (void*)checkGrassWhistle__9daAlink_cCFv,
    (void*)checkBoarRun__9daAlink_cCFv,
    (void*)checkFmChainPut__9daPy_py_cCFv,
    (void*)checkHorseElecDamage__9daPy_py_cCFv,
    (void*)getBaseAnimeFrameRate__9daAlink_cCFv,
    (void*)getBaseAnimeFrame__9daAlink_cCFv,
    (void*)setAnimeFrame__9daAlink_cFf,
    (void*)checkWolfLock__9daAlink_cCFP10fopAc_ac_c,
    (void*)cancelWolfLock__9daAlink_cFP10fopAc_ac_c,
    (void*)getAtnActorID__9daAlink_cCFv,
    (void*)getItemID__9daAlink_cCFv,
    (void*)getGrabActorID__9daAlink_cCFv,
    (void*)exchangeGrabActor__9daAlink_cFP10fopAc_ac_c,
    (void*)setForceGrab__9daAlink_cFP10fopAc_ac_cii,
    (void*)setForcePutPos__9daAlink_cFRC4cXyz,
    (void*)checkPlayerNoDraw__9daAlink_cFv,
    (void*)checkRopeTag__9daPy_py_cFv,
    (void*)voiceStart__9daAlink_cFUl,
    (void*)seStartOnlyReverb__9daAlink_cFUl,
    (void*)seStartOnlyReverbLevel__9daAlink_cFUl,
    (void*)setOutPower__9daAlink_cFfsi,
    (void*)setGrabCollisionOffset__9daAlink_cFffP13cBgS_PolyInfo,
    (void*)onMagneGrab__9daPy_py_cFff,
    (void*)onFrollCrashFlg__9daAlink_cFUci,
    (void*)getModelJointMtx__9daAlink_cFUs,
    (void*)getHeadMtx__9daAlink_cFv,
    (void*)setHookshotCarryOffset__9daAlink_cFUiPC4cXyz,
    (void*)checkCutJumpCancelTurn__9daAlink_cCFv,
    (void*)checkIronBallReturn__9daAlink_cCFv,
    (void*)checkIronBallGroundStop__9daAlink_cCFv,
    (void*)checkSingleBoarBattleSecondBowReady__9daAlink_cCFv,
    (void*)checkPointSubWindowMode__9daPy_py_cCFv,
    (void*)setClothesChange__9daAlink_cFi,
    (void*)setPlayerPosAndAngle__9daAlink_cFPC4cXyzsi,
    (void*)setPlayerPosAndAngle__9daAlink_cFPC4cXyzPC5csXyz,
    (void*)setPlayerPosAndAngle__9daAlink_cFPA4_f,
    (void*)setThrowDamage__9daAlink_cFsffiii,
    (void*)checkSetNpcTks__9daAlink_cFP4cXyzii,
    (void*)setRollJump__9daAlink_cFffs,
    (void*)playerStartCollisionSE__9daAlink_cFUlUl,
    (void*)changeTextureAnime__9daPy_py_cFUsUsi,
    (void*)cancelChangeTextureAnime__9daPy_py_cFv,
    (void*)cancelDungeonWarpReadyNeck__9daAlink_cFv,
    (void*)onSceneChangeArea__9daAlink_cFUcUcP10fopAc_ac_c,
    (void*)onSceneChangeAreaJump__9daAlink_cFUcUcP10fopAc_ac_c,
    (void*)onSceneChangeDead__9daAlink_cFUci,
    (void*)checkHorseRide__9daAlink_cCFv,
    (void*)checkBoarRide__9daAlink_cCFv,
    (void*)checkCanoeRide__9daAlink_cCFv,
    (void*)checkBoardRide__9daAlink_cCFv,
    (void*)checkSpinnerRide__9daAlink_cCFv,
    (void*)getSpinnerActor__9daAlink_cFv,
    (void*)checkHorseRideNotReady__9daAlink_cCFv,
    (void*)checkArrowChargeEnd__9daAlink_cCFv,
    (void*)getSearchBallScale__9daAlink_cCFv,
    (void*)checkFastShotTime__9daAlink_cFv,
    (void*)checkNoEquipItem__9daAlink_cCFv,
    (void*)checkFireMaterial__9daPy_py_cCFv,
    (void*)checkKandelaarSwing__9daAlink_cCFi,
    (void*)getBoardCutTurnOffsetAngleY__9daAlink_cCFv,
    (void*)getMagneHitPos__9daPy_py_cFv,
    (void*)getMagneBootsTopVec__9daAlink_cFv,
    (void*)getKandelaarFlamePos__9daAlink_cFv,
    (void*)checkUseKandelaar__9daAlink_cFi,
    (void*)setDkCaught__9daAlink_cFP10fopAc_ac_c,
    (void*)onPressedDamage__9daAlink_cFRC4cXyzs,
    (void*)checkPriActorOwn__9daAlink_cCFPC10fopAc_ac_c,
    (void*)onWolfEnemyBiteAll__9daAlink_cFP10fopAc_ac_cQ29daPy_py_c9daPy_FLG2,
    (void*)checkWolfEnemyBiteAllOwn__9daAlink_cCFPC10fopAc_ac_c,
    (void*)setWolfEnemyHangBiteAngle__9daAlink_cFs,
    (void*)setKandelaarMtx__9daAlink_cFPA4_fii,
    (void*)getStickAngleFromPlayerShape__9daAlink_cCFPs,
    (void*)checkSpinnerPathMove__9daAlink_cFv,
    (void*)checkSpinnerTriggerAttack__9daAlink_cFv,
    (void*)onSpinnerPathForceRemove__9daAlink_cFv,
    (void*)getIronBallBgHit__9daAlink_cCFv,
    (void*)getIronBallCenterPos__9daAlink_cFv,
    (void*)checkCanoeFishingGetLeft__9daAlink_cCFv,
    (void*)checkCanoeFishingGetRight__9daAlink_cCFv,
    (void*)checkBeeChildDrink__9daAlink_cCFv,
    (void*)skipPortalObjWarp__9daAlink_cFv,
    (void*)checkTreasureRupeeReturn__9daAlink_cCFi,
    (void*)setSumouReady__9daAlink_cFP10fopAc_ac_c,
    (void*)checkAcceptDungeonWarpAlink__9daAlink_cFi,
    (void*)getSumouCounter__9daAlink_cCFv,
    (void*)checkSumouWithstand__9daAlink_cCFv,
    (void*)cancelGoronThrowEvent__9daAlink_cFv,
    (void*)setSumouGraspCancelCount__9daAlink_cFi,
    (void*)setSumouPushBackDirection__9daAlink_cFs,
    (void*)setSumouLoseHeadUp__9daAlink_cFv,
    (void*)getGiantPuzzleAimAngle__9daAlink_cCFv,
    (void*)setGoronSideMove__9daAlink_cFP10fopAc_ac_c,
    (void*)setCargoCarry__9daAlink_cFP10fopAc_ac_c,
    (void*)getDpdFarFlg__9daPy_py_cCFv,
    (void*)getHookshotTopPos__9daAlink_cFv,
    (void*)checkHookshotReturnMode__9daAlink_cCFv,
    (void*)checkHookshotShootReturnMode__9daAlink_cCFv,
    (void*)checkOctaIealHang__9daAlink_cCFv,
    (void*)cancelOctaIealHang__9daAlink_cFv,
    (void*)cancelDragonHangBackJump__9daAlink_cFv,
    (void*)setOctaIealWildHang__9daAlink_cFv,
    (void*)checkDragonHangRide__9daAlink_cCFv,
    (void*)changeDragonActor__9daAlink_cFP10fopAc_ac_c,
    (void*)getClothesChangeWaitTimer__9daAlink_cCFv,
    (void*)getShieldChangeWaitTimer__9daAlink_cCFv,
    (void*)getSwordChangeWaitTimer__9daAlink_cCFv,
    (void*)checkMetamorphose__9daAlink_cCFv,
    (void*)checkWolfDownAttackPullOut__9daAlink_cCFv,
    (void*)checkBootsOrArmorHeavy__9daAlink_cCFv,
    (void*)getBottleOpenAppearItem__9daAlink_cCFv,
    (void*)checkItemSwordEquip__9daAlink_cCFv,
    (void*)getSinkShapeOffset__9daAlink_cCFv,
    (void*)checkSinkDead__9daAlink_cCFv,
    (void*)checkHorseStart__9daAlink_cFv,
    (void*)getWolfHowlMgrP__9daAlink_cFv,
    (void*)checkWolfHowlSuccessAnime__9daAlink_cCFv,
    (void*)checkCopyRodTopUse__9daAlink_cFv,
    (void*)checkCopyRodEquip__9daAlink_cCFv,
    (void*)checkCutJumpMode__9daAlink_cCFv,
};

/* 803B3564-803B3580 010684 0010+0C 2/2 0/0 0/0 .data            __vt__16daAlink_matAnm_c */
SECTION_DATA extern void* __vt__16daAlink_matAnm_c[4 + 3 /* padding */] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__16daAlink_matAnm_cFv,
    (void*)calc__16daAlink_matAnm_cCFP11J3DMaterial,
    /* padding */
    NULL,
    NULL,
    NULL,
};

/* 800A4068-800A4820 09E9A8 07B8+00 1/1 0/0 0/0 .text            createHeap__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::createHeap() {
    nofralloc
#include "asm/d/a/d_a_alink/createHeap__9daAlink_cFv.s"
}
#pragma pop

/* 800A4820-800A48F0 09F160 00D0+00 0/0 1/0 0/0 .text            __dt__14J3DMaterialAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DMaterialAnm::~J3DMaterialAnm() {
extern "C" asm void __dt__14J3DMaterialAnmFv() {
    nofralloc
#include "asm/d/a/d_a_alink/__dt__14J3DMaterialAnmFv.s"
}
#pragma pop

/* 800A48F0-800A4910 09F230 0020+00 1/1 0/0 0/0 .text            daAlink_createHeap__FP10fopAc_ac_c
 */
static int daAlink_createHeap(fopAc_ac_c* link) {
    return ((daAlink_c*)link)->createHeap();
}

bool daPy_py_c::checkWoodSwordEquip() {
    return dComIfGs_getSelectEquipSword() == WOOD_STICK;
}

bool daPy_py_c::checkLightMasterSwordEquip() {
    return dComIfGs_getSelectEquipSword() == LIGHT_SWORD;
}

BOOL daPy_py_c::i_checkSwordGet() {
    return dComIfGs_getSelectEquipSword() != NO_ITEM;
}

/* 800A4910-800A4BC8 09F250 02B8+00 5/5 0/0 0/0 .text            setSelectEquipItem__9daAlink_cFi */
void daAlink_c::setSelectEquipItem(int param_0) {
    if (!i_checkWolf()) {
        J3DModel* temp = mSwordModel;

        if (checkWoodSwordEquip()) {
            mSwordModel = mWoodSwordModel;
            mSheathModel = mpSwMSheathModel;
        } else if (checkMasterSwordEquip()) {
            mSwordModel = mpSwMModel;
            mSheathModel = mpSwMSheathModel;
        } else {
            if (!i_checkSwordGet()) {
                mSwordChangeWaitTimer = 100;
            }
            mSwordModel = mpSwAModel;
            mSheathModel = mpSwASheathModel;
        }

        if (!i_checkSwordGet() || checkWoodSwordEquip() || i_checkNoResetFlg3(FLG3_UNK_1000000)) {
            if (field_0x06ec != NULL) {
                field_0x06ec->hide();
            }
        } else {
            if (field_0x06ec != NULL) {
                field_0x06ec->show();
            }
        }

        if (mClothesChangeWaitTimer == 0 &&
            (temp != mSwordModel || i_checkNoResetFlg2(FLG2_STATUS_WINDOW_DRAW)))
        {
            if (temp != mSwordModel) {
                mSwordChangeWaitTimer = 5;
            }

            if (checkWoodSwordEquip()) {
                if (mEquipItem == EQUIP_SWORD || param_0 != 0) {
                    mSwordModel->getModelData()->getMaterialNodePointer(1)->getShape()->hide();
                } else {
                    mSwordModel->getModelData()->getMaterialNodePointer(1)->getShape()->show();
                }
            } else if (mEquipItem == EQUIP_SWORD || param_0 != 0) {
                mSwordModel->getModelData()->getMaterialNodePointer(0)->getShape()->show();
            } else {
                mSwordModel->getModelData()->getMaterialNodePointer(0)->getShape()->hide();
            }
        }
    } else if (checkMasterSwordEquip()) {
        mSwordModel = mpSwMModel;
        mSheathModel = mpSwMSheathModel;
    } else {
        mSwordModel = mpSwAModel;
        mSheathModel = mpSwASheathModel;
    }

    if (mClothesChangeWaitTimer == 0) {
        if (checkZoraWearAbility()) {
            if (checkZoraWearMaskDraw()) {
                field_0x06f0->show();
                if (!i_checkEquipHeavyBoots()) {
                    field_0x06e4->show();
                }
            } else {
                field_0x06f0->hide();
                field_0x06e4->hide();
            }
        }

        simpleAnmPlay(mMagicArmorBodyBrk);
        simpleAnmPlay(mMagicArmorHeadBrk);
    }
}

/* 800A4BC8-800A4C40 09F508 0078+00 2/2 0/0 0/0 .text            checkBoarStart__9daAlink_cFv */
BOOL daAlink_c::checkBoarStart() {
    // Stage: Bulblin Camp   Room: Outside Arbiter's
    return (checkStageName("F_SP118") && getStartRoomNo() == 3) && dComIfGs_getStartPoint() == 0;
}

/* 800A4C40-800A4CB4 09F580 0074+00 2/2 0/0 0/0 .text            checkCanoeStart__9daAlink_cFv */
BOOL daAlink_c::checkCanoeStart() {
    // Stage: Lake Hylia   Room: Lake
    return (checkStageName("F_SP115") && getStartRoomNo() == 0) && dComIfGs_getStartPoint() == 2;
}

u32 daPy_py_c::i_getLastSceneMode() {
    return dComIfGs_getLastSceneMode() & 0xF;
}

/* 800A4CB4-800A54F4 09F5F4 0840+00 1/1 0/0 0/0 .text            playerInit__9daAlink_cFv */
void daAlink_c::playerInit() {
    mHeavySpeedMultiplier = lit_6040;

    if (!checkDungeon() && !checkBossRoom() && checkItemGet(DUNGEON_EXIT, 1)) {
        dComIfGs_setItem(SLOT_18, TKS_LETTER);
    }

    u16 i;
    dCcD_Cyl* cyl1 = field_0x850;
    dCcD_Cyl* cyl2 = field_0xC04;
    for (i = 0; i < 3; i++, cyl1++, cyl2++) {
        cyl1->Set(l_cylSrc);
        cyl1->SetStts(&field_0x814);
        cyl1->OnTgNoConHit();
        cyl1->SetTgShieldFrontRangeYAngle(&field_0x306c);
        cyl1->SetTgHitCallback(daAlink_tgHitCallback);
        cyl1->SetCoHitCallback(daAlink_coHitCallback);

        cyl2->Set(l_cylSrc);
        cyl2->SetStts(&field_0x814);
        cyl2->OffCoSetBit();
        cyl2->SetTgMtrl(3);
        cyl2->OnTgNoHitMark();
        cyl2->SetTgType(0xD8FBFFFF);
        cyl2->OnTgSPrmBit(0x20);
    }
    field_0x850[2].SetH(lit_14955);
    field_0x850[1].SetH(lit_14955);
    field_0xFB8.Set(l_sphSrc);
    field_0xFB8.SetStts(&field_0x814);
    field_0xFB8.StartCAt(current.pos);

    mAnmHeap3.setBufferSize(0x20000);
    mAnmHeap3.createHeap(daPy_anmHeap_c::HEAP_TYPE_4);

    if (i_checkWolf()) {
        changeWolf();
    } else {
        changeLink(0);
    }

    mAnmHeap4.setBufferSize(0xB00);
    mAnmHeap4.createHeap(daPy_anmHeap_c::HEAP_TYPE_4);
    setShieldModel();

    mSwordModel = mpSwAModel;
    mSheathModel = mpSwASheathModel;

    field_0x814.Init(120, 0xFF, this);
    field_0x306c = shape_angle.y + mBodyAngle.y;

    for (u16 i = 0; i < 3; i++) {
        mAtCps[i].Set(l_atCpsSrc);
        mAtCps[i].SetStts(&field_0x814);
    }
    mGuardAtCps.Set(l_atCpsSrc);
    mGuardAtCps.SetStts(&field_0x814);
    mGuardAtCps.SetAtType(AT_TYPE_SHIELD_ATTACK);
    mGuardAtCps.OnAtNoHitMark();
    mGuardAtCps.SetAtHitMark(0);
    mGuardAtCps.SetAtAtp(0);
    mAtCyl.Set(l_atCylSrc);
    mAtCyl.SetStts(&field_0x814);

    mLinkAcch.Set(this, 3, field_0x18B0);
    mLinkAcch.ClrWaterNone();
    mLinkAcch.SetWaterCheckOffset(lit_8322);
    mLinkAcch.OnLineCheck();
    mLinkAcch.ClrRoofNone();
    mLinkAcch.SetRoofCrrHeight(field_0x598);
    mLinkAcch.SetGndThinCellingOff();
    mLinkAcch.SetWtrChkMode(2);
    mLinkAcch.OnWallSort();
    field_0x18B0[0].SetWall(l_autoUpHeight, lit_10042);
    field_0x18B0[1].SetWall(lit_16037, lit_10042);
    field_0x18B0[2].SetWall(field_0x598, lit_10042);
    field_0x2fe6 = shape_angle.y;

    for (u16 i = 0; i < 3; i++) {
        u8* underBuf = mUnderAnmHeap[0].getBuffer();
        mUnderAnmHeap[i].setBuffer(underBuf + (i * 0x2C00));
        mUnderAnmHeap[i].createHeap(daPy_anmHeap_c::HEAP_TYPE_3);
    }
    mUpperAnmHeap[0].setBuffer(mUnderAnmHeap[0].getBuffer() + 0x8400);

    for (u16 i = 0; i < 3; i++) {
        u8* upperBuf = mUpperAnmHeap[0].getBuffer();
        mUpperAnmHeap[i].setBuffer(upperBuf + (i * 0x2C00));
        mUpperAnmHeap[i].createHeap(daPy_anmHeap_c::HEAP_TYPE_3);
    }

    mFaceBtpHeap.createHeap(daPy_anmHeap_c::HEAP_TYPE_1);
    mFaceBtkHeap.createHeap(daPy_anmHeap_c::HEAP_TYPE_2);
    mFaceBckHeap.createHeap(daPy_anmHeap_c::HEAP_TYPE_3);

    for (u16 i = 0; i < 2; i++) {
        mItemHeap[i].setBufferSize(0x13200);
        mItemHeap[i].createHeap(daPy_anmHeap_c::HEAP_TYPE_4);
    }
    mAnmHeap9.createHeap(daPy_anmHeap_c::HEAP_TYPE_3);
    resetBasAnime();

    mZ2Link.init(&current.pos, &mEyePos, &field_0x3720);
    mZ2Link.initKantera(&mKandelaarFlamePos);
    mZ2Link.setKanteraState(0);
    mProcID = 0x160;

    m_swordBlur.m_blurTex = (void*)dComIfG_getObjectRes(l_arcName, 0x59);  // blur.bti

    J3DModelData* modelData = mpSwAModel->getModelData();
    m_nSwordBtk = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName, 0x44);  // al_swa.btk
    m_nSwordBtk->searchUpdateMaterialID(modelData);
    modelData->entryTexMtxAnimator(m_nSwordBtk);

    J3DModelData* modelData2 = mpSwMModel->getModelData();
    m_mSwordBtk = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName, 0x45);  // al_swm.btk
    m_mSwordBtk->searchUpdateMaterialID(modelData2);
    modelData2->entryTexMtxAnimator(m_mSwordBtk);

    m_mSwordBrk = (J3DAnmTevRegKey*)dComIfG_getObjectRes(l_arcName, 0x3F);  // al_swm.brk
    m_mSwordBrk->searchUpdateMaterialID(modelData2);
    modelData2->entryTevRegAnimator(m_mSwordBrk);

    f32 tmp = lit_9138;
    mWaterY = tmp;
    field_0x33b8 = tmp;
    field_0x33bc = tmp;

    mEquipItem = NO_ITEM;
    offSwordModel();

    field_0x3184 = -1;
    mExitID = 0x3F;
    i_onNoResetFlg0(FLG0_UNK_100);
    offOxygenTimer();

    int startMode = getStartMode();
    int startEvent = getStartEvent();

    if (dComIfGp_getStartStagePoint() == -2 || dComIfGp_getStartStagePoint() == -3) {
        field_0x3188 = dComIfGp_evmng_startDemo(-1);
    } else if (dComIfGp_getStartStagePoint() == -4) {
        field_0x3188 = dComIfGp_evmng_startDemo(0xD5);
    } else {
        if (i_getLastSceneMode() == 9) {
            field_0x3188 = dComIfGp_evmng_startDemo(0xD3);
        } else if (startMode == 10) {
            if (startEvent != 0xFF) {
                field_0x3188 = dComIfGp_evmng_startDemo(startEvent);
            } else {
                field_0x3188 = dComIfGp_evmng_startDemo(0xCF);
            }
        } else if (startMode == 11) {
            if (startEvent != 0xFF) {
                field_0x3188 = dComIfGp_evmng_startDemo(startEvent);
            } else {
                field_0x3188 = dComIfGp_evmng_startDemo(0xD0);
            }
        } else if (startMode == 6) {
            field_0x3188 = dComIfGp_evmng_startDemo(0xCD);
        } else if (startMode == 7) {
            field_0x3188 = dComIfGp_evmng_startDemo(0xCE);
        } else if (startMode == 8) {
            if (startEvent != 0xFF) {
                field_0x3188 = dComIfGp_evmng_startDemo(startEvent);
            } else {
                field_0x3188 = dComIfGp_evmng_startDemo(0xD4);
            }
        } else if (startMode == 12) {
            field_0x3188 = dComIfGp_evmng_startDemo(0xC9);
        } else if (i_getLastSceneMode() == 11) {
            field_0x3188 = dComIfGp_evmng_startDemo(0xFF);
        } else if (i_getLastSceneMode() == 12) {
            field_0x3188 = dComIfGp_evmng_startDemo(0xD1);
        } else {
            field_0x3188 = dComIfGp_evmng_startDemo(startEvent);
        }
    }

    dComIfGp_getPEvtManager()->orderStartDemo();
    field_0x2f94 = -1;
    field_0x2f95 = -1;
    field_0x2f96 = -1;
    field_0x2f97 = -1;

    for (int i = 0; i < 0x10; i++) {
        field_0x28b0[i] = -1;
    }
    mAtnActorID = -1;
    mMsgClassID = -1;
    field_0x28f8 = -1;
    field_0x28fc = -1;

    field_0x2e54.init(&mLinkAcch, daAlinkHIO_basic_c0::m.mWaterSurfaceEffectHeight, field_0x598);
    field_0x3108 = shape_angle.y;

    field_0x2f20.setOldPosP(&field_0x3624, &field_0x3630);
    field_0x2fc3 = 10;

    field_0x2f5c.mPosition = current.pos;
    field_0x2f5c.mColor.r = 80;
    field_0x2f5c.mColor.g = 80;
    field_0x2f5c.mColor.b = 200;

    f32 tmp_0 = FLOAT_LABEL(lit_6108);
    field_0x2f5c.mPow = tmp_0;
    field_0x2f5c.mFluctuation = tmp_0;
    dKy_plight_set(&field_0x2f5c);

    setSelectEquipItem(0);

    if (checkStageName("D_MN08") || checkStageName("D_MN08B") || checkStageName("D_MN08C")) {
        i_onNoResetFlg3(FLG3_UNK_40000000);
    }
}

/* 800A54F4-800A551C 09FE34 0028+00 3/3 0/0 0/0 .text            checkHorseStart__9daAlink_cFUli */
BOOL daAlink_c::checkHorseStart(u32 pLastMode, int pStartMode) {
    return pLastMode == 1 || pStartMode == 2 || pLastMode == 8;
}

/* 800A551C-800A5CC8 09FE5C 07AC+00 1/1 0/0 0/0 .text            setStartProcInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::setStartProcInit() {
    nofralloc
#include "asm/d/a/d_a_alink/setStartProcInit__9daAlink_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80450FCC-80450FD0 0004CC 0004+00 1/1 0/0 0/0 .sbss            bgWaitFlg$58404 */
static s32 bgWaitFlg;

/* 80450FD0-80450FD8 -00001 0008+00 2/2 0/0 0/0 .sbss            None */
/* 80450FD0 0001+00 data_80450FD0 None */
/* 80450FD1 0007+00 data_80450FD1 None */
static s8 struct_80450FD0;  // init$

#pragma push
#pragma force_active on
static u8 data_80450FD1;
#pragma pop

/* 80453230-80453234 001830 0004+00 1/1 0/0 0/0 .sdata2          @58630 */
SECTION_SDATA2 static f32 lit_58630 = 7500.0f;

/* 80453234-80453238 001834 0004+00 2/2 0/0 0/0 .sdata2          @58631 */
SECTION_SDATA2 static f32 lit_58631 = 275.0f;

inline bool checkCasualWearFlg() {
    return dComIfGs_getSelectEquipClothes() == WEAR_CASUAL;
}

inline bool checkZoraWearFlg() {
    return dComIfGs_getSelectEquipClothes() == WEAR_ZORA;
}

inline bool checkMagicArmorWearFlg() {
    return dComIfGs_getSelectEquipClothes() == ARMOR;
}

/* 800A5CC8-800A660C 0A0608 0944+00 1/1 0/0 0/0 .text            create__9daAlink_cFv */
#ifdef NONMATCHING
int daAlink_c::create() {
    fopAcM_SetupActor(this, daAlink_c);

    if (!struct_80450FD0) {
        bgWaitFlg = 0;
        struct_80450FD0 = 1;
    }

    u32 sceneMode = i_getLastSceneMode();
    s32 startMode = getStartMode();
    s16 startPoint = dComIfGp_getStartStagePoint();
    BOOL horseStart = checkHorseStart(sceneMode, startMode);

    BOOL enteringCity = false;
    // Stage: City   Room: Entrance   Layer: 0
    if (checkStageName("D_MN07") && dComIfGp_roomControl_getStayNo() == 0 &&
        dComIfG_play_c::getLayerNo(0) == 0 && current.pos.y > 7500.0f)
    {
        enteringCity = true;
    }

    if (!bgWaitFlg) {
        // Event Flag: Finished Sewers
        if (checkCasualWearFlg() && i_dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[47])) {
            dComIfGs_setSelectEquipClothes(WEAR_KOKIRI);
        }

        if (enteringCity && checkMagicArmorHeavy()) {
            dComIfGs_setSelectEquipClothes(WEAR_KOKIRI);
        }

        dComIfGp_setPlayer(0, this);
        dComIfGp_setLinkPlayer(this);
        fopAcM_setStageLayer(this);

        if (sceneMode == 7) {
            current.pos = dComIfGs_getTurnRestartPos();
            shape_angle.y = dComIfGs_getTurnRestartAngleY();
            current.angle.y = shape_angle.y;
        }

        if ((!checkBossOctaIealRoom() && dComIfGs_Wolf_Change_Check() == 1) || startPoint == -4 ||
            sceneMode == 9)
        {
            mAttentionInfo.mPosition.set(current.pos.x + cM_ssin(shape_angle.y) * 70.0f,
                                         current.pos.y + 80.0f,
                                         current.pos.z + cM_scos(shape_angle.y) * 70.0f);
            i_onNoResetFlg1(FLG1_IS_WOLF);
        } else if (horseStart) {
            mAttentionInfo.mPosition.y = current.pos.y + 150.0f;
        } else {
            mAttentionInfo.mPosition.y = current.pos.y + 275.0f;
        }
        mAttentionInfo.mFlags = -1;

        if (!i_dComIfGp_getEventManager().dataLoaded()) {
            return cPhs_INIT_e;
        }

        setArcName(i_checkWolf());
        setOriginalHeap(&field_0x0638, 0xA2800);
        if (dComIfG_resLoad(&mPhaseReq, mArcName, field_0x0638) != cPhs_COMPLEATE_e) {
            return cPhs_INIT_e;
        }

        setShieldArcName();
        setOriginalHeap(&field_0x0648, 0x7000);
        if (dComIfG_resLoad(&mShieldPhaseReq, mShieldArcName, field_0x0648) != cPhs_COMPLEATE_e) {
            return cPhs_INIT_e;
        }

        if (!fopAcM_entrySolidHeap(this, daAlink_createHeap, 0xC003E930)) {
            return cPhs_ERROR_e;
        }

        mAttention = &dComIfGp_getAttention();
        field_0x317c = i_dComIfGp_getPlayerCameraID(0);

        playerInit();
        bgWaitFlg = 1;

        if (checkCanoeStart()) {
            field_0x2900 = fopAcM_create(PROC_CANOE, 0, &current.pos, fopAcM_GetRoomNo(this),
                                         &shape_angle, NULL, -1);
        } else if (sceneMode == 11) {
            field_0x2900 = fopAcM_create(PROC_Obj_IceLeaf, 0x1FFFF, &current.pos,
                                         fopAcM_GetRoomNo(this), &shape_angle, NULL, -1);
        } else {
            field_0x2900 = -1;
        }
    }

    mLinkAcch.CrrPos(dComIfG_Bgsp());
    void* var_r24 = NULL;  // supposed to be set in big if statement

    if (mLinkAcch.GetGroundH() == lit_9138 ||
        (startMode == 14 && !dComIfG_Bgsp().ChkMoveBG(mLinkAcch.m_gnd)) ||
        (startPoint == -4 &&
         fopAcIt_Judge((fopAcIt_JudgeFunc)daAlink_searchPortal, &current.pos) == NULL) ||
        (field_0x2900 != -1 && !fopAcM_SearchByID(field_0x2900)) ||
        (checkCanoeStart() && !fopAcIt_Judge((fopAcIt_JudgeFunc)daAlink_searchCanoe, NULL)) ||
        (checkBoarStart() && !fopAcIt_Judge((fopAcIt_JudgeFunc)daAlink_searchBoar, NULL)) ||
        (startMode == 13 &&
         (!mLinkAcch.ChkWaterHit() || mLinkAcch.m_wtr.GetHeight() < current.pos.y)) ||
        ((checkCarryStartLightBallA() || checkCarryStartLightBallB()) &&
         !fopAcIt_Judge((fopAcIt_JudgeFunc)daAlink_searchLightBall, NULL)) ||
        (horseStart && i_dComIfGp_getHorseActor() == NULL))
    {
        return cPhs_INIT_e;
    }

    if (var_r24) {
        i_dComIfGp_getEvent().setPtD(var_r24);
    }

    bgWaitFlg = 0;

    dComIfGs_setRestartRoom(current.pos, shape_angle.y, getStartRoomNo());
    field_0x3780 = current.pos;
    mLinkAcch.ClrGndThinCellingOff();
    fopAcM_SetRoomNo(this, dComIfG_Bgsp().GetRoomId(mLinkAcch.m_gnd) + 1);
    setRoomInfo();
    setWaterY();

    if (checkStageName("F_SP102") && fopAcM_GetRoomNo(this) == 0 &&
        dComIfG_play_c::getLayerNo(0) == 4)
    {
        i_onNoResetFlg2(FLG2_UNK_800000);
    } else if (checkStageName("F_SP123") && fopAcM_GetRoomNo(this) == 13 &&
               dComIfG_play_c::getLayerNo(0) == 0)
    {
        i_onNoResetFlg2(FLG2_UNK_1000000);
    }

    J3DAnmTransform* at1;
    J3DAnmTransform* at2;
    getUnderUpperAnime(ANM_WAIT, &at1, &at2, 0, 0x2C00);
    mNowAnmPackUnder[0].setAnmTransform(at1);

    if (at2 != NULL) {
        mNowAnmPackUpper[0].setAnmTransform(at2);
    } else {
        mNowAnmPackUpper[0].setAnmTransform(at1);
    }

    int prm = setStartProcInit();
    setSelectEquipItem(0);
    setMatrix();
    allAnimePlay();
    mpLinkModel->calc();
    playFaceTextureAnime();

    if (!i_checkWolf()) {
        setItemMatrix(0);
    } else {
        setWolfItemMatrix();
    }

    setBodyPartPos();
    setHangWaterY();

    field_0x850[0].SetC(current.pos);
    field_0x3454 = field_0x3834.y;
    setAttentionPos();
    setItemActor();

    if (dComIfGs_getLastSceneMode() & 0x400000 && !i_checkWolf() && !checkNotHeavyBootsStage() &&
        !horseStart && !enteringCity)
    {
        setHeavyBoots(1);
    }

    if (dComIfGs_getLastSceneMode() & 0x200000 && !checkCloudSea()) {
        i_onNoResetFlg2(1);
        mZ2Link.setKanteraState(2);
    }

    if (checkCarryStartLightBallA() || checkCarryStartLightBallB()) {
        setForceGrab((fopAc_ac_c*)fopAcIt_Judge((fopAcIt_JudgeFunc)daAlink_searchLightBall, NULL),
                     1, 1);
    }

    fopAcM_create(PROC_MIDNA, prm, &current.pos, fopAcM_GetRoomNo(this), &shape_angle, NULL, -1);
    checkSetNpcTks(&current.pos, fopAcM_GetRoomNo(this), 1);

    if (startPoint == -4 && dComIfGp_TargetWarpPt_get() != -1 && !dComIfGp_TransportWarp_check()) {
        daTagMhint_c::createPortalWarpMissTag(fopAcM_GetID(this), fopAcM_GetRoomNo(this));
    }

    if (i_dStage_stagInfo_GetSaveTbl(i_dComIfGp_getStage()->getStagInfo()) == 0x11) {
        if (!i_dComIfGs_isItemFirstBit(HYLIA_SHIELD) && !i_dComIfGs_isItemFirstBit(SHIELD) &&
            !i_dComIfGs_isItemFirstBit(WOOD_SHIELD))
        {
            i_fopAcM_onSwitch(this, 0x6F);
        } else {
            i_fopAcM_offSwitch(this, 0x6F);
        }
    }

    return cPhs_COMPLEATE_e;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::create() {
    nofralloc
#include "asm/d/a/d_a_alink/create__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800A660C-800A662C 0A0F4C 0020+00 1/0 0/0 0/0 .text            daAlink_Create__FP10fopAc_ac_c */
static int daAlink_Create(fopAc_ac_c* i_this) {
    return static_cast<daAlink_c*>(i_this)->create();
}

/* 800A662C-800A67E0 0A0F6C 01B4+00 2/2 0/0 0/0 .text            setRoomInfo__9daAlink_cFv */
s32 daAlink_c::setRoomInfo() {
    s32 roomID;

    if (mProcID != PROC_TW_GATE) {
        roomID = dComIfG_Bgsp().GetRoomId(mLinkAcch.m_gnd);

        if (roomID != fopAcM_GetRoomNo(this)) {
            mTevStr.mRoomNo = roomID;
            mVoiceReverbIntensity = dComIfGp_getReverb(roomID);
            field_0x814.SetRoomId(roomID);
            fopAcM_SetRoomNo(this, roomID);
        }

        dStage_RoomCheck(&mLinkAcch.m_gnd);
    } else {
        roomID = fopAcM_GetRoomNo(this);
    }

    mTevStr.mEnvrIdxOverride = dComIfG_Bgsp().GetPolyColor(mLinkAcch.m_gnd);
    field_0x3174 = dComIfG_Bgsp().GetGroundCode(mLinkAcch.m_gnd);
    field_0x2fbb = dComIfG_Bgsp().GetPolyAtt0(mLinkAcch.m_gnd);
    field_0x2fa8 = dComIfG_Bgsp().GetSpecialCode(mLinkAcch.m_gnd);

    if (field_0x2fa8 == 6 && i_checkWolf()) {
        field_0x2fa8 = 5;
    }

    if (field_0x2fbd != 0xFF) {
        if (field_0x2fbb == 3) {
            field_0x2fbd = dComIfG_Bgsp().GetPolyAtt1(mLinkAcch.m_gnd);

            if (field_0x2fbd == 4 && i_checkWolf()) {
                field_0x2fbd = 0;
            }

            if (!checkEventRun() && (field_0x2fbd == 1 || field_0x2fbd == 3) &&
                (checkBootsOrArmorHeavy() || mSinkShapeOffset < lit_6040 + field_0x3458))
            {
                field_0x2fbd = 2;
            }
        } else {
            field_0x2fbd = 0;
        }
    }

    return roomID;
}

/* 800A67E0-800A6B0C 0A1120 032C+00 1/1 0/0 0/0 .text            setShapeAngleOnGround__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setShapeAngleOnGround() {
    nofralloc
#include "asm/d/a/d_a_alink/setShapeAngleOnGround__9daAlink_cFv.s"
}
#pragma pop

/* 800A6B0C-800A6DCC 0A144C 02C0+00 1/1 0/0 0/0 .text            setStepsOffset__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setStepsOffset() {
    nofralloc
#include "asm/d/a/d_a_alink/setStepsOffset__9daAlink_cFv.s"
}
#pragma pop

/* 800A6DCC-800A7050 0A170C 0284+00 1/1 0/0 0/0 .text            iceSlipBgCheck__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::iceSlipBgCheck() {
    nofralloc
#include "asm/d/a/d_a_alink/iceSlipBgCheck__9daAlink_cFv.s"
}
#pragma pop

/* 800A7050-800A7358 0A1990 0308+00 1/1 0/0 0/0 .text            setIceSlipSpeed__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setIceSlipSpeed() {
    nofralloc
#include "asm/d/a/d_a_alink/setIceSlipSpeed__9daAlink_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80453238-8045323C 001838 0004+00 3/3 0/0 0/0 .sdata2          @59593 */
SECTION_SDATA2 static f32 lit_59593 = 0.0054931640625f;

/* 8045323C-80453240 00183C 0004+00 1/1 0/0 0/0 .sdata2          @59594 */
SECTION_SDATA2 static f32 lit_59594 = 29.899999618530273f;

/* 80453240-80453244 001840 0004+00 1/1 0/0 0/0 .sdata2          @59595 */
SECTION_SDATA2 static f32 lit_59595 = 0.016887418925762177f;

/* 800A7358-800A7950 0A1C98 05F8+00 1/1 0/0 0/0 .text            setPolygonSpeed__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setPolygonSpeed() {
    nofralloc
#include "asm/d/a/d_a_alink/setPolygonSpeed__9daAlink_cFv.s"
}
#pragma pop

/* 800A7950-800A79EC 0A2290 009C+00 4/4 0/0 0/0 .text checkWindSpeedOnAngle__9daAlink_cCFv */
// matches with literals
#ifdef NONMATCHING
bool daAlink_c::checkWindSpeedOnAngle() const {
    if (!checkWindSpeedOnXZ()) {
        return false;
    }

    int tmp = cLib_distanceAngleS(field_0x30cc, shape_angle.y);
    return tmp >= 0x6000 || (tmp >= 0x4000 && checkWindDashAnime());
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daAlink_c::checkWindSpeedOnAngle() const {
    nofralloc
#include "asm/d/a/d_a_alink/checkWindSpeedOnAngle__9daAlink_cCFv.s"
}
#pragma pop
#endif

/* 800A79EC-800A7A5C 0A232C 0070+00 2/2 0/0 0/0 .text checkWindSpeedOnAngleAnime__9daAlink_cCFi */
bool daAlink_c::checkWindSpeedOnAngleAnime(int param_0) const {
    return checkWindSpeedOnAngle() &&
           ((field_0x2f8c == 1 || field_0x2f8c == 3) || (param_0 != 0 && field_0x2f8c == 2));
}

/* 800A7A5C-800A7ABC 0A239C 0060+00 7/7 0/0 0/0 .text            checkDashAnime__9daAlink_cCFv */
bool daAlink_c::checkDashAnime() const {
    return checkUnderMove0BckNoArc(ANM_RUN) || checkUnderMove0BckNoArc(ANM_RUN_B);
}

/* 800A7ABC-800A7CB0 0A23FC 01F4+00 1/1 0/0 0/0 .text checkWindWallRate__9daAlink_cFRC4cXyz */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkWindWallRate(cXyz const& param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/checkWindWallRate__9daAlink_cFRC4cXyz.s"
}
#pragma pop

/* 800A7CB0-800A8310 0A25F0 0660+00 1/1 0/0 0/0 .text            setWindSpeed__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setWindSpeed() {
    nofralloc
#include "asm/d/a/d_a_alink/setWindSpeed__9daAlink_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80391F44-80391F50 01E5A4 000C+00 0/1 0/0 0/0 .rodata          localHeadCenter$59872 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const localHeadCenter[12] = {
    0x00, 0x00, 0x00, 0x00, 0xC1, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391F44, &localHeadCenter);
#pragma pop

/* 80391F50-80391F5C 01E5B0 000C+00 0/1 0/0 0/0 .rodata          localEye$59873 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const localEye[12] = {
    0x41, 0x40, 0x00, 0x00, 0xC1, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391F50, &localEye);
#pragma pop

/* 80391F5C-80391F68 01E5BC 000C+00 0/1 0/0 0/0 .rodata          localHeadTop$59874 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const localHeadTop[12] = {
    0x00, 0x00, 0x00, 0x00, 0xC1, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391F5C, &localHeadTop);
#pragma pop

/* 80391F68-80391F74 01E5C8 000C+00 0/1 0/0 0/0 .rodata          wlLocalHeadCenter$59875 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const wlLocalHeadCenter[12] = {
    0x00, 0x00, 0x00, 0x00, 0xC0, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391F68, &wlLocalHeadCenter);
#pragma pop

/* 80391F74-80391F80 01E5D4 000C+00 0/1 0/0 0/0 .rodata          wlLocalEye$59876 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const wlLocalEye[12] = {
    0x41, 0xF0, 0x00, 0x00, 0xC0, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391F74, &wlLocalEye);
#pragma pop

/* 80391F80-80391F8C 01E5E0 000C+00 0/1 0/0 0/0 .rodata          wlLocalHeadTop$59877 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const wlLocalHeadTop[12] = {
    0x00, 0x00, 0x00, 0x00, 0xC1, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391F80, &wlLocalHeadTop);
#pragma pop

/* 80391F8C-80391F98 01E5EC 000C+00 0/1 0/0 0/0 .rodata          localEyeFromRoot$59878 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const localEyeFromRoot[12] = {
    0x00, 0x00, 0x00, 0x00, 0x42, 0x5F, 0x00, 0x00, 0x41, 0x70, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391F8C, &localEyeFromRoot);
#pragma pop

/* 80391F98-80391FA4 01E5F8 000C+00 0/1 0/0 0/0 .rodata          boardLocalEyeFromRoot$59879 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const boardLocalEyeFromRoot[12] = {
    0x41, 0x18, 0x00, 0x00, 0x42, 0x3C, 0x00, 0x00, 0x41, 0xC4, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391F98, &boardLocalEyeFromRoot);
#pragma pop

/* 80391FA4-80391FB0 01E604 000C+00 0/1 0/0 0/0 .rodata          horseLocalEyeFromRoot$59880 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const horseLocalEyeFromRoot[12] = {
    0x3F, 0xE0, 0x00, 0x00, 0x42, 0x5C, 0x00, 0x00, 0x41, 0xCC, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391FA4, &horseLocalEyeFromRoot);
#pragma pop

/* 80391FB0-80391FBC 01E610 000C+00 0/1 0/0 0/0 .rodata          canoeLocalEyeFromRoot$59881 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const canoeLocalEyeFromRoot[12] = {
    0x00, 0x00, 0x00, 0x00, 0x42, 0x5C, 0x00, 0x00, 0x41, 0xC8, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391FB0, &canoeLocalEyeFromRoot);
#pragma pop

/* 800A8310-800A87D8 0A2C50 04C8+00 2/2 0/0 0/0 .text            setBodyPartPos__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setBodyPartPos() {
    nofralloc
#include "asm/d/a/d_a_alink/setBodyPartPos__9daAlink_cFv.s"
}
#pragma pop

/* 800A87D8-800A87F8 0A3118 0020+00 1/0 0/0 0/0 .text            setRollJump__9daAlink_cFffs */
int daAlink_c::setRollJump(f32 param_0, f32 param_1, s16 param_2) {
    field_0x3410 = param_0;
    field_0x3414 = param_1;
    field_0x30ee = param_2;
    i_onEndResetFlg0(ERFLG0_UNK_100);
    return 1;
}

/* ############################################################################################## */
/* 80391FBC-80391FC8 01E61C 000C+00 0/0 0/0 0/0 .rodata          wlLocalEyeFromRoot$59882 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const wlLocalEyeFromRoot[12] = {
    0x00, 0x00, 0x00, 0x00, 0xC0, 0xC0, 0x00, 0x00, 0x42, 0xAB, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391FBC, &wlLocalEyeFromRoot);
#pragma pop

/* 80391FC8-80391FD4 01E628 000C+00 0/1 0/0 0/0 .rodata          normalOffset$60101 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const normalOffset[12] = {
    0x00, 0x00, 0x00, 0x00, 0x43, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391FC8, &normalOffset);
#pragma pop

/* 80391FD4-80391FE0 01E634 000C+00 0/1 0/0 0/0 .rodata          crawlOffset$60141 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const crawlOffset[12] = {
    0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391FD4, &crawlOffset);
#pragma pop

/* 80391FE0-80391FEC 01E640 000C+00 0/1 0/0 0/0 .rodata          crouchOffset$60142 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const crouchOffset[12] = {
    0x00, 0x00, 0x00, 0x00, 0x42, 0xBE, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391FE0, &crouchOffset);
#pragma pop

/* 80391FEC-80391FF8 01E64C 000C+00 0/1 0/0 0/0 .rodata          swimOffset$60143 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const swimOffset[12] = {
    0x00, 0x00, 0x00, 0x00, 0x41, 0x60, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391FEC, &swimOffset);
#pragma pop

/* 80425508-80425514 052228 000C+00 4/4 0/0 0/0 .bss             @4409 */
static u8 lit_4409[12];

/* 80425514-80425520 052234 000C+00 32/35 0/0 0/0 .bss             l_waitBaseAnime */
static Vec l_waitBaseAnime;

/* 80425520-8042552C 052240 000C+00 0/1 0/0 0/0 .bss             @4410 */
#pragma push
#pragma force_active on
static u8 lit_4410[12];
#pragma pop

/* 8042552C-80425538 05224C 000C+00 2/3 0/0 0/0 .bss             l_ironBallBaseAnime */
static Vec l_ironBallBaseAnime;

/* 80425538-80425544 052258 000C+00 0/1 0/0 0/0 .bss             @4411 */
#pragma push
#pragma force_active on
static u8 lit_4411[12];
#pragma pop

/* 80425544-80425550 052264 000C+00 15/17 0/0 0/0 .bss             l_halfAtnWaitBaseAnime */
static Vec l_halfAtnWaitBaseAnime;

/* 80425550-8042555C 052270 000C+00 0/1 0/0 0/0 .bss             @4412 */
#pragma push
#pragma force_active on
static u8 lit_4412[12];
#pragma pop

/* 8042555C-80425568 05227C 000C+00 1/2 0/0 0/0 .bss             l_rWaitBaseAnime */
static f32 l_rWaitBaseAnime[3];

/* 80425568-80425574 052288 000C+00 0/1 0/0 0/0 .bss             @4413 */
#pragma push
#pragma force_active on
static u8 lit_4413[12];
#pragma pop

/* 80425574-80425580 052294 000C+00 0/1 0/0 0/0 .bss             l_lWaitBaseAnime */
#pragma push
#pragma force_active on
static u8 l_lWaitBaseAnime[12];
#pragma pop

/* 80425580-8042558C 0522A0 000C+00 0/1 0/0 0/0 .bss             @4414 */
#pragma push
#pragma force_active on
static u8 lit_4414[12];
#pragma pop

/* 8042558C-80425598 0522AC 000C+00 3/5 0/0 0/0 .bss             l_horseBaseAnime */
static Vec l_horseBaseAnime;

/* 80425598-804255A4 0522B8 000C+00 0/1 0/0 0/0 .bss             @4415 */
#pragma push
#pragma force_active on
static u8 lit_4415[12];
#pragma pop

/* 804255A4-804255B0 0522C4 000C+00 3/5 0/0 0/0 .bss             l_boarBaseAnime */
static Vec l_boarBaseAnime;

/* 804255B0-804255BC 0522D0 000C+00 0/1 0/0 0/0 .bss             @4416 */
#pragma push
#pragma force_active on
static u8 lit_4416[12];
#pragma pop

/* 804255BC-804255C8 0522DC 000C+00 1/3 0/0 0/0 .bss             l_localHorseRidePos */
static u8 l_localHorseRidePos[12];

/* 804255C8-804255D4 0522E8 000C+00 0/1 0/0 0/0 .bss             @4417 */
#pragma push
#pragma force_active on
static u8 lit_4417[12];
#pragma pop

/* 804255D4-804255E0 0522F4 000C+00 1/3 0/0 0/0 .bss             l_localBoarRidePos */
static u8 l_localBoarRidePos[12];

/* 804255E0-804255EC 052300 000C+00 0/1 0/0 0/0 .bss             @4418 */
#pragma push
#pragma force_active on
static u8 lit_4418[12];
#pragma pop

/* 804255EC-804255F8 05230C 000C+00 2/3 0/0 0/0 .bss             l_canoeBaseAnime */
static Vec l_canoeBaseAnime;

/* 800A87F8-800A8CE4 0A3138 04EC+00 2/2 0/0 0/0 .text            setAttentionPos__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setAttentionPos() {
    nofralloc
#include "asm/d/a/d_a_alink/setAttentionPos__9daAlink_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80453244-80453248 001844 0004+00 1/1 0/0 0/0 .sdata2          @60413 */
SECTION_SDATA2 static f32 lit_60413 = -70.0f;

/* 800A8CE4-800A9248 0A3624 0564+00 3/3 0/0 0/0 .text            setMatrix__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setMatrix() {
    nofralloc
#include "asm/d/a/d_a_alink/setMatrix__9daAlink_cFv.s"
}
#pragma pop

/* 800A9248-800A92F0 0A3B88 00A8+00 15/15 0/0 5/5 .text simpleAnmPlay__9daAlink_cFP10J3DAnmBase */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::simpleAnmPlay(J3DAnmBase* i_anm) {
    if (i_anm == NULL) {
        return 0;
    }

    int ret = 0;
    f32 frame = i_anm->getFrame() + 1.0f;

    if (frame >= i_anm->getFrameMax()) {
        if (i_anm->getAttribute() == 2) {
            frame -= i_anm->getFrameMax();
        } else {
            frame = i_anm->getFrameMax();
            ret = 1;
        }
    }

    i_anm->setFrame(frame);

    return ret;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::simpleAnmPlay(J3DAnmBase* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/simpleAnmPlay__9daAlink_cFP10J3DAnmBase.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80391FF8-80392004 01E658 000C+00 0/1 0/0 0/0 .rodata          swordMoveLocal0$60438 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const swordMoveLocal0[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391FF8, &swordMoveLocal0);
#pragma pop

/* 80392004-80392010 01E664 000C+00 0/1 0/0 0/0 .rodata          swordMoveLocal1$60439 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const swordMoveLocal1[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80392004, &swordMoveLocal1);
#pragma pop

/* 80392010-8039201C 01E670 000C+00 0/1 0/0 0/0 .rodata          copyRodTop$60447 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const copyRodTop[12] = {
    0x41, 0xDC, 0x00, 0x00, 0xC0, 0xA0, 0x00, 0x00, 0xC1, 0x48, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80392010, &copyRodTop);
#pragma pop

/* 800A92F0-800A9450 0A3C30 0160+00 2/2 0/0 0/0 .text            setSwordPos__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setSwordPos() {
    nofralloc
#include "asm/d/a/d_a_alink/setSwordPos__9daAlink_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80453248-8045324C 001848 0004+00 1/1 0/0 0/0 .sdata2          @61025 */
SECTION_SDATA2 static f32 lit_61025 = -18.5f;

/* 8045324C-80453250 00184C 0004+00 1/1 0/0 0/0 .sdata2          @61026 */
SECTION_SDATA2 static f32 lit_61026 = 7.0f / 50.0f;

/* 80453250-80453254 001850 0004+00 1/1 0/0 0/0 .sdata2          @61027 */
SECTION_SDATA2 static f32 lit_61027 = 61.0f / 5.0f;

/* 80453254-80453258 001854 0004+00 1/1 0/0 0/0 .sdata2          @61028 */
SECTION_SDATA2 static f32 lit_61028 = 21.0f / 5.0f;

/* 80453258-8045325C 001858 0004+00 1/1 0/0 0/0 .sdata2          @61029 */
SECTION_SDATA2 static f32 lit_61029 = -22.0f / 5.0f;

/* 8045325C-80453260 00185C 0004+00 1/1 0/0 0/0 .sdata2          @61030 */
SECTION_SDATA2 static f32 lit_61030 = -7.5f;

/* 80453260-80453264 001860 0004+00 1/1 0/0 0/0 .sdata2          @61031 */
SECTION_SDATA2 static f32 lit_61031 = -5.5f;

/* 80453264-80453268 001864 0004+00 1/1 0/0 0/0 .sdata2          @61032 */
SECTION_SDATA2 static f32 lit_61032 = -13.0f / 10.0f;

/* 80453268-8045326C 001868 0004+00 1/1 0/0 0/0 .sdata2          @61033 */
SECTION_SDATA2 static f32 lit_61033 = -1.0f / 10.0f;

/* 8045326C-80453270 00186C 0004+00 1/1 0/0 0/0 .sdata2          @61034 */
SECTION_SDATA2 static f32 lit_61034 = -7.0f / 10.0f;

/* 800A9450-800A9F4C 0A3D90 0AFC+00 4/4 0/0 0/0 .text            setItemMatrix__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setItemMatrix(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setItemMatrix__9daAlink_cFi.s"
}
#pragma pop

/* ############################################################################################## */
/* 8039201C-80392028 01E67C 000C+00 1/1 0/0 0/0 .rodata          @61047 */
SECTION_RODATA static u8 const lit_61047[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8039201C, &lit_61047);

/* 80453270-80453274 001870 0004+00 1/1 0/0 0/0 .sdata2          @61141 */
SECTION_SDATA2 static f32 lit_61141 = -21.0f;

/* 80453274-80453278 001874 0004+00 1/1 0/0 0/0 .sdata2          @61142 */
SECTION_SDATA2 static f32 lit_61142 = -13.0f;

/* 800A9F4C-800AA2BC 0A488C 0370+00 4/4 0/0 0/0 .text            setWolfItemMatrix__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setWolfItemMatrix() {
    nofralloc
#include "asm/d/a/d_a_alink/setWolfItemMatrix__9daAlink_cFv.s"
}
#pragma pop

/* 800AA2BC-800AA2E0 0A4BFC 0024+00 3/3 0/0 0/0 .text
 * setHandIndex__9daAlink_cFQ29daAlink_c11daAlink_ANM           */
void daAlink_c::setHandIndex(daAlink_c::daAlink_ANM i_anmID) {
    field_0x2f92 = getAnmData(i_anmID)->field_0x4;
    field_0x2f93 = getAnmData(i_anmID)->field_0x5;
}

/* 800AA2E0-800AA5E8 0A4C20 0308+00 1/1 0/0 0/0 .text            setSwordAtCollision__9daAlink_cFi
 */
void daAlink_c::setSwordAtCollision(int param_0) {
    cXyz sp74;

    if (checkCutDashAnime() && (checkCutDashEnemyHit(mAtCps[0]) ||
                                checkCutDashEnemyHit(mAtCps[1]) || checkCutDashEnemyHit(mAtCps[2])))
    {
        i_onNoResetFlg1(FLG1_UNK_4000000);
    }

    if (mProcID == PROC_CUT_FINISH_JUMP_UP) {
        sp74.set(current.pos.x + daAlinkHIO_cutFnJU_c0::m.mAttackOffset * cM_ssin(shape_angle.y),
                 field_0x3478,
                 current.pos.z + daAlinkHIO_cutFnJU_c0::m.mAttackOffset * cM_scos(shape_angle.y));
        f32 height = mSwordTopPos.y - field_0x3478;

        if (height < lit_7625) {
            height = lit_7625;
        }

        mAtCyl.SetH(height);

        if (param_0 != 0) {
            mAtCyl.StartCAt(sp74);
        } else {
            mAtCyl.MoveCAt(sp74);
        }

        g_dComIfG_gameInfo.play.mCcs.Set(&mAtCyl);
        g_dComIfG_gameInfo.play.mCcs.SetMass(&mAtCyl, 1);
        return;
    }

    sp74 = ((mSwordTopPos - field_0x3498) * field_0x33d0) + field_0x3498;
    cXyz sp68 = ((field_0x34b0 - field_0x34bc) * field_0x33d0) + field_0x34bc;

    mAtCps[0].SetStartEnd(field_0x3498, sp74);
    mAtCps[1].SetStartEnd(sp68, sp74);
    mAtCps[2].SetStartEnd(field_0x3498, sp68);
    mAtCps[0].OnAtSetBit();

    cXyz sp5C;
    if (param_0 != 0) {
        sp5C = cXyz::Zero;
    } else {
        sp5C = mSwordTopPos - field_0x34b0;
        mAtCps[1].OnAtSetBit();
        mAtCps[2].OnAtSetBit();
    }

    mAtCps[0].SetAtVec(sp5C);
    mAtCps[1].SetAtVec(sp5C);
    mAtCps[2].SetAtVec(sp5C);

    for (int i = 0; i < 3; i++) {
        g_dComIfG_gameInfo.play.mCcs.Set(&mAtCps[i]);
        g_dComIfG_gameInfo.play.mCcs.SetMass(&mAtCps[i], 1);
    }
}

/* 800AA5E8-800AA6B4 0A4F28 00CC+00 4/4 0/0 0/0 .text checkNoCollisionCorret__9daAlink_cFv */
BOOL daAlink_c::checkNoCollisionCorret() {
    if (i_checkModeFlg(0x12800) || mDemo.getDemoType() == 1 || mProcID == PROC_DOOR_OPEN ||
        (checkEventRun() &&
         (!strcmp(i_dComIfGp_getEventManager().getRunEventName(), "SCENE_EXIT") ||
          (fopAcM_getTalkEventPartner(this) &&
           fopAcM_getTalkEventPartner(this) == getMidnaActor()))) ||
        mEvtInfo.i_checkCommandDoor())
    {
        return true;
    }

    return false;
}

/* 800AA6B4-800AA714 0A4FF4 0060+00 1/1 0/0 0/0 .text            decSwordBlur__9daAlink_cFv */
void daAlink_c::decSwordBlur() {
    if (m_swordBlur.field_0x14 < 10) {
        m_swordBlur.field_0x14 = 0;
    } else {
        m_swordBlur.field_0x14 -= 10;
        m_swordBlur.traceBlur(&current.pos, &next.pos, shape_angle.y - field_0x2fe6);
    }
}

/* 800AA714-800AA7EC 0A5054 00D8+00 2/2 0/0 0/0 .text            resetWolfAtCollision__9daAlink_cFv
 */
void daAlink_c::resetWolfAtCollision() {
    if (i_checkNoResetFlg0(FLG0_UNK_40)) {
        if (!setSwordHitVibration(&mAtCyl) && !setSwordHitVibration(&field_0x850[0]) &&
            !setSwordHitVibration(&field_0x850[1]))
        {
            setSwordHitVibration(&field_0x850[2]);
        }

        field_0xFB8.OffTgWolfSpNoDamage();
        mAtCyl.ResetAtHit();
        i_offNoResetFlg0(FLG0_UNK_40);

        dCcD_Cyl* cyl = field_0x850;
        for (int i = 0; i < 3; i++) {
            cyl->OffAtSetBit();
            cyl->ResetAtHit();
            cyl->OffTgWolfSpNoDamage();
            cyl++;
        }
    }
}

/* 800AA7EC-800AA9DC 0A512C 01F0+00 1/1 0/0 0/0 .text            setWolfAtCollision__9daAlink_cFv */
void daAlink_c::setWolfAtCollision() {
    cXyz sp8;

    if (i_checkResetFlg0(RFLG0_UNK_2)) {
        if (!setSwordHitVibration(&mAtCyl) && !setSwordHitVibration(&field_0x850[0]) &&
            !setSwordHitVibration(&field_0x850[1]))
        {
            setSwordHitVibration(&field_0x850[2]);
        }

        if (mProcID == PROC_WOLF_ROLL_ATTACK) {
            mAtCyl.SetC(current.pos);

            g_dComIfG_gameInfo.play.mCcs.Set(&mAtCyl);
            g_dComIfG_gameInfo.play.mCcs.SetMass(&mAtCyl, 1);
        } else {
            sp8.set(current.pos.x + field_0x3438 * cM_ssin(shape_angle.y), current.pos.y,
                    current.pos.z + field_0x3438 * cM_scos(shape_angle.y));

            if (!i_checkNoResetFlg0(FLG0_UNK_40)) {
                mAtCyl.StartCAt(sp8);

                if (mProcID == PROC_WOLF_LOCK_ATTACK || mProcID == PROC_WOLF_JUMP_ATTACK) {
                    field_0xFB8.OnTgWolfSpNoDamage();

                    for (int i = 0; i < 3; i++) {
                        field_0x850[i].OnTgWolfSpNoDamage();
                    }
                }

                if (mCutType == 0x32 || mProcID == PROC_WOLF_LOCK_ATTACK) {
                    for (int i = 0; i < 3; i++) {
                        field_0x850[i].OnAtSetBit();
                    }
                }
            } else {
                mAtCyl.MoveCAt(sp8);
            }

            g_dComIfG_gameInfo.play.mCcs.Set(&mAtCyl);
            g_dComIfG_gameInfo.play.mCcs.SetMass(&mAtCyl, 1);
        }

        i_onNoResetFlg0(FLG0_UNK_40);
    } else {
        resetWolfAtCollision();
    }
}

/* 800AA9DC-800AAABC 0A531C 00E0+00 3/3 0/0 0/0 .text            resetAtCollision__9daAlink_cFi */
void daAlink_c::resetAtCollision(int param_0) {
    if (i_checkNoResetFlg0(FLG0_UNK_40)) {
        if (param_0 && !setSwordHitVibration(&mAtCps[0]) && !setSwordHitVibration(&mAtCps[1]) &&
            !setSwordHitVibration(&mAtCps[2]) && !setSwordHitVibration(&mAtCyl))
        {
            setSwordHitVibration(&field_0xFB8);
        }

        i_offNoResetFlg0(FLG0_UNK_40);

        for (int i = 0; i < 3; i++) {
            mAtCps[i].ResetAtHit();
            mAtCps[i].OffAtSetBit();
        }

        field_0xFB8.ResetAtHit();
    }
}

/* ############################################################################################## */
/* 80392028-80392034 01E688 000C+00 0/1 0/0 0/0 .rodata          bottleTopPos$61387 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const bottleTopPos[12] = {
    0x00, 0x00, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80392028, &bottleTopPos);
#pragma pop

/* 800AAABC-800AB878 0A53FC 0DBC+00 1/1 0/0 0/0 .text            setAtCollision__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setAtCollision() {
    nofralloc
#include "asm/d/a/d_a_alink/setAtCollision__9daAlink_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80392034-80392040 01E694 000C+00 1/1 0/0 0/0 .rodata          localHead$61779 */
SECTION_RODATA static u8 const localHead[12] = {
    0x41, 0x70, 0x00, 0x00, 0x40, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80392034, &localHead);

/* 800AB878-800ABAE0 0A61B8 0268+00 1/1 0/0 0/0 .text            setWolfCollisionPos__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setWolfCollisionPos() {
    nofralloc
#include "asm/d/a/d_a_alink/setWolfCollisionPos__9daAlink_cFv.s"
}
#pragma pop

/* 800ABAE0-800ABB28 0A6420 0048+00 2/2 0/0 0/0 .text            initLockAt__9daAlink_cFv */
void daAlink_c::initLockAt() {
    mAtCps[0].OnAtSPrmBit(0x20);
    mAtCps[0].OnAtNoHitMark();
    mAtCps[0].OffAtNoConHit();
    mAtCps[0].ResetAtHit();
}

/* 800ABB28-800ABB84 0A6468 005C+00 3/3 0/0 0/0 .text            cancelLockAt__9daAlink_cFv */
void daAlink_c::cancelLockAt() {
    mAtCps[0].OffAtSPrmBit(0x20);
    mAtCps[0].OffAtNoHitMark();
    mAtCps[0].OnAtNoConHit();
    mAtCps[0].ResetAtHit();
    field_0x814.SetAtApid(0xFFFFFFFF);
}

/* 800ABB84-800ABDB8 0A64C4 0234+00 1/1 0/0 0/0 .text            setCollisionPos__9daAlink_cFv */
void daAlink_c::setCollisionPos() {
    cXyz sp74;
    mDoMtx_multVecZero(mpLinkModel->i_getAnmMtx(0), &sp74);
    cXyz sp68 = (sp74 + mHeadTopPos) * lit_5943;

    f32 var_f31;
    if (sp74.y > mHeadTopPos.y) {
        sp68.y = mHeadTopPos.y;
        var_f31 = sp74.y - mHeadTopPos.y;
    } else {
        sp68.y = sp74.y;
        var_f31 = mHeadTopPos.y - sp74.y;
    }

    if (var_f31 < lit_10040) {
        sp68.y -= lit_5943 * (lit_10040 - var_f31);
        var_f31 = lit_10040;
    }

    field_0x850[2].SetC(sp68);
    field_0x850[2].SetH(var_f31);

    sp68 = (((mLeftFootPos + mRightFootPos) * lit_5943) + sp74) * lit_5943;
    f32 var_f0 = mLeftFootPos.y > mRightFootPos.y ? mRightFootPos.y : mLeftFootPos.y;

    f32 var_f31_2;
    if (sp74.y > var_f0) {
        sp68.y = var_f0;
        var_f31_2 = sp74.y - var_f0;
    } else {
        sp68.y = sp74.y;
        var_f31_2 = var_f0 - sp74.y;
    }

    if (var_f31_2 < lit_10040) {
        sp68.y -= lit_5943 * (lit_10040 - var_f31_2);
        var_f31_2 = lit_10040;
    }

    field_0x850[0].SetC(sp68);
    field_0x850[0].SetH(var_f31_2);

    sp68 = (field_0x850[0].GetC() + field_0x850[2].GetC()) * lit_5943;
    f32 temp_f31 = lit_5943 * (field_0x850[0].GetH() + field_0x850[2].GetH());

    field_0x850[1].SetC(sp68);
    field_0x850[1].SetH(temp_f31);
    field_0x3454 = field_0x3834.y;
}

/* 800ABDB8-800AC328 0A66F8 0570+00 1/1 0/0 0/0 .text            setCollision__9daAlink_cFv */
#ifdef NONMATCHING
void daAlink_c::setCollision() {
    field_0x814.Move();
    field_0x173c.Move();

    dCcD_Cyl* var_r26 = field_0x850;
    CcG_Tg_HitMark var_r3 = checkMagicArmorNoDamage() ? CcG_Tg_UNK_MARK_8 : CcG_Tg_UNK_MARK_6;

    if (checkIronBallWaitAnime()) {
        field_0x2e44.offPassNum(0x11);
    } else {
        field_0x2e44.onPassNum(0x11);
    }

    for (int i = 0; i < 3; i++) {
        var_r26->SetTgHitMark(var_r3);
        var_r26++;
    }

    dCcD_Cyl* var_r31 = field_0x850;
    if (checkIronBallWaitAnime() ||
        (checkPlayerGuardAndAttack() && !i_checkEndResetFlg1(ERFLG1_UNK_20)))
    {
        BOOL var_r27;
        if (field_0x3114 >= 0x3000 && field_0x3114 <= 0x5000) {
            var_r27 = 1;
        } else {
            var_r27 = 0;
        }

        for (int i = 0; i < 3; i++) {
            if (var_r27) {
                var_r31->OnTgSpShield();
                var_r31->OffTgShield();
            } else {
                var_r31->OffTgSpShield();
                var_r31->OnTgShield();
            }

            if (checkHorseRide()) {
                var_r31->OffTgShieldFrontRange();
            } else {
                var_r31->OnTgShieldFrontRange();
            }

            var_r31++;
        }
    } else {
        for (int i = 0; i < 3; i++) {
            var_r31->OffTgShield();
            var_r31->OffTgSpShield();

            if (i_checkWolf()) {
                var_r31->OffTgShieldFrontRange();
            } else {
                var_r31->OnTgShieldFrontRange();
            }

            var_r31++;
        }
    }

    if (checkNoCollisionCorret() && !checkOctaIealSpecialCollect()) {
        i_onNoResetFlg3(FLG3_UNK_20000000);
    }

    if (i_checkWolf()) {
        setWolfCollisionPos();
    } else {
        setCollisionPos();
    }

    if (mDamageTimer != 0 || i_checkModeFlg(8)) {
        for (int i = 0; i < 3; i++) {
            field_0x850[i].OffTgSetBit();
            field_0x850[i].ResetTgHit();
        }

        if (i_checkWolf()) {
            field_0xFB8.OffTgSetBit();
            field_0xFB8.ResetTgHit();
        }
    } else {
        for (int i = 0; i < 3; i++) {
            field_0x850[i].OnTgSetBit();
        }

        if (i_checkWolf()) {
            field_0xFB8.OnTgSetBit();
        }
    }

    mDoMtx_multVecSR(getShieldMtx(), &cXyz::BaseZ, &field_0x351c);

    if (checkIronBallWaitAnime() || field_0x351c.absXZ() > lit_8782) {
        field_0x306c = field_0x351c.atan2sX_Z();
    } else {
        field_0x306c = shape_angle.y + mBodyAngle.y;
    }

    g_dComIfG_gameInfo.play.mCcs.Set(&field_0x850[0]);
    g_dComIfG_gameInfo.play.mCcs.SetMass(&field_0x850[0], 1);

    if (i_checkWolf()) {
        setWolfAtCollision();

        for (int i = 0; i < 3; i++) {
            g_dComIfG_gameInfo.play.mCcs.Set(&field_0x850[i]);
            g_dComIfG_gameInfo.play.mCcs.SetMass(&field_0x850[i], 1);
        }

        if (i_checkModeFlg(0x100000)) {
            field_0xFB8.OffCoSetBit();
            field_0xFB8.ResetCoHit();
        } else {
            field_0xFB8.OnCoSetBit();
        }

        g_dComIfG_gameInfo.play.mCcs.Set(&field_0xFB8);
        g_dComIfG_gameInfo.play.mCcs.SetMass(&field_0xFB8, 1);
    } else {
        for (int i = 0; i < 3; i++) {
            g_dComIfG_gameInfo.play.mCcs.Set(&field_0x850[i]);
            g_dComIfG_gameInfo.play.mCcs.SetMass(&field_0x850[i], 1);
        }

        setAtCollision();
    }

    dCcD_Cyl* var_r27_2 = field_0x850;
    dCcD_Cyl* var_r26_6 = field_0xC04;
    for (int i = 0; i < 3; i++) {
        var_r26_6->SetC(var_r27_2->GetC());
        var_r26_6->SetR(var_r27_2->GetR());
        var_r26_6->SetH(var_r27_2->GetH());
        g_dComIfG_gameInfo.play.mCcs.Set(var_r26_6);

        var_r27_2++;
        var_r26_6++;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setCollision() {
    nofralloc
#include "asm/d/a/d_a_alink/setCollision__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800AC328-800AC378 0A6C68 0050+00 1/0 0/0 0/0 .text            getBaseAnimeFrame__9daAlink_cCFv */
// matches with literals
#ifdef NONMATCHING
f32 daAlink_c::getBaseAnimeFrame() const {
    if (mProcID == PROC_SUMOU_ACTION && mSpeedModifier > 0.0f) {
        return field_0x300c;
    }

    return mUnderFrameCtrl[0].getFrame();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm f32 daAlink_c::getBaseAnimeFrame() const {
    nofralloc
#include "asm/d/a/d_a_alink/getBaseAnimeFrame__9daAlink_cCFv.s"
}
#pragma pop
#endif

/* 800AC378-800AC394 0A6CB8 001C+00 1/0 0/0 0/0 .text            setAnimeFrame__9daAlink_cFf */
void daAlink_c::setAnimeFrame(f32 frame) {
    mUnderFrameCtrl[0].setFrame(frame);
    mUnderFrameCtrl[1].setFrame(frame);
    mUnderFrameCtrl[2].setFrame(frame);

    mUpperFrameCtrl[0].setFrame(frame);
    mUpperFrameCtrl[1].setFrame(frame);
    mUpperFrameCtrl[2].setFrame(frame);
}

/* 800AC394-800AC450 0A6CD4 00BC+00 6/6 0/0 0/0 .text
 * setFrameCtrl__9daAlink_cFP16daPy_frameCtrl_cUcssff           */
void daAlink_c::setFrameCtrl(daPy_frameCtrl_c* i_ctrl, u8 i_attr, s16 i_start, s16 i_end,
                             f32 i_rate, f32 i_frame) {
    if (i_checkNoResetFlg0(FLG0_UNDERWATER)) {
        if (checkZoraWearAbility()) {
            i_rate *= daAlinkHIO_magneBoots_c0::m.mZoraWaterAnmSpeed;
        } else {
            i_rate *= daAlinkHIO_magneBoots_c0::m.mWaterWalkAnmRate;
        }
    }

    i_ctrl->setFrameCtrl(i_attr, i_start, i_end, i_rate, i_frame);
}

/* ############################################################################################## */
/* 80453278-80453280 001878 0008+00 1/1 0/0 0/0 .sdata2          kandelaarAnm$62207 */
SECTION_SDATA2 static daAlink_BckData kandelaarAnm[2] = {
    {0x026A, 0x0268},  // waits, waitk
    {0x0266, 0x0264},  // waiths, waithk
};

/* 800AC450-800AC558 0A6D90 0108+00 23/23 0/0 0/0 .text
 * getMainBckData__9daAlink_cCFQ29daAlink_c11daAlink_ANM        */
const daAlink_BckData* daAlink_c::getMainBckData(daAlink_c::daAlink_ANM i_anmID) const {
    if (mEquipItem == KANTERA) {
        if (i_anmID == ANM_WAIT) {
            return &kandelaarAnm[0];
        }

        if (i_anmID == ANM_HORSE_WAIT) {
            return &kandelaarAnm[1];
        }
    }

    if (checkUpperGuardAnime() && i_anmID < 0x14) {
        return &m_mainBckShield[i_anmID];
    }

    if ((mEquipItem == EQUIP_SWORD && i_anmID < 0x15 && i_anmID >= 0x10) ||
        (i_anmID == ANM_SWIM_WAIT && mEquipItem != NO_ITEM))
    {
        return &m_mainBckSword[i_anmID - 0x10];
    }

    if (checkFishingRodAndLureItem() && i_anmID < 0x1C) {
        return &m_mainBckFishing[i_anmID];
    }

    return &m_anmDataTable[i_anmID].field_0x0;
}

/* 800AC558-800AC5B4 0A6E98 005C+00 51/51 0/0 2/2 .text
 * checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM */
BOOL daAlink_c::checkUnderMove0BckNoArc(daAlink_c::daAlink_ANM i_anmID) const {
    return mUnderAnmHeap[0].checkNoSetArcNo() &&
           mUnderAnmHeap[0].getIdx() == getMainBckData(i_anmID)->m_underID;
}

/* 800AC5B4-800AC610 0A6EF4 005C+00 4/4 0/0 0/0 .text
 * checkUnderMove1BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM */
BOOL daAlink_c::checkUnderMove1BckNoArc(daAlink_c::daAlink_ANM i_anmID) const {
    return mUnderAnmHeap[1].checkNoSetArcNo() &&
           mUnderAnmHeap[1].getIdx() == getMainBckData(i_anmID)->m_underID;
}

/* 800AC610-800AC738 0A6F50 0128+00 3/3 0/0 0/0 .text
 * getUnderUpperAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMPP15J3DAnmTransformPP15J3DAnmTransformiUl
 */
int daAlink_c::getUnderUpperAnime(daAlink_c::daAlink_ANM i_anmID, J3DAnmTransform** i_underBck,
                                  J3DAnmTransform** i_upperBck, int i_anmPackID, u32 i_bufSize) {
    s32 var_r31;

    const daAlink_BckData* bck_data = getMainBckData(i_anmID);
    i_offNoResetFlg0(FLG0_UNK_2);

    *i_underBck = (J3DAnmTransform*)getAnimeResource(&mUnderAnmHeap[i_anmPackID],
                                                     bck_data->m_underID, i_bufSize);

    if (*i_underBck != NULL) {
        var_r31 = 1;
    } else {
        *i_underBck = getNowAnmPackUnder((daAlink_UNDER)i_anmPackID);
        var_r31 = 0;
    }

    if (bck_data->m_underID != bck_data->m_upperID) {
        if (i_bufSize == 0x10800) {
            i_bufSize = (3 - i_anmPackID) * 0x2C00;
        }

        *i_upperBck = (J3DAnmTransform*)getAnimeResource(&mUpperAnmHeap[i_anmPackID],
                                                         bck_data->m_upperID, i_bufSize);
        if (*i_upperBck != NULL) {
            var_r31 |= 1;
        } else {
            *i_upperBck = getNowAnmPackUpper((daAlink_UPPER)i_anmPackID);
        }
    } else {
        if (!mUpperAnmHeap[i_anmPackID].checkNoSetIdx()) {
            var_r31 |= 1;
        }

        *i_upperBck = NULL;
        mUpperAnmHeap[i_anmPackID].resetIdx();
    }

    return var_r31;
}

/* 800AC738-800AC754 0A7078 001C+00 7/7 0/0 0/0 .text setDoubleAnimeBlendRatio__9daAlink_cFf */
void daAlink_c::setDoubleAnimeBlendRatio(f32 param_0) {
    f32 tmp = lit_6040;  // remove later
    mNowAnmPackUnder[0].setRatio(tmp - param_0);
    mNowAnmPackUnder[1].setRatio(param_0);
    mNowAnmPackUpper[0].setRatio(tmp - param_0);
    mNowAnmPackUpper[1].setRatio(param_0);
}

/* 800AC754-800ACA14 0A7094 02C0+00 2/2 0/0 0/0 .text
 * commonDoubleAnime__9daAlink_cFP15J3DAnmTransformP15J3DAnmTransformP15J3DAnmTransformP15J3DAnmTransformfffi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::commonDoubleAnime(J3DAnmTransform* param_0, J3DAnmTransform* param_1,
                                      J3DAnmTransform* param_2, J3DAnmTransform* param_3,
                                      f32 param_4, f32 param_5, f32 param_6, int param_7) {
    nofralloc
#include "asm/d/a/d_a_alink/func_800AC754.s"
}
#pragma pop

/* 800ACA14-800ACD40 0A7354 032C+00 14/14 0/0 0/0 .text
 * setDoubleAnime__9daAlink_cFfffQ29daAlink_c11daAlink_ANMQ29daAlink_c11daAlink_ANMif */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setDoubleAnime(f32 param_0, f32 param_1, f32 param_2,
                                   daAlink_c::daAlink_ANM param_3, daAlink_c::daAlink_ANM param_4,
                                   int param_5, f32 param_6) {
    nofralloc
#include "asm/d/a/d_a_alink/setDoubleAnime__9daAlink_cFfffQ29daAlink_c11daAlink_ANMQ29daAlink_c11daAlink_ANMif.s"
}
#pragma pop

/* 800ACD40-800ACF80 0A7680 0240+00 2/2 0/0 0/0 .text
 * commonSingleAnime__9daAlink_cFP15J3DAnmTransformP15J3DAnmTransformffs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::commonSingleAnime(J3DAnmTransform* param_0, J3DAnmTransform* param_1,
                                      f32 param_2, f32 param_3, s16 param_4) {
    nofralloc
#include "asm/d/a/d_a_alink/commonSingleAnime__9daAlink_cFP15J3DAnmTransformP15J3DAnmTransformffs.s"
}
#pragma pop

/* 800ACF80-800ACFB0 0A78C0 0030+00 88/88 0/0 0/0 .text
 * setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM     */
void daAlink_c::setSingleAnimeBase(daAlink_c::daAlink_ANM i_anmID) {
    setSingleAnime(i_anmID, lit_6040, FLOAT_LABEL(lit_6108), -1, lit_6109);
}

/* 800ACFB0-800ACFE0 0A78F0 0030+00 27/27 0/0 0/0 .text
 * setSingleAnimeBaseMorf__9daAlink_cFQ29daAlink_c11daAlink_ANMf */
void daAlink_c::setSingleAnimeBaseMorf(daAlink_c::daAlink_ANM i_anmID, f32 param_1) {
    setSingleAnime(i_anmID, lit_6040, FLOAT_LABEL(lit_6108), -1, param_1);
}

/* 800ACFE0-800AD00C 0A7920 002C+00 77/77 0/0 0/0 .text
 * setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff */
void daAlink_c::setSingleAnimeBaseSpeed(daAlink_c::daAlink_ANM i_anmID, f32 param_1, f32 param_2) {
    setSingleAnime(i_anmID, param_1, FLOAT_LABEL(lit_6108), -1, param_2);
}

/* 800AD00C-800AD0F4 0A794C 00E8+00 58/58 0/0 0/0 .text
 * setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf     */
int daAlink_c::setSingleAnime(daAlink_c::daAlink_ANM i_anmID, f32 i_rate, f32 i_start, s16 i_end,
                              f32 i_morf) {
    J3DAnmTransform* under_bck;
    J3DAnmTransform* upper_bck;

    getUnderUpperAnime(i_anmID, &under_bck, &upper_bck, 0, 0x10800);
    commonSingleAnime(under_bck, upper_bck, i_rate, i_start, i_end);

    if (i_morf >= FLOAT_LABEL(lit_6108)) {
        field_0x2060->initOldFrameMorf(i_morf, 0, 35);
    }

    setHandIndex(i_anmID);
    setFaceBasicAnime(i_anmID);

    return 1;
}

/* 800AD0F4-800AD128 0A7A34 0034+00 93/93 0/0 0/0 .text
 * setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c */
int daAlink_c::setSingleAnimeParam(daAlink_c::daAlink_ANM i_anmID,
                                   daAlinkHIO_anm_c const* i_anmData) {
    return setSingleAnime(i_anmID, i_anmData->mSpeed, i_anmData->mStartFrame, i_anmData->mEndFrame,
                          i_anmData->mInterpolation);
}

/* 800AD128-800AD170 0A7A68 0048+00 1/1 0/0 0/0 .text
 * animePlay__9daAlink_cFP15J3DAnmTransformP16daPy_frameCtrl_c  */
void daAlink_c::animePlay(J3DAnmTransform* i_anm, daPy_frameCtrl_c* i_frameCtrl) {
    if (i_anm != NULL) {
        i_frameCtrl->updateFrame();
        i_anm->setFrame(i_frameCtrl->getFrame());
    }
}

/* 800AD170-800AD2D8 0A7AB0 0168+00 2/2 0/0 0/0 .text            allAnimePlay__9daAlink_cFv */
void daAlink_c::allAnimePlay() {
    J3DAnmTransform* under0_bck = getNowAnmPackUnder(UNDER_0);
    J3DAnmTransform* under1_bck = getNowAnmPackUnder(UNDER_1);
    J3DAnmTransform* upper0_bck = getNowAnmPackUpper(UPPER_0);
    J3DAnmTransform* upper1_bck = getNowAnmPackUpper(UPPER_1);

    if (i_checkWolf()) {
        setWolfAnmVoice();
    }

    for (int i = 0; i < 3; i++) {
        animePlay(getNowAnmPackUnder((daAlink_UNDER)i), &mUnderFrameCtrl[i]);
    }

    if (upper0_bck != under0_bck) {
        animePlay(upper0_bck, &mUpperFrameCtrl[0]);
    }

    if (upper1_bck != under1_bck) {
        animePlay(upper1_bck, &mUpperFrameCtrl[1]);
    }

    animePlay(getNowAnmPackUpper((daAlink_UPPER)2), &mUpperFrameCtrl[2]);

    if (field_0x2f92 == 0xFB && mpDemoHLTmpBck != NULL) {
        mpDemoHLTmpBck->play();
    }

    if (field_0x2f93 == 0xFB && mpDemoHRTmpBck != NULL) {
        mpDemoHRTmpBck->play();
    }

    if (i_checkNoResetFlg1(FLG1_UNK_10)) {
        if (field_0x069c != NULL && field_0x069c->getBlkAnm() != NULL) {
            simpleAnmPlay(field_0x069c->getBlkAnm());
        }

        if (field_0x068c != NULL) {
            simpleAnmPlay(field_0x068c);
        }

        if (mpDemoFCTmpBck != NULL) {
            mpDemoFCTmpBck->play();
        }
    }

    if (mpDemoHDTmpBck != NULL) {
        mpDemoHDTmpBck->play();
    }

    simpleAnmPlay(field_0x06f4);
    simpleAnmPlay(field_0x06f8);
}

/* 800AD2D8-800AD340 0A7C18 0068+00 2/2 0/0 0/0 .text            setUpperAnimeMorf__9daAlink_cFf */
void daAlink_c::setUpperAnimeMorf(f32 param_0) {
    if (param_0 >= FLOAT_LABEL(lit_6108)) {
        u16 temp_r29;
        u16 temp_r28;

        if (field_0x2060->getOldFrameRate() > lit_9054 &&
            field_0x2060->getOldFrameStartJoint() == 0)
        {
            temp_r29 = 0;
            temp_r28 = field_0x30c6;
        } else {
            temp_r29 = field_0x30a8;
            temp_r28 = field_0x30aa;
        }

        field_0x2060->initOldFrameMorf(param_0, temp_r29, temp_r28);
    }
}

/* 800AD340-800AD374 0A7C80 0034+00 15/15 0/0 0/0 .text            setUpperAnimeBase__9daAlink_cFUs
 */
void daAlink_c::setUpperAnimeBase(u16 i_anmResID) {
    setUpperAnime(i_anmResID, UPPER_2, lit_6040, FLOAT_LABEL(lit_6108), -1, lit_6109);
}

/* 800AD374-800AD3A8 0A7CB4 0034+00 7/7 0/0 0/0 .text setUpperAnimeBaseMorf__9daAlink_cFUsf */
void daAlink_c::setUpperAnimeBaseMorf(u16 i_anmResID, f32 i_morf) {
    setUpperAnime(i_anmResID, UPPER_2, lit_6040, FLOAT_LABEL(lit_6108), -1, i_morf);
}

/* 800AD3A8-800AD3D8 0A7CE8 0030+00 18/18 0/0 0/0 .text setUpperAnimeBaseSpeed__9daAlink_cFUsff */
void daAlink_c::setUpperAnimeBaseSpeed(u16 i_anmResID, f32 i_speed, f32 i_morf) {
    setUpperAnime(i_anmResID, UPPER_2, i_speed, FLOAT_LABEL(lit_6108), -1, i_morf);
}

/* 800AD3D8-800AD6F0 0A7D18 0318+00 13/13 0/0 0/0 .text
 * setUpperAnime__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERffsf  */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setUpperAnime(u16 i_anmResID, daAlink_c::daAlink_UPPER param_1, f32 i_speed,
                                  f32 i_startFrame, s16 i_endFrame, f32 i_morf) {
    nofralloc
#include "asm/d/a/d_a_alink/setUpperAnime__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERffsf.s"
}
#pragma pop

/* 800AD6F0-800AD724 0A8030 0034+00 21/21 0/0 0/0 .text
 * setUpperAnimeParam__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERPC16daAlinkHIO_anm_c */
void daAlink_c::setUpperAnimeParam(u16 i_anmResID, daAlink_c::daAlink_UPPER param_1,
                                   daAlinkHIO_anm_c const* i_anmParam) {
    setUpperAnime(i_anmResID, param_1, i_anmParam->mSpeed, i_anmParam->mStartFrame,
                  i_anmParam->mEndFrame, i_anmParam->mInterpolation);
}

/* 800AD724-800AD8F4 0A8064 01D0+00 65/65 0/0 0/0 .text
 * resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf     */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::resetUpperAnime(daAlink_c::daAlink_UPPER param_0, f32 param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf.s"
}
#pragma pop

/* 800AD8F4-800AD964 0A8234 0070+00 2/2 0/0 0/0 .text            setUnderAnimeMorf__9daAlink_cFf */
void daAlink_c::setUnderAnimeMorf(f32 param_0) {
    if (param_0 >= FLOAT_LABEL(lit_6108)) {
        if (field_0x2060->getOldFrameRate() > lit_9054 &&
            (field_0x2060->getOldFrameStartJoint() == 0 ||
             field_0x2060->getOldFrameStartJoint() == 1))
        {
            field_0x2060->initOldFrameMorf(param_0, 0, 35);
        } else {
            field_0x2060->initOldFrameMorf(param_0, 16, 35);
        }
    }
}

/* 800AD964-800ADAB8 0A82A4 0154+00 5/5 0/0 0/0 .text
 * setUnderAnime__9daAlink_cFUsQ29daAlink_c13daAlink_UNDERffsf  */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::setUnderAnime(u16 param_0, daAlink_c::daAlink_UNDER param_1, f32 param_2,
                                 f32 param_3, s16 param_4, f32 param_5) {
    nofralloc
#include "asm/d/a/d_a_alink/setUnderAnime__9daAlink_cFUsQ29daAlink_c13daAlink_UNDERffsf.s"
}
#pragma pop

/* 800ADAB8-800ADAEC 0A83F8 0034+00 2/2 0/0 0/0 .text
 * setUnderAnimeParam__9daAlink_cFUsQ29daAlink_c13daAlink_UNDERPC16daAlinkHIO_anm_c */
int daAlink_c::setUnderAnimeParam(u16 i_resID, daAlink_c::daAlink_UNDER i_packIdx,
                                  daAlinkHIO_anm_c const* i_anmData) {
    return setUnderAnime(i_resID, i_packIdx, i_anmData->mSpeed, i_anmData->mStartFrame,
                         i_anmData->mEndFrame, i_anmData->mInterpolation);
}

/* 800ADAEC-800ADB78 0A842C 008C+00 17/17 0/0 0/0 .text
 * resetUnderAnime__9daAlink_cFQ29daAlink_c13daAlink_UNDERf     */
int daAlink_c::resetUnderAnime(daAlink_c::daAlink_UNDER param_0, f32 i_morf) {
    mNowAnmPackUnder[param_0].setAnmTransform(NULL);
    mNowAnmPackUnder[param_0].setRatio(FLOAT_LABEL(lit_6108));
    mUnderAnmHeap[param_0].resetIdx();
    mUnderFrameCtrl[param_0].init(0);
    setUnderAnimeMorf(i_morf);
    return 1;
}

/* 800ADB78-800ADC50 0A84B8 00D8+00 34/34 0/0 0/0 .text setOldRootQuaternion__9daAlink_cFsss */
void daAlink_c::setOldRootQuaternion(s16 param_0, s16 param_1, s16 param_2) {
    Quaternion quat;
    Quaternion quat2;
    Quaternion* old_frame_quat = field_0x2060->getOldFrameQuaternion(0);

    if (param_0 != 0 || param_1 != 0) {
        JMAEulerToQuat(param_0, param_1, 0, &quat);
        quat2 = *old_frame_quat;
        mDoMtx_QuatConcat(&quat, &quat2, old_frame_quat);
    }

    if (param_2 != 0) {
        JMAEulerToQuat(0, 0, param_2, &quat);
        quat2 = *old_frame_quat;
        mDoMtx_QuatConcat(&quat, &quat2, old_frame_quat);
    }
}

/* 800ADC50-800ADCEC 0A8590 009C+00 2/2 0/0 0/0 .text            checkAtnLeftAnime__9daAlink_cFv */
BOOL daAlink_c::checkAtnLeftAnime() {
    return checkUnderMove0BckNoArc(ANM_ATN_WAIT_LEFT) ||
           checkUnderMove0BckNoArc(ANM_ATN_WALK_LEFT) ||
           checkUnderMove0BckNoArc(ANM_ATN_RUN_LEFT) ||
           checkUnderMove0BckNoArc(ANM_ATN_LOCK_WALK_LEFT) ||
           checkUnderMove0BckNoArc(ANM_ATN_LOCK_RUN_LEFT);
}

/* 800ADCEC-800ADD88 0A862C 009C+00 1/1 0/0 0/0 .text            checkAtnRightAnime__9daAlink_cFv */
BOOL daAlink_c::checkAtnRightAnime() {
    return checkUnderMove0BckNoArc(ANM_ATN_WAIT_RIGHT) ||
           checkUnderMove0BckNoArc(ANM_ATN_WALK_RIGHT) ||
           checkUnderMove0BckNoArc(ANM_ATN_RUN_RIGHT) ||
           checkUnderMove0BckNoArc(ANM_ATN_LOCK_WALK_RIGHT) ||
           checkUnderMove0BckNoArc(ANM_ATN_LOCK_RUN_RIGHT);
}

/* 800ADD88-800ADE14 0A86C8 008C+00 3/3 0/0 0/0 .text getMoveGroundAngleSpeedRate__9daAlink_cFv */
f32 daAlink_c::getMoveGroundAngleSpeedRate() {
    s16 gnd_angle;

    if (field_0x3174 == 8 || i_checkMagneBootsOn() || !mLinkAcch.ChkGroundHit()) {
        gnd_angle = 0;
    } else {
        gnd_angle = getGroundAngle(&mLinkAcch.m_gnd, current.angle.y);
    }

    return fabsf((mNormalSpeed * cM_scos(gnd_angle)) / field_0x594);
}

/* 800ADE14-800AEA70 0A8754 0C5C+00 20/20 0/0 0/0 .text            setBlendMoveAnime__9daAlink_cFf
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setBlendMoveAnime(f32 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setBlendMoveAnime__9daAlink_cFf.s"
}
#pragma pop

/* ############################################################################################## */
/* 80453280-80453284 001880 0004+00 2/2 0/0 0/0 .sdata2          @63332 */
SECTION_SDATA2 static f32 lit_63332 = -99.0f / 100.0f;

/* 80453284-80453288 001884 0004+00 1/1 0/0 0/0 .sdata2          @63333 */
SECTION_SDATA2 static f32 lit_63333 = 0.8659999966621399f;

/* 80453288-8045328C 001888 0004+00 2/2 0/0 0/0 .sdata2          @63334 */
SECTION_SDATA2 static f32 lit_63334 = -0.8659999966621399f;

/* 800AEA70-800AF11C 0A93B0 06AC+00 17/17 0/0 0/0 .text setBlendAtnMoveAnime__9daAlink_cFf */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setBlendAtnMoveAnime(f32 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setBlendAtnMoveAnime__9daAlink_cFf.s"
}
#pragma pop

/* 800AF11C-800AF4B0 0A9A5C 0394+00 1/1 0/0 0/0 .text setBlendAtnBackMoveAnime__9daAlink_cFf */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setBlendAtnBackMoveAnime(f32 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setBlendAtnBackMoveAnime__9daAlink_cFf.s"
}
#pragma pop

/* 800AF4B0-800AF61C 0A9DF0 016C+00 29/29 0/0 0/0 .text            setFaceBck__9daAlink_cFUsiUs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setFaceBck(u16 param_0, int param_1, u16 param_2) {
    nofralloc
#include "asm/d/a/d_a_alink/setFaceBck__9daAlink_cFUsiUs.s"
}
#pragma pop

/* ############################################################################################## */
/* 8045328C-80453290 00188C 0004+00 2/2 0/0 0/0 .sdata2          @63482 */
SECTION_SDATA2 static f32 lit_63482 = 0.012000000104308128f;

/* 800AF61C-800AF7D0 0A9F5C 01B4+00 7/7 0/0 0/0 .text            setFaceBtp__9daAlink_cFUsiUs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setFaceBtp(u16 param_0, int param_1, u16 param_2) {
    nofralloc
#include "asm/d/a/d_a_alink/setFaceBtp__9daAlink_cFUsiUs.s"
}
#pragma pop

/* 800AF7D0-800AF8A0 0AA110 00D0+00 6/6 0/0 0/0 .text            setFaceBtk__9daAlink_cFUsiUs */
// swapped instructions
#ifdef NONMATCHING
void daAlink_c::setFaceBtk(u16 i_resID, int param_1, u16 i_arcNo) {
    int var_r4;
    u16 arc_no;
    u16 res_id;

    res_id = i_resID;
    var_r4 = param_1;
    arc_no = i_arcNo;

    setIdxMask(&arc_no, &res_id);

    J3DAnmTextureSRTKey* btk;
    if (arc_no != 0xFFFF) {
        btk = (J3DAnmTextureSRTKey*)mFaceBtkHeap.loadDataDemoRID(res_id, arc_no);
        i_offNoResetFlg1(FLG1_UNK_2000);
    } else if (var_r4 != 0) {
        btk = (J3DAnmTextureSRTKey*)mFaceBtkHeap.loadDataPriIdx(res_id);
    } else {
        btk = (J3DAnmTextureSRTKey*)mFaceBtkHeap.loadDataIdx(res_id);
    }

    if (btk != NULL) {
        mpFaceBtk = btk;
        mpFaceBtk->searchUpdateMaterialID(field_0x06c0);
        field_0x06c0->entryTexMtxAnimator(mpFaceBtk);
        daAlink_matAnm_c::setMorfFrame(3);
        mpFaceBtk->setFrame(FLOAT_LABEL(lit_6108));
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setFaceBtk(u16 param_0, int param_1, u16 param_2) {
    nofralloc
#include "asm/d/a/d_a_alink/setFaceBtk__9daAlink_cFUsiUs.s"
}
#pragma pop
#endif

/* 800AF8A0-800AF9A8 0AA1E0 0108+00 31/31 0/0 0/0 .text
 * setFaceBasicTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM  */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setFaceBasicTexture(daAlink_c::daAlink_FTANM param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setFaceBasicTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM.s"
}
#pragma pop

/* 800AF9A8-800AFAA8 0AA2E8 0100+00 5/5 0/0 0/0 .text
 * setFaceBasicAnime__9daAlink_cFQ29daAlink_c11daAlink_ANM      */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setFaceBasicAnime(daAlink_c::daAlink_ANM param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setFaceBasicAnime__9daAlink_cFQ29daAlink_c11daAlink_ANM.s"
}
#pragma pop

/* 800AFAA8-800AFB14 0AA3E8 006C+00 16/16 0/0 0/0 .text
 * setFacePriTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM    */
void daAlink_c::setFacePriTexture(daAlink_c::daAlink_FTANM i_anmID) {
    setFacePriBtp(getFaceTexData(i_anmID)->m_btpID);
    setFacePriBtk(getFaceTexData(i_anmID)->m_btkID);
}

/* 800AFB14-800AFB74 0AA454 0060+00 6/6 0/0 0/0 .text
 * setFacePriAnime__9daAlink_cFQ29daAlink_c11daAlink_ANM        */
void daAlink_c::setFacePriAnime(daAlink_c::daAlink_ANM i_anmID) {
    const daAlink_AnmData* anm_data = getAnmData(i_anmID);

    setFacePriTexture((daAlink_FTANM)anm_data->m_faceTexID);
    setFacePriBck(anm_data->m_faceBckID);
}

/* 800AFB74-800AFBD0 0AA4B4 005C+00 1/1 0/0 0/0 .text            resetFacePriBck__9daAlink_cFv */
void daAlink_c::resetFacePriBck() {
    if (!mFaceBckHeap.checkNoSetPriIdx()) {
        mFaceBckHeap.resetPriIdx();
        u16 bck_idx = mFaceBckHeap.getIdx();

        if (bck_idx == 0xFFFF) {
            bck_idx = 0xDF;
        }

        mFaceBckHeap.resetIdx();
        setFaceBasicBck(bck_idx);
    }
}

/* 800AFBD0-800AFC2C 0AA510 005C+00 1/1 0/0 0/0 .text            resetFacePriBtp__9daAlink_cFv */
void daAlink_c::resetFacePriBtp() {
    if (!mFaceBtpHeap.checkNoSetPriIdx()) {
        mFaceBtpHeap.resetPriIdx();
        u16 btp_idx = mFaceBtpHeap.getIdx();

        if (btp_idx == 0xFFFF) {
            btp_idx = 0x3DF;
        }

        mFaceBtpHeap.resetIdx();
        setFaceBasicBtp(btp_idx);
    }
}

/* 800AFC2C-800AFC88 0AA56C 005C+00 1/1 0/0 0/0 .text            resetFacePriBtk__9daAlink_cFv */
void daAlink_c::resetFacePriBtk() {
    if (!mFaceBtkHeap.checkNoSetPriIdx()) {
        mFaceBtkHeap.resetPriIdx();
        u16 btk_idx = mFaceBtkHeap.getIdx();

        if (btk_idx == 0xFFFF) {
            btk_idx = 0x379;
        }

        mFaceBtkHeap.resetIdx();
        setFaceBasicBtk(btk_idx);
    }
}

/* 800AFC88-800AFCBC 0AA5C8 0034+00 1/1 0/0 0/0 .text            resetFacePriTexture__9daAlink_cFv
 */
void daAlink_c::resetFacePriTexture() {
    resetFacePriBtp();
    resetFacePriBtk();
}

/* 800AFCBC-800AFCF0 0AA5FC 0034+00 7/7 0/0 0/0 .text            resetFacePriAnime__9daAlink_cFv */
void daAlink_c::resetFacePriAnime() {
    resetFacePriTexture();
    resetFacePriBck();
}

/* 800AFCF0-800B0098 0AA630 03A8+00 2/2 0/0 0/0 .text            playFaceTextureAnime__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::playFaceTextureAnime() {
    nofralloc
#include "asm/d/a/d_a_alink/playFaceTextureAnime__9daAlink_cFv.s"
}
#pragma pop

/* 800B0098-800B0150 0AA9D8 00B8+00 14/14 0/0 0/0 .text
 * getGroundAngle__9daAlink_cFP13cBgS_PolyInfos                 */
// matches but causes data issues
#ifdef NONMATCHING
s16 daAlink_c::getGroundAngle(cBgS_PolyInfo* i_poly, s16 i_angle) {
    if (!dComIfG_Bgsp().ChkPolySafe(*i_poly)) {
        return 0;
    }

    cM3dGPla plane;
    if (!dComIfG_Bgsp().GetTriPla(*i_poly, &plane) || !cBgW_CheckBGround(plane.mNormal.y)) {
        return 0;
    }

    return fopAcM_getPolygonAngle(&plane, i_angle);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm s16 daAlink_c::getGroundAngle(cBgS_PolyInfo* param_0, s16 param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/getGroundAngle__9daAlink_cFP13cBgS_PolyInfos.s"
}
#pragma pop
#endif

/* 800B0150-800B01FC 0AAA90 00AC+00 1/1 0/0 0/0 .text getRoofAngle__9daAlink_cFP13cBgS_PolyInfos
 */
// matches with cM3dGPla vtable data
#ifdef NONMATCHING
s16 daAlink_c::getRoofAngle(cBgS_PolyInfo* param_0, s16 param_1) {
    cM3dGPla plane;

    if (!dComIfG_Bgsp().GetTriPla(*param_0, &plane) || !dComIfG_Bgsp().ChkPolySafe(*param_0)) {
        return 0;
    }

    return fopAcM_getPolygonAngle(&plane, param_1) + 0x8000;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm s16 daAlink_c::getRoofAngle(cBgS_PolyInfo* param_0, s16 param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/getRoofAngle__9daAlink_cFP13cBgS_PolyInfos.s"
}
#pragma pop
#endif

/* 800B01FC-800B02BC 0AAB3C 00C0+00 2/2 0/0 0/0 .text
 * getWallEdgePos__9daAlink_cFRC4cXyzP8cM3dGPlaP8cM3dGPlaP4cXyzi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::getWallEdgePos(cXyz const& param_0, cM3dGPla* param_1, cM3dGPla* param_2,
                                   cXyz* param_3, int param_4) {
    nofralloc
#include "asm/d/a/d_a_alink/getWallEdgePos__9daAlink_cFRC4cXyzP8cM3dGPlaP8cM3dGPlaP4cXyzi.s"
}
#pragma pop

/* ############################################################################################## */
/* 80453290-80453294 001890 0004+00 1/1 0/0 0/0 .sdata2          @64357 */
SECTION_SDATA2 static f32 lit_64357 = 36.5f;

/* 800B02BC-800B146C 0AABFC 11B0+00 9/9 0/0 0/0 .text            setFrontWallType__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setFrontWallType() {
    nofralloc
#include "asm/d/a/d_a_alink/setFrontWallType__9daAlink_cFv.s"
}
#pragma pop

/* 800B146C-800B1488 0ABDAC 001C+00 1/1 0/0 0/0 .text            SetPos__12dBgS_RoofChkFRC4cXyz */
void dBgS_RoofChk::SetPos(cXyz const& pos) {
    m_pos = pos;
}

/* 800B1488-800B14B4 0ABDC8 002C+00 4/4 0/0 0/0 .text checkWaterPolygonUnder__9daAlink_cFv */
BOOL daAlink_c::checkWaterPolygonUnder() {
    return i_checkModeFlg(MODE_SWIMMING) || current.pos.y < mWaterY;
}

/* 800B14B4-800B154C 0ABDF4 0098+00 2/2 0/0 0/0 .text            setWaterY__9daAlink_cFv */
void daAlink_c::setWaterY() {
    if (mLinkAcch.ChkWaterHit()) {
        i_onNoResetFlg0(FLG0_UNK_80);
        field_0x2fbc = dComIfG_Bgsp().GetPolyAtt0(mLinkAcch.m_wtr);
        mWaterY = mLinkAcch.m_wtr.GetHeight();
        if (field_0x2fbc != 6) {
            checkWaterInKandelaar(mWaterY);
        }
    } else {
        i_offNoResetFlg0(FLG0_UNK_80);
        field_0x2fbc = 16;
        mWaterY = lit_9138;
    }
}

/* 800B154C-800B172C 0ABE8C 01E0+00 2/2 0/0 0/0 .text            setHangWaterY__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setHangWaterY() {
    nofralloc
#include "asm/d/a/d_a_alink/setHangWaterY__9daAlink_cFv.s"
}
#pragma pop

/* 800B172C-800B1770 0AC06C 0044+00 3/3 0/0 0/0 .text setSandDownBgCheckWallH__9daAlink_cFv */
void daAlink_c::setSandDownBgCheckWallH() {
    if (!i_checkModeFlg(0x400)) {
        for (int i = 0; i < 3; i++) {
            field_0x18B0[i].SetWallH(field_0x2bac[i] + mSinkShapeOffset);
        }
    }
}

/* ############################################################################################## */
/* 80453294-80453298 001894 0004+00 1/1 0/0 0/0 .sdata2          @64592 */
SECTION_SDATA2 static f32 lit_64592 = 11.654999732971191f;

/* 80453298-8045329C 001898 0004+00 1/1 0/0 0/0 .sdata2          @64593 */
SECTION_SDATA2 static f32 lit_64593 = 140.0f;

/* 8045329C-804532A0 00189C 0004+00 1/1 0/0 0/0 .sdata2          @64594 */
SECTION_SDATA2 static f32 lit_64594 = -260.0f;

/* 804532A0-804532A4 0018A0 0004+00 1/1 0/0 0/0 .sdata2          @64595 */
SECTION_SDATA2 static f32 lit_64595 = -140.0f;

/* 804532A4-804532A8 0018A4 0004+00 1/1 0/0 0/0 .sdata2          @64596 */
SECTION_SDATA2 static f32 lit_64596 = 49.99000549316406f;

/* 800B1770-800B1B28 0AC0B0 03B8+00 2/2 0/0 0/0 .text            setBgCheckParam__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setBgCheckParam() {
    nofralloc
#include "asm/d/a/d_a_alink/setBgCheckParam__9daAlink_cFv.s"
}
#pragma pop

/* 800B1B28-800B1B68 0AC468 0040+00 4/4 0/0 0/0 .text            checkNotJumpSinkLimit__9daAlink_cFv
 */
BOOL daAlink_c::checkNotJumpSinkLimit() {
    return mSinkShapeOffset < lit_14614 || field_0x2fbd == 3 ||
           (field_0x2fbd == 4 && mSinkShapeOffset < lit_14624);
}

/* 800B1B68-800B1BAC 0AC4A8 0044+00 2/2 0/0 0/0 .text            checkNotItemSinkLimit__9daAlink_cFv
 */
BOOL daAlink_c::checkNotItemSinkLimit() {
    return mSinkShapeOffset < lit_28045 &&
           (field_0x2fbd == 1 || field_0x2fbd == 2 || field_0x2fbd == 3 || field_0x2fbd == 4);
}

/* ############################################################################################## */
/* 804532A8-804532AC 0018A8 0004+00 1/1 0/0 0/0 .sdata2          @64730 */
SECTION_SDATA2 static f32 lit_64730 = 3.0f / 7.0f;

/* 804532AC-804532B0 0018AC 0004+00 1/1 0/0 0/0 .sdata2          @64731 */
SECTION_SDATA2 static f32 lit_64731 = 128.0f;

/* 800B1BAC-800B1FB8 0AC4EC 040C+00 2/2 0/0 0/0 .text            setSandShapeOffset__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setSandShapeOffset() {
    nofralloc
#include "asm/d/a/d_a_alink/setSandShapeOffset__9daAlink_cFv.s"
}
#pragma pop

/* 800B1FB8-800B1FD8 0AC8F8 0020+00 2/2 0/0 0/0 .text checkLv2MiddleBossBgRide__9daAlink_cFs */
bool daAlink_c::checkLv2MiddleBossBgRide(s16 i_procName) {
    return i_procName == PROC_OBJ_MSIMA || i_procName == PROC_B_ZANTS;
}

/* 800B1FD8-800B21EC 0AC918 0214+00 11/11 0/0 0/0 .text getSlidePolygon__9daAlink_cFP8cM3dGPla */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daAlink_c::getSlidePolygon(cM3dGPla* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/getSlidePolygon__9daAlink_cFP8cM3dGPla.s"
}
#pragma pop

/* 800B21EC-800B221C 0ACB2C 0030+00 4/4 0/0 0/0 .text            checkSlope__9daAlink_cCFv */
BOOL daAlink_c::checkSlope() const {
    return field_0x3174 != 8 && field_0x2ff0 < -field_0x3122;
}

/* 800B221C-800B23FC 0ACB5C 01E0+00 1/0 0/0 0/0 .text setPlayerPosAndAngle__9daAlink_cFPC4cXyzsi
 */
void daAlink_c::setPlayerPosAndAngle(cXyz const* p_pos, s16 i_angle, int param_2) {
    if (checkEventRun() || param_2 != 0 || mSpecialMode != 0) {
        if (p_pos != NULL) {
            current.pos = *p_pos;
            next.pos = current.pos;
            field_0x3798 = current.pos;
            i_onEndResetFlg0(ERFLG0_UNK_800000);
            i_onEndResetFlg2(ERFLG2_UNK_100);
            if (mDemo.getDemoMode() != 0x59) {
                speed.y = FLOAT_LABEL(lit_6108);
            }
        }

        shape_angle.y = i_angle;
        current.angle.y = i_angle;
        field_0x2fe6 = shape_angle.y;
        if ((mProcID == PROC_TALK || mProcID == PROC_TRADE_ITEM_OUT) && !i_checkWolf()) {
            if (field_0x3198 != 0) {
                field_0x37c8.x = current.pos.x;
                field_0x37c8.z = current.pos.z;
            }
        }

        if (i_checkMagneBootsOn() && cBgW_CheckBGround(mMagneBootsTopVec.y)) {
            field_0x3118 = shape_angle.y;
        }

        if (checkHorseRide()) {
            i_dComIfGp_getHorseActor()->i_setHorsePosAndAngle(&current.pos, shape_angle.y);
        } else if (checkSpinnerRide()) {
            fopAc_ac_c* rideAc = mRideAcKeep.getActor();
            rideAc->current.pos = current.pos;
            rideAc->shape_angle.y = shape_angle.y;
            rideAc->current.angle.y = shape_angle.y;
            rideAc->speed.y = FLOAT_LABEL(lit_6108);
        }

        field_0x814.ClrCcMove();
    }
}

/* 800B23FC-800B24F4 0ACD3C 00F8+00 1/0 0/0 0/0 .text
 * setPlayerPosAndAngle__9daAlink_cFPC4cXyzPC5csXyz             */
void daAlink_c::setPlayerPosAndAngle(cXyz const* p_pos, csXyz const* p_angle) {
    if (checkEventRun() || mSpecialMode != 0) {
        if (p_pos != NULL) {
            current.pos = *p_pos;
            next.pos = current.pos;
            field_0x3798 = current.pos;
            i_onEndResetFlg0(ERFLG0_UNK_800000);
            i_onEndResetFlg2(ERFLG2_UNK_100);
            speed.y = FLOAT_LABEL(lit_6108);
        }

        if (p_angle != NULL) {
            shape_angle = *p_angle;
            current.angle.y = shape_angle.y;
            field_0x2fe6 = shape_angle.y;
        }

        field_0x814.ClrCcMove();
    }
}

/* 800B24F4-800B25CC 0ACE34 00D8+00 1/0 0/0 0/0 .text setPlayerPosAndAngle__9daAlink_cFPA4_f */
void daAlink_c::setPlayerPosAndAngle(Mtx param_0) {
    if (checkEventRun() || mSpecialMode != 0) {
        current.pos.x = param_0[0][3];
        current.pos.y = param_0[1][3];
        current.pos.z = param_0[2][3];
        next.pos = current.pos;
        field_0x3798 = current.pos;
        i_onEndResetFlg0(ERFLG0_UNK_800000);
        i_onEndResetFlg2(ERFLG2_UNK_100);
        mDoMtx_MtxToRot(param_0, &shape_angle);
        current.angle.y = shape_angle.y;
        field_0x2fe6 = shape_angle.y;
        speed.y = FLOAT_LABEL(lit_6108);
        field_0x814.ClrCcMove();
    }
}

/* 800B25CC-800B25E8 0ACF0C 001C+00 16/16 0/0 0/0 .text            itemTriggerCheck__9daAlink_cFUc
 */
BOOL daAlink_c::itemTriggerCheck(u8 btnFlag) {
    field_0x2fae |= btnFlag;
    return mItemTrigger & btnFlag;
}

/* 800B25E8-800B2604 0ACF28 001C+00 11/11 0/0 0/0 .text            itemButtonCheck__9daAlink_cFUc */
BOOL daAlink_c::itemButtonCheck(u8 btnFlag) {
    field_0x2fae |= btnFlag;
    return mItemButton & btnFlag;
}

BOOL daAlink_c::itemButton() {
    return itemButtonCheck(1 << mSelectItemId);
}

BOOL daAlink_c::itemTrigger() {
    return itemTriggerCheck(1 << mSelectItemId);
}

BOOL daAlink_c::spActionButton() {
    return itemButtonCheck(BTN_R);
}

BOOL daAlink_c::spActionTrigger() {
    return itemTriggerCheck(BTN_R);
}

BOOL daAlink_c::midnaTalkTrigger() const {
    return mItemTrigger & BTN_Z;
}

BOOL daAlink_c::swordSwingTrigger() {
    return itemTriggerCheck(BTN_B);
}

/* 800B26DC-800B26FC 0AD01C 0020+00 2/2 0/0 0/0 .text setItemActionButtonStatus__9daAlink_cFUc */
void daAlink_c::setItemActionButtonStatus(u8 param_0) {
    setRStatusEmphasys(param_0);
}

/* 800B26FC-800B271C 0AD03C 0020+00 2/2 0/0 1/1 .text            itemActionTrigger__9daAlink_cFv */
void daAlink_c::itemActionTrigger() {
    spActionTrigger();
}

/* 800B271C-800B2EA4 0AD05C 0788+00 1/1 0/0 0/0 .text            setStickData__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
void daAlink_c::setStickData() {
    BOOL var_r31 = false;
    field_0x2f8f = mItemButton;
    mItemTrigger = 0;
    mItemButton = 0;
    mHeavySpeedMultiplier = 1.0f;

    if (checkEventRun() && mProcID != PROC_GRASS_WHISTLE_WAIT && mProcID != PROC_WOLF_DIG_THROUGH &&
        mProcID != PROC_GOAT_CATCH && mProcID != PROC_WOLF_GANON_CATCH &&
        mProcID != PROC_TOOL_DEMO && (mProcID != PROC_METAMORPHOSE || mFallVoiceInit == 0))
    {
        u32 demoMode = mDemo.getDemoMode();

        if (checkDemoMoveMode(demoMode)) {
            if (dDemo_c::m_object->getActor(mDemoActorId) != NULL) {
                field_0x33a8 = 1.0f;
            } else {
                field_0x33a8 = mDemo.getStick();
            }
        } else if (demoMode == 14 || demoMode == 0x1A || demoMode == 0x41) {
            if (demoMode == 0x1A) {
                field_0x33a8 = mDemo.getStick();
                mDemo.setMoveAngle(getSceneExitMoveAngle());

                if (checkHorseRide()) {
                    s16 angle = mDemo.getMoveAngle();
                    i_dComIfGp_getHorseActor()->changeDemoMoveAngle(angle);
                }
            } else {
                field_0x33a8 = 0.0f;
            }
            mItemButton = field_0x2f8f;
        } else {
            field_0x33a8 = 0.0f;
        }
        field_0x2fe2 = mDemo.getMoveAngle();
        field_0x33ac = field_0x33a8;
    } else if (checkDeadHP() || dMeter2Info_getPauseStatus() == 1) {
        field_0x33a8 = 0.0f;
        field_0x33ac = 0.0f;
        mStickAngle = 0;
        field_0x2fe2 = 0;
    } else if (checkMidnaLockJumpPoint() && getMidnaActor()->checkNoInput()) {
        field_0x33a8 = 0.0f;
        field_0x33ac = 0.0f;
        mStickAngle = 0;
        dComIfGp_2dShowOff();
        i_onNoResetFlg2(FLG2_UNK_80);
        var_r31 = 1;
        field_0x2fe4 = shape_angle.y;
    } else {
        if (!(field_0x33ac > 0.05f)) {
            field_0x2fb9 = 0;
        }

        bool usingFishRod = false;
        if (checkFishingRodAndLureItem() && mItemAcKeep.getActor() != NULL &&
            (checkCanoeRide() || mProcID == PROC_FISHING_CAST))
        {
            usingFishRod = true;
        }

        if (usingFishRod) {
            dmg_rod_class* mg_rod = (dmg_rod_class*)mItemAcKeep.getActor();
            f32 stick_x = mg_rod->getRodStickX() * mg_rod->getRodStickX();
            f32 stick_y = mg_rod->getRodStickY() * mg_rod->getRodStickY();
            field_0x33a8 = JMAFastSqrt(stick_x + stick_y);
            mStickAngle = cM_atan2s(-mg_rod->getRodStickX(), mg_rod->getRodStickY());
        } else {
            field_0x33a8 = mDoCPd_c::getStickValue(PAD_1);
            mStickAngle = mDoCPd_c::getStickAngle3D(PAD_1) - -0x8000;
        }

        field_0x33ac = field_0x33a8;
        field_0x2fe2 = mStickAngle + dCam_getControledAngleY(dComIfGp_getCamera(field_0x317c));

        if (i_checkMagneBootsOn()) {
            if (field_0x2fb9 == 1 ||
                (field_0x2fb9 == 0 && field_0x3114 != -0x8000 && field_0x3114 <= 0x6000))
            {
                field_0x2fb9 = 1;
            } else {
                field_0x2fb9 = 2;
            }

            if ((field_0x2fb9 == 1 && (field_0x3114 > 0x6000 || field_0x3114 == -0x8000)) ||
                (field_0x2fb9 == 2 && field_0x3114 != -0x8000 && field_0x3114 < 0x4000))
            {
                field_0x2fe2 = getMagneBootsLocalAngleY(field_0x2fe2, 0) + 0x8000;
            } else {
                field_0x2fe2 = getMagneBootsLocalAngleY(field_0x2fe2, field_0x2fb9);
            }
        } else {
            field_0x2fb9 = 1;
        }

        if (mDoCPd_c::getTrigB(PAD_1)) {
            mItemTrigger |= BTN_B;
        }
        if (mDoCPd_c::getTrigA(PAD_1)) {
            mItemTrigger |= BTN_A;
        }
        if (mDoCPd_c::getTrigX(PAD_1)) {
            mItemTrigger |= BTN_X;
        }
        if (mDoCPd_c::getTrigY(PAD_1)) {
            mItemTrigger |= BTN_Y;
        }
        if (mDoCPd_c::getTrigZ(PAD_1)) {
            mItemTrigger |= BTN_Z;
        }
        if (mDoCPd_c::getTrigL(PAD_1)) {
            mItemTrigger |= BTN_L;
        }
        if (mDoCPd_c::getTrigLockR(PAD_1)) {
            mItemTrigger |= BTN_R;
        }

        if (mDoCPd_c::getHoldA(PAD_1)) {
            mItemButton |= BTN_A;
        }
        if (mDoCPd_c::getHoldB(PAD_1)) {
            mItemButton |= BTN_B;
        }
        if (mDoCPd_c::getHoldX(PAD_1)) {
            mItemButton |= BTN_X;
        }
        if (mDoCPd_c::getHoldY(PAD_1)) {
            mItemButton |= BTN_Y;
        }
        if (mDoCPd_c::getHoldZ(PAD_1)) {
            mItemButton |= BTN_Z;
        }
        if (mDoCPd_c::getHoldL(PAD_1)) {
            mItemButton |= BTN_L;
        }
        if (mDoCPd_c::getHoldLockR(PAD_1)) {
            mItemButton |= BTN_R;
        }

        if (checkHeavyStateOn(1, 1) &&
            (!checkBootsOrArmorHeavy() || !i_checkNoResetFlg0(FLG0_UNDERWATER)))
        {
            if (i_checkWolf() && checkHeavyStateOn(1, 0) && mSinkShapeOffset < -30.0f) {
                mHeavySpeedMultiplier = daAlinkHIO_magneBoots_c0::m.mInputFactor * 0.4f;
            } else {
                mHeavySpeedMultiplier = daAlinkHIO_magneBoots_c0::m.mInputFactor;
            }
            field_0x33a8 *= mHeavySpeedMultiplier;
        } else if (checkBootsOrArmorHeavy()) {
            if (checkZoraWearAbility()) {
                mHeavySpeedMultiplier = daAlinkHIO_magneBoots_c0::m.mZoraWaterInputFactor;
            } else {
                mHeavySpeedMultiplier = daAlinkHIO_magneBoots_c0::m.mWaterInputFactor;
            }
            field_0x33a8 *= mHeavySpeedMultiplier;
        } else if ((i_checkWolf() && field_0x2fbc == 11 && checkWaterPolygonUnder()) ||
                   field_0x2fbb == 11)
        {
            i_onNoResetFlg0(FLG0_UNK_40000000);
            field_0x33a8 *= daAlinkHIO_wolf_c0::m.mUnderwaterInputRate;
            mHeavySpeedMultiplier = daAlinkHIO_wolf_c0::m.mUnderwaterInputRate;
        }
    }

    s16 angle_diff = mStickAngle - mPrevStickAngle;
    int abs_v = abs(angle_diff);

    if (abs_v < 0x4000 && abs_v > 0x6D4 && field_0x3180 * angle_diff >= 0) {
        field_0x3180 += angle_diff;
        mStickSpinTimer = 4;
    } else if (field_0x3180 * angle_diff < 0) {
        field_0x3180 = angle_diff;
        mStickSpinTimer = 4;
    } else if (mStickSpinTimer > 0) {
        mStickSpinTimer--;
    } else {
        field_0x3180 = 0;
    }

    if (!doButton()) {
        i_offNoResetFlg0(FLG0_UNK_10000000);
    }

    if (!var_r31 && i_checkNoResetFlg2(FLG2_UNK_80)) {
        i_offNoResetFlg2(FLG2_UNK_80);
        dComIfGp_2dShowOn();
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setStickData() {
    nofralloc
#include "asm/d/a/d_a_alink/setStickData__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800B2EA4-800B3220 0AD7E4 037C+00 1/1 0/0 0/0 .text            setAtnList__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setAtnList() {
    nofralloc
#include "asm/d/a/d_a_alink/setAtnList__9daAlink_cFv.s"
}
#pragma pop

/* 800B3220-800B3238 0ADB60 0018+00 5/5 0/0 0/0 .text            setRStatus__9daAlink_cFUc */
void daAlink_c::setRStatus(u8 status) {
    dComIfGp_setRStatus(status, 0);
}

/* 800B3238-800B3250 0ADB78 0018+00 1/1 0/0 0/0 .text            setRStatusEmphasys__9daAlink_cFUc
 */
void daAlink_c::setRStatusEmphasys(u8 status) {
    dComIfGp_setRStatus(status, 2);
}

/* 800B3250-800B3268 0ADB90 0018+00 61/61 0/0 0/0 .text            setDoStatus__9daAlink_cFUc */
void daAlink_c::setDoStatus(u8 status) {
    dComIfGp_setDoStatus(status, 0);
}

/* 800B3268-800B3280 0ADBA8 0018+00 19/19 0/0 0/0 .text setDoStatusEmphasys__9daAlink_cFUc */
void daAlink_c::setDoStatusEmphasys(u8 status) {
    dComIfGp_setDoStatus(status, 2);
}

/* 800B3280-800B3298 0ADBC0 0018+00 2/2 0/0 0/0 .text setDoStatusContinuation__9daAlink_cFUc */
void daAlink_c::setDoStatusContinuation(u8 status) {
    dComIfGp_setDoStatus(status, 4);
}

/* 800B3298-800B32B0 0ADBD8 0018+00 8/8 0/0 0/0 .text            setBStatus__9daAlink_cFUc */
void daAlink_c::setBStatus(u8 status) {
    dComIfGp_setAStatus(status, 0);
}

/* 800B32B0-800B3358 0ADBF0 00A8+00 2/2 0/0 0/0 .text            checkAtnWaitAnime__9daAlink_cFv */
BOOL daAlink_c::checkAtnWaitAnime() {
    if ((mTargetedActor != NULL &&
         (checkEnemyGroup(mTargetedActor) || checkGoatCatchActor(mTargetedActor) ||
          fopAcM_GetName(mTargetedActor) == PROC_CROD ||
          fopAcM_GetName(mTargetedActor) == PROC_BOOMERANG)) ||
        (checkGrabAnimeUp() || checkGrabAnimeSide() || mDemo.getDemoMode() == 0x17 ||
         checkGoatStopGame()))
    {
        return true;
    }

    return false;
}

/* 800B3358-800B33E4 0ADC98 008C+00 2/2 0/0 0/0 .text
 * setTiredVoice__9daAlink_cFP16daPy_frameCtrl_c                */
void daAlink_c::setTiredVoice(daPy_frameCtrl_c* i_frameCtrl) {
    if (i_frameCtrl->checkPass(lit_7448)) {
        if (i_dComIfGs_getLife() <= 2) {
            voiceStart(Z2SE_AL_V_TIRED_L);
        } else {
            voiceStart(Z2SE_AL_V_TIRED_S);
        }
    }
}

/* 800B33E4-800B3494 0ADD24 00B0+00 4/4 0/0 0/0 .text            checkRestHPAnime__9daAlink_cFv */
BOOL daAlink_c::checkRestHPAnime() {
    if (!checkPlayerGuard() && (checkNoUpperAnime() || checkHorseTiredAnime()) &&
        mTargetedActor == NULL && !checkWindSpeedOnAngle() &&
        ((!checkPlayerDemoMode() && i_dComIfGs_getLife() <= 4) || mDemo.getDemoMode() == 0x12))
    {
        return true;
    }

    return false;
}

/* 800B3494-800B3500 0ADDD4 006C+00 44/44 0/0 0/0 .text getDirectionFromAngle__9daAlink_cFs */
int daAlink_c::getDirectionFromAngle(s16 angle) {
    if (abs(angle) > 0x6000) {
        return DIR_BACKWARD;
    }

    if (angle >= 0x2000) {
        return DIR_LEFT;
    }

    if (angle <= -0x2000) {
        return DIR_RIGHT;
    }

    return DIR_FORWARD;
}

/* 800B3500-800B3630 0ADE40 0130+00 13/13 0/0 0/0 .text            checkAttentionState__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daAlink_c::checkAttentionState() {
    nofralloc
#include "asm/d/a/d_a_alink/checkAttentionState__9daAlink_cFv.s"
}
#pragma pop

/* 800B3630-800B3734 0ADF70 0104+00 5/5 0/0 0/0 .text getShapeAngleYAtnActor__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm s16 daAlink_c::getShapeAngleYAtnActor() {
    nofralloc
#include "asm/d/a/d_a_alink/getShapeAngleYAtnActor__9daAlink_cFv.s"
}
#pragma pop

/* 800B3734-800B3844 0AE074 0110+00 26/26 0/0 0/0 .text setShapeAngleToAtnActor__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daAlink_c::setShapeAngleToAtnActor(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setShapeAngleToAtnActor__9daAlink_cFi.s"
}
#pragma pop

/* 800B3844-800B3904 0AE184 00C0+00 9/9 0/0 0/0 .text            initServiceWaitTime__9daAlink_cFv
 */
// matches with literals
#ifdef NONMATCHING
void daAlink_c::initServiceWaitTime() {
    field_0x30ca = cM_rndF(150.0f) + 300.0f;

    if (i_checkWolf()) {
        field_0x30ca >>= 2;  // divide by 4
    } else if (i_checkReinRide()) {
        field_0x30ca *= 0.75f;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::initServiceWaitTime() {
    nofralloc
#include "asm/d/a/d_a_alink/initServiceWaitTime__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800B3904-800B3924 0AE244 0020+00 50/50 0/0 0/0 .text            checkZeroSpeedF__9daAlink_cCFv */
bool daAlink_c::checkZeroSpeedF() const {
    return fabsf(mNormalSpeed) < lit_12328;
}

/* 800B3924-800B3F2C 0AE264 0608+00 14/14 0/0 0/0 .text            setNormalSpeedF__9daAlink_cFff */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setNormalSpeedF(f32 param_0, f32 param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/setNormalSpeedF__9daAlink_cFff.s"
}
#pragma pop

/* 800B3F2C-800B3FD4 0AE86C 00A8+00 2/2 0/0 0/0 .text getStickAngleDistanceRate__9daAlink_cFv */
f32 daAlink_c::getStickAngleDistanceRate() {
    f32 rate;

    if (abs((s16)(mPrevStickAngle - mStickAngle)) > 0x1000) {
        rate = cM_scos(field_0x2fe2 - current.angle.y);

        if (mNormalSpeed > lit_5943 * field_0x594) {
            if (rate < lit_9652) {
                rate = lit_9652;
            }
        } else if (rate < FLOAT_LABEL(lit_6108)) {
            rate = FLOAT_LABEL(lit_6108);
        }
    } else {
        rate = lit_6040;
    }

    return rate;
}

/* 800B3FD4-800B444C 0AE914 0478+00 3/3 0/0 0/0 .text setSpeedAndAngleNormal__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setSpeedAndAngleNormal() {
    nofralloc
#include "asm/d/a/d_a_alink/setSpeedAndAngleNormal__9daAlink_cFv.s"
}
#pragma pop

/* 800B444C-800B477C 0AED8C 0330+00 1/1 0/0 0/0 .text            setSpeedAndAngleAtn__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setSpeedAndAngleAtn() {
    nofralloc
#include "asm/d/a/d_a_alink/setSpeedAndAngleAtn__9daAlink_cFv.s"
}
#pragma pop

/* 800B477C-800B47B4 0AF0BC 0038+00 2/2 0/0 0/0 .text
 * checkRequestTalkActor__9daAlink_cFP10dAttList_cP10fopAc_ac_c */
int daAlink_c::checkRequestTalkActor(dAttList_c* param_0, fopAc_ac_c* param_1) {
    if (param_0 != NULL &&
        (param_0->mType == 3 || (param_0->mType == 1 && mTargetedActor == param_1)))
    {
        return true;
    }

    return false;
}

/* 800B47B4-800B48D0 0AF0F4 011C+00 4/4 0/0 0/0 .text            checkServiceWaitMode__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daAlink_c::checkServiceWaitMode() {
    nofralloc
#include "asm/d/a/d_a_alink/checkServiceWaitMode__9daAlink_cFv.s"
}
#pragma pop

/* 800B48D0-800B4908 0AF210 0038+00 18/18 0/0 0/0 .text            setJumpMode__9daAlink_cFv */
void daAlink_c::setJumpMode() {
    onModeFlg(MODE_JUMP);
    mLastJumpPos = current.pos;
    mFallHeight = mLastJumpPos.y;
    field_0x33c8 = mLastJumpPos.y;
}

/* 800B4908-800B4918 0AF248 0010+00 0/0 0/0 1/1 .text getMetamorphoseNearDis__9daAlink_cCFv */
f32 daAlink_c::getMetamorphoseNearDis() const {
    return daAlinkHIO_basic_c0::m.mTransformBlockNearDis;
}

/* 800B4918-800B4928 0AF258 0010+00 0/0 0/0 1/1 .text getMetamorphoseFarDis__9daAlink_cCFv */
f32 daAlink_c::getMetamorphoseFarDis() const {
    return daAlinkHIO_basic_c0::m.mTransformBlockFarDis;
}

/* 800B4928-800B4938 0AF268 0010+00 0/0 0/0 1/1 .text getMetamorphoseFarAngle__9daAlink_cCFv */
s16 daAlink_c::getMetamorphoseFarAngle() const {
    return daAlinkHIO_basic_c0::m.mTransformBlockFarAngle;
}

/* 800B4938-800B4950 0AF278 0018+00 0/0 1/1 0/0 .text            setMidnaMsg__9daAlink_cFv */
void daAlink_c::setMidnaMsg() {
    if (mMidnaMsg != NULL) {
        mMidnaMsg->onUseFlg();
    }
}

/* 800B4950-800B4A08 0AF290 00B8+00 3/3 0/0 0/0 .text            notTalk__9daAlink_cFv */
BOOL daAlink_c::notTalk() {
    BOOL safe_poly;
    if (dComIfG_Bgsp().ChkPolySafe(mLinkAcch.m_gnd) && dBgS_CheckBGroundPoly(mLinkAcch.m_gnd)) {
        safe_poly = true;
    } else {
        safe_poly = false;
    }

    if ((mMidnaTalkDelayTimer != 0 ||
         (i_checkMagneBootsOn() && !cBgW_CheckBGround(mMagneBootsTopVec.y))) ||
        !i_checkModeFlg(MODE_SWIMMING | MODE_ROPE_WALK | MODE_VINE_CLIMB | MODE_UNK_800 |
                        MODE_RIDING | MODE_NO_COLLISION | MODE_CLIMB | MODE_JUMP) &&
            !safe_poly)
    {
        return true;
    }
    return false;
}

/* 800B4A08-800B4B2C 0AF348 0124+00 11/11 0/0 0/0 .text            setTalkStatus__9daAlink_cFv */
BOOL daAlink_c::setTalkStatus() {
    if (i_checkEndResetFlg0(ERFLG0_UNK_400000) || field_0x27f4 == NULL) {
        return 0;
    }

    if (checkRequestTalkActor(mAttList, field_0x27f4)) {
        if (notTalk()) {
            setDoStatus(0x90);
        } else {
            if (field_0x27f4->mAttentionInfo.mFlags & 0x2000000) {
                return 0;
            }

            if (field_0x27f4->mAttentionInfo.mFlags & 0x800000) {
                setDoStatus(0x3B);
            } else if (field_0x27f4->mAttentionInfo.mFlags & 0x20000000) {
                if (fopAcM_GetName(field_0x27f4) == PROC_OBJ_SSDRINK) {
                    setDoStatus(0x3C);
                } else {
                    setDoStatus(8);
                }
            } else if (field_0x27f4->mAttentionInfo.mFlags & 0x40000000) {
                setDoStatus(0x80);
            } else if (field_0x27f4->mAttentionInfo.mFlags & 0x8000000) {
                setDoStatus(0x1B);
            } else {
                setDoStatus(0x1C);
            }
        }

        return 1;
    }

    return 0;
}

/* 800B4B2C-800B4B7C 0AF46C 0050+00 1/1 0/0 0/0 .text            getFrontRollRate__9daAlink_cFv */
f32 daAlink_c::getFrontRollRate() {
    if (checkHeavyStateOn(1, 1)) {
        return lit_16641 * mHeavySpeedMultiplier;
    } else {
        return lit_16641;
    }
}

/* 800B4B7C-800B5284 0AF4BC 0708+00 2/2 0/0 0/0 .text            decideCommonDoStatus__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::decideCommonDoStatus() {
    nofralloc
#include "asm/d/a/d_a_alink/decideCommonDoStatus__9daAlink_cFv.s"
}
#pragma pop

/* 800B5284-800B58EC 0AFBC4 0668+00 1/1 0/0 0/0 .text            decideDoStatus__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::decideDoStatus() {
    nofralloc
#include "asm/d/a/d_a_alink/decideDoStatus__9daAlink_cFv.s"
}
#pragma pop

/* 800B58EC-800B5BC0 0B022C 02D4+00 25/25 0/0 0/0 .text            checkWaitAction__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daAlink_c::checkWaitAction() {
    nofralloc
#include "asm/d/a/d_a_alink/checkWaitAction__9daAlink_cFv.s"
}
#pragma pop

/* 800B5BC0-800B5C34 0B0500 0074+00 3/3 0/0 0/0 .text            setFallVoice__9daAlink_cFv */
void daAlink_c::setFallVoice() {
    if (mFallVoiceInit == 0 && lit_8782 * (mFallHeight - current.pos.y) > lit_8676) {
        voiceStart(Z2SE_AL_V_FALL);
        mFallVoiceInit = 1;
    }
}

/* 800B5C34-800B5C64 0B0574 0030+00 2/2 0/0 0/0 .text            setLandPassiveData__9daAlink_cFv */
void daAlink_c::setLandPassiveData() {
    if (field_0x30f0 == 0) {
        if (doTrigger()) {
            field_0x30f0 = 65;
        }
    } else {
        field_0x30f0--;
    }
}

/* 800B5C64-800B5CCC 0B05A4 0068+00 5/5 0/0 0/0 .text            setStepLandVibration__9daAlink_cFv
 */
// matches with literals
#ifdef NONMATCHING
void daAlink_c::setStepLandVibration() {
    int shock;
    if (checkBootsOrArmorHeavy()) {
        shock = 3;
    } else {
        shock = 1;
    }

    dComIfGp_getVibration().StartShock(shock, 15, cXyz(0.0f, 1.0f, 0.0f));
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setStepLandVibration() {
    nofralloc
#include "asm/d/a/d_a_alink/setStepLandVibration__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800B5CCC-800B5F6C 0B060C 02A0+00 5/5 0/0 0/0 .text            checkLandAction__9daAlink_cFi */
BOOL daAlink_c::checkLandAction(int param_0) {
    f32 temp_f31 = lit_8782 * (mFallHeight - current.pos.y);
    int temp_r3 = getDirectionFromCurrentAngle();
    int temp_r27 = getDirectionFromAngle(current.angle.y - shape_angle.y);
    BOOL var_r29 = field_0x33a8 > lit_14064 && temp_r27 != 1 && !checkGrabAnime() &&
                   mProcID != PROC_CUT_HEAD && temp_r3 == DIR_FORWARD;

    if ((param_0 || temp_f31 >= daAlinkHIO_damFall_c0::m.mMinRollHeight) &&
        temp_f31 < daAlinkHIO_damFall_c0::m.mMaxRollHeight && var_r29)
    {
        if (temp_r27 == DIR_FORWARD) {
            procFrontRollInit();
        } else {
            procSideRollInit(temp_r27);
        }
    } else if (checkNoLandDamageSlidePolygon() ||
               temp_f31 < daAlinkHIO_damFall_c0::m.mSmallDmgHeight)
    {
        if (param_0) {
            procLandDamageInit(0);
        } else if (var_r29 && field_0x30f0 > 0x32) {
            if (temp_r27 == DIR_FORWARD) {
                procFrontRollInit();
            } else {
                procSideRollInit(temp_r27);
            }
        } else if (checkInputOnR() && temp_r27 == DIR_FORWARD && temp_r3 == DIR_FORWARD &&
                   mNormalSpeed > lit_7808)
        {
            if (mNormalSpeed > daAlinkHIO_move_c0::m.mMaxSpeed) {
                mNormalSpeed = daAlinkHIO_move_c0::m.mMaxSpeed;
            }
            mNormalSpeed *= lit_6023;
            current.angle.y = shape_angle.y;
            procMoveInit();
            setFootEffectProcType(2);
            field_0x2f9d = 4;
            resetBasAnime();
            seStartMapInfo(0x30001);

            f32 tmp_0 = FLOAT_LABEL(lit_6108);
            dComIfGp_getVibration().StartShock(1, 15, cXyz(tmp_0, lit_6040, tmp_0));
        } else {
            procLandInit(temp_f31);
        }
    } else {
        int var_r4;
        if (temp_f31 < daAlinkHIO_damFall_c0::m.mBigDmgHeight) {
            var_r4 = 1;
        } else {
            var_r4 = 2;
        }

        procLandDamageInit(var_r4);
    }

    return 1;
}

/* 800B5F6C-800B607C 0B08AC 0110+00 3/3 0/0 0/0 .text            checkSlideAction__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daAlink_c::checkSlideAction() {
    nofralloc
#include "asm/d/a/d_a_alink/checkSlideAction__9daAlink_cFv.s"
}
#pragma pop

/* 800B607C-800B69CC 0B09BC 0950+00 2/2 0/0 0/0 .text            checkAutoJumpAction__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daAlink_c::checkAutoJumpAction() {
    nofralloc
#include "asm/d/a/d_a_alink/checkAutoJumpAction__9daAlink_cFv.s"
}
#pragma pop

/* 800B69CC-800B6A30 0B130C 0064+00 2/2 0/0 0/0 .text            checkCutJumpInFly__9daAlink_cFv */
BOOL daAlink_c::checkCutJumpInFly() {
    if ((mEquipItem == EQUIP_SWORD && i_checkResetFlg0(RFLG0_UNK_80)) || checkForceSwordSwing()) {
        return procCutJumpInit(1);
    }
    return false;
}

/* ############################################################################################## */
/* 80450698-8045069C 000118 0004+00 4/4 0/0 0/0 .sdata           l_ladderAnmBaseTransY */
SECTION_SDATA static f32 l_ladderAnmBaseTransY = 102.00054168701172f;

/* 800B6A30-800B6F28 0B1370 04F8+00 16/16 0/0 0/0 .text checkFrontWallTypeAction__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daAlink_c::checkFrontWallTypeAction() {
    nofralloc
#include "asm/d/a/d_a_alink/checkFrontWallTypeAction__9daAlink_cFv.s"
}
#pragma pop

/* 800B6F28-800B7090 0B1868 0168+00 3/3 0/0 0/0 .text checkItemActionInitStart__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::checkItemActionInitStart() {
    nofralloc
#include "asm/d/a/d_a_alink/checkItemActionInitStart__9daAlink_cFv.s"
}
#pragma pop

/* 800B7090-800B7168 0B19D0 00D8+00 1/1 0/0 0/0 .text checkItemChangeAutoAction__9daAlink_cFv */
int daAlink_c::checkItemChangeAutoAction() {
    if (i_checkResetFlg0(RFLG0_UNK_80)) {
        if (mEquipItem == EQUIP_SWORD) {
            if (i_checkModeFlg(0x40000)) {
                return 0;
            }

            resetUpperAnime(UPPER_2, lit_6041);

            if (checkBoardRide()) {
                return checkBoardSwordTriggerAction();
            } else if (i_checkReinRide()) {
                return procHorseCutChargeReadyInit();
            }

            return procCutTurnChargeInit();
        }

        int ivar2 = checkItemActionInitStart();
        if (ivar2 != -1) {
            return ivar2;
        }
    }

    return 0;
}

/* 800B7168-800B7190 0B1AA8 0028+00 7/7 0/0 0/0 .text            setFastShotTimer__9daAlink_cFv */
void daAlink_c::setFastShotTimer() {
    if (!i_dComIfGp_checkPlayerStatus0(0, 0x2000)) {
        mFastShotTime = daAlinkHIO_item_c0::m.mItemFPTransitionTimer;
    }
}

/* 800B7190-800B71EC 0B1AD0 005C+00 9/9 0/0 0/0 .text            cancelItemUseQuake__9daAlink_cFi */
void daAlink_c::cancelItemUseQuake(int param_0) {
    if (i_checkNoResetFlg3(FLG3_UNK_4) && (param_0 != 0 || mProcID != PROC_HOOKSHOT_FLY)) {
        i_offNoResetFlg3(FLG3_UNK_4);
        dComIfGp_getVibration().StopQuake(31);
    }
}

/* 800B71EC-800B72E4 0B1B2C 00F8+00 6/6 0/0 0/0 .text cancelUpperItemReadyAnime__9daAlink_cFi */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::cancelUpperItemReadyAnime(int param_0) {
    if ((i_dComIfGp_getDoStatus() == 0x12 || param_0 != 0) &&
        ((param_0 == 0 && doTrigger()) ||
         (checkCanoeSlider() &&
          (subjectCancelTrigger() || i_checkEndResetFlg1(ERFLG1_UNK_20000000)))))
    {
        seStartSystem(0x6F);

        if (mEquipItem == IRONBALL) {
            field_0x3018 = 8;
            procIronBallReturnInit();
        } else {
            resetUpperAnime(UPPER_2, 3.0f);
            checkWaitAction();
        }

        return 1;
    }

    return 0;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::cancelUpperItemReadyAnime(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/cancelUpperItemReadyAnime__9daAlink_cFi.s"
}
#pragma pop
#endif

/* 800B72E4-800B7390 0B1C24 00AC+00 8/8 0/0 0/0 .text            checkItemActorPointer__9daAlink_cFv
 */
BOOL daAlink_c::checkItemActorPointer() {
    if (mItemAcKeep.getActor() != NULL) {
        return true;
    }

    mItemAcKeep.clearData();
    resetUpperAnime(UPPER_2, lit_6041);
    mEquipItem = NO_ITEM;

    if (i_checkModeFlg(MODE_RIDING)) {
        if (checkCanoeRide()) {
            procCanoeWaitInit(0);
        } else {
            procHorseWaitInit();
        }
    } else {
        procWaitInit();
    }

    return false;
}

/* 800B7390-800B74B4 0B1CD0 0124+00 2/2 0/0 0/0 .text            checkSwordTwirlAction__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daAlink_c::checkSwordTwirlAction() {
    nofralloc
#include "asm/d/a/d_a_alink/checkSwordTwirlAction__9daAlink_cFv.s"
}
#pragma pop

/* 800B74B4-800B7528 0B1DF4 0074+00 3/3 0/0 0/0 .text checkUpperItemActionFly__9daAlink_cFv */
BOOL daAlink_c::checkUpperItemActionFly() {
    if (checkBowAndSlingItem(mEquipItem)) {
        checkUpperItemActionBowFly();
    } else if (mEquipItem == BOOMERANG) {
        checkUpperItemActionBoomerangFly();
    } else if (mEquipItem == COPY_ROD) {
        checkUpperItemActionCopyRodFly();
    }

    return checkCanoeJumpRide();
}

/* 800B7528-800B75EC 0B1E68 00C4+00 1/1 0/0 0/0 .text            checkItemButtonChange__9daAlink_cFv
 */
void daAlink_c::checkItemButtonChange() {
    if (mProcID != PROC_CANOE_PADDLE_PUT && mEquipItem != NO_ITEM && !checkEquipAnime()) {
        u8 temp_r0;
        for (u8 i = 0; i < 2; i++) {
            temp_r0 = (i + 1) % 2;
            if (mEquipItem == dComIfGp_getSelectItem(i) &&
                (mEquipItem != dComIfGp_getSelectItem(temp_r0) || mSelectItemId != temp_r0))
            {
                mSelectItemId = i;
            }
        }
    }
}

/* 800B75EC-800B7B7C 0B1F2C 0590+00 1/1 0/0 0/0 .text            checkUpperItemAction__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daAlink_c::checkUpperItemAction() {
    nofralloc
#include "asm/d/a/d_a_alink/checkUpperItemAction__9daAlink_cFv.s"
}
#pragma pop

/* 800B7B7C-800B7BF8 0B24BC 007C+00 1/1 0/0 0/0 .text            orderPeep__9daAlink_cFv */
void daAlink_c::orderPeep() {
    mPeepExitID = ((kytag05_class*)field_0x27f4)->getSceneListID();
    field_0x2ff2 = 20;
    fopAcM_orderOtherEvent(this, field_0x27f4, l_peepEventName, 0xFFFF, 1, 0);
    if (i_checkWolf()) {
        procWolfWaitInit();
    } else {
        procWaitInit();
    }
}

/* ############################################################################################## */
/* 804532B0-804532B4 0018B0 0004+00 1/1 0/0 0/0 .sdata2          itemTalkType$67468 */
SECTION_SDATA2 static u16 itemTalkType[2] = {6, 7};

/* 800B7BF8-800B7D4C 0B2538 0154+00 13/13 0/0 0/0 .text            orderTalk__9daAlink_cFi */
int daAlink_c::orderTalk(int i_checkZTalk) {
    if (notTalk()) {
        return 0;
    }

    if ((i_dComIfGp_getDoStatus() == 0x1C || i_dComIfGp_getDoStatus() == 0x1B ||
         i_dComIfGp_getDoStatus() == 0x80 || i_dComIfGp_getDoStatus() == 0x3B ||
         i_dComIfGp_getDoStatus() == 0x3C || i_dComIfGp_getDoStatus() == 0x8) &&
        talkTrigger())
    {
        fopAcM_orderTalkEvent(this, field_0x27f4, 0, 0);
        return 1;
    }

    if (!i_checkWolf() && checkRequestTalkActor(mAttList2, field_0x27f8)) {
        for (int i = 0; i < 2; i++) {
            u8 item = dComIfGp_getSelectItem(i);

            // check if pressed X or Y and if item on button is a trade item
            if (checkTradeItem(item) && itemTriggerCheck(1 << i)) {
                fopAcM_orderTalkItemBtnEvent(itemTalkType[i], this, field_0x27f8, 0, 0);
                return 1;
            }
        }
    }

    if (i_checkZTalk) {
        return orderZTalk();
    }

    return 0;
}

/* ############################################################################################## */
/* 804532B4-804532B8 0018B4 0004+00 1/1 0/0 0/0 .sdata2          @67554 */
SECTION_SDATA2 static f32 lit_67554 = 1100.0f;

/* 800B7D4C-800B7F84 0B268C 0238+00 1/1 0/0 0/0 .text daAlink_searchBouDoor__FP10fopAc_ac_cPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daAlink_searchBouDoor(fopAc_ac_c* param_0, void* param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/daAlink_searchBouDoor__FP10fopAc_ac_cPv.s"
}
#pragma pop

/* 800B7F84-800B80C4 0B28C4 0140+00 1/1 0/0 0/0 .text daAlink_searchKolin__FP10fopAc_ac_cPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daAlink_searchKolin(fopAc_ac_c* param_0, void* param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/daAlink_searchKolin__FP10fopAc_ac_cPv.s"
}
#pragma pop

/* 800B80C4-800B8374 0B2A04 02B0+00 2/2 0/0 0/0 .text            orderZTalk__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::orderZTalk() {
    nofralloc
#include "asm/d/a/d_a_alink/orderZTalk__9daAlink_cFv.s"
}
#pragma pop

/* 800B8374-800B8930 0B2CB4 05BC+00 1/1 0/0 0/0 .text            checkNormalAction__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::checkNormalAction(){nofralloc
#include "asm/d/a/d_a_alink/checkNormalAction__9daAlink_cFv.s"
}
#pragma pop

u16 daAlink_c::getReadyItem() {
    return dComIfGp_getSelectItem(mSelectItemId);
}

/* 800B8930-800B8988 0B3270 0058+00 11/11 0/0 0/0 .text            checkReadyItem__9daAlink_cFv */
bool daAlink_c::checkReadyItem() {
    if (mEquipItem == NO_ITEM) {
        return false;
    }

    return getReadyItem() == mEquipItem;
}

/* 800B8988-800B9010 0B32C8 0688+00 2/2 0/0 0/0 .text            checkItemAction__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daAlink_c::checkItemAction() {
    nofralloc
#include "asm/d/a/d_a_alink/checkItemAction__9daAlink_cFv.s"
}
#pragma pop

/* 800B9010-800B9018 0B3950 0008+00 1/1 0/0 0/0 .text            checkRAction__9daAlink_cFv */
BOOL daAlink_c::checkRAction() {
    return false;
}

/* 800B9018-800B9148 0B3958 0130+00 1/1 0/0 0/0 .text            checkMoveDoAction__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daAlink_c::checkMoveDoAction() {
    nofralloc
#include "asm/d/a/d_a_alink/checkMoveDoAction__9daAlink_cFv.s"
}
#pragma pop

/* 800B9148-800B9254 0B3A88 010C+00 3/3 0/0 0/0 .text            checkSideRollAction__9daAlink_cFi
 */
#ifdef NONMATCHING
BOOL daAlink_c::checkSideRollAction(int param_0) {
    if (checkNotJumpSinkLimit() || checkHeavyStateOn(1, 1) || checkInputOnR() ||
        checkCutBackState())
    {
        return false;
    } else {
        if (mTargetedActor != NULL) {
            if (checkEnemyGroup(mTargetedActor) &&
                mTargetedActor->current.pos.abs2XZ(current.pos) <= lit_6237)
            {
                return procSideRollInit(param_0);
            } else {
                return procTurnMoveInit(param_0);
            }
        } else {
            return procSideRollInit(param_0);
        }
    }
    return false;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daAlink_c::checkSideRollAction(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/checkSideRollAction__9daAlink_cFi.s"
}
#pragma pop
#endif

/* 800B9254-800B92D0 0B3B94 007C+00 35/35 0/0 0/0 .text            checkNoUpperAnime__9daAlink_cCFv
 */
BOOL daAlink_c::checkNoUpperAnime() const {
    return checkNoSetUpperAnime() || checkSwimMoveHandAnime() || checkWindDashAnime() ||
           checkSwordTwirlAnime() || checkKandelaarEquipAnime();
}

/* 800B92D0-800B92F8 0B3C10 0028+00 1/1 0/0 0/0 .text checkOneHandItemEquipAnime__9daAlink_cCFv */
BOOL daAlink_c::checkOneHandItemEquipAnime() const {
    return checkUpperAnime(0x247) || checkUpperAnime(0x248);
}

/* 800B92F8-800B9340 0B3C38 0048+00 1/1 0/0 0/0 .text            checkItemEquipAnime__9daAlink_cCFv
 */
BOOL daAlink_c::checkItemEquipAnime() const {
    return checkTwoHandItemEquipAnime() || checkOneHandItemEquipAnime();
}

/* 800B9340-800B9398 0B3C80 0058+00 30/30 0/0 1/1 .text            checkEquipAnime__9daAlink_cCFv */
BOOL daAlink_c::checkEquipAnime() const {
    return checkSwordEquipAnime() || checkItemEquipAnime();
}

/* 800B9398-800B93CC 0B3CD8 0034+00 4/4 0/0 0/0 .text            checkWindDashAnime__9daAlink_cCFv
 */
BOOL daAlink_c::checkWindDashAnime() const {
    return checkUpperAnime(0x2B7) || (checkUpperAnime(0xCE) && mProcID != PROC_SLIDE);
}

/* 800B93CC-800B93F4 0B3D0C 0028+00 4/4 0/0 0/0 .text            checkSwordTwirlAnime__9daAlink_cCFv
 */
BOOL daAlink_c::checkSwordTwirlAnime() const {
    return checkUpperAnime(0x40) || checkUpperAnime(0x3F);
}

/* ############################################################################################## */
/* 804532B8-804532BC 0018B8 0004+00 1/1 0/0 0/0 .sdata2          @68266 */
SECTION_SDATA2 static f32 lit_68266 = -4.0f / 5.0f;

/* 800B93F4-800B9580 0B3D34 018C+00 7/7 0/0 0/0 .text            swordEquip__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::swordEquip(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/swordEquip__9daAlink_cFi.s"
}
#pragma pop

/* 800B9580-800B9640 0B3EC0 00C0+00 1/1 0/0 0/0 .text            swordUnequip__9daAlink_cFv */
void daAlink_c::swordUnequip() {
    f32 anm_speed;
    if (checkFastUnequip()) {
        anm_speed = daAlinkHIO_cut_c0::m.mFastUnequipAnmSpeed;
    } else {
        anm_speed = daAlinkHIO_cut_c0::m.mUnequipAnm.mSpeed;
    }

    u16 anm_id = i_checkReinRide() ? (u16)0x261 : (u16)0x255;

    setUpperAnime(anm_id, UPPER_2, anm_speed, daAlinkHIO_cut_c0::m.mUnequipAnm.mStartFrame,
                  daAlinkHIO_cut_c0::m.mUnequipAnm.mEndFrame,
                  daAlinkHIO_cut_c0::m.mUnequipAnm.mInterpolation);
    setFacePriTexture(FTANM_UNK_2D);
    setFaceBck(0x15E, 1, 0xFFFF);
}

/* 800B9640-800B96A4 0B3F80 0064+00 6/6 0/0 0/0 .text            itemEquip__9daAlink_cFUs */
void daAlink_c::itemEquip(u16 i_itemID) {
    if (mThrowBoomerangAcKeep.getActor() == NULL || i_itemID != BOOMERANG) {
        field_0x2fde = i_itemID;
        dComIfGp_clearPlayerStatus0(0, 0x400000);
        i_offNoResetFlg3(FLG3_COPY_ROD_THROW_AFTER);
        itemUnequip(field_0x2fde, lit_6041);
    }
}

/* 800B96A4-800B97EC 0B3FE4 0148+00 2/2 0/0 0/0 .text            itemUnequip__9daAlink_cFUsf */
/**
 * This handles setting the animation for both equipping and unequipping items
 * When `param_1` is positive, it will play the unequip animation
 * When `param_1` is negative, it will play the equip animation
 *
 */
// matches with literals
#ifdef NONMATCHING
void daAlink_c::itemUnequip(u16 i_itemID, f32 i_playSpeed) {
    u16 anm_id;
    const daAlinkHIO_anm_c* anm_data;

    if (i_itemID == BOOMERANG || i_itemID == COPY_ROD || i_itemID == KANTERA ||
        i_itemID == HOOKSHOT || checkBottleItem(i_itemID))
    {
        anm_id = 0x247;
        anm_data = &daAlinkHIO_item_c0::m.mOneHandEquipAnm;
    } else if (checkBowAndSlingItem(i_itemID)) {
        anm_id = checkBowGrabLeftHand() ? (u16)0x247 : (u16)0x248;
        anm_data = &daAlinkHIO_item_c0::m.mOneHandEquipAnm;
    } else {
        anm_id = 0x245;
        anm_data = &daAlinkHIO_item_c0::m.mTwoHandEquipAnm;
    }

    f32 anm_speed;
    if (i_playSpeed > 0.0f && checkFastUnequip()) {
        if (anm_id == 0x245) {
            anm_speed = daAlinkHIO_item_c0::m.mTwoHandReleaseAnmSpeed;
        } else {
            anm_speed = daAlinkHIO_item_c0::m.mOneHandReleaseAnmSpeed;
        }
    } else {
        anm_speed = anm_data->mSpeed * i_playSpeed;
    }

    setUpperAnime(anm_id, UPPER_2, anm_speed, anm_data->mStartFrame, anm_data->mEndFrame,
                  anm_data->mInterpolation);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::itemUnequip(u16 i_itemID, f32 i_playSpeed) {
    nofralloc
#include "asm/d/a/d_a_alink/itemUnequip__9daAlink_cFUsf.s"
}
#pragma pop
#endif

/* 800B97EC-800B983C 0B412C 0050+00 2/2 0/0 0/0 .text            checkFastUnequip__9daAlink_cFv */
bool daAlink_c::checkFastUnequip() {
    return mProcID == PROC_PREACTION_UNEQUIP || mProcID == PROC_HORSE_GETOFF || checkEventRun();
}

/* 800B983C-800B994C 0B417C 0110+00 10/10 0/0 0/0 .text            allUnequip__9daAlink_cFi */
void daAlink_c::allUnequip(int param_0) {
    if (i_checkNoResetFlg2(FLG2_UNK_1) && param_0 != 0 && !checkCanoeRide() &&
        mEquipItem != KANTERA)
    {
        for (u8 i = 0; i < 2; i++) {
            if (dComIfGp_getSelectItem(i) == KANTERA) {
                mSelectItemId = i;
            }
        }
        itemEquip(KANTERA);
        i_onNoResetFlg1(FLG1_UNK_40);
        return;
    } else if (mEquipItem == EQUIP_SWORD) {
        swordUnequip();
    } else if (mEquipItem == noentry71) {
        deleteEquipItem(0, 0);
        field_0x2060->initOldFrameMorf(lit_7808, 0, 35);
    } else {
        itemUnequip(mEquipItem, lit_6040);
    }

    field_0x2fde = 0xFF;
}

/* 800B994C-800B9D2C 0B428C 03E0+00 8/8 0/0 0/0 .text checkItemChangeFromButton__9daAlink_cFv */
BOOL daAlink_c::checkItemChangeFromButton() {
    if (i_checkModeFlg(4) && !checkEquipAnime() && !checkBoomerangThrowAnime() &&
        !checkCopyRodThrowAnime() && !checkKandelaarSwingAnime() && !checkKandelaarSwingAnime())
    {
        if (dComIfGs_getSelectEquipSword() != NO_ITEM && !checkNotBattleStage() &&
            !checkCanoeRide() && (!i_checkModeFlg(0x40000) || i_checkEquipHeavyBoots()) &&
            mEquipItem != 0x103 && swordTrigger())
        {
            if (i_checkEndResetFlg1(ERFLG1_UNK_40000000)) {
                return 0;
            }

            swordEquip(1);
        } else if (checkCanoeRide() && !checkStageName("F_SP103") && !checkCanoeSlider() &&
                   !checkFisingRodLure() && swordTrigger())
        {
            itemEquip(0x105);
        } else {
            u8 i;
            for (i = 0; i < 2; i++) {
                int tmp = checkNewItemChange(i);
                if (tmp && itemTriggerCheck(1 << i)) {
                    return changeItemTriggerKeepProc(i, tmp);
                }
            }

            if (doTrigger() && i_dComIfGp_getDoStatus() == 4) {
                if (mEquipItem != KANTERA && i_checkNoResetFlg2(FLG2_UNK_1)) {
                    offKandelaarModel();
                } else if (mSwordFlourishTimer != 0 && mEquipItem == EQUIP_SWORD &&
                           !checkWoodSwordEquip() && !i_checkModeFlg(0x402))
                {
                    return procSwordUnequipSpInit();
                } else {
                    allUnequip(1);
                }
            } else if (mEquipItem == NO_ITEM && mThrowBoomerangAcKeep.getActor() == NULL &&
                       !checkCanoeRide() && checkNoUpperAnime() && i_checkNoResetFlg2(FLG2_UNK_1))
            {
                for (i = 0; i < 2; i++) {
                    if (dComIfGp_getSelectItem(i) == KANTERA) {
                        mSelectItemId = i;
                    }
                }

                itemEquip(KANTERA);
                i_onNoResetFlg1(FLG1_UNK_40);
            } else if (mEquipItem != 0x103 && mEquipItem != NO_ITEM && mEquipItem != 0x10B &&
                       mEquipItem != 0x102 && (!checkCanoeRide() || !checkFisingRodLure()))
            {
                if (!checkEventRun() ||
                    strcmp(i_dComIfGp_getEventManager().getRunEventName(), "ANGER"))
                {
                    if (strcmp(i_dComIfGp_getEventManager().getRunEventName(), "ANGER2") &&
                        checkItemSetButton(mEquipItem) == 2)
                    {
                        allUnequip(1);
                    }
                }
            }
        }
    }

    return 0;
}

/* 800B9D2C-800B9F50 0B466C 0224+00 12/12 0/0 0/0 .text checkNextActionFromButton__9daAlink_cFv */
BOOL daAlink_c::checkNextActionFromButton() {
    if (checkItemChangeAutoAction()) {
        return 1;
    }

    if (checkUpperItemAction()) {
        return 1;
    }

    if (checkDkCaught2Anime()) {
        return 0;
    }

    if (i_checkModeFlg(0x400)) {
        if (i_dComIfGp_getDoStatus() == 0 && checkCanoeRide() && checkFisingRodLure()) {
            setDoStatus(4);
        }
    } else if (!i_checkModeFlg(0x40000)) {
        if ((i_checkWolf() && !checkWolfGrabAnime()) ||
            (!i_checkWolf() && getCopyRodControllActor() == NULL &&
             (checkEquipAnime() || i_checkNoResetFlg0(FLG0_UNK_1000000) || checkUpperGuardAnime() ||
              checkIronBallWaitAnime() || checkNoUpperAnime())))
        {
            decideDoStatus();

            if (checkNormalAction()) {
                return 1;
            }
        } else {
            decideCommonDoStatus();
        }
    }

    if (cancelUpperItemReadyAnime(0)) {
        return 1;
    }

    if (checkItemAction()) {
        return 1;
    }

    if (!i_checkModeFlg(0x40400)) {
        if (checkRAction()) {
            return 1;
        }

        if (checkMoveDoAction()) {
            return 1;
        }
    }

    if (!i_checkModeFlg(0x40000) && checkSubjectAction()) {
        return 1;
    }

    return checkItemChangeFromButton();
}

/* 800B9F50-800BA09C 0B4890 014C+00 14/14 0/0 0/0 .text checkGroundSpecialMode__9daAlink_cFv */
BOOL daAlink_c::checkGroundSpecialMode() {
    if (mLinkAcch.ChkGroundHit() && !i_checkModeFlg(MODE_PLAYER_FLY) && !i_checkMagneBootsOn() &&
        i_checkEndResetFlg0(ERFLG0_UNK_2))
    {
        return procCoMetamorphoseInit();
    }

    if (mLinkAcch.ChkGroundHit() && !i_checkModeFlg(MODE_PLAYER_FLY) && checkBoardRestart()) {
        return procBoardWaitInit(mRideAcKeep.getActor());
    }

    if (checkGoatStopGame()) {
        return procGoatMoveInit();
    }

    if (mSpecialMode == 1) {
        return procSumouReadyInit();
    }

    if (i_checkGoronSideMove()) {
        return procGoronMoveInit();
    }

    if (checkCanoeSlider()) {
        return procCanoeJumpRideInit(NULL);
    }

    if (checkSlideAction()) {
        return 1;
    }

    fopAc_ac_c* actor = checkGoronRide();
    if (actor != NULL) {
        return procGoronRideWaitInit(actor);
    }

    if (i_checkEndResetFlg1(ERFLG1_UNK_1)) {
        return procScreamWaitInit();
    }

    return NULL;
}

/* 800BA09C-800BA0D0 0B49DC 0034+00 4/4 0/0 0/0 .text            commonCheckNextAction__9daAlink_cFi
 */
void daAlink_c::commonCheckNextAction(int param_0) {
    if (i_checkWolf()) {
        checkNextActionWolf(param_0);
    } else {
        checkNextAction(param_0);
    }
}

/* 800BA0D0-800BA6A0 0B4A10 05D0+00 91/91 0/0 0/0 .text            checkNextAction__9daAlink_cFi */
// checkAttentionLock issue / literals
#ifdef NONMATCHING
#pragma push
#pragma optimization_level 2
int daAlink_c::checkNextAction(int param_0) {
    f32 temp_f31 = field_0x594;

    if (checkDeadAction(1)) {
        return 1;
    }

    if (checkGroundSpecialMode()) {
        return 1;
    }

    u32 procID = mProcID;
    if (procID != PROC_MOVE_TURN && (param_0 == 0 || checkInputOnR()) &&
        (procID != PROC_HOOKSHOT_MOVE || checkHookshotWait()))
    {
        if (mTargetedActor != NULL || i_checkAttentionLock()) {
            setSpeedAndAngleAtn();
        } else if (((!checkUpperReadyThrowAnime() || mFastShotTime != 0) ||
                    (checkBoomerangThrowAnime() &&
                     (mThrowBoomerangAcKeep.getActor() != NULL || mEquipItem == noentry71 ||
                      i_checkNoResetFlg1(FLG1_UNK_2)))) ||
                   (checkCopyRodThrowAnime() &&
                    (mCopyRodAcKeep.getActor() != NULL || i_checkNoResetFlg1(FLG1_UNK_10000))))
        {
            setSpeedAndAngleNormal();
        }
    }

    setFrontWallType();

    bool attention_state = checkAttentionState();
    if (attention_state) {
        if (i_checkFmChainGrabAnime()) {
            field_0x594 = 13.0f;
        } else if (mTargetedActor != NULL) {
            field_0x594 = daAlinkHIO_atnMove_c0::m.mMaxSpeed;
        } else {
            field_0x594 = daAlinkHIO_noActAtnMove_c0::m.mMaxSpeed;
        }
    } else if (checkSlope()) {
        field_0x594 = daAlinkHIO_slide_c0::m.mMaxClimbSpeed;
    } else {
        field_0x594 = daAlinkHIO_move_c0::m.mMaxSpeed;
    }

    if (i_checkEndResetFlg0(ERFLG0_UNK_100000) && mLinkAcch.ChkGroundHit() &&
        !i_checkModeFlg(MODE_PLAYER_FLY))
    {
        return procFloorDownReboundInit();
    }

    if (checkCutDashChargeAnime() && !checkDashAnime()) {
        return procCutTurnMoveInit(0);
    }

    if (checkNextActionFromButton()) {
        return 1;
    }

    if (param_0 != 0 && !checkInputOnR() && !checkEquipAnime()) {
        field_0x594 = temp_f31;
        return 0;
    }

    int ret;
    if (attention_state) {
        if (checkBowAnime()) {
            ret = checkNextActionBow();
        } else if (checkBoomerangAnimeAndReturnWait() && mEquipItem != 0x102) {
            ret = checkNextActionBoomerang();
        } else if (checkCopyRodAnime()) {
            ret = checkNextActionCopyRod();
        } else if (checkHookshotAnime()) {
            ret = checkNextActionHookshot();
        } else if (checkIronBallAnime()) {
            ret = checkNextActionIronBall();
        } else if (mTargetedActor != NULL || mDemo.getDemoMode() == 0x17) {
            if (checkZeroSpeedF()) {
                ret = procAtnActorWaitInit();
            } else {
                ret = procAtnActorMoveInit();
            }
        } else if (checkZeroSpeedF()) {
            ret = checkWaitAction();
        } else {
            ret = procAtnMoveInit();
        }
    } else {
        field_0x2f98 = 4;

        if (checkZeroSpeedF()) {
            if (cLib_distanceAngleS(field_0x2fe2, current.angle.y) > 0x7800 && checkInputOnR()) {
                ret = procWaitTurnInit();
                if (!ret && !checkEventRun()) {
                    ret = checkWaitAction();
                }
            } else {
                ret = checkWaitAction();
            }
        } else if (mProcID == PROC_MOVE_TURN && current.angle.y != shape_angle.y) {
            ret = procMoveTurnInit(0);
        } else if (checkInputOnR() && cLib_distanceAngleS(field_0x2fe2, current.angle.y) > 0x7800) {
            if (speedF / field_0x594 > daAlinkHIO_move_c0::m.mSlideThresholdSpeed &&
                field_0x2fa8 != 8 && !checkGrabAnime() &&
                getDirectionFromAngle(mPrevStickAngle - mStickAngle) == DIR_BACKWARD)
            {
                ret = procSlipInit();
            } else {
                ret = procMoveTurnInit(1);
            }
        } else if (checkInputOnR() &&
                   getDirectionFromAngle(field_0x2fe2 - current.angle.y) == DIR_BACKWARD)
        {
            ret = procMoveTurnInit(1);
        } else {
            ret = procMoveInit();
        }
    }

    return ret;
}
#pragma pop
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::checkNextAction(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/checkNextAction__9daAlink_cFi.s"
}
#pragma pop
#endif

/* 800BA6A0-800BA914 0B4FE0 0274+00 3/3 0/0 0/0 .text            commonChangeItem__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::commonChangeItem() {
    nofralloc
#include "asm/d/a/d_a_alink/commonChangeItem__9daAlink_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 804532BC-804532C0 0018BC 0004+00 1/1 0/0 0/0 .sdata2          @68956 */
SECTION_SDATA2 static f32 lit_68956 = 9.5f;

/* 800BA914-800BAF08 0B5254 05F4+00 1/1 0/0 0/0 .text            setItemAction__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setItemAction() {
    nofralloc
#include "asm/d/a/d_a_alink/setItemAction__9daAlink_cFv.s"
}
#pragma pop

/* 800BAF08-800BAF80 0B5848 0078+00 2/2 0/0 0/0 .text checkNextActionFromCrouch__9daAlink_cFi */
BOOL daAlink_c::checkNextActionFromCrouch(int param_0) {
    if (checkNextAction(param_0)) {
        if (field_0x2f8c == 1 || field_0x2f8c == 2 || field_0x2f8c == 3) {
            field_0x2060->initOldFrameMorf(daAlinkHIO_crouch_c0::m.mStandInterpolation, 0, 0x23);
        }

        return true;
    }

    return false;
}

/* 800BAF80-800BB020 0B58C0 00A0+00 18/18 0/0 0/0 .text checkUpperReadyThrowAnime__9daAlink_cCFv
 */
int daAlink_c::checkUpperReadyThrowAnime() const {
    return checkBoomerangAnime() || checkCopyRodAnime() || checkHookshotAnime() ||
           checkIronBallAnime() || checkBowAnime();
}

/* 800BB020-800BB084 0B5960 0064+00 2/2 0/0 0/0 .text getBodyAngleXBasePos__9daAlink_cFP4cXyz */
void daAlink_c::getBodyAngleXBasePos(cXyz* o_pos) {
    int mtx_id;

    if (mProcID == PROC_HOOKSHOT_WALL_SHOOT || mProcID == PROC_HOOKSHOT_ROOF_SHOOT) {
        if (field_0x3020 == 0) {
            mtx_id = 7;
        } else {
            mtx_id = 12;
        }
    } else {
        mtx_id = 1;
    }

    mDoMtx_multVecZero(mpLinkModel->i_getAnmMtx(mtx_id), o_pos);
}

/* 800BB084-800BB2B0 0B59C4 022C+00 3/3 0/0 0/0 .text            getBodyAngleXAtnActor__9daAlink_cFi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm s16 daAlink_c::getBodyAngleXAtnActor(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/getBodyAngleXAtnActor__9daAlink_cFi.s"
}
#pragma pop

/* 800BB2B0-800BB324 0B5BF0 0074+00 13/13 0/0 0/0 .text setBodyAngleXReadyAnime__9daAlink_cFi */
void daAlink_c::setBodyAngleXReadyAnime(int param_0) {
    s16 angle_x = getBodyAngleXAtnActor(param_0);

    if (checkUpperGuardAnime()) {
        angle_x >>= 1;  // divide by 2 adds extra addze?
    }

    cLib_addCalcAngleS(&mBodyAngle.x, angle_x, 4, 0x0C00, 0x0180);
    field_0x310a = mBodyAngle.x;
}

/* 800BB324-800BB408 0B5C64 00E4+00 2/2 0/0 0/0 .text            setMagicArmorBrk__9daAlink_cFi */
void daAlink_c::setMagicArmorBrk(int param_0) {
    J3DModelData* model_data = mpLinkModel->getModelData();
    mMagicArmorBodyBrk = (J3DAnmTevRegKey*)dComIfG_getObjectRes(l_mArcName, bodyBrkName[param_0]);
    mMagicArmorBodyBrk->searchUpdateMaterialID(model_data);
    model_data->entryTevRegAnimator(mMagicArmorBodyBrk);
    mMagicArmorBodyBrk->setFrame(FLOAT_LABEL(lit_6108));

    J3DModelData* head_model_data = mpLinkHatModel->getModelData();
    mMagicArmorHeadBrk = (J3DAnmTevRegKey*)dComIfG_getObjectRes(l_mArcName, headBrkName[param_0]);
    mMagicArmorHeadBrk->searchUpdateMaterialID(head_model_data);
    head_model_data->entryTevRegAnimator(mMagicArmorHeadBrk);
    mMagicArmorHeadBrk->setFrame(FLOAT_LABEL(lit_6108));

    field_0x2fd7 = param_0;
}

/* 800BB408-800BB458 0B5D48 0050+00 6/6 0/0 0/0 .text            checkMagicArmorHeavy__9daAlink_cCFv
 */
BOOL daAlink_c::checkMagicArmorHeavy() const {
    return checkMagicArmorWearAbility() && i_dComIfGs_getRupee() == 0;
}

/* 800BB458-800BB4B8 0B5D98 0060+00 1/0 0/0 0/0 .text checkBootsOrArmorHeavy__9daAlink_cCFv */
BOOL daAlink_c::checkBootsOrArmorHeavy() const {
    return i_checkEquipHeavyBoots() || checkMagicArmorHeavy() || checkIronBallWaitAnime();
}

/* 800BB4B8-800BB560 0B5DF8 00A8+00 29/29 0/0 0/0 .text            checkHeavyStateOn__9daAlink_cFii
 */
// param_0 something related to boots
BOOL daAlink_c::checkHeavyStateOn(int param_0, int param_1) {
    if (!checkEventRun()) {
        if ((param_1 != 0 && mSinkShapeOffset < lit_14614) ||
            (param_0 != 0 && checkIronBallWaitAnime()) || checkIronBallAnime() ||
            checkMagicArmorHeavy() || getHeavyStateAndBoots())
        {
            return true;
        }
    }
    return false;
}

/* 800BB560-800BB644 0B5EA0 00E4+00 1/0 0/0 0/0 .text            setOutPower__9daAlink_cFfsi */
void daAlink_c::setOutPower(f32 param_0, s16 param_1, int param_2) {
    if (!i_checkFmChainGrabAnime() || !checkBossRoom() || fopAcM_GetRoomNo(this) != 50 ||
        !i_checkEquipHeavyBoots())
    {
        field_0x3400 += param_0 * cM_ssin(param_1);
        field_0x3404 += param_0 * cM_scos(param_1);

        if (param_2) {
            i_onEndResetFlg0(ERFLG0_UNK_8);
        }
    }
}

/* 800BB644-800BB770 0B5F84 012C+00 3/3 0/0 0/0 .text            initGravity__9daAlink_cFv */
void daAlink_c::initGravity() {
    f32 gravity;
    f32 max_fall_speed;

    if (i_checkWolf()) {
        if (i_checkModeFlg(MODE_SWIMMING)) {
            if (checkHeavyStateOn(1, 1)) {
                gravity = -daAlinkHIO_wlSwim_c0::m.field_0x9C;
                max_fall_speed = daAlinkHIO_wlSwim_c0::m.field_0xA0;
            } else {
                gravity = -daAlinkHIO_wlSwim_c0::m.field_0x60;
                max_fall_speed = daAlinkHIO_wlSwim_c0::m.field_0x58;
            }
        } else {
            gravity = daAlinkHIO_wlAutoJump_c0::m.field_0x58;
            max_fall_speed = daAlinkHIO_wlAutoJump_c0::m.field_0x5c;
        }
    } else if (i_checkModeFlg(MODE_SWIMMING) || i_checkNoResetFlg0(FLG0_UNDERWATER)) {
        max_fall_speed = getSwimMaxFallSpeed();
        if (checkHeavyStateOn(1, 1) && mProcID != PROC_OCTAIEAL_SPIT) {
            gravity = daAlinkHIO_swim_c0::m.mBootsGravity;
        } else {
            gravity = -daAlinkHIO_swim_c0::m.mBuoyancy;
        }
    } else {
        gravity = daAlinkHIO_autoJump_c0::m.mGravity;
        max_fall_speed = daAlinkHIO_autoJump_c0::m.mMaxFallSpeed;
    }

    setSpecialGravity(gravity, max_fall_speed, 1);
}

/* 800BB770-800BB7A0 0B60B0 0030+00 64/64 0/0 0/0 .text            setSpecialGravity__9daAlink_cFffi
 */
void daAlink_c::setSpecialGravity(f32 i_gravity, f32 i_speed, int i_offFlag) {
    if (i_offFlag) {
        i_offNoResetFlg3(FLG3_UNK_4000);
    } else {
        i_onNoResetFlg3(FLG3_UNK_4000);
    }

    mGravity = i_gravity;
    mMaxFallSpeed = i_speed;
}

/* 800BB7A0-800BBD40 0B60E0 05A0+00 1/1 0/0 0/0 .text            transAnimeProc__9daAlink_cFP4cXyzff
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::transAnimeProc(cXyz* param_0, f32 param_1, f32 param_2) {
    nofralloc
#include "asm/d/a/d_a_alink/transAnimeProc__9daAlink_cFP4cXyzff.s"
}
#pragma pop

/* 800BBD40-800BBF68 0B6680 0228+00 1/1 0/0 0/0 .text            setFootSpeed__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setFootSpeed() {
    nofralloc
#include "asm/d/a/d_a_alink/setFootSpeed__9daAlink_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80392040-8039204C 01E6A0 000C+00 0/1 0/0 0/0 .rodata          @69600 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_69600[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80392040, &lit_69600);
#pragma pop

/* 8039204C-80392058 01E6AC 000C+00 0/1 0/0 0/0 .rodata          @69683 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_69683[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8039204C, &lit_69683);
#pragma pop

/* 80392094-80392094 01E6F4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_803925B2 = "F_SP113";
#pragma pop

/* 804532C0-804532C4 0018C0 0004+00 2/2 0/0 0/0 .sdata2          @70084 */
SECTION_SDATA2 static f32 lit_70084 = 2.25f;

/* 800BBF68-800BD6FC 0B68A8 1794+00 1/1 0/0 0/0 .text            posMove__9daAlink_cFv */
// mostly matches outside some cXyz literals and float literals
#ifdef NONMATCHING
void daAlink_c::posMove() {
    cXyz sp108;

    f32 temp_f30 = cM_ssin(shape_angle.y);
    f32 temp_f29 = cM_scos(shape_angle.y);

    if (!i_checkNoResetFlg3(FLG3_UNK_4000)) {
        initGravity();
    }

    transAnimeProc(&sp108, temp_f30, temp_f29);

    s16 var_r26;
    if (i_checkModeFlg(MODE_SWIMMING)) {
        var_r26 = field_0x3080;
    } else if (!mLinkAcch.ChkGroundHit() || i_checkMagneBootsOn() ||
               (i_checkModeFlg(MODE_PLAYER_FLY) && !checkBoardRide()) || field_0x3174 == 8)
    {
        var_r26 = 0;
    } else {
        var_r26 = getGroundAngle(&mLinkAcch.m_gnd, current.angle.y);
    }

    setFootSpeed();
    if (i_checkEndResetFlg0(ERFLG0_UNK_10000000)) {
        speedF = 0.0f;
        mNormalSpeed = 0.0f;
    }

    speedF = mNormalSpeed * (1.0f - fabsf(mSpeedModifier));

    f32 mod = field_0x33a0 * (1.0f - field_0x2060->getOldFrameRate()) * mSpeedModifier;
    if (speedF < 0.0f) {
        speedF -= mod;
    } else {
        speedF += mod;
    }

    if (getZoraSwim() && !checkZoraWearAbility()) {
        speedF *= daAlinkHIO_swim_c0::m.mSurfaceSwimSpeedRate;
    }

    f32 var_f31 = speedF;
    speedF *= cM_scos(var_r26);

    if (var_r26 < 0 && !checkBoardRide() && !i_checkModeFlg(MODE_SWIMMING)) {
        speedF *= 0.85f;
    }

    if (mProcID == PROC_AUTO_JUMP && checkGrabGlide() &&
        (field_0xC04[0].ChkTgHit() || field_0xC04[1].ChkTgHit() || field_0xC04[2].ChkTgHit()))
    {
        speedF *= 0.5f;
    }

    speed.x = speedF * cM_ssin(current.angle.y);
    speed.z = speedF * cM_scos(current.angle.y);

    if (checkNoCollisionCorret() || (i_checkModeFlg(0x40) && i_checkModeFlg(0x4000))) {
        field_0x342c = 0.0f;
        field_0x3430 = 0.0f;
    }

    BOOL eventRunning = checkEventRun();
    if (!i_checkEquipHeavyBoots() && mLinkAcch.ChkGroundHit() && !i_checkModeFlg(0x40) &&
        !eventRunning)
    {
        if (checkLv2MiddleBossBgRide(getMoveBGActorName(mLinkAcch.m_gnd, 0))) {
            cM3dGPla plane;
            dComIfG_Bgsp().GetTriPla(mLinkAcch.m_gnd, &plane);

            f32 temp_f0 = cM_sht2d(cM_atan2s(plane.mNormal.absXZ(), plane.mNormal.y));

            if (temp_f0 >= daAlinkHIO_slide_c0::m.mLV2MinibossFloorWeakSlideAngle &&
                temp_f0 <= daAlinkHIO_slide_c0::m.mLV2MinibossFloorSlideAngle)
            {
                temp_f0 = ((temp_f0 - daAlinkHIO_slide_c0::m.mLV2MinibossFloorWeakSlideAngle) *
                           daAlinkHIO_slide_c0::m.mLV2MinibossFloorWeakSlideSpeed) /
                          (daAlinkHIO_slide_c0::m.mLV2MinibossFloorSlideAngle -
                           daAlinkHIO_slide_c0::m.mLV2MinibossFloorWeakSlideAngle);
                plane.mNormal.y = 0.0f;
                plane.mNormal.normalizeZP();

                speed.x += temp_f0 * plane.mNormal.x;
                speed.z += temp_f0 * plane.mNormal.z;
            }
        }
    }

    if (i_checkModeFlg(MODE_SWIMMING)) {
        cLib_chasePos(&field_0x3750, cXyz::Zero, daAlinkHIO_damSwim_c0::m.field_0x84);
        current.pos += field_0x3750;

        if (i_checkNoResetFlg0(FLG0_UNK_100) && mProcID != PROC_SWIM_DIVE) {
            current.pos.y = mWaterY;
        } else if (mDemo.getDemoType() == 4 || mProcID == PROC_ELEC_DAMAGE ||
                   i_dComIfGp_checkPlayerStatus0(0, 0x10))
        {
            speed.y = 0.0f;
        } else if (i_checkWolf()) {
            if (checkHeavyStateOn(1, 1)) {
                speed.y += daAlinkHIO_wlSwim_c0::m.field_0x9C;

                if (speed.y > daAlinkHIO_wlSwim_c0::m.field_0xA4) {
                    speed.y = daAlinkHIO_wlSwim_c0::m.field_0xA4;
                }
            } else {
                speed.y += daAlinkHIO_wlSwim_c0::m.field_0x60;

                if (speed.y > daAlinkHIO_wlSwim_c0::m.field_0x5C) {
                    speed.y = daAlinkHIO_wlSwim_c0::m.field_0x5C;
                }
            }
        } else if (!i_checkEquipHeavyBoots() && getZoraSwim()) {
            speed.y = -var_f31 * cM_ssin(var_r26);
        } else if ((checkBootsOrArmorHeavy() && mProcID != PROC_DEAD) || mProcID == PROC_SWIM_DIVE)
        {
            speed.y += mGravity;

            if (speed.y < mMaxFallSpeed) {
                speed.y = mMaxFallSpeed;
            }
        } else if (speed.y > daAlinkHIO_swim_c0::m.mMaxFloatUpSpeed) {
            speed.y += mGravity;
        } else if (speed.y < mMaxFallSpeed) {
            speed.y += 1.0f;
        } else {
            if (checkZoraWearAbility() &&
                mWaterY > current.pos.y + daAlinkHIO_swim_c0::m.mNormalFloatDepth)
            {
                speed.y += daAlinkHIO_swim_c0::m.mZoraFloatDepth;

                if (speed.y < 0.0f) {
                    speed.y = 0.0f;
                }
            } else {
                speed.y += daAlinkHIO_swim_c0::m.mBuoyancy;
            }

            if (speed.y > daAlinkHIO_swim_c0::m.mMaxFloatUpSpeed) {
                speed.y = daAlinkHIO_swim_c0::m.mMaxFloatUpSpeed;
            }
        }
    } else if (!i_checkModeFlg(0x400)) {
        if (checkHeavyStateOn(1, 1) && mProcID != PROC_SPINNER_READY &&
            !i_checkNoResetFlg0(FLG0_UNDERWATER))
        {
            speed.y += mGravity * 2.25f;

            if (speed.y < mMaxFallSpeed * 1.5f) {
                speed.y = mMaxFallSpeed * 1.5f;
            }
        } else {
            speed.y += mGravity;

            if (speed.y < mMaxFallSpeed) {
                speed.y = mMaxFallSpeed;
            }
        }
    } else if (checkBoardRide()) {
        mLinkAcch.OffLineCheck();
        speed.y += mGravity;

        if (speed.y < mMaxFallSpeed) {
            speed.y = mMaxFallSpeed;
        }
    }

    setIceSlipSpeed();
    var_f31 = current.pos.y;

    if (!i_checkModeFlg(0x400) || checkBoardRide()) {
        if (i_checkMagneBootsOn()) {
            mDoMtx_stack_c::copy(mMagneBootMtx);
            mDoMtx_stack_c::YrotM(current.angle.y);

            cXyz spFC;
            spFC.z = speedF;
            mDoMtx_stack_c::multVecSR(&spFC, &speed);
            current.pos += speed;
            current.pos.x += field_0x342c;
            current.pos.z += field_0x3430;
        } else {
            current.pos += speed;
            current.pos.x += field_0x342c;
            current.pos.z += field_0x3430;

            if (i_checkEndResetFlg1(ERFLG1_UNK_800) && checkStageName("F_SP113")) {
                current.pos.y -= 50.0f;
            }
        }
    }

    if (checkBoardRide() && !i_checkModeFlg(2)) {
        current.pos.y -= speedF * cM_ssin(var_r26);
    }

    if (i_getSumouMode() && mProcID != PROC_SUMOU_WIN_LOSE) {
        current.pos.y = var_f31 - 1.0f;
        speed.y = mGravity;
    }

    field_0x342c = 0.0f;
    field_0x3430 = 0.0f;

    setPolygonSpeed();
    setWindSpeed();
    BOOL var_r27 = FALSE;

    if (!checkNoCollisionCorret() && !i_checkModeFlg(0x40)) {
        if (!i_checkNoResetFlg3(FLG3_UNK_20000000)) {
            current.pos += *field_0x814.GetCCMoveP();
        }

        if (!eventRunning) {
            if (!i_checkEndResetFlg0(ERFLG0_UNK_8) || !checkHeavyStateOn(1, 1)) {
                current.pos.x += field_0x3400;
                current.pos.z += field_0x3404;
            }

            if (mLinkAcch.ChkGroundHit() && dComIfG_Bgsp().ChkPolySafe(mLinkAcch.m_gnd)) {
                s16 angle1 = getGroundAngle(&mLinkAcch.m_gnd, 0);
                current.pos.z += field_0x35c4.z * cM_scos(angle1);

                s16 angle2 = getGroundAngle(&mLinkAcch.m_gnd, 0x4000);
                current.pos.x += field_0x35c4.x * cM_scos(angle2);

                if (checkZeroSpeedF() && field_0x35c4.abs2() > 9.0f) {
                    seStartOnlyReverbLevel(Z2SE_AL_ICE_SLIP);
                }
            }

            current.pos += field_0x3594;

            if (i_checkModeFlg(2)) {
                current.pos += field_0x35ac;
            } else {
                current.pos.x += field_0x35ac.x;
                current.pos.z += field_0x35ac.z;
            }
        } else if (i_checkNoResetFlg0(FLG0_UNK_14000)) {
            current.pos += field_0x3594;
        }
    } else if (checkOctaIealSpecialCollect()) {
        f32 temp_f1 = getHookshotTopPos()->abs(current.pos);

        current.pos += *field_0x814.GetCCMoveP();

        f32 temp_f31 = getHookshotTopPos()->abs(current.pos);
        if (temp_f31 > temp_f1) {
            current.pos.y += temp_f31 - temp_f1;
        }
    } else if (!eventRunning && (mProcID == PROC_HANG_MOVE || mProcID == PROC_CLIMB_MOVE_SIDE ||
                                 mProcID == PROC_CLIMB_MOVE_UPDOWN || mProcID == PROC_CLIMB_WAIT ||
                                 mProcID == PROC_HANG_WAIT))
    {
        f32 temp_f31 = field_0x814.GetCCMoveP()->absXZ();
        var_r27 = TRUE;

        if (temp_f31 > 1.0f) {
            if ((s16)(field_0x814.GetCCMoveP()->atan2sX_Z() - shape_angle.y) >= 0) {
                current.pos.x += temp_f31 * temp_f29;
                current.pos.z -= temp_f31 * temp_f30;
            } else {
                current.pos.x -= temp_f31 * temp_f29;
                current.pos.z += temp_f31 * temp_f30;
            }
        }
    }

    if (i_checkModeFlg(MODE_SWIMMING) && i_checkNoResetFlg0(FLG0_UNK_100)) {
        cXyz sp84 = current.pos - field_0x3798;

        f32 temp_f3 = sp84.absXZ();
        s16 gnd_angle = getGroundAngle(&mLinkAcch.m_wtr, sp84.atan2sX_Z());
        temp_f3 *= cM_ssin(gnd_angle);

        if (temp_f3 < 0.0f) {
            temp_f3 = 0.0f;
        }

        if (!(current.pos.y > mWaterY + l_autoUpHeight + temp_f3) && mProcID != PROC_SWIM_DIVE) {
            current.pos.y = mWaterY;
        }
    }

    field_0x3400 = 0.0f;
    field_0x3404 = 0.0f;
    field_0x814.ClrCcMove();
    i_offNoResetFlg3(FLG3_UNK_20000000);
    field_0x3464 = 0.0f;
    field_0x3468 = 0.0f;

    if (checkRootTransClearMode()) {
        cXyz sp78 = field_0x34d4 - sp108;
        if (mProcID == PROC_CLIMB_UP_START && field_0x3012 != 0) {
            sp78 = cXyz::Zero;
        }

        f32 var_f0;
        if (i_checkModeFlg(MODE_PLAYER_FLY)) {
            var_f0 = 1.0f;
        } else {
            var_f0 = cM_scos(field_0x2ff0);
        }

        if (!checkRootTransZClearMode()) {
            sp78.z = 0.0f;
        }

        if (!checkRootTransXClearMode()) {
            sp78.x = 0.0f;
        }

        field_0x3464 = var_f0 * (sp78.z * temp_f30 + sp78.x * temp_f29);
        field_0x3464 = var_f0 * (sp78.z * temp_f29 - sp78.x * temp_f30);

        if (i_checkMagneBootsOn()) {
            cXyz spD8;
            mDoMtx_stack_c::copy(mMagneBootMtx);
            mDoMtx_stack_c::YrotM(shape_angle.y);
            mDoMtx_stack_c::multVec(&sp78, &spD8);
            current.pos += spD8;
        } else {
            current.pos.x += field_0x3464;
            current.pos.z += field_0x3468;

            if (checkRootTransYClearMode()) {
                current.pos.y += sp78.y;
            }
        }
    }

    if (i_checkModeFlg(2) && current.pos.y > mFallHeight) {
        mFallHeight = current.pos.y;
    }

    if (i_checkMagneBootsOn()) {
        cXyz spCC;
        cXyz spC0 = current.pos + (mMagneBootsTopVec * l_autoUpHeight);
        cXyz spB4;
        Vec spA8;

        s16 var_r27 = -0x8000;
        cM3dGPla plane;

        for (int i = 0; i < 8; i++) {
            spA8.x = field_0x18B0[0].GetWallR() * cM_ssin(var_r27);
            spA8.z = field_0x18B0[0].GetWallR() * cM_scos(var_r27);
            mDoMtx_multVec(mMagneBootMtx, &spA8, &spCC);
            spB4 = spC0 + spCC;

            if (commonLineCheck(&spC0, &spB4)) {
                dComIfG_Bgsp().GetTriPla(mLinkLinChk, &plane);
                f32 temp_f31 = spB4.abs(mLinkLinChk.i_GetCross());

                mDoMtx_multVecSR(mMagneBootInvMtx, &plane.mNormal, &spCC);
                if (cBgW_CheckBWall(spCC.y)) {
                    f32 temp_f1 = spCC.absXZ();

                    f32 div = temp_f31 / temp_f1;
                    spCC.x *= div;
                    spCC.y = 0.0f;
                    spCC.z *= div;

                    mDoMtx_multVecSR(mMagneBootMtx, &spCC, &spCC);
                    current.pos += spCC;
                    spC0 += spCC;
                }
            }

            var_r27 += 0x2000;
        }
    } else if (var_r27) {
        cXyz sp9C = cXyz::Zero;

        if (hangMoveBgCheck(shape_angle.y + 0x4000, &sp9C) ||
            hangMoveBgCheck(shape_angle.y - 0x4000, &sp9C))
        {
            current.pos.x += sp9C.x;
            current.pos.z += sp9C.z;
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::posMove() {
    nofralloc
#include "asm/d/a/d_a_alink/posMove__9daAlink_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 804532C4-804532C8 0018C4 0004+00 1/1 0/0 0/0 .sdata2          @70267 */
SECTION_SDATA2 static f32 lit_70267 = 9.999999974752427e-07f;

/* 800BD6FC-800BDD70 0B803C 0674+00 1/1 0/0 0/0 .text            autoGroundHit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::autoGroundHit() {
    nofralloc
#include "asm/d/a/d_a_alink/autoGroundHit__9daAlink_cFv.s"
}
#pragma pop

/* 800BDD70-800BDE20 0B86B0 00B0+00 2/2 0/0 0/0 .text            startPeepChange__9daAlink_cFv */
bool daAlink_c::startPeepChange() {
    if (!i_checkNoResetFlg0(FLG0_UNK_4000)) {
        i_onNoResetFlg0(FLG0_UNK_4000);

        u32 mode;
        if (mProcID == PROC_PEEP_SUBJECTIVITY) {
            mode = 7;
        } else {
            mode = 6;
            u32 param = fopAcM_GetParam(this);
            s32 roomNo = fopAcM_GetRoomNo(this);
            dComIfGs_setTurnRestart(current.pos, shape_angle.y, roomNo, param);
        }

        dStage_changeScene(mPeepExitID, FLOAT_LABEL(lit_6108), mode, fopAcM_GetRoomNo(this),
                           shape_angle.y, -1);
        return 1;
    }

    return 0;
}

/* 800BDE20-800BDE48 0B8760 0028+00 3/3 0/0 0/0 .text            setLastSceneDamage__9daAlink_cFiPUl
 */
void daAlink_c::setLastSceneDamage(int i_dmgAmount, u32* o_mode) {
    if (i_dmgAmount <= 0) {
        return;
    }

    if (0x80 <= i_dmgAmount) {
        i_dmgAmount = 0x7F;
    }

    *o_mode |= i_dmgAmount << 4;
}

/* 800BDE48-800BDF60 0B8788 0118+00 0/0 1/1 0/0 .text            setLastSceneMode__9daAlink_cFPUl */
void daAlink_c::setLastSceneMode(u32* o_mode) {
    if (i_checkEquipHeavyBoots()) {
        *o_mode |= 0x400000;
    }

    if (i_checkWolf()) {
        *o_mode |= 0x800000;
    }

    if (i_checkNoResetFlg2(FLG2_UNK_1) && mEquipItem != KANTERA) {
        *o_mode |= 0x200000;
    }

    if (mEquipItem == EQUIP_SWORD) {
        *o_mode |= 0x28000000;
    } else if (mEquipItem < NO_ITEM) {
        *o_mode |= mEquipItem << 0x18;
    }

    if (mGrabItemAcKeep.getActor() != NULL) {
        if (daAlink_checkLightBallA(mGrabItemAcKeep.getActor())) {
            *o_mode |= 0x100000;
        }

        if (daAlink_checkLightBallB(mGrabItemAcKeep.getActor())) {
            *o_mode |= 0x80000;
        }
    }

    if (mSwordUpTimer != 0) {
        *o_mode |= (mSwordUpTimer & 0xFFFE) << 0xA;
    }
}

/* 800BDF60-800BE26C 0B88A0 030C+00 4/4 1/1 0/0 .text            startRestartRoom__9daAlink_cFUliii
 */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::startRestartRoom(u32 i_mode, int param_1, int i_dmgAmount, int i_eventRun) {
    if (!i_checkNoResetFlg0(FLG0_UNK_4000) &&
        (i_eventRun != 0 || dComIfGp_event_compulsory(this, NULL, 0xFFFF)))
    {
        if (!checkRestartDead(i_dmgAmount, i_mode == 4)) {
            i_onNoResetFlg0(FLG0_UNK_4000);

            if (i_eventRun == 0) {
                mDemo.setOriginalDemoType();
                mDemo.setDemoMode(1);
            }

            u32 tmp = getStartMode();
            int start_mode = tmp;
            if ((start_mode != 13 && start_mode != 2 && start_mode != 14) || checkFinalBattle() ||
                field_0x3780.abs(dComIfGs_getRestartRoomPos()) > 0.1f)
            {
                start_mode = 0;
            }

            // event flag 0x2008 = cleared snowpeak ruins
            if (!i_dComIfGs_isEventBit(0x2008) && (checkBoardRide() || checkBoardRestart())) {
                i_mode = 11;
            } else if (i_checkBoarSingleBattle() ||
                       (start_mode == 2 && !checkFinalBattle() && i_mode == 5))
            {
                i_mode = 8;
            }

            setLastSceneDamage(i_dmgAmount, &i_mode);
            u32 params = setParamData(dComIfGs_getRestartRoomNo(), start_mode, param_1, 0);
            dStage_restartRoom(params, i_mode, 0);

            if (mProcID != PROC_DEAD) {
                seStartSystem(Z2SE_FORCE_BACK);
            }
        }

        return 1;
    }

    return 0;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::startRestartRoom(u32 param_0, int param_1, int param_2, int param_3) {
    nofralloc
#include "asm/d/a/d_a_alink/startRestartRoom__9daAlink_cFUliii.s"
}
#pragma pop
#endif

/* 800BE26C-800BE2C0 0B8BAC 0054+00 2/2 0/0 0/0 .text            checkCoachGuardGame__9daAlink_cFv
 */
BOOL daAlink_c::checkCoachGuardGame() {
    return !i_checkBoarSingleBattle() &&
           fopAcIt_Judge((fopAcIt_JudgeFunc)daAlink_searchCoach, NULL);
}

/* 800BE2C0-800BE3E4 0B8C00 0124+00 1/1 0/0 0/0 .text            checkRoofRestart__9daAlink_cFv */
// branch issues
#ifdef NONMATCHING
void daAlink_c::checkRoofRestart() {
    daSpinner_c* spinner;

    if (checkSpinnerRide()) {
        spinner = (daSpinner_c*)mRideAcKeep.getActor();
    } else {
        spinner = NULL;
    }

    if (mLinkAcch.ChkRoofHit() &&
        (mLinkAcch.ChkGroundHit() ||
         (spinner != NULL && spinner->checkGroundHit() && spinner->getJumpFlg() == 0)) &&
        !i_checkMagneBootsOn() &&
        (mProcID != PROC_CRAWL_START && mProcID != PROC_CRAWL_END && !checkCoachGuardGame()))
    {
        s16 ac_name = getMoveBGActorName(mLinkAcch.m_roof, 1);
        if (ac_name == PROC_OBJ_SO || ac_name == PROC_Obj_SCannon) {
            return;
        }
    }

    f32 roof_height = mLinkAcch.GetRoofHeight();
    if (roof_height > mLinkAcch.GetGroundH()) {
        f32 head_pos = mHeadTopPos.y - 10.0f;
        f32 temp_f0 = 10.0f + current.pos.y;

        if (head_pos < temp_f0) {
            head_pos = temp_f0;
        }

        if (roof_height < head_pos) {
            startRestartRoom(5, 0xC9, 4, 0);
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkRoofRestart() {
    nofralloc
#include "asm/d/a/d_a_alink/checkRoofRestart__9daAlink_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80392094-80392094 01E6F4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_803925BA = "F_SP114";
#pragma pop

/* 800BE3E4-800BE9D4 0B8D24 05F0+00 1/1 0/0 0/0 .text            checkRestartRoom__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daAlink_c::checkRestartRoom() {
    nofralloc
#include "asm/d/a/d_a_alink/checkRestartRoom__9daAlink_cFv.s"
}
#pragma pop

/* 800BE9D4-800BEAF8 0B9314 0124+00 2/2 0/0 0/0 .text            getSceneExitMoveAngle__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm s16 daAlink_c::getSceneExitMoveAngle() {
    nofralloc
#include "asm/d/a/d_a_alink/getSceneExitMoveAngle__9daAlink_cFv.s"
}
#pragma pop

/* 800BEAF8-800BF084 0B9438 058C+00 1/1 0/0 0/0 .text            checkSceneChange__9daAlink_cFi */
// some small issues
#ifdef NONMATCHING
int daAlink_c::checkSceneChange(int exitID) {
    s32 var_r3 = 0;

    if (mProcID != PROC_FOG_DEAD && (field_0x3174 == 9 || i_checkNoResetFlg2(FLG2_UNK_4000))) {
        var_r3 = 1;
    }

    if (field_0x3174 == 4 || field_0x3174 == 10) {
        exitID = 0x3F;
    }

    if (var_r3 ||
        ((exitID != 0x3F || mExitID != 0x3F) &&
         (i_checkModeFlg(0x40000) || i_checkModeFlg(0x400) || mLinkAcch.ChkGroundHit() ||
          mProcID == PROC_DOOR_OPEN || mProcID == PROC_WARP || mProcID == PROC_WOLF_DIG_THROUGH ||
          (field_0x3174 == 5 && field_0x33c8 - current.pos.y > 500.0f))) ||
        (mExitID & 0x8000 && i_checkModeFlg(2)))
    {
        if (field_0x3174 == 5 || (mExitID & 0x8000 && mExitDirection == 0xFF)) {
            mLinkAcch.i_ClrGroundHit();
        }

        if (i_checkNoResetFlg0(FLG0_UNK_4000)) {
            return 1;
        } else if (checkHorseRide()) {
            if (dComIfG_Bgsp().GetHorseNoEntry(mLinkAcch.m_gnd)) {
                return 0;
            }

            if (daTagHstop_c::getTop() != NULL) {
                daTagHstop_c* hStop = daTagHstop_c::getTop();
                cXyz sp8;
                for (; hStop != NULL; hStop = hStop->getNext()) {
                    if (hStop->getActiveFlg()) {
                        fpoAcM_relativePos(hStop, &current.pos, &sp8);

                        if (sp8.y >= -200.0f && sp8.y <= hStop->mScale.y + 600.0f &&
                            fabsf(sp8.x) <= hStop->mScale.x && fabsf(sp8.z) <= hStop->mScale.z)
                        {
                            return 0;
                        }
                    }
                }
            }
        }

        s32 ridingHorse = false;
        if (checkHorseRide() && mProcID != PROC_HORSE_GETOFF) {
            ridingHorse = true;
        }

        f32 demoStick;
        f32 exitSpeed;
        if (ridingHorse) {
            if (mNormalSpeed < 15.0f) {
                exitSpeed = 15.0f;
                demoStick = 0.6f;
            } else {
                exitSpeed = i_dComIfGp_getHorseActor()->getNormalMaxSpeedF();
                demoStick = 0.6f;
            }
        } else if (i_checkWolf()) {
            if (mNormalSpeed < 10.0f || var_r3) {
                exitSpeed = 10.0f;
                demoStick = 0.65f;
            } else {
                exitSpeed = daAlinkHIO_wlMoveNoP_c0::m.field_0x8;
                demoStick = 1.0f;
            }
        } else if (mNormalSpeed < 10.0f || var_r3) {
            exitSpeed = 10.0f;
            demoStick = 0.6f;
        } else {
            exitSpeed = daAlinkHIO_move_c0::m.mMaxSpeed;
            demoStick = 1.0f;
        }

        s32 exitMode;
        if (ridingHorse) {
            exitMode = 1;
        } else if (i_checkModeFlg(0x1000000)) {
            exitSpeed = field_0x33a8;
            if (mUnderFrameCtrl[0].getRate() >= 0.0f) {
                exitMode = 2;
            } else {
                exitMode = 3;
            }
        } else if (mProcID == PROC_WOLF_DIG_THROUGH) {
            exitMode = 9;
        } else {
            exitMode = 0;
        }

        if (mEvtInfo.i_checkCommandDoor() || mProcID == PROC_WARP || mProcID == WOLF_DIG ||
            mProcID == PROC_WOLF_DIG_THROUGH || field_0x3106 != 0 ||
            dComIfGp_event_compulsory(this, NULL, -1))
        {
            s32 sceneChanged = 0;

            if (var_r3) {
                mDemo.setOriginalDemoType();
                mDemo.setDemoMode(0x34);
            } else {
                if (mExitID != 0x3F) {
                    sceneChanged = dStage_changeScene(mExitID, exitSpeed, exitMode,
                                                      fopAcM_GetRoomNo(this), shape_angle.y, -1);
                    if (sceneChanged) {
                        i_onNoResetFlg2(FLG2_SCN_CHG_START);
                        if (mpScnChg != NULL && fopAcM_GetName(mpScnChg) == PROC_SCENE_EXIT) {
                            mpScnChg->setSceneChangeOK();
                        }
                    }

                    if (mExitDirection != 0xFF) {
                        field_0x2f58 = dPath_GetRoomPath(mExitDirection, fopAcM_GetRoomNo(this));
                    }
                } else {
                    sceneChanged = dStage_changeSceneExitId(mLinkAcch.m_gnd, exitSpeed, exitMode,
                                                            fopAcM_GetRoomNo(this), shape_angle.y);
                    field_0x2f58 = dPath_GetRoomPath(dComIfG_Bgsp().GetRoomPathId(mLinkAcch.m_gnd),
                                                     fopAcM_GetRoomNo(this));
                }
            }

            if (sceneChanged) {
                i_onNoResetFlg0(FLG0_UNK_4000);

                if (!mEvtInfo.i_checkCommandDoor()) {
                    mDemo.setOriginalDemoType();

                    if (checkUpperReadyThrowAnime()) {
                        resetUpperAnime(UPPER_2, 3.0f);
                    }

                    if (field_0x3174 == 5) {
                        mDemo.setDemoMode(0x11);
                    } else {
                        mDemo.setDemoMode(0x1A);
                        mDemo.setStick(demoStick);
                    }

                    mDemo.setMoveAngle(getSceneExitMoveAngle());
                    if (ridingHorse) {
                        daHorse_c* horse = i_dComIfGp_getHorseActor();
                        horse->i_changeOriginalDemo();
                        horse->i_changeDemoMode(6, 0);
                        horse->changeDemoMoveAngle(mDemo.getMoveAngle());
                        horse->setDemoStickR(demoStick);
                    }
                }
                return 1;
            }
        }
    }

    return 0;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::checkSceneChange(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/checkSceneChange__9daAlink_cFi.s"
}
#pragma pop
#endif

/* 800BF084-800BF0B8 0B99C4 0034+00 1/0 0/0 0/0 .text            voiceStart__9daAlink_cFUl */
void daAlink_c::voiceStart(u32 i_seID) {
    mZ2Link.startLinkVoice(i_seID, mVoiceReverbIntensity);
}

/* 800BF0B8-800BF0EC 0B99F8 0034+00 14/14 0/0 0/0 .text            voiceStartLevel__9daAlink_cFUl */
void daAlink_c::voiceStartLevel(u32 i_seID) {
    mZ2Link.startLinkVoiceLevel(i_seID, mVoiceReverbIntensity);
}

/* 800BF0EC-800BF124 0B9A2C 0038+00 21/21 0/0 0/0 .text            seStartSwordCut__9daAlink_cFUl */
void daAlink_c::seStartSwordCut(u32 i_seID) {
    mZ2Link.startLinkSwordSound(i_seID, 0, mVoiceReverbIntensity);
}

/* 800BF124-800BF15C 0B9A64 0038+00 1/0 0/0 0/0 .text            seStartOnlyReverb__9daAlink_cFUl */
void daAlink_c::seStartOnlyReverb(u32 i_seID) {
    mZ2Link.startLinkSound(i_seID, 0, mVoiceReverbIntensity);
}

/* 800BF15C-800BF194 0B9A9C 0038+00 1/0 0/0 0/0 .text seStartOnlyReverbLevel__9daAlink_cFUl */
void daAlink_c::seStartOnlyReverbLevel(u32 i_seID) {
    mZ2Link.startLinkSoundLevel(i_seID, 0, mVoiceReverbIntensity);
}

/* 800BF194-800BF1CC 0B9AD4 0038+00 10/10 0/0 0/0 .text            seStartMapInfo__9daAlink_cFUl */
void daAlink_c::seStartMapInfo(u32 i_seID) {
    mZ2Link.startLinkSound(i_seID, mPolySound, mVoiceReverbIntensity);
}

/* 800BF1CC-800BF204 0B9B0C 0038+00 9/9 0/0 0/0 .text            seStartMapInfoLevel__9daAlink_cFUl
 */
void daAlink_c::seStartMapInfoLevel(u32 i_seID) {
    mZ2Link.startLinkSoundLevel(i_seID, mPolySound, mVoiceReverbIntensity);
}

/* 800BF204-800BF37C 0B9B44 0178+00 3/3 0/0 0/0 .text
 * setBasAnime__9daAlink_cFQ29daAlink_c13daAlink_UNDER          */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setBasAnime(daAlink_c::daAlink_UNDER param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setBasAnime__9daAlink_cFQ29daAlink_c13daAlink_UNDER.s"
}
#pragma pop

/* 800BF37C-800BF4E0 0B9CBC 0164+00 11/11 0/0 0/0 .text            initBasAnime__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::initBasAnime() {
    nofralloc
#include "asm/d/a/d_a_alink/initBasAnime__9daAlink_cFv.s"
}
#pragma pop

/* 800BF4E0-800BF500 0B9E20 0020+00 6/6 0/0 0/0 .text            resetBasAnime__9daAlink_cFv */
void daAlink_c::resetBasAnime() {
    field_0x3084 = 0xFFFF;
    field_0x3086 = 0xFFFF;
    field_0x2d7c = NULL;
    field_0x2d80 = 0;
}

/* 800BF500-800BF79C 0B9E40 029C+00 5/5 0/0 0/0 .text            checkSightLine__9daAlink_cFfP4cXyz
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daAlink_c::checkSightLine(f32 param_0, cXyz* param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/checkSightLine__9daAlink_cFfP4cXyz.s"
}
#pragma pop

/* 800BF79C-800BF854 0BA0DC 00B8+00 2/2 0/0 0/0 .text            setMetamorphoseModel__9daAlink_cFi
 */
void daAlink_c::setMetamorphoseModel(int param_0) {
    J3DAnmTransform* bck =
        (J3DAnmTransform*)mAnmHeap9.loadDataIdx(param_0 != 0 ? (u16)0x27C : (u16)0x27D);
    JKRHeap* heap = setItemHeap();

    J3DModelData* model_data = loadAramBmd(0x31B, 0x6000);
    mHeldItemModel = initModel(model_data, 0);
    field_0x730.init(bck, 0, 2, lit_6040, 0, -1, false);

    mDoExt_setCurrentHeap(heap);
    mEquipItem = 0x106;
    field_0x33dc = mUnderFrameCtrl[0].getFrame();
}

/* 800BF854-800BF884 0BA194 0030+00 10/10 0/0 0/0 .text            keepItemData__9daAlink_cFv */
void daAlink_c::keepItemData() {
    mKeepItem = mEquipItem;
    deleteEquipItem(FALSE, FALSE);
}

/* 800BF884-800BF8D0 0BA1C4 004C+00 8/8 0/0 0/0 .text            returnKeepItemData__9daAlink_cFv */
void daAlink_c::returnKeepItemData() {
    deleteEquipItem(FALSE, FALSE);
    mEquipItem = mKeepItem;
    mKeepItem = NO_ITEM;
    makeItemType();
}

/* 800BF8D0-800BF9F0 0BA210 0120+00 2/2 0/0 0/0 .text            setItemModel__9daAlink_cFv */
BOOL daAlink_c::setItemModel() {
    if (checkBowItem(mEquipItem)) {
        setBowModel();
        return 1;
    }

    if (mEquipItem == PACHINKO) {
        setSlingModel();
        return 1;
    }

    if (mEquipItem == COPY_ROD) {
        setCopyRodModel();
        return mCopyRodAcKeep.getActor() != NULL ? 1 : 0;
    }

    if (mEquipItem == KANTERA) {
        setKandelaarModel();
        return 1;
    }

    if (mEquipItem == EMPTY_BOTTLE) {
        setBottleModel(mEquipItem);
        return 1;
    }

    if (checkHookshotItem(mEquipItem)) {
        setHookshotModel();
        return 1;
    }

    if (mEquipItem == EQUIP_SWORD) {
        setSwordModel();
        return 1;
    }

    if (mEquipItem == IRONBALL) {
        setIronBallModel();
        setIronBallWaitUpperAnime(1);
        return mItemAcKeep.getActor() != NULL ? 1 : 0;
    }

    return 0;
}

/* 800BF9F0-800BFD74 0BA330 0384+00 4/4 0/0 0/0 .text            setItemActor__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
BOOL daAlink_c::setItemActor() {
    if (mEquipItem == BOOMERANG) {
        fopAc_ac_c* actor = (fopAc_ac_c*)fopAcM_fastCreate(PROC_BOOMERANG, 0, &current.pos, -1,
                                                           NULL, NULL, -1, NULL, NULL);
        if (actor == NULL) {
            deleteEquipItem(FALSE, FALSE);
            return 0;
        }

        mItemAcKeep.setData(actor);
        field_0x2f94 = 2;
        return 1;
    }

    if (mEquipItem == COPY_ROD) {
        fopAc_ac_c* actor = (fopAc_ac_c*)fopAcM_fastCreate(PROC_CROD, 0, &current.pos, -1, NULL,
                                                           NULL, -1, NULL, NULL);
        if (actor == NULL) {
            deleteEquipItem(FALSE, FALSE);
            return 0;
        }

        mItemAcKeep.setData(actor);
        field_0x2f94 = 2;
        return 1;
    }

    if (mEquipItem == IRONBALL) {
        fopAc_ac_c* actor = daCrod_c::makeIronBallDummy(this);

        if (actor == NULL) {
            if (checkIronBallWaitAnime()) {
                resetUpperAnime(UPPER_2, -1.0f);
            }
            deleteEquipItem(FALSE, FALSE);
            return 0;
        }

        mItemAcKeep.setData(actor);
        field_0x173c.SetActor(actor);
        return 1;
    }

    if (checkFisingRodLure()) {
        u32 id = fopAcM_create(PROC_MG_ROD, 0x10D, &mLeftHandPos, -1, NULL, NULL, 0xFF);
        mItemAcKeep.setID(id);
        initFishingRodHand();
        return 1;
    }

    if (checkFishingRodItem(mEquipItem)) {
        setGroundFishingRodActor();
        return 1;
    }

    if (checkBombItem(mEquipItem)) {
        if (checkHorseRide()) {
            if (!i_dComIfGp_getHorseActor()->checkNoBombProc() &&
                (mProcID != PROC_HORSE_TURN || !i_checkModeFlg(MODE_DISABLE_ITEMS)))
            {
                mEquipItem = NO_ITEM;
                return 1;
            }
        }

        cXyz create_pos = (mLeftHandPos + mRightHandPos) * 0.5f;
        if (checkReadyItem()) {
            fopAc_ac_c* actor;
            if (mEquipItem == NORMAL_BOMB) {
                actor = dBomb_c::createNormalBombPlayer(&create_pos);
            } else {
                actor = dBomb_c::createWaterBombPlayer(&create_pos);
            }

            if (actor != NULL) {
                mActiveBombNum++;
                setGrabItemActor(actor);
                dComIfGp_addSelectItemNum(mSelectItemId, -1);
                field_0x33e4 = 38.0f;
                setGrabUpperAnime(daAlinkHIO_basic_c0::m.mAnmBlendFactor);
            }
        }
        mEquipItem = NO_ITEM;
        return 1;
    }

    return 0;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daAlink_c::setItemActor() {
    nofralloc
#include "asm/d/a/d_a_alink/setItemActor__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800BFD74-800BFDB0 0BA6B4 003C+00 2/2 0/0 0/0 .text            makeItemType__9daAlink_cFv */
void daAlink_c::makeItemType() {
    if (!setItemModel()) {
        setItemActor();
    }
}

bool daPy_py_c::checkZoraWearFlg() const {
    return dComIfGs_getSelectEquipClothes() == WEAR_ZORA;
}

bool daPy_py_c::checkMagicArmorWearFlg() const {
    return dComIfGs_getSelectEquipClothes() == ARMOR;
}

/* 800BFDB0-800BFDFC 0BA6F0 004C+00 28/28 0/0 0/0 .text checkZoraWearAbility__9daAlink_cCFv */
BOOL daAlink_c::checkZoraWearAbility() const {
    return (!i_checkWolf() && checkZoraWearFlg()) && !i_checkNoResetFlg2(FLG2_UNK_80000);
}

/* 800BFDFC-800BFE48 0BA73C 004C+00 5/5 0/0 0/0 .text checkMagicArmorWearAbility__9daAlink_cCFv */
BOOL daAlink_c::checkMagicArmorWearAbility() const {
    return (!i_checkWolf() && checkMagicArmorWearFlg()) && !i_checkNoResetFlg2(FLG2_UNK_80000);
}

/* 800BFE48-800BFF04 0BA788 00BC+00 9/9 0/0 0/0 .text            loadAramBmd__9daAlink_cFUsUl */
J3DModelData* daAlink_c::loadAramBmd(u16 i_resID, u32 i_bufSize) {
    JKRArchive* anm_arc = dComIfGp_getAnmArchive();
    u8* tmpBuffer = new (0x20) u8[i_bufSize];

    anm_arc->readIdxResource(tmpBuffer, i_bufSize, i_resID);

    u32 type = 'BMWR';
    JKRArchive::SDIDirEntry* dir = anm_arc->mNodes;
    for (int i = 0; i < anm_arc->countDirectory(); i++) {
        if (i_resID >= dir->first_file_index && i_resID < dir->first_file_index + dir->num_entries)
        {
            type = dir->type;
            break;
        }
        dir++;
    }

    return dRes_info_c::loaderBasicBmd(type, tmpBuffer);
}

/* 800BFF04-800BFF70 0BA844 006C+00 5/5 0/0 0/0 .text            loadAram__9daAlink_cFUsUl */
void* daAlink_c::loadAram(u16 i_resID, u32 i_bufSize) {
    u8* tmpBuffer = new (0x20) u8[i_bufSize];
    dComIfGp_getAnmArchive()->readIdxResource(tmpBuffer, i_bufSize, i_resID);
    return J3DAnmLoaderDataBase::load(tmpBuffer, J3DLOADER_UNK_FLAG0);
}

/* 800BFF70-800BFFCC 0BA8B0 005C+00 3/3 0/0 0/0 .text loadAramItemBrk__9daAlink_cFUsP8J3DModel */
J3DAnmTevRegKey* daAlink_c::loadAramItemBrk(u16 i_resID, J3DModel* i_model) {
    J3DModelData* model_data = i_model->getModelData();
    J3DAnmTevRegKey* brk = (J3DAnmTevRegKey*)loadAram(i_resID, 0x400);

    brk->setFrame(FLOAT_LABEL(lit_6108));
    brk->searchUpdateMaterialID(model_data);
    model_data->entryTevRegAnimator(brk);

    return brk;
}

/* 800BFFCC-800C0028 0BA90C 005C+00 2/2 0/0 0/0 .text loadAramItemBtk__9daAlink_cFUsP8J3DModel */
J3DAnmTextureSRTKey* daAlink_c::loadAramItemBtk(u16 i_resID, J3DModel* i_model) {
    J3DModelData* model_data = i_model->getModelData();
    J3DAnmTextureSRTKey* btk = (J3DAnmTextureSRTKey*)loadAram(i_resID, 0x400);

    btk->setFrame(FLOAT_LABEL(lit_6108));
    btk->searchUpdateMaterialID(model_data);
    model_data->entryTexMtxAnimator(btk);

    return btk;
}

/* 800C0028-800C0084 0BA968 005C+00 1/1 0/0 0/0 .text loadAramItemBtp__9daAlink_cFUsP8J3DModel */
J3DAnmTexPattern* daAlink_c::loadAramItemBtp(u16 i_resID, J3DModel* i_model) {
    J3DModelData* model_data = i_model->getModelData();
    J3DAnmTexPattern* btp = (J3DAnmTexPattern*)loadAram(i_resID, 0x400);

    btp->setFrame(FLOAT_LABEL(lit_6108));
    btp->searchUpdateMaterialID(model_data);
    model_data->entryTexNoAnimator(btp);

    return btp;
}

/* 800C0084-800C0114 0BA9C4 0090+00 5/5 0/0 0/0 .text            changeItemBck__9daAlink_cFUsf */
// matches with literals
#ifdef NONMATCHING
void daAlink_c::changeItemBck(u16 i_resID, f32 param_1) {
    J3DAnmTransform* bck = (J3DAnmTransform*)mAnmHeap9.loadDataIdx(i_resID);
    if (bck != NULL) {
        field_0x730.changeBckOnly(bck);
    }

    if (param_1 < 0.0f) {
        field_0x33dc = field_0x730.getBckAnm()->getFrameMax();
    } else {
        field_0x33dc = param_1;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::changeItemBck(u16 param_0, f32 param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/changeItemBck__9daAlink_cFUsf.s"
}
#pragma pop
#endif

/* 800C0114-800C0164 0BAA54 0050+00 2/2 0/0 0/0 .text            checkGroupItem__9daAlink_cCFii */
int daAlink_c::checkGroupItem(int i_itemNo, int i_selItem) const {
    if (i_itemNo == 0x107) {
        return checkDrinkBottleItem(i_selItem);
    } else if (i_itemNo == 0x108) {
        return checkFishingRodItem(i_selItem);
    } else {
        return i_itemNo == i_selItem;
    }
}

/* 800C0164-800C0208 0BAAA4 00A4+00 11/11 0/0 0/0 .text            checkSetItemTrigger__9daAlink_cFi
 */
int daAlink_c::checkSetItemTrigger(int i_itemNo) {
    for (u8 i = 0; i < 2; i++) {
        if (checkGroupItem(i_itemNo, dComIfGp_getSelectItem(i)) && itemTriggerCheck(1 << i)) {
            if (i_itemNo != HVY_BOOTS) {
                mSelectItemId = i;
            }
            return 1;
        }
    }

    return 0;
}

/* 800C0208-800C0284 0BAB48 007C+00 6/6 0/0 0/0 .text            checkItemSetButton__9daAlink_cFi */
int daAlink_c::checkItemSetButton(int i_itemNo) {
    for (u8 i = 0; i < 2; i++) {
        if (checkGroupItem(i_itemNo, dComIfGp_getSelectItem(i))) {
            return i;
        }
    }

    return 2;
}

/* 800C0284-800C02C8 0BABC4 0044+00 1/1 0/0 0/0 .text            checkField__9daAlink_cFv */
bool daAlink_c::checkField() {
    return dStage_stagInfo_GetSTType(i_dComIfGp_getStage()->getStagInfo()) == ST_FIELD;
}

/* 800C02C8-800C0310 0BAC08 0048+00 6/6 0/0 0/0 .text            checkBossRoom__9daAlink_cFv */
bool daAlink_c::checkBossRoom() {
    return dStage_stagInfo_GetSTType(i_dComIfGp_getStage()->getStagInfo()) == ST_BOSS_ROOM;
}

/* 800C0310-800C0358 0BAC50 0048+00 4/4 0/0 0/0 .text            checkDungeon__9daAlink_cFv */
bool daAlink_c::checkDungeon() {
    return dStage_stagInfo_GetSTType(i_dComIfGp_getStage()->getStagInfo()) == ST_DUNGEON;
}

/* 800C0358-800C03A0 0BAC98 0048+00 3/3 0/0 0/0 .text            checkCastleTown__9daAlink_cFv */
bool daAlink_c::checkCastleTown() {
    return dStage_stagInfo_GetSTType(i_dComIfGp_getStage()->getStagInfo()) == ST_CASTLE_TOWN;
}

/* 800C03A0-800C03E8 0BACE0 0048+00 6/6 0/0 1/1 .text            checkCloudSea__9daAlink_cFv */
bool daAlink_c::checkCloudSea() {
    return dStage_stagInfo_GetSTType(i_dComIfGp_getStage()->getStagInfo()) == ST_CLOUD_SEA;
}

/* 800C03E8-800C044C 0BAD28 0064+00 5/5 0/0 0/0 .text            checkRoomOnly__9daAlink_cFv */
bool daAlink_c::checkRoomOnly() {
    return dStage_stagInfo_GetSTType(i_dComIfGp_getStage()->getStagInfo()) == ST_ROOM ||
           checkLv7DungeonShop();
}

/* 800C044C-800C04B4 0BAD8C 0068+00 3/3 0/0 0/0 .text checkLv2DungeonRoomSpecial__9daAlink_cFv */
bool daAlink_c::checkLv2DungeonRoomSpecial() {
    return checkStageName("D_MN04") &&
           (dComIfGp_roomControl_getStayNo() == 14 || dComIfGp_roomControl_getStayNo() == 16 ||
            dComIfGp_roomControl_getStayNo() == 17);
}

/* 800C04B4-800C0520 0BADF4 006C+00 2/2 0/0 0/0 .text            checkRoomSpecial__9daAlink_cFv */
bool daAlink_c::checkRoomSpecial() {
    return (checkStageName("D_MN11") &&
            (dComIfGp_roomControl_getStayNo() == 1 || dComIfGp_roomControl_getStayNo() == 2)) ||
           checkLv2DungeonRoomSpecial();
}

/* 800C0520-800C0594 0BAE60 0074+00 1/1 0/0 0/0 .text            checkRoom__9daAlink_cFv */
bool daAlink_c::checkRoom() {
    return checkRoomOnly() || checkRoomSpecial() ||
           checkStageName("R_SP161") && !dComIfGs_isOneZoneSwitch(14, -1);
}

/* 800C0594-800C05DC 0BAED4 0048+00 8/8 0/0 0/0 .text            checkNotBattleStage__9daAlink_cFv
 */
bool daAlink_c::checkNotBattleStage() {
    return checkRoom() || checkCastleTown();
}

/* 800C05DC-800C0630 0BAF1C 0054+00 2/2 0/0 0/0 .text checkNotHeavyBootsStage__9daAlink_cFv */
bool daAlink_c::checkNotHeavyBootsStage() {
    return (checkNotBattleStage() || checkCloudSea()) && !checkLv2DungeonRoomSpecial();
}

/* 800C0630-800C0678 0BAF70 0048+00 1/1 0/0 0/0 .text            checkNotAutoJumpStage__9daAlink_cFv
 */
bool daAlink_c::checkNotAutoJumpStage() {
    return checkRoomOnly() || checkCastleTown();
}

/* 800C0678-800C077C 0BAFB8 0104+00 3/3 0/0 0/0 .text checkCastleTownUseItem__9daAlink_cFUs */
bool daAlink_c::checkCastleTownUseItem(u16 item_id) {
    if (checkNotBattleStage()) {
        if (item_id == KANTERA || checkTradeItem(item_id) ||
            (item_id == DUNGEON_BACK && checkLv7DungeonShop()) ||
            (checkRoomSpecial() && (item_id == EMPTY_BOTTLE || checkDungeonWarpItem(item_id))) ||
            (checkStageName("R_SP128") && item_id == COPY_ROD) ||
            (checkLv2DungeonRoomSpecial() && item_id == HVY_BOOTS) ||
            (checkBottleItem(item_id) && item_id != EMPTY_BOTTLE))
        {
            return true;
        } else {
            return false;
        }
    }
    return true;
}

/* 800C077C-800C0A9C 0BB0BC 0320+00 1/1 0/0 0/0 .text changeItemTriggerKeepProc__9daAlink_cFUci */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::changeItemTriggerKeepProc(u8 param_0, int param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/changeItemTriggerKeepProc__9daAlink_cFUci.s"
}
#pragma pop

/* 800C0A9C-800C12DC 0BB3DC 0840+00 1/1 0/0 0/0 .text            checkNewItemChange__9daAlink_cFUc
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::checkNewItemChange(u8 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/checkNewItemChange__9daAlink_cFUc.s"
}
#pragma pop

/* 800C12DC-800C1704 0BBC1C 0428+00 67/67 0/0 0/0 .text            deleteEquipItem__9daAlink_cFii */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::deleteEquipItem(int param_0, int param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/deleteEquipItem__9daAlink_cFii.s"
}
#pragma pop

/* ############################################################################################## */
/* 80392058-80392064 01E6B8 000C+00 0/1 0/0 0/0 .rodata          @71887 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_71887[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80392058, &lit_71887);
#pragma pop

/* 80392064-80392070 01E6C4 000C+00 0/1 0/0 0/0 .rodata          @71911 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_71911[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80392064, &lit_71911);
#pragma pop

/* 804532C8-804532CC 0018C8 0004+00 1/1 0/0 0/0 .sdata2          @71910 */
SECTION_SDATA2 static u32 lit_71910 = 0x000000FF;

/* 804532CC-804532D0 0018CC 0004+00 1/1 0/0 0/0 .sdata2          @71997 */
SECTION_SDATA2 static f32 lit_71997 = 7.0f / 25.0f;

/* 804532D0-804532D4 0018D0 0004+00 1/1 0/0 0/0 .sdata2          @71998 */
SECTION_SDATA2 static f32 lit_71998 = 174.0f;

/* 804532D4-804532D8 0018D4 0004+00 1/1 0/0 0/0 .sdata2          @71999 */
SECTION_SDATA2 static f32 lit_71999 = 141.0f;

/* 800C1704-800C1CEC 0BC044 05E8+00 1/1 0/0 0/0 .text            setLight__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setLight() {
    nofralloc
#include "asm/d/a/d_a_alink/setLight__9daAlink_cFv.s"
}
#pragma pop

/* 800C1CEC-800C1DAC 0BC62C 00C0+00 3/3 0/0 0/0 .text setFrontRollCrashShock__9daAlink_cFUc */
void daAlink_c::setFrontRollCrashShock(u8 param_0) {
    f32 tmp_0 = FLOAT_LABEL(lit_6108);
    dComIfGp_getVibration().StartShock(5, 15, cXyz(tmp_0, lit_6040, tmp_0));

    mZ2Link.startLinkSound(Z2SE_AL_BODYATTACK, param_0, mVoiceReverbIntensity);
    dKy_Sound_set(current.pos, 100, fopAcM_GetID(this), 5);
}

/* 800C1DAC-800C1DE0 0BC6EC 0034+00 1/0 0/0 0/0 .text            getModelJointMtx__9daAlink_cFUs */
MtxP daAlink_c::getModelJointMtx(u16 param_0) {
    if (param_0 >= field_0x30c6) {
        return mpLinkModel->mBaseTransformMtx;
    }
    return mpLinkModel->i_getAnmMtx(param_0);
}

/* 800C1DE0-800C1E0C 0BC720 002C+00 1/0 0/0 0/0 .text            onFrollCrashFlg__9daAlink_cFUci */
void daAlink_c::onFrollCrashFlg(u8 param_0, int param_1) {
    if (param_1 != 0) {
        i_onNoResetFlg0(FLG0_UNK_10);
    } else {
        i_onNoResetFlg0(FLG0_UNK_8);
    }
    mRollCrashFlg = param_0;
}

/* ############################################################################################## */
/* 804532D8-804532DC -00001 0004+00 1/1 0/0 0/0 .sdata2          @72043 */
SECTION_SDATA2 static void* lit_72043 = (void*)onWarpMaterial__11dRes_info_cFP12J3DModelData;

/* 804532DC-804532E0 -00001 0004+00 1/1 0/0 0/0 .sdata2          None */
SECTION_SDATA2 static void* data_804532DC = (void*)offWarpMaterial__11dRes_info_cFP12J3DModelData;

/* 800C1E0C-800C1F6C 0BC74C 0160+00 4/4 0/0 0/0 .text
 * changeWarpMaterial__9daAlink_cFQ29daAlink_c21daAlink_WARP_MAT_MODE */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::changeWarpMaterial(daAlink_c::daAlink_WARP_MAT_MODE param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/changeWarpMaterial__9daAlink_cFQ29daAlink_c21daAlink_WARP_MAT_MODE.s"
}
#pragma pop

/* 800C1F6C-800C2DA4 0BC8AC 0E38+00 229/229 0/0 0/0 .text
 * commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC        */
#ifdef NONMATCHING
void daAlink_c::commonProcInit(daAlink_c::daAlink_PROC i_procID) {
    if (mProcID == PROC_TOOL_DEMO) {
        speed.y = 0.0f;
        resetDemoBck();
        if (i_checkModeFlg(MODE_RIDING)) {
            initForceRideHorse();
        }

        if (field_0x300c != 0) {
            changeWarpMaterial(1);
        }
    } else if (mProcID == PROC_GRAB_STAND) {
        for (int i = 0; i < 2; i++) {
            field_0x312a[i] = csXyz::Zero;
        }
    } else if (mProcID == PROC_GRASS_WHISTLE_WAIT) {
        returnKeepItemData();
    } else if (i_checkModeFlg(MODE_UNK_20)) {
        fopAc_ac_c* actor = field_0x280c.getActor();

        if (enemy != NULL) {
            if (mProcID == PROC_WOLF_DOWN_AT_LAND) {
                static_cast<fopEn_enemy_c*>(actor)->offWolfDownPullFlg();
                if (i_procID != PROC_WOLF_BACKJUMP) {
                    resetWolfBallGrab();
                }
            } else if (mProcID == PROC_HAWK_SUBJECT) {
                static_cast<daNPC_TK_c*>(actor)->setAway();
            } else if (mProcID == PROC_GOAT_STROKE) {
                static_cast<daCow_c*>(actor)->setNaderuFinish();
            } else if (mProcID == PROC_TRADE_ITEM_OUT || mProcID == PROC_NOT_USE_ITEM) {
                static_cast<daItemBase_c*>(actor)->dead();
            }
        }
        field_0x280c.clearData();

        if (mProcID == PROC_BOTTLE_SWING) {
            i_offNoResetFlg2(FLG2_UNK_10000000);
        }
    } else if (mProcID == PROC_HOOKSHOT_FLY) {
        cancelHookshotCarry();
        setOldRootQuaternion(shape_angle.x, 0, 0);
        cancelItemUseQuake(1);
    } else if (i_dComIfGp_checkPlayerStatus1(0x02010000)) {
        if (mProcID != PROC_HOOKSHOT_FLY) {
            cancelItemUseQuake(0);
        }

        if (mCargoCarryAcKeep.getActor() != NULL) {
            fopAcM_cancelHookCarryNow(mCargoCarryAcKeep.getActor());
            mCargoCarryAcKeep.clearData();
        }
    } else if (mProcID == PROC_WOLF_ENEMY_HANG_BITE) {
        resetWolfEnemyBiteAll();
    } else if (checkWolfShapeReverse()) {
        setOldRootQuaternion(0, -0x8000, 0);
        shape_angle.y += 0x8000;
        field_0x2fe4 = shape_angle.y;
        shape_angle.x = -shape_angle.x;
        field_0x2fe6 = shape_angle.y;
        if (mProcID != PROC_WOLF_READY_SLIDE) {
            current.angle.y = shape_angle.y;
        }
    } else if (mProcID == PROC_WARP) {
        changeWarpMaterial(1);
    } else if (mProcID == PROC_WOLF_BACKJUMP) {
        resetWolfBallGrab();
    } else if (mProcID == PROC_CHAIN_STRONG_PULL) {
        mNowAnmPackUpper[2].setRatio(0.0f);
    } else if (mProcID == PROC_SCREAM_WAIT || mProcID == PROC_WOLF_SCREAM_WAIT ||
               mProcID == PROC_ELEC_DAMAGE)
    {
        dComIfGp_getVibration().StopQuake(0x1F);
    } else if (mProcID == PROC_GUARD_BREAK) {
        field_0x814.SetTgApid(-1);
    }

    if (mProcID == PROC_CHAIN_UP || mProcID == PROC_WOLF_CHAIN_UP) {
        cancelFmChainGrabFromOut();
    }

    bool temp_r31 = mProcID == PROC_FISHING_CAST;
    i_offNoResetFlg0(FLG0_UNK_2);

    bool flg_20000_set = checkModeFlag(0x20000);
    bool flg_400_set = checkModeFlag(0x400);
    if (flg_400_set && !checkBoardRide() && !checkSpinnerRide()) {
        field_0x2f99 = 0xA0;
    } else if (checkModeFlg(0x40840) || mProcID == PROC_BOSS_BODY_HANG ||
               mProcID == PROC_WOLF_CHAIN_WAIT)
    {
        field_0x2f99 = 0x70;
    }

    mpProcFunc = m_procInitTable[i_procID].m_procFunc;
    mProcID = i_procID;
    mModeFlg = m_procInitTable[i_procID].m_mode;

    if (checkBoarRide()) {
        offModeFlg(4);
    }

    if (mProcID == PROC_DEAD) {
        if (flg_400_set) {
            if (checkHorseRide()) {
                resetUnderAnime(UNDER_2, -1.0f);
            }
            onModeFlg(MODE_RIDING);
        } else if (flg_20000_set) {
            onModeFlg(MODE_SWIMMING);
        }
    } else if (mProcID == PROC_BOSS_BODY_HANG) {
        if (checkBossOctaIealRoom()) {
            onModeFlg(MODE_SWIMMING);
        }
    } else if (mProcID == PROC_GET_ITEM) {
        if (flg_400_set) {
            if (checkHorseRide()) {
                resetUnderAnime(UNDER_2, -1.0f);
            }
            onModeFlg(MODE_RIDING);
        }
    } else if (mProcID == PROC_ELEC_DAMAGE) {
        if (flg_20000_set) {
            onModeFlg(MODE_SWIMMING);
        }

        if (i_checkResetFlg1(RFLG1_UNK_2) && (checkHookshotItem(mEquipItem)) {
            onModeFlg(MODE_UNK_1000);
        }
    }

    if (temp_r31 &&
        (mItemAcKeep.getActor() == NULL ||
         mItemAcKeep.getActor()->mEvtInfo.i_checkCommandDemoAccrpt()) &&
        !i_checkEndResetFlg0(ERFLG0_UNK_1000))
    {
        deleteEquipItem(0, 0);
        resetUpperAnime(UPPER_2, -1.0f);
    }

    if (i_checkModeFlg(MODE_VINE_CLIMB)) {
        mLinkAcch.SetRoofNone();
    } else {
        mLinkAcch.ClrRoofNone();
    }

    field_0x2b9c = 0.0f;
    field_0x2b98 = 0.0f;
    mSpeedModifier = 0.0f;
    field_0x2fb3 = 0;
    field_0x2f9e = 6;

    clearCutTurnEffectID();
    if (!i_checkModeFlg(MODE_SWIMMING) {
        field_0x3080 = 0;
    }

    field_0x3082 = 0;
    field_0x3088 = 0;
    field_0x308a = 0;

    if (i_checkWolf()) {
        shape_angle.z = 0;
        mBodyAngle.x = 0;
        mBodyAngle.y = 0;
    } else if (!i_checkReinRide() && !checkBoardRide()) {
        shape_angle.x = 0;
        shape_angle.z = 0;
    }

    initGravity();

    field_0x308c = 0;
    field_0x33f0 = 0.0f;
    field_0x33f4 = 0.0f;
    field_0x30a0 = 0;
    field_0x30a2 = 0;
    field_0x30f0 = 0;
    m_nSwordBtk->setFrame(0.0f);
    field_0x310a = 0;
    field_0x310c = shape_angle.y;

    if (field_0x3190 != 0) {
        field_0x3190 = 0;
        mBodyAngle.y = 0;
    }

    mFishingArm1Angle = csXyz::Zero;
    field_0x3160 = csXyz::Zero;

    if (field_0x2fc8 != 0) {
        field_0x2fc8 = 0;
        resetFacePriAnime();
    }

    field_0x2fce = 5;
    if (field_0x2f99 == 5) {
        field_0x2f99 = 0x30;
    } else if (field_0x2f99 == 4) {
        field_0x2f99 = 0x20;
    }

    if (i_checkModeFlg(0x40840) || mProcID == PROC_BOSS_BODY_HANG) {
        field_0x2f99 = 0x50;
    }

    if (i_checkModeFlg(MODE_NO_COLLISION) || mProcID == PROC_STEP_MOVE || mProcID == PROC_WOLF_TAG_JUMP) {
        mLinkAcch.OffLineCheck();
        mLinkAcch.OnLineCheckNone();
    } else {
        mLinkAcch.OnLineCheck();
        mLinkAcch.OffLineCheckNone();

        for (int i = 0; i < 2; i++) {
            mFootData2[i].field_0x6 = 0;
            mFootData2[i].field_0x4 = 0;
            mFootData2[i].field_0x2 = 0;
        }

        field_0x2ba4 = 0.0f;
    }

    i_onNoResetFlg0(FLG0_PLAYER_NO_DRAW);

    if (mProcID != PROC_WOLF_FALL && mProcID != PROC_WOLF_LAND) {
        i_offNoResetFlg2(FLG2_UNK_200);
    }

    i_offNoResetFlg2(0x11102);
    i_offResetFlg0(RFLG0_UNK_2);
    i_offNoResetFlg1(0x48004001);
    i_offNoResetFlg0(0x80018);

    field_0x28f8 = -1;
    mSight.offDrawFlg();
    mSight.offLockFlg();

    if (mWolfLockNum != 0 && mProcID != PROC_WOLF_LOCK_ATTACK_TURN && mProcID != PROC_WOLF_LOCK_ATTACK) {
        for (int i = 0; i < mWolfLockNum; i++) {
            mWolfLockAcKeep[i].clearData();
        }
        mWolfLockNum = 0;
    }

    field_0x3078 = 0;

    if ((!checkEquipAnime() || !i_checkModeFlg(4) &&
        ((!i_checkModeFlg(MODE_SWIMMING) || !checkWolfEnemyThrowAnime()) && !checkModeFlg(MODE_UNK_1000))) ||
        (checkSwordTwirlAnime() && mProcID != PROC_ATN_ACTOR_WAIT && mProcID != PROC_ATN_ACTOR_MOVE) ||
        (i_checkWolf() && checkFmChainGrabAnime() && i_checkModeFlg(MODE_NO_COLLISION)) ||
        i_checkNoResetFlg1(FLG1_UNK_40))
    {
        if ((!checkDkCaught2Anime() || mProcID != PROC_DAMAGE) && !checkNoSetUpperAnime()) {
            resetUpperAnime(UPPER_2, 4.0f);
        }

        if (checkBombItem(mEquipItem)) {
            mEquipItem = NO_ITEM;
        }
    }

    if (!i_checkModeFlg(MODE_GRAB_PLACE) && !checkGrabAnime() &&
        !checkWolfGrabAnime() && mGrabItemAcKeep.getActor() != NULL) {
        freeGrabItem();
    }

    if (!checkHookshotAnime() && mProcID != PROC_HOOKSHOT_FLY) {
        cancelHookshotCarry();
    }

    if ((i_dComIfGp_checkPlayerStatus0(0, 8) && !i_checkModeFlg(MODE_VINE_CLIMB) && mProcID != PROC_HANG_CLIMB) ||
        ((i_dComIfGp_checkPlayerStatus1(0, 0x2000000) && mProcID != PROC_HOOKSHOT_WALL_SHOOT && mProcID != PROC_HOOKSHOT_WALL_WAIT)) {
        if (mProcID == PROC_CLIMB_TO_ROOF) {
            current.pos.x += 10.0f * cM_ssin(shape_angle.y);
            current.pos.z += 10.0f * cM_scos(shape_angle.y);
        } else {
            current.pos.x -= 10.0f * cM_ssin(shape_angle.y);
            current.pos.z -= 10.0f * cM_scos(shape_angle.y);
        }
    }

    if (i_dComIfGp_checkPlayerStatus0(0, 0x200000)) {
        seStartSystem(Z2SE_AL_HAWK_EYE_PUTOFF);
    }

    if (checkUpperReadyThrowAnime() && mEquipItem != 0x102) {
        i_dComIfGp_clearPlayerStatus0(0, 0xfeb5ab0f);
    } else {
        i_dComIfGp_clearPlayerStatus0(0, 0xffbfffcf);
    }

    i_dComIfGp_clearPlayerStatus1(0,0x7fb7b78);

    cancelHookshotShot();
    if (mEquipItem == noentry77) {
        deleteEquipItem(0, 0);
    }

    if ((mModeFlg >> 1) % 2 && i_checkModeFlg(MODE_JUMP)) {
        mLastJumpPos = current.pos;
        mFallHeight = mLastJumpPos.y;
        field_0x33c8 = mLastJumpPos.y;
    }

    if (!i_checkModeFlg(MODE_RIDING) && flg_400_set) {
        rideGetOff();
    }

    if (!checkBoarRide() && !checkHorseRide()) {
        resetUnderAnime(UNDER_2, -1.0f);
    }

    if (i_checkModeFlg(MODE_VINE_CLIMB | MODE_NO_COLLISION)) {
        if (i_checkWolf()) {
            field_0x814.SetWeight(0xFF);
        } else {
            field_0x814.SetWeight(0xFE);
        }
    } else {
        field_0x814.SetWeight(0x78);
    }

    dComIfGp_setAdvanceDirection(0);

    if (!checkBowAnime()) {
        setBowNormalAnime();
    }

    if (flg_20000_set && !i_checkModeFlg(MODE_SWIMMING)) {
        if (mProcID != PROC_CAUGHT && mProcID != PROC_HOOKSHOT_FLY &&
            !i_checkNoResetFlg0(FLG0_UNDERWATER))
        {
            swimOutAfter(0);
        }
    }

    setBgCheckParam();

    if ((i_checkNoResetFlg2(FLG2_UNK_40) && mProcID != PROC_WOLF_ENEMY_HANG_BITE) ||
        (i_checkNoResetFlg2(FLG2_UNK_8) && mProcID != PROC_WOLF_ENEMY_THROW && !i_checkWolfEnemyThrowAnime())) {
        resetWolfEnemyBiteAll();
    }

    fopAc_ac_c* actor = field_0x280c.getActor();
    if (actor != NULL && (mModeFlg >> 0x11) % 2 && !i_checkModeFlg(MODE_ROPE_WALK)) {
        field_0x280c.clearData();

        if (fopAcM_GetName(actor) == PROC_Obj_Crope) {
            static_cast<daObjCrope_c*>(actor)->offRide();
        } else if (fopAcM_GetName(actor) == PROC_Obj_Wchain) {
            static_cast<daObjWchain_c*>(actor)->offRide();
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::commonProcInit(daAlink_c::daAlink_PROC param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC.s"
}
#pragma pop
#endif

/* 800C2DA4-800C2DDC 0BD6E4 0038+00 121/121 0/0 0/0 .text
 * commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC */
BOOL daAlink_c::commonProcInitNotSameProc(daAlink_PROC procID) {
    if (mProcID == procID) {
        return false;
    } else {
        commonProcInit(procID);
        return true;
    }
}

#include "d/a/d_a_alink_link.inc"

#include "d/a/d_a_alink_cut.inc"

#include "d/a/d_a_alink_damage.inc"

#include "d/a/d_a_alink_guard.inc"

#include "d/a/d_a_alink_bow.inc"

#include "d/a/d_a_alink_boom.inc"

#include "d/a/d_a_alink_copyrod.inc"

#include "d/a/d_a_alink_hvyboots.inc"

#include "d/a/d_a_alink_bomb.inc"

#include "d/a/d_a_alink_grab.inc"

/* 800E91B0-800E91C4 0E3AF0 0014+00 1/1 0/0 0/0 .text daAlink_searchGoat__FP10fopAc_ac_cPv */
static fopAc_ac_c* daAlink_searchGoat(fopAc_ac_c* i_actor, void*) {
    if (fopAcM_GetName(i_actor) == PROC_COW) {
        return i_actor;
    }

    return NULL;
}

/* 800E91C4-800E9210 0E3B04 004C+00 1/0 0/0 0/0 .text            cancelGoronThrowEvent__9daAlink_cFv
 */
void daAlink_c::cancelGoronThrowEvent() {
    if (mProcID == PROC_GOAT_CATCH && field_0x3012 == 0) {
        field_0x3012 = 1;
        i_dComIfGp_event_reset();
    }
}

/* 800E9210-800E9344 0E3B50 0134+00 2/2 0/0 0/0 .text
 * setGoatStopGameFail__9daAlink_cFP10fopAc_ac_c                */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setGoatStopGameFail(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setGoatStopGameFail__9daAlink_cFP10fopAc_ac_c.s"
}
#pragma pop

/* 800E9344-800E9434 0E3C84 00F0+00 1/1 0/0 0/0 .text            procGoatMoveInit__9daAlink_cFv */
int daAlink_c::procGoatMoveInit() {
    if (!commonProcInitNotSameProc(PROC_GOAT_MOVE)) {
        return 0;
    }

    if (checkZeroSpeedF()) {
        onModeFlg(1);
    }

    mNormalSpeed = FLOAT_LABEL(lit_6108);
    field_0x37c8 = current.pos;
    field_0x2f98 = 3;
    current.angle.y = shape_angle.y + -0x4000;
    field_0x594 = daAlinkHIO_atnMove_c0::m.mMaxSpeed;

    setSingleAnimeBase(ANM_ATN_COW);
    field_0x300c = 0;

    fopAc_ac_c* goat_p = (fopAc_ac_c*)fopAcIt_Judge((fopAcIt_JudgeFunc)daAlink_searchGoat, NULL);
    if (goat_p != NULL) {
        field_0x280c.setData(goat_p);
    }

    field_0x300e = 0;
    deleteEquipItem(FALSE, FALSE);
    return 1;
}

/* 800E9434-800E9894 0E3D74 0460+00 1/0 0/0 0/0 .text            procGoatMove__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procGoatMove() {
    nofralloc
#include "asm/d/a/d_a_alink/procGoatMove__9daAlink_cFv.s"
}
#pragma pop

/* 800E9894-800E9BD0 0E41D4 033C+00 3/3 0/0 0/0 .text procGoatCatchInit__9daAlink_cFP10fopAc_ac_cf
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procGoatCatchInit(fopAc_ac_c* param_0, f32 param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/procGoatCatchInit__9daAlink_cFP10fopAc_ac_cf.s"
}
#pragma pop

/* 800E9BD0-800EA2A8 0E4510 06D8+00 1/0 0/0 0/0 .text            procGoatCatch__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procGoatCatch() {
    nofralloc
#include "asm/d/a/d_a_alink/procGoatCatch__9daAlink_cFv.s"
}
#pragma pop

/* 800EA2A8-800EA3AC 0E4BE8 0104+00 2/2 0/0 0/0 .text            procGoatStrokeInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procGoatStrokeInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procGoatStrokeInit__9daAlink_cFv.s"
}
#pragma pop

/* 800EA3AC-800EA3F4 0E4CEC 0048+00 1/0 0/0 0/0 .text            procGoatStroke__9daAlink_cFv */
int daAlink_c::procGoatStroke() {
    if (mUnderFrameCtrl[0].checkAnmEnd()) {
        checkNextAction(0);
    }

    return 1;
}

/* 800EA3F4-800EA4CC 0E4D34 00D8+00 2/2 0/0 0/0 .text            procGoronMoveInit__9daAlink_cFv */
int daAlink_c::procGoronMoveInit() {
    if (mEquipItem != NO_ITEM) {
        return procPreActionUnequipInit(PROC_GORON_MOVE, NULL);
    }

    if (!commonProcInitNotSameProc(PROC_GORON_MOVE)) {
        return 0;
    }

    mCargoCarryAcKeep.setActor();

    if (mCargoCarryAcKeep.getActor() == NULL) {
        offGoronSideMove();
        return 0;
    }

    mNormalSpeed = FLOAT_LABEL(lit_6108);
    field_0x2f98 = 3;
    current.angle.y = shape_angle.y + -0x4000;
    field_0x594 = daAlinkHIO_atnMove_c0::m.mMaxSpeed;
    setSingleAnimeBase(ANM_ATN_RIGHT);
    field_0x300c = 1;
    field_0x300e = 0;
    return 1;
}

/* 800EA4CC-800EA844 0E4E0C 0378+00 1/0 0/0 0/0 .text            procGoronMove__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procGoronMove() {
    nofralloc
#include "asm/d/a/d_a_alink/procGoronMove__9daAlink_cFv.s"
}
#pragma pop

#include "d/a/d_a_alink_sumou.inc"

#include "d/a/d_a_alink_horse.inc"

#include "d/a/d_a_alink_canoe.inc"

#include "d/a/d_a_alink_crawl.inc"

#include "d/a/d_a_alink_hang.inc"

#include "d/a/d_a_alink_swim.inc"

#include "d/a/d_a_alink_iceleaf.inc"

#include "d/a/d_a_alink_hook.inc"

#include "d/a/d_a_alink_spinner.inc"

#include "d/a/d_a_alink_bottle.inc"

#include "d/a/d_a_alink_kandelaar.inc"

#include "d/a/d_a_alink_whistle.inc"

#include "d/a/d_a_alink_ironball.inc"

#include "d/a/d_a_alink_demo.inc"

/* 80120440-80120474 11AD80 0034+00 1/0 0/0 0/0 .text            commonWaitTurnInit__9daAlink_cFv */
void daAlink_c::commonWaitTurnInit() {
    if (i_checkWolf()) {
        procWolfWaitTurnInit();
    } else {
        procWaitTurnInit();
    }
}

/* 80120474-80120500 11ADB4 008C+00 2/1 0/0 0/0 .text            commonGrabPutInit__9daAlink_cFv */
int daAlink_c::commonGrabPutInit() {
    if (mGrabItemAcKeep.getActor() == NULL) {
        if (mProcID != PROC_GRAB_STAND &&
            (mProcID != PROC_WOLF_GRAB_PUT || !(mUnderFrameCtrl[0].getFrame() < field_0x3478)))
        {
            dComIfGp_evmng_cutEnd(field_0x3184);
            return 1;
        }
    }

    if (i_checkWolf()) {
        return procWolfGrabPutInit();
    }

    return procGrabPutInit();
}

/* 80120500-80120534 11AE40 0034+00 3/3 0/0 0/0 .text commonLargeDamageUpInit__9daAlink_cFiiss */
void daAlink_c::commonLargeDamageUpInit(int param_0, int param_1, s16 param_2, s16 param_3) {
    if (i_checkWolf()) {
        procWolfLargeDamageUpInit(param_0, param_1, param_2, param_3);
    } else {
        procLargeDamageUpInit(param_0, param_1, param_2, param_3);
    }
}

/* 80120534-80120580 11AE74 004C+00 4/4 0/0 0/0 .text            commonFallInit__9daAlink_cFi */
void daAlink_c::commonFallInit(int param_0) {
    if (i_checkWolf()) {
        procWolfFallInit(param_0, daAlinkHIO_wlAutoJump_c0::m.field_0x54);
    } else {
        procFallInit(param_0, daAlinkHIO_autoJump_c0::m.mFallInterpolation);
    }
}

#include "d/a/d_a_alink_effect.inc"

#include "d/a/d_a_alink_wolf.inc"

/* 8013FF28-8013FF90 13A868 0068+00 2/2 0/0 0/0 .text            setArcName__9daAlink_cFi */
void daAlink_c::setArcName(int isWolf) {
    if (isWolf) {
        mArcName = l_wArcName;
        return;
    }

    if (checkCasualWearFlg()) {
        mArcName = l_bArcName;
        return;
    }

    if (checkZoraWearFlg()) {
        mArcName = l_zArcName;
        return;
    }

    if (checkMagicArmorWearFlg()) {
        mArcName = l_mArcName;
        return;
    }

    mArcName = l_kArcName;
}

inline bool checkCarvingWoodShieldEquip() {
    return dComIfGs_getSelectEquipShield() == WOOD_SHIELD;
}

inline bool checkShopWoodShieldEquip() {
    return dComIfGs_getSelectEquipShield() == SHIELD;
}

/* 8013FF90-8013FFD8 13A8D0 0048+00 2/2 0/0 0/0 .text            setShieldArcName__9daAlink_cFv */
void daAlink_c::setShieldArcName() {
    if (checkCarvingWoodShieldEquip() || !i_checkShieldGet()) {
        mShieldArcName = l_cWShdArcName;
        return;
    }

    if (checkShopWoodShieldEquip()) {
        mShieldArcName = l_sWShdArcName;
        return;
    }

    mShieldArcName = l_hyShdArcName;
}

/* 8013FFD8-80140038 13A918 0060+00 1/1 0/0 0/0 .text setOriginalHeap__9daAlink_cFPP10JKRExpHeapUl
 */
void daAlink_c::setOriginalHeap(JKRExpHeap** p_heap, u32 param_1) {
    if (*p_heap == NULL) {
        *p_heap =
            JKRExpHeap::create((param_1 + 0xF & 0xFFFFFFF0) + 0xA0, mDoExt_getGameHeap(), true);
    }
}

/* 80140038-80140064 13A978 002C+00 1/0 0/0 0/0 .text            setClothesChange__9daAlink_cFi */
void daAlink_c::setClothesChange(int param_0) {
    if (i_checkWolf()) {
        return;
    }

    mClothesChangeWaitTimer = 4;
    if (param_0 == 0) {
        return;
    }

    i_onNoResetFlg2(FLG2_UNK_200000);
}

/* 80140064-80140070 13A9A4 000C+00 0/0 1/1 0/0 .text            setShieldChange__9daAlink_cFv */
void daAlink_c::setShieldChange() {
    mShieldChangeWaitTimer = 4;
}

/* 80140070-801401F8 13A9B0 0188+00 3/3 0/0 0/0 .text            loadModelDVD__9daAlink_cFv */
int daAlink_c::loadModelDVD() {
    if (mClothesChangeWaitTimer != 0) {
        mClothesChangeWaitTimer--;

        if (mClothesChangeWaitTimer == 2) {
            mEyeHL1.remove();
            mEyeHL2.remove();
            field_0x79c = NULL;
            mpWlMidnaHatModel = NULL;
            field_0x7a4 = NULL;
            mpWlMidnaHairModel = NULL;

            if (!i_checkNoResetFlg2(FLG2_UNK_280000)) {
                dComIfG_resDelete(&mPhaseReq, mArcName);
                cPhs_Reset(&mPhaseReq);
                field_0x0638->freeAll();

                if (mProcID == PROC_METAMORPHOSE || mProcID == PROC_METAMORPHOSE_ONLY) {
                    setArcName(!i_checkWolf());
                } else {
                    setArcName(i_checkWolf());
                }
            }
        } else if (mClothesChangeWaitTimer == 1) {
            if (i_checkNoResetFlg2(FLG2_UNK_280000)) {
                mClothesChangeWaitTimer = 0;
                changeLink(1);
            } else {
                if (dComIfG_resLoad(&mPhaseReq, mArcName, field_0x0638) == cPhs_COMPLEATE_e) {
                    mClothesChangeWaitTimer = 0;

                    if (mProcID == PROC_METAMORPHOSE || mProcID == PROC_METAMORPHOSE_ONLY) {
                        if (i_checkWolf()) {
                            changeLink(0);
                        } else {
                            changeWolf();
                        }
                    } else {
                        changeLink(1);
                    }

                    return 1;
                }
                mClothesChangeWaitTimer = 2;
            }
        }
    } else {
        return 1;
    }

    return 0;
}

/* 801401F8-80140274 13AB38 007C+00 2/2 0/0 0/0 .text            setShieldModel__9daAlink_cFv */
void daAlink_c::setShieldModel() {
    JKRHeap* heap = mAnmHeap4.setAnimeHeap();
    mShieldModel = initModel((J3DModelData*)dComIfG_getObjectRes(mShieldArcName, 3), 0);

    mDoExt_setCurrentHeap(heap);
}

/* 80140274-80140338 13ABB4 00C4+00 2/2 0/0 0/0 .text            loadShieldModelDVD__9daAlink_cFv */
int daAlink_c::loadShieldModelDVD() {
    if (mShieldChangeWaitTimer != 0) {
        mShieldChangeWaitTimer--;

        if (mShieldChangeWaitTimer == 2) {
            mShieldModel = NULL;
            dComIfG_resDelete(&mShieldPhaseReq, mShieldArcName);
            cPhs_Reset(&mShieldPhaseReq);
            field_0x0648->freeAll();
            setShieldArcName();
        } else if (mShieldChangeWaitTimer == 1) {
            if (dComIfG_resLoad(&mShieldPhaseReq, mShieldArcName, field_0x0648) == cPhs_COMPLEATE_e)
            {
                mShieldChangeWaitTimer = 0;
                setShieldModel();
            } else {
                mShieldChangeWaitTimer = 2;
            }
        }
    } else {
        return 1;
    }

    return 0;
}

/* 80140338-80140550 13AC78 0218+00 3/3 0/0 0/0 .text            changeModelDataDirect__9daAlink_cFi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::changeModelDataDirect(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/changeModelDataDirect__9daAlink_cFi.s"
}
#pragma pop

/* 80140550-801406A8 13AE90 0158+00 3/3 0/0 0/0 .text changeModelDataDirectWolf__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::changeModelDataDirectWolf(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/changeModelDataDirectWolf__9daAlink_cFi.s"
}
#pragma pop

#include "d/a/d_a_alink_swindow.inc"

#include "d/a/d_a_alink_HIO.inc"

/* 80140C80-80140CDC 13B5C0 005C+00 1/0 0/0 0/0 .text            __dt__8dEyeHL_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm dEyeHL_c::~dEyeHL_c() {
    nofralloc
#include "asm/d/a/d_a_alink/__dt__8dEyeHL_cFv.s"
}
#pragma pop

/* 80140CDC-80140D24 13B61C 0048+00 0/0 1/0 0/0 .text            __dt__18daPy_sightPacket_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daPy_sightPacket_c::~daPy_sightPacket_c() {
    nofralloc
#include "asm/d/a/d_a_alink/__dt__18daPy_sightPacket_cFv.s"
}
#pragma pop

/* 80140D24-80140D80 13B664 005C+00 3/2 0/0 0/0 .text            __dt__16daPy_frameCtrl_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daPy_frameCtrl_c::~daPy_frameCtrl_c() {
extern "C" asm void __dt__16daPy_frameCtrl_cFv() {
    nofralloc
#include "asm/d/a/d_a_alink/__dt__16daPy_frameCtrl_cFv.s"
}
#pragma pop

/* 80140D80-80140DCC 13B6C0 004C+00 1/1 0/0 0/0 .text            __ct__16daPy_frameCtrl_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daPy_frameCtrl_c::daPy_frameCtrl_c() {
extern "C" asm void __ct__16daPy_frameCtrl_cFv() {
    nofralloc
#include "asm/d/a/d_a_alink/__ct__16daPy_frameCtrl_cFv.s"
}
#pragma pop

/* 80140DCC-80140DF0 13B70C 0024+00 1/1 0/0 0/0 .text            __defctor__14daPy_anmHeap_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daPy_anmHeap_c::__defctor() {
    nofralloc
#include "asm/d/a/d_a_alink/__defctor__14daPy_anmHeap_cFv.s"
}
#pragma pop

/* 80140DF0-80140E2C 13B730 003C+00 2/2 0/0 0/0 .text            __dt__19mDoExt_AnmRatioPackFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm mDoExt_AnmRatioPack::~mDoExt_AnmRatioPack() {
    nofralloc
#include "asm/d/a/d_a_alink/__dt__19mDoExt_AnmRatioPackFv.s"
}
#pragma pop

/* 80140E2C-80140E40 13B76C 0014+00 1/1 0/0 0/0 .text            __ct__19mDoExt_AnmRatioPackFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm mDoExt_AnmRatioPack::mDoExt_AnmRatioPack() {
    nofralloc
#include "asm/d/a/d_a_alink/__ct__19mDoExt_AnmRatioPackFv.s"
}
#pragma pop

/* 80140E40-80140EB8 13B780 0078+00 4/3 0/0 0/0 .text            __dt__16dBgS_LinkRoofChkFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_LinkRoofChk::~dBgS_LinkRoofChk() {
extern "C" asm void __dt__16dBgS_LinkRoofChkFv() {
    nofralloc
#include "asm/d/a/d_a_alink/__dt__16dBgS_LinkRoofChkFv.s"
}
#pragma pop

/* 80140EB8-80140F30 13B7F8 0078+00 4/3 0/0 0/0 .text            __dt__15dBgS_LinkGndChkFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_LinkGndChk::~dBgS_LinkGndChk() {
extern "C" asm void __dt__15dBgS_LinkGndChkFv() {
    nofralloc
#include "asm/d/a/d_a_alink/__dt__15dBgS_LinkGndChkFv.s"
}
#pragma pop

/* 80140F30-80140FA0 13B870 0070+00 3/2 0/0 0/0 .text            __dt__13dBgS_LinkAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_LinkAcch::~dBgS_LinkAcch() {
extern "C" asm void __dt__13dBgS_LinkAcchFv() {
    nofralloc
#include "asm/d/a/d_a_alink/__dt__13dBgS_LinkAcchFv.s"
}
#pragma pop

/* 80140FA0-80141020 13B8E0 0080+00 1/1 0/0 0/0 .text            __ct__8dCcD_CpsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_Cps::dCcD_Cps() {
extern "C" asm void __ct__8dCcD_CpsFv() {
    nofralloc
#include "asm/d/a/d_a_alink/__ct__8dCcD_CpsFv.s"
}
#pragma pop

/* 80141020-801410A4 13B960 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_CylFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_Cyl::dCcD_Cyl() {
extern "C" asm void __ct__8dCcD_CylFv() {
    nofralloc
#include "asm/d/a/d_a_alink/__ct__8dCcD_CylFv.s"
}
#pragma pop

/* 801410A4-801410EC 13B9E4 0048+00 0/0 1/0 0/0 .text            __dt__9cCcD_SttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cCcD_Stts::~cCcD_Stts() {
extern "C" asm void __dt__9cCcD_SttsFv() {
    nofralloc
#include "asm/d/a/d_a_alink/__dt__9cCcD_SttsFv.s"
}
#pragma pop

/* 801410EC-8014111C 13BA2C 0030+00 1/1 0/0 0/0 .text            __ct__16daPy_actorKeep_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void __ct__16daPy_actorKeep_cFv() {
    nofralloc
#include "asm/d/a/d_a_alink/__ct__16daPy_actorKeep_cFv.s"
}
#pragma pop

/* 8014111C-8014112C 13BA5C 0010+00 1/1 0/0 0/0 .text
 * onNoResetFlg2__9daPy_py_cFQ29daPy_py_c9daPy_FLG2             */
void daPy_py_c::onNoResetFlg2(daPy_FLG2 pFlag) {
    mNoResetFlg2 |= pFlag;
}

/* 8014112C-8014113C 13BA6C 0010+00 1/1 0/0 0/0 .text
 * offNoResetFlg0__9daPy_py_cFQ29daPy_py_c9daPy_FLG0            */
// weird regalloc
#ifdef NONMATCHING
void daPy_py_c::offNoResetFlg0(daPy_FLG0 pFlag) {
    mNoResetFlg0 &= ~pFlag;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daPy_py_c::offNoResetFlg0(daPy_py_c::daPy_FLG0 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/offNoResetFlg0__9daPy_py_cFQ29daPy_py_c9daPy_FLG0.s"
}
#pragma pop
#endif

/* 8014113C-80141190 13BA7C 0054+00 1/1 0/0 0/0 .text            mDoAud_seStartLevel__FUlPC3VecUlSc
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void mDoAud_seStartLevel(u32 param_0, Vec const* param_1, u32 param_2, s8 param_3) {
    nofralloc
#include "asm/d/a/d_a_alink/mDoAud_seStartLevel__FUlPC3VecUlSc.s"
}
#pragma pop

/* 80141190-8014119C 13BAD0 000C+00 1/1 0/0 0/0 .text
 * checkEndResetFlg2__9daPy_py_cCFQ29daPy_py_c11daPy_ERFLG2     */
int daPy_py_c::checkEndResetFlg2(daPy_ERFLG2 pFlag) const {
    return mEndResetFlg2 & pFlag;
}

/* 8014119C-801411B0 13BADC 0014+00 1/1 0/0 0/0 .text            dComIfGp_setBottleStatus__FUcUc */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void dComIfGp_setBottleStatus(u8 param_0, u8 param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/dComIfGp_setBottleStatus__FUcUc.s"
}
#pragma pop

/* 801411B0-801411D4 13BAF0 0024+00 1/1 0/0 0/0 .text            getSumouMode__9daPy_py_cCFv */
bool daPy_py_c::getSumouMode() const {
    return getSumouCameraMode();
}

/* 801411D4-801411E0 13BB14 000C+00 1/1 0/0 0/0 .text
 * checkNoResetFlg3__9daPy_py_cCFQ29daPy_py_c9daPy_FLG3         */
int daPy_py_c::checkNoResetFlg3(daPy_FLG3 pFlag) const {
    return mNoResetFlg3 & pFlag;
}

/* 801411E0-801411F0 13BB20 0010+00 1/1 0/0 0/0 .text            onCondition__11dEvt_info_cFUs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dEvt_info_c::onCondition(u16 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/onCondition__11dEvt_info_cFUs.s"
}
#pragma pop

/* 801411F0-80141200 13BB30 0010+00 1/1 4/4 0/0 .text            __ct__8cM3dGPlaFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGPla::cM3dGPla() {
extern "C" asm void __ct__8cM3dGPlaFv() {
    nofralloc
#include "asm/d/a/d_a_alink/__ct__8cM3dGPlaFv.s"
}
#pragma pop

/* 80141200-80141210 13BB40 0010+00 1/1 0/0 0/0 .text            offCondition__11dEvt_info_cFUs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dEvt_info_c::offCondition(u16 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/offCondition__11dEvt_info_cFUs.s"
}
#pragma pop

/* 80141210-80141230 13BB50 0020+00 1/1 0/0 0/0 .text            checkShieldGet__9daPy_py_cFv */
BOOL daPy_py_c::checkShieldGet() {
    return dComIfGs_getSelectEquipShield() != NO_ITEM;
}

/* 80141230-80141264 13BB70 0034+00 1/1 0/0 0/0 .text            fopAcM_onSwitch__FPC10fopAc_ac_ci
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void fopAcM_onSwitch(fopAc_ac_c const* param_0, int param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/fopAcM_onSwitch__FPC10fopAc_ac_ci.s"
}
#pragma pop

/* 80141264-80141294 13BBA4 0030+00 1/1 0/0 0/0 .text            dComIfGs_isItemFirstBit__FUc */
int dComIfGs_isItemFirstBit(u8 i_no) {
    return g_dComIfG_gameInfo.info.getPlayer().getGetItem().isFirstBit(i_no);
}

/* 80141294-801412A0 13BBD4 000C+00 1/1 0/0 0/0 .text
 * dStage_stagInfo_GetSaveTbl__FP21stage_stag_info_class        */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm s32 dStage_stagInfo_GetSaveTbl(stage_stag_info_class* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/dStage_stagInfo_GetSaveTbl__FP21stage_stag_info_class.s"
}
#pragma pop

/* 801412A0-801412B0 13BBE0 0010+00 1/1 0/0 0/0 .text            dComIfGp_getStage__Fv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm dStage_stageDt_c* dComIfGp_getStage() {
    nofralloc
#include "asm/d/a/d_a_alink/dComIfGp_getStage__Fv.s"
}
#pragma pop

/* 801412B0-801412BC 13BBF0 000C+00 1/1 0/0 0/0 .text            checkEquipHeavyBoots__9daPy_py_cCFv
 */
u32 daPy_py_c::checkEquipHeavyBoots() const {
    return i_checkNoResetFlg0(FLG0_EQUIP_HVY_BOOTS);
}

/* 801412BC-801412C4 13BBFC 0008+00 1/1 4/4 0/0 .text            fopAcM_GetName__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void fopAcM_GetName(void* param_0) {
extern "C" asm void fopAcM_GetName__FPv() {
    nofralloc
#include "asm/d/a/d_a_alink/fopAcM_GetName__FPv.s"
}
#pragma pop

/* 801412C4-801412D4 13BC04 0010+00 1/1 0/0 0/0 .text
 * onNoResetFlg0__9daPy_py_cFQ29daPy_py_c9daPy_FLG0             */
void daPy_py_c::onNoResetFlg0(daPy_FLG0 pFlag) {
    mNoResetFlg0 |= pFlag;
}

/* 801412D4-801412F8 13BC14 0024+00 1/1 0/0 0/0 .text            isOrderOK__14dEvt_control_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL dEvt_control_c::isOrderOK() {
    nofralloc
#include "asm/d/a/d_a_alink/isOrderOK__14dEvt_control_cFv.s"
}
#pragma pop

/* 801412F8-80141308 13BC38 0010+00 1/1 0/0 0/0 .text            dComIfGp_getEvent__Fv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm dEvt_control_c& dComIfGp_getEvent() {
    nofralloc
#include "asm/d/a/d_a_alink/dComIfGp_getEvent__Fv.s"
}
#pragma pop

/* 80141308-80141324 13BC48 001C+00 1/1 0/0 0/0 .text            dComIfGp_checkPlayerStatus0__FiUl
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm u32 dComIfGp_checkPlayerStatus0(int param_0, u32 param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/dComIfGp_checkPlayerStatus0__FiUl.s"
}
#pragma pop

/* 80141324-80141340 13BC64 001C+00 1/1 0/0 0/0 .text            dComIfGp_checkPlayerStatus1__FiUl
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm u32 dComIfGp_checkPlayerStatus1(int param_0, u32 param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/dComIfGp_checkPlayerStatus1__FiUl.s"
}
#pragma pop

/* 80141340-8014134C 13BC80 000C+00 1/1 0/0 0/0 .text
 * checkEndResetFlg1__9daPy_py_cCFQ29daPy_py_c11daPy_ERFLG1     */
u32 daPy_py_c::checkEndResetFlg1(daPy_ERFLG1 pFlag) const {
    return mEndResetFlg1 & pFlag;
}

/* 8014134C-8014135C 13BC8C 0010+00 1/1 0/0 0/0 .text            dComIfGp_getEventManager__Fv */
static dEvent_manager_c& dComIfGp_getEventManager() {
    return g_dComIfG_gameInfo.play.getEvtManager();
}

/* 8014135C-8014136C 13BC9C 0010+00 1/1 0/0 0/0 .text
 * offNoResetFlg1__9daPy_py_cFQ29daPy_py_c9daPy_FLG1            */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daPy_py_c::offNoResetFlg1(daPy_py_c::daPy_FLG1 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/offNoResetFlg1__9daPy_py_cFQ29daPy_py_c9daPy_FLG1.s"
}
#pragma pop

/* 8014136C-8014137C 13BCAC 0010+00 1/1 0/0 0/0 .text
 * offNoResetFlg2__9daPy_py_cFQ29daPy_py_c9daPy_FLG2            */
// regalloc
#ifdef NONMATCHING
void daPy_py_c::offNoResetFlg2(daPy_py_c::daPy_FLG2 param_0) {
    mNoResetFlg2 &= ~param_0;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daPy_py_c::offNoResetFlg2(daPy_py_c::daPy_FLG2 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/offNoResetFlg2__9daPy_py_cFQ29daPy_py_c9daPy_FLG2.s"
}
#pragma pop
#endif

/* 8014137C-80141388 13BCBC 000C+00 1/1 0/0 0/0 .text            setSpecialDemoType__11daPy_demo_cFv
 */
void daPy_demo_c::setSpecialDemoType() {
    setDemoType(5);
}

/* 80141388-8014139C 13BCC8 0014+00 1/1 0/0 0/0 .text            checkCommandCatch__11dEvt_info_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool dEvt_info_c::checkCommandCatch() {
    nofralloc
#include "asm/d/a/d_a_alink/checkCommandCatch__11dEvt_info_cFv.s"
}
#pragma pop

/* 8014139C-801413CC 13BCDC 0030+00 1/1 1/1 0/0 .text            dComIfGs_isEventBit__FUs */
BOOL dComIfGs_isEventBit(u16 id) {
    return g_dComIfG_gameInfo.info.getEvent().isEventBit(id);
}

/* 801413CC-801413D8 13BD0C 000C+00 1/1 0/0 0/0 .text            checkWolf__9daPy_py_cCFv */
u32 daPy_py_c::checkWolf() const {
    return i_checkNoResetFlg1(FLG1_IS_WOLF);
}

/* 801413D8-801413F8 13BD18 0020+00 1/1 0/0 0/0 .text            checkSwordGet__9daPy_py_cFv */
BOOL daPy_py_c::checkSwordGet() {
    return dComIfGs_getSelectEquipSword() != 0xFF;
}

/* 801413F8-80141404 13BD38 000C+00 1/1 0/0 0/0 .text
 * checkResetFlg0__9daPy_py_cCFQ29daPy_py_c10daPy_RFLG0         */
u32 daPy_py_c::checkResetFlg0(daPy_RFLG0 pFlag) const {
    return mResetFlg0 & pFlag;
}

/* 80141404-80141410 13BD44 000C+00 1/1 0/0 0/0 .text            ChkGroundHit__9dBgS_AcchCFv */
bool dBgS_Acch::ChkGroundHit() const {
    return m_flags & GROUND_HIT;
}

/* 80141410-8014141C 13BD50 000C+00 1/1 0/0 0/0 .text
 * checkNoResetFlg0__9daPy_py_cCFQ29daPy_py_c9daPy_FLG0         */
u32 daPy_py_c::checkNoResetFlg0(daPy_FLG0 pFlag) const {
    return mNoResetFlg0 & pFlag;
}

/* 8014141C-80141438 13BD5C 001C+00 1/1 0/0 0/0 .text            dComIfGp_getPlayerCameraID__Fi */
#ifdef NONMATCHING
static s32 dComIfGp_getPlayerCameraID(int i) {
    return g_dComIfG_gameInfo.play.getPlayerCameraID(i);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm s8 dComIfGp_getPlayerCameraID(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/dComIfGp_getPlayerCameraID__Fi.s"
}
#pragma pop
#endif

/* 80141438-80141450 13BD78 0018+00 1/1 0/0 0/0 .text            dComIfGp_event_chkEventFlag__FUs */
static u16 dComIfGp_event_chkEventFlag(u16 flag) {
    return g_dComIfG_gameInfo.play.getEvent().chkEventFlag(flag);
}

/* 80141450-80141464 13BD90 0014+00 1/1 0/0 0/0 .text            checkCommandDoor__11dEvt_info_cFv
 */
BOOL dEvt_info_c::checkCommandDoor() {
    return mCommand == 3;
}

/* 80141464-801414A4 13BDA4 0040+00 1/1 0/0 0/0 .text
 * dComIfGp_evmng_getMyStaffId__FPCcP10fopAc_ac_ci              */
static s32 dComIfGp_evmng_getMyStaffId(char const* param_0, fopAc_ac_c* param_1, int param_2) {
    return dComIfGp_getPEvtManager()->getMyStaffId(param_0, param_1, param_2);
}

/* 801414A4-801414C0 13BDE4 001C+00 1/1 0/0 0/0 .text            dComIfGp_event_runCheck__Fv */
static BOOL dComIfGp_event_runCheck() {
    return g_dComIfG_gameInfo.play.getEvent().runCheck();
}

/* 801414C0-801414CC 13BE00 000C+00 1/1 0/0 0/0 .text
 * checkNoResetFlg2__9daPy_py_cCFQ29daPy_py_c9daPy_FLG2         */
u32 daPy_py_c::checkNoResetFlg2(daPy_FLG2 pFlag) const {
    return mNoResetFlg2 & pFlag;
}

/* 801414CC-801414D8 13BE0C 000C+00 1/1 2/2 0/0 .text            checkMagneBootsOn__9daPy_py_cCFv */
u32 daPy_py_c::checkMagneBootsOn() const {
    return i_checkNoResetFlg0(FLG0_MAGNE_BOOTS_ON);
}

/* 801414D8-801414E8 13BE18 0010+00 1/1 2/2 0/0 .text            dComIfGp_getHorseActor__Fv */
daHorse_c* dComIfGp_getHorseActor() {
    return (daHorse_c*)g_dComIfG_gameInfo.play.getPlayerPtr(1);
}

/* 801414E8-801414F4 13BE28 000C+00 1/1 0/0 0/0 .text checkBoarSingleBattle__9daPy_py_cCFv */
u32 daPy_py_c::checkBoarSingleBattle() const {
    return i_checkNoResetFlg2(FLG2_BOAR_SINGLE_BATTLE);
}

/* 801414F4-80141500 13BE34 000C+00 1/1 0/0 0/0 .text
 * checkEndResetFlg0__9daPy_py_cCFQ29daPy_py_c11daPy_ERFLG0     */
u32 daPy_py_c::checkEndResetFlg0(daPy_ERFLG0 pFlag) const {
    return mEndResetFlg0 & pFlag;
}

/* 80141500-80141508 13BE40 0008+00 1/0 0/0 0/0 .text            getMidnaAtnPos__9daPy_py_cCFv */
extern "C" bool getMidnaAtnPos__9daPy_py_cCFv() {
    // bool daPy_py_c::getMidnaAtnPos() const {
    return false;
}

/* 80141508-8014150C 13BE48 0004+00 1/0 0/0 0/0 .text setMidnaMsgNum__9daPy_py_cFP10fopAc_ac_cUs
 */
void daPy_py_c::setMidnaMsgNum(fopAc_ac_c* param_0, u16 param_1) {
    /* empty function */
}

/* 8014150C-80141514 13BE4C 0008+00 1/0 0/0 0/0 .text            getModelMtx__9daPy_py_cFv */
MtxP daPy_py_c::getModelMtx() {
    return mCullMtx;
}

/* 80141514-8014151C 13BE54 0008+00 1/0 0/0 0/0 .text            getInvMtx__9daPy_py_cFv */
MtxP daPy_py_c::getInvMtx() {
    return mCullMtx;
}

/* 8014151C-80141524 13BE5C 0008+00 1/0 0/0 0/0 .text            getShadowTalkAtnPos__9daPy_py_cFv
 */
cXyz* daPy_py_c::getShadowTalkAtnPos() {
    return &current.pos;
}

/* 80141524-8014152C 13BE64 0008+00 1/0 0/0 0/0 .text            getLeftItemMatrix__9daPy_py_cFv */
MtxP daPy_py_c::getLeftItemMatrix() {
    return mCullMtx;
}

/* 8014152C-80141534 13BE6C 0008+00 1/0 0/0 0/0 .text            getRightItemMatrix__9daPy_py_cFv */
MtxP daPy_py_c::getRightItemMatrix() {
    return mCullMtx;
}

/* 80141534-8014153C 13BE74 0008+00 1/0 0/0 0/0 .text            getLeftHandMatrix__9daPy_py_cFv */
MtxP daPy_py_c::getLeftHandMatrix() {
    return mCullMtx;
}

/* 8014153C-80141544 13BE7C 0008+00 1/0 0/0 0/0 .text            getRightHandMatrix__9daPy_py_cFv */
MtxP daPy_py_c::getRightHandMatrix() {
    return mCullMtx;
}

/* 80141544-8014154C 13BE84 0008+00 1/0 0/0 0/0 .text getLinkBackBone1Matrix__9daPy_py_cFv */
MtxP daPy_py_c::getLinkBackBone1Matrix() {
    return mCullMtx;
}

/* 8014154C-80141554 13BE8C 0008+00 1/0 0/0 0/0 .text            getWolfMouthMatrix__9daPy_py_cFv */
MtxP daPy_py_c::getWolfMouthMatrix() {
    return mCullMtx;
}

/* 80141554-8014155C 13BE94 0008+00 1/0 0/0 0/0 .text getWolfBackbone2Matrix__9daPy_py_cFv */
MtxP daPy_py_c::getWolfBackbone2Matrix() {
    return mCullMtx;
}

/* 8014155C-80141564 13BE9C 0008+00 1/0 0/0 0/0 .text            getBottleMtx__9daPy_py_cFv */
MtxP daPy_py_c::getBottleMtx() {
    return NULL;
}

/* 80141564-8014156C 13BEA4 0008+00 1/0 0/0 0/0 .text            checkPlayerGuard__9daPy_py_cCFv */
BOOL daPy_py_c::checkPlayerGuard() const {
    return false;
}

/* 8014156C-80141574 13BEAC 0008+00 1/0 0/0 0/0 .text            checkAutoJump__9daPy_py_cCFv */
BOOL daPy_py_c::checkAutoJump() const {
    return false;
}

/* 80141574-8014157C 13BEB4 0008+00 1/0 0/0 0/0 .text            checkSideStep__9daPy_py_cCFv */
bool daPy_py_c::checkSideStep() const {
    return false;
}

/* 8014157C-80141584 13BEBC 0008+00 1/0 0/0 0/0 .text            checkWolfTriggerJump__9daPy_py_cCFv
 */
bool daPy_py_c::checkWolfTriggerJump() const {
    return false;
}

/* 80141584-8014158C 13BEC4 0008+00 1/0 0/0 0/0 .text            checkGuardBreakMode__9daPy_py_cCFv
 */
BOOL daPy_py_c::checkGuardBreakMode() const {
    return false;
}

/* 8014158C-80141594 13BECC 0008+00 1/0 0/0 0/0 .text            checkLv3Slide__9daPy_py_cCFv */
bool daPy_py_c::checkLv3Slide() const {
    return false;
}

/* 80141594-8014159C 13BED4 0008+00 1/0 0/0 0/0 .text checkWolfHowlDemoMode__9daPy_py_cCFv */
bool daPy_py_c::checkWolfHowlDemoMode() const {
    return false;
}

/* 8014159C-801415A4 13BEDC 0008+00 1/0 0/0 0/0 .text checkChainBlockPushPull__9daPy_py_cFv */
bool daPy_py_c::checkChainBlockPushPull() {
    return false;
}

/* 801415A4-801415AC 13BEE4 0008+00 1/0 0/0 0/0 .text            checkElecDamage__9daPy_py_cCFv */
BOOL daPy_py_c::checkElecDamage() const {
    return false;
}

/* 801415AC-801415B4 13BEEC 0008+00 1/0 0/0 0/0 .text checkEmptyBottleSwing__9daPy_py_cCFv */
BOOL daPy_py_c::checkEmptyBottleSwing() const {
    return false;
}

/* 801415B4-801415BC 13BEF4 0008+00 1/0 0/0 0/0 .text            checkBottleSwingMode__9daPy_py_cCFv
 */
BOOL daPy_py_c::checkBottleSwingMode() const {
    return false;
}

/* 801415BC-801415C4 13BEFC 0008+00 1/0 0/0 0/0 .text            checkHawkWait__9daPy_py_cCFv */
BOOL daPy_py_c::checkHawkWait() const {
    return false;
}

/* 801415C4-801415CC 13BF04 0008+00 1/0 0/0 0/0 .text            checkGoatThrow__9daPy_py_cCFv */
BOOL daPy_py_c::checkGoatThrow() const {
    return false;
}

/* 801415CC-801415D4 13BF0C 0008+00 1/0 0/0 0/0 .text            checkGoatThrowAfter__9daPy_py_cCFv
 */
BOOL daPy_py_c::checkGoatThrowAfter() const {
    return false;
}

/* 801415D4-801415DC 13BF14 0008+00 1/0 0/0 0/0 .text            checkWolfTagLockJump__9daPy_py_cCFv
 */
BOOL daPy_py_c::checkWolfTagLockJump() const {
    return false;
}

/* 801415DC-801415E4 13BF1C 0008+00 1/0 0/0 0/0 .text checkWolfTagLockJumpLand__9daPy_py_cCFv */
BOOL daPy_py_c::checkWolfTagLockJumpLand() const {
    return false;
}

/* 801415E4-801415EC 13BF24 0008+00 1/0 0/0 0/0 .text            checkWolfRope__9daPy_py_cFv */
BOOL daPy_py_c::checkWolfRope() {
    return false;
}

/* 801415EC-801415F4 13BF2C 0008+00 1/0 0/0 0/0 .text            checkWolfRopeHang__9daPy_py_cCFv */
BOOL daPy_py_c::checkWolfRopeHang() const {
    return false;
}

/* 801415F4-801415FC 13BF34 0008+00 1/0 0/0 0/0 .text            checkRollJump__9daPy_py_cCFv */
BOOL daPy_py_c::checkRollJump() const {
    return false;
}

/* 801415FC-80141604 13BF3C 0008+00 1/0 0/0 0/0 .text            checkGoronRideWait__9daPy_py_cCFv
 */
BOOL daPy_py_c::checkGoronRideWait() const {
    return false;
}

/* 80141604-8014160C 13BF44 0008+00 1/0 0/0 0/0 .text            checkWolfChain__9daPy_py_cCFv */
BOOL daPy_py_c::checkWolfChain() const {
    return false;
}

/* 8014160C-80141614 13BF4C 0008+00 1/0 0/0 0/0 .text            checkWolfWait__9daPy_py_cCFv */
BOOL daPy_py_c::checkWolfWait() const {
    return false;
}

/* 80141614-8014161C 13BF54 0008+00 1/0 0/0 0/0 .text            checkWolfJumpAttack__9daPy_py_cCFv
 */
BOOL daPy_py_c::checkWolfJumpAttack() const {
    return false;
}

/* 8014161C-80141624 13BF5C 0008+00 1/0 0/0 0/0 .text            checkWolfRSit__9daPy_py_cCFv */
BOOL daPy_py_c::checkWolfRSit() const {
    return false;
}

/* 80141624-8014162C 13BF64 0008+00 2/0 0/0 0/0 .text            checkBubbleFly__9daPy_py_cCFv */
bool daPy_py_c::checkBubbleFly() const {
    return false;
}

/* 8014162C-80141634 13BF6C 0008+00 1/0 0/0 0/0 .text            checkBottleDrinkEnd__9daPy_py_cCFv
 */
BOOL daPy_py_c::checkBottleDrinkEnd() const {
    return false;
}

/* 80141634-8014163C 13BF74 0008+00 1/0 0/0 0/0 .text            checkWolfDig__9daPy_py_cCFv */
BOOL daPy_py_c::checkWolfDig() const {
    return false;
}

/* 8014163C-80141644 13BF7C 0008+00 1/0 0/0 0/0 .text            checkCutCharge__9daPy_py_cCFv */
BOOL daPy_py_c::checkCutCharge() const {
    return false;
}

/* 80141644-8014164C 13BF84 0008+00 1/0 0/0 0/0 .text            checkCutTurnCharge__9daPy_py_cCFv
 */
BOOL daPy_py_c::checkCutTurnCharge() const {
    return false;
}

/* 8014164C-80141654 13BF8C 0008+00 1/0 0/0 0/0 .text checkCutLargeJumpCharge__9daPy_py_cCFv */
BOOL daPy_py_c::checkCutLargeJumpCharge() const {
    return false;
}

/* 80141654-8014165C 13BF94 0008+00 2/0 0/0 0/0 .text            getBokoFlamePos__9daPy_py_cFP4cXyz
 */
bool daPy_py_c::getBokoFlamePos(cXyz* param_0) {
    return false;
}

/* 8014165C-80141664 13BF9C 0008+00 1/0 0/0 0/0 .text            checkComboCutTurn__9daPy_py_cCFv */
BOOL daPy_py_c::checkComboCutTurn() const {
    return false;
}

/* 80141664-8014166C 13BFA4 0008+00 1/0 0/0 0/0 .text            checkClimbMove__9daPy_py_cCFv */
BOOL daPy_py_c::checkClimbMove() const {
    return false;
}

/* 8014166C-80141674 13BFAC 0008+00 1/0 0/0 0/0 .text            checkGrassWhistle__9daPy_py_cCFv */
BOOL daPy_py_c::checkGrassWhistle() const {
    return false;
}

/* 80141674-8014167C 13BFB4 0008+00 1/0 0/0 0/0 .text            checkBoarRun__9daPy_py_cCFv */
BOOL daPy_py_c::checkBoarRun() const {
    return false;
}

/* 8014167C-80141684 13BFBC 0008+00 2/0 0/0 0/0 .text            checkFmChainPut__9daPy_py_cCFv */
bool daPy_py_c::checkFmChainPut() const {
    return false;
}

/* 80141684-8014168C 13BFC4 0008+00 2/0 0/0 0/0 .text            checkHorseElecDamage__9daPy_py_cCFv
 */
bool daPy_py_c::checkHorseElecDamage() const {
    return false;
}

/* 8014168C-80141694 13BFCC 0008+00 1/0 0/0 0/0 .text getBaseAnimeFrameRate__9daPy_py_cCFv */
float daPy_py_c::getBaseAnimeFrameRate() const {
    return lit_6040;
}

/* 80141694-8014169C 13BFD4 0008+00 1/0 0/0 0/0 .text            getBaseAnimeFrame__9daPy_py_cCFv */
f32 daPy_py_c::getBaseAnimeFrame() const {
    return FLOAT_LABEL(lit_6108);
}

/* 8014169C-801416A0 13BFDC 0004+00 1/0 0/0 0/0 .text            setAnimeFrame__9daPy_py_cFf */
void daPy_py_c::setAnimeFrame(f32 param_0) {
    /* empty function */
}

/* 801416A0-801416A8 13BFE0 0008+00 1/0 0/0 0/0 .text checkWolfLock__9daPy_py_cCFP10fopAc_ac_c */
bool daPy_py_c::checkWolfLock(fopAc_ac_c* param_0) const {
    return false;
}

/* 801416A8-801416B0 13BFE8 0008+00 1/0 0/0 0/0 .text cancelWolfLock__9daPy_py_cFP10fopAc_ac_c */
bool daPy_py_c::cancelWolfLock(fopAc_ac_c* param_0) {
    return false;
}

/* 801416B0-801416B8 13BFF0 0008+00 1/0 0/0 0/0 .text            getItemID__9daPy_py_cCFv */
s32 daPy_py_c::getItemID() const {
    return -1;
}

/* 801416B8-801416C0 13BFF8 0008+00 1/0 0/0 0/0 .text exchangeGrabActor__9daPy_py_cFP10fopAc_ac_c
 */
bool daPy_py_c::exchangeGrabActor(fopAc_ac_c* param_0) {
    return false;
}

/* 801416C0-801416C8 13C000 0008+00 1/0 0/0 0/0 .text setForceGrab__9daPy_py_cFP10fopAc_ac_cii */
bool daPy_py_c::setForceGrab(fopAc_ac_c* param_0, int param_1, int param_2) {
    return false;
}

/* 801416C8-801416CC 13C008 0004+00 1/0 0/0 0/0 .text            setForcePutPos__9daPy_py_cFRC4cXyz
 */
void daPy_py_c::setForcePutPos(cXyz const& param_0) {
    /* empty function */
}

/* 801416CC-801416D4 13C00C 0008+00 1/0 0/0 0/0 .text            checkPlayerNoDraw__9daPy_py_cFv */
BOOL daPy_py_c::checkPlayerNoDraw() {
    return false;
}

/* 801416D4-801416DC 13C014 0008+00 2/0 0/0 0/0 .text            checkRopeTag__9daPy_py_cFv */
bool daPy_py_c::checkRopeTag() {
    return false;
}

/* 801416DC-801416E0 13C01C 0004+00 1/0 0/0 0/0 .text            voiceStart__9daPy_py_cFUl */
void daPy_py_c::voiceStart(u32 param_0) {
    /* empty function */
}

/* 801416E0-801416E4 13C020 0004+00 1/0 0/0 0/0 .text            seStartOnlyReverb__9daPy_py_cFUl */
void daPy_py_c::seStartOnlyReverb(u32 param_0) {
    /* empty function */
}

/* 801416E4-801416E8 13C024 0004+00 1/0 0/0 0/0 .text seStartOnlyReverbLevel__9daPy_py_cFUl */
void daPy_py_c::seStartOnlyReverbLevel(u32 param_0) {
    /* empty function */
}

/* 801416E8-801416EC 13C028 0004+00 1/0 0/0 0/0 .text            setOutPower__9daPy_py_cFfsi */
void daPy_py_c::setOutPower(f32 param_0, s16 param_1, int param_2) {
    /* empty function */
}

/* 801416EC-801416F0 13C02C 0004+00 1/0 0/0 0/0 .text
 * setGrabCollisionOffset__9daPy_py_cFffP13cBgS_PolyInfo        */
void daPy_py_c::setGrabCollisionOffset(f32 param_0, f32 param_1, cBgS_PolyInfo* param_2) {
    /* empty function */
}

/* 801416F0-801416F4 13C030 0004+00 2/0 0/0 0/0 .text            onMagneGrab__9daPy_py_cFff */
void daPy_py_c::onMagneGrab(f32 param_0, f32 param_1) {
    /* empty function */
}

/* 801416F4-801416FC 13C034 0008+00 1/0 0/0 0/0 .text            getModelJointMtx__9daPy_py_cFUs */
MtxP daPy_py_c::getModelJointMtx(u16 param_0) {
    return NULL;
}

/* 801416FC-80141704 13C03C 0008+00 1/0 0/0 0/0 .text            getHeadMtx__9daPy_py_cFv */
MtxP daPy_py_c::getHeadMtx() {
    return NULL;
}

/* 80141704-8014170C 13C044 0008+00 1/0 0/0 0/0 .text setHookshotCarryOffset__9daPy_py_cFUiPC4cXyz
 */
bool daPy_py_c::setHookshotCarryOffset(unsigned int param_0, cXyz const* param_1) {
    return false;
}

/* 8014170C-80141714 13C04C 0008+00 1/0 0/0 0/0 .text            checkIronBallReturn__9daPy_py_cCFv
 */
bool daPy_py_c::checkIronBallReturn() const {
    return false;
}

/* 80141714-8014171C 13C054 0008+00 1/0 0/0 0/0 .text checkIronBallGroundStop__9daPy_py_cCFv */
bool daPy_py_c::checkIronBallGroundStop() const {
    return false;
}

/* 8014171C-80141724 13C05C 0008+00 1/0 0/0 0/0 .text
 * checkSingleBoarBattleSecondBowReady__9daPy_py_cCFv           */
BOOL daPy_py_c::checkSingleBoarBattleSecondBowReady() const {
    return false;
}

/* 80141724-8014172C 13C064 0008+00 2/0 0/0 0/0 .text checkPointSubWindowMode__9daPy_py_cCFv */
bool daPy_py_c::checkPointSubWindowMode() const {
    return false;
}

/* 8014172C-80141730 13C06C 0004+00 1/0 0/0 0/0 .text            setClothesChange__9daPy_py_cFi */
void daPy_py_c::setClothesChange(int param_0) {
    /* empty function */
}

/* 80141730-80141734 13C070 0004+00 1/0 0/0 0/0 .text setPlayerPosAndAngle__9daPy_py_cFPA4_f */
void daPy_py_c::setPlayerPosAndAngle(f32 (*param_0)[4]) {
    /* empty function */
}

/* 80141734-80141738 13C074 0004+00 1/0 0/0 0/0 .text
 * setPlayerPosAndAngle__9daPy_py_cFPC4cXyzPC5csXyz             */
void daPy_py_c::setPlayerPosAndAngle(cXyz const* param_0, csXyz const* param_1) {
    /* empty function */
}

/* 80141738-8014173C 13C078 0004+00 1/0 0/0 0/0 .text setPlayerPosAndAngle__9daPy_py_cFPC4cXyzsi
 */
void daPy_py_c::setPlayerPosAndAngle(cXyz const* param_0, s16 param_1, int param_2) {
    /* empty function */
}

/* 8014173C-80141744 13C07C 0008+00 1/0 0/0 0/0 .text            setThrowDamage__9daPy_py_cFsffiii
 */
bool daPy_py_c::setThrowDamage(s16 param_0, f32 param_1, f32 param_2, int param_3, int param_4,
                               int param_5) {
    return false;
}

/* 80141744-8014174C 13C084 0008+00 1/0 0/0 0/0 .text            checkSetNpcTks__9daPy_py_cFP4cXyzii
 */
bool daPy_py_c::checkSetNpcTks(cXyz* param_0, int param_1, int param_2) {
    return false;
}

/* 8014174C-80141754 13C08C 0008+00 1/0 0/0 0/0 .text            setRollJump__9daPy_py_cFffs */
int daPy_py_c::setRollJump(f32 param_0, f32 param_1, s16 param_2) {
    return 0;
}

/* 80141754-80141758 13C094 0004+00 1/0 0/0 0/0 .text playerStartCollisionSE__9daPy_py_cFUlUl */
void daPy_py_c::playerStartCollisionSE(u32 param_0, u32 param_1) {
    /* empty function */
}

/* 80141758-8014175C 13C098 0004+00 2/0 0/0 0/0 .text changeTextureAnime__9daPy_py_cFUsUsi */
void daPy_py_c::changeTextureAnime(u16 param_0, u16 param_1, int param_2) {
    /* empty function */
}

/* 8014175C-80141760 13C09C 0004+00 2/0 0/0 0/0 .text cancelChangeTextureAnime__9daPy_py_cFv */
void daPy_py_c::cancelChangeTextureAnime() {
    /* empty function */
}

/* 80141760-80141764 13C0A0 0004+00 1/0 0/0 0/0 .text cancelDungeonWarpReadyNeck__9daPy_py_cFv */
void daPy_py_c::cancelDungeonWarpReadyNeck() {
    /* empty function */
}

/* 80141764-80141768 13C0A4 0004+00 1/0 0/0 0/0 .text
 * onSceneChangeArea__9daPy_py_cFUcUcP10fopAc_ac_c              */
void daPy_py_c::onSceneChangeArea(u8 param_0, u8 param_1, fopAc_ac_c* param_2) {
    /* empty function */
}

/* 80141768-8014176C 13C0A8 0004+00 1/0 0/0 0/0 .text
 * onSceneChangeAreaJump__9daPy_py_cFUcUcP10fopAc_ac_c          */
void daPy_py_c::onSceneChangeAreaJump(u8 param_0, u8 param_1, fopAc_ac_c* param_2) {
    /* empty function */
}

/* 8014176C-80141770 13C0AC 0004+00 1/0 0/0 0/0 .text            onSceneChangeDead__9daPy_py_cFUci
 */
void daPy_py_c::onSceneChangeDead(u8 param_0, int param_1) {
    /* empty function */
}

/* 80141770-80141778 13C0B0 0008+00 1/0 0/0 0/0 .text            getSpinnerActor__9daPy_py_cFv */
fopAc_ac_c* daPy_py_c::getSpinnerActor() {
    return NULL;
}

/* 80141778-80141780 13C0B8 0008+00 1/0 0/0 0/0 .text checkHorseRideNotReady__9daPy_py_cCFv */
BOOL daPy_py_c::checkHorseRideNotReady() const {
    return false;
}

/* 80141780-80141788 13C0C0 0008+00 1/0 0/0 0/0 .text            checkArrowChargeEnd__9daPy_py_cCFv
 */
bool daPy_py_c::checkArrowChargeEnd() const {
    return false;
}

/* 80141788-80141790 13C0C8 0008+00 1/0 0/0 0/0 .text            getSearchBallScale__9daPy_py_cCFv
 */
f32 daPy_py_c::getSearchBallScale() const {
    return FLOAT_LABEL(lit_6108);
}

/* 80141790-80141798 13C0D0 0008+00 1/0 0/0 0/0 .text            checkFastShotTime__9daPy_py_cFv */
s16 daPy_py_c::checkFastShotTime() {
    return 0;
}

/* 80141798-801417A0 13C0D8 0008+00 1/0 0/0 0/0 .text            checkNoEquipItem__9daPy_py_cCFv */
bool daPy_py_c::checkNoEquipItem() const {
    return true;
}

/* 801417A0-801417A8 13C0E0 0008+00 2/0 0/0 0/0 .text            checkFireMaterial__9daPy_py_cCFv */
bool daPy_py_c::checkFireMaterial() const {
    return false;
}

/* 801417A8-801417B0 13C0E8 0008+00 1/0 0/0 0/0 .text            checkKandelaarSwing__9daPy_py_cCFi
 */
bool daPy_py_c::checkKandelaarSwing(int param_0) const {
    return false;
}

/* 801417B0-801417B8 13C0F0 0008+00 1/0 0/0 0/0 .text getBoardCutTurnOffsetAngleY__9daPy_py_cCFv
 */
s16 daPy_py_c::getBoardCutTurnOffsetAngleY() const {
    return 0;
}

/* 801417B8-801417C0 13C0F8 0008+00 2/0 0/0 0/0 .text            getMagneHitPos__9daPy_py_cFv */
cXyz* daPy_py_c::getMagneHitPos() {
    return &mSwordTopPos;
}

/* 801417C0-801417C8 13C100 0008+00 1/0 0/0 0/0 .text            getMagneBootsTopVec__9daPy_py_cFv
 */
cXyz* daPy_py_c::getMagneBootsTopVec() {
    return &current.pos;
}

/* 801417C8-801417D0 13C108 0008+00 1/0 0/0 0/0 .text            checkUseKandelaar__9daPy_py_cFi */
bool daPy_py_c::checkUseKandelaar(int param_0) {
    return false;
}

/* 801417D0-801417D4 13C110 0004+00 1/0 0/0 0/0 .text setDkCaught__9daPy_py_cFP10fopAc_ac_c */
void daPy_py_c::setDkCaught(fopAc_ac_c* param_0) {
    /* empty function */
}

/* 801417D4-801417D8 13C114 0004+00 1/0 0/0 0/0 .text onPressedDamage__9daPy_py_cFRC4cXyzs */
void daPy_py_c::onPressedDamage(cXyz const& param_0, s16 param_1) {
    /* empty function */
}

/* 801417D8-801417E0 13C118 0008+00 1/0 0/0 0/0 .text checkPriActorOwn__9daPy_py_cCFPC10fopAc_ac_c
 */
bool daPy_py_c::checkPriActorOwn(fopAc_ac_c const* param_0) const {
    return false;
}

/* 801417E0-801417E8 13C120 0008+00 1/0 0/0 0/0 .text
 * onWolfEnemyBiteAll__9daPy_py_cFP10fopAc_ac_cQ29daPy_py_c9daPy_FLG2 */
bool daPy_py_c::onWolfEnemyBiteAll(fopAc_ac_c* param_0, daPy_py_c::daPy_FLG2 param_1) {
    return false;
}

/* 801417E8-801417F0 13C128 0008+00 1/0 0/0 0/0 .text
 * checkWolfEnemyBiteAllOwn__9daPy_py_cCFPC10fopAc_ac_c         */
bool daPy_py_c::checkWolfEnemyBiteAllOwn(fopAc_ac_c const* param_0) const {
    return false;
}

/* 801417F0-801417F4 13C130 0004+00 1/0 0/0 0/0 .text setWolfEnemyHangBiteAngle__9daPy_py_cFs */
void daPy_py_c::setWolfEnemyHangBiteAngle(s16 param_0) {
    /* empty function */
}

/* 801417F4-801417F8 13C134 0004+00 1/0 0/0 0/0 .text            setKandelaarMtx__9daPy_py_cFPA4_fii
 */
void daPy_py_c::setKandelaarMtx(f32 (*param_0)[4], int param_1, int param_2) {
    /* empty function */
}

/* 801417F8-80141800 13C138 0008+00 1/0 0/0 0/0 .text getStickAngleFromPlayerShape__9daPy_py_cCFPs
 */
bool daPy_py_c::getStickAngleFromPlayerShape(s16* param_0) const {
    return false;
}

/* 80141800-80141808 13C140 0008+00 1/0 0/0 0/0 .text            checkSpinnerPathMove__9daPy_py_cFv
 */
bool daPy_py_c::checkSpinnerPathMove() {
    return false;
}

/* 80141808-80141810 13C148 0008+00 1/0 0/0 0/0 .text checkSpinnerTriggerAttack__9daPy_py_cFv */
bool daPy_py_c::checkSpinnerTriggerAttack() {
    return false;
}

/* 80141810-80141814 13C150 0004+00 1/0 0/0 0/0 .text onSpinnerPathForceRemove__9daPy_py_cFv */
void daPy_py_c::onSpinnerPathForceRemove() {
    /* empty function */
}

/* 80141814-8014181C 13C154 0008+00 1/0 0/0 0/0 .text            getIronBallBgHit__9daPy_py_cCFv */
s16 daPy_py_c::getIronBallBgHit() const {
    return 0;
}

/* 8014181C-80141824 13C15C 0008+00 1/0 0/0 0/0 .text            getIronBallCenterPos__9daPy_py_cFv
 */
cXyz* daPy_py_c::getIronBallCenterPos() {
    return NULL;
}

/* 80141824-8014182C 13C164 0008+00 1/0 0/0 0/0 .text checkCanoeFishingGetLeft__9daPy_py_cCFv */
bool daPy_py_c::checkCanoeFishingGetLeft() const {
    return false;
}

/* 8014182C-80141834 13C16C 0008+00 1/0 0/0 0/0 .text checkCanoeFishingGetRight__9daPy_py_cCFv */
bool daPy_py_c::checkCanoeFishingGetRight() const {
    return false;
}

/* 80141834-8014183C 13C174 0008+00 1/0 0/0 0/0 .text            checkBeeChildDrink__9daPy_py_cCFv
 */
u8 daPy_py_c::checkBeeChildDrink() const {
    return false;
}

/* 8014183C-80141840 13C17C 0004+00 1/0 0/0 0/0 .text            skipPortalObjWarp__9daPy_py_cFv */
void daPy_py_c::skipPortalObjWarp() {
    /* empty function */
}

/* 80141840-80141848 13C180 0008+00 1/0 0/0 0/0 .text checkTreasureRupeeReturn__9daPy_py_cCFi */
bool daPy_py_c::checkTreasureRupeeReturn(int param_0) const {
    return false;
}

/* 80141848-8014184C 13C188 0004+00 1/0 0/0 0/0 .text setSumouReady__9daPy_py_cFP10fopAc_ac_c */
void daPy_py_c::setSumouReady(fopAc_ac_c* param_0) {
    /* empty function */
}

/* 8014184C-80141854 13C18C 0008+00 1/0 0/0 0/0 .text checkAcceptDungeonWarpAlink__9daPy_py_cFi */
bool daPy_py_c::checkAcceptDungeonWarpAlink(int param_0) {
    return false;
}

/* 80141854-8014185C 13C194 0008+00 1/0 0/0 0/0 .text            getSumouCounter__9daPy_py_cCFv */
s16 daPy_py_c::getSumouCounter() const {
    return 0;
}

/* 8014185C-80141864 13C19C 0008+00 1/0 0/0 0/0 .text            checkSumouWithstand__9daPy_py_cCFv
 */
s16 daPy_py_c::checkSumouWithstand() const {
    return 0;
}

/* 80141864-80141868 13C1A4 0004+00 1/0 0/0 0/0 .text            cancelGoronThrowEvent__9daPy_py_cFv
 */
void daPy_py_c::cancelGoronThrowEvent() {
    /* empty function */
}

/* 80141868-8014186C 13C1A8 0004+00 1/0 0/0 0/0 .text setSumouGraspCancelCount__9daPy_py_cFi */
void daPy_py_c::setSumouGraspCancelCount(int param_0) {
    /* empty function */
}

/* 8014186C-80141870 13C1AC 0004+00 1/0 0/0 0/0 .text setSumouPushBackDirection__9daPy_py_cFs */
void daPy_py_c::setSumouPushBackDirection(s16 param_0) {
    /* empty function */
}

/* 80141870-80141874 13C1B0 0004+00 1/0 0/0 0/0 .text            setSumouLoseHeadUp__9daPy_py_cFv */
void daPy_py_c::setSumouLoseHeadUp() {
    /* empty function */
}

/* 80141874-8014187C 13C1B4 0008+00 1/0 0/0 0/0 .text getGiantPuzzleAimAngle__9daPy_py_cCFv */
s16 daPy_py_c::getGiantPuzzleAimAngle() const {
    return shape_angle.y;
}

/* 8014187C-80141880 13C1BC 0004+00 1/0 0/0 0/0 .text setGoronSideMove__9daPy_py_cFP10fopAc_ac_c
 */
void daPy_py_c::setGoronSideMove(fopAc_ac_c* param_0) {
    /* empty function */
}

/* 80141880-80141884 13C1C0 0004+00 1/0 0/0 0/0 .text setCargoCarry__9daPy_py_cFP10fopAc_ac_c */
void daPy_py_c::setCargoCarry(fopAc_ac_c* param_0) {
    /* empty function */
}

/* 80141884-8014188C 13C1C4 0008+00 2/0 0/0 0/0 .text            getDpdFarFlg__9daPy_py_cCFv */
bool daPy_py_c::getDpdFarFlg() const {
    return false;
}

/* 8014188C-80141894 13C1CC 0008+00 1/0 0/0 0/0 .text            getHookshotTopPos__9daPy_py_cFv */
cXyz* daPy_py_c::getHookshotTopPos() {
    return NULL;
}

/* 80141894-8014189C 13C1D4 0008+00 1/0 0/0 0/0 .text checkHookshotReturnMode__9daPy_py_cCFv */
bool daPy_py_c::checkHookshotReturnMode() const {
    return false;
}

/* 8014189C-801418A4 13C1DC 0008+00 1/0 0/0 0/0 .text checkHookshotShootReturnMode__9daPy_py_cCFv
 */
bool daPy_py_c::checkHookshotShootReturnMode() const {
    return false;
}

/* 801418A4-801418AC 13C1E4 0008+00 1/0 0/0 0/0 .text            checkOctaIealHang__9daPy_py_cCFv */
bool daPy_py_c::checkOctaIealHang() const {
    return false;
}

/* 801418AC-801418B0 13C1EC 0004+00 1/0 0/0 0/0 .text            cancelOctaIealHang__9daPy_py_cFv */
void daPy_py_c::cancelOctaIealHang() {
    /* empty function */
}

/* 801418B0-801418B4 13C1F0 0004+00 1/0 0/0 0/0 .text cancelDragonHangBackJump__9daPy_py_cFv */
void daPy_py_c::cancelDragonHangBackJump() {
    /* empty function */
}

/* 801418B4-801418B8 13C1F4 0004+00 1/0 0/0 0/0 .text            setOctaIealWildHang__9daPy_py_cFv
 */
void daPy_py_c::setOctaIealWildHang() {
    /* empty function */
}

/* 801418B8-801418C0 13C1F8 0008+00 1/0 0/0 0/0 .text            checkDragonHangRide__9daPy_py_cCFv
 */
bool daPy_py_c::checkDragonHangRide() const {
    return false;
}

/* 801418C0-801418C4 13C200 0004+00 1/0 0/0 0/0 .text changeDragonActor__9daPy_py_cFP10fopAc_ac_c
 */
void daPy_py_c::changeDragonActor(fopAc_ac_c* param_0) {
    /* empty function */
}

/* 801418C4-801418CC 13C204 0008+00 1/0 0/0 0/0 .text getClothesChangeWaitTimer__9daPy_py_cCFv */
u8 daPy_py_c::getClothesChangeWaitTimer() const {
    return 0;
}

/* 801418CC-801418D4 13C20C 0008+00 1/0 0/0 0/0 .text getShieldChangeWaitTimer__9daPy_py_cCFv */
u8 daPy_py_c::getShieldChangeWaitTimer() const {
    return 0;
}

/* 801418D4-801418DC 13C214 0008+00 1/0 0/0 0/0 .text getSwordChangeWaitTimer__9daPy_py_cCFv */
u8 daPy_py_c::getSwordChangeWaitTimer() const {
    return 0;
}

/* 801418DC-801418E4 13C21C 0008+00 1/0 0/0 0/0 .text            checkMetamorphose__9daPy_py_cCFv */
BOOL daPy_py_c::checkMetamorphose() const {
    return false;
}

/* 801418E4-801418EC 13C224 0008+00 1/0 0/0 0/0 .text checkWolfDownAttackPullOut__9daPy_py_cCFv */
BOOL daPy_py_c::checkWolfDownAttackPullOut() const {
    return false;
}

/* 801418EC-801418F4 13C22C 0008+00 1/0 0/0 0/0 .text checkBootsOrArmorHeavy__9daPy_py_cCFv */
BOOL daPy_py_c::checkBootsOrArmorHeavy() const {
    return false;
}

/* 801418F4-801418FC 13C234 0008+00 1/0 0/0 0/0 .text getBottleOpenAppearItem__9daPy_py_cCFv */
s32 daPy_py_c::getBottleOpenAppearItem() const {
    return -1;
}

/* 801418FC-80141904 13C23C 0008+00 1/0 0/0 0/0 .text            checkItemSwordEquip__9daPy_py_cCFv
 */
bool daPy_py_c::checkItemSwordEquip() const {
    return false;
}

/* 80141904-8014190C 13C244 0008+00 1/0 0/0 0/0 .text            getSinkShapeOffset__9daPy_py_cCFv
 */
f32 daPy_py_c::getSinkShapeOffset() const {
    return FLOAT_LABEL(lit_6108);
}

/* 8014190C-80141914 13C24C 0008+00 1/0 0/0 0/0 .text            checkSinkDead__9daPy_py_cCFv */
BOOL daPy_py_c::checkSinkDead() const {
    return false;
}

/* 80141914-8014191C 13C254 0008+00 1/0 0/0 0/0 .text            checkHorseStart__9daPy_py_cFv */
BOOL daPy_py_c::checkHorseStart() {
    return false;
}

/* 8014191C-80141924 13C25C 0008+00 1/0 0/0 0/0 .text            getWolfHowlMgrP__9daPy_py_cFv */
Z2WolfHowlMgr* daPy_py_c::getWolfHowlMgrP() {
    return NULL;
}

/* 80141924-8014192C 13C264 0008+00 1/0 0/0 0/0 .text checkWolfHowlSuccessAnime__9daPy_py_cCFv */
BOOL daPy_py_c::checkWolfHowlSuccessAnime() const {
    return false;
}

/* 8014192C-80141934 13C26C 0008+00 1/0 0/0 0/0 .text            checkCopyRodTopUse__9daPy_py_cFv */
BOOL daPy_py_c::checkCopyRodTopUse() {
    return false;
}

/* 80141934-8014193C 13C274 0008+00 1/0 0/0 0/0 .text            checkCopyRodEquip__9daPy_py_cCFv */
bool daPy_py_c::checkCopyRodEquip() const {
    return false;
}

/* 8014193C-80141944 13C27C 0008+00 1/0 0/0 0/0 .text            checkCutJumpMode__9daPy_py_cCFv */
BOOL daPy_py_c::checkCutJumpMode() const {
    return false;
}

/* 80141944-8014194C 13C284 0008+00 1/1 0/0 0/0 .text            getZeldaActor__9daHorse_cFv */
fopAc_ac_c* daHorse_c::getZeldaActor() {
    return mZeldaActorKeep.getActor();
}

/* 8014194C-8014195C 13C28C 0010+00 1/1 0/0 0/0 .text            dComIfGp_getDoStatus__Fv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm u8 dComIfGp_getDoStatus() {
    nofralloc
#include "asm/d/a/d_a_alink/dComIfGp_getDoStatus__Fv.s"
}
#pragma pop

/* 8014195C-8014196C 13C29C 0010+00 1/1 5/5 0/0 .text            __ct__4cXyzFfff */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void __ct__4cXyzFfff(f32 param_0, f32 param_1, f32 param_2) {
    nofralloc
#include "asm/d/a/d_a_alink/__ct__4cXyzFfff.s"
}
#pragma pop

/* 8014196C-80141988 13C2AC 001C+00 1/1 0/0 0/0 .text            dMeter2Info_offUseButton__Fi */
static void dMeter2Info_offUseButton(int pButton) {
    g_meter2_info.offUseButton(pButton);
}

/* 80141988-80141990 -00001 0008+00 0/0 0/0 0/0 .text            setLinkState__14Z2CreatureLinkFUc
 */
void Z2CreatureLink::setLinkState(u8 pState) {
    mLinkState = pState;
}

/* 80141990-801419A0 13C2D0 0010+00 1/1 0/0 0/0 .text            dComIfGs_getRupee__Fv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm u16 dComIfGs_getRupee() {
    nofralloc
#include "asm/d/a/d_a_alink/dComIfGs_getRupee__Fv.s"
}
#pragma pop

/* 801419A0-801419B8 13C2E0 0018+00 1/1 0/0 0/0 .text            dComIfGp_setItemRupeeCount__Fl */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dComIfGp_setItemRupeeCount(s32 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/dComIfGp_setItemRupeeCount__Fl.s"
}
#pragma pop

/* 801419B8-801419F4 13C2F8 003C+00 1/1 0/0 0/0 .text dMeter2Info_setFloatingMessage__FUssb */
static void dMeter2Info_setFloatingMessage(u16 pMessageID, s16 pMessageTimer, bool pWakuVisible) {
    g_meter2_info.setFloatingMessage(pMessageID, pMessageTimer, pWakuVisible);
}

/* 801419F4-80141A04 13C334 0010+00 1/1 0/0 0/0 .text            onForcePanic__9daMidna_cFv */
void daMidna_c::onForcePanic() {
    onEndResetStateFlg0(ERFLG0_FORCE_PANIC);
}

/* 80141A04-80141A10 13C344 000C+00 1/1 0/0 0/0 .text checkForceNormalColor__9daMidna_cCFv */
u32 daMidna_c::checkForceNormalColor() const {
    return checkStateFlg1(FLG1_FORCE_NORMAL_COL);
}

/* 80141A10-80141A1C 13C350 000C+00 1/1 0/0 0/0 .text            checkForceTiredColor__9daMidna_cCFv
 */
u32 daMidna_c::checkForceTiredColor() const {
    return checkStateFlg1(FLG1_FORCE_TIRED_COL);
}

/* 80141A1C-80141A84 13C35C 0068+00 1/1 0/0 0/0 .text            checkMidnaTired__9daMidna_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daMidna_c::checkMidnaTired() {
    nofralloc
#include "asm/d/a/d_a_alink/checkMidnaTired__9daMidna_cFv.s"
}
#pragma pop

/* 80141A84-80141A94 13C3C4 0010+00 1/1 0/0 0/0 .text            onNoServiceWait__9daMidna_cFv */
void daMidna_c::onNoServiceWait() {
    onEndResetStateFlg0(ERFLG0_NO_SERVICE_WAIT);
}

/* 80141A94-80141ACC 13C3D4 0038+00 1/1 0/0 0/0 .text            setControllActorData__8daCrod_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daCrod_c::setControllActorData() {
    nofralloc
#include "asm/d/a/d_a_alink/setControllActorData__8daCrod_cFv.s"
}
#pragma pop

/* 80141ACC-80141AE8 13C40C 001C+00 1/1 0/0 0/0 .text
 * PrmAbstract<Q312daObjMovebox5Act_c5Prm_e>__5daObjFPC10fopAc_ac_cQ312daObjMovebox5Act_c5Prm_eQ312daObjMovebox5Act_c5Prm_e
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void func_80141ACC(void* _this, fopAc_ac_c const* param_0,
                                  daObjMovebox::Act_c::Prm_e param_1,
                                  daObjMovebox::Act_c::Prm_e param_2) {
    nofralloc
#include "asm/d/a/d_a_alink/func_80141ACC.s"
}
#pragma pop

/* 80141AE8-80141B04 13C428 001C+00 1/1 4/4 0/0 .text            cLib_calcTimer<Uc>__FPUc */
extern "C" int func_80141AE8(u8* pTimer) {
    if (*pTimer != 0) {
        *pTimer -= 1;
    }
    return *pTimer;
}

/* ############################################################################################## */
/* 80453344-80453348 001944 0004+00 1/1 0/0 0/0 .sdata2          @77808 */
SECTION_SDATA2 static f32 lit_77808 = 1.2427899837493896f;

/* 80453348-8045334C 001948 0004+00 1/1 0/0 0/0 .sdata2          @77809 */
SECTION_SDATA2 static f32 lit_77809 = 102.00054168701172f;

/* 8045334C-80453350 00194C 0004+00 1/1 0/0 0/0 .sdata2          @77810 */
SECTION_SDATA2 static f32 lit_77810 = -4.248938083648682f;

/* 80453350-80453354 001950 0004+00 1/1 0/0 0/0 .sdata2          @77811 */
SECTION_SDATA2 static f32 lit_77811 = 89.0f;

/* 80453354-80453358 001954 0004+00 1/1 0/0 0/0 .sdata2          @77812 */
SECTION_SDATA2 static f32 lit_77812 = -5.267045021057129f;

/* 80453358-8045335C 001958 0004+00 1/1 0/0 0/0 .sdata2          @77813 */
SECTION_SDATA2 static f32 lit_77813 = 4.313951015472412f;

/* 8045335C-80453360 00195C 0004+00 1/1 0/0 0/0 .sdata2          @77814 */
SECTION_SDATA2 static f32 lit_77814 = 93.9443588256836f;

/* 80453360-80453364 001960 0004+00 1/1 0/0 0/0 .sdata2          @77815 */
SECTION_SDATA2 static f32 lit_77815 = -5.207283020019531f;

/* 80453364-80453368 001964 0004+00 1/1 0/0 0/0 .sdata2          @77816 */
SECTION_SDATA2 static f32 lit_77816 = -4.30098819732666f;

/* 80453368-8045336C 001968 0004+00 1/1 0/0 0/0 .sdata2          @77817 */
SECTION_SDATA2 static f32 lit_77817 = 93.95594787597656f;

/* 8045336C-80453370 00196C 0004+00 1/1 0/0 0/0 .sdata2          @77818 */
SECTION_SDATA2 static f32 lit_77818 = -5.218503952026367f;

/* 80453370-80453374 001970 0004+00 1/1 0/0 0/0 .sdata2          @77819 */
SECTION_SDATA2 static f32 lit_77819 = 225.6999969482422f;

/* 80453374-80453378 001974 0004+00 1/1 0/0 0/0 .sdata2          @77820 */
SECTION_SDATA2 static f32 lit_77820 = 1.809999942779541f;

/* 80453378-8045337C 001978 0004+00 1/1 0/0 0/0 .sdata2          @77821 */
SECTION_SDATA2 static f32 lit_77821 = 186.1699981689453f;

/* 8045337C-80453380 00197C 0004+00 1/1 0/0 0/0 .sdata2          @77822 */
SECTION_SDATA2 static f32 lit_77822 = -20.290000915527344f;

/* 80453380-80453384 001980 0004+00 1/1 0/0 0/0 .sdata2          @77823 */
SECTION_SDATA2 static f32 lit_77823 = -68.208984375f;

/* 80453384-80453388 001984 0004+00 1/1 0/0 0/0 .sdata2          @77824 */
SECTION_SDATA2 static f32 lit_77824 = 41.60992431640625f;

/* 80453388-8045338C 001988 0004+00 1/1 0/0 0/0 .sdata2          @77825 */
SECTION_SDATA2 static f32 lit_77825 = 0.8837890028953552f;

/* 8045338C-80453390 00198C 0004+00 1/1 0/0 0/0 .sdata2          @77826 */
SECTION_SDATA2 static f32 lit_77826 = -72.0f;

/* 80453390-80453394 001990 0004+00 1/1 0/0 0/0 .sdata2          @77827 */
SECTION_SDATA2 static f32 lit_77827 = 88.63934326171875f;

/* 80453394-80453398 001994 0004+00 1/1 0/0 0/0 .sdata2          @77828 */
SECTION_SDATA2 static f32 lit_77828 = -28.49793243408203f;

/* 80453398-8045339C 001998 0004+00 1/1 0/0 0/0 .sdata2          @77829 */
SECTION_SDATA2 static f32 lit_77829 = 0.11516399681568146f;

/* 8045339C-804533A0 00199C 0004+00 1/1 0/0 0/0 .sdata2          @77830 */
SECTION_SDATA2 static f32 lit_77830 = 68.33629608154297f;

/* 804533A0-804533A8 0019A0 0004+04 1/1 0/0 0/0 .sdata2          @77831 */
SECTION_SDATA2 static f32 lit_77831[1 + 1 /* padding */] = {
    -7.667817115783691f,
    /* padding */
    0.0f,
};

/* 80141B04-801446D4 13C444 2BD0+00 0/0 1/0 0/0 .text            __sinit_d_a_alink_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_a_alink_cpp(){nofralloc
#include "asm/d/a/d_a_alink/__sinit_d_a_alink_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80141B04, __sinit_d_a_alink_cpp);
#pragma pop

/* 801446D4-801446DC 13F014 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_801446D4() {
    nofralloc
#include "asm/d/a/d_a_alink/func_801446D4.s"
}
#pragma pop

/* 801446DC-801446E4 13F01C 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_801446DC() {
    nofralloc
#include "asm/d/a/d_a_alink/func_801446DC.s"
}
#pragma pop

/* 801446E4-801446EC 13F024 0008+00 1/0 0/0 0/0 .text            @36@__dt__13dBgS_LinkAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_801446E4() {
    nofralloc
#include "asm/d/a/d_a_alink/func_801446E4.s"
}
#pragma pop

/* 801446EC-801446F4 13F02C 0008+00 1/0 0/0 0/0 .text            @20@__dt__13dBgS_LinkAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_801446EC() {
    nofralloc
#include "asm/d/a/d_a_alink/func_801446EC.s"
}
#pragma pop

/* 801446F4-801446FC 13F034 0008+00 1/0 0/0 0/0 .text            @20@__dt__15dBgS_LinkGndChkFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_801446F4() {
    nofralloc
#include "asm/d/a/d_a_alink/func_801446F4.s"
}
#pragma pop

/* 801446FC-80144704 13F03C 0008+00 1/0 0/0 0/0 .text            @76@__dt__15dBgS_LinkGndChkFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_801446FC() {
    nofralloc
#include "asm/d/a/d_a_alink/func_801446FC.s"
}
#pragma pop

/* 80144704-8014470C 13F044 0008+00 1/0 0/0 0/0 .text            @60@__dt__15dBgS_LinkGndChkFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80144704() {
    nofralloc
#include "asm/d/a/d_a_alink/func_80144704.s"
}
#pragma pop

/* 8014470C-80144714 13F04C 0008+00 1/0 0/0 0/0 .text            @16@__dt__16dBgS_LinkRoofChkFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_8014470C() {
    nofralloc
#include "asm/d/a/d_a_alink/func_8014470C.s"
}
#pragma pop

/* 80144714-8014471C 13F054 0008+00 1/0 0/0 0/0 .text            @52@__dt__16dBgS_LinkRoofChkFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80144714() {
    nofralloc
#include "asm/d/a/d_a_alink/func_80144714.s"
}
#pragma pop

/* 8014471C-80144724 13F05C 0008+00 1/0 0/0 0/0 .text            @36@__dt__16dBgS_LinkRoofChkFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_8014471C() {
    nofralloc
#include "asm/d/a/d_a_alink/func_8014471C.s"
}
#pragma pop

/* 80392094-80392094 01E6F4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
