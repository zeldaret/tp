#include "d/d_a/d_a_alink/d_a_alink.h"
#include "SComponent/c_bg_w.h"
#include "SComponent/c_lib.h"
#include "SComponent/c_phase.h"
#include "Z2AudioLib/Z2Creature/Z2Creature.h"
#include "Z2AudioLib/Z2LinkMgr/Z2LinkMgr.h"
#include "Z2AudioLib/Z2SeMgr/Z2SeMgr.h"
#include "Z2AudioLib/Z2SeqMgr/Z2SeqMgr.h"
#include "Z2AudioLib/Z2SoundObject/Z2SoundObject.h"
#include "d/d_bg/d_bg_s/d_bg_s_poly_pass_chk.h"
#include "d/d_kankyo/d_kankyo.h"
#include "f/f_op/f_op_actor_iter.h"
#include "f/f_op/f_op_actor_mng.h"
#include "f/f_op/f_op_overlap_mng.h"
#include "f/f_pc/f_pc_manager.h"
#include "f/f_pc/f_pc_searcher.h"
#include "m_Do/m_Do_audio/m_Do_audio.h"
#include "m_Do/m_Do_controller_pad/m_Do_controller_pad.h"

extern "C" {
BOOL checkMagicArmorHeavy__9daAlink_cCFv(void);
bool dComIfGp_checkMapShow__Fv(void);
BOOL dComIfGp_isLightDropMapVisible__Fv(void);
char* strcpy(char*, const char*);
const char* dComIfGs_getWarpStageName__Fv(void);
int abs(int);
int checkItemGet__FUci(u8, int);
int checkMagicArmorWearAbility__9daAlink_cCFv(void);
int dComIfGs_getWarpRoomNo__Fv(void);
int strcmp(const char*, const char*);
s16 dComIfGs_getWarpPlayerAngleY__Fv(void);
u16 dComIfGs_getLife__Fv(void);
u16 dComIfGs_getMaxLifeGauge__Fv(void);
u16 dComIfGs_getRupee__Fv(void);
u32 dEv_noFinishSkipProc__FPvi(void);
u32 strlen(const char*);
u8 dComIfGp_getDoStatus__Fv(void);
u8 dComIfGp_getRStatus__Fv(void);
u8 dComIfGs_getBottleMax__Fv(void);
void __ct__13cBgS_PolyInfoFv(void);
void __ct__13Z2WolfHowlMgrFv(void);
void __ct__14Z2CreatureLinkFv(void);
void __ct__16daPy_actorKeep_cFv(void);
void __ct__8cM3dGCpsFv(void);
void __ct__8cM3dGPlaFPC4cXyzf(void);
void __ct__9J2DScreenFv(void);
void __dl__FPv(void);
void __dt__13cBgS_PolyInfoFv(void);
void __dt__14Z2CreatureLinkFv(void);
void __dt__8cM3dGCpsFv(void);
void __dv__4cXyzCFf(void);
void __nw__FUl(void);
void __nwa__FUl(void);
void __nwa__FUli(void);
void __pl__4cXyzCFRC3Vec(void);
void ChkPolySafe__4cBgSFRC13cBgS_PolyInfo(void);
void GetActorPointer__4cBgSCFi(void);
void GetBgWBasePointer__4cBgSCFRC13cBgS_PolyInfo(void);
void GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla(void);
void GetTriPnt__4cBgSCFRC13cBgS_PolyInfoP4cXyzP4cXyzP4cXyz(void);
void GroundCross__4cBgSFP11cBgS_GndChk(void);
void LineCross__4cBgSFP11cBgS_LinChk(void);
void checkBottle__17dSv_player_item_cFUc(void);
void checkDownDamage__10e_wb_classFv(void);
void checkForceNormalColor__9daMidna_cCFv(void);
void checkForceTiredColor__9daMidna_cCFv(void);
void checkNormalRideMode__10e_wb_classCFv(void);
void checkStageName__9daAlink_cFPCc(void);
void checkWait__10e_wb_classFv(void);
void ClearPi__13cBgS_PolyInfoFv(void);
void cLib_addCalc__FPfffff(void);
void cLib_addCalcPos__FP4cXyzRC4cXyzfff(void);
void cLib_calcTimer(void);
void cLib_chaseAngleS__FPsss(void);
void cLib_chaseF__FPfff(void);
void cLib_chasePos__FP4cXyzRC4cXyzf(void);
void cLib_chaseS__FPsss(void);
void cLib_chaseUC__FPUcUcUc(void);
void cLib_memCpy__FPvPCvUl(void);
void ClrCcMove__9cCcD_SttsFv(void);
void cM_atan2f__Fff(void);
void cM_rad2s__Ff(void);
void cM_rndFX__Ff(void);
void cM3d_3PlaneCrossPos__FRC8cM3dGPlaRC8cM3dGPlaRC8cM3dGPlaP3Vec(void);
void cM3d_Len2dSqPntAndSegLine__FffffffPfPfPf(void);
void cM3d_SignedLenPlaAndPos__FPC8cM3dGPlaPC3Vec(void);
void __ct__8cM3dGPlaFv(void);
void __dt__8cM3dGPlaFv(void);
void cMtx_multVec__FPA4_CfPC3VecP3Vec(void);
void create__10JKRExpHeapFUlP7JKRHeapb(void);
void crossInfLin__8cM3dGPlaCFRC4cXyzRC4cXyzR4cXyz(void);
void __ct__5csXyzFv(void);
void __dt__5csXyzFv(void);
void __as__4cXyzFRC4cXyz(void);
void abs__4cXyzCFv(void);
void __ct__4cXyzFv(void);
void __dt__4cXyzFv(void);
void __ct__4cXyzFRC4cXyz(void);
void __ct__4cXyzFfff(void);
void d_GameOver_Create__FUc(void);
void copyBlur__14daAlink_blur_cFPC4cXyzPC4cXyzPC4cXyz(void);
void initBlur__14daAlink_blur_cFfiPC4cXyzPC4cXyzPC4cXyz(void);
void traceBlur__14daAlink_blur_cFPC4cXyzPC4cXyzs(void);
void acceptSubjectModeChange__9daAlink_cFv(void);
void allAnimePlay__9daAlink_cFv(void);
void boarForceGetOff__9daAlink_cFv(void);
void cancelHookshotCarry__9daAlink_cFv(void);
void cancelHookshotMove__9daAlink_cFv(void);
void cancelHookshotShot__9daAlink_cFv(void);
void cancelItemUseQuake__9daAlink_cFi(void);
void cancelMagneBootsOn__9daAlink_cFv(void);
void cancelSumouMode__9daAlink_cFv(void);
void changeCutFast__9daAlink_cFv(void);
void changeHookshotDrawModel__9daAlink_cFv(void);
void changeItemTriggerKeepProc__9daAlink_cFUci(void);
void changeLink__9daAlink_cFi(void);
void changeModelDataDirect__9daAlink_cFi(void);
void changeModelDataDirectWolf__9daAlink_cFi(void);
void changeWolf__9daAlink_cFv(void);
void checkAcceptUseItemInWater__9daAlink_cCFUs(void);
void checkAcceptWarp__9daAlink_cFv(void);
void checkAttentionLock__9daAlink_cFv(void);
void checkBgClimbMove__9daAlink_cFi(void);
void checkBoardRestart__9daAlink_cFv(void);
void checkBoardSwordTriggerAction__9daAlink_cFv(void);
void checkBoomerangAnime__9daAlink_cCFv(void);
void checkBoomerangCatchAction__9daAlink_cFv(void);
void checkBoomerangThrowAnime__9daAlink_cCFv(void);
void checkBootsMoveAnime__9daAlink_cFi(void);
void checkBossBabaRoom__9daAlink_cFv(void);
void checkBossOctaIealRoom__9daAlink_cFv(void);
void checkBossRoom__9daAlink_cFv(void);
void checkBowAndSlingItem__9daAlink_cFi(void);
void checkBowGrabLeftHand__9daAlink_cCFv(void);
void checkCanoeJumpRide__9daAlink_cFv(void);
void checkCastleTownUseItem__9daAlink_cFUs(void);
void checkCaughtEscapeCutTurn__9daAlink_cFv(void);
void checkChainEmphasys__9daAlink_cFv(void);
void checkClimbCode__9daAlink_cFR13cBgS_PolyInfo(void);
void checkClimbGround__9daAlink_cFP4cXyzf(void);
void checkClimbMoveSideProc__9daAlink_cFi(void);
void checkClimbMoveUpDownProc__9daAlink_cFi(void);
void checkClimbRoof__9daAlink_cFf(void);
void checkCloudSea__9daAlink_cFv(void);
void checkComboCnt__9daAlink_cFv(void);
void checkComboReserb__9daAlink_cFv(void);
void checkCopyRodAnime__9daAlink_cCFv(void);
void checkCrawlSideWall__9daAlink_cFP4cXyzP4cXyzP4cXyzP4cXyzPsPs(void);
void checkCutAction__9daAlink_cFv(void);
void checkCutBackState__9daAlink_cFv(void);
void checkCutDashAnime__9daAlink_cCFv(void);
void checkCutDashEnemyHit__9daAlink_cFR12dCcD_GObjInf(void);
void checkCutFastReady__9daAlink_cFv(void);
void checkCutFinishJumpUp__9daAlink_cFv(void);
void checkCutHeadState__9daAlink_cFv(void);
void checkCutLandDamage__9daAlink_cFv(void);
void checkCutTurnInput__9daAlink_cCFv(void);
void checkCutTurnInputTrigger__9daAlink_cFv(void);
void checkCutTypeNoBlur__9daAlink_cCFv(void);
void checkDamageAction__9daAlink_cFv(void);
void checkDeadAction__9daAlink_cFi(void);
void checkDeadHP__9daAlink_cFv(void);
void checkDemoAction__9daAlink_cFv(void);
void checkDoCutAction__9daAlink_cFv(void);
void checkDownAttackState__9daAlink_cFv(void);
void checkDungeon__9daAlink_cFv(void);
void checkEndMessage__9daAlink_cFUl(void);
void checkEquipAnime__9daAlink_cCFv(void);
void checkFastUnequip__9daAlink_cFv(void);
void checkFinalBattle__9daAlink_cFv(void);
void checkFishingRodAndLureItem__9daAlink_cCFv(void);
void checkFlyAtnWait__9daAlink_cFv(void);
void checkFmChainGrabAnime__9daAlink_cCFv(void);
void checkForceSwordSwing__9daAlink_cFv(void);
void checkGoatCatchActor__9daAlink_cFP10fopAc_ac_c(void);
void checkGrabAnime__9daAlink_cCFv(void);
void checkGrabAnimeAndThrow__9daAlink_cCFv(void);
void checkGrabCarryActor__9daAlink_cFv(void);
void checkGrabLineCheck__9daAlink_cFv(void);
void checkGrabRooster__9daAlink_cFv(void);
void checkGrabSlowMoveActor__9daAlink_cFv(void);
void checkGrabTalkActor__9daAlink_cFP10fopAc_ac_c(void);
void checkGuardAccept__9daAlink_cFv(void);
void checkGuardActionChange__9daAlink_cFv(void);
void checkHeavyStateOn__9daAlink_cFii(void);
void checkHookshotReadyMaterialOffMode__9daAlink_cCFv(void);
void checkHookshotRoofLv7Boss__9daAlink_cFv(void);
void checkHookshotWait__9daAlink_cCFv(void);
void checkHorseNotDamageReaction__9daAlink_cCFv(void);
void checkHorseNotGrab__9daAlink_cCFv(void);
void checkHorseNoUpperAnime__9daAlink_cCFv(void);
void checkInsectActorName__9daAlink_cFP10fopAc_ac_c(void);
void checkIronBallAnime__9daAlink_cCFv(void);
void checkIronBallDelete__9daAlink_cFv(void);
void checkItemSetButton__9daAlink_cFi(void);
void checkKandelaarEquipAnime__9daAlink_cCFv(void);
void checkLetterItem__9daAlink_cFi(void);
void checkLightSwordMtrl__9daAlink_cFv(void);
void checkLv4BossRoom__9daAlink_cFv(void);
void checkLv7BossRoom__9daAlink_cFv(void);
void checkLv7DungeonShop__9daAlink_cFv(void);
void checkMagicArmorNoDamage__9daAlink_cFv(void);
void checkMagneBootsFly__9daAlink_cFv(void);
void checkMidnaLockJumpPoint__9daAlink_cCFv(void);
void checkModeFlg__9daAlink_cCFUl(void);
void checkNewItemChange__9daAlink_cFUc(void);
void checkNextAction__9daAlink_cFi(void);
void checkNextActionBoomerang__9daAlink_cFv(void);
void checkNextActionBow__9daAlink_cFv(void);
void checkNextActionCopyRod__9daAlink_cFv(void);
void checkNextActionGrab__9daAlink_cFv(void);
void checkNextActionHookshot__9daAlink_cFv(void);
void checkNextActionIronBall__9daAlink_cFv(void);
void checkNextActionWolf__9daAlink_cFi(void);
void checkNextActionWolfFromLie__9daAlink_cFv(void);
void checkNoCollisionCorret__9daAlink_cFv(void);
void checkNoLandDamageSlidePolygon__9daAlink_cFv(void);
void checkNotAutoJumpStage__9daAlink_cFv(void);
void checkNotBattleStage__9daAlink_cFv(void);
void checkNotHeavyBootsStage__9daAlink_cFv(void);
void checkOctaIealSpecialCollect__9daAlink_cFv(void);
void checkOilBottleItemNotGet__9daAlink_cFUs(void);
void checkOxygenTimer__9daAlink_cFv(void);
void checkPlayerGuardAndAttack__9daAlink_cCFv(void);
void checkPossibleWaterInMode__9daAlink_cCFv(void);
void checkReinRide__9daAlink_cCFv(void);
void checkReinRideBgCheck__9daAlink_cFv(void);
void checkRestartDead__9daAlink_cFii(void);
void checkRestHPAnime__9daAlink_cFv(void);
void checkRideOn__9daAlink_cCFv(void);
void checkRoomOnly__9daAlink_cFv(void);
void checkSetChainPullAnime__9daAlink_cFs(void);
void checkShieldAttackEmphasys__9daAlink_cFv(void);
void checkSideRollAction__9daAlink_cFi(void);
void checkSlope__9daAlink_cCFv(void);
void checkSmallUpperGuardAnime__9daAlink_cCFv(void);
void checkSnowCode__9daAlink_cCFv(void);
void checkSpecialDemoMode__9daAlink_cCFv(void);
void checkSpecialNpc__9daAlink_cFP10fopAc_ac_c(void);
void checkSubjectAction__9daAlink_cFv(void);
void checkSwimAction__9daAlink_cFi(void);
void checkSwimButtonAccept__9daAlink_cFv(void);
void checkSwimButtonMove__9daAlink_cFv(void);
void checkSwimNeckUpDown__9daAlink_cCFv(void);
void checkSwimOutAction__9daAlink_cFv(void);
void checkSwordEquipAnime__9daAlink_cCFv(void);
void checkSwordTwirlAnime__9daAlink_cCFv(void);
void checkUnderMove1BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM(void);
void checkUpperGuardAnime__9daAlink_cCFv(void);
void checkUpperItemActionBoomerang__9daAlink_cFv(void);
void checkUpperItemActionBoomerangFly__9daAlink_cFv(void);
void checkUpperItemActionBow__9daAlink_cFv(void);
void checkUpperItemActionBowFly__9daAlink_cFv(void);
void checkUpperItemActionCopyRod__9daAlink_cFv(void);
void checkUpperItemActionCopyRodFly__9daAlink_cFv(void);
void checkUpperItemActionHookshot__9daAlink_cFv(void);
void checkUpperItemActionIronBall__9daAlink_cFv(void);
void checkWaitAction__9daAlink_cFv(void);
void checkWarpStart__9daAlink_cFv(void);
void checkWaterInKandelaar__9daAlink_cFf(void);
void checkWaterInKandelaarOffset__9daAlink_cFf(void);
void checkWindDashAnime__9daAlink_cCFv(void);
void checkWolfAtnMoveBack__9daAlink_cFs(void);
void checkWolfAttackAction__9daAlink_cFv(void);
void checkWolfBarrierHitReverse__9daAlink_cFv(void);
void checkWolfBarrierWallHit__9daAlink_cFR13cBgS_PolyInfo(void);
void checkWolfComboCnt__9daAlink_cFv(void);
void checkWolfEnemyThrowAction__9daAlink_cFv(void);
void checkWolfEnemyThrowAnime__9daAlink_cCFv(void);
void checkWolfGroundSpecialMode__9daAlink_cFv(void);
void checkWolfLieCode__9daAlink_cFv(void);
void checkWolfLieContinue__9daAlink_cFi(void);
void checkWolfLockData__9daAlink_cFv(void);
void checkWolfRopeHit__9daAlink_cCFP12dCcD_GObjInfPC4cXyzi(void);
void checkWolfRopeJumpHang__9daAlink_cFv(void);
void checkWolfShapeReverse__9daAlink_cCFv(void);
void checkWolfSideStep__9daAlink_cCFv(void);
void checkWolfUseAbility__9daAlink_cFv(void);
void checkWolfWaitSlipPolygon__9daAlink_cFv(void);
void checkZeroSpeedF__9daAlink_cCFv(void);
void checkZoraSwimMove__9daAlink_cFv(void);
void checkZoraWearMaskDraw__9daAlink_cFv(void);
void clearCutTurnEffectID__9daAlink_cFv(void);
void clearWoodShieldBurnEffect__9daAlink_cFv(void);
void commonBottleDrink__9daAlink_cFi(void);
void commonFallInit__9daAlink_cFi(void);
void commonGrabPutInit__9daAlink_cFv(void);
void commonKandelaarPour__9daAlink_cFi(void);
void commonKandelaarPourInit__9daAlink_cFv(void);
void commonLargeDamageUpInit__9daAlink_cFiiss(void);
void commonMagneLineCheck__9daAlink_cFP4cXyzP4cXyz(void);
void damageTimerCount__9daAlink_cFv(void);
void deleteArrow__9daAlink_cFv(void);
void deleteEquipItem__9daAlink_cFii(void);
void dungeonReturnWarp__9daAlink_cFv(void);
void endDemoMode__9daAlink_cFv(void);
void endHighModel__9daAlink_cFv(void);
void __dt__Q29daAlink_c14firePointEff_cFv(void);
void __ct__Q29daAlink_c14firePointEff_cFv(void);
void freeGrabItem__9daAlink_cFv(void);
void getBoomerangActor__9daAlink_cFv(void);
void getCanoeLocalPaddleTop__9daAlink_cFv(void);
void getCanoeMaxSpeed__9daAlink_cCFv(void);
void getCanoePaddleMatrix__9daAlink_cFv(void);
void getChainStickAngleY__9daAlink_cCFs(void);
void getClimbMoveSideAnmSpeed__9daAlink_cFv(void);
void getCopyRodBallDisMax__9daAlink_cCFv(void);
void getCutDirection__9daAlink_cFv(void);
void getCutTurnDirection__9daAlink_cCFv(void);
void getGoatCatchDistance2__9daAlink_cFv(void);
void getGrabThrowRate__9daAlink_cFv(void);
void getGroundAngle__9daAlink_cFP13cBgS_PolyInfos(void);
void getLadderUnitCount__9daAlink_cCFv(void);
void getMagneBootsLocalAngleY__9daAlink_cFsi(void);
void getSceneExitMoveAngle__9daAlink_cFv(void);
void getSwimMaxFallSpeed__9daAlink_cCFv(void);
void getSwordAtType__9daAlink_cFv(void);
void getUnderUpperAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMPP15J3DAnmTransformPP15J3DAnmTransformiUl(
    void);
void getWallGrabStatus__9daAlink_cFv(void);
void getZoraSwim__9daAlink_cCFv(void);
void grabLineCheck__9daAlink_cFP4cXyzP4cXyz(void);
void hangMoveBgCheck__9daAlink_cFsP4cXyz(void);
void horseGetOffEnd__9daAlink_cFv(void);
void initBasAnime__9daAlink_cFv(void);
void initFirePointDamageEffect__9daAlink_cFPC4cXyzP12dCcD_GObjInf(void);
void initFirePointDamageEffectAll__9daAlink_cFv(void);
void initFishingRodHand__9daAlink_cFv(void);
void initForceRideBoar__9daAlink_cFv(void);
void initForceRideHorse__9daAlink_cFv(void);
void initHookshotUpperAnimeSpeed__9daAlink_cFi(void);
void itemUnequip__9daAlink_cFUsf(void);
void loadAramBmd__9daAlink_cFUsUl(void);
void loadModelDVD__9daAlink_cFv(void);
void loadShieldModelDVD__9daAlink_cFv(void);
void makeItemType__9daAlink_cFv(void);
void modelCalc__9daAlink_cFP8J3DModel(void);
void offGoatStopGame__9daAlink_cFv(void);
void offKandelaarModel__9daAlink_cFv(void);
void offOxygenTimer__9daAlink_cFv(void);
void offSwordModel__9daAlink_cFv(void);
void offWolfEyeUp__9daAlink_cFv(void);
void orderZTalk__9daAlink_cFv(void);
void playFaceTextureAnime__9daAlink_cFv(void);
void preKandelaarDraw__9daAlink_cFv(void);
void procAtnActorMoveInit__9daAlink_cFv(void);
void procAtnActorWaitInit__9daAlink_cFv(void);
void procAtnMoveInit__9daAlink_cFv(void);
void procAutoJumpInit__9daAlink_cFi(void);
void procBackJumpInit__9daAlink_cFi(void);
void procBackJumpLandInit__9daAlink_cFi(void);
void procBoardCutInit__9daAlink_cFv(void);
void procBoardCutTurnInit__9daAlink_cFv(void);
void procBoardJumpInit__9daAlink_cFfi(void);
void procBoardRideInit__9daAlink_cFv(void);
void procBoardRowInit__9daAlink_cFv(void);
void procBoardSubjectivityInit__9daAlink_cFv(void);
void procBoardTurnInit__9daAlink_cFv(void);
void procBoardWaitInit__9daAlink_cFP10fopAc_ac_c(void);
void procBoarRunInit__9daAlink_cFv(void);
void procBoomerangCatchInit__9daAlink_cFv(void);
void procBoomerangMoveInit__9daAlink_cFv(void);
void procBoomerangSubjectInit__9daAlink_cFv(void);
void procBootsEquipInit__9daAlink_cFv(void);
void procBottleDrinkInit__9daAlink_cFUs(void);
void procBottleGetInit__9daAlink_cFi(void);
void procBottleOpenInit__9daAlink_cFUs(void);
void procBottleSwingInit__9daAlink_cFP10fopAc_ac_ci(void);
void procBowMoveInit__9daAlink_cFv(void);
void procBowSubjectInit__9daAlink_cFv(void);
void procCanoeBoomerangMoveInit__9daAlink_cFv(void);
void procCanoeBoomerangSubjectInit__9daAlink_cFv(void);
void procCanoeBottleDrinkInit__9daAlink_cFUs(void);
void procCanoeBowMoveInit__9daAlink_cFv(void);
void procCanoeBowSubjectInit__9daAlink_cFv(void);
void procCanoeFishingGetInit__9daAlink_cFv(void);
void procCanoeFishingReelInit__9daAlink_cFv(void);
void procCanoeFishingWaitInit__9daAlink_cFv(void);
void procCanoeGrabMoveInit__9daAlink_cFv(void);
void procCanoeJumpRideInit__9daAlink_cFP10fopAc_ac_c(void);
void procCanoeKandelaarPourInit__9daAlink_cFv(void);
void procCanoePaddleGrabInit__9daAlink_cFv(void);
void procCanoePaddlePutInit__9daAlink_cFi(void);
void procCanoePaddleShiftInit__9daAlink_cFi(void);
void procCanoeRideInit__9daAlink_cFv(void);
void procCanoeRodGrabInit__9daAlink_cFv(void);
void procCanoeRowInit__9daAlink_cFi(void);
void procCanoeSubjectivityInit__9daAlink_cFv(void);
void procCanoeWaitInit__9daAlink_cFi(void);
void procClimbDownStartInit__9daAlink_cFs(void);
void procClimbMoveSideInit__9daAlink_cFv(void);
void procClimbMoveUpDownInit__9daAlink_cFi(void);
void procClimbToRoofInit__9daAlink_cFv(void);
void procClimbUpStartInit__9daAlink_cFi(void);
void procClimbWaitInit__9daAlink_cFii(void);
void procCoDeadInit__9daAlink_cFi(void);
void procCoElecDamageInit__9daAlink_cFP10fopAc_ac_cP12dCcD_GObjInfi(void);
void procCoGetItemInit__9daAlink_cFv(void);
void procCoGetReadySitInit__9daAlink_cFv(void);
void procCoHorseCallWaitInit__9daAlink_cFi(void);
void procCoLargeDamageInit__9daAlink_cFiissP12dCcD_GObjInfi(void);
void procCoLargeDamageWallInit__9daAlink_cFiiss(void);
void procCoLavaReturnInit__9daAlink_cFi(void);
void procCoLookWaitInit__9daAlink_cFv(void);
void procCoMetamorphoseInit__9daAlink_cFv(void);
void procCoPeepSubjectivityInit__9daAlink_cFv(void);
void procCoPolyDamageInit__9daAlink_cFv(void);
void procCoPushMoveInit__9daAlink_cFii(void);
void procCoPushPullWaitInit__9daAlink_cFi(void);
void procCopyRodMoveInit__9daAlink_cFv(void);
void procCopyRodSubjectInit__9daAlink_cFv(void);
void procCopyRodSwingInit__9daAlink_cFv(void);
void procCoSandWallHitInit__9daAlink_cFv(void);
void procCoSubjectivityInit__9daAlink_cFv(void);
void procCoSwimFreezeReturnInit__9daAlink_cFv(void);
void procCoSwimSubjectivityInit__9daAlink_cFv(void);
void procCoTalkInit__9daAlink_cFv(void);
void procCoToolDemoInit__9daAlink_cFv(void);
void procCoWarpInit__9daAlink_cFii(void);
void procCrawlAutoMoveInit__9daAlink_cFiP4cXyz(void);
void procCrawlEndInit__9daAlink_cFiss(void);
void procCrawlMoveInit__9daAlink_cFss(void);
void procCrawlStartInit__9daAlink_cFv(void);
void procCutDownInit__9daAlink_cFv(void);
void procCutDownLandInit__9daAlink_cFP13fopEn_enemy_c(void);
void procCutFinishInit__9daAlink_cFi(void);
void procCutFinishJumpUpInit__9daAlink_cFv(void);
void procCutFinishJumpUpLandInit__9daAlink_cFv(void);
void procCutHeadInit__9daAlink_cFv(void);
void procCutHeadLandInit__9daAlink_cFv(void);
void procCutJumpInit__9daAlink_cFi(void);
void procCutJumpLandInit__9daAlink_cFi(void);
void procCutLargeJumpChargeInit__9daAlink_cFv(void);
void procCutLargeJumpInit__9daAlink_cFv(void);
void procCutLargeJumpLandInit__9daAlink_cFi(void);
void procCutNormalInit__9daAlink_cFi(void);
void procCutReverseInit__9daAlink_cFQ29daAlink_c11daAlink_ANM(void);
void procCutTurnChargeInit__9daAlink_cFv(void);
void procCutTurnInit__9daAlink_cFii(void);
void procCutTurnMoveInit__9daAlink_cFi(void);
void procDamageInit__9daAlink_cFP12dCcD_GObjInfi(void);
void procDiveJumpInit__9daAlink_cFv(void);
void procDkCaughtInit__9daAlink_cFUi(void);
void procDungeonWarpReadyInit__9daAlink_cFv(void);
void procDungeonWarpSceneStartInit__9daAlink_cFv(void);
void procFallInit__9daAlink_cFif(void);
void procFishingCastInit__9daAlink_cFv(void);
void procFishingFoodInit__9daAlink_cFv(void);
void procFloorDownReboundInit__9daAlink_cFv(void);
void procFmChainStrongPullInit__9daAlink_cFv(void);
void procFmChainUpInit__9daAlink_cFv(void);
void procFrontRollCrashInit__9daAlink_cFv(void);
void procFrontRollInit__9daAlink_cFv(void);
void procFrontRollSuccessInit__9daAlink_cFv(void);
void procGoatCatchInit__9daAlink_cFP10fopAc_ac_cf(void);
void procGoatMoveInit__9daAlink_cFv(void);
void procGoatStrokeInit__9daAlink_cFv(void);
void procGoronMoveInit__9daAlink_cFv(void);
void procGoronRideWaitInit__9daAlink_cFP10fopAc_ac_c(void);
void procGrabPutInit__9daAlink_cFv(void);
void procGrabReadyInit__9daAlink_cFv(void);
void procGrabReboundInit__9daAlink_cFi(void);
void procGrabStandInit__9daAlink_cFv(void);
void procGrabThrowInit__9daAlink_cFi(void);
void procGrabUpInit__9daAlink_cFv(void);
void procGrabWaitInit__9daAlink_cFv(void);
void procGrassWhistleGetInit__9daAlink_cFv(void);
void procGrassWhistleWaitInit__9daAlink_cFiiisP4cXyz(void);
void procGuardAttackInit__9daAlink_cFv(void);
void procGuardBreakInit__9daAlink_cFv(void);
void procGuardSlipInit__9daAlink_cFiP12dCcD_GObjInf(void);
void procHangClimbInit__9daAlink_cFf(void);
void procHangFallStartInit__9daAlink_cFP8cM3dGPla(void);
void procHangLeverDownInit__9daAlink_cFv(void);
void procHangMoveInit__9daAlink_cFi(void);
void procHangReadyInit__9daAlink_cFv(void);
void procHangStartInit__9daAlink_cFv(void);
void procHangUpInit__9daAlink_cFi(void);
void procHangWaitInit__9daAlink_cFv(void);
void procHangWallCatchInit__9daAlink_cFv(void);
void procHawkSubjectInit__9daAlink_cFv(void);
void procHookshotFly__9daAlink_cFv(void);
void procHookshotFlyInit__9daAlink_cFv(void);
void procHookshotMoveInit__9daAlink_cFv(void);
void procHookshotRoofBootsInit__9daAlink_cFP10fopAc_ac_c(void);
void procHookshotRoofShootInit__9daAlink_cFP10fopAc_ac_c(void);
void procHookshotRoofWaitInit__9daAlink_cFiP10fopAc_ac_ci(void);
void procHookshotSubjectInit__9daAlink_cFv(void);
void procHookshotWallShootInit__9daAlink_cFv(void);
void procHookshotWallWaitInit__9daAlink_cFisi(void);
void procHorseBoomerangMoveInit__9daAlink_cFv(void);
void procHorseBoomerangSubjectInit__9daAlink_cFv(void);
void procHorseBottleDrinkInit__9daAlink_cFUs(void);
void procHorseBowMoveInit__9daAlink_cFv(void);
void procHorseBowSubjectInit__9daAlink_cFv(void);
void procHorseComebackInit__9daAlink_cFv(void);
void procHorseCutChargeReadyInit__9daAlink_cFv(void);
void procHorseCutInit__9daAlink_cFv(void);
void procHorseCutTurnInit__9daAlink_cFv(void);
void procHorseDamageInit__9daAlink_cFP12dCcD_GObjInf(void);
void procHorseGetOffInit__9daAlink_cFi(void);
void procHorseGrabMoveInit__9daAlink_cFv(void);
void procHorseHangInit__9daAlink_cFP12dCcD_GObjInfi(void);
void procHorseJumpInit__9daAlink_cFv(void);
void procHorseKandelaarPourInit__9daAlink_cFv(void);
void procHorseLandInit__9daAlink_cFv(void);
void procHorseRideInit__9daAlink_cFv(void);
void procHorseRunInit__9daAlink_cFv(void);
void procHorseSubjectivityInit__9daAlink_cFv(void);
void procHorseTurnInit__9daAlink_cFv(void);
void procHorseWaitInit__9daAlink_cFv(void);
void procInsectCatchInit__9daAlink_cFv(void);
void procIronBallMoveInit__9daAlink_cFv(void);
void procIronBallReturnInit__9daAlink_cFv(void);
void procIronBallSubjectInit__9daAlink_cFv(void);
void procIronBallThrowInit__9daAlink_cFv(void);
void procKandelaarPourInit__9daAlink_cFv(void);
void procKandelaarSwingInit__9daAlink_cFv(void);
void procLadderDownEndInit__9daAlink_cFi(void);
void procLadderDownStartInit__9daAlink_cFv(void);
void procLadderMoveInit__9daAlink_cFiiP4cXyz(void);
void procLadderUpEndInit__9daAlink_cFi(void);
void procLadderUpStartInit__9daAlink_cFv(void);
void procLandDamageInit__9daAlink_cFi(void);
void procLandInit__9daAlink_cFf(void);
void procLargeDamageUpInit__9daAlink_cFiiss(void);
void procMagneBootsFlyInit__9daAlink_cFv(void);
void procMoveInit__9daAlink_cFv(void);
void procMoveTurnInit__9daAlink_cFi(void);
void procNotUseItemInit__9daAlink_cFi(void);
void procOctaIealSpitInit__9daAlink_cFv(void);
void procPickPutInit__9daAlink_cFi(void);
void procPickUpInit__9daAlink_cFv(void);
void procPullMoveInit__9daAlink_cFi(void);
void procRollJumpInit__9daAlink_cFv(void);
void procRoofHangFrontMoveInit__9daAlink_cFv(void);
void procRoofHangSideMoveInit__9daAlink_cFv(void);
void procRoofHangStartInit__9daAlink_cFRC13cBgS_PolyInfoRC4cXyzi(void);
void procRoofHangTurnInit__9daAlink_cFv(void);
void procRoofHangWaitInit__9daAlink_cFi(void);
void procRoofSwitchHangInit__9daAlink_cFP10fopAc_ac_c(void);
void procScreamWaitInit__9daAlink_cFv(void);
void procSideRollInit__9daAlink_cFi(void);
void procSideStepInit__9daAlink_cFi(void);
void procSideStepLandInit__9daAlink_cFv(void);
void procSlideInit__9daAlink_cFs(void);
void procSlideLandInit__9daAlink_cFi(void);
void procSlipInit__9daAlink_cFv(void);
void procSmallJumpInit__9daAlink_cFi(void);
void procSpinnerReadyInit__9daAlink_cFv(void);
void procSpinnerWaitInit__9daAlink_cFv(void);
void procStepMoveInit__9daAlink_cFv(void);
void procStEscapeInit__9daAlink_cFv(void);
void procSumouActionInit__9daAlink_cFiii(void);
void procSumouReadyInit__9daAlink_cFv(void);
void procSumouSideMoveInit__9daAlink_cFv(void);
void procSumouStaggerInit__9daAlink_cFv(void);
void procSumouWinLoseInit__9daAlink_cFv(void);
void procSwimDamageInit__9daAlink_cFP12dCcD_GObjInf(void);
void procSwimDiveInit__9daAlink_cFv(void);
void procSwimMoveInit__9daAlink_cFv(void);
void procSwimUpInit__9daAlink_cFv(void);
void procSwimWaitInit__9daAlink_cFi(void);
void procSwordUnequipSpInit__9daAlink_cFv(void);
void procTiredWaitInit__9daAlink_cFv(void);
void procTurnMoveInit__9daAlink_cFi(void);
void procWaitInit__9daAlink_cFv(void);
void procWaitTurnInit__9daAlink_cFv(void);
void procWolfAtnActorMoveInit__9daAlink_cFv(void);
void procWolfAttackReverseInit__9daAlink_cFv(void);
void procWolfAutoJumpInit__9daAlink_cFi(void);
void procWolfBackJumpInit__9daAlink_cFi(void);
void procWolfBackJumpLandInit__9daAlink_cFss(void);
void procWolfCargoCarryInit__9daAlink_cFv(void);
void procWolfChainReadyInit__9daAlink_cFv(void);
void procWolfChainUpInit__9daAlink_cFv(void);
void procWolfChainWaitInit__9daAlink_cFv(void);
void procWolfDamageInit__9daAlink_cFP12dCcD_GObjInf(void);
void procWolfDashInit__9daAlink_cFv(void);
void procWolfDashReverseInit__9daAlink_cFi(void);
void procWolfDigInit__9daAlink_cFv(void);
void procWolfDigThroughInit__9daAlink_cFi(void);
void procWolfDownAtLandInit__9daAlink_cFP13fopEn_enemy_c(void);
void procWolfDownAtMissLandInit__9daAlink_cFv(void);
void procWolfDownAttackInit__9daAlink_cFv(void);
void procWolfEnemyHangBiteInit__9daAlink_cFv(void);
void procWolfEnemyThrowInit__9daAlink_cFi(void);
void procWolfFallInit__9daAlink_cFif(void);
void procWolfGanonCatchInit__9daAlink_cFv(void);
void procWolfGetSmellInit__9daAlink_cFv(void);
void procWolfGiantPuzzleInit__9daAlink_cFv(void);
void procWolfGrabPutInit__9daAlink_cFv(void);
void procWolfGrabThrowInit__9daAlink_cFv(void);
void procWolfGrabUpInit__9daAlink_cFv(void);
void procWolfHangFallStartInit__9daAlink_cFP8cM3dGPla(void);
void procWolfHangReadyInit__9daAlink_cFv(void);
void procWolfHangWallCatchInit__9daAlink_cFi(void);
void procWolfHowlDemoInit__9daAlink_cFv(void);
void procWolfHowlInit__9daAlink_cFi(void);
void procWolfJumpAttackInit__9daAlink_cFi(void);
void procWolfJumpAttackNormalLandInit__9daAlink_cFi(void);
void procWolfJumpAttackSlideLandInit__9daAlink_cFiii(void);
void procWolfLandDamageInit__9daAlink_cFi(void);
void procWolfLandInit__9daAlink_cFv(void);
void procWolfLargeDamageUpInit__9daAlink_cFiiss(void);
void procWolfLieAutoMoveInit__9daAlink_cFiP4cXyz(void);
void procWolfLieMoveInit__9daAlink_cFi(void);
void procWolfLieStartInit__9daAlink_cFi(void);
void procWolfLockAttackInit__9daAlink_cFi(void);
void procWolfLockAttackTurnInit__9daAlink_cFi(void);
void procWolfMidnaRideShockInit__9daAlink_cFv(void);
void procWolfMoveInit__9daAlink_cFv(void);
void procWolfPushInit__9daAlink_cFv(void);
void procWolfRollAttackChargeInit__9daAlink_cFv(void);
void procWolfRollAttackInit__9daAlink_cFii(void);
void procWolfRollAttackMoveInit__9daAlink_cFv(void);
void procWolfRopeHangInit__9daAlink_cFi(void);
void procWolfRopeMoveInit__9daAlink_cFii(void);
void procWolfRopeStaggerInit__9daAlink_cFi(void);
void procWolfRopeSubjectivityInit__9daAlink_cFv(void);
void procWolfRopeTurnInit__9daAlink_cFv(void);
void procWolfScreamWaitInit__9daAlink_cFv(void);
void procWolfServiceWaitInit__9daAlink_cFi(void);
void procWolfSideStepInit__9daAlink_cFi(void);
void procWolfSideStepLandInit__9daAlink_cFs(void);
void procWolfSitInit__9daAlink_cFi(void);
void procWolfSlideInit__9daAlink_cFsi(void);
void procWolfSlideLandInit__9daAlink_cFv(void);
void procWolfSlipInit__9daAlink_cFv(void);
void procWolfSlipTurnInit__9daAlink_cFi(void);
void procWolfSlipTurnLandInit__9daAlink_cFv(void);
void procWolfSlopeStartInit__9daAlink_cFi(void);
void procWolfStepMoveInit__9daAlink_cFv(void);
void procWolfSwimEndWaitInit__9daAlink_cFi(void);
void procWolfSwimMoveInit__9daAlink_cFv(void);
void procWolfSwimUpInit__9daAlink_cFv(void);
void procWolfSwimWaitInit__9daAlink_cFi(void);
void procWolfTagJumpInit__9daAlink_cFP10fopAc_ac_c(void);
void procWolfTagJumpLandInit__9daAlink_cFP10fopAc_ac_c(void);
void procWolfTiredWaitInit__9daAlink_cFv(void);
void procWolfWaitAttackInit__9daAlink_cFi(void);
void procWolfWaitInit__9daAlink_cFv(void);
void procWolfWaitSlipInit__9daAlink_cFv(void);
void procWolfWaitTurnInit__9daAlink_cFv(void);
void resetBasAnime__9daAlink_cFv(void);
void resetDemoBck__9daAlink_cFv(void);
void resetFacePriAnime__9daAlink_cFv(void);
void resetFairyEffect__9daAlink_cFv(void);
void resetOilBottleModel__9daAlink_cFv(void);
void resetSpecialEvent__9daAlink_cFv(void);
void resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf(void);
void resetWolfBallGrab__9daAlink_cFv(void);
void resetWolfEnemyBiteAll__9daAlink_cFv(void);
void rideGetOff__9daAlink_cFv(void);
void searchFmChainPos__9daAlink_cFv(void);
void seStartMapInfo__9daAlink_cFUl(void);
void seStartSwordCut__9daAlink_cFUl(void);
void set3DStatus__9daAlink_cFUcUc(void);
void setArcName__9daAlink_cFi(void);
void setAttentionPos__9daAlink_cFv(void);
void setBasAnime__9daAlink_cFQ29daAlink_c13daAlink_UNDER(void);
void setBaseBoarAnime__9daAlink_cFv(void);
void setBaseHorseAnimeFrame__9daAlink_cFv(void);
void setBlendAtnBackMoveAnime__9daAlink_cFf(void);
void setBlendWolfAtnBackMoveAnime__9daAlink_cFf(void);
void setBlendWolfMoveAnime__9daAlink_cFf(void);
void setBodyAngleRideReadyAnime__9daAlink_cFv(void);
void setBodyPartPos__9daAlink_cFv(void);
void setBootsLightEffect__9daAlink_cFv(void);
void setBottleEffect__9daAlink_cFv(void);
void setBottleModel__9daAlink_cFUs(void);
void setBowModel__9daAlink_cFv(void);
void setBowNormalAnime__9daAlink_cFv(void);
void setBowReloadAnime__9daAlink_cFv(void);
void setClimbInit__9daAlink_cFv(void);
void setClimbShapeOffset__9daAlink_cFv(void);
void setClimbStartNotGround__9daAlink_cFv(void);
void setCommonBoardAnime__9daAlink_cFi(void);
void setCopyRodControllAnime__9daAlink_cFv(void);
void setCopyRodControllUpperSpeedRate__9daAlink_cFv(void);
void setCopyRodModel__9daAlink_cFv(void);
void setCutDash__9daAlink_cFii(void);
void setCutLargeJumpLandEffect__9daAlink_cFv(void);
void setCutTurnEffect__9daAlink_cFv(void);
void setCutWaterDropEffect__9daAlink_cFv(void);
void setDamagePoint__9daAlink_cFiiii(void);
void setDemoData__9daAlink_cFv(void);
void setDoubleAnimeWolf__9daAlink_cFfffQ29daAlink_c12daAlink_WANMQ29daAlink_c12daAlink_WANMif(void);
void setEffect__9daAlink_cFv(void);
void setElecDamageEffect__9daAlink_cFv(void);
void setEmitter__9daAlink_cFPUlUsPC4cXyzPC5csXyz(void);
void setFaceBasicAnime__9daAlink_cFQ29daAlink_c11daAlink_ANM(void);
void setFirePointDamageEffect__9daAlink_cFv(void);
void setFootEffectProcType__9daAlink_cFi(void);
void setFreezeEffect__9daAlink_cFv(void);
void setGetSubBgm__9daAlink_cFi(void);
void setGrabItemActor__9daAlink_cFP10fopAc_ac_c(void);
void setGrabItemPos__9daAlink_cFv(void);
void setGrabUpperAnime__9daAlink_cFf(void);
void setGrabUpperSpeedRate__9daAlink_cFv(void);
void setGroundFishingRodActor__9daAlink_cFv(void);
void setGuardSe__9daAlink_cFP12dCcD_GObjInf(void);
void setHangWaterY__9daAlink_cFv(void);
void setHeavyBoots__9daAlink_cFi(void);
void setHookshotModel__9daAlink_cFv(void);
void setHookshotPos__9daAlink_cFv(void);
void setHookshotReadyMaterial__9daAlink_cFv(void);
void setHookshotSight__9daAlink_cFv(void);
void setHookshotTopPosFly__9daAlink_cFv(void);
void setHorseCutTurnEffect__9daAlink_cFv(void);
void setHorseStirrup__9daAlink_cFv(void);
void setHorseSwordUp__9daAlink_cFi(void);
void setHorseZeldaDamage__9daAlink_cFv(void);
void setIronBallModel__9daAlink_cFv(void);
void setIronBallPos__9daAlink_cFv(void);
void setIronBallWaitUpperAnime__9daAlink_cFi(void);
void setItemActor__9daAlink_cFv(void);
void setItemMatrix__9daAlink_cFi(void);
void setItemModel__9daAlink_cFv(void);
void setKandelaarModel__9daAlink_cFv(void);
void setLadderInit__9daAlink_cFv(void);
void setLadderPos__9daAlink_cFi(void);
void setLadderPosInit__9daAlink_cFv(void);
void setLandDamagePoint__9daAlink_cFi(void);
void setLightningSwordEffect__9daAlink_cFv(void);
void setMagneBootsEffect__9daAlink_cFv(void);
void setMagneBootsMtx__9daAlink_cFP13cBgS_PolyInfoi(void);
void setMatrix__9daAlink_cFv(void);
void setMetamorphoseEffect__9daAlink_cFv(void);
void setOriginalHeap__9daAlink_cFPP10JKRExpHeapUl(void);
void setRoomInfo__9daAlink_cFv(void);
void setRunSplash__9daAlink_cFv(void);
void setSandDownBgCheckWallH__9daAlink_cFv(void);
void setSandShapeOffset__9daAlink_cFv(void);
void setShapeAngleToTalkActor__9daAlink_cFv(void);
void setShieldArcName__9daAlink_cFv(void);
void setShieldGuard__9daAlink_cFv(void);
void setShieldModel__9daAlink_cFv(void);
void setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf(void);
void setSingleAnimeWolf__9daAlink_cFQ29daAlink_c12daAlink_WANMffsf(void);
void setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM(void);
void setSingleAnimeWolfBaseMorf__9daAlink_cFQ29daAlink_c12daAlink_WANMf(void);
void setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff(void);
void setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c(void);
void setSlingModel__9daAlink_cFv(void);
void setSmallGuard__9daAlink_cFP12dCcD_GObjInf(void);
void setSumouEffect__9daAlink_cFv(void);
void setSwimUpDownOffset__9daAlink_cFv(void);
void setSwordChargeEffect__9daAlink_cFv(void);
void setSwordCutSplash__9daAlink_cFv(void);
void setSwordHitVibration__9daAlink_cFP12dCcD_GObjInf(void);
void setSwordModel__9daAlink_cFv(void);
void setSwordUpColorEffect__9daAlink_cFv(void);
void setSwordVoiceSe__9daAlink_cFUl(void);
void setThrowBoomerangAnime__9daAlink_cFv(void);
void setTiredVoice__9daAlink_cFP16daPy_frameCtrl_c(void);
void setUpperAnime__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERffsf(void);
void setUpperAnimeBaseMorf__9daAlink_cFUsf(void);
void setUpperGuardAnime__9daAlink_cFf(void);
void setWallGrabStatus__9daAlink_cFUcUc(void);
void setWaterDropEffect__9daAlink_cFv(void);
void setWaterfallEffect__9daAlink_cFv(void);
void setWaterInAnmRate__9daAlink_cFP16daPy_frameCtrl_cf(void);
void setWaterY__9daAlink_cFv(void);
void setWolfAnmVoice__9daAlink_cFv(void);
void setWolfBarrierHitEffect__9daAlink_cFR11dBgS_LinChk(void);
void setWolfChainPos__9daAlink_cFv(void);
void setWolfDigStatus__9daAlink_cFUc(void);
void setWolfEnemyThrowUpperAnime__9daAlink_cFQ29daAlink_c12daAlink_WANMf(void);
void setWolfHeadDamage__9daAlink_cFv(void);
void setWolfItemMatrix__9daAlink_cFv(void);
void setWolfJumpAttackEffect__9daAlink_cFv(void);
void setWolfLockAttackEffect__9daAlink_cFv(void);
void setWolfRollAttackEffect__9daAlink_cFv(void);
void setWolfSenceStatus__9daAlink_cFUc(void);
void setWolfTailAngle__9daAlink_cFv(void);
void setWoodShieldBurnEffect__9daAlink_cFv(void);
void setWoodShieldBurnOutEffect__9daAlink_cFv(void);
void simpleAnmPlay__9daAlink_cFP10J3DAnmBase(void);
void stickArrowIncrement__9daAlink_cFi(void);
void stopDrawParticle__9daAlink_cFUl(void);
void subjectCancelTrigger__9daAlink_cFv(void);
void swimBgCheck__9daAlink_cFf(void);
void swimOutAfter__9daAlink_cFi(void);
void swordEquip__9daAlink_cFi(void);
void throwBoomerang__9daAlink_cFv(void);
void throwCopyRod__9daAlink_cFv(void);
void voiceStartLevel__9daAlink_cFUl(void);
void wallGrabButton__9daAlink_cFv(void);
void wallGrabTrigger__9daAlink_cFv(void);
void warpModelTexScroll__9daAlink_cFv(void);
void wolfBgCheck__9daAlink_cFv(void);
void wolfClawTrigger__9daAlink_cFv(void);
void wolfFootBgCheck__9daAlink_cFv(void);
void wolfSideBgCheck__9daAlink_cFs(void);
void __ct__9daAlink_cFv(void);
void daAlink_checkLightBallA__FP10fopAc_ac_c(void);
void daAlink_checkLightBallB__FP10fopAc_ac_c(void);
void daAlink_coHitCallback__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf(void);
void __ct__18daAlink_footData_cFv(void);
void __dt__18daAlink_footData_cFv(void);
void daAlink_headModelCallBack__FP8J3DJointi(void);
void update__20daAlink_lockCursor_cFv(void);
void offSetFlg__16daAlink_matAnm_cFv(void);
void daAlink_modelCallBack__FP8J3DJointi(void);
void daAlink_searchBoar__FP10fopAc_ac_cPv(void);
void daAlink_searchCanoe__FP10fopAc_ac_cPv(void);
void daAlink_searchCoach__FP10fopAc_ac_cPv(void);
void daAlink_searchLightBall__FP10fopAc_ac_cPv(void);
void daAlink_searchPortal__FP10fopAc_ac_cPv(void);
void daAlink_searchTagKandelaar__FP10fopAc_ac_cPv(void);
void create__15daAlink_sight_cFv(void);
void onLockFlg__15daAlink_sight_cFv(void);
void daAlink_tgHitCallback__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf(void);
void daAlink_wolfModelCallBack__FP8J3DJointi(void);
void __ct__12daAlinkHIO_cFv(void);
void setControllActorData__8daCrod_cFv(void);
void dead__12daItemBase_cFv(void);
void getItemNo__12daItemBase_cFv(void);
void hide__12daItemBase_cFv(void);
void show__12daItemBase_cFv(void);
void checkMidnaTired__9daMidna_cFv(void);
void entry__10daMirror_cFP8J3DModel(void);
void daNpcF_getPlayerInfoFromPlayerList__FiiR4cXyzR5csXyz(void);
void getActorP__18daNpcT_ActorMngr_cFv(void);
void daObj_NS_PrmAbstract(void);
void setWolfHowling__15daObj_Sekizoa_cFv(void);
void getHangPos__13daObjSwHang_cFv(void);
void clearData__16daPy_actorKeep_cFv(void);
void setActor__16daPy_actorKeep_cFv(void);
void setData__16daPy_actorKeep_cFP10fopAc_ac_c(void);
void daPy_addCalcShort__FPsssss(void);
void __defctor__14daPy_anmHeap_cFv(void);
void createHeap__14daPy_anmHeap_cFQ214daPy_anmHeap_c16daAlinkHEAP_TYPE(void);
void __ct__14daPy_anmHeap_cFUl(void);
void __dt__14daPy_anmHeap_cFv(void);
void loadDataDemoRID__14daPy_anmHeap_cFUsUs(void);
void loadDataIdx__14daPy_anmHeap_cFUs(void);
void loadDataPriIdx__14daPy_anmHeap_cFUs(void);
void mallocBuffer__14daPy_anmHeap_cFv(void);
void setAnimeHeap__14daPy_anmHeap_cFv(void);
void setSpecialDemoType__11daPy_demo_cFv(void);
void checkAnmEnd__16daPy_frameCtrl_cFv(void);
void __ct__16daPy_frameCtrl_cFv(void);
void __dt__16daPy_frameCtrl_cFv(void);
void setFrameCtrl__16daPy_frameCtrl_cFUcssff(void);
void updateFrame__16daPy_frameCtrl_cFv(void);
void checkBoarSingleBattle__9daPy_py_cCFv(void);
void checkBombItem__9daPy_py_cFi(void);
void checkBottleItem__9daPy_py_cFi(void);
void checkBowItem__9daPy_py_cFi(void);
void checkCarryStartLightBallA__9daPy_py_cFv(void);
void checkCarryStartLightBallB__9daPy_py_cFv(void);
void checkDrinkBottleItem__9daPy_py_cFi(void);
void checkDungeonWarpItem__9daPy_py_cFi(void);
void checkEndResetFlg0__9daPy_py_cCFQ29daPy_py_c11daPy_ERFLG0(void);
void checkEndResetFlg1__9daPy_py_cCFQ29daPy_py_c11daPy_ERFLG1(void);
void checkEndResetFlg2__9daPy_py_cCFQ29daPy_py_c11daPy_ERFLG2(void);
void checkEquipHeavyBoots__9daPy_py_cCFv(void);
void checkFishingRodItem__9daPy_py_cFi(void);
void checkHookshotItem__9daPy_py_cFi(void);
void checkMagneBootsOn__9daPy_py_cCFv(void);
void checkMasterSwordEquip__9daPy_py_cFv(void);
void checkMidnaRide__9daPy_py_cCFv(void);
void checkNoResetFlg0__9daPy_py_cCFQ29daPy_py_c9daPy_FLG0(void);
void checkNoResetFlg2__9daPy_py_cCFQ29daPy_py_c9daPy_FLG2(void);
void checkNoResetFlg3__9daPy_py_cCFQ29daPy_py_c9daPy_FLG3(void);
void checkOilBottleItem__9daPy_py_cFi(void);
void checkOpenBottleItem__9daPy_py_cFi(void);
void checkResetFlg0__9daPy_py_cCFQ29daPy_py_c10daPy_RFLG0(void);
void checkShieldGet__9daPy_py_cFv(void);
void checkSwordGet__9daPy_py_cFv(void);
void checkTradeItem__9daPy_py_cFi(void);
void checkWolf__9daPy_py_cCFv(void);
void checkWoodShieldEquip__9daPy_py_cFv(void);
void getSumouMode__9daPy_py_cCFv(void);
void offNoResetFlg0__9daPy_py_cFQ29daPy_py_c9daPy_FLG0(void);
void offNoResetFlg1__9daPy_py_cFQ29daPy_py_c9daPy_FLG1(void);
void offNoResetFlg2__9daPy_py_cFQ29daPy_py_c9daPy_FLG2(void);
void onNoResetFlg0__9daPy_py_cFQ29daPy_py_c9daPy_FLG0(void);
void onNoResetFlg2__9daPy_py_cFQ29daPy_py_c9daPy_FLG2(void);
void setParamData__9daPy_py_cFiiii(void);
void draw__18daPy_sightPacket_cFv(void);
void setSight__18daPy_sightPacket_cFv(void);
void setSightImage__18daPy_sightPacket_cFP7ResTIMG(void);
void checkMagnetCode__12daTagMagne_cFR13cBgS_PolyInfo(void);
void getPlayerNo__11daTagMist_cFv(void);
void convPId__11dAttCatch_cFUi(void);
void getActionBtnB__12dAttention_cFv(void);
void getActionBtnXY__12dAttention_cFv(void);
void LockonTruth__12dAttention_cFv(void);
void convPId__10dAttHint_cFUi(void);
void ChkGroundHit__9dBgS_AcchCFv(void);
void ChkRoofHit__9dBgS_AcchCFv(void);
void ClrGndThinCellingOff__9dBgS_AcchFv(void);
void ClrGroundHit__9dBgS_AcchFv(void);
void CrrPos__9dBgS_AcchFR4dBgS(void);
void __dt__9dBgS_AcchFv(void);
void OnWallSort__9dBgS_AcchFv(void);
void Set__9dBgS_AcchFP10fopAc_ac_ciP12dBgS_AcchCir(void);
void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz(void);
void SetGndThinCellingOff__9dBgS_AcchFv(void);
void __ct__9dBgS_AcchFv(void);
void __dt__12dBgS_AcchCirFv(void);
void SetWall__12dBgS_AcchCirFff(void);
void SetWallR__12dBgS_AcchCirFf(void);
void __ct__12dBgS_AcchCirFv(void);
void __dt__16dBgS_ArrowLinChkFv(void);
void __ct__16dBgS_ArrowLinChkFv(void);
void __dt__20dBgS_BoomerangLinChkFv(void);
void __ct__20dBgS_BoomerangLinChkFv(void);
void dBgS_CheckBGroundPoly__FRC13cBgS_PolyInfo(void);
void dBgS_CheckBWallPoly__FRC13cBgS_PolyInfo(void);
void dBgS_GetNY__FRC13cBgS_PolyInfo(void);
void __dt__11dBgS_GndChkFv(void);
void __ct__11dBgS_GndChkFv(void);
void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c(void);
void __dt__15dBgS_LinkLinChkFv(void);
void __ct__15dBgS_LinkLinChkFv(void);
void ChkMoveBG_NoDABg__4dBgSFRC13cBgS_PolyInfo(void);
void ChkMoveBG__4dBgSFRC13cBgS_PolyInfo(void);
void ChkPolyHSStick__4dBgSFRC13cBgS_PolyInfo(void);
void GetExitId__4dBgSFRC13cBgS_PolyInfo(void);
void GetGroundCode__4dBgSFRC13cBgS_PolyInfo(void);
void GetGrpSoundId__4dBgSFRC13cBgS_PolyInfo(void);
void GetHorseNoEntry__4dBgSFRC13cBgS_PolyInfo(void);
void GetMagnetCode__4dBgSFRC13cBgS_PolyInfo(void);
void GetMonkeyBarsCode__4dBgSFRC13cBgS_PolyInfo(void);
void GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo(void);
void GetPolyAtt1__4dBgSFRC13cBgS_PolyInfo(void);
void GetPolyAttackThrough__4dBgSFRC13cBgS_PolyInfo(void);
void GetPolyColor__4dBgSFRC13cBgS_PolyInfo(void);
void GetRoomId__4dBgSFRC13cBgS_PolyInfo(void);
void GetRoomPathId__4dBgSFRC13cBgS_PolyInfo(void);
void GetSpecialCode__4dBgSFRC13cBgS_PolyInfo(void);
void GetWallCode__4dBgSFRC13cBgS_PolyInfo(void);
void MoveBgCrrPos__4dBgSFRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyzbb(void);
void MoveBgTransPos__4dBgSFRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz(void);
void PushPullCallBack__4dBgSFRC13cBgS_PolyInfoP10fopAc_ac_csQ29dBgW_Base13PushPullLabel(void);
void RoofChk__4dBgSFP12dBgS_RoofChk(void);
void __dt__14dBgS_ObjLinChkFv(void);
void __ct__14dBgS_ObjLinChkFv(void);
void __dt__12dBgS_RoofChkFv(void);
void SetPos__12dBgS_RoofChkFRC4cXyz(void);
void __ct__12dBgS_RoofChkFv(void);
void __dt__15dBgS_RopeLinChkFv(void);
void __ct__15dBgS_RopeLinChkFv(void);
void dCam_getControledAngleY__FP12camera_class(void);
void ChangeModeOK__9dCamera_cFl(void);
void EndEventCamera__9dCamera_cFi(void);
void GetCameraTypeFromCameraName__9dCamera_cFPCc(void);
void SetTrimTypeForce__9dCamera_cFl(void);
void Start__9dCamera_cFv(void);
void StartEventCamera__9dCamera_cFiie(void);
void Stop__9dCamera_cFv(void);
void __dt__8dCcD_CpsFv(void);
void Set__8dCcD_CpsFRC11dCcD_SrcCps(void);
void __ct__8dCcD_CpsFv(void);
void __dt__8dCcD_CylFv(void);
void MoveCAt__8dCcD_CylFR4cXyz(void);
void Set__8dCcD_CylFRC11dCcD_SrcCyl(void);
void StartCAt__8dCcD_CylFR4cXyz(void);
void __ct__8dCcD_CylFv(void);
void GetAc__22dCcD_GAtTgCoCommonBaseFv(void);
void ChkAtHit__12dCcD_GObjInfFv(void);
void ChkCoHit__12dCcD_GObjInfFv(void);
void ChkTgHit__12dCcD_GObjInfFv(void);
void __ct__12dCcD_GObjInfFv(void);
void __dt__12dCcD_GObjInfFv(void);
void GetAtHitGObj__12dCcD_GObjInfFv(void);
void getHitSeID__12dCcD_GObjInfFUci(void);
void GetTgHitGObj__12dCcD_GObjInfFv(void);
void GetTgHitObjSe__12dCcD_GObjInfFv(void);
void ResetAtHit__12dCcD_GObjInfFv(void);
void ResetCoHit__12dCcD_GObjInfFv(void);
void ResetTgHit__12dCcD_GObjInfFv(void);
void Move__10dCcD_GSttsFv(void);
void __ct__10dCcD_GSttsFv(void);
void MoveCAt__8dCcD_SphFR4cXyz(void);
void Set__8dCcD_SphFRC11dCcD_SrcSph(void);
void StartCAt__8dCcD_SphFR4cXyz(void);
void Init__9dCcD_SttsFiiP10fopAc_ac_c(void);
void Set__12dCcMassS_MngFP8cCcD_ObjUc(void);
void getLayerNo__14dComIfG_play_cFi(int);
void dComIfG_resDelete__FP30request_of_phase_process_classPCc(void);
void dComIfG_resLoad__FP30request_of_phase_process_classPCcP7JKRHeap(void);
void dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj(
    void);
void dComIfGp_addSelectItemNum__Fis(void);
void dComIfGp_att_getCatghTarget__Fv(void);
void dComIfGp_checkItemGet__FUci(void);
void dComIfGp_checkPlayerStatus0__FiUl(void);
void dComIfGp_checkPlayerStatus1__FiUl(void);
void dComIfGp_event_chkEventFlag__FUs(void);
void dComIfGp_event_runCheck__Fv(void);
void dComIfGp_evmng_getMyStaffId__FPCcP10fopAc_ac_ci(void);
void dComIfGp_evmng_startCheck__FPCc(void);
void dComIfGp_getEvent__Fv(void);
void dComIfGp_getEventManager__Fv(void);
void dComIfGp_getHorseActor__Fv(void);
void dComIfGp_getPlayerCameraID__Fi(void);
void dComIfGp_getReverb__Fi(void);
void dComIfGp_getSelectItem__Fi(void);
void dComIfGp_getSelectItemNum__Fi(void);
void dComIfGp_getStage__Fv(void);
void dComIfGp_setBottleStatus__FUcUc(void);
void dComIfGp_setItemRupeeCount__Fl(long);
void dComIfGp_setNextStage__FPCcsScScfUliScsii(void);
void dComIfGp_setSelectItemNum__Fis(void);
void dComIfGp_TargetWarpPt_get__Fv(void);
void dComIfGp_TargetWarpPt_set__FUc(void);
void dComIfGp_TransportWarp_check__Fv(void);
void dComIfGs_getWarpPlayerPos__Fv(void);
bool dComIfGs_isEventBit__FUs(u16);
void dComIfGs_isOneZoneSwitch__Fii(void);
void dComIfGs_PolyDamageOff_Check__Fv(void);
void dComIfGs_setSelectEquipClothes__FUc(u8);
void dComIfGs_Wolf_Change_Check__Fv(void);
void getDemoIDData__13dDemo_actor_cFPiPiPiPUsPUc(void);
void getPrm_Morf__13dDemo_actor_cFv(void);
void setBranchId__7dDemo_cFUss(void);
void getActor__14dDemo_object_cFUc(void);
void entryZSortXluDrawList__12dDlst_list_cFP13J3DDrawBufferP9J3DPacketR4cXyz(void);
void newData__13dDlst_peekZ_cFssPUl(void);
void addReal__21dDlst_shadowControl_cFUlP8J3DModel(void);
void setStartDemo__18dEvent_exception_cFi(void);
void checkStartDemo__16dEvent_manager_cFv(void);
void cutEnd__16dEvent_manager_cFi(void);
void getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc(void);
void getGoal__16dEvent_manager_cFv(void);
void getMyNowCutName__16dEvent_manager_cFi(void);
void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci(void);
void getMySubstanceP__16dEvent_manager_cFiPCci(void);
void getRunEventName__16dEvent_manager_cFv(void);
void orderStartDemo__16dEvent_manager_cFv(void);
void setGoal__16dEvent_manager_cFP4cXyz(void);
void setObjectArchive__16dEvent_manager_cFPc(void);
void startCheckOld__16dEvent_manager_cFPCc(void);
void compulsory__14dEvt_control_cFPvPCcUs(void);
void convPId__14dEvt_control_cFUi(void);
void isOrderOK__14dEvt_control_cFv(void);
void reset__14dEvt_control_cFPv(void);
void reset__14dEvt_control_cFv(void);
void setPtD__14dEvt_control_cFPv(void);
void setPtI_Id__14dEvt_control_cFUi(void);
void setSkipProc__14dEvt_control_cFPvPFPvi_ii(void);
void checkCommandCatch__11dEvt_info_cFv(void);
void checkCommandDoor__11dEvt_info_cFv(void);
void offCondition__11dEvt_info_cFUs(void);
void onCondition__11dEvt_info_cFUs(void);
void entry__8dEyeHL_cFP12J3DModelDataPCc(void);
void remove__8dEyeHL_cFv(void);
void getHitmarkPosAndAngle__9dJntCol_cCFPC4cXyzPC5csXyzP4cXyzP5csXyzi(void);
void init__9dJntCol_cFP10fopAc_ac_cPC13dJntColData_cP8J3DModeli(void);
void __ct__9dJntCol_cFv(void);
void dKy_GxFog_tevstr_set__FP12dKy_tevstr_c(void);
void dKy_Itemgetcol_chg_on__Fv(void);
void dKy_plight_cut__FP15LIGHT_INFLUENCE(void);
void dKy_plight_set__FP15LIGHT_INFLUENCE(void);
void dKy_pol_argument_get__FPC13cBgS_PolyInfo(void);
void dKy_pol_efftype_get__FPC13cBgS_PolyInfo(void);
void dKy_pol_sound_get__FPC13cBgS_PolyInfo(void);
void dKy_setLight_again__Fv(void);
void dKy_shadow_mode_reset__FUc(void);
void dKy_shadow_mode_set__FUc(void);
void dKy_SordFlush_set__F4cXyzi(void);
void dKy_Sound_set__F4cXyziUii(void);
void dKy_TeachWind_existence_chk__Fv(void);
void dKy_withwarp_capture_check__Fv(void);
void dKy_WolfEyeLight_set__FP4cXyzfffP8_GXColorfUcUc(void);
void onDirectUseItem__13dMeter2Info_cFi(void);
void resetWarpStatus__13dMeter2Info_cFv(void);
void setFloatingMessage__13dMeter2Info_cFUssb(void);
void warpInProc__13dMeter2Info_cFv(void);
void warpOutProc__13dMeter2Info_cFv(void);
void dMeter2Info_offUseButton__Fi(void);
void dMeter2Info_setFloatingMessage__FUssb(void);
void dMeter2Info_setShield__FUcb(void);
void doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci(void);
void __dt__10dMsgFlow_cFv(void);
void init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c(void);
void __ct__10dMsgFlow_cFv(void);
void getStatus__12dMsgObject_cFv(void);
void isHowlHearingMode__12dMsgObject_cFv(void);
void onMsgSend__12dMsgObject_cFv(void);
void setSmellType__12dMsgObject_cFUc(void);
void getPolyColor__13dPa_control_cFR13cBgS_PolyInfoiP8_GXColorP8_GXColorPUcPf(void);
void forceOnEventMove__Q213dPa_control_c7level_cFUl(void);
void getEmitter__Q213dPa_control_c7level_cFUl(void);
void set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf(
    void);
void set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf(
    void);
void setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl(void);
void setPoly__13dPa_control_cFUlUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz(
    void);
void setPoly__13dPa_control_cFUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz(
    void);
void setWaterRipple__13dPa_control_cFPUlR13cBgS_PolyInfoPC4cXyzfPC12dKy_tevstr_cPC4cXyzSc(void);
void setOldPosP__22dPa_hermiteEcallBack_cFPC4cXyzPC4cXyz(void);
void dPaneClass_showNullPane__FP9J2DScreen(void);
void init__7dPaPo_cFP9dBgS_Acchff(void);
void setEffectCenter__7dPaPo_cFPC12dKy_tevstr_cPC4cXyzUlUlPC4cXyzPC5csXyzPC4cXyzScff(void);
void clearFourAllID__8dPaPoF_cFv(void);
void setEffectFour__8dPaPoF_cFPC12dKy_tevstr_cPC4cXyzUlUlPC4cXyzPC4cXyzPC4cXyzPC4cXyzPC4cXyzPC5csXyzPC4cXyzScff(
    void);
void dPath_GetRoomPath__Fii(void);
void getIDRes__14dRes_control_cFPCcUsP11dRes_info_ci(void);
void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci(void);
void getRes__14dRes_control_cFPCclP11dRes_info_ci(void);
void getResInfo__14dRes_control_cFPCcP11dRes_info_ci(void);
void loaderBasicBmd__11dRes_info_cFUlPv(void);
void offWarpMaterial__11dRes_info_cFP12J3DModelData(void);
void onWarpMaterial__11dRes_info_cFP12J3DModelData(void);
void setWarpSRT__11dRes_info_cFP12J3DModelDataRC4cXyzff(void);
void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c(void);
void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c(void);
void dStage_changeScene__FifUlScsi(void);
void dStage_changeSceneExitId__FR13cBgS_PolyInfofUlScs(void);
void dStage_restartRoom__FUlUli(void);
void dStage_RoomCheck__FP11cBgS_GndChk(void);
void dStage_stagInfo_GetSaveTbl__FP21stage_stag_info_class(void);
void StartQuake__12dVibration_cFii4cXyz(void);
void StartShock__12dVibration_cFii4cXyz(void);
void StopQuake__12dVibration_cFi(void);
void execItemGet__FUc(void);
void __ct__10fopAc_ac_cFv(void);
void __dt__10fopAc_ac_cFv(void);
void fopAc_IsActor__FPv(void);
void fopAcIt_Executor(void);
void fopAcM_cancelCarryNow(void);
void fopAcM_create_X1_(void);
void fopAcM_createChild(void);
void fopAcM_createItemForPresentDemo(void);
void fopAcM_createItemForSimpleDemo(void);
void fopAcM_delete(void);
void fopAcM_entrySolidHeap(void);
void fopAcM_fastCreate(void);
void fopAcM_gc_c_NS_gndCheck(void);
void fopAcM_getEventPartner(void);
void fopAcM_getItemEventPartner(void);
void fopAcM_GetName__FPv(void);
void fopAcM_getPolygonAngle_X1_(void);
void fopAcM_getWaterStream(void);
void fopAcM_getWaterY(void);
void fopAcM_lc_c_NS_lineCheck(void);
void fopAcM_onSwitch__FPC10fopAc_ac_ci(void);
void fopAcM_orderCatchEvent(void);
void fopAcM_orderDoorEvent(void);
void fopAcM_orderOtherEvent_X1_(void);
void fopAcM_orderOtherEvent(void);
void fopAcM_orderOtherEventId(void);
void fopAcM_orderTalkEvent(void);
void fopAcM_orderTalkItemBtnEvent(void);
void fopAcM_orderTreasureEvent(void);
void fopAcM_searchActorAngleY(void);
void fopAcM_searchActorDistanceXZ(void);
void fopAcM_searchActorDistanceXZ2(void);
void fopAcM_seenActorAngleY(void);
void fopAcM_setCarryNow(void);
void fopAcM_setStageLayer(void);
void fopAcM_wt_c_NS_waterCheck(void);
void fopKyM_create(void);
void fopKyM_createWpillar(void);
void fopMsgM_messageSet__FUlUl(void);
void fopMsgM_SearchByID__FUi(void);
void fpoAcM_relativePos(void);
void freeAll__7JKRHeapFv(void);
void func_80361C24(void);
void __construct_array(void);
void __construct_new_array(void);
void __ptmf_test(void);
void __ptmf_scall(void);
void fopOvlpM_IsPeek__Fv(void);
void __cvt_fp2unsigned(void);
void getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader(void);
void getLightDropNum__16dSv_light_drop_cCFUc(void);
void getNeckAimPos__9daAlink_cFP4cXyzPii(void);
void getOff__10e_wb_classFv(void);
void getRupeeMax__21dSv_player_status_a_cCFv(void);
void getZeldaActor__9daHorse_cFv(void);
void GXLoadLightObjImm(void);
void GXLoadNrmMtxImm(void);
void GXLoadPosMtxImm(void);
void GXSetAlphaCompare(void);
void GXSetChanAmbColor(void);
void GXSetChanMatColor(void);
void GXSetCullMode(void);
void GXSetCurrentMtx(void);
void GXSetNumIndStages(void);
void GXSetTexCoordGen2(void);
void GXSetZMode(void);
void init__14Z2CreatureLinkFP3VecP3VecP3Vec(void);
void init__16daAlink_matAnm_cFv(void);
void initKantera__14Z2CreatureLinkFP3Vec(void);
void isDungeonItem__12dSv_memBit_cCFi(void);
void isEventBit__11dSv_event_cCFUs(void);
void isFirstBit__21dSv_player_get_item_cCFUc(void);
void isSwitch__10dSv_info_cCFii(void);
void isSwitch__12dSv_danBit_cCFi(void);
void itemButton__9daAlink_cFv(void);
void itemButtonCheck__9daAlink_cFUc(void);
void itemTrigger__9daAlink_cFv(void);
void itemTriggerCheck__9daAlink_cFUc(void);
void load__20J2DAnmLoaderDataBaseFPCv(void);
void animation__9J2DScreenFv(void);
void draw__9J2DScreenFffPC14J2DGrafContext(void);
void setPriority__9J2DScreenFPCcUlP10JKRArchive(void);
void load__20J3DAnmLoaderDataBaseFPCv24J3DAnmLoaderDataBaseFlag(void);
void getTevColorReg__15J3DAnmTevRegKeyCFUsP11_GXColorS10(void);
void searchUpdateMaterialID__15J3DAnmTevRegKeyFP12J3DModelData(void);
void searchUpdateMaterialID__16J3DAnmTexPatternFP12J3DModelData(void);
void searchUpdateMaterialID__19J3DAnmTextureSRTKeyFP12J3DModelData(void);
void entryImm__13J3DDrawBufferFP9J3DPacketUs(void);
void checkPass__12J3DFrameCtrlFf(void);
void init__12J3DFrameCtrlFs(void);
void __ct__13J3DGXColorS10Fv(void);
void __dt__14J3DMatColorAnmFv(void);
void __ct__14J3DMatColorAnmFv(void);
void initialize__14J3DMaterialAnmFv(void);
void entryTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey(void);
void entryTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey(void);
void entryTexNoAnimator__16J3DMaterialTableFP16J3DAnmTexPattern(void);
void removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey(void);
void removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey(void);
void calcWeightEnvelopeMtx__8J3DModelFv(void);
void diff__8J3DModelFv(void);
void getAnmMtx__8J3DModelFi(void);
void setBaseTRMtx__8J3DModelFPA4_f(void);
void setDeformData__8J3DModelFP13J3DDeformDataUl(void);
void loadPreDrawSetting__8J3DShapeCFv(void);
void reinitGX__6J3DSysFv(void);
void __dt__14J3DTevColorAnmFv(void);
void __ct__14J3DTevColorAnmFv(void);
void __dt__15J3DTevKColorAnmFv(void);
void __ct__15J3DTevKColorAnmFv(void);
void __dt__12J3DTexMtxAnmFv(void);
void __ct__12J3DTexMtxAnmFv(void);
void __dt__11J3DTexNoAnmFv(void);
void __ct__11J3DTexNoAnmFv(void);
void __dt__18JPAEmitterCallBackFv(void);
void __dt__19JPAParticleCallBackFv(void);
void JPASetRMtxTVecfromMtx(void);
void getData__Q47JStudio3stb4data22TParse_TParagraph_dataCFPQ57JStudio3stb4data22TParse_TParagraph_data5TData(
    void);
void mDoAud_seStartLevel__FUlPC3VecUlSc(void);
void mDoAud_setLinkGroupInfo__FUc(void);
void mDoAud_setLinkHp__Fll(void);
void __dt__19mDoExt_AnmRatioPackFv(void);
void __ct__19mDoExt_AnmRatioPackFv(void);
void play__14mDoExt_baseAnmFv(void);
void changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform(void);
void entry__13mDoExt_bckAnmFP12J3DModelDataf(void);
void init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb(void);
void init__13mDoExt_blkAnmFP13J3DDeformDataP13J3DAnmClusteriifss(void);
void mDoExt_destroyExpHeap__FP10JKRExpHeap(void);
void mDoExt_J3DModel__create__FP12J3DModelDataUlUl(void);
void mDoExt_modelEntryDL__FP8J3DModel(void);
void getAnm__25mDoExt_MtxCalcAnmBlendTblFi(void);
void initOldFrameMorf__22mDoExt_MtxCalcOldFrameFfUsUs(void);
void mDoLib_pos2camera__FP3VecP3Vec(void);
void mDoLib_project__FP3VecP3Vec(void);
void mDoMtx_MtxToRot__FPA4_CfP5csXyz(void);
void transM__14mDoMtx_stack_cFRC4cXyz(void);
void ZXYrotM__14mDoMtx_stack_cFRC5csXyz(void);
void ZXYrotS__14mDoMtx_stack_cFRC5csXyz(void);
void mDoMtx_XrotM__FPA4_fs(void);
void mDoMtx_XrotS__FPA4_fs(void);
void mDoMtx_YrotS__FPA4_fs(void);
void mDoMtx_ZrotS__FPA4_fs(void);
void mDoMtx_ZXYrotS__FPA4_fsss(void);
void midnaTalkTrigger__9daAlink_cCFv(void);
void normalize__4cXyzFv(void);
void normalizeZP__4cXyzFv(void);
void normZP__4cXyzCFv(void);
void offEventBit__11dSv_event_cFUs(void);
void offSwitch__10dSv_info_cFii(void);
void onEventBit__11dSv_event_cFUs(void);
void onForcePanic__9daMidna_cFv(void);
void onNoServiceWait__9daMidna_cFv(void);
void onSwitch__10dSv_info_cFii(int, int);
void outprod__4cXyzCFRC3Vec(void);
void readIdxResource__10JKRArchiveFPvUlUl(void);
void set__17dSv_turnRestart_cFRC4cXyzsScUl(void);
void Set__4cCcSFP8cCcD_Obj(void);
void setBaitItem__17dSv_player_item_cFUc(void);
void setBottleItemIn__17dSv_player_item_cFUcUc(void);
void setBStatus__9daAlink_cFUc(void);
void SetC__8cM3dGCylFRC4cXyz(void);
void SetC__8cM3dGSphFRC4cXyz(void);
void setCorrectData__13Z2WolfHowlMgrFScP14Z2WolfHowlData(void);
void setDoStatus__9daAlink_cFUc(void);
void setDoStatusContinuation__9daAlink_cFUc(void);
void setDoStatusEmphasys__9daAlink_cFUc(void);
void setEquipBottleItemEmpty__17dSv_player_item_cFUc(void);
void setEquipBottleItemIn__17dSv_player_item_cFUcUc(u8, u8);
void SetH__8cM3dGCylFf(void);
void setHatAngle__9daAlink_cFv(void);
void SetIGrp__10cCcD_ObjCoFUl(void);
void setItem__17dSv_player_item_cFiUc(void);
void setKanteraState__14Z2CreatureLinkFUc(void);
void setLinkBootsType__14Z2CreatureLinkFl(void);
void setLinkGroupInfo__14Z2CreatureLinkFUc(void);
void setLinkHp__14Z2CreatureLinkFll(void);
void setLinkShieldType__14Z2CreatureLinkFll(void);
void setLinkState__14Z2CreatureLinkFUc(void);
void setLinkSwordType__14Z2CreatureLinkFll(void);
void setMagnetized__14Z2CreatureLinkFb(void);
void setMidnaTalkStatus__9daAlink_cFUc(u8);
void setPlayerRide__10e_wb_classFv(void);
void setPlayerRideNow__10e_wb_classFv(void);
void SetPolyInfo__13cBgS_PolyInfoFRC13cBgS_PolyInfo(void);
void SetPos__11cBgS_GndChkFPC4cXyz(void);
void SetR__8cM3dGCylFf(void);
void SetR__8cM3dGSphFf(void);
void setResumeAttack__14Z2CreatureLinkFb(void);
void setRiding__14Z2CreatureLinkFb(void);
void setRoom__13dSv_restart_cFRC4cXyzsSc(void);
void setRStatus__9daAlink_cFUc(void);
void setRStatusEmphasys__9daAlink_cFUc(void);
void setRunRideMode__10e_wb_classFv(void);
void setSinkDepth__14Z2CreatureLinkFSc(void);
void setSpecialGravity__9daAlink_cFffi(float, float, int);
void SetStartEnd__8cM3dGLinFRC4cXyzRC4cXyz(void);
void SetVsGrp__10cCcD_ObjCoFUl(void);
void setWolfEyeOpen__14Z2CreatureLinkFb(void);
void skipCorrectDemo__13Z2WolfHowlMgrFv(void);
void spActionButton__9daAlink_cFv(void);
void spActionTrigger__9daAlink_cFv(void);
void startHitItemSE__14Z2CreatureLinkFUlUlP14Z2SoundObjBasef(void);
void startLinkSwordSound__14Z2CreatureLinkF10JAISoundIDUlSc(void);
void startLinkVoice__14Z2CreatureLinkF10JAISoundIDSc(void);
void startLinkVoiceLevel__14Z2CreatureLinkF10JAISoundIDSc(void);
void startWolfHowlSound__13Z2WolfHowlMgrFffbf(void);
void swordSwingTrigger__9daAlink_cFv(void);
void initAnime__10Z2CreatureFPvbff(void);
void updateAnime__10Z2CreatureFff(void);
void bgmSetSwordUsing__8Z2SeqMgrFl(void);
void taktModeMute__8Z2SeqMgrFv(void);
void taktModeMuteOff__8Z2SeqMgrFv(void);
void fopKyM_create__FsiP4cXyzP4cXyzPFPv_i(void);
void fopKyM_createWpillar__FPC4cXyzfi(void);
}

class j3dsys {
public:
    Mtx mtx;
};

extern j3dsys lbl_80434AC8;
// additional symbols needed for d_alink.cpp
// autogenerated by split.py v0.3 at 2020-12-28 03:48:23.905248
extern u8 lbl_803B2E20;
extern u8 lbl_80452DA8;
extern u8 lbl_80430D3C;
extern u8 lbl_803C35A4;
extern u8 lbl_80452CD4;
extern u8 lbl_80453288;
extern u8 lbl_8038F748;
extern u8 lbl_80452D00;
extern u8 lbl_80453330;
extern u8 lbl_804255D4;
extern u8 lbl_8045324C;
extern u8 lbl_80452E08;
extern float lbl_80452EAC;
extern u8 lbl_804532B8;
extern u8 lbl_8038DB40;
extern u8 lbl_80452E10;
extern u8 lbl_8045101E;
extern u8 lbl_80452FB4;
extern u8 lbl_80453254;
extern u8 lbl_80453294;
extern u8 lbl_80452FC8;
extern u8 lbl_804248D0;
extern u8 lbl_804255EC;
extern u8 lbl_8045323C;
extern u8 lbl_80452EE8;
extern u8 lbl_8038F124;
extern u8 lbl_80453368;
extern u8 lbl_803AC31C;
extern u8 lbl_8038EF70;
extern u8 lbl_80452FB0;
extern u8 lbl_80452D7C;
extern u8 lbl_80452F6C;
extern u8 lbl_80453010;
extern u8 lbl_80453190;
extern u8 lbl_80452CA8;
extern u8 lbl_80392094;
extern u8 lbl_8038E6C8;
extern u8 lbl_8038F1A0;
extern u8 lbl_80453068;
extern u8 lbl_8038D768;
extern u8 lbl_8045336C;
extern u8 lbl_80452DF4;
extern u8 lbl_80452F58;
extern u8 lbl_8038E2B0;
extern u8 lbl_80452E68;
extern u8 lbl_80452D78;
extern u8 lbl_80450FD1;
extern u8 lbl_80452EC0;
extern u8 lbl_80452D64;
extern u8 lbl_80452E0C;
extern u8 lbl_8038F29C;
extern u8 lbl_8038F048;
extern u8 lbl_80452D10;
extern u8 lbl_80453060;
extern u8 lbl_80452F1C;
extern u8 lbl_804531A0;
extern u8 lbl_80453134;
extern u8 lbl_8038F46C;
extern u8 lbl_80391D94;
extern u8 lbl_80453138;
extern u8 lbl_80453218;
extern u8 lbl_8038EE28;
extern u8 lbl_80453310;
extern u8 lbl_80453338;
extern u8 lbl_803A86D0;
extern u8 lbl_80452F2C;
extern u8 lbl_80452E8C;
extern u8 lbl_8038F858;
extern u8 lbl_80452FE8;
extern u8 lbl_80452F80;
extern u8 lbl_80452DA0;
extern u8 lbl_8038F0A8;
extern u8 lbl_80452E38;
extern u8 lbl_8038D864;
extern u8 lbl_80452E9C;
extern u8 lbl_80452ED8;
extern u8 lbl_803AF99C;
extern u8 lbl_80452ED0;
extern u8 lbl_80452E28;
extern u8 lbl_80453378;
extern u8 lbl_803A7904;
extern u8 lbl_80453334;
extern u8 lbl_80452E70;
extern u8 lbl_80453018;
extern u8 lbl_80391978;
extern u8 lbl_80453370;
extern u8 lbl_80391734;
extern u8 lbl_8038F7A4;
extern u8 lbl_80453084;
extern u8 lbl_80453284;
extern u8 lbl_80452EC8;
extern u8 lbl_803A83A0;
extern u8 lbl_80452DDC;
extern u8 lbl_803B35C8;
extern u8 lbl_803B2F28;
extern u8 lbl_80453194;
extern u8 lbl_80453154;
extern u8 lbl_8045101C;
extern u8 lbl_80453320;
extern u8 lbl_804532E4;
extern u8 lbl_8038E1E0;
extern u8 lbl_80453268;
extern u8 lbl_80452FD0;
extern u8 lbl_80453074;
extern u8 lbl_8038F578;
extern u8 lbl_80450B38;
extern u8 lbl_80452E20;
extern u8 lbl_803B2EC8;
extern u8 lbl_8038DE8C;
extern u8 lbl_8038DF9C;
extern u8 lbl_804531A4;
extern u8 lbl_803914A8;
extern u8 lbl_8045315C;
extern u8 lbl_8038E840;
extern u8 lbl_804532DC;
extern u8 lbl_803A0004;
extern u8 lbl_80450FC4;
extern u8 lbl_80452D20;
extern u8 lbl_80453188;
extern u8 lbl_8045313C;
extern u8 lbl_8045328C;
extern u8 lbl_80450FB9;
extern u8 lbl_80453030;
extern u8 lbl_8045318C;
extern u8 lbl_8038FA90;
extern u8 lbl_8038FB50;
extern u8 lbl_8045339C;
extern u8 lbl_80391BAC;
extern u8 lbl_80453168;
extern u8 lbl_80452F74;
extern u8 lbl_80452D30;
extern u8 lbl_80391D84;
extern u8 lbl_8038FB44;
extern u8 lbl_803790C0;
extern u8 lbl_804256CC;
extern u8 lbl_80452E80;
extern u8 lbl_803B29AC;
extern u8 lbl_80425514;
extern u8 lbl_80452FCC;
extern u8 lbl_80391E18;
extern u8 lbl_80453080;
extern u8 lbl_804532E0;
extern u8 lbl_80453024;
extern u8 lbl_80453258;
extern u8 lbl_80453358;
extern u8 lbl_803919D8;
extern u8 lbl_8038F95C;
extern u8 lbl_80452DCC;
extern u8 lbl_80453300;
extern u8 lbl_80452F54;
extern u8 lbl_8038D82C;
extern u8 lbl_80450FBC;
extern u8 lbl_804532BC;
extern u8 lbl_80453398;
extern u8 lbl_80452F44;
extern u8 lbl_8038F558;
extern u8 lbl_80452D1C;
extern u8 lbl_80453394;
extern u8 lbl_8038D664;
extern u8 lbl_8038D7BC;
extern u8 lbl_80391C30;
extern u8 lbl_80453214;
extern u8 lbl_80452FF0;
extern u8 lbl_803B3580;
extern u8 lbl_80453054;
extern u8 lbl_804532EC;
extern u8 lbl_80452E84;
extern u8 lbl_8045307C;
extern u8 lbl_8038F138;
extern u8 lbl_80452D6C;
extern u8 lbl_80453040;
extern u8 lbl_80452E50;
extern u8 lbl_80391B5C;
extern u8 lbl_80452D44;
extern u8 lbl_803919E4;
extern u8 lbl_80452DC4;
extern u8 lbl_804532A0;
extern u8 lbl_80425508;
extern u8 lbl_80452EB0;
extern u8 lbl_80453260;
extern u8 lbl_80450690;
extern u8 lbl_8038EBFC;
extern u8 lbl_803B2DA0;
extern u8 lbl_80453000;
extern u8 lbl_80452CC8;
extern u8 lbl_803C3540;
extern u8 lbl_80453180;
extern u8 lbl_80452D60;
extern u8 lbl_80452CA0;
extern u8 lbl_80392034;
extern u8 lbl_8038EB50;
extern u8 lbl_80452E00;
extern u8 lbl_804255BC;
extern u8 lbl_8038F5B4;
extern u8 lbl_80391D38;
extern u8 lbl_803919FC;
extern u8 lbl_80452D9C;
extern u8 lbl_803919F0;
extern u8 lbl_803B2798;
extern u8 lbl_80452FBC;
extern u8 lbl_804256AC;
extern u8 lbl_8038E11C;
extern u8 lbl_80391E78;
extern u8 lbl_80452D08;
extern u8 lbl_8045325C;
extern u8 lbl_80453328;
extern u8 lbl_803A7218;
extern u8 lbl_8045304C;
extern u8 lbl_804531B8;
extern u8 lbl_80452CBC;
extern u8 lbl_80452D74;
extern u8 lbl_8038E1B8;
extern u8 lbl_804531D4;
extern u8 lbl_8038FCA8;
extern u8 lbl_80452D4C;
extern u8 lbl_80452CDC;
extern u8 lbl_8038E658;
extern u8 lbl_80453004;
extern u8 lbl_80391960;
extern u8 lbl_804515D0;
extern u8 lbl_80453014;
extern u8 lbl_80452FC0;
extern u8 lbl_80452DD4;
extern u8 lbl_803B2D88;
extern u8 lbl_803F1C48;
extern u8 lbl_80453044;
extern u8 lbl_80453088;
extern u8 lbl_8038E7CC;
extern u8 lbl_80452DC0;
extern u8 lbl_8038FB5C;
extern u8 lbl_8038E49C;
extern u8 lbl_80453230;
extern u8 lbl_80406194;
extern u8 lbl_803A33B8;
extern u8 lbl_80453144;
extern u8 lbl_8038FAC0;
extern u8 lbl_8038DF70;
extern u8 lbl_8045312C;
extern u8 lbl_80452E30;
extern u8 lbl_80452D8C;
extern u8 lbl_80452EFC;
extern u8 lbl_8038EAFC;
extern u8 lbl_80452D48;
extern u8 lbl_8045319C;
extern u8 lbl_80453070;
extern u8 lbl_80452FF4;
extern u8 lbl_80391ECC;
extern u8 lbl_8038F6F4;
extern u8 lbl_8038E610;
extern u8 lbl_80453240;
extern u8 lbl_8038F3B4;
extern u8 lbl_80450CD0;
extern u8 lbl_80453078;
extern u8 lbl_8045338C;
extern u8 lbl_80452D04;
extern u8 lbl_804532C0;
extern u8 lbl_80453008;
extern u8 lbl_80452F39;
extern u8 lbl_80453198;
extern u8 lbl_803918B8;
extern u8 lbl_80452F8C;
extern u8 lbl_80453178;
extern u8 lbl_804532F8;
extern u8 lbl_80452E88;
extern u8 lbl_80452F70;
extern u8 lbl_8038F618;
extern u8 lbl_80453344;
extern u8 lbl_8038DF28;
extern u8 lbl_8038E90C;
extern u8 lbl_80452EA8;
extern u8 lbl_803B2EF8;
extern u8 lbl_803B321C;
extern u8 lbl_80452FE4;
extern u8 lbl_80452E94;
extern u8 lbl_80452F60;
extern u8 lbl_8038D658;
extern u8 lbl_80452EEC;
extern u8 lbl_80453050;
extern u8 lbl_80453224;
extern u8 lbl_8045334C;
extern u8 lbl_8038EA30;
extern u8 lbl_80453038;
extern u8 lbl_8038F23C;
extern u8 lbl_8038E164;
extern u8 lbl_80452F28;
extern u8 lbl_8038FA6C;
extern u8 lbl_80453090;
extern u8 lbl_804531BC;
extern u8 lbl_80450FBA;
extern u8 lbl_80452E40;
extern u8 lbl_80452E7C;
extern u8 lbl_803918C4;
extern u8 lbl_80452DD8;
extern u8 lbl_80452E24;
extern u8 lbl_804256B8;
extern u8 lbl_8039199C;
extern u8 lbl_8045326C;
extern u8 lbl_80452EB4;
extern u8 lbl_804531C0;
extern u8 lbl_80452E34;
extern u8 lbl_80453238;
extern u8 lbl_804532F0;
extern u8 lbl_80453354;
extern u8 lbl_80453244;
extern u8 lbl_80450CD8;
extern u8 lbl_80452DBC;
extern u8 lbl_80452D98;
extern u8 lbl_80450FC0;
extern u8 lbl_8045306C;
extern u8 lbl_8038F3F0;
extern u8 lbl_80450FCC;
extern u8 lbl_80452DC8;
extern u8 lbl_80452EA0;
extern u8 lbl_80453388;
extern u8 lbl_80452D28;
extern u8 lbl_80452FA4;
extern u8 lbl_803F1D80;
extern u8 lbl_803B2F70;
extern u8 lbl_8038EC48;
extern u8 lbl_8038E01C;
extern u8 lbl_8038F8B4;
extern u8 lbl_803A3354;
extern u8 lbl_80452DE4;
extern u8 lbl_8038D6BC;
extern u8 lbl_8045321C;
extern u8 lbl_8038EB8C;
extern u8 lbl_80452DAC;
extern u8 lbl_80452D84;
extern u8 lbl_80452E3C;
extern u8 lbl_80452F24;
extern u8 lbl_80452D70;
extern u8 lbl_803F1CC4;
extern u8 lbl_80452ECC;
extern u8 lbl_80452D2C;
extern u8 lbl_804532D8;
extern u8 lbl_80452EBC;
extern u8 lbl_80450FBB;
extern u8 lbl_804532CC;
extern u8 lbl_8045308C;
extern u8 lbl_803BA14C;
extern u8 lbl_80391A5C;
extern u8 lbl_80453298;
extern u8 lbl_804530BC;
extern u8 lbl_80450694;
extern u8 lbl_80391F2C;
extern u8 lbl_803A8554;
extern u8 lbl_803B3564;
extern u8 lbl_80452E58;
extern u8 lbl_80453184;
extern u8 lbl_804532A4;
extern u8 lbl_80452DFC;
extern u8 lbl_804533A0;
extern u8 lbl_8038DAEC;
extern u8 lbl_803B2B68;
extern u8 lbl_804531D0;
extern u8 lbl_804256F8;
extern u8 lbl_8045305C;
extern u8 lbl_8042561C;
extern u8 lbl_803A33E4;
extern u8 lbl_8042552C;
extern u8 lbl_80391E48;
extern u8 lbl_80391D44;
extern u8 lbl_804255A4;
extern u8 lbl_804532AC;
extern u8 lbl_80452F04;
extern u8 lbl_80391A2C;
extern u8 lbl_8038EFA8;
extern u8 lbl_80452D90;
extern u8 lbl_804532F4;
extern u8 lbl_803AF990;
extern u8 lbl_803AC170;
extern u8 lbl_803B32B8;
extern u8 lbl_8042555C;
extern u8 lbl_8038F7DC;
extern u8 lbl_804532C8;
extern u8 lbl_8039196C;
extern u8 lbl_80453274;
extern u8 lbl_80452E98;
extern u8 lbl_803A8578;
extern u8 lbl_80450FC5;
extern u8 lbl_8038DDB8;
extern u8 lbl_80453220;
extern u8 lbl_80452FB8;
extern u8 lbl_8038EA70;
extern u8 lbl_8038E77C;
extern u8 lbl_80453318;
extern u8 lbl_80452FEC;
extern u8 lbl_80452EB8;
extern u8 lbl_80453118;
extern u8 lbl_8038ED2C;
extern u8 lbl_8045301C;
extern u8 lbl_80453280;
extern u8 lbl_80391E3C;
extern u8 lbl_8039201C;
extern u8 lbl_80452F78;
extern u8 lbl_803AC2E4;
extern u8 lbl_80452E1C;
extern u8 lbl_80452FA0;
extern u8 lbl_80453140;
extern u8 lbl_80452D24;
extern u8 lbl_80452CAC;
extern u8 lbl_80452FE0;
extern u8 lbl_80450FC7;
extern u8 lbl_803CEE60;
extern u8 lbl_80453248;
extern u8 lbl_803B35A0;
extern u8 lbl_8045317C;
extern u8 lbl_803B35EC;
extern u8 lbl_80452E14;
extern u8 lbl_80452EC4;
extern u8 lbl_803A37C0;
extern u8 lbl_80453390;
extern u8 lbl_8038E36C;
extern u8 lbl_80452D54;
extern u8 lbl_80453374;
extern u8 lbl_80452DA4;
extern u8 lbl_80453120;
extern u8 lbl_80453348;
extern u8 lbl_80452E2C;
extern u8 lbl_80391A50;
extern u8 lbl_80452EF4;
extern u8 lbl_80452E48;
extern u8 lbl_80452DE8;
extern u8 lbl_804531B4;
extern u8 lbl_8038F3C4;
extern u8 lbl_80450698;
extern u8 lbl_80453174;
extern u8 lbl_8038DD44;
extern u8 lbl_803C3608;
extern u8 lbl_80452F38;
extern u8 lbl_803A3360;
extern u8 lbl_8038DB84;
extern u8 lbl_8038E210;
extern u8 lbl_80450FC6;
extern u8 lbl_80452F34;
extern u8 lbl_8045302C;
extern u8 lbl_80453350;
extern u8 lbl_80453048;
extern u8 lbl_80453264;
extern u8 lbl_804532C4;
extern u8 lbl_80391E24;
extern u8 lbl_80453250;
extern u8 lbl_80453308;
extern u8 lbl_803A720C;
extern u8 lbl_80452D94;
extern u8 lbl_80452E6C;
extern u8 lbl_8038E454;
extern u8 lbl_80453124;
extern u8 lbl_8038FA54;
extern u8 lbl_803ABFC0;
extern u8 lbl_804532A8;
extern u8 lbl_8038F658;
extern u8 lbl_8038F374;
extern u8 lbl_8045335C;
extern u8 lbl_80452F40;
extern u8 lbl_8042558C;
extern u8 lbl_80452F4C;
extern u8 lbl_80453034;
extern u8 lbl_80391E8C;
extern u8 lbl_8038E714;
extern u8 lbl_803918DC;
extern u8 lbl_80391A14;
extern u8 lbl_804531B0;
extern u8 lbl_8038EF28;
extern u8 lbl_80452F3C;
extern u8 lbl_80391D54;
extern u8 lbl_80453384;
extern u8 lbl_80452F18;
extern u8 lbl_8038D714;
extern u8 lbl_803A8748;
extern u8 lbl_80453380;
extern u8 lbl_80452F90;
extern u8 lbl_8045311C;
extern u8 lbl_80452EA4;
extern u8 lbl_80452F00;
extern u8 lbl_8038D8CC;
extern u8 lbl_803B35B4;
extern u8 lbl_804531A8;
extern u8 lbl_80452FFC;
extern u8 lbl_80452E04;
extern u8 lbl_80452E74;
extern u8 lbl_80452F64;
extern u8 lbl_8038E870;
extern u8 lbl_8038F010;
extern u8 lbl_804532B4;
extern u8 lbl_80452F88;
extern u8 lbl_803B0A28;
extern u8 lbl_803C36D0;
extern u8 lbl_80452D80;
extern u8 lbl_8038E24C;
extern u8 lbl_80453270;
extern u8 lbl_8038E428;
extern u8 lbl_80450FBD;
extern u8 lbl_80452CA4;
extern u8 lbl_80452F5C;
extern u8 lbl_80453360;
extern u8 lbl_8038F9F8;
extern u8 lbl_80452EF0;
extern u8 lbl_80453234;
extern u8 lbl_80391BB8;
extern u8 lbl_80452D0C;
extern u8 lbl_80452F50;
extern u8 lbl_80452F7C;
extern u8 lbl_80452F9C;
extern u8 lbl_8045337C;
extern u8 lbl_804532D0;
extern u8 lbl_803A338C;
extern u8 lbl_80391E30;
extern u8 lbl_80452F68;
extern u8 lbl_80452FC4;
extern u8 lbl_80453160;
extern u8 lbl_8038E1F4;
extern u8 lbl_8038FBBC;
extern u8 lbl_80391EC0;
extern u8 lbl_80450FD0;
extern u8 lbl_80452FD8;
extern u8 lbl_80452D38;
extern u8 lbl_804532D4;
extern u8 lbl_80391954;
extern u8 lbl_80452CD8;
extern u8 lbl_804531CC;
extern u8 lbl_80450E20;
extern u8 lbl_8038E54C;
extern u8 lbl_80453164;
extern u8 lbl_80425634;
extern u8 lbl_803AC050;
extern u8 lbl_8045316C;
extern u8 lbl_80452EF8;
extern u8 lbl_804532E8;
extern u8 lbl_803A382C;
extern u8 lbl_803A357C;
extern u8 lbl_80452D40;
extern u8 lbl_80452E64;
extern u8 lbl_80450DF8;
extern u8 lbl_80452DB4;
extern u8 lbl_80391A08;
extern u8 lbl_803CD97C;
extern u8 lbl_80452EE4;
extern u8 lbl_80452F10;
extern u8 lbl_8038DC9C;
extern u8 lbl_80452F94;
extern u8 lbl_80450608;
extern u8 lbl_80452D58;
extern u8 lbl_8038DE18;
extern u8 lbl_803B3590;
extern u8 lbl_80452F98;
extern u8 lbl_803A3468;
extern u8 lbl_8038E7F4;
extern u8 lbl_80452EE0;
extern u8 lbl_804531C8;
extern u8 lbl_80452FD4;
extern u8 lbl_803B2CEC;
extern u8 lbl_80452DD0;
extern u8 lbl_80452F14;
extern u8 lbl_80452F30;
extern u8 lbl_80452F84;
extern u8 lbl_80453290;
extern u8 lbl_80450620;
extern u8 lbl_80452CD0;
extern u8 lbl_80391B7C;
extern u8 lbl_80452F20;
extern u8 lbl_803B2D94;
extern u8 lbl_8038E068;
extern u8 lbl_8038E4C0;
extern u8 lbl_80452E18;
extern u8 lbl_80453148;
extern u8 lbl_80453064;
extern u8 lbl_804506A4;
extern u8 lbl_80453170;
extern u8 lbl_80425544;
extern u8 lbl_80453364;
extern u8 lbl_80452DF0;
extern u8 lbl_80452CCC;
extern u8 lbl_803B2E80;
extern u8 lbl_80450AE8;
extern u8 lbl_803B22E0;
extern u8 lbl_80453128;
extern u8 lbl_80391984;
extern u8 lbl_80450FB8;
extern u8 lbl_80452CC4;
extern u8 lbl_8045329C;
extern u8 lbl_8045303C;
extern u8 lbl_80452D34;
extern u8 lbl_80391A20;
extern u8 lbl_804531C4;
extern u8 lbl_80452E78;
extern u8 lbl_80453130;
extern u8 lbl_80391990;
extern u8 lbl_803C3728;
extern u8 lbl_8038FA78;
extern u8 lbl_8038E9C0;
extern u8 lbl_80452FF8;
extern u8 lbl_80391010;
extern u8 lbl_803AC310;
extern u8 lbl_804531AC;
extern u8 lbl_80452F48;
extern u8 lbl_80452E90;
extern u8 lbl_803918D0;
extern u8 lbl_80453028;
extern u8 lbl_803A9C60;
extern u8 lbl_80452628;
extern u8 lbl_8045262C;
extern u8 lbl_80452630;
extern u8 lbl_80452634;
extern u8 lbl_80452638;
extern u8 lbl_8045263C;
extern u8 lbl_80452640;
extern u8 lbl_80452644;
extern u8 lbl_80452648;
extern u8 lbl_8045264C;
extern u8 lbl_80452650;
extern u8 lbl_80452654;
extern u8 lbl_80452658;
extern u8 lbl_8037A770;
extern u8 lbl_80450F58;
extern u8 lbl_803A9C54;
extern u8 lbl_8045265C;
extern u8 lbl_80452660;
extern u8 lbl_80452664;
extern u8 lbl_803A71E8;
extern u8 lbl_803A9C48;
extern u8 lbl_80424B0C;
extern u8 lbl_803A9BF8;
extern u8 lbl_80450660;
extern u8 lbl_803A9C3C;
extern u8 lbl_803A9C18;
extern u8 lbl_80452670;
extern u8 lbl_80452668;
extern u8 lbl_80452678;
extern u8 lbl_80452680;
extern u8 lbl_80452688;
extern u8 lbl_80450664;
extern u8 lbl_803A9C04;
extern u8 lbl_8045066C;
extern u8 lbl_80452690;
extern u8 lbl_803A9C70;
extern u8 lbl_80452694;
extern u8 lbl_80450670;
extern u8 lbl_80452698;
extern u8 lbl_8045269C;
extern u8 lbl_804526A8;
extern u8 lbl_804526A0;
extern u8 lbl_804526B0;
extern u8 lbl_804526B4;
extern u8 lbl_80424B00;
extern u8 lbl_803A78F8;
extern u8 lbl_803DD470;
extern u8 lbl_80450AE0;
extern u8 lbl_80451180;
extern u8 lbl_803A7288;
extern u8 lbl_80450D64;
extern u8 lbl_80451360;
extern u8 lbl_80430188;
extern u8 lbl_803A6F88;

u32 daAlink_c::getE3Zhint(void) {
    return 0;
}

asm const char* daAlink_c::getAlinkArcName(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8009D884.s"
}

asm void daAlink_tgHitCallback(fopAc_ac_c*, dCcD_GObjInf*, fopAc_ac_c*, dCcD_GObjInf*) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8009D88C.s"
}

asm void daAlink_coHitCallback(fopAc_ac_c*, dCcD_GObjInf*, fopAc_ac_c*, dCcD_GObjInf*) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8009D8B8.s"
}

void daAlink_matAnm_c::init(void) {
    float init = lbl_80452CC0;

    unk244 = init;
    unk248 = init;
    unk252 = init;
    unk256 = init;
    lbl_80450FC8 = 0;
    lbl_80450FC9 = 0;
    unk260 = 0;
}

asm void daAlink_matAnm_c::calc(J3DMaterial*) const {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8009D90C.s"
}

// matches but need to fix class structure
#ifdef NONMATCHING
bool daAlink_c::checkStageName(const char* stage) {
    stage = (const char*)this;
    return strcmp(dComIfGp_getStartStageName(), stage) == 0;
}
#else
asm bool daAlink_c::checkStageName(char const* stage) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8009DA60.s"
}
#endif

asm void daAlink_c::tgHitCallback(fopAc_ac_c*, dCcD_GObjInf*, dCcD_GObjInf*) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8009DA98.s"
}

asm void daAlink_c::coHitCallback(fopAc_ac_c*, dCcD_GObjInf*) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8009DB64.s"
}

asm void daAlink_c::setMatrixWorldAxisRot(float (*)[4], short, short, short, int, const cXyz*) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8009DC6C.s"
}

asm bool daAlink_c::jointControll(int) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8009DD90.s"
}

asm void daAlink_c::setUpperFront(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8009E7B8.s"
}

asm void daAlink_c::changeBlendRate(int) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8009E91C.s"
}

asm void daAlink_c::resetRootMtx(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8009EB18.s"
}

asm bool daAlink_c::modelCallBack(int) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8009EB58.s"
}

asm bool daAlink_modelCallBack(J3DJoint*, int) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8009EC28.s"
}

asm bool daAlink_c::headModelCallBack(int) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8009ECA0.s"
}

asm bool daAlink_headModelCallBack(J3DJoint*, int) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8009EF38.s"
}

asm bool daAlink_c::wolfModelCallBack(int) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8009EF7C.s"
}

asm bool daAlink_wolfModelCallBack(J3DJoint*, int) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8009EFF0.s"
}

asm void daAlink_c::setHatAngle(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8009F034.s"
}

asm void daAlink_c::calcHairAngle(short*) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8009FFF8.s"
}

asm void daAlink_c::setHairAngle(cXyz*, float, float) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A002C.s"
}

asm void daAlink_c::setLookPosFromOut(cXyz*) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A0744.s"
}

asm int daAlink_c::checkAttentionPosAngle(cXyz*) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A07D8.s"
}

asm bool daAlink_c::checkActorPosAngle(fopAc_ac_c*, cXyz**) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A0868.s"
}

asm cXyz* daAlink_c::getNeckAimPos(cXyz*, int*, int) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A093C.s"
}

/* d_a_alink.cpp autogenerated by split.py v0.3 at 2020-12-28 03:49:32.992870 */

extern "C" {
// getNeckAimAngle__9daAlink_cFP4cXyzPsPsPsPs
// daAlink_c::getNeckAimAngle(cXyz*, short*, short*, short*, short*)
asm void getNeckAimAngle__9daAlink_cFP4cXyzPsPsPsPs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A142C.s"
}

// setEyeMove__9daAlink_cFP4cXyzss
// daAlink_c::setEyeMove(cXyz*, short, short)
asm void setEyeMove__9daAlink_cFP4cXyzss(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A1AEC.s"
}

// setNeckAngle__9daAlink_cFv
// daAlink_c::setNeckAngle(void)
asm void setNeckAngle__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A1F90.s"
}

// getStickAngleFromPlayerShape__9daAlink_cCFPs
// daAlink_c::getStickAngleFromPlayerShape(const short*)
asm void getStickAngleFromPlayerShape__9daAlink_cCFPs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A2160.s"
}

// commonLineCheck__9daAlink_cFP4cXyzP4cXyz
// daAlink_c::commonLineCheck(cXyz*, cXyz*)
asm void commonLineCheck__9daAlink_cFP4cXyzP4cXyz(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A2198.s"
}

// getMoveBGActorName__9daAlink_cFR13cBgS_PolyInfoi
// daAlink_c::getMoveBGActorName(cBgS_PolyInfo&, int)
asm void getMoveBGActorName__9daAlink_cFR13cBgS_PolyInfoi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A21E0.s"
}

// checkGoronRide__9daAlink_cFv
// daAlink_c::checkGoronRide(void)
asm void checkGoronRide__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A2280.s"
}

// setMoveSlantAngle__9daAlink_cFv
// daAlink_c::setMoveSlantAngle(void)
asm void setMoveSlantAngle__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A22E8.s"
}

// setArmMatrix__9daAlink_cFv
// daAlink_c::setArmMatrix(void)
asm void setArmMatrix__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A2710.s"
}

// setFootMatrix__9daAlink_cFv
// daAlink_c::setFootMatrix(void)
asm void setFootMatrix__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A29DC.s"
}

// setMatrixOffset__9daAlink_cFPff
// daAlink_c::setMatrixOffset(float*, float)
asm void setMatrixOffset__9daAlink_cFPff(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A2C24.s"
}

// setLegAngle__9daAlink_cFfP18daAlink_footData_cPsPsi
// daAlink_c::setLegAngle(float, daAlink_footData_c*, short*, short*, int)
asm void setLegAngle__9daAlink_cFfP18daAlink_footData_cPsPsi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A2CE0.s"
}

// footBgCheck__9daAlink_cFv
// daAlink_c::footBgCheck(void)
asm void footBgCheck__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A3430.s"
}

// handBgCheck__9daAlink_cFv
// daAlink_c::handBgCheck(void)
asm void handBgCheck__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A39B8.s"
}

// setItemHeap__9daAlink_cFv
// daAlink_c::setItemHeap(void)
asm void setItemHeap__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A3C8C.s"
}

// setIdxMask__9daAlink_cFPUsPUs
// daAlink_c::setIdxMask(unsigned short*, unsigned short*)
asm void setIdxMask__9daAlink_cFPUsPUs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A3CE4.s"
}

// getAnimeResource__9daAlink_cFP14daPy_anmHeap_cUsUl
// daAlink_c::getAnimeResource(daPy_anmHeap_c*, unsigned short, unsigned long)
asm void getAnimeResource__9daAlink_cFP14daPy_anmHeap_cUsUl(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A3D0C.s"
}

// initModel__9daAlink_cFP12J3DModelDataUlUl
// daAlink_c::initModel(J3DModelData*, unsigned long, unsigned long)
asm void initModel__9daAlink_cFP12J3DModelDataUlUl(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A3D7C.s"
}

// initModel__9daAlink_cFUsUl
// daAlink_c::initModel(unsigned short, unsigned long)
asm void initModel__9daAlink_cFUsUl(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A3E30.s"
}

// initModelEnv__9daAlink_cFUsUl
// daAlink_c::initModelEnv(unsigned short, unsigned long)
asm void initModelEnv__9daAlink_cFUsUl(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A3E98.s"
}

// initDemoModel__9daAlink_cFPP8J3DModelPCcUl
// daAlink_c::initDemoModel(J3DModel*, const char*, unsigned long)
asm void initDemoModel__9daAlink_cFPP8J3DModelPCcUl(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A3F00.s"
}

// initDemoBck__9daAlink_cFPP13mDoExt_bckAnmPCc
// daAlink_c::initDemoBck(mDoExt_bckAnm*, const char*)
asm void initDemoBck__9daAlink_cFPP13mDoExt_bckAnmPCc(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A3F98.s"
}

// createHeap__9daAlink_cFv
// daAlink_c::createHeap(void)
asm void createHeap__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A4068.s"
}

// __dt__14J3DMaterialAnmFv
// J3DMaterialAnm::~J3DMaterialAnm(void)
asm void __dt__14J3DMaterialAnmFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A4820.s"
}

// daAlink_createHeap__FP10fopAc_ac_c
// daAlink_createHeap__FP10fopAc_ac_c(fopAc_ac_c*)
asm void daAlink_createHeap__FP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A48F0.s"
}

// setSelectEquipItem__9daAlink_cFi
// daAlink_c::setSelectEquipItem(int)
asm void setSelectEquipItem__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A4910.s"
}

// checkBoarStart__9daAlink_cFv
// daAlink_c::checkBoarStart(void)
asm void checkBoarStart__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A4BC8.s"
}

// checkCanoeStart__9daAlink_cFv
// daAlink_c::checkCanoeStart(void)
asm void checkCanoeStart__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A4C40.s"
}

// playerInit__9daAlink_cFv
// daAlink_c::playerInit(void)
asm void playerInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A4CB4.s"
}

// checkHorseStart__9daAlink_cFUli
// daAlink_c::checkHorseStart(unsigned long, int)
asm void checkHorseStart__9daAlink_cFUli(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A54F4.s"
}

// setStartProcInit__9daAlink_cFv
// daAlink_c::setStartProcInit(void)
asm void setStartProcInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A551C.s"
}

// create__9daAlink_cFv
// daAlink_c::create(void)
asm void create__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A5CC8.s"
}

// daAlink_Create__FP10fopAc_ac_c
// daAlink_Create(fopAc_ac_c*)
asm void daAlink_Create__FP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A660C.s"
}

// setRoomInfo__9daAlink_cFv
// daAlink_c::setRoomInfo(void)
asm void setRoomInfo__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A662C.s"
}

// setShapeAngleOnGround__9daAlink_cFv
// daAlink_c::setShapeAngleOnGround(void)
asm void setShapeAngleOnGround__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A67E0.s"
}

// setStepsOffset__9daAlink_cFv
// daAlink_c::setStepsOffset(void)
asm void setStepsOffset__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A6B0C.s"
}

// iceSlipBgCheck__9daAlink_cFv
// daAlink_c::iceSlipBgCheck(void)
asm void iceSlipBgCheck__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A6DCC.s"
}

// setIceSlipSpeed__9daAlink_cFv
// daAlink_c::setIceSlipSpeed(void)
asm void setIceSlipSpeed__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A7050.s"
}

// setPolygonSpeed__9daAlink_cFv
// daAlink_c::setPolygonSpeed(void)
asm void setPolygonSpeed__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A7358.s"
}

// checkWindSpeedOnAngle__9daAlink_cCFv
// daAlink_c::checkWindSpeedOnAngle(const void)
asm void checkWindSpeedOnAngle__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A7950.s"
}

// checkWindSpeedOnAngleAnime__9daAlink_cCFi
// daAlink_c::checkWindSpeedOnAngleAnime(const int)
asm void checkWindSpeedOnAngleAnime__9daAlink_cCFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A79EC.s"
}

// checkDashAnime__9daAlink_cCFv
// daAlink_c::checkDashAnime(const void)
asm void checkDashAnime__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A7A5C.s"
}

// checkWindWallRate__9daAlink_cFRC4cXyz
// daAlink_c::checkWindWallRate(const cXyz&)
asm void checkWindWallRate__9daAlink_cFRC4cXyz(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A7ABC.s"
}

// setWindSpeed__9daAlink_cFv
// daAlink_c::setWindSpeed(void)
asm void setWindSpeed__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A7CB0.s"
}

// setBodyPartPos__9daAlink_cFv
// daAlink_c::setBodyPartPos(void)
asm void setBodyPartPos__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A8310.s"
}

// setRollJump__9daAlink_cFffs
// daAlink_c::setRollJump(float, float, short)
asm void setRollJump__9daAlink_cFffs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A87D8.s"
}

// setAttentionPos__9daAlink_cFv
// daAlink_c::setAttentionPos(void)
asm void setAttentionPos__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A87F8.s"
}

// setMatrix__9daAlink_cFv
// daAlink_c::setMatrix(void)
asm void setMatrix__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A8CE4.s"
}

// simpleAnmPlay__9daAlink_cFP10J3DAnmBase
// daAlink_c::simpleAnmPlay(J3DAnmBase*)
asm void simpleAnmPlay__9daAlink_cFP10J3DAnmBase(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A9248.s"
}

// setSwordPos__9daAlink_cFv
// daAlink_c::setSwordPos(void)
asm void setSwordPos__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A92F0.s"
}

// setItemMatrix__9daAlink_cFi
// daAlink_c::setItemMatrix(int)
asm void setItemMatrix__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A9450.s"
}

// setWolfItemMatrix__9daAlink_cFv
// daAlink_c::setWolfItemMatrix(void)
asm void setWolfItemMatrix__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A9F4C.s"
}

// setHandIndex__9daAlink_cFQ29daAlink_c11daAlink_ANM
asm void setHandIndex__9daAlink_cFQ29daAlink_c11daAlink_ANM(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AA2BC.s"
}

// setSwordAtCollision__9daAlink_cFi
// daAlink_c::setSwordAtCollision(int)
asm void setSwordAtCollision__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AA2E0.s"
}

// checkNoCollisionCorret__9daAlink_cFv
// daAlink_c::checkNoCollisionCorret(void)
asm void checkNoCollisionCorret__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AA5E8.s"
}

// decSwordBlur__9daAlink_cFv
// daAlink_c::decSwordBlur(void)
asm void decSwordBlur__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AA6B4.s"
}

// resetWolfAtCollision__9daAlink_cFv
// daAlink_c::resetWolfAtCollision(void)
asm void resetWolfAtCollision__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AA714.s"
}

// setWolfAtCollision__9daAlink_cFv
// daAlink_c::setWolfAtCollision(void)
asm void setWolfAtCollision__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AA7EC.s"
}

// resetAtCollision__9daAlink_cFi
// daAlink_c::resetAtCollision(int)
asm void resetAtCollision__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AA9DC.s"
}

// setAtCollision__9daAlink_cFv
// daAlink_c::setAtCollision(void)
asm void setAtCollision__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AAABC.s"
}

// setWolfCollisionPos__9daAlink_cFv
// daAlink_c::setWolfCollisionPos(void)
asm void setWolfCollisionPos__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AB878.s"
}

// initLockAt__9daAlink_cFv
// daAlink_c::initLockAt(void)
asm void initLockAt__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800ABAE0.s"
}

// cancelLockAt__9daAlink_cFv
// daAlink_c::cancelLockAt(void)
asm void cancelLockAt__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800ABB28.s"
}

// setCollisionPos__9daAlink_cFv
// daAlink_c::setCollisionPos(void)
asm void setCollisionPos__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800ABB84.s"
}

// setCollision__9daAlink_cFv
// daAlink_c::setCollision(void)
asm void setCollision__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800ABDB8.s"
}

// getBaseAnimeFrame__9daAlink_cCFv
// daAlink_c::getBaseAnimeFrame(const void)
asm void getBaseAnimeFrame__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AC328.s"
}

// setAnimeFrame__9daAlink_cFf
// daAlink_c::setAnimeFrame(float)
asm void setAnimeFrame__9daAlink_cFf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AC378.s"
}

// setFrameCtrl__9daAlink_cFP16daPy_frameCtrl_cUcssff
// daAlink_c::setFrameCtrl(daPy_frameCtrl_c*, unsigned char, short, short, float, float)
asm void setFrameCtrl__9daAlink_cFP16daPy_frameCtrl_cUcssff(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AC394.s"
}

// getMainBckData__9daAlink_cCFQ29daAlink_c11daAlink_ANM
asm void getMainBckData__9daAlink_cCFQ29daAlink_c11daAlink_ANM(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AC450.s"
}

// checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
asm void checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AC558.s"
}

// checkUnderMove1BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
asm void checkUnderMove1BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AC5B4.s"
}

// getUnderUpperAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMPP15J3DAnmTransformPP15J3DAnmTransformiUl
asm void
getUnderUpperAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMPP15J3DAnmTransformPP15J3DAnmTransformiUl(
    void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AC610.s"
}

// setDoubleAnimeBlendRatio__9daAlink_cFf
// daAlink_c::setDoubleAnimeBlendRatio(float)
asm void setDoubleAnimeBlendRatio__9daAlink_cFf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AC738.s"
}

// commonDoubleAnime__9daAlink_cFP15J3DAnmTransformP15J3DAnmTransformP15J3DAnmTransformP15J3DAnmTransformfffi
// daAlink_c::commonDoubleAnime(J3DAnmTransform*, J3DAnmTransform*, J3DAnmTransform*,
// J3DAnmTransform*, float, float, float, int)
asm void
commonDoubleAnime__9daAlink_cFP15J3DAnmTransformP15J3DAnmTransformP15J3DAnmTransformP15J3DAnmTransformfffi(
    void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AC754.s"
}

// setDoubleAnime__9daAlink_cFfffQ29daAlink_c11daAlink_ANMQ29daAlink_c11daAlink_ANMif
asm void setDoubleAnime__9daAlink_cFfffQ29daAlink_c11daAlink_ANMQ29daAlink_c11daAlink_ANMif(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800ACA14.s"
}

// commonSingleAnime__9daAlink_cFP15J3DAnmTransformP15J3DAnmTransformffs
// daAlink_c::commonSingleAnime(J3DAnmTransform*, J3DAnmTransform*, float, float, short)
asm void commonSingleAnime__9daAlink_cFP15J3DAnmTransformP15J3DAnmTransformffs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800ACD40.s"
}

// setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
asm void setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800ACF80.s"
}

// setSingleAnimeBaseMorf__9daAlink_cFQ29daAlink_c11daAlink_ANMf
asm void setSingleAnimeBaseMorf__9daAlink_cFQ29daAlink_c11daAlink_ANMf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800ACFB0.s"
}

// setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
asm void setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800ACFE0.s"
}

// setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
asm void setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AD00C.s"
}

// setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
asm void setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AD0F4.s"
}

// animePlay__9daAlink_cFP15J3DAnmTransformP16daPy_frameCtrl_c
// daAlink_c::animePlay(J3DAnmTransform*, daPy_frameCtrl_c*)
asm void animePlay__9daAlink_cFP15J3DAnmTransformP16daPy_frameCtrl_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AD128.s"
}

// allAnimePlay__9daAlink_cFv
// daAlink_c::allAnimePlay(void)
asm void allAnimePlay__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AD170.s"
}

// setUpperAnimeMorf__9daAlink_cFf
// daAlink_c::setUpperAnimeMorf(float)
asm void setUpperAnimeMorf__9daAlink_cFf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AD2D8.s"
}

// setUpperAnimeBase__9daAlink_cFUs
// daAlink_c::setUpperAnimeBase(unsigned short)
asm void setUpperAnimeBase__9daAlink_cFUs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AD340.s"
}

// setUpperAnimeBaseMorf__9daAlink_cFUsf
// daAlink_c::setUpperAnimeBaseMorf(unsigned short, float)
asm void setUpperAnimeBaseMorf__9daAlink_cFUsf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AD374.s"
}

// setUpperAnimeBaseSpeed__9daAlink_cFUsff
// daAlink_c::setUpperAnimeBaseSpeed(unsigned short, float, float)
asm void setUpperAnimeBaseSpeed__9daAlink_cFUsff(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AD3A8.s"
}

// setUpperAnime__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERffsf
asm void setUpperAnime__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERffsf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AD3D8.s"
}

// setUpperAnimeParam__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERPC16daAlinkHIO_anm_c
asm void setUpperAnimeParam__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERPC16daAlinkHIO_anm_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AD6F0.s"
}

// resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
asm void resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AD724.s"
}

// setUnderAnimeMorf__9daAlink_cFf
// daAlink_c::setUnderAnimeMorf(float)
asm void setUnderAnimeMorf__9daAlink_cFf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AD8F4.s"
}

// setUnderAnime__9daAlink_cFUsQ29daAlink_c13daAlink_UNDERffsf
asm void setUnderAnime__9daAlink_cFUsQ29daAlink_c13daAlink_UNDERffsf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AD964.s"
}

// setUnderAnimeParam__9daAlink_cFUsQ29daAlink_c13daAlink_UNDERPC16daAlinkHIO_anm_c
asm void setUnderAnimeParam__9daAlink_cFUsQ29daAlink_c13daAlink_UNDERPC16daAlinkHIO_anm_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800ADAB8.s"
}

// resetUnderAnime__9daAlink_cFQ29daAlink_c13daAlink_UNDERf
asm void resetUnderAnime__9daAlink_cFQ29daAlink_c13daAlink_UNDERf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800ADAEC.s"
}

// setOldRootQuaternion__9daAlink_cFsss
// daAlink_c::setOldRootQuaternion(short, short, short)
asm void setOldRootQuaternion__9daAlink_cFsss(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800ADB78.s"
}

// checkAtnLeftAnime__9daAlink_cFv
// daAlink_c::checkAtnLeftAnime(void)
asm void checkAtnLeftAnime__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800ADC50.s"
}

// checkAtnRightAnime__9daAlink_cFv
// daAlink_c::checkAtnRightAnime(void)
asm void checkAtnRightAnime__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800ADCEC.s"
}

// getMoveGroundAngleSpeedRate__9daAlink_cFv
// daAlink_c::getMoveGroundAngleSpeedRate(void)
asm void getMoveGroundAngleSpeedRate__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800ADD88.s"
}

// setBlendMoveAnime__9daAlink_cFf
// daAlink_c::setBlendMoveAnime(float)
asm void setBlendMoveAnime__9daAlink_cFf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800ADE14.s"
}

// setBlendAtnMoveAnime__9daAlink_cFf
// daAlink_c::setBlendAtnMoveAnime(float)
asm void setBlendAtnMoveAnime__9daAlink_cFf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AEA70.s"
}

// setBlendAtnBackMoveAnime__9daAlink_cFf
// daAlink_c::setBlendAtnBackMoveAnime(float)
asm void setBlendAtnBackMoveAnime__9daAlink_cFf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AF11C.s"
}

// setFaceBck__9daAlink_cFUsiUs
// daAlink_c::setFaceBck(unsigned short, int, unsigned short)
asm void setFaceBck__9daAlink_cFUsiUs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AF4B0.s"
}

// setFaceBtp__9daAlink_cFUsiUs
// daAlink_c::setFaceBtp(unsigned short, int, unsigned short)
asm void setFaceBtp__9daAlink_cFUsiUs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AF61C.s"
}

// setFaceBtk__9daAlink_cFUsiUs
// daAlink_c::setFaceBtk(unsigned short, int, unsigned short)
asm void setFaceBtk__9daAlink_cFUsiUs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AF7D0.s"
}

// setFaceBasicTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
asm void setFaceBasicTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AF8A0.s"
}

// setFaceBasicAnime__9daAlink_cFQ29daAlink_c11daAlink_ANM
asm void setFaceBasicAnime__9daAlink_cFQ29daAlink_c11daAlink_ANM(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AF9A8.s"
}

// setFacePriTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
asm void setFacePriTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AFAA8.s"
}

// setFacePriAnime__9daAlink_cFQ29daAlink_c11daAlink_ANM
asm void setFacePriAnime__9daAlink_cFQ29daAlink_c11daAlink_ANM(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AFB14.s"
}

// resetFacePriBck__9daAlink_cFv
// daAlink_c::resetFacePriBck(void)
asm void resetFacePriBck__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AFB74.s"
}

// resetFacePriBtp__9daAlink_cFv
// daAlink_c::resetFacePriBtp(void)
asm void resetFacePriBtp__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AFBD0.s"
}

// resetFacePriBtk__9daAlink_cFv
// daAlink_c::resetFacePriBtk(void)
asm void resetFacePriBtk__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AFC2C.s"
}

// resetFacePriTexture__9daAlink_cFv
// daAlink_c::resetFacePriTexture(void)
asm void resetFacePriTexture__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AFC88.s"
}

// resetFacePriAnime__9daAlink_cFv
// daAlink_c::resetFacePriAnime(void)
asm void resetFacePriAnime__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AFCBC.s"
}

// playFaceTextureAnime__9daAlink_cFv
// daAlink_c::playFaceTextureAnime(void)
asm void playFaceTextureAnime__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800AFCF0.s"
}

// getGroundAngle__9daAlink_cFP13cBgS_PolyInfos
// daAlink_c::getGroundAngle(cBgS_PolyInfo*, short)
asm void getGroundAngle__9daAlink_cFP13cBgS_PolyInfos(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B0098.s"
}

// getRoofAngle__9daAlink_cFP13cBgS_PolyInfos
// daAlink_c::getRoofAngle(cBgS_PolyInfo*, short)
asm void getRoofAngle__9daAlink_cFP13cBgS_PolyInfos(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B0150.s"
}

// getWallEdgePos__9daAlink_cFRC4cXyzP8cM3dGPlaP8cM3dGPlaP4cXyzi
// daAlink_c::getWallEdgePos(const cXyz&, cM3dGPla*, cM3dGPla*, cXyz*, int)
asm void getWallEdgePos__9daAlink_cFRC4cXyzP8cM3dGPlaP8cM3dGPlaP4cXyzi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B01FC.s"
}

// setFrontWallType__9daAlink_cFv
// daAlink_c::setFrontWallType(void)
asm void setFrontWallType__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B02BC.s"
}

// SetPos__12dBgS_RoofChkFRC4cXyz
// dBgS_RoofChk::SetPos(const cXyz&)
asm void SetPos__12dBgS_RoofChkFRC4cXyz(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B146C.s"
}

// checkWaterPolygonUnder__9daAlink_cFv
// daAlink_c::checkWaterPolygonUnder(void)
asm void checkWaterPolygonUnder__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B1488.s"
}

// setWaterY__9daAlink_cFv
// daAlink_c::setWaterY(void)
asm void setWaterY__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B14B4.s"
}

// setHangWaterY__9daAlink_cFv
// daAlink_c::setHangWaterY(void)
asm void setHangWaterY__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B154C.s"
}

// setSandDownBgCheckWallH__9daAlink_cFv
// daAlink_c::setSandDownBgCheckWallH(void)
asm void setSandDownBgCheckWallH__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B172C.s"
}

// setBgCheckParam__9daAlink_cFv
// daAlink_c::setBgCheckParam(void)
asm void setBgCheckParam__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B1770.s"
}

// checkNotJumpSinkLimit__9daAlink_cFv
// daAlink_c::checkNotJumpSinkLimit(void)
asm void checkNotJumpSinkLimit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B1B28.s"
}

// checkNotItemSinkLimit__9daAlink_cFv
// daAlink_c::checkNotItemSinkLimit(void)
asm void checkNotItemSinkLimit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B1B68.s"
}

// setSandShapeOffset__9daAlink_cFv
// daAlink_c::setSandShapeOffset(void)
asm void setSandShapeOffset__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B1BAC.s"
}

// checkLv2MiddleBossBgRide__9daAlink_cFs
// daAlink_c::checkLv2MiddleBossBgRide(short)
#ifdef NONMATCHING
bool daAlink_c::checkLv2MiddleBossBgRide(short param1) {
    bool check = 0;

    // beqlr needs to be beq
    if (param1 != 0x7B && param1 == 0x7D) {
        check = 1;
    }

    return check;
}
#else
asm void checkLv2MiddleBossBgRide__9daAlink_cFs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B1FB8.s"
}
#endif

// getSlidePolygon__9daAlink_cFP8cM3dGPla
// daAlink_c::getSlidePolygon(cM3dGPla*)
asm void getSlidePolygon__9daAlink_cFP8cM3dGPla(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B1FD8.s"
}

// checkSlope__9daAlink_cCFv
// daAlink_c::checkSlope(const void)
asm void checkSlope__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B21EC.s"
}

// setPlayerPosAndAngle__9daAlink_cFPC4cXyzsi
// daAlink_c::setPlayerPosAndAngle(const cXyz*, short, int)
asm void setPlayerPosAndAngle__9daAlink_cFPC4cXyzsi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B221C.s"
}

// setPlayerPosAndAngle__9daAlink_cFPC4cXyzPC5csXyz
// daAlink_c::setPlayerPosAndAngle(const cXyz*, const csXyz*)
asm void setPlayerPosAndAngle__9daAlink_cFPC4cXyzPC5csXyz(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B23FC.s"
}

// setPlayerPosAndAngle__9daAlink_cFPA4_f
asm void setPlayerPosAndAngle__9daAlink_cFPA4_f(void){nofralloc
#include "d/d_a/d_a_alink/asm/func_800B24F4.s"
}

u32 daAlink_c::itemTriggerCheck(u8 param1) {
    unk12206 |= param1;
    return unk12173 & param1;
}

u32 daAlink_c::itemButtonCheck(u8 param1) {
    unk12206 |= param1;
    return unk12174 & param1;
}

void daAlink_c::itemButton(void) {
    itemButtonCheck(1 << unk12188);
}

void daAlink_c::itemTrigger(void) {
    itemTriggerCheck(1 << unk12188);
}

void daAlink_c::spActionButton(void) {
    itemButtonCheck(64);
}

void daAlink_c::spActionTrigger(void) {
    itemTriggerCheck(64);
}

u32 daAlink_c::midnaTalkTrigger(void) const {
    return unk12173 & 4;
}

void daAlink_c::swordSwingTrigger(void) {
    itemTriggerCheck(8);
}

// setItemActionButtonStatus__9daAlink_cFUc
// daAlink_c::setItemActionButtonStatus(unsigned char)
asm void setItemActionButtonStatus__9daAlink_cFUc(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B26DC.s"
}

// itemActionTrigger__9daAlink_cFv
// daAlink_c::itemActionTrigger(void)
asm void itemActionTrigger__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B26FC.s"
}

// setStickData__9daAlink_cFv
// daAlink_c::setStickData(void)
asm void setStickData__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B271C.s"
}

// setAtnList__9daAlink_cFv
// daAlink_c::setAtnList(void)
asm void setAtnList__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B2EA4.s"
}

// setRStatus__9daAlink_cFUc
// daAlink_c::setRStatus(unsigned char)
void daAlink_c::setRStatus(u8 status) {
    dComIfGp_setRStatus(status, 0);
}

void daAlink_c::setRStatusEmphasys(u8 status) {
    dComIfGp_setRStatus(status, 2);
}

void daAlink_c::setDoStatus(u8 status) {
    dComIfGp_setDoStatus(status, 0);
}

void daAlink_c::setDoStatusEmphasys(u8 status) {
    dComIfGp_setDoStatus(status, 2);
}

void daAlink_c::setDoStatusContinuation(u8 status) {
    dComIfGp_setDoStatus(status, 4);
}

void daAlink_c::setBStatus(u8 status) {
    dComIfGp_setAStatus(status, 0);
}

// checkAtnWaitAnime__9daAlink_cFv
// daAlink_c::checkAtnWaitAnime(void)
asm void checkAtnWaitAnime__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B32B0.s"
}

// setTiredVoice__9daAlink_cFP16daPy_frameCtrl_c
// daAlink_c::setTiredVoice(daPy_frameCtrl_c*)
asm void setTiredVoice__9daAlink_cFP16daPy_frameCtrl_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B3358.s"
}

// checkRestHPAnime__9daAlink_cFv
// daAlink_c::checkRestHPAnime(void)
asm void checkRestHPAnime__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B33E4.s"
}

// getDirectionFromAngle__9daAlink_cFs
// daAlink_c::getDirectionFromAngle(short)
asm void getDirectionFromAngle__9daAlink_cFs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B3494.s"
}

// checkAttentionState__9daAlink_cFv
// daAlink_c::checkAttentionState(void)
asm void checkAttentionState__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B3500.s"
}

// getShapeAngleYAtnActor__9daAlink_cFv
// daAlink_c::getShapeAngleYAtnActor(void)
asm void getShapeAngleYAtnActor__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B3630.s"
}

// setShapeAngleToAtnActor__9daAlink_cFi
// daAlink_c::setShapeAngleToAtnActor(int)
asm void setShapeAngleToAtnActor__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B3734.s"
}

// initServiceWaitTime__9daAlink_cFv
// daAlink_c::initServiceWaitTime(void)
asm void initServiceWaitTime__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B3844.s"
}

// checkZeroSpeedF__9daAlink_cCFv
// daAlink_c::checkZeroSpeedF(const void)
asm void checkZeroSpeedF__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B3904.s"
}

// setNormalSpeedF__9daAlink_cFff
// daAlink_c::setNormalSpeedF(float, float)
asm void setNormalSpeedF__9daAlink_cFff(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B3924.s"
}

// getStickAngleDistanceRate__9daAlink_cFv
// daAlink_c::getStickAngleDistanceRate(void)
asm void getStickAngleDistanceRate__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B3F2C.s"
}

// setSpeedAndAngleNormal__9daAlink_cFv
// daAlink_c::setSpeedAndAngleNormal(void)
asm void setSpeedAndAngleNormal__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B3FD4.s"
}

// setSpeedAndAngleAtn__9daAlink_cFv
// daAlink_c::setSpeedAndAngleAtn(void)
asm void setSpeedAndAngleAtn__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B444C.s"
}

// checkRequestTalkActor__9daAlink_cFP10dAttList_cP10fopAc_ac_c
// daAlink_c::checkRequestTalkActor(dAttList_c*, fopAc_ac_c*)
asm void checkRequestTalkActor__9daAlink_cFP10dAttList_cP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B477C.s"
}

// checkServiceWaitMode__9daAlink_cFv
// daAlink_c::checkServiceWaitMode(void)
asm void checkServiceWaitMode__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B47B4.s"
}

// setJumpMode__9daAlink_cFv
// daAlink_c::setJumpMode(void)
asm void setJumpMode__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B48D0.s"
}

// getMetamorphoseNearDis__9daAlink_cCFv
// daAlink_c::getMetamorphoseNearDis(const void)
asm void getMetamorphoseNearDis__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B4908.s"
}

// getMetamorphoseFarDis__9daAlink_cCFv
// daAlink_c::getMetamorphoseFarDis(const void)
asm void getMetamorphoseFarDis__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B4918.s"
}

// getMetamorphoseFarAngle__9daAlink_cCFv
// daAlink_c::getMetamorphoseFarAngle(const void)
asm void getMetamorphoseFarAngle__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B4928.s"
}

// setMidnaMsg__9daAlink_cFv
// daAlink_c::setMidnaMsg(void)
asm void setMidnaMsg__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B4938.s"
}

// notTalk__9daAlink_cFv
// daAlink_c::notTalk(void)
asm void notTalk__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B4950.s"
}

// setTalkStatus__9daAlink_cFv
// daAlink_c::setTalkStatus(void)
asm void setTalkStatus__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B4A08.s"
}

// getFrontRollRate__9daAlink_cFv
// daAlink_c::getFrontRollRate(void)
asm void getFrontRollRate__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B4B2C.s"
}

// decideCommonDoStatus__9daAlink_cFv
// daAlink_c::decideCommonDoStatus(void)
asm void decideCommonDoStatus__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B4B7C.s"
}

// decideDoStatus__9daAlink_cFv
// daAlink_c::decideDoStatus(void)
asm void decideDoStatus__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B5284.s"
}

// checkWaitAction__9daAlink_cFv
// daAlink_c::checkWaitAction(void)
asm void checkWaitAction__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B58EC.s"
}

// setFallVoice__9daAlink_cFv
// daAlink_c::setFallVoice(void)
asm void setFallVoice__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B5BC0.s"
}

// setLandPassiveData__9daAlink_cFv
// daAlink_c::setLandPassiveData(void)
asm void setLandPassiveData__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B5C34.s"
}

// setStepLandVibration__9daAlink_cFv
// daAlink_c::setStepLandVibration(void)
asm void setStepLandVibration__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B5C64.s"
}

// checkLandAction__9daAlink_cFi
// daAlink_c::checkLandAction(int)
asm void checkLandAction__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B5CCC.s"
}

// checkSlideAction__9daAlink_cFv
// daAlink_c::checkSlideAction(void)
asm void checkSlideAction__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B5F6C.s"
}

// checkAutoJumpAction__9daAlink_cFv
// daAlink_c::checkAutoJumpAction(void)
asm void checkAutoJumpAction__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B607C.s"
}

// checkCutJumpInFly__9daAlink_cFv
// daAlink_c::checkCutJumpInFly(void)
asm void checkCutJumpInFly__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B69CC.s"
}

// checkFrontWallTypeAction__9daAlink_cFv
// daAlink_c::checkFrontWallTypeAction(void)
asm void checkFrontWallTypeAction__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B6A30.s"
}

// checkItemActionInitStart__9daAlink_cFv
// daAlink_c::checkItemActionInitStart(void)
asm void checkItemActionInitStart__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B6F28.s"
}

// checkItemChangeAutoAction__9daAlink_cFv
// daAlink_c::checkItemChangeAutoAction(void)
asm void checkItemChangeAutoAction__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B7090.s"
}

// setFastShotTimer__9daAlink_cFv
// daAlink_c::setFastShotTimer(void)
asm void setFastShotTimer__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B7168.s"
}

// cancelItemUseQuake__9daAlink_cFi
// daAlink_c::cancelItemUseQuake(int)
asm void cancelItemUseQuake__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B7190.s"
}

// cancelUpperItemReadyAnime__9daAlink_cFi
// daAlink_c::cancelUpperItemReadyAnime(int)
asm void cancelUpperItemReadyAnime__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B71EC.s"
}

// checkItemActorPointer__9daAlink_cFv
// daAlink_c::checkItemActorPointer(void)
asm void checkItemActorPointer__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B72E4.s"
}

// checkSwordTwirlAction__9daAlink_cFv
// daAlink_c::checkSwordTwirlAction(void)
asm void checkSwordTwirlAction__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B7390.s"
}

// checkUpperItemActionFly__9daAlink_cFv
// daAlink_c::checkUpperItemActionFly(void)
asm void checkUpperItemActionFly__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B74B4.s"
}

// checkItemButtonChange__9daAlink_cFv
// daAlink_c::checkItemButtonChange(void)
asm void checkItemButtonChange__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B7528.s"
}

// checkUpperItemAction__9daAlink_cFv
// daAlink_c::checkUpperItemAction(void)
asm void checkUpperItemAction__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B75EC.s"
}

// orderPeep__9daAlink_cFv
// daAlink_c::orderPeep(void)
asm void orderPeep__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B7B7C.s"
}

// orderTalk__9daAlink_cFi
// daAlink_c::orderTalk(int)
asm void orderTalk__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B7BF8.s"
}

// daAlink_searchBouDoor__FP10fopAc_ac_cPv
// daAlink_searchBouDoor__FP10fopAc_ac_cPv(fopAc_ac_c*, void*)
asm void daAlink_searchBouDoor__FP10fopAc_ac_cPv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B7D4C.s"
}

// daAlink_searchKolin__FP10fopAc_ac_cPv
// daAlink_searchKolin__FP10fopAc_ac_cPv(fopAc_ac_c*, void*)
asm void daAlink_searchKolin__FP10fopAc_ac_cPv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B7F84.s"
}

// orderZTalk__9daAlink_cFv
// daAlink_c::orderZTalk(void)
asm void orderZTalk__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B80C4.s"
}

// checkNormalAction__9daAlink_cFv
// daAlink_c::checkNormalAction(void)
asm void checkNormalAction__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B8374.s"
}

// checkReadyItem__9daAlink_cFv
// daAlink_c::checkReadyItem(void)
asm void checkReadyItem__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B8930.s"
}

// checkItemAction__9daAlink_cFv
// daAlink_c::checkItemAction(void)
asm void checkItemAction__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B8988.s"
}

// checkRAction__9daAlink_cFv
// daAlink_c::checkRAction(void)
asm void checkRAction__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B9010.s"
}

// checkMoveDoAction__9daAlink_cFv
// daAlink_c::checkMoveDoAction(void)
asm void checkMoveDoAction__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B9018.s"
}

// checkSideRollAction__9daAlink_cFi
// daAlink_c::checkSideRollAction(int)
asm void checkSideRollAction__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B9148.s"
}

// checkNoUpperAnime__9daAlink_cCFv
// daAlink_c::checkNoUpperAnime(const void)
asm void checkNoUpperAnime__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B9254.s"
}

// checkOneHandItemEquipAnime__9daAlink_cCFv
// daAlink_c::checkOneHandItemEquipAnime(const void)
asm void checkOneHandItemEquipAnime__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B92D0.s"
}

// checkItemEquipAnime__9daAlink_cCFv
// daAlink_c::checkItemEquipAnime(const void)
asm void checkItemEquipAnime__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B92F8.s"
}

// checkEquipAnime__9daAlink_cCFv
// daAlink_c::checkEquipAnime(const void)
asm void checkEquipAnime__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B9340.s"
}

// checkWindDashAnime__9daAlink_cCFv
// daAlink_c::checkWindDashAnime(const void)
asm void checkWindDashAnime__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B9398.s"
}

// checkSwordTwirlAnime__9daAlink_cCFv
// daAlink_c::checkSwordTwirlAnime(const void)
asm void checkSwordTwirlAnime__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B93CC.s"
}

// swordEquip__9daAlink_cFi
// daAlink_c::swordEquip(int)
asm void swordEquip__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B93F4.s"
}

// swordUnequip__9daAlink_cFv
// daAlink_c::swordUnequip(void)
asm void swordUnequip__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B9580.s"
}

// itemEquip__9daAlink_cFUs
// daAlink_c::itemEquip(unsigned short)
asm void itemEquip__9daAlink_cFUs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B9640.s"
}

// itemUnequip__9daAlink_cFUsf
// daAlink_c::itemUnequip(unsigned short, float)
asm void itemUnequip__9daAlink_cFUsf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B96A4.s"
}

// checkFastUnequip__9daAlink_cFv
// daAlink_c::checkFastUnequip(void)
asm void checkFastUnequip__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B97EC.s"
}

// allUnequip__9daAlink_cFi
// daAlink_c::allUnequip(int)
asm void allUnequip__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B983C.s"
}

// checkItemChangeFromButton__9daAlink_cFv
// daAlink_c::checkItemChangeFromButton(void)
asm void checkItemChangeFromButton__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B994C.s"
}

// checkNextActionFromButton__9daAlink_cFv
// daAlink_c::checkNextActionFromButton(void)
asm void checkNextActionFromButton__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B9D2C.s"
}

// checkGroundSpecialMode__9daAlink_cFv
// daAlink_c::checkGroundSpecialMode(void)
asm void checkGroundSpecialMode__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800B9F50.s"
}

// commonCheckNextAction__9daAlink_cFi
// daAlink_c::commonCheckNextAction(int)
asm void commonCheckNextAction__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BA09C.s"
}

// checkNextAction__9daAlink_cFi
// daAlink_c::checkNextAction(int)
asm void checkNextAction__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BA0D0.s"
}

// commonChangeItem__9daAlink_cFv
// daAlink_c::commonChangeItem(void)
asm void commonChangeItem__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BA6A0.s"
}

// setItemAction__9daAlink_cFv
// daAlink_c::setItemAction(void)
asm void setItemAction__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BA914.s"
}

// checkNextActionFromCrouch__9daAlink_cFi
// daAlink_c::checkNextActionFromCrouch(int)
asm void checkNextActionFromCrouch__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BAF08.s"
}

// checkUpperReadyThrowAnime__9daAlink_cCFv
// daAlink_c::checkUpperReadyThrowAnime(const void)
asm void checkUpperReadyThrowAnime__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BAF80.s"
}

// getBodyAngleXBasePos__9daAlink_cFP4cXyz
// daAlink_c::getBodyAngleXBasePos(cXyz*)
asm void getBodyAngleXBasePos__9daAlink_cFP4cXyz(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BB020.s"
}

// getBodyAngleXAtnActor__9daAlink_cFi
// daAlink_c::getBodyAngleXAtnActor(int)
asm void getBodyAngleXAtnActor__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BB084.s"
}

// setBodyAngleXReadyAnime__9daAlink_cFi
// daAlink_c::setBodyAngleXReadyAnime(int)
asm void setBodyAngleXReadyAnime__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BB2B0.s"
}

// setMagicArmorBrk__9daAlink_cFi
// daAlink_c::setMagicArmorBrk(int)
asm void setMagicArmorBrk__9daAlink_cFi(void){nofralloc
#include "d/d_a/d_a_alink/asm/func_800BB324.s"
}

BOOL daAlink_c::checkMagicArmorHeavy(void) const {
    BOOL check = FALSE;

    if (checkMagicArmorWearAbility() != 0 &&
        g_dComIfG_gameInfo.getSaveFile().getPlayer().getPlayerStatusA().getRupee() == 0) {
        check = TRUE;
    }

    return (u8)check;
}

BOOL daAlink_c::checkBootsOrArmorHeavy(void) const {
    BOOL check = FALSE;

    if ((unk1392 & 0x2000000) != 0 || checkMagicArmorHeavy() != FALSE || unk8124 == 0x19C) {
        check = TRUE;
    }

    return (u8)check;
}

// checkHeavyStateOn__9daAlink_cFii
// daAlink_c::checkHeavyStateOn(int, int)
asm void checkHeavyStateOn__9daAlink_cFii(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BB4B8.s"
}

// setOutPower__9daAlink_cFfsi
// daAlink_c::setOutPower(float, short, int)
asm void setOutPower__9daAlink_cFfsi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BB560.s"
}

// initGravity__9daAlink_cFv
// daAlink_c::initGravity(void)
asm void initGravity__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BB644.s"
}

void daAlink_c::setSpecialGravity(float param1, float param2, int param3) {
    if (param3 != 0) {
        unk1404 &= ~0x4000;
    } else {
        unk1404 |= 0x4000;
    }
    unk1328 = param1;
    unk1332 = param2;
}

// transAnimeProc__9daAlink_cFP4cXyzff
// daAlink_c::transAnimeProc(cXyz*, float, float)
asm void transAnimeProc__9daAlink_cFP4cXyzff(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BB7A0.s"
}

// setFootSpeed__9daAlink_cFv
// daAlink_c::setFootSpeed(void)
asm void setFootSpeed__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BBD40.s"
}

// posMove__9daAlink_cFv
// daAlink_c::posMove(void)
asm void posMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BBF68.s"
}

// autoGroundHit__9daAlink_cFv
// daAlink_c::autoGroundHit(void)
asm void autoGroundHit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BD6FC.s"
}

// startPeepChange__9daAlink_cFv
// daAlink_c::startPeepChange(void)
asm void startPeepChange__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BDD70.s"
}

// setLastSceneDamage__9daAlink_cFiPUl
// daAlink_c::setLastSceneDamage(int, unsigned long*)
asm void setLastSceneDamage__9daAlink_cFiPUl(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BDE20.s"
}

// setLastSceneMode__9daAlink_cFPUl
// daAlink_c::setLastSceneMode(unsigned long*)
asm void setLastSceneMode__9daAlink_cFPUl(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BDE48.s"
}

// startRestartRoom__9daAlink_cFUliii
// daAlink_c::startRestartRoom(unsigned long, int, int, int)
asm void startRestartRoom__9daAlink_cFUliii(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BDF60.s"
}

// checkCoachGuardGame__9daAlink_cFv
// daAlink_c::checkCoachGuardGame(void)
asm void checkCoachGuardGame__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BE26C.s"
}

// checkRoofRestart__9daAlink_cFv
// daAlink_c::checkRoofRestart(void)
asm void checkRoofRestart__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BE2C0.s"
}

// checkRestartRoom__9daAlink_cFv
// daAlink_c::checkRestartRoom(void)
asm void checkRestartRoom__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BE3E4.s"
}

// getSceneExitMoveAngle__9daAlink_cFv
// daAlink_c::getSceneExitMoveAngle(void)
asm void getSceneExitMoveAngle__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BE9D4.s"
}

// checkSceneChange__9daAlink_cFi
// daAlink_c::checkSceneChange(int)
asm void checkSceneChange__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BEAF8.s"
}

// voiceStart__9daAlink_cFUl
// daAlink_c::voiceStart(unsigned long)
asm void voiceStart__9daAlink_cFUl(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BF084.s"
}

// voiceStartLevel__9daAlink_cFUl
// daAlink_c::voiceStartLevel(unsigned long)
asm void voiceStartLevel__9daAlink_cFUl(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BF0B8.s"
}

// seStartSwordCut__9daAlink_cFUl
// daAlink_c::seStartSwordCut(unsigned long)
asm void seStartSwordCut__9daAlink_cFUl(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BF0EC.s"
}

// seStartOnlyReverb__9daAlink_cFUl
// daAlink_c::seStartOnlyReverb(unsigned long)
asm void seStartOnlyReverb__9daAlink_cFUl(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BF124.s"
}

// seStartOnlyReverbLevel__9daAlink_cFUl
// daAlink_c::seStartOnlyReverbLevel(unsigned long)
asm void seStartOnlyReverbLevel__9daAlink_cFUl(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BF15C.s"
}

// seStartMapInfo__9daAlink_cFUl
// daAlink_c::seStartMapInfo(unsigned long)
asm void seStartMapInfo__9daAlink_cFUl(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BF194.s"
}

// seStartMapInfoLevel__9daAlink_cFUl
// daAlink_c::seStartMapInfoLevel(unsigned long)
asm void seStartMapInfoLevel__9daAlink_cFUl(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BF1CC.s"
}

// setBasAnime__9daAlink_cFQ29daAlink_c13daAlink_UNDER
asm void setBasAnime__9daAlink_cFQ29daAlink_c13daAlink_UNDER(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BF204.s"
}

// initBasAnime__9daAlink_cFv
// daAlink_c::initBasAnime(void)
asm void initBasAnime__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BF37C.s"
}

// resetBasAnime__9daAlink_cFv
// daAlink_c::resetBasAnime(void)
asm void resetBasAnime__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BF4E0.s"
}

// checkSightLine__9daAlink_cFfP4cXyz
// daAlink_c::checkSightLine(float, cXyz*)
asm void checkSightLine__9daAlink_cFfP4cXyz(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BF500.s"
}

// setMetamorphoseModel__9daAlink_cFi
// daAlink_c::setMetamorphoseModel(int)
asm void setMetamorphoseModel__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BF79C.s"
}

// keepItemData__9daAlink_cFv
// daAlink_c::keepItemData(void)
asm void keepItemData__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BF854.s"
}

// returnKeepItemData__9daAlink_cFv
// daAlink_c::returnKeepItemData(void)
asm void returnKeepItemData__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BF884.s"
}

// setItemModel__9daAlink_cFv
// daAlink_c::setItemModel(void)
asm void setItemModel__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BF8D0.s"
}

// setItemActor__9daAlink_cFv
// daAlink_c::setItemActor(void)
asm void setItemActor__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BF9F0.s"
}

// makeItemType__9daAlink_cFv
// daAlink_c::makeItemType(void)
asm void makeItemType__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BFD74.s"
}

// checkZoraWearAbility__9daAlink_cCFv
// daAlink_c::checkZoraWearAbility(const void)
asm void checkZoraWearAbility__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BFDB0.s"
}

// checkMagicArmorWearAbility__9daAlink_cCFv
// daAlink_c::checkMagicArmorWearAbility(const void)
// close
#ifdef NONMATCHING
int daAlink_c::checkMagicArmorWearAbility(void) const {
    bool uvar = false;
    bool bvar = false;

    if ((unk1396 & 0x2000000) == 0) {
        if (g_dComIfG_gameInfo.info.getSaveFile().getPlayer().getPlayerStatusA().getEquipment(0) ==
            48) {
            bvar = true;
        }
    }
    if (bvar && (unk1400 & 0x80000) == 0) {
        uvar = true;
    }
    return uvar;
}
#else
asm int daAlink_c::checkMagicArmorWearAbility(void) const {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BFDFC.s"
}
#endif

// loadAramBmd__9daAlink_cFUsUl
// daAlink_c::loadAramBmd(unsigned short, unsigned long)
asm void loadAramBmd__9daAlink_cFUsUl(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BFE48.s"
}

// loadAram__9daAlink_cFUsUl
// daAlink_c::loadAram(unsigned short, unsigned long)
asm void loadAram__9daAlink_cFUsUl(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BFF04.s"
}

// loadAramItemBrk__9daAlink_cFUsP8J3DModel
// daAlink_c::loadAramItemBrk(unsigned short, J3DModel*)
asm void loadAramItemBrk__9daAlink_cFUsP8J3DModel(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BFF70.s"
}

// loadAramItemBtk__9daAlink_cFUsP8J3DModel
// daAlink_c::loadAramItemBtk(unsigned short, J3DModel*)
asm void loadAramItemBtk__9daAlink_cFUsP8J3DModel(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800BFFCC.s"
}

// loadAramItemBtp__9daAlink_cFUsP8J3DModel
// daAlink_c::loadAramItemBtp(unsigned short, J3DModel*)
asm void loadAramItemBtp__9daAlink_cFUsP8J3DModel(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C0028.s"
}

// changeItemBck__9daAlink_cFUsf
// daAlink_c::changeItemBck(unsigned short, float)
asm void changeItemBck__9daAlink_cFUsf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C0084.s"
}

// checkGroupItem__9daAlink_cCFii
// daAlink_c::checkGroupItem(const int, int)
asm void checkGroupItem__9daAlink_cCFii(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C0114.s"
}

// checkSetItemTrigger__9daAlink_cFi
// daAlink_c::checkSetItemTrigger(int)
asm void checkSetItemTrigger__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C0164.s"
}

// checkItemSetButton__9daAlink_cFi
// daAlink_c::checkItemSetButton(int)
asm void checkItemSetButton__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C0208.s"
}

// checkField__9daAlink_cFv
// daAlink_c::checkField(void)
asm void checkField__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C0284.s"
}

// checkBossRoom__9daAlink_cFv
// daAlink_c::checkBossRoom(void)
asm void checkBossRoom__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C02C8.s"
}

// checkDungeon__9daAlink_cFv
// daAlink_c::checkDungeon(void)
asm void checkDungeon__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C0310.s"
}

// checkCastleTown__9daAlink_cFv
// daAlink_c::checkCastleTown(void)
asm void checkCastleTown__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C0358.s"
}

// checkCloudSea__9daAlink_cFv
// daAlink_c::checkCloudSea(void)
asm void checkCloudSea__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C03A0.s"
}

// checkRoomOnly__9daAlink_cFv
// daAlink_c::checkRoomOnly(void)
asm void checkRoomOnly__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C03E8.s"
}

// checkLv2DungeonRoomSpecial__9daAlink_cFv
// daAlink_c::checkLv2DungeonRoomSpecial(void)
#ifdef NONMATCHING
bool daAlink_c::checkLv2DungeonRoomSpecial(void) {
    bool check = 0;

    // lbl_80392094 needs to be in r3 instead of r4
    if (checkStageName(lbl_80392094.lv2) &&
        (lbl_80450D64 == 14 || lbl_80450D64 == 16 || lbl_80450D64 == 17)) {
        check = 1;
    }

    return check;
}
#else
asm void checkLv2DungeonRoomSpecial__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C044C.s"
}
#endif

// checkRoomSpecial__9daAlink_cFv
// daAlink_c::checkRoomSpecial(void)
asm void checkRoomSpecial__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C04B4.s"
}

// checkRoom__9daAlink_cFv
// daAlink_c::checkRoom(void)
asm void checkRoom__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C0520.s"
}

// checkNotBattleStage__9daAlink_cFv
// daAlink_c::checkNotBattleStage(void)
asm void checkNotBattleStage__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C0594.s"
}

// checkNotHeavyBootsStage__9daAlink_cFv
// daAlink_c::checkNotHeavyBootsStage(void)
asm void checkNotHeavyBootsStage__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C05DC.s"
}

// checkNotAutoJumpStage__9daAlink_cFv
// daAlink_c::checkNotAutoJumpStage(void)
asm void checkNotAutoJumpStage__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C0630.s"
}

// checkCastleTownUseItem__9daAlink_cFUs
// daAlink_c::checkCastleTownUseItem(unsigned short)
asm void checkCastleTownUseItem__9daAlink_cFUs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C0678.s"
}

// changeItemTriggerKeepProc__9daAlink_cFUci
// daAlink_c::changeItemTriggerKeepProc(unsigned char, int)
asm void changeItemTriggerKeepProc__9daAlink_cFUci(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C077C.s"
}

// checkNewItemChange__9daAlink_cFUc
// daAlink_c::checkNewItemChange(unsigned char)
asm void checkNewItemChange__9daAlink_cFUc(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C0A9C.s"
}

// deleteEquipItem__9daAlink_cFii
// daAlink_c::deleteEquipItem(int, int)
asm void deleteEquipItem__9daAlink_cFii(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C12DC.s"
}

// setLight__9daAlink_cFv
// daAlink_c::setLight(void)
asm void setLight__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C1704.s"
}

// setFrontRollCrashShock__9daAlink_cFUc
// daAlink_c::setFrontRollCrashShock(unsigned char)
asm void setFrontRollCrashShock__9daAlink_cFUc(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C1CEC.s"
}

// getModelJointMtx__9daAlink_cFUs
// daAlink_c::getModelJointMtx(unsigned short)
asm void getModelJointMtx__9daAlink_cFUs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C1DAC.s"
}

void daAlink_c::onFrollCrashFlg(u8 param1, int param2) {
    if (param2 != 0) {
        unk1392 |= 16;
    } else {
        unk1392 |= 8;
    }
    unk12196 = param1;
}
//
// changeWarpMaterial__9daAlink_cFQ29daAlink_c21daAlink_WARP_MAT_MODE
asm void changeWarpMaterial__9daAlink_cFQ29daAlink_c21daAlink_WARP_MAT_MODE(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C1E0C.s"
}

// commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
asm void commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C1F6C.s"
}

// commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
asm void commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C2DA4.s"
}

// procPreActionUnequipInit__9daAlink_cFiP10fopAc_ac_c
// daAlink_c::procPreActionUnequipInit(int, fopAc_ac_c*)
asm void procPreActionUnequipInit__9daAlink_cFiP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C2DDC.s"
}

// procPreActionUnequip__9daAlink_cFv
// daAlink_c::procPreActionUnequip(void)
asm void procPreActionUnequip__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C2EAC.s"
}

// procServiceWaitInit__9daAlink_cFv
// daAlink_c::procServiceWaitInit(void)
asm void procServiceWaitInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C3098.s"
}

// procServiceWait__9daAlink_cFv
// daAlink_c::procServiceWait(void)
asm void procServiceWait__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C30F0.s"
}

// procTiredWaitInit__9daAlink_cFv
// daAlink_c::procTiredWaitInit(void)
asm void procTiredWaitInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C3224.s"
}

// procTiredWait__9daAlink_cFv
// daAlink_c::procTiredWait(void)
asm void procTiredWait__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C3338.s"
}

// procWaitInit__9daAlink_cFv
// daAlink_c::procWaitInit(void)
asm void procWaitInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C33B8.s"
}

// procWait__9daAlink_cFv
// daAlink_c::procWait(void)
asm void procWait__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C3504.s"
}

// procMoveInit__9daAlink_cFv
// daAlink_c::procMoveInit(void)
asm void procMoveInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C36CC.s"
}

// procMove__9daAlink_cFv
// daAlink_c::procMove(void)
asm void procMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C3730.s"
}

// procAtnMoveInit__9daAlink_cFv
// daAlink_c::procAtnMoveInit(void)
asm void procAtnMoveInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C3810.s"
}

// procAtnMove__9daAlink_cFv
// daAlink_c::procAtnMove(void)
asm void procAtnMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C3868.s"
}

// procAtnActorWaitInit__9daAlink_cFv
// daAlink_c::procAtnActorWaitInit(void)
asm void procAtnActorWaitInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C38CC.s"
}

// procAtnActorWait__9daAlink_cFv
// daAlink_c::procAtnActorWait(void)
asm void procAtnActorWait__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C397C.s"
}

// procAtnActorMoveInit__9daAlink_cFv
// daAlink_c::procAtnActorMoveInit(void)
asm void procAtnActorMoveInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C39EC.s"
}

// procAtnActorMove__9daAlink_cFv
// daAlink_c::procAtnActorMove(void)
asm void procAtnActorMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C3A44.s"
}

// procWaitTurnInit__9daAlink_cFv
// daAlink_c::procWaitTurnInit(void)
asm void procWaitTurnInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C3A94.s"
}

// procWaitTurn__9daAlink_cFv
// daAlink_c::procWaitTurn(void)
asm void procWaitTurn__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C3B1C.s"
}

// procMoveTurnInit__9daAlink_cFi
// daAlink_c::procMoveTurnInit(int)
asm void procMoveTurnInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C3C3C.s"
}

// procMoveTurn__9daAlink_cFv
// daAlink_c::procMoveTurn(void)
asm void procMoveTurn__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C3D38.s"
}

// procSideStepInit__9daAlink_cFi
// daAlink_c::procSideStepInit(int)
asm void procSideStepInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C3DA0.s"
}

// procSideStep__9daAlink_cFv
// daAlink_c::procSideStep(void)
asm void procSideStep__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C3F60.s"
}

// procSideStepLandInit__9daAlink_cFv
// daAlink_c::procSideStepLandInit(void)
asm void procSideStepLandInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C40F0.s"
}

// procSideStepLand__9daAlink_cFv
// daAlink_c::procSideStepLand(void)
asm void procSideStepLand__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C4278.s"
}

// procSlideInit__9daAlink_cFs
// daAlink_c::procSlideInit(short)
asm void procSlideInit__9daAlink_cFs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C4378.s"
}

// procSlide__9daAlink_cFv
// daAlink_c::procSlide(void)
asm void procSlide__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C4514.s"
}

// procSlideLandInit__9daAlink_cFi
// daAlink_c::procSlideLandInit(int)
asm void procSlideLandInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C47AC.s"
}

// procSlideLand__9daAlink_cFv
// daAlink_c::procSlideLand(void)
asm void procSlideLand__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C4894.s"
}

// procFrontRollInit__9daAlink_cFv
// daAlink_c::procFrontRollInit(void)
asm void procFrontRollInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C494C.s"
}

// procFrontRoll__9daAlink_cFv
// daAlink_c::procFrontRoll(void)
asm void procFrontRoll__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C4B40.s"
}

// procFrontRollCrashInit__9daAlink_cFv
// daAlink_c::procFrontRollCrashInit(void)
asm void procFrontRollCrashInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C4F14.s"
}

// procFrontRollCrash__9daAlink_cFv
// daAlink_c::procFrontRollCrash(void)
asm void procFrontRollCrash__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C4FFC.s"
}

// procFrontRollSuccessInit__9daAlink_cFv
// daAlink_c::procFrontRollSuccessInit(void)
asm void procFrontRollSuccessInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C5160.s"
}

// procFrontRollSuccess__9daAlink_cFv
// daAlink_c::procFrontRollSuccess(void)
asm void procFrontRollSuccess__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C5240.s"
}

// procSideRollInit__9daAlink_cFi
// daAlink_c::procSideRollInit(int)
asm void procSideRollInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C5328.s"
}

// procSideRoll__9daAlink_cFv
// daAlink_c::procSideRoll(void)
asm void procSideRoll__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C5484.s"
}

// backJumpSpeedDec__9daAlink_cFv
// daAlink_c::backJumpSpeedDec(void)
asm void backJumpSpeedDec__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C5700.s"
}

// procBackJumpInit__9daAlink_cFi
// daAlink_c::procBackJumpInit(int)
asm void procBackJumpInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C57A4.s"
}

// procBackJump__9daAlink_cFv
// daAlink_c::procBackJump(void)
asm void procBackJump__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C5964.s"
}

// procBackJumpLandInit__9daAlink_cFi
// daAlink_c::procBackJumpLandInit(int)
asm void procBackJumpLandInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C5A54.s"
}

// procBackJumpLand__9daAlink_cFv
// daAlink_c::procBackJumpLand(void)
asm void procBackJumpLand__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C5AF0.s"
}

// procSlipInit__9daAlink_cFv
// daAlink_c::procSlipInit(void)
asm void procSlipInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C5C28.s"
}

// procSlip__9daAlink_cFv
// daAlink_c::procSlip(void)
asm void procSlip__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C5CA4.s"
}

// procAutoJumpInit__9daAlink_cFi
// daAlink_c::procAutoJumpInit(int)
asm void procAutoJumpInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C5E68.s"
}

// procAutoJump__9daAlink_cFv
// daAlink_c::procAutoJump(void)
asm void procAutoJump__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C61EC.s"
}

// procDiveJumpInit__9daAlink_cFv
// daAlink_c::procDiveJumpInit(void)
asm void procDiveJumpInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C66DC.s"
}

// procDiveJump__9daAlink_cFv
// daAlink_c::procDiveJump(void)
asm void procDiveJump__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C6798.s"
}

// procRollJumpInit__9daAlink_cFv
// daAlink_c::procRollJumpInit(void)
asm void procRollJumpInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C6850.s"
}

// procRollJump__9daAlink_cFv
// daAlink_c::procRollJump(void)
asm void procRollJump__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C692C.s"
}

// procFallInit__9daAlink_cFif
// daAlink_c::procFallInit(int, float)
asm void procFallInit__9daAlink_cFif(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C6A48.s"
}

// procFall__9daAlink_cFv
// daAlink_c::procFall(void)
asm void procFall__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C6D20.s"
}

// procLandInit__9daAlink_cFf
// daAlink_c::procLandInit(float)
asm void procLandInit__9daAlink_cFf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C6F18.s"
}

// procLand__9daAlink_cFv
// daAlink_c::procLand(void)
asm void procLand__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C6FE4.s"
}

// procSmallJumpInit__9daAlink_cFi
// daAlink_c::procSmallJumpInit(int)
asm void procSmallJumpInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C70F8.s"
}

// procSmallJump__9daAlink_cFv
// daAlink_c::procSmallJump(void)
asm void procSmallJump__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C72D4.s"
}

// procStepMoveInit__9daAlink_cFv
// daAlink_c::procStepMoveInit(void)
asm void procStepMoveInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C74D4.s"
}

// procStepMove__9daAlink_cFv
// daAlink_c::procStepMove(void)
asm void procStepMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C755C.s"
}

// procCrouchInit__9daAlink_cFv
// daAlink_c::procCrouchInit(void)
asm void procCrouchInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C7690.s"
}

// procCrouch__9daAlink_cFv
// daAlink_c::procCrouch(void)
asm void procCrouch__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C76F8.s"
}

// procCoMetamorphoseInit__9daAlink_cFv
// daAlink_c::procCoMetamorphoseInit(void)
asm void procCoMetamorphoseInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C77F4.s"
}

// procCoMetamorphose__9daAlink_cFv
// daAlink_c::procCoMetamorphose(void)
asm void procCoMetamorphose__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C7C64.s"
}

// procCoMetamorphoseOnlyInit__9daAlink_cFv
// daAlink_c::procCoMetamorphoseOnlyInit(void)
asm void procCoMetamorphoseOnlyInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C82E8.s"
}

// procCoMetamorphoseOnly__9daAlink_cFv
// daAlink_c::procCoMetamorphoseOnly(void)
asm void procCoMetamorphoseOnly__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C83A0.s"
}

// procFloorDownReboundInit__9daAlink_cFv
// daAlink_c::procFloorDownReboundInit(void)
asm void procFloorDownReboundInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C8460.s"
}

// procFloorDownRebound__9daAlink_cFv
// daAlink_c::procFloorDownRebound(void)
asm void procFloorDownRebound__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C84D0.s"
}

// procGoronRideWaitInit__9daAlink_cFP10fopAc_ac_c
// daAlink_c::procGoronRideWaitInit(fopAc_ac_c*)
asm void procGoronRideWaitInit__9daAlink_cFP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C854C.s"
}

// procGoronRideWait__9daAlink_cFv
// daAlink_c::procGoronRideWait(void)
asm void procGoronRideWait__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C85D8.s"
}

// execute__9daAlink_cFv
// daAlink_c::execute(void)
asm void execute__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800C8700.s"
}

// daAlink_Execute__FP9daAlink_c
// daAlink_Execute(daAlink_c*)
asm void daAlink_Execute__FP9daAlink_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CAFA8.s"
}

// setDrawHand__9daAlink_cFv
// daAlink_c::setDrawHand(void)
asm void setDrawHand__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CAFC8.s"
}

// checkSwordDraw__9daAlink_cFv
// daAlink_c::checkSwordDraw(void)
asm void checkSwordDraw__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CB480.s"
}

// checkShieldDraw__9daAlink_cFv
// daAlink_c::checkShieldDraw(void)
asm void checkShieldDraw__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CB53C.s"
}

// checkItemDraw__9daAlink_cFv
// daAlink_c::checkItemDraw(void)
asm void checkItemDraw__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CB5F8.s"
}

// initShadowScaleLight__9daAlink_cFv
// daAlink_c::initShadowScaleLight(void)
asm void initShadowScaleLight__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CB694.s"
}

// moveShadowScaleLight__9daAlink_cFv
// daAlink_c::moveShadowScaleLight(void)
asm void moveShadowScaleLight__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CBA38.s"
}

// shadowDraw__9daAlink_cFv
// daAlink_c::shadowDraw(void)
asm void shadowDraw__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CBC18.s"
}

// modelCalc__9daAlink_cFP8J3DModel
// daAlink_c::modelCalc(J3DModel*)
asm void modelCalc__9daAlink_cFP8J3DModel(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CC25C.s"
}

// basicModelDraw__9daAlink_cFP8J3DModel
// daAlink_c::basicModelDraw(J3DModel*)
asm void basicModelDraw__9daAlink_cFP8J3DModel(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CC298.s"
}

// modelDraw__9daAlink_cFP8J3DModeli
// daAlink_c::modelDraw(J3DModel*, int)
asm void modelDraw__9daAlink_cFP8J3DModeli(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CC2E0.s"
}

// setWaterDropColor__9daAlink_cFPC13J3DGXColorS10
// daAlink_c::setWaterDropColor(const J3DGXColorS10*)
asm void setWaterDropColor__9daAlink_cFPC13J3DGXColorS10(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CC364.s"
}

// initTevCustomColor__9daAlink_cFv
// daAlink_c::initTevCustomColor(void)
asm void initTevCustomColor__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CC7DC.s"
}

// draw__9daAlink_cFv
// daAlink_c::draw(void)
asm void draw__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CC7FC.s"
}

// daAlink_Draw__FP9daAlink_c
// daAlink_Draw(daAlink_c*)
asm void daAlink_Draw__FP9daAlink_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CD78C.s"
}

// __dt__9daAlink_cFv
// daAlink_c::~daAlink_c(void)
asm void __dt__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CD7AC.s"
}

// daAlink_Delete__FP9daAlink_c
// daAlink_Delete(daAlink_c*)
asm void daAlink_Delete__FP9daAlink_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CE208.s"
}

// checkNoSubjectModeCamera__9daAlink_cFv
// daAlink_c::checkNoSubjectModeCamera(void)
asm void checkNoSubjectModeCamera__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CE294.s"
}

// acceptSubjectModeChange__9daAlink_cFv
// daAlink_c::acceptSubjectModeChange(void)
asm void acceptSubjectModeChange__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CE468.s"
}

// checkSubjectAction__9daAlink_cFv
// daAlink_c::checkSubjectAction(void)
asm void checkSubjectAction__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CE628.s"
}

// checkBodyAngleX__9daAlink_cFs
// daAlink_c::checkBodyAngleX(short)
asm void checkBodyAngleX__9daAlink_cFs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CE728.s"
}

// setBodyAngleToCamera__9daAlink_cFv
// daAlink_c::setBodyAngleToCamera(void)
asm void setBodyAngleToCamera__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CE8A0.s"
}

// setSubjectMode__9daAlink_cFv
// daAlink_c::setSubjectMode(void)
asm void setSubjectMode__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CEAF4.s"
}

// subjectCancelTrigger__9daAlink_cFv
// daAlink_c::subjectCancelTrigger(void)
asm void subjectCancelTrigger__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CEB58.s"
}

// checkSubjectEnd__9daAlink_cFi
// daAlink_c::checkSubjectEnd(int)
asm void checkSubjectEnd__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CEBD8.s"
}

// searchPeepObj__9daAlink_cFP10fopAc_ac_cPv
// daAlink_c::searchPeepObj(fopAc_ac_c*, void*)
asm void searchPeepObj__9daAlink_cFP10fopAc_ac_cPv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CECE4.s"
}

// daAlink_searchPeepObj__FP10fopAc_ac_cPv
// daAlink_searchPeepObj__FP10fopAc_ac_cPv(fopAc_ac_c*, void*)
asm void daAlink_searchPeepObj__FP10fopAc_ac_cPv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CED48.s"
}

// procCoSubjectivityInit__9daAlink_cFv
// daAlink_c::procCoSubjectivityInit(void)
asm void procCoSubjectivityInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CED84.s"
}

// procCoSubjectivity__9daAlink_cFv
// daAlink_c::procCoSubjectivity(void)
asm void procCoSubjectivity__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CEE08.s"
}

// procCoSwimSubjectivityInit__9daAlink_cFv
// daAlink_c::procCoSwimSubjectivityInit(void)
asm void procCoSwimSubjectivityInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CEF70.s"
}

// procCoSwimSubjectivity__9daAlink_cFv
// daAlink_c::procCoSwimSubjectivity(void)
asm void procCoSwimSubjectivity__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CF018.s"
}

// procCoPeepSubjectivityInit__9daAlink_cFv
// daAlink_c::procCoPeepSubjectivityInit(void)
asm void procCoPeepSubjectivityInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CF100.s"
}

// procCoPeepSubjectivity__9daAlink_cFv
// daAlink_c::procCoPeepSubjectivity(void)
asm void procCoPeepSubjectivity__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CF1B8.s"
}

// checkBoardRide__9daAlink_cCFv
// daAlink_c::checkBoardRide(const void)
asm void checkBoardRide__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CF25C.s"
}

// checkCanoeRide__9daAlink_cCFv
// daAlink_c::checkCanoeRide(const void)
asm void checkCanoeRide__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CF270.s"
}

// checkHorseRide__9daAlink_cCFv
// daAlink_c::checkHorseRide(const void)
asm void checkHorseRide__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CF284.s"
}

// getLeftItemMatrix__9daAlink_cFv
// daAlink_c::getLeftItemMatrix(void)
asm void getLeftItemMatrix__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CF298.s"
}

// checkBoarRide__9daAlink_cCFv
// daAlink_c::checkBoarRide(const void)
asm void checkBoarRide__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CF2B4.s"
}

// checkSpinnerRide__9daAlink_cCFv
// daAlink_c::checkSpinnerRide(const void)
asm void checkSpinnerRide__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CF2C8.s"
}

// getLeftHandMatrix__9daAlink_cFv
// daAlink_c::getLeftHandMatrix(void)
asm void getLeftHandMatrix__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CF2DC.s"
}

// getRightHandMatrix__9daAlink_cFv
// daAlink_c::getRightHandMatrix(void)
asm void getRightHandMatrix__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CF2F8.s"
}

// onSceneChangeArea__9daAlink_cFUcUcP10fopAc_ac_c
// daAlink_c::onSceneChangeArea(unsigned char, unsigned char, fopAc_ac_c*)
asm void onSceneChangeArea__9daAlink_cFUcUcP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CF314.s"
}

// getRightItemMatrix__9daAlink_cFv
// daAlink_c::getRightItemMatrix(void)
asm void getRightItemMatrix__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CF328.s"
}

// checkPlayerNoDraw__9daAlink_cFv
// daAlink_c::checkPlayerNoDraw(void)
asm void checkPlayerNoDraw__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CF344.s"
}

// __ct__9daAlink_cFv
// daAlink_c::daAlink_c(void)
asm void __ct__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CF380.s"
}

// __dt__Q29daAlink_c14firePointEff_cFv
asm void __dt__Q29daAlink_c14firePointEff_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CFC3C.s"
}

// __ct__Q29daAlink_c14firePointEff_cFv
asm void __ct__Q29daAlink_c14firePointEff_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CFC78.s"
}

// __dt__15LIGHT_INFLUENCEFv
// LIGHT_INFLUENCE::~LIGHT_INFLUENCE(void)
asm void __dt__15LIGHT_INFLUENCEFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CFC7C.s"
}

// __dt__18daAlink_footData_cFv
// daAlink_footData_c::~daAlink_footData_c(void)
asm void __dt__18daAlink_footData_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CFCB8.s"
}

// __ct__18daAlink_footData_cFv
// daAlink_footData_c::daAlink_footData_c(void)
asm void __ct__18daAlink_footData_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CFCF4.s"
}

// __dt__29dAlink_bottleWaterPcallBack_cFv
// dAlink_bottleWaterPcallBack_c::~dAlink_bottleWaterPcallBack_c(void)
asm void __dt__29dAlink_bottleWaterPcallBack_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CFCF8.s"
}

// __dt__14daAlink_blur_cFv
// daAlink_blur_c::~daAlink_blur_c(void)
asm void __dt__14daAlink_blur_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CFD58.s"
}

// __dt__15daAlink_sight_cFv
// daAlink_sight_c::~daAlink_sight_c(void)
asm void __dt__15daAlink_sight_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CFDF4.s"
}

// __dt__20daAlink_lockCursor_cFv
// daAlink_lockCursor_c::~daAlink_lockCursor_c(void)
asm void __dt__20daAlink_lockCursor_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CFE68.s"
}

// checkRideOn__9daAlink_cCFv
// daAlink_c::checkRideOn(const void)
asm void checkRideOn__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CFEB0.s"
}

// dComIfGp_att_getCatghTarget__Fv
// dComIfGp_att_getCatghTarget__Fv(void)
asm void dComIfGp_att_getCatghTarget__Fv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CFEC4.s"
}

// mDoAud_setLinkHp__Fll
// mDoAud_setLinkHp__Fll(long, long)
asm void mDoAud_setLinkHp__Fll(void){nofralloc
#include "d/d_a/d_a_alink/asm/func_800CFEF4.s"
}

u16 dComIfGs_getLife__Fv(void) {
    return g_dComIfG_gameInfo.getSaveFile().getPlayerStatusA().getLife();
}

u8 dComIfGp_getRStatus__Fv(void) {
    return g_dComIfG_gameInfo.getPlay().getRStatus();
}

// checkAttentionLock__9daAlink_cFv
// daAlink_c::checkAttentionLock(void)
asm void checkAttentionLock__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CFF4C.s"
}

void dComIfGp_setItemLifeCount(float amount, u8 unk) {
    g_dComIfG_gameInfo.getPlay().setItemLifeCount(amount, unk);
}

// cMtx_multVec__FPA4_CfPC3VecP3Vec
asm void cMtx_multVec__FPA4_CfPC3VecP3Vec(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CFFC0.s"
}

// getAnmMtx__8J3DModelFi
// J3DModel::getAnmMtx(int)
asm void getAnmMtx__8J3DModelFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CFFE0.s"
}

// setBaseTRMtx__8J3DModelFPA4_f
asm void setBaseTRMtx__8J3DModelFPA4_f(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800CFFF4.s"
}

// checkFmChainGrabAnime__9daAlink_cCFv
// daAlink_c::checkFmChainGrabAnime(const void)
asm void checkFmChainGrabAnime__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0020.s"
}

// checkSmallUpperGuardAnime__9daAlink_cCFv
// daAlink_c::checkSmallUpperGuardAnime(const void)
asm void checkSmallUpperGuardAnime__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0048.s"
}

// dComIfGp_evmng_startCheck__FPCc
// dComIfGp_evmng_startCheck__FPCc(const char*)
asm void dComIfGp_evmng_startCheck__FPCc(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D005C.s"
}

// mDoAud_setLinkGroupInfo__FUc
// mDoAud_setLinkGroupInfo__FUc(unsigned char)
asm void mDoAud_setLinkGroupInfo__FUc(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D008C.s"
}

// getAnm__25mDoExt_MtxCalcAnmBlendTblFi
// mDoExt_MtxCalcAnmBlendTbl::getAnm(int)
asm void getAnm__25mDoExt_MtxCalcAnmBlendTblFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D00BC.s"
}

// ChkRoofHit__9dBgS_AcchCFv
// dBgS_Acch::ChkRoofHit(const void)
asm void ChkRoofHit__9dBgS_AcchCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D00D0.s"
}

// ClrGroundHit__9dBgS_AcchFv
// dBgS_Acch::ClrGroundHit(void)
asm void ClrGroundHit__9dBgS_AcchFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D00DC.s"
}

// checkReinRide__9daAlink_cCFv
// daAlink_c::checkReinRide(const void)
asm void checkReinRide__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D00EC.s"
}

// checkWolfEnemyThrowAnime__9daAlink_cCFv
// daAlink_c::checkWolfEnemyThrowAnime(const void)
asm void checkWolfEnemyThrowAnime__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0110.s"
}

// checkSpecialDemoMode__9daAlink_cCFv
// daAlink_c::checkSpecialDemoMode(const void)
asm void checkSpecialDemoMode__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0138.s"
}

void daAlink_c::setMidnaTalkStatus(u8 status) {
    dComIfGp_setZStatus(status, 0);
}

// set3DStatus__9daAlink_cFUcUc
// daAlink_c::set3DStatus(unsigned char, unsigned char)
asm void set3DStatus__9daAlink_cFUcUc(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0164.s"
}

// offSetFlg__16daAlink_matAnm_cFv
// daAlink_matAnm_c::offSetFlg(void)
asm void offSetFlg__16daAlink_matAnm_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0180.s"
}

// checkModeFlg__9daAlink_cCFUl
// daAlink_c::checkModeFlg(const unsigned long)
asm void checkModeFlg__9daAlink_cCFUl(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D018C.s"
}

// getShieldChangeWaitTimer__9daAlink_cCFv
// daAlink_c::getShieldChangeWaitTimer(const void)
asm void getShieldChangeWaitTimer__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0198.s"
}

// getClothesChangeWaitTimer__9daAlink_cCFv
// daAlink_c::getClothesChangeWaitTimer(const void)
asm void getClothesChangeWaitTimer__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D01A0.s"
}

// checkHorseStart__9daAlink_cFv
// daAlink_c::checkHorseStart(void)
asm void checkHorseStart__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D01A8.s"
}

// checkCutTurnCharge__9daAlink_cCFv
// daAlink_c::checkCutTurnCharge(const void)
asm void checkCutTurnCharge__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D01E0.s"
}

// checkAcceptDungeonWarpAlink__9daAlink_cFi
// daAlink_c::checkAcceptDungeonWarpAlink(int)
asm void checkAcceptDungeonWarpAlink__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0208.s"
}

// getSpinnerActor__9daAlink_cFv
// daAlink_c::getSpinnerActor(void)
asm void getSpinnerActor__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0228.s"
}

// getSumouCounter__9daAlink_cCFv
// daAlink_c::getSumouCounter(const void)
asm void getSumouCounter__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0274.s"
}

// checkSumouWithstand__9daAlink_cCFv
// daAlink_c::checkSumouWithstand(const void)
asm void checkSumouWithstand__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D027C.s"
}

// setMidnaMsgNum__9daAlink_cFP10fopAc_ac_cUs
// daAlink_c::setMidnaMsgNum(fopAc_ac_c*, unsigned short)
asm void setMidnaMsgNum__9daAlink_cFP10fopAc_ac_cUs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0284.s"
}

// getModelMtx__9daAlink_cFv
// daAlink_c::getModelMtx(void)
asm void getModelMtx__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0290.s"
}

// getInvMtx__9daAlink_cFv
// daAlink_c::getInvMtx(void)
asm void getInvMtx__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D029C.s"
}

// getLinkBackBone1Matrix__9daAlink_cFv
// daAlink_c::getLinkBackBone1Matrix(void)
asm void getLinkBackBone1Matrix__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D02A4.s"
}

// getWolfMouthMatrix__9daAlink_cFv
// daAlink_c::getWolfMouthMatrix(void)
asm void getWolfMouthMatrix__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D02B8.s"
}

// getWolfBackbone2Matrix__9daAlink_cFv
// daAlink_c::getWolfBackbone2Matrix(void)
asm void getWolfBackbone2Matrix__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D02CC.s"
}

// getBottleMtx__9daAlink_cFv
// daAlink_c::getBottleMtx(void)
asm void getBottleMtx__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D02E0.s"
}

// getHeadMtx__9daAlink_cFv
// daAlink_c::getHeadMtx(void)
asm void getHeadMtx__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0334.s"
}

// getGroundY__9daAlink_cFv
// daAlink_c::getGroundY(void)
asm void getGroundY__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0350.s"
}

// getBaseAnimeFrameRate__9daAlink_cCFv
// daAlink_c::getBaseAnimeFrameRate(const void)
asm void getBaseAnimeFrameRate__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0358.s"
}

// getAtnActorID__9daAlink_cCFv
// daAlink_c::getAtnActorID(const void)
asm void getAtnActorID__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0360.s"
}

// getItemID__9daAlink_cCFv
// daAlink_c::getItemID(const void)
asm void getItemID__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0368.s"
}

// getGrabActorID__9daAlink_cCFv
// daAlink_c::getGrabActorID(const void)
asm void getGrabActorID__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0370.s"
}

// setForcePutPos__9daAlink_cFRC4cXyz
// daAlink_c::setForcePutPos(const cXyz&)
asm void setForcePutPos__9daAlink_cFRC4cXyz(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D038C.s"
}

// checkPlayerFly__9daAlink_cCFv
// daAlink_c::checkPlayerFly(const void)
asm void checkPlayerFly__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D03B4.s"
}

// checkFrontRoll__9daAlink_cCFv
// daAlink_c::checkFrontRoll(const void)
asm void checkFrontRoll__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D03C8.s"
}

// checkWolfDash__9daAlink_cCFv
// daAlink_c::checkWolfDash(const void)
asm void checkWolfDash__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D03DC.s"
}

// checkAutoJump__9daAlink_cCFv
// daAlink_c::checkAutoJump(const void)
asm void checkAutoJump__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D03F0.s"
}

// checkSideStep__9daAlink_cCFv
// daAlink_c::checkSideStep(const void)
asm void checkSideStep__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0414.s"
}

// checkWolfTriggerJump__9daAlink_cCFv
// daAlink_c::checkWolfTriggerJump(const void)
asm void checkWolfTriggerJump__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0444.s"
}

// checkGuardBreakMode__9daAlink_cCFv
// daAlink_c::checkGuardBreakMode(const void)
asm void checkGuardBreakMode__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0468.s"
}

// checkLv3Slide__9daAlink_cCFv
// daAlink_c::checkLv3Slide(const void)
asm void checkLv3Slide__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D047C.s"
}

// checkWolfHowlDemoMode__9daAlink_cCFv
// daAlink_c::checkWolfHowlDemoMode(const void)
asm void checkWolfHowlDemoMode__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D04A4.s"
}

// checkElecDamage__9daAlink_cCFv
// daAlink_c::checkElecDamage(const void)
asm void checkElecDamage__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D04B8.s"
}

// checkEmptyBottleSwing__9daAlink_cCFv
// daAlink_c::checkEmptyBottleSwing(const void)
asm void checkEmptyBottleSwing__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D04CC.s"
}

// checkBottleSwingMode__9daAlink_cCFv
// daAlink_c::checkBottleSwingMode(const void)
asm void checkBottleSwingMode__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D04F4.s"
}

// checkHawkWait__9daAlink_cCFv
// daAlink_c::checkHawkWait(const void)
asm void checkHawkWait__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0508.s"
}

// checkGoatThrow__9daAlink_cCFv
// daAlink_c::checkGoatThrow(const void)
asm void checkGoatThrow__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D051C.s"
}

// checkGoatThrowAfter__9daAlink_cCFv
// daAlink_c::checkGoatThrowAfter(const void)
asm void checkGoatThrowAfter__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0544.s"
}

// checkWolfTagLockJump__9daAlink_cCFv
// daAlink_c::checkWolfTagLockJump(const void)
asm void checkWolfTagLockJump__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0570.s"
}

// checkWolfTagLockJumpLand__9daAlink_cCFv
// daAlink_c::checkWolfTagLockJumpLand(const void)
asm void checkWolfTagLockJumpLand__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0598.s"
}

// checkWolfRopeHang__9daAlink_cCFv
// daAlink_c::checkWolfRopeHang(const void)
asm void checkWolfRopeHang__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D05AC.s"
}

// checkRollJump__9daAlink_cCFv
// daAlink_c::checkRollJump(const void)
asm void checkRollJump__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D05C0.s"
}

// checkGoronRideWait__9daAlink_cCFv
// daAlink_c::checkGoronRideWait(const void)
asm void checkGoronRideWait__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D05D4.s"
}

// checkWolfChain__9daAlink_cCFv
// daAlink_c::checkWolfChain(const void)
asm void checkWolfChain__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D05E8.s"
}

// checkWolfWait__9daAlink_cCFv
// daAlink_c::checkWolfWait(const void)
asm void checkWolfWait__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D05FC.s"
}

// checkWolfJumpAttack__9daAlink_cCFv
// daAlink_c::checkWolfJumpAttack(const void)
asm void checkWolfJumpAttack__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0610.s"
}

// checkWolfRSit__9daAlink_cCFv
// daAlink_c::checkWolfRSit(const void)
asm void checkWolfRSit__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0624.s"
}

// checkBottleDrinkEnd__9daAlink_cCFv
// daAlink_c::checkBottleDrinkEnd(const void)
asm void checkBottleDrinkEnd__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0638.s"
}

// checkWolfDig__9daAlink_cCFv
// daAlink_c::checkWolfDig(const void)
asm void checkWolfDig__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0660.s"
}

// checkCutCharge__9daAlink_cCFv
// daAlink_c::checkCutCharge(const void)
asm void checkCutCharge__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0674.s"
}

// checkCutLargeJumpCharge__9daAlink_cCFv
// daAlink_c::checkCutLargeJumpCharge(const void)
asm void checkCutLargeJumpCharge__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0688.s"
}

// checkComboCutTurn__9daAlink_cCFv
// daAlink_c::checkComboCutTurn(const void)
asm void checkComboCutTurn__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D06B0.s"
}

// checkClimbMove__9daAlink_cCFv
// daAlink_c::checkClimbMove(const void)
asm void checkClimbMove__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D06D8.s"
}

// checkGrassWhistle__9daAlink_cCFv
// daAlink_c::checkGrassWhistle(const void)
asm void checkGrassWhistle__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0704.s"
}

// checkBoarRun__9daAlink_cCFv
// daAlink_c::checkBoarRun(const void)
asm void checkBoarRun__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0718.s"
}

// checkHorseRideNotReady__9daAlink_cCFv
// daAlink_c::checkHorseRideNotReady(const void)
asm void checkHorseRideNotReady__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D072C.s"
}

// getSearchBallScale__9daAlink_cCFv
// daAlink_c::getSearchBallScale(const void)
asm void getSearchBallScale__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0794.s"
}

// checkFastShotTime__9daAlink_cFv
// daAlink_c::checkFastShotTime(void)
asm void checkFastShotTime__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D079C.s"
}

// checkCutJumpCancelTurn__9daAlink_cCFv
// daAlink_c::checkCutJumpCancelTurn(const void)
asm void checkCutJumpCancelTurn__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D07A4.s"
}

// checkSingleBoarBattleSecondBowReady__9daAlink_cCFv
// daAlink_c::checkSingleBoarBattleSecondBowReady(const void)
asm void checkSingleBoarBattleSecondBowReady__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D07D4.s"
}

// cancelDungeonWarpReadyNeck__9daAlink_cFv
// daAlink_c::cancelDungeonWarpReadyNeck(void)
asm void cancelDungeonWarpReadyNeck__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D07FC.s"
}

// onSceneChangeAreaJump__9daAlink_cFUcUcP10fopAc_ac_c
// daAlink_c::onSceneChangeAreaJump(unsigned char, unsigned char, fopAc_ac_c*)
asm void onSceneChangeAreaJump__9daAlink_cFUcUcP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0818.s"
}

// onSceneChangeDead__9daAlink_cFUci
// daAlink_c::onSceneChangeDead(unsigned char, int)
asm void onSceneChangeDead__9daAlink_cFUci(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0830.s"
}

// checkNoEquipItem__9daAlink_cCFv
// daAlink_c::checkNoEquipItem(const void)
asm void checkNoEquipItem__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D084C.s"
}

// getBoardCutTurnOffsetAngleY__9daAlink_cCFv
// daAlink_c::getBoardCutTurnOffsetAngleY(const void)
asm void getBoardCutTurnOffsetAngleY__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0860.s"
}

// getMagneBootsTopVec__9daAlink_cFv
// daAlink_c::getMagneBootsTopVec(void)
asm void getMagneBootsTopVec__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D087C.s"
}

// setCargoCarry__9daAlink_cFP10fopAc_ac_c
// daAlink_c::setCargoCarry(fopAc_ac_c*)
asm void setCargoCarry__9daAlink_cFP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0884.s"
}

// setGoronSideMove__9daAlink_cFP10fopAc_ac_c
// daAlink_c::setGoronSideMove(fopAc_ac_c*)
asm void setGoronSideMove__9daAlink_cFP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D08B0.s"
}

// setSumouReady__9daAlink_cFP10fopAc_ac_c
// daAlink_c::setSumouReady(fopAc_ac_c*)
asm void setSumouReady__9daAlink_cFP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D08DC.s"
}

// setSumouPushBackDirection__9daAlink_cFs
// daAlink_c::setSumouPushBackDirection(short)
asm void setSumouPushBackDirection__9daAlink_cFs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D091C.s"
}

// setSumouLoseHeadUp__9daAlink_cFv
// daAlink_c::setSumouLoseHeadUp(void)
asm void setSumouLoseHeadUp__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0930.s"
}

// checkPriActorOwn__9daAlink_cCFPC10fopAc_ac_c
// daAlink_c::checkPriActorOwn(const fopAc_ac_c*)
asm void checkPriActorOwn__9daAlink_cCFPC10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0948.s"
}

// checkWolfEnemyBiteAllOwn__9daAlink_cCFPC10fopAc_ac_c
// daAlink_c::checkWolfEnemyBiteAllOwn(const fopAc_ac_c*)
asm void checkWolfEnemyBiteAllOwn__9daAlink_cCFPC10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D095C.s"
}

// setWolfEnemyHangBiteAngle__9daAlink_cFs
// daAlink_c::setWolfEnemyHangBiteAngle(short)
asm void setWolfEnemyHangBiteAngle__9daAlink_cFs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0970.s"
}

// setSumouGraspCancelCount__9daAlink_cFi
// daAlink_c::setSumouGraspCancelCount(int)
asm void setSumouGraspCancelCount__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0984.s"
}

// checkItemSwordEquip__9daAlink_cCFv
// daAlink_c::checkItemSwordEquip(const void)
asm void checkItemSwordEquip__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0998.s"
}

// getSinkShapeOffset__9daAlink_cCFv
// daAlink_c::getSinkShapeOffset(const void)
asm void getSinkShapeOffset__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D09AC.s"
}

// checkSinkDead__9daAlink_cCFv
// daAlink_c::checkSinkDead(const void)
asm void checkSinkDead__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D09B4.s"
}

// checkCutJumpMode__9daAlink_cCFv
// daAlink_c::checkCutJumpMode(const void)
asm void checkCutJumpMode__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D09C8.s"
}

// getGiantPuzzleAimAngle__9daAlink_cCFv
// daAlink_c::getGiantPuzzleAimAngle(const void)
asm void getGiantPuzzleAimAngle__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D09DC.s"
}

// getSwordChangeWaitTimer__9daAlink_cCFv
// daAlink_c::getSwordChangeWaitTimer(const void)
asm void getSwordChangeWaitTimer__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D09E4.s"
}

// checkMetamorphose__9daAlink_cCFv
// daAlink_c::checkMetamorphose(const void)
asm void checkMetamorphose__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D09EC.s"
}

// checkWolfDownAttackPullOut__9daAlink_cCFv
// daAlink_c::checkWolfDownAttackPullOut(const void)
asm void checkWolfDownAttackPullOut__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0A14.s"
}

// getMidnaAtnPos__9daAlink_cCFv
// daAlink_c::getMidnaAtnPos(const void)
asm void getMidnaAtnPos__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0A28.s"
}

// checkCopyRodEquip__9daAlink_cCFv
// daAlink_c::checkCopyRodEquip(const void)
asm void checkCopyRodEquip__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0A30.s"
}

// checkCanoeFishingGetLeft__9daAlink_cCFv
// daAlink_c::checkCanoeFishingGetLeft(const void)
asm void checkCanoeFishingGetLeft__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0A44.s"
}

// checkCanoeFishingGetRight__9daAlink_cCFv
// daAlink_c::checkCanoeFishingGetRight(const void)
asm void checkCanoeFishingGetRight__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0A6C.s"
}

// checkBeeChildDrink__9daAlink_cCFv
// daAlink_c::checkBeeChildDrink(const void)
asm void checkBeeChildDrink__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0A94.s"
}

// getWolfHowlMgrP__9daAlink_cFv
// daAlink_c::getWolfHowlMgrP(void)
asm void getWolfHowlMgrP__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0A9C.s"
}

// checkWolfHowlSuccessAnime__9daAlink_cCFv
// daAlink_c::checkWolfHowlSuccessAnime(const void)
asm void checkWolfHowlSuccessAnime__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0AA4.s"
}

// checkOctaIealHang__9daAlink_cCFv
// daAlink_c::checkOctaIealHang(const void)
asm void checkOctaIealHang__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0AC8.s"
}

// cancelOctaIealHang__9daAlink_cFv
// daAlink_c::cancelOctaIealHang(void)
asm void cancelOctaIealHang__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0AF0.s"
}

// cancelDragonHangBackJump__9daAlink_cFv
// daAlink_c::cancelDragonHangBackJump(void)
asm void cancelDragonHangBackJump__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0B08.s"
}

// setOctaIealWildHang__9daAlink_cFv
// daAlink_c::setOctaIealWildHang(void)
asm void setOctaIealWildHang__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0B20.s"
}

// checkDragonHangRide__9daAlink_cCFv
// daAlink_c::checkDragonHangRide(const void)
asm void checkDragonHangRide__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0B38.s"
}

// playerStartCollisionSE__9daAlink_cFUlUl
// daAlink_c::playerStartCollisionSE(unsigned long, unsigned long)
asm void playerStartCollisionSE__9daAlink_cFUlUl(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0B60.s"
}

// __dt__16daAlink_matAnm_cFv
// daAlink_matAnm_c::~daAlink_matAnm_c(void)
asm void __dt__16daAlink_matAnm_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0B8C.s"
}

// __dt__12dBgS_ObjAcchFv
// dBgS_ObjAcch::~dBgS_ObjAcch(void)
asm void __dt__12dBgS_ObjAcchFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0C6C.s"
}

// __dt__Q29daAlink_c14hsChainShape_cFv
asm void __dt__Q29daAlink_c14hsChainShape_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0CDC.s"
}

// daAlink_searchNightStalker__FP10fopAc_ac_cPv
// daAlink_searchNightStalker__FP10fopAc_ac_cPv(fopAc_ac_c*, void*)
asm void daAlink_searchNightStalker__FP10fopAc_ac_cPv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0D38.s"
}

// checkLightSwordMtrl__9daAlink_cFv
// daAlink_c::checkLightSwordMtrl(void)
asm void checkLightSwordMtrl__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0E08.s"
}

// checkSwordEquipAnime__9daAlink_cCFv
// daAlink_c::checkSwordEquipAnime(const void)
asm void checkSwordEquipAnime__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0E98.s"
}

// checkCutDashAnime__9daAlink_cCFv
// daAlink_c::checkCutDashAnime(const void)
asm void checkCutDashAnime__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0ECC.s"
}

// checkCutDashEnemyHit__9daAlink_cFR12dCcD_GObjInf
// daAlink_c::checkCutDashEnemyHit(dCcD_GObjInf&)
asm void checkCutDashEnemyHit__9daAlink_cFR12dCcD_GObjInf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0EFC.s"
}

// getSwordAtType__9daAlink_cFv
// daAlink_c::getSwordAtType(void)
asm void getSwordAtType__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0F5C.s"
}

// initCutTurnAt__9daAlink_cFfi
// daAlink_c::initCutTurnAt(float, int)
asm void initCutTurnAt__9daAlink_cFfi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D0F90.s"
}

// checkCutFinishJumpUp__9daAlink_cFv
// daAlink_c::checkCutFinishJumpUp(void)
asm void checkCutFinishJumpUp__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D102C.s"
}

// changeCutFast__9daAlink_cFv
// daAlink_c::changeCutFast(void)
asm void changeCutFast__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D1088.s"
}

// checkCutFastReady__9daAlink_cFv
// daAlink_c::checkCutFastReady(void)
asm void checkCutFastReady__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D10E0.s"
}

// setSwordModel__9daAlink_cFv
// daAlink_c::setSwordModel(void)
asm void setSwordModel__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D1268.s"
}

// offSwordModel__9daAlink_cFv
// daAlink_c::offSwordModel(void)
asm void offSwordModel__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D1310.s"
}

// checkCutTypeNoBlur__9daAlink_cCFv
// daAlink_c::checkCutTypeNoBlur(const void)
asm void checkCutTypeNoBlur__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D13AC.s"
}

// checkCutTurnInput__9daAlink_cCFv
// daAlink_c::checkCutTurnInput(const void)
asm void checkCutTurnInput__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D13E4.s"
}

// getCutTurnDirection__9daAlink_cCFv
// daAlink_c::getCutTurnDirection(const void)
asm void getCutTurnDirection__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D1424.s"
}

// resetCombo__9daAlink_cFi
// daAlink_c::resetCombo(int)
asm void resetCombo__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D1430.s"
}

// checkComboCnt__9daAlink_cFv
// daAlink_c::checkComboCnt(void)
asm void checkComboCnt__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D1454.s"
}

// setCutType__9daAlink_cFUc
// daAlink_c::setCutType(unsigned char)
asm void setCutType__9daAlink_cFUc(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D152C.s"
}

// setCylAtParam__9daAlink_cFUl11dCcG_At_SplUcUciff
// daAlink_c::setCylAtParam(unsigned long, dCcG_At_Spl, unsigned char, unsigned char, int, float,
// float)
asm void setCylAtParam__9daAlink_cFUl11dCcG_At_SplUcUciff(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D1540.s"
}

// setSwordAtParam__9daAlink_cF11dCcG_At_SplUcUciff
// daAlink_c::setSwordAtParam(dCcG_At_Spl, unsigned char, unsigned char, int, float, float)
asm void setSwordAtParam__9daAlink_cF11dCcG_At_SplUcUciff(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D1688.s"
}

// notSwordHitVibActor__9daAlink_cFP10fopAc_ac_c
// daAlink_c::notSwordHitVibActor(fopAc_ac_c*)
asm void notSwordHitVibActor__9daAlink_cFP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D1788.s"
}

// setSwordHitVibration__9daAlink_cFP12dCcD_GObjInf
// daAlink_c::setSwordHitVibration(dCcD_GObjInf*)
asm void setSwordHitVibration__9daAlink_cFP12dCcD_GObjInf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D17EC.s"
}

// checkAtShieldHit__9daAlink_cFR12dCcD_GObjInf
// daAlink_c::checkAtShieldHit(dCcD_GObjInf&)
asm void checkAtShieldHit__9daAlink_cFR12dCcD_GObjInf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D1920.s"
}

// checkCutReverseAt__9daAlink_cFP12dCcD_GObjInf
// daAlink_c::checkCutReverseAt(dCcD_GObjInf*)
asm void checkCutReverseAt__9daAlink_cFP12dCcD_GObjInf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D1978.s"
}

// changeCutReverseProc__9daAlink_cFQ29daAlink_c11daAlink_ANM
asm void changeCutReverseProc__9daAlink_cFQ29daAlink_c11daAlink_ANM(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D19C8.s"
}

// setCutDash__9daAlink_cFii
// daAlink_c::setCutDash(int, int)
asm void setCutDash__9daAlink_cFii(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D1E1C.s"
}

// checkForceSwordSwing__9daAlink_cFv
// daAlink_c::checkForceSwordSwing(void)
asm void checkForceSwordSwing__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D20B4.s"
}

// setComboReserb__9daAlink_cFv
// daAlink_c::setComboReserb(void)
asm void setComboReserb__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D20FC.s"
}

// checkComboReserb__9daAlink_cFv
// daAlink_c::checkComboReserb(void)
asm void checkComboReserb__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D2188.s"
}

// commonCutAction__9daAlink_cFv
// daAlink_c::commonCutAction(void)
asm void commonCutAction__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D21D0.s"
}

// setSwordVoiceSe__9daAlink_cFUl
// daAlink_c::setSwordVoiceSe(unsigned long)
asm void setSwordVoiceSe__9daAlink_cFUl(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D2284.s"
}

// setSwordChargeVoiceSe__9daAlink_cFv
// daAlink_c::setSwordChargeVoiceSe(void)
asm void setSwordChargeVoiceSe__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D22BC.s"
}

// setSwordComboVoice__9daAlink_cFv
// daAlink_c::setSwordComboVoice(void)
asm void setSwordComboVoice__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D2304.s"
}

// checkCutTurnInputTrigger__9daAlink_cFv
// daAlink_c::checkCutTurnInputTrigger(void)
asm void checkCutTurnInputTrigger__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D2368.s"
}

// checkCutAction__9daAlink_cFv
// daAlink_c::checkCutAction(void)
asm void checkCutAction__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D23C0.s"
}

// checkCutTurnCharge__9daAlink_cFv
// daAlink_c::checkCutTurnCharge(void)
asm void checkCutTurnCharge__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D2684.s"
}

// getCutDirection__9daAlink_cFv
// daAlink_c::getCutDirection(void)
asm void getCutDirection__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D26EC.s"
}

// checkCutCancelNextMode__9daAlink_cFi
// daAlink_c::checkCutCancelNextMode(int)
asm void checkCutCancelNextMode__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D2760.s"
}

// checkDoCutAction__9daAlink_cFv
// daAlink_c::checkDoCutAction(void)
asm void checkDoCutAction__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D27E4.s"
}

// checkCutBackState__9daAlink_cFv
// daAlink_c::checkCutBackState(void)
asm void checkCutBackState__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D2890.s"
}

// checkCutHeadState__9daAlink_cFv
// daAlink_c::checkCutHeadState(void)
asm void checkCutHeadState__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D28F4.s"
}

// checkDownAttackState__9daAlink_cFv
// daAlink_c::checkDownAttackState(void)
asm void checkDownAttackState__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D29D4.s"
}

// checkCutLargeTurnState__9daAlink_cCFv
// daAlink_c::checkCutLargeTurnState(const void)
asm void checkCutLargeTurnState__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D2ABC.s"
}

// cancelCutCharge__9daAlink_cFv
// daAlink_c::cancelCutCharge(void)
asm void cancelCutCharge__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D2B88.s"
}

// initCutAtnActorSearch__9daAlink_cFv
// daAlink_c::initCutAtnActorSearch(void)
asm void initCutAtnActorSearch__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D2BFC.s"
}

// checkCutAtnActorChange__9daAlink_cFv
// daAlink_c::checkCutAtnActorChange(void)
asm void checkCutAtnActorChange__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D2C54.s"
}

// setCutJumpSpeed__9daAlink_cFi
// daAlink_c::setCutJumpSpeed(int)
asm void setCutJumpSpeed__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D2C78.s"
}

// procCutNormalInit__9daAlink_cFi
// daAlink_c::procCutNormalInit(int)
asm void procCutNormalInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D2F58.s"
}

// procCutNormal__9daAlink_cFv
// daAlink_c::procCutNormal(void)
asm void procCutNormal__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D31B8.s"
}

// procCutFinishInit__9daAlink_cFi
// daAlink_c::procCutFinishInit(int)
asm void procCutFinishInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D34D8.s"
}

// procCutFinish__9daAlink_cFv
// daAlink_c::procCutFinish(void)
asm void procCutFinish__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D382C.s"
}

// procCutFinishJumpUpInit__9daAlink_cFv
// daAlink_c::procCutFinishJumpUpInit(void)
asm void procCutFinishJumpUpInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D3ADC.s"
}

// procCutFinishJumpUp__9daAlink_cFv
// daAlink_c::procCutFinishJumpUp(void)
asm void procCutFinishJumpUp__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D3CCC.s"
}

// procCutFinishJumpUpLandInit__9daAlink_cFv
// daAlink_c::procCutFinishJumpUpLandInit(void)
asm void procCutFinishJumpUpLandInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D3DD8.s"
}

// procCutFinishJumpUpLand__9daAlink_cFv
// daAlink_c::procCutFinishJumpUpLand(void)
asm void procCutFinishJumpUpLand__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D3ECC.s"
}

// procCutReverseInit__9daAlink_cFQ29daAlink_c11daAlink_ANM
asm void procCutReverseInit__9daAlink_cFQ29daAlink_c11daAlink_ANM(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D4068.s"
}

// procCutReverse__9daAlink_cFv
// daAlink_c::procCutReverse(void)
asm void procCutReverse__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D41FC.s"
}

// procCutJumpInit__9daAlink_cFi
// daAlink_c::procCutJumpInit(int)
asm void procCutJumpInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D42FC.s"
}

// procCutJump__9daAlink_cFv
// daAlink_c::procCutJump(void)
asm void procCutJump__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D43F8.s"
}

// procCutJumpLandInit__9daAlink_cFi
// daAlink_c::procCutJumpLandInit(int)
asm void procCutJumpLandInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D452C.s"
}

// procCutJumpLand__9daAlink_cFv
// daAlink_c::procCutJumpLand(void)
asm void procCutJumpLand__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D4684.s"
}

// procCutTurnInit__9daAlink_cFii
// daAlink_c::procCutTurnInit(int, int)
asm void procCutTurnInit__9daAlink_cFii(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D47DC.s"
}

// procCutTurn__9daAlink_cFv
// daAlink_c::procCutTurn(void)
asm void procCutTurn__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D4A74.s"
}

// procCutTurnChargeInit__9daAlink_cFv
// daAlink_c::procCutTurnChargeInit(void)
asm void procCutTurnChargeInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D4C68.s"
}

// procCutTurnCharge__9daAlink_cFv
// daAlink_c::procCutTurnCharge(void)
asm void procCutTurnCharge__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D4D04.s"
}

// procCutTurnMoveInit__9daAlink_cFi
// daAlink_c::procCutTurnMoveInit(int)
asm void procCutTurnMoveInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D4DDC.s"
}

// procCutTurnMove__9daAlink_cFv
// daAlink_c::procCutTurnMove(void)
asm void procCutTurnMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D4EFC.s"
}

// procCutDownInit__9daAlink_cFv
// daAlink_c::procCutDownInit(void)
asm void procCutDownInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D53C8.s"
}

// procCutDown__9daAlink_cFv
// daAlink_c::procCutDown(void)
asm void procCutDown__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D57F8.s"
}

// procCutDownLandInit__9daAlink_cFP13fopEn_enemy_c
// daAlink_c::procCutDownLandInit(fopEn_enemy_c*)
asm void procCutDownLandInit__9daAlink_cFP13fopEn_enemy_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D58A0.s"
}

// procCutDownLand__9daAlink_cFv
// daAlink_c::procCutDownLand(void)
asm void procCutDownLand__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D5ADC.s"
}

// procCutHeadInit__9daAlink_cFv
// daAlink_c::procCutHeadInit(void)
asm void procCutHeadInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D5C88.s"
}

// procCutHead__9daAlink_cFv
// daAlink_c::procCutHead(void)
asm void procCutHead__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D5FC8.s"
}

// procCutHeadLandInit__9daAlink_cFv
// daAlink_c::procCutHeadLandInit(void)
asm void procCutHeadLandInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D6130.s"
}

// procCutHeadLand__9daAlink_cFv
// daAlink_c::procCutHeadLand(void)
asm void procCutHeadLand__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D618C.s"
}

// procCutLargeJumpChargeInit__9daAlink_cFv
// daAlink_c::procCutLargeJumpChargeInit(void)
asm void procCutLargeJumpChargeInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D6238.s"
}

// procCutLargeJumpCharge__9daAlink_cFv
// daAlink_c::procCutLargeJumpCharge(void)
asm void procCutLargeJumpCharge__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D62A0.s"
}

// procCutLargeJumpInit__9daAlink_cFv
// daAlink_c::procCutLargeJumpInit(void)
asm void procCutLargeJumpInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D6374.s"
}

// procCutLargeJump__9daAlink_cFv
// daAlink_c::procCutLargeJump(void)
asm void procCutLargeJump__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D6484.s"
}

// procCutLargeJumpLandInit__9daAlink_cFi
// daAlink_c::procCutLargeJumpLandInit(int)
asm void procCutLargeJumpLandInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D66C0.s"
}

// procCutLargeJumpLand__9daAlink_cFv
// daAlink_c::procCutLargeJumpLand(void)
asm void procCutLargeJumpLand__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D67FC.s"
}

// procSwordUnequipSpInit__9daAlink_cFv
// daAlink_c::procSwordUnequipSpInit(void)
asm void procSwordUnequipSpInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D698C.s"
}

// procSwordUnequipSp__9daAlink_cFv
// daAlink_c::procSwordUnequipSp(void)
asm void procSwordUnequipSp__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D6A38.s"
}

// getFreezeR__9daAlink_cCFv
// daAlink_c::getFreezeR(const void)
asm void getFreezeR__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D6D94.s"
}

// getFreezeG__9daAlink_cCFv
// daAlink_c::getFreezeG(const void)
asm void getFreezeG__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D6DA4.s"
}

// getFreezeB__9daAlink_cCFv
// daAlink_c::getFreezeB(const void)
asm void getFreezeB__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D6DB4.s"
}

// checkMiddleBossGoronRoom__9daAlink_cFv
// daAlink_c::checkMiddleBossGoronRoom(void)
asm void checkMiddleBossGoronRoom__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D6DC4.s"
}

// setDkCaught__9daAlink_cFP10fopAc_ac_c
// daAlink_c::setDkCaught(fopAc_ac_c*)
asm void setDkCaught__9daAlink_cFP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D6DF0.s"
}

// freezeTimerDamage__9daAlink_cFv
// daAlink_c::freezeTimerDamage(void)
asm void freezeTimerDamage__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D6E24.s"
}

// onPressedDamage__9daAlink_cFRC4cXyzs
// daAlink_c::onPressedDamage(const cXyz&, short)
asm void onPressedDamage__9daAlink_cFRC4cXyzs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D6F00.s"
}

// checkNoLandDamageSlidePolygon__9daAlink_cFv
// daAlink_c::checkNoLandDamageSlidePolygon(void)
asm void checkNoLandDamageSlidePolygon__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D6F2C.s"
}

// checkCutLandDamage__9daAlink_cFv
// daAlink_c::checkCutLandDamage(void)
asm void checkCutLandDamage__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D6FE0.s"
}

// checkCaughtEscapeCutTurn__9daAlink_cFv
// daAlink_c::checkCaughtEscapeCutTurn(void)
asm void checkCaughtEscapeCutTurn__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D70A0.s"
}

// setThrowDamage__9daAlink_cFsffiii
// daAlink_c::setThrowDamage(short, float, float, int, int, int)
asm void setThrowDamage__9daAlink_cFsffiii(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D7160.s"
}

// damageMagnification__9daAlink_cFii
// daAlink_c::damageMagnification(int, int)
asm void damageMagnification__9daAlink_cFii(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D7208.s"
}

// setDamagePoint__9daAlink_cFiiii
// daAlink_c::setDamagePoint(int, int, int, int)
asm void setDamagePoint__9daAlink_cFiiii(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D72BC.s"
}

// setDamagePointNormal__9daAlink_cFi
// daAlink_c::setDamagePointNormal(int)
asm void setDamagePointNormal__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D7478.s"
}

// setLandDamagePoint__9daAlink_cFi
// daAlink_c::setLandDamagePoint(int)
asm void setLandDamagePoint__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D74A4.s"
}

// getDamageVec__9daAlink_cFP12dCcD_GObjInf
// daAlink_c::getDamageVec(dCcD_GObjInf*)
asm void getDamageVec__9daAlink_cFP12dCcD_GObjInf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D74F4.s"
}

// setDashDamage__9daAlink_cFv
// daAlink_c::setDashDamage(void)
asm void setDashDamage__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D76C4.s"
}

// checkIcePolygonDamage__9daAlink_cFP13cBgS_PolyInfo
// daAlink_c::checkIcePolygonDamage(cBgS_PolyInfo*)
asm void checkIcePolygonDamage__9daAlink_cFP13cBgS_PolyInfo(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D7768.s"
}

// checkMagicArmorNoDamage__9daAlink_cFv
// daAlink_c::checkMagicArmorNoDamage(void)
asm void checkMagicArmorNoDamage__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D77C8.s"
}

// checkPolyDamage__9daAlink_cFv
// daAlink_c::checkPolyDamage(void)
asm void checkPolyDamage__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D7820.s"
}

// checkElecReturnDamage__9daAlink_cFR12dCcD_GObjInfPP10fopAc_ac_c
// daAlink_c::checkElecReturnDamage(dCcD_GObjInf&, fopAc_ac_c*)
asm void checkElecReturnDamage__9daAlink_cFR12dCcD_GObjInfPP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D7A98.s"
}

// damageTimerCount__9daAlink_cFv
// daAlink_c::damageTimerCount(void)
asm void damageTimerCount__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D7B18.s"
}

// checkHugeAttack__9daAlink_cCFi
// daAlink_c::checkHugeAttack(const int)
asm void checkHugeAttack__9daAlink_cCFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D7BE8.s"
}

// checkLargeAttack__9daAlink_cCFi
// daAlink_c::checkLargeAttack(const int)
asm void checkLargeAttack__9daAlink_cCFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D7C14.s"
}

// checkDamageAction__9daAlink_cFv
// daAlink_c::checkDamageAction(void)
asm void checkDamageAction__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D7C40.s"
}

// procDamageInit__9daAlink_cFP12dCcD_GObjInfi
// daAlink_c::procDamageInit(dCcD_GObjInf*, int)
asm void procDamageInit__9daAlink_cFP12dCcD_GObjInfi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D8F3C.s"
}

// procDamage__9daAlink_cFv
// daAlink_c::procDamage(void)
asm void procDamage__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D9514.s"
}

// procCoLargeDamageInit__9daAlink_cFiissP12dCcD_GObjInfi
// daAlink_c::procCoLargeDamageInit(int, int, short, short, dCcD_GObjInf*, int)
asm void procCoLargeDamageInit__9daAlink_cFiissP12dCcD_GObjInfi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D96DC.s"
}

// procCoLargeDamage__9daAlink_cFv
// daAlink_c::procCoLargeDamage(void)
asm void procCoLargeDamage__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800D9E88.s"
}

// procLargeDamageUpInit__9daAlink_cFiiss
// daAlink_c::procLargeDamageUpInit(int, int, short, short)
asm void procLargeDamageUpInit__9daAlink_cFiiss(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DA180.s"
}

// procLargeDamageUp__9daAlink_cFv
// daAlink_c::procLargeDamageUp(void)
asm void procLargeDamageUp__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DA554.s"
}

// procCoLargeDamageWallInit__9daAlink_cFiiss
// daAlink_c::procCoLargeDamageWallInit(int, int, short, short)
asm void procCoLargeDamageWallInit__9daAlink_cFiiss(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DA82C.s"
}

// procCoLargeDamageWall__9daAlink_cFv
// daAlink_c::procCoLargeDamageWall(void)
asm void procCoLargeDamageWall__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DAC28.s"
}

// procCoPolyDamageInit__9daAlink_cFv
// daAlink_c::procCoPolyDamageInit(void)
asm void procCoPolyDamageInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DAC84.s"
}

// procCoPolyDamage__9daAlink_cFv
// daAlink_c::procCoPolyDamage(void)
asm void procCoPolyDamage__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DAD90.s"
}

// procLandDamageInit__9daAlink_cFi
// daAlink_c::procLandDamageInit(int)
asm void procLandDamageInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DAE10.s"
}

// procLandDamage__9daAlink_cFv
// daAlink_c::procLandDamage(void)
asm void procLandDamage__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DB060.s"
}

// procCoElecDamageInit__9daAlink_cFP10fopAc_ac_cP12dCcD_GObjInfi
// daAlink_c::procCoElecDamageInit(fopAc_ac_c*, dCcD_GObjInf*, int)
asm void procCoElecDamageInit__9daAlink_cFP10fopAc_ac_cP12dCcD_GObjInfi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DB140.s"
}

// procCoElecDamage__9daAlink_cFv
// daAlink_c::procCoElecDamage(void)
asm void procCoElecDamage__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DB418.s"
}

// procStEscapeInit__9daAlink_cFv
// daAlink_c::procStEscapeInit(void)
asm void procStEscapeInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DB5B0.s"
}

// procStEscape__9daAlink_cFv
// daAlink_c::procStEscape(void)
asm void procStEscape__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DB610.s"
}

// procDkCaughtInit__9daAlink_cFUi
// daAlink_c::procDkCaughtInit(unsigned int)
asm void procDkCaughtInit__9daAlink_cFUi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DB6A4.s"
}

// procDkCaught__9daAlink_cFv
// daAlink_c::procDkCaught(void)
asm void procDkCaught__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DB860.s"
}

// setScreamWaitAnime__9daAlink_cFv
// daAlink_c::setScreamWaitAnime(void)
asm void setScreamWaitAnime__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DBC98.s"
}

// procScreamWaitInit__9daAlink_cFv
// daAlink_c::procScreamWaitInit(void)
asm void procScreamWaitInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DBD1C.s"
}

// procScreamWait__9daAlink_cFv
// daAlink_c::procScreamWait(void)
asm void procScreamWait__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DBDA4.s"
}

// procCoSandWallHitInit__9daAlink_cFv
// daAlink_c::procCoSandWallHitInit(void)
asm void procCoSandWallHitInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DBE00.s"
}

// procCoSandWallHit__9daAlink_cFv
// daAlink_c::procCoSandWallHit(void)
asm void procCoSandWallHit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DBE74.s"
}

// procCoLavaReturnInit__9daAlink_cFi
// daAlink_c::procCoLavaReturnInit(int)
asm void procCoLavaReturnInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DBED8.s"
}

// procCoLavaReturn__9daAlink_cFv
// daAlink_c::procCoLavaReturn(void)
asm void procCoLavaReturn__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DC214.s"
}

// procCoSwimFreezeReturnInit__9daAlink_cFv
// daAlink_c::procCoSwimFreezeReturnInit(void)
asm void procCoSwimFreezeReturnInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DC278.s"
}

// procCoSwimFreezeReturn__9daAlink_cFv
// daAlink_c::procCoSwimFreezeReturn(void)
asm void procCoSwimFreezeReturn__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DC474.s"
}

// checkEnemyGroup__9daAlink_cFP10fopAc_ac_c
// daAlink_c::checkEnemyGroup(fopAc_ac_c*)
asm void checkEnemyGroup__9daAlink_cFP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DC548.s"
}

// checkSpecialNpc__9daAlink_cFP10fopAc_ac_c
// daAlink_c::checkSpecialNpc(fopAc_ac_c*)
asm void checkSpecialNpc__9daAlink_cFP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DC5A4.s"
}

// checkShieldAttackEmphasys__9daAlink_cFv
// daAlink_c::checkShieldAttackEmphasys(void)
asm void checkShieldAttackEmphasys__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DC5DC.s"
}

// checkGuardActionChange__9daAlink_cFv
// daAlink_c::checkGuardActionChange(void)
asm void checkGuardActionChange__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DC678.s"
}

// stickArrowIncrement__9daAlink_cFi
// daAlink_c::stickArrowIncrement(int)
asm void stickArrowIncrement__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DC79C.s"
}

// setArrowShieldActor__9daAlink_cFP10fopAc_ac_ci
// daAlink_c::setArrowShieldActor(fopAc_ac_c*, int)
asm void setArrowShieldActor__9daAlink_cFP10fopAc_ac_ci(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DC8C4.s"
}

// checkWoodShieldEquipNotIronBall__9daAlink_cCFv
// daAlink_c::checkWoodShieldEquipNotIronBall(const void)
asm void checkWoodShieldEquipNotIronBall__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DCA2C.s"
}

// getArrowShieldOffset__9daAlink_cCFPC4cXyzPC5csXyzP4cXyzP4cXyz
// daAlink_c::getArrowShieldOffset(const cXyz*, const csXyz*, cXyz*, cXyz*)
asm void getArrowShieldOffset__9daAlink_cCFPC4cXyzPC5csXyzP4cXyzP4cXyz(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DCA80.s"
}

// setArrowShieldPos__9daAlink_cCFP4cXyzP5csXyzPC4cXyzPC4cXyz
// daAlink_c::setArrowShieldPos(const cXyz*, csXyz*, const cXyz*, const cXyz*)
asm void setArrowShieldPos__9daAlink_cCFP4cXyzP5csXyzPC4cXyzPC4cXyz(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DCD74.s"
}

// checkUpperGuardAnime__9daAlink_cCFv
// daAlink_c::checkUpperGuardAnime(const void)
asm void checkUpperGuardAnime__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DCDF0.s"
}

// checkPlayerGuard__9daAlink_cCFv
// daAlink_c::checkPlayerGuard(const void)
asm void checkPlayerGuard__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DCE6C.s"
}

// checkPlayerGuardAndAttack__9daAlink_cCFv
// daAlink_c::checkPlayerGuardAndAttack(const void)
asm void checkPlayerGuardAndAttack__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DCF04.s"
}

// checkGuardAccept__9daAlink_cFv
// daAlink_c::checkGuardAccept(void)
asm void checkGuardAccept__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DCF64.s"
}

// setUpperGuardAnime__9daAlink_cFf
// daAlink_c::setUpperGuardAnime(float)
asm void setUpperGuardAnime__9daAlink_cFf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DD008.s"
}

// setShieldGuard__9daAlink_cFv
// daAlink_c::setShieldGuard(void)
asm void setShieldGuard__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DD018.s"
}

// setGuardSe__9daAlink_cFP12dCcD_GObjInf
// daAlink_c::setGuardSe(dCcD_GObjInf*)
asm void setGuardSe__9daAlink_cFP12dCcD_GObjInf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DD114.s"
}

// setSmallGuard__9daAlink_cFP12dCcD_GObjInf
// daAlink_c::setSmallGuard(dCcD_GObjInf*)
asm void setSmallGuard__9daAlink_cFP12dCcD_GObjInf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DD1D4.s"
}

// procGuardSlipInit__9daAlink_cFiP12dCcD_GObjInf
// daAlink_c::procGuardSlipInit(int, dCcD_GObjInf*)
asm void procGuardSlipInit__9daAlink_cFiP12dCcD_GObjInf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DD3E4.s"
}

// procGuardSlip__9daAlink_cFv
// daAlink_c::procGuardSlip(void)
asm void procGuardSlip__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DD894.s"
}

// procGuardAttackInit__9daAlink_cFv
// daAlink_c::procGuardAttackInit(void)
asm void procGuardAttackInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DDA10.s"
}

// procGuardAttack__9daAlink_cFv
// daAlink_c::procGuardAttack(void)
asm void procGuardAttack__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DDBA8.s"
}

// procGuardBreakInit__9daAlink_cFv
// daAlink_c::procGuardBreakInit(void)
asm void procGuardBreakInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DDE58.s"
}

// procGuardBreak__9daAlink_cFv
// daAlink_c::procGuardBreak(void)
asm void procGuardBreak__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DDF2C.s"
}

// procTurnMoveInit__9daAlink_cFi
// daAlink_c::procTurnMoveInit(int)
asm void procTurnMoveInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DE008.s"
}

// procTurnMove__9daAlink_cFv
// daAlink_c::procTurnMove(void)
asm void procTurnMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DE380.s"
}

// getArrowFlyData__9daAlink_cCFPfPfi
// daAlink_c::getArrowFlyData(const float*, float*, int)
asm void getArrowFlyData__9daAlink_cCFPfPfi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DE64C.s"
}

// getArrowIncAtR__9daAlink_cCFv
// daAlink_c::getArrowIncAtR(const void)
asm void getArrowIncAtR__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DE740.s"
}

// getBombArrowFlyExplodeTime__9daAlink_cCFv
// daAlink_c::getBombArrowFlyExplodeTime(const void)
asm void getBombArrowFlyExplodeTime__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DE750.s"
}

// getArrowIncAtMaxStart__9daAlink_cCFv
// daAlink_c::getArrowIncAtMaxStart(const void)
asm void getArrowIncAtMaxStart__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DE760.s"
}

// getArrowIncAtMax__9daAlink_cCFv
// daAlink_c::getArrowIncAtMax(const void)
asm void getArrowIncAtMax__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DE770.s"
}

// checkBowAndSlingItem__9daAlink_cFi
// daAlink_c::checkBowAndSlingItem(int)
asm void checkBowAndSlingItem__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DE780.s"
}

// setSlingModel__9daAlink_cFv
// daAlink_c::setSlingModel(void)
asm void setSlingModel__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DE7D4.s"
}

// checkBowCameraArrowPosP__9daAlink_cFPsPs
// daAlink_c::checkBowCameraArrowPosP(short*, short*)
asm void checkBowCameraArrowPosP__9daAlink_cFPsPs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DE884.s"
}

// checkArrowChargeEnd__9daAlink_cCFv
// daAlink_c::checkArrowChargeEnd(const void)
asm void checkArrowChargeEnd__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DE990.s"
}

// checkBowReadyAnime__9daAlink_cCFv
// daAlink_c::checkBowReadyAnime(const void)
asm void checkBowReadyAnime__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DE9B8.s"
}

// checkBowAnime__9daAlink_cCFv
// daAlink_c::checkBowAnime(const void)
asm void checkBowAnime__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DE9E8.s"
}

// makeArrow__9daAlink_cFv
// daAlink_c::makeArrow(void)
asm void makeArrow__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DEA3C.s"
}

// deleteArrow__9daAlink_cFv
// daAlink_c::deleteArrow(void)
asm void deleteArrow__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DEAE4.s"
}

// setBowOrSlingStatus__9daAlink_cFv
// daAlink_c::setBowOrSlingStatus(void)
asm void setBowOrSlingStatus__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DEB8C.s"
}

// changeArrowType__9daAlink_cFv
// daAlink_c::changeArrowType(void)
asm void changeArrowType__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DEBC8.s"
}

// cancelBowMoveRideNotAtn__9daAlink_cFv
// daAlink_c::cancelBowMoveRideNotAtn(void)
asm void cancelBowMoveRideNotAtn__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DED88.s"
}

// cancelBowMove__9daAlink_cFv
// daAlink_c::cancelBowMove(void)
asm void cancelBowMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DEE1C.s"
}

// setBowReadyAnime__9daAlink_cFv
// daAlink_c::setBowReadyAnime(void)
asm void setBowReadyAnime__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DEEDC.s"
}

// setBowReloadAnime__9daAlink_cFv
// daAlink_c::setBowReloadAnime(void)
asm void setBowReloadAnime__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DEFB8.s"
}

// checkUpperItemActionBow__9daAlink_cFv
// daAlink_c::checkUpperItemActionBow(void)
asm void checkUpperItemActionBow__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DF0BC.s"
}

// checkUpperItemActionBowFly__9daAlink_cFv
// daAlink_c::checkUpperItemActionBowFly(void)
asm void checkUpperItemActionBowFly__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DF798.s"
}

// checkNextActionBow__9daAlink_cFv
// daAlink_c::checkNextActionBow(void)
asm void checkNextActionBow__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DF814.s"
}

// setBowModel__9daAlink_cFv
// daAlink_c::setBowModel(void)
asm void setBowModel__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DFAE8.s"
}

// checkBowGrabLeftHand__9daAlink_cCFv
// daAlink_c::checkBowGrabLeftHand(const void)
asm void checkBowGrabLeftHand__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DFBC8.s"
}

// setBowHangAnime__9daAlink_cFv
// daAlink_c::setBowHangAnime(void)
asm void setBowHangAnime__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DFC28.s"
}

// setBowNormalAnime__9daAlink_cFv
// daAlink_c::setBowNormalAnime(void)
asm void setBowNormalAnime__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DFC70.s"
}

// setBowSight__9daAlink_cFv
// daAlink_c::setBowSight(void)
asm void setBowSight__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DFCD8.s"
}

// procBowSubjectInit__9daAlink_cFv
// daAlink_c::procBowSubjectInit(void)
asm void procBowSubjectInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DFD6C.s"
}

// procBowSubject__9daAlink_cFv
// daAlink_c::procBowSubject(void)
asm void procBowSubject__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DFDDC.s"
}

// procBowMoveInit__9daAlink_cFv
// daAlink_c::procBowMoveInit(void)
asm void procBowMoveInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DFE3C.s"
}

// procBowMove__9daAlink_cFv
// daAlink_c::procBowMove(void)
asm void procBowMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DFEC0.s"
}

// checkBoomerangLockAccept__9daAlink_cFv
// daAlink_c::checkBoomerangLockAccept(void)
asm void checkBoomerangLockAccept__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800DFFE0.s"
}

// getBoomSpeed__9daAlink_cFv
// daAlink_c::getBoomSpeed(void)
asm void getBoomSpeed__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E0010.s"
}

// getBoomCatchSpeed__9daAlink_cCFv
// daAlink_c::getBoomCatchSpeed(const void)
asm void getBoomCatchSpeed__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E00B0.s"
}

// getBoomFlyMax__9daAlink_cCFv
// daAlink_c::getBoomFlyMax(const void)
asm void getBoomFlyMax__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E00C0.s"
}

// getBoomLockMax__9daAlink_cFv
// daAlink_c::getBoomLockMax(void)
asm void getBoomLockMax__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E011C.s"
}

// getBoomBgThroughTime__9daAlink_cCFv
// daAlink_c::getBoomBgThroughTime(const void)
asm void getBoomBgThroughTime__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E0190.s"
}

// checkBossBabaRoom__9daAlink_cFv
// daAlink_c::checkBossBabaRoom(void)
asm void checkBossBabaRoom__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E01A0.s"
}

// cancelBoomerangLock__9daAlink_cFP10fopAc_ac_c
// daAlink_c::cancelBoomerangLock(fopAc_ac_c*)
asm void cancelBoomerangLock__9daAlink_cFP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E01CC.s"
}

// getBoomerangActor__9daAlink_cFv
// daAlink_c::getBoomerangActor(void)
asm void getBoomerangActor__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E0210.s"
}

// checkBoomerangChargeEnd__9daAlink_cFv
// daAlink_c::checkBoomerangChargeEnd(void)
asm void checkBoomerangChargeEnd__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E0244.s"
}

// checkBoomerangCarry__9daAlink_cFP10fopAc_ac_c
// daAlink_c::checkBoomerangCarry(fopAc_ac_c*)
asm void checkBoomerangCarry__9daAlink_cFP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E02B8.s"
}

// initBoomerangUpperAnimeSpeed__9daAlink_cFi
// daAlink_c::initBoomerangUpperAnimeSpeed(int)
asm void initBoomerangUpperAnimeSpeed__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E03D0.s"
}

// checkBoomerangAnime__9daAlink_cCFv
// daAlink_c::checkBoomerangAnime(const void)
asm void checkBoomerangAnime__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E0440.s"
}

// checkBoomerangThrowAnime__9daAlink_cCFv
// daAlink_c::checkBoomerangThrowAnime(const void)
asm void checkBoomerangThrowAnime__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E04AC.s"
}

// setBoomerangReadyQuake__9daAlink_cFv
// daAlink_c::setBoomerangReadyQuake(void)
asm void setBoomerangReadyQuake__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E04E8.s"
}

// setBoomerangReadyAnime__9daAlink_cFv
// daAlink_c::setBoomerangReadyAnime(void)
asm void setBoomerangReadyAnime__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E055C.s"
}

// setThrowBoomerangAnime__9daAlink_cFv
// daAlink_c::setThrowBoomerangAnime(void)
asm void setThrowBoomerangAnime__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E05E8.s"
}

// setBoomerangCatchAnime__9daAlink_cFv
// daAlink_c::setBoomerangCatchAnime(void)
asm void setBoomerangCatchAnime__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E0630.s"
}

// throwBoomerang__9daAlink_cFv
// daAlink_c::throwBoomerang(void)
asm void throwBoomerang__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E06B8.s"
}

// returnBoomerang__9daAlink_cFi
// daAlink_c::returnBoomerang(int)
asm void returnBoomerang__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E08C4.s"
}

// checkUpperItemActionBoomerang__9daAlink_cFv
// daAlink_c::checkUpperItemActionBoomerang(void)
asm void checkUpperItemActionBoomerang__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E0A9C.s"
}

// checkUpperItemActionBoomerangFly__9daAlink_cFv
// daAlink_c::checkUpperItemActionBoomerangFly(void)
asm void checkUpperItemActionBoomerangFly__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E0B58.s"
}

// checkNextActionBoomerang__9daAlink_cFv
// daAlink_c::checkNextActionBoomerang(void)
asm void checkNextActionBoomerang__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E0BE4.s"
}

// checkBoomerangCatchAction__9daAlink_cFv
// daAlink_c::checkBoomerangCatchAction(void)
asm void checkBoomerangCatchAction__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E0D8C.s"
}

// setBoomerangSight__9daAlink_cFv
// daAlink_c::setBoomerangSight(void)
asm void setBoomerangSight__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E0E64.s"
}

// procBoomerangSubjectInit__9daAlink_cFv
// daAlink_c::procBoomerangSubjectInit(void)
asm void procBoomerangSubjectInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E0F10.s"
}

// procBoomerangSubject__9daAlink_cFv
// daAlink_c::procBoomerangSubject(void)
asm void procBoomerangSubject__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E0FA0.s"
}

// procBoomerangMoveInit__9daAlink_cFv
// daAlink_c::procBoomerangMoveInit(void)
asm void procBoomerangMoveInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E1060.s"
}

// procBoomerangMove__9daAlink_cFv
// daAlink_c::procBoomerangMove(void)
asm void procBoomerangMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E10F4.s"
}

// procBoomerangCatchInit__9daAlink_cFv
// daAlink_c::procBoomerangCatchInit(void)
asm void procBoomerangCatchInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E11D8.s"
}

// procBoomerangCatch__9daAlink_cFv
// daAlink_c::procBoomerangCatch(void)
asm void procBoomerangCatch__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E1248.s"
}

// checkLv6BossRoom__9daAlink_cFv
// daAlink_c::checkLv6BossRoom(void)
asm void checkLv6BossRoom__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E12E0.s"
}

// getCopyRodBallSpeed__9daAlink_cCFv
// daAlink_c::getCopyRodBallSpeed(const void)
asm void getCopyRodBallSpeed__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E1310.s"
}

// getCopyRodBallReturnSpeed__9daAlink_cCFv
// daAlink_c::getCopyRodBallReturnSpeed(const void)
asm void getCopyRodBallReturnSpeed__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E1320.s"
}

// getCopyRodBallDisMax__9daAlink_cCFv
// daAlink_c::getCopyRodBallDisMax(const void)
asm void getCopyRodBallDisMax__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E1330.s"
}

// getCopyRodControllActor__9daAlink_cFv
// daAlink_c::getCopyRodControllActor(void)
asm void getCopyRodControllActor__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E1374.s"
}

// getCopyRodCameraActor__9daAlink_cFv
// daAlink_c::getCopyRodCameraActor(void)
asm void getCopyRodCameraActor__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E1390.s"
}

// initCopyRodUpperAnimeSpeed__9daAlink_cFi
// daAlink_c::initCopyRodUpperAnimeSpeed(int)
asm void initCopyRodUpperAnimeSpeed__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E13AC.s"
}

// checkForestOldCentury__9daAlink_cFv
// daAlink_c::checkForestOldCentury(void)
asm void checkForestOldCentury__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E1408.s"
}

// checkCopyRodTopUse__9daAlink_cFv
// daAlink_c::checkCopyRodTopUse(void)
asm void checkCopyRodTopUse__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E145C.s"
}

// checkCopyRodAnime__9daAlink_cCFv
// daAlink_c::checkCopyRodAnime(const void)
asm void checkCopyRodAnime__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E1530.s"
}

// setCopyRodControllAnime__9daAlink_cFv
// daAlink_c::setCopyRodControllAnime(void)
asm void setCopyRodControllAnime__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E158C.s"
}

// setCopyRodControllUpperSpeedRate__9daAlink_cFv
// daAlink_c::setCopyRodControllUpperSpeedRate(void)
asm void setCopyRodControllUpperSpeedRate__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E15FC.s"
}

// setCopyRodModel__9daAlink_cFv
// daAlink_c::setCopyRodModel(void)
asm void setCopyRodModel__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E1748.s"
}

// setCopyRodReadyAnime__9daAlink_cFv
// daAlink_c::setCopyRodReadyAnime(void)
asm void setCopyRodReadyAnime__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E1840.s"
}

// throwCopyRod__9daAlink_cFv
// daAlink_c::throwCopyRod(void)
asm void throwCopyRod__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E191C.s"
}

// returnCopyRod__9daAlink_cFv
// daAlink_c::returnCopyRod(void)
asm void returnCopyRod__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E1A30.s"
}

// checkUpperItemActionCopyRod__9daAlink_cFv
// daAlink_c::checkUpperItemActionCopyRod(void)
asm void checkUpperItemActionCopyRod__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E1ADC.s"
}

// checkUpperItemActionCopyRodFly__9daAlink_cFv
// daAlink_c::checkUpperItemActionCopyRodFly(void)
asm void checkUpperItemActionCopyRodFly__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E1BB4.s"
}

// checkNextActionCopyRod__9daAlink_cFv
// daAlink_c::checkNextActionCopyRod(void)
asm void checkNextActionCopyRod__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E1C44.s"
}

// setCopyRodSight__9daAlink_cFv
// daAlink_c::setCopyRodSight(void)
asm void setCopyRodSight__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E1D6C.s"
}

// procCopyRodSubjectInit__9daAlink_cFv
// daAlink_c::procCopyRodSubjectInit(void)
asm void procCopyRodSubjectInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E1E20.s"
}

// procCopyRodSubject__9daAlink_cFv
// daAlink_c::procCopyRodSubject(void)
asm void procCopyRodSubject__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E1EB0.s"
}

// procCopyRodMoveInit__9daAlink_cFv
// daAlink_c::procCopyRodMoveInit(void)
asm void procCopyRodMoveInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E1F68.s"
}

// procCopyRodMove__9daAlink_cFv
// daAlink_c::procCopyRodMove(void)
asm void procCopyRodMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E1FFC.s"
}

// procCopyRodSwingInit__9daAlink_cFv
// daAlink_c::procCopyRodSwingInit(void)
asm void procCopyRodSwingInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E20C8.s"
}

// procCopyRodSwing__9daAlink_cFv
// daAlink_c::procCopyRodSwing(void)
asm void procCopyRodSwing__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E21FC.s"
}

// procCopyRodReviveInit__9daAlink_cFv
// daAlink_c::procCopyRodReviveInit(void)
asm void procCopyRodReviveInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E2308.s"
}

// procCopyRodRevive__9daAlink_cFv
// daAlink_c::procCopyRodRevive(void)
asm void procCopyRodRevive__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E23A4.s"
}

// concatMagneBootMtx__9daAlink_cFv
// daAlink_c::concatMagneBootMtx(void)
asm void concatMagneBootMtx__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E23FC.s"
}

// concatMagneBootInvMtx__9daAlink_cFv
// daAlink_c::concatMagneBootInvMtx(void)
asm void concatMagneBootInvMtx__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E243C.s"
}

// multVecMagneBootInvMtx__9daAlink_cFP4cXyz
// daAlink_c::multVecMagneBootInvMtx(cXyz*)
asm void multVecMagneBootInvMtx__9daAlink_cFP4cXyz(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E247C.s"
}

// commonMagneLineCheck__9daAlink_cFP4cXyzP4cXyz
// daAlink_c::commonMagneLineCheck(cXyz*, cXyz*)
asm void commonMagneLineCheck__9daAlink_cFP4cXyzP4cXyz(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E24B0.s"
}

// checkBootsMoveAnime__9daAlink_cFi
// daAlink_c::checkBootsMoveAnime(int)
asm void checkBootsMoveAnime__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E251C.s"
}

// setHeavyBoots__9daAlink_cFi
// daAlink_c::setHeavyBoots(int)
asm void setHeavyBoots__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E2580.s"
}

// getMagneBootsLocalAngleY__9daAlink_cFsi
// daAlink_c::getMagneBootsLocalAngleY(short, int)
asm void getMagneBootsLocalAngleY__9daAlink_cFsi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E2738.s"
}

// setMagneBootsMtx__9daAlink_cFP13cBgS_PolyInfoi
// daAlink_c::setMagneBootsMtx(cBgS_PolyInfo*, int)
asm void setMagneBootsMtx__9daAlink_cFP13cBgS_PolyInfoi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E2808.s"
}

// cancelMagneBootsOn__9daAlink_cFv
// daAlink_c::cancelMagneBootsOn(void)
asm void cancelMagneBootsOn__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E2DC4.s"
}

// checkMagneBootsFly__9daAlink_cFv
// daAlink_c::checkMagneBootsFly(void)
asm void checkMagneBootsFly__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E2F88.s"
}

// procBootsEquipInit__9daAlink_cFv
// daAlink_c::procBootsEquipInit(void)
asm void procBootsEquipInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E3048.s"
}

// procBootsEquip__9daAlink_cFv
// daAlink_c::procBootsEquip(void)
asm void procBootsEquip__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E30DC.s"
}

// procMagneBootsFlyInit__9daAlink_cFv
// daAlink_c::procMagneBootsFlyInit(void)
asm void procMagneBootsFlyInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E3218.s"
}

// procMagneBootsFly__9daAlink_cFv
// daAlink_c::procMagneBootsFly(void)
asm void procMagneBootsFly__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E3454.s"
}

// getBombExplodeTime__9daAlink_cCFv
// daAlink_c::getBombExplodeTime(const void)
asm void getBombExplodeTime__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E3760.s"
}

// getBombGravity__9daAlink_cCFv
// daAlink_c::getBombGravity(const void)
asm void getBombGravity__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E3770.s"
}

// getBombMaxFallSpeed__9daAlink_cCFv
// daAlink_c::getBombMaxFallSpeed(const void)
asm void getBombMaxFallSpeed__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E3780.s"
}

// getBombBoundRate__9daAlink_cCFv
// daAlink_c::getBombBoundRate(const void)
asm void getBombBoundRate__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E3790.s"
}

// getBombStopSpeedY__9daAlink_cCFv
// daAlink_c::getBombStopSpeedY(const void)
asm void getBombStopSpeedY__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E37A0.s"
}

// getBombMaxSpeedY__9daAlink_cCFv
// daAlink_c::getBombMaxSpeedY(const void)
asm void getBombMaxSpeedY__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E37B0.s"
}

// getBombEffScale__9daAlink_cCFv
// daAlink_c::getBombEffScale(const void)
asm void getBombEffScale__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E37C0.s"
}

// getBombAtR__9daAlink_cCFv
// daAlink_c::getBombAtR(const void)
asm void getBombAtR__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E37D0.s"
}

// getEnemyBombColorR__9daAlink_cCFv
// daAlink_c::getEnemyBombColorR(const void)
asm void getEnemyBombColorR__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E37E0.s"
}

// getBombWaterGravity__9daAlink_cCFv
// daAlink_c::getBombWaterGravity(const void)
asm void getBombWaterGravity__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E37F0.s"
}

// getBombWaterMaxFallSpeed__9daAlink_cCFv
// daAlink_c::getBombWaterMaxFallSpeed(const void)
asm void getBombWaterMaxFallSpeed__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E3800.s"
}

// getBombExplodeWaterEffectLimit__9daAlink_cCFv
// daAlink_c::getBombExplodeWaterEffectLimit(const void)
asm void getBombExplodeWaterEffectLimit__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E3810.s"
}

// getBombInsectLimitAngle__9daAlink_cCFv
// daAlink_c::getBombInsectLimitAngle(const void)
asm void getBombInsectLimitAngle__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E3820.s"
}

// daAlink_checkLightBallA__FP10fopAc_ac_c
// daAlink_checkLightBallA__FP10fopAc_ac_c(fopAc_ac_c*)
asm void daAlink_checkLightBallA__FP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E3830.s"
}

// daAlink_checkLightBallB__FP10fopAc_ac_c
// daAlink_checkLightBallB__FP10fopAc_ac_c(fopAc_ac_c*)
asm void daAlink_checkLightBallB__FP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E3858.s"
}

// daAlink_searchLightBall__FP10fopAc_ac_cPv
// daAlink_searchLightBall__FP10fopAc_ac_cPv(fopAc_ac_c*, void*)
asm void daAlink_searchLightBall__FP10fopAc_ac_cPv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E3880.s"
}

// checkGrabLineCheck__9daAlink_cFv
// daAlink_c::checkGrabLineCheck(void)
asm void checkGrabLineCheck__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E38EC.s"
}

// setGrabCollisionOffset__9daAlink_cFffP13cBgS_PolyInfo
// daAlink_c::setGrabCollisionOffset(float, float, cBgS_PolyInfo*)
asm void setGrabCollisionOffset__9daAlink_cFffP13cBgS_PolyInfo(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E3994.s"
}

// exchangeGrabActor__9daAlink_cFP10fopAc_ac_c
// daAlink_c::exchangeGrabActor(fopAc_ac_c*)
asm void exchangeGrabActor__9daAlink_cFP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E3A14.s"
}

// setForceGrab__9daAlink_cFP10fopAc_ac_cii
// daAlink_c::setForceGrab(fopAc_ac_c*, int, int)
asm void setForceGrab__9daAlink_cFP10fopAc_ac_cii(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E3A9C.s"
}

// getGrabThrowRate__9daAlink_cFv
// daAlink_c::getGrabThrowRate(void)
asm void getGrabThrowRate__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E3BCC.s"
}

// checkGrabThrowAnime__9daAlink_cCFv
// daAlink_c::checkGrabThrowAnime(const void)
asm void checkGrabThrowAnime__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E3C1C.s"
}

// checkGrabAnime__9daAlink_cCFv
// daAlink_c::checkGrabAnime(const void)
asm void checkGrabAnime__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E3C6C.s"
}

// checkGrabAnimeAndThrow__9daAlink_cCFv
// daAlink_c::checkGrabAnimeAndThrow(const void)
asm void checkGrabAnimeAndThrow__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E3C9C.s"
}

// checkGrabCarryActor__9daAlink_cFv
// daAlink_c::checkGrabCarryActor(void)
asm void checkGrabCarryActor__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E3CF4.s"
}

// checkGrabSlowMoveActor__9daAlink_cFv
// daAlink_c::checkGrabSlowMoveActor(void)
asm void checkGrabSlowMoveActor__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E3D1C.s"
}

// checkGrabHeavyActor__9daAlink_cFv
// daAlink_c::checkGrabHeavyActor(void)
asm void checkGrabHeavyActor__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E3D6C.s"
}

// checkGrabSideActor__9daAlink_cFv
// daAlink_c::checkGrabSideActor(void)
asm void checkGrabSideActor__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E3D94.s"
}

// setGrabUpperAnime__9daAlink_cFf
// daAlink_c::setGrabUpperAnime(float)
asm void setGrabUpperAnime__9daAlink_cFf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E3DBC.s"
}

// checkGrabRooster__9daAlink_cFv
// daAlink_c::checkGrabRooster(void)
asm void checkGrabRooster__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E3F20.s"
}

// setGrabItemPos__9daAlink_cFv
// daAlink_c::setGrabItemPos(void)
asm void setGrabItemPos__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E3F50.s"
}

// freeGrabItem__9daAlink_cFv
// daAlink_c::freeGrabItem(void)
asm void freeGrabItem__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E4BD4.s"
}

// setGrabUpperSpeedRate__9daAlink_cFv
// daAlink_c::setGrabUpperSpeedRate(void)
asm void setGrabUpperSpeedRate__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E4DEC.s"
}

// setCarryArmAngle__9daAlink_cFff
// daAlink_c::setCarryArmAngle(float, float)
asm void setCarryArmAngle__9daAlink_cFff(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E4FA8.s"
}

// checkGrabNotThrow__9daAlink_cFv
// daAlink_c::checkGrabNotThrow(void)
asm void checkGrabNotThrow__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E5150.s"
}

// checkNextActionGrab__9daAlink_cFv
// daAlink_c::checkNextActionGrab(void)
asm void checkNextActionGrab__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E5170.s"
}

// initGrabNextMode__9daAlink_cFv
// daAlink_c::initGrabNextMode(void)
asm void initGrabNextMode__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E53AC.s"
}

// setGrabItemThrow__9daAlink_cFv
// daAlink_c::setGrabItemThrow(void)
asm void setGrabItemThrow__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E53F8.s"
}

// checkUpperGrabItemThrow__9daAlink_cFf
// daAlink_c::checkUpperGrabItemThrow(float)
asm void checkUpperGrabItemThrow__9daAlink_cFf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E57AC.s"
}

// putObjLineCheck__9daAlink_cFR11dBgS_LinChkP4cXyzP10fopAc_ac_c
// daAlink_c::putObjLineCheck(dBgS_LinChk&, cXyz*, fopAc_ac_c*)
asm void putObjLineCheck__9daAlink_cFR11dBgS_LinChkP4cXyzP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E5830.s"
}

// grabLineCheck__9daAlink_cFP4cXyzP4cXyz
// daAlink_c::grabLineCheck(cXyz*, cXyz*)
asm void grabLineCheck__9daAlink_cFP4cXyzP4cXyz(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E5B6C.s"
}

// setGrabItemActor__9daAlink_cFP10fopAc_ac_c
// daAlink_c::setGrabItemActor(fopAc_ac_c*)
asm void setGrabItemActor__9daAlink_cFP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E5BB4.s"
}

// procGrabReadyInit__9daAlink_cFv
// daAlink_c::procGrabReadyInit(void)
asm void procGrabReadyInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E5CBC.s"
}

// procGrabReady__9daAlink_cFv
// daAlink_c::procGrabReady(void)
asm void procGrabReady__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E5EC8.s"
}

// procGrabUpInit__9daAlink_cFv
// daAlink_c::procGrabUpInit(void)
asm void procGrabUpInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E5FD0.s"
}

// procGrabUp__9daAlink_cFv
// daAlink_c::procGrabUp(void)
asm void procGrabUp__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E6230.s"
}

// procGrabMiss__9daAlink_cFv
// daAlink_c::procGrabMiss(void)
asm void procGrabMiss__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E637C.s"
}

// procGrabThrowInit__9daAlink_cFi
// daAlink_c::procGrabThrowInit(int)
asm void procGrabThrowInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E63F0.s"
}

// procGrabThrow__9daAlink_cFv
// daAlink_c::procGrabThrow(void)
asm void procGrabThrow__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E65F8.s"
}

// procGrabPutInit__9daAlink_cFv
// daAlink_c::procGrabPutInit(void)
asm void procGrabPutInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E672C.s"
}

// procGrabPut__9daAlink_cFv
// daAlink_c::procGrabPut(void)
asm void procGrabPut__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E6914.s"
}

// procGrabWaitInit__9daAlink_cFv
// daAlink_c::procGrabWaitInit(void)
asm void procGrabWaitInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E6A9C.s"
}

// procGrabWait__9daAlink_cFv
// daAlink_c::procGrabWait(void)
asm void procGrabWait__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E6C34.s"
}

// procGrabReboundInit__9daAlink_cFi
// daAlink_c::procGrabReboundInit(int)
asm void procGrabReboundInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E6D6C.s"
}

// procGrabRebound__9daAlink_cFv
// daAlink_c::procGrabRebound(void)
asm void procGrabRebound__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E6E0C.s"
}

// procGrabStandInit__9daAlink_cFv
// daAlink_c::procGrabStandInit(void)
asm void procGrabStandInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E6EEC.s"
}

// procGrabStand__9daAlink_cFv
// daAlink_c::procGrabStand(void)
asm void procGrabStand__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E6FE0.s"
}

// checkInsectActorName__9daAlink_cFP10fopAc_ac_c
// daAlink_c::checkInsectActorName(fopAc_ac_c*)
asm void checkInsectActorName__9daAlink_cFP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E70C0.s"
}

// procInsectCatchInit__9daAlink_cFv
// daAlink_c::procInsectCatchInit(void)
asm void procInsectCatchInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E70FC.s"
}

// procInsectCatch__9daAlink_cFv
// daAlink_c::procInsectCatch(void)
asm void procInsectCatch__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E71D4.s"
}

// procPickUpInit__9daAlink_cFv
// daAlink_c::procPickUpInit(void)
asm void procPickUpInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E7254.s"
}

// procPickUp__9daAlink_cFv
// daAlink_c::procPickUp(void)
asm void procPickUp__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E7460.s"
}

// procPickPutInit__9daAlink_cFi
// daAlink_c::procPickPutInit(int)
asm void procPickPutInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E75EC.s"
}

// procPickPut__9daAlink_cFv
// daAlink_c::procPickPut(void)
asm void procPickPut__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E76E0.s"
}

// checkSetChainPullAnime__9daAlink_cFs
// daAlink_c::checkSetChainPullAnime(short)
asm void checkSetChainPullAnime__9daAlink_cFs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E7894.s"
}

// getChainStickAngleY__9daAlink_cCFs
// daAlink_c::getChainStickAngleY(const short)
asm void getChainStickAngleY__9daAlink_cCFs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E794C.s"
}

// checkChainEmphasys__9daAlink_cFv
// daAlink_c::checkChainEmphasys(void)
asm void checkChainEmphasys__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E7994.s"
}

// searchFmChainPos__9daAlink_cFv
// daAlink_c::searchFmChainPos(void)
asm void searchFmChainPos__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E79F8.s"
}

// setFmChainPosFromOut__9daAlink_cFP10fopAc_ac_cP4cXyzi
// daAlink_c::setFmChainPosFromOut(fopAc_ac_c*, cXyz*, int)
asm void setFmChainPosFromOut__9daAlink_cFP10fopAc_ac_cP4cXyzi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E7AEC.s"
}

// checkChainBlockPushPull__9daAlink_cFv
// daAlink_c::checkChainBlockPushPull(void)
asm void checkChainBlockPushPull__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E7BD0.s"
}

// procFmChainUpInit__9daAlink_cFv
// daAlink_c::procFmChainUpInit(void)
asm void procFmChainUpInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E7C30.s"
}

// procFmChainUp__9daAlink_cFv
// daAlink_c::procFmChainUp(void)
asm void procFmChainUp__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E7CC0.s"
}

// procFmChainStrongPullInit__9daAlink_cFv
// daAlink_c::procFmChainStrongPullInit(void)
asm void procFmChainStrongPullInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E7DD8.s"
}

// procFmChainStrongPull__9daAlink_cFv
// daAlink_c::procFmChainStrongPull(void)
asm void procFmChainStrongPull__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E7E50.s"
}

// setWallGrabStatus__9daAlink_cFUcUc
// daAlink_c::setWallGrabStatus(unsigned char, unsigned char)
asm void setWallGrabStatus__9daAlink_cFUcUc(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E7ED0.s"
}

// getWallGrabStatus__9daAlink_cFv
// daAlink_c::getWallGrabStatus(void)
asm void getWallGrabStatus__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E7EE4.s"
}

// wallGrabTrigger__9daAlink_cFv
// daAlink_c::wallGrabTrigger(void)
asm void wallGrabTrigger__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E7EF4.s"
}

// wallGrabButton__9daAlink_cFv
// daAlink_c::wallGrabButton(void)
asm void wallGrabButton__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E7F18.s"
}

// setPushPullKeepData__9daAlink_cFQ29dBgW_Base13PushPullLabeli
asm void setPushPullKeepData__9daAlink_cFQ29dBgW_Base13PushPullLabeli(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E7F3C.s"
}

// checkPushPullTurnBlock__9daAlink_cFv
// daAlink_c::checkPushPullTurnBlock(void)
asm void checkPushPullTurnBlock__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E80A4.s"
}

// checkPullBehindWall__9daAlink_cFv
// daAlink_c::checkPullBehindWall(void)
asm void checkPullBehindWall__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E8148.s"
}

// offGoatStopGame__9daAlink_cFv
// daAlink_c::offGoatStopGame(void)
asm void offGoatStopGame__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E8298.s"
}

// checkGoatCatchActor__9daAlink_cFP10fopAc_ac_c
// daAlink_c::checkGoatCatchActor(fopAc_ac_c*)
asm void checkGoatCatchActor__9daAlink_cFP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E82B0.s"
}

// getGoatCatchDistance2__9daAlink_cFv
// daAlink_c::getGoatCatchDistance2(void)
asm void getGoatCatchDistance2__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E8314.s"
}

// endPushPull__9daAlink_cFv
// daAlink_c::endPushPull(void)
asm void endPushPull__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E8334.s"
}

// getPushPullAnimeSpeed__9daAlink_cFv
// daAlink_c::getPushPullAnimeSpeed(void)
asm void getPushPullAnimeSpeed__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E8354.s"
}

// procCoPushPullWaitInit__9daAlink_cFi
// daAlink_c::procCoPushPullWaitInit(int)
asm void procCoPushPullWaitInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E8428.s"
}

// procCoPushPullWait__9daAlink_cFv
// daAlink_c::procCoPushPullWait(void)
asm void procCoPushPullWait__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E857C.s"
}

// procCoPushMoveInit__9daAlink_cFii
// daAlink_c::procCoPushMoveInit(int, int)
asm void procCoPushMoveInit__9daAlink_cFii(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E875C.s"
}

// procCoPushMove__9daAlink_cFv
// daAlink_c::procCoPushMove(void)
asm void procCoPushMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E89F0.s"
}

// procPullMoveInit__9daAlink_cFi
// daAlink_c::procPullMoveInit(int)
asm void procPullMoveInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E8D1C.s"
}

// procPullMove__9daAlink_cFv
// daAlink_c::procPullMove(void)
asm void procPullMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E8F44.s"
}

// daAlink_searchGoat__FP10fopAc_ac_cPv
// daAlink_searchGoat__FP10fopAc_ac_cPv(fopAc_ac_c*, void*)
asm void daAlink_searchGoat__FP10fopAc_ac_cPv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E91B0.s"
}

// cancelGoronThrowEvent__9daAlink_cFv
// daAlink_c::cancelGoronThrowEvent(void)
asm void cancelGoronThrowEvent__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E91C4.s"
}

// setGoatStopGameFail__9daAlink_cFP10fopAc_ac_c
// daAlink_c::setGoatStopGameFail(fopAc_ac_c*)
asm void setGoatStopGameFail__9daAlink_cFP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E9210.s"
}

// procGoatMoveInit__9daAlink_cFv
// daAlink_c::procGoatMoveInit(void)
asm void procGoatMoveInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E9344.s"
}

// procGoatMove__9daAlink_cFv
// daAlink_c::procGoatMove(void)
asm void procGoatMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E9434.s"
}

// procGoatCatchInit__9daAlink_cFP10fopAc_ac_cf
// daAlink_c::procGoatCatchInit(fopAc_ac_c*, float)
asm void procGoatCatchInit__9daAlink_cFP10fopAc_ac_cf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E9894.s"
}

// procGoatCatch__9daAlink_cFv
// daAlink_c::procGoatCatch(void)
asm void procGoatCatch__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800E9BD0.s"
}

// procGoatStrokeInit__9daAlink_cFv
// daAlink_c::procGoatStrokeInit(void)
asm void procGoatStrokeInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EA2A8.s"
}

// procGoatStroke__9daAlink_cFv
// daAlink_c::procGoatStroke(void)
asm void procGoatStroke__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EA3AC.s"
}

// procGoronMoveInit__9daAlink_cFv
// daAlink_c::procGoronMoveInit(void)
asm void procGoronMoveInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EA3F4.s"
}

// procGoronMove__9daAlink_cFv
// daAlink_c::procGoronMove(void)
asm void procGoronMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EA4CC.s"
}

// checkSumouVsActor__9daAlink_cFv
// daAlink_c::checkSumouVsActor(void)
asm void checkSumouVsActor__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EA844.s"
}

// cancelSumouMode__9daAlink_cFv
// daAlink_c::cancelSumouMode(void)
asm void cancelSumouMode__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EA8D0.s"
}

// sumouPunchTrigger__9daAlink_cFv
// daAlink_c::sumouPunchTrigger(void)
asm void sumouPunchTrigger__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EA908.s"
}

// setSumouPunchStatus__9daAlink_cFv
// daAlink_c::setSumouPunchStatus(void)
asm void setSumouPunchStatus__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EA92C.s"
}

// procSumouReadyInit__9daAlink_cFv
// daAlink_c::procSumouReadyInit(void)
asm void procSumouReadyInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EA950.s"
}

// procSumouReady__9daAlink_cFv
// daAlink_c::procSumouReady(void)
asm void procSumouReady__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EAA28.s"
}

// procSumouMoveInit__9daAlink_cFv
// daAlink_c::procSumouMoveInit(void)
asm void procSumouMoveInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EAC4C.s"
}

// procSumouMove__9daAlink_cFv
// daAlink_c::procSumouMove(void)
asm void procSumouMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EAD84.s"
}

// procSumouSideMoveInit__9daAlink_cFv
// daAlink_c::procSumouSideMoveInit(void)
asm void procSumouSideMoveInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EB208.s"
}

// procSumouSideMove__9daAlink_cFv
// daAlink_c::procSumouSideMove(void)
asm void procSumouSideMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EB2BC.s"
}

// procSumouActionInit__9daAlink_cFiii
// daAlink_c::procSumouActionInit(int, int, int)
asm void procSumouActionInit__9daAlink_cFiii(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EB624.s"
}

// procSumouAction__9daAlink_cFv
// daAlink_c::procSumouAction(void)
asm void procSumouAction__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EBCE0.s"
}

// procSumouStaggerInit__9daAlink_cFv
// daAlink_c::procSumouStaggerInit(void)
asm void procSumouStaggerInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EC0F8.s"
}

// procSumouStagger__9daAlink_cFv
// daAlink_c::procSumouStagger(void)
asm void procSumouStagger__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EC170.s"
}

// procSumouWinLoseInit__9daAlink_cFv
// daAlink_c::procSumouWinLoseInit(void)
asm void procSumouWinLoseInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EC20C.s"
}

// procSumouWinLose__9daAlink_cFv
// daAlink_c::procSumouWinLose(void)
asm void procSumouWinLose__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EC3D8.s"
}

// procSumouShikoInit__9daAlink_cFv
// daAlink_c::procSumouShikoInit(void)
asm void procSumouShikoInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EC538.s"
}

// procSumouShiko__9daAlink_cFv
// daAlink_c::procSumouShiko(void)
asm void procSumouShiko__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EC5F4.s"
}

// daAlink_searchBoar__FP10fopAc_ac_cPv
// daAlink_searchBoar__FP10fopAc_ac_cPv(fopAc_ac_c*, void*)
asm void daAlink_searchBoar__FP10fopAc_ac_cPv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EC724.s"
}

// daAlink_searchCoach__FP10fopAc_ac_cPv
// daAlink_searchCoach__FP10fopAc_ac_cPv(fopAc_ac_c*, void*)
asm void daAlink_searchCoach__FP10fopAc_ac_cPv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EC758.s"
}

// checkHorseZeldaBowMode__9daAlink_cFv
// daAlink_c::checkHorseZeldaBowMode(void)
asm void checkHorseZeldaBowMode__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EC76C.s"
}

// setHorseZeldaDamage__9daAlink_cFv
// daAlink_c::setHorseZeldaDamage(void)
asm void setHorseZeldaDamage__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EC7B0.s"
}

// checkHorseDashAccept__9daAlink_cFv
// daAlink_c::checkHorseDashAccept(void)
asm void checkHorseDashAccept__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EC7DC.s"
}

// checkCowGame__9daAlink_cFv
// daAlink_c::checkCowGame(void)
asm void checkCowGame__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EC814.s"
}

// getReinRideDirection__9daAlink_cFv
// daAlink_c::getReinRideDirection(void)
asm void getReinRideDirection__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EC87C.s"
}

// checkReinRideBgCheck__9daAlink_cFv
// daAlink_c::checkReinRideBgCheck(void)
asm void checkReinRideBgCheck__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EC8F8.s"
}

// commonInitForceRideRein__9daAlink_cFv
// daAlink_c::commonInitForceRideRein(void)
asm void commonInitForceRideRein__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800ECA3C.s"
}

// initForceRideBoar__9daAlink_cFv
// daAlink_c::initForceRideBoar(void)
asm void initForceRideBoar__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800ECAAC.s"
}

// initForceRideHorse__9daAlink_cFv
// daAlink_c::initForceRideHorse(void)
asm void initForceRideHorse__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800ECB58.s"
}

// rideGetOff__9daAlink_cFv
// daAlink_c::rideGetOff(void)
asm void rideGetOff__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800ECBD0.s"
}

// checkHorseNotDamageReaction__9daAlink_cCFv
// daAlink_c::checkHorseNotDamageReaction(const void)
asm void checkHorseNotDamageReaction__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800ECD90.s"
}

// checkHorseWaitLashAnime__9daAlink_cCFv
// daAlink_c::checkHorseWaitLashAnime(const void)
asm void checkHorseWaitLashAnime__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800ECDC4.s"
}

// checkHorseReinLeftOnly__9daAlink_cCFv
// daAlink_c::checkHorseReinLeftOnly(const void)
asm void checkHorseReinLeftOnly__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800ECDEC.s"
}

// getReinHandType__9daAlink_cCFv
// daAlink_c::getReinHandType(const void)
asm void getReinHandType__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800ECE10.s"
}

// checkHorseLieAnime__9daAlink_cCFv
// daAlink_c::checkHorseLieAnime(const void)
asm void checkHorseLieAnime__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800ECF04.s"
}

// checkHorseSubjectivity__9daAlink_cCFv
// daAlink_c::checkHorseSubjectivity(const void)
asm void checkHorseSubjectivity__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800ECF5C.s"
}

// setHorseSwordUpAnime__9daAlink_cFv
// daAlink_c::setHorseSwordUpAnime(void)
asm void setHorseSwordUpAnime__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800ECF9C.s"
}

// setHorseTurnUpperAnime__9daAlink_cFi
// daAlink_c::setHorseTurnUpperAnime(int)
asm void setHorseTurnUpperAnime__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800ECFF4.s"
}

// checkHorseNoUpperAnime__9daAlink_cCFv
// daAlink_c::checkHorseNoUpperAnime(const void)
asm void checkHorseNoUpperAnime__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800ED074.s"
}

// getHorseReinHandPos__9daAlink_cFP4cXyzP4cXyz
// daAlink_c::getHorseReinHandPos(cXyz*, cXyz*)
asm void getHorseReinHandPos__9daAlink_cFP4cXyzP4cXyz(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800ED0D4.s"
}

// checkHorseNotGrab__9daAlink_cCFv
// daAlink_c::checkHorseNotGrab(const void)
asm void checkHorseNotGrab__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800ED1F0.s"
}

// setHorseStirrup__9daAlink_cFv
// daAlink_c::setHorseStirrup(void)
asm void setHorseStirrup__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800ED310.s"
}

// changeBoarRunRide__9daAlink_cFv
// daAlink_c::changeBoarRunRide(void)
asm void changeBoarRunRide__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800ED4B8.s"
}

// setSyncHorsePos__9daAlink_cFv
// daAlink_c::setSyncHorsePos(void)
asm void setSyncHorsePos__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800ED4DC.s"
}

// setSyncBoarPos__9daAlink_cFv
// daAlink_c::setSyncBoarPos(void)
asm void setSyncBoarPos__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800ED78C.s"
}

// setSyncBoarRunPos__9daAlink_cFv
// daAlink_c::setSyncBoarRunPos(void)
asm void setSyncBoarRunPos__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800ED90C.s"
}

// setSyncRidePos__9daAlink_cFv
// daAlink_c::setSyncRidePos(void)
asm void setSyncRidePos__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EDA24.s"
}

// setHorseTurnAnime__9daAlink_cFv
// daAlink_c::setHorseTurnAnime(void)
asm void setHorseTurnAnime__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EDA78.s"
}

// getBaseHorseAnime__9daAlink_cFPQ29daAlink_c11daAlink_ANM
asm void getBaseHorseAnime__9daAlink_cFPQ29daAlink_c11daAlink_ANM(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EDB48.s"
}

// checkHorseSpecialProc__9daAlink_cFv
// daAlink_c::checkHorseSpecialProc(void)
asm void checkHorseSpecialProc__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EDD6C.s"
}

// checkHorseServiceWaitAnime__9daAlink_cFv
// daAlink_c::checkHorseServiceWaitAnime(void)
asm void checkHorseServiceWaitAnime__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EDE8C.s"
}

// setSyncHorse__9daAlink_cFi
// daAlink_c::setSyncHorse(int)
asm void setSyncHorse__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EDEEC.s"
}

// setSyncBoar__9daAlink_cFi
// daAlink_c::setSyncBoar(int)
asm void setSyncBoar__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EE64C.s"
}

// setSyncRide__9daAlink_cFi
// daAlink_c::setSyncRide(int)
asm void setSyncRide__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EE918.s"
}

// setBaseHorseAnimeFrame__9daAlink_cFv
// daAlink_c::setBaseHorseAnimeFrame(void)
asm void setBaseHorseAnimeFrame__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EEAE8.s"
}

// setBaseBoarAnime__9daAlink_cFv
// daAlink_c::setBaseBoarAnime(void)
asm void setBaseBoarAnime__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EEC98.s"
}

// setBaseRideAnime__9daAlink_cFv
// daAlink_c::setBaseRideAnime(void)
asm void setBaseRideAnime__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EED98.s"
}

// checkHorseSwordUpSpped__9daAlink_cFv
// daAlink_c::checkHorseSwordUpSpped(void)
asm void checkHorseSwordUpSpped__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EEE30.s"
}

// setHorseSwordUp__9daAlink_cFi
// daAlink_c::setHorseSwordUp(int)
asm void setHorseSwordUp__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EEE5C.s"
}

// setRideSubjectAngle__9daAlink_cFs
// daAlink_c::setRideSubjectAngle(short)
asm void setRideSubjectAngle__9daAlink_cFs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EEF30.s"
}

// setBodyAngleRideReadyAnime__9daAlink_cFv
// daAlink_c::setBodyAngleRideReadyAnime(void)
asm void setBodyAngleRideReadyAnime__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EF050.s"
}

// checkHorseGetOffWallCheck__9daAlink_cFP4cXyzP4cXyzs
// daAlink_c::checkHorseGetOffWallCheck(cXyz*, cXyz*, short)
asm void checkHorseGetOffWallCheck__9daAlink_cFP4cXyzP4cXyzs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EF0E8.s"
}

// checkHorseGetOffDirection__9daAlink_cFv
// daAlink_c::checkHorseGetOffDirection(void)
asm void checkHorseGetOffDirection__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EF198.s"
}

// boarForceGetOff__9daAlink_cFv
// daAlink_c::boarForceGetOff(void)
asm void boarForceGetOff__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EF35C.s"
}

// horseGetOffEnd__9daAlink_cFv
// daAlink_c::horseGetOffEnd(void)
asm void horseGetOffEnd__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EF394.s"
}

// checkNextActionHorse__9daAlink_cFv
// daAlink_c::checkNextActionHorse(void)
asm void checkNextActionHorse__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EF450.s"
}

// checkHorseGetOff__9daAlink_cFv
// daAlink_c::checkHorseGetOff(void)
asm void checkHorseGetOff__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EF598.s"
}

// checkHorseGetOffAndSetDoStatus__9daAlink_cFv
// daAlink_c::checkHorseGetOffAndSetDoStatus(void)
asm void checkHorseGetOffAndSetDoStatus__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EF6B0.s"
}

// setHorseGetOff__9daAlink_cFi
// daAlink_c::setHorseGetOff(int)
asm void setHorseGetOff__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EF884.s"
}

// procHorseRideInit__9daAlink_cFv
// daAlink_c::procHorseRideInit(void)
asm void procHorseRideInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EF95C.s"
}

// procHorseRide__9daAlink_cFv
// daAlink_c::procHorseRide(void)
asm void procHorseRide__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800EFDC4.s"
}

// procHorseGetOffInit__9daAlink_cFi
// daAlink_c::procHorseGetOffInit(int)
asm void procHorseGetOffInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F038C.s"
}

// procHorseGetOff__9daAlink_cFv
// daAlink_c::procHorseGetOff(void)
asm void procHorseGetOff__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F0620.s"
}

// procHorseWaitInit__9daAlink_cFv
// daAlink_c::procHorseWaitInit(void)
asm void procHorseWaitInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F0980.s"
}

// procHorseWait__9daAlink_cFv
// daAlink_c::procHorseWait(void)
asm void procHorseWait__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F0AA4.s"
}

// procHorseTurnInit__9daAlink_cFv
// daAlink_c::procHorseTurnInit(void)
asm void procHorseTurnInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F0C6C.s"
}

// procHorseTurn__9daAlink_cFv
// daAlink_c::procHorseTurn(void)
asm void procHorseTurn__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F0CE4.s"
}

// procHorseJumpInit__9daAlink_cFv
// daAlink_c::procHorseJumpInit(void)
asm void procHorseJumpInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F1060.s"
}

// procHorseJump__9daAlink_cFv
// daAlink_c::procHorseJump(void)
asm void procHorseJump__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F10F8.s"
}

// procHorseLandInit__9daAlink_cFv
// daAlink_c::procHorseLandInit(void)
asm void procHorseLandInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F1188.s"
}

// procHorseLand__9daAlink_cFv
// daAlink_c::procHorseLand(void)
asm void procHorseLand__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F1204.s"
}

// procHorseSubjectivityInit__9daAlink_cFv
// daAlink_c::procHorseSubjectivityInit(void)
asm void procHorseSubjectivityInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F1294.s"
}

// procHorseSubjectivity__9daAlink_cFv
// daAlink_c::procHorseSubjectivity(void)
asm void procHorseSubjectivity__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F12F8.s"
}

// procHorseCutInit__9daAlink_cFv
// daAlink_c::procHorseCutInit(void)
asm void procHorseCutInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F13D8.s"
}

// procHorseCut__9daAlink_cFv
// daAlink_c::procHorseCut(void)
asm void procHorseCut__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F1688.s"
}

// procHorseCutChargeReadyInit__9daAlink_cFv
// daAlink_c::procHorseCutChargeReadyInit(void)
asm void procHorseCutChargeReadyInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F1894.s"
}

// procHorseCutChargeReady__9daAlink_cFv
// daAlink_c::procHorseCutChargeReady(void)
asm void procHorseCutChargeReady__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F194C.s"
}

// procHorseCutTurnInit__9daAlink_cFv
// daAlink_c::procHorseCutTurnInit(void)
asm void procHorseCutTurnInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F1AAC.s"
}

// procHorseCutTurn__9daAlink_cFv
// daAlink_c::procHorseCutTurn(void)
asm void procHorseCutTurn__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F1BA4.s"
}

// procHorseDamageInit__9daAlink_cFP12dCcD_GObjInf
// daAlink_c::procHorseDamageInit(dCcD_GObjInf*)
asm void procHorseDamageInit__9daAlink_cFP12dCcD_GObjInf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F1D18.s"
}

// procHorseDamage__9daAlink_cFv
// daAlink_c::procHorseDamage(void)
asm void procHorseDamage__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F2028.s"
}

// procHorseBowSubjectInit__9daAlink_cFv
// daAlink_c::procHorseBowSubjectInit(void)
asm void procHorseBowSubjectInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F2150.s"
}

// procHorseBowSubject__9daAlink_cFv
// daAlink_c::procHorseBowSubject(void)
asm void procHorseBowSubject__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F21B4.s"
}

// procHorseBowMoveInit__9daAlink_cFv
// daAlink_c::procHorseBowMoveInit(void)
asm void procHorseBowMoveInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F224C.s"
}

// procHorseBowMove__9daAlink_cFv
// daAlink_c::procHorseBowMove(void)
asm void procHorseBowMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F22A8.s"
}

// procHorseGrabMoveInit__9daAlink_cFv
// daAlink_c::procHorseGrabMoveInit(void)
asm void procHorseGrabMoveInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F2334.s"
}

// procHorseGrabMove__9daAlink_cFv
// daAlink_c::procHorseGrabMove(void)
asm void procHorseGrabMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F2390.s"
}

// procHorseBoomerangSubjectInit__9daAlink_cFv
// daAlink_c::procHorseBoomerangSubjectInit(void)
asm void procHorseBoomerangSubjectInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F2454.s"
}

// procHorseBoomerangSubject__9daAlink_cFv
// daAlink_c::procHorseBoomerangSubject(void)
asm void procHorseBoomerangSubject__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F24C8.s"
}

// procHorseBoomerangMoveInit__9daAlink_cFv
// daAlink_c::procHorseBoomerangMoveInit(void)
asm void procHorseBoomerangMoveInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F25B4.s"
}

// procHorseBoomerangMove__9daAlink_cFv
// daAlink_c::procHorseBoomerangMove(void)
asm void procHorseBoomerangMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F2628.s"
}

// procHorseHookshotSubjectInit__9daAlink_cFv
// daAlink_c::procHorseHookshotSubjectInit(void)
asm void procHorseHookshotSubjectInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F26F4.s"
}

// procHorseHookshotSubject__9daAlink_cFv
// daAlink_c::procHorseHookshotSubject(void)
asm void procHorseHookshotSubject__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F2770.s"
}

// procHorseHookshotMoveInit__9daAlink_cFv
// daAlink_c::procHorseHookshotMoveInit(void)
asm void procHorseHookshotMoveInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F2824.s"
}

// procHorseHookshotMove__9daAlink_cFv
// daAlink_c::procHorseHookshotMove(void)
asm void procHorseHookshotMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F2898.s"
}

// procHorseBottleDrinkInit__9daAlink_cFUs
// daAlink_c::procHorseBottleDrinkInit(unsigned short)
asm void procHorseBottleDrinkInit__9daAlink_cFUs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F2934.s"
}

// procHorseBottleDrink__9daAlink_cFv
// daAlink_c::procHorseBottleDrink(void)
asm void procHorseBottleDrink__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F2AD8.s"
}

// procHorseKandelaarPourInit__9daAlink_cFv
// daAlink_c::procHorseKandelaarPourInit(void)
asm void procHorseKandelaarPourInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F2B4C.s"
}

// procHorseKandelaarPour__9daAlink_cFv
// daAlink_c::procHorseKandelaarPour(void)
asm void procHorseKandelaarPour__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F2C78.s"
}

// procHorseComebackInit__9daAlink_cFv
// daAlink_c::procHorseComebackInit(void)
asm void procHorseComebackInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F2D84.s"
}

// procHorseComeback__9daAlink_cFv
// daAlink_c::procHorseComeback(void)
asm void procHorseComeback__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F2DE4.s"
}

// procHorseRunInit__9daAlink_cFv
// daAlink_c::procHorseRunInit(void)
asm void procHorseRunInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F2EE0.s"
}

// procHorseRun__9daAlink_cFv
// daAlink_c::procHorseRun(void)
asm void procHorseRun__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F2F98.s"
}

// procHorseHangInit__9daAlink_cFP12dCcD_GObjInfi
// daAlink_c::procHorseHangInit(dCcD_GObjInf*, int)
asm void procHorseHangInit__9daAlink_cFP12dCcD_GObjInfi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F3430.s"
}

// procHorseHang__9daAlink_cFv
// daAlink_c::procHorseHang(void)
asm void procHorseHang__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F3580.s"
}

// procHorseGetKeyInit__9daAlink_cFv
// daAlink_c::procHorseGetKeyInit(void)
asm void procHorseGetKeyInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F36E4.s"
}

// procHorseGetKey__9daAlink_cFv
// daAlink_c::procHorseGetKey(void)
asm void procHorseGetKey__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F3754.s"
}

// procHorseLookDownInit__9daAlink_cFv
// daAlink_c::procHorseLookDownInit(void)
asm void procHorseLookDownInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F3818.s"
}

// procHorseLookDown__9daAlink_cFv
// daAlink_c::procHorseLookDown(void)
asm void procHorseLookDown__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F3894.s"
}

// procBoarRunInit__9daAlink_cFv
// daAlink_c::procBoarRunInit(void)
asm void procBoarRunInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F38E8.s"
}

// procBoarRun__9daAlink_cFv
// daAlink_c::procBoarRun(void)
asm void procBoarRun__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F3998.s"
}

// getCanoeMaxSpeed__9daAlink_cCFv
// daAlink_c::getCanoeMaxSpeed(const void)
asm void getCanoeMaxSpeed__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F3BB0.s"
}

// getCanoeBackMaxSpeed__9daAlink_cCFv
// daAlink_c::getCanoeBackMaxSpeed(const void)
asm void getCanoeBackMaxSpeed__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F3BDC.s"
}

// getCanoeCres__9daAlink_cCFv
// daAlink_c::getCanoeCres(const void)
asm void getCanoeCres__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F3BEC.s"
}

// getCanoeSpeedRate__9daAlink_cCFv
// daAlink_c::getCanoeSpeedRate(const void)
asm void getCanoeSpeedRate__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F3C18.s"
}

// getCanoeMaxRotSpeed__9daAlink_cCFv
// daAlink_c::getCanoeMaxRotSpeed(const void)
asm void getCanoeMaxRotSpeed__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F3C44.s"
}

// getCanoeLocalPaddleTop__9daAlink_cFv
// daAlink_c::getCanoeLocalPaddleTop(void)
asm void getCanoeLocalPaddleTop__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F3CCC.s"
}

// daAlink_searchCanoe__FP10fopAc_ac_cPv
// daAlink_searchCanoe__FP10fopAc_ac_cPv(fopAc_ac_c*, void*)
asm void daAlink_searchCanoe__FP10fopAc_ac_cPv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F3CD8.s"
}

// checkCanoeRideTandem__9daAlink_cFv
// daAlink_c::checkCanoeRideTandem(void)
asm void checkCanoeRideTandem__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F3CF8.s"
}

// checkFishingRodAndLureItem__9daAlink_cCFv
// daAlink_c::checkFishingRodAndLureItem(const void)
asm void checkFishingRodAndLureItem__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F3D58.s"
}

// initFishingRodHand__9daAlink_cFv
// daAlink_c::initFishingRodHand(void)
asm void initFishingRodHand__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F3DA0.s"
}

// getCanoePaddleMatrix__9daAlink_cFv
// daAlink_c::getCanoePaddleMatrix(void)
asm void getCanoePaddleMatrix__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F3DFC.s"
}

// checkFishingRodGrab__9daAlink_cCFP10fopAc_ac_c
// daAlink_c::checkFishingRodGrab(const fopAc_ac_c*)
asm void checkFishingRodGrab__9daAlink_cCFP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F3E4C.s"
}

// checkCanoePaddleGrab__9daAlink_cCFP10fopAc_ac_c
// daAlink_c::checkCanoePaddleGrab(const fopAc_ac_c*)
asm void checkCanoePaddleGrab__9daAlink_cCFP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F3EB8.s"
}

// checkCanoeFishingRodGrabOrPut__9daAlink_cCFv
// daAlink_c::checkCanoeFishingRodGrabOrPut(const void)
asm void checkCanoeFishingRodGrabOrPut__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F3F38.s"
}

// initCanoeRide__9daAlink_cFv
// daAlink_c::initCanoeRide(void)
asm void initCanoeRide__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F3FC4.s"
}

// checkCanoeJumpRide__9daAlink_cFv
// daAlink_c::checkCanoeJumpRide(void)
asm void checkCanoeJumpRide__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F4008.s"
}

// setArmReelAnime__9daAlink_cFv
// daAlink_c::setArmReelAnime(void)
asm void setArmReelAnime__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F40E4.s"
}

// setFishingWaitAction__9daAlink_cFv
// daAlink_c::setFishingWaitAction(void)
asm void setFishingWaitAction__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F4140.s"
}

// setFishGetFace__9daAlink_cFv
// daAlink_c::setFishGetFace(void)
asm void setFishGetFace__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F4490.s"
}

// setRideCanoeBasePos__9daAlink_cFP10fopAc_ac_c
// daAlink_c::setRideCanoeBasePos(fopAc_ac_c*)
asm void setRideCanoeBasePos__9daAlink_cFP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F4564.s"
}

// setSyncCanoePos__9daAlink_cFv
// daAlink_c::setSyncCanoePos(void)
asm void setSyncCanoePos__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F459C.s"
}

// canoeCommon__9daAlink_cFv
// daAlink_c::canoeCommon(void)
asm void canoeCommon__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F47D8.s"
}

// checkNextActionCanoe__9daAlink_cFv
// daAlink_c::checkNextActionCanoe(void)
asm void checkNextActionCanoe__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F4924.s"
}

// procCanoeRideInit__9daAlink_cFv
// daAlink_c::procCanoeRideInit(void)
asm void procCanoeRideInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F4A50.s"
}

// procCanoeRide__9daAlink_cFv
// daAlink_c::procCanoeRide(void)
asm void procCanoeRide__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F4B90.s"
}

// procCanoeJumpRideInit__9daAlink_cFP10fopAc_ac_c
// daAlink_c::procCanoeJumpRideInit(fopAc_ac_c*)
asm void procCanoeJumpRideInit__9daAlink_cFP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F4C78.s"
}

// procCanoeJumpRide__9daAlink_cFv
// daAlink_c::procCanoeJumpRide(void)
asm void procCanoeJumpRide__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F4D84.s"
}

// procCanoeGetOffInit__9daAlink_cFv
// daAlink_c::procCanoeGetOffInit(void)
asm void procCanoeGetOffInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F4DF8.s"
}

// procCanoeGetOff__9daAlink_cFv
// daAlink_c::procCanoeGetOff(void)
asm void procCanoeGetOff__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F5048.s"
}

// procCanoeWaitInit__9daAlink_cFi
// daAlink_c::procCanoeWaitInit(int)
asm void procCanoeWaitInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F51E4.s"
}

// procCanoeWait__9daAlink_cFv
// daAlink_c::procCanoeWait(void)
asm void procCanoeWait__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F542C.s"
}

// procCanoeRowInit__9daAlink_cFi
// daAlink_c::procCanoeRowInit(int)
asm void procCanoeRowInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F571C.s"
}

// procCanoeRow__9daAlink_cFv
// daAlink_c::procCanoeRow(void)
asm void procCanoeRow__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F5A1C.s"
}

// procCanoePaddleShiftInit__9daAlink_cFi
// daAlink_c::procCanoePaddleShiftInit(int)
asm void procCanoePaddleShiftInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F5D04.s"
}

// procCanoePaddleShift__9daAlink_cFv
// daAlink_c::procCanoePaddleShift(void)
asm void procCanoePaddleShift__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F5DB8.s"
}

// procCanoePaddlePutInit__9daAlink_cFi
// daAlink_c::procCanoePaddlePutInit(int)
asm void procCanoePaddlePutInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F5EA8.s"
}

// procCanoePaddlePut__9daAlink_cFv
// daAlink_c::procCanoePaddlePut(void)
asm void procCanoePaddlePut__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F5FEC.s"
}

// procCanoePaddleGrabInit__9daAlink_cFv
// daAlink_c::procCanoePaddleGrabInit(void)
asm void procCanoePaddleGrabInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F6140.s"
}

// procCanoePaddleGrab__9daAlink_cFv
// daAlink_c::procCanoePaddleGrab(void)
asm void procCanoePaddleGrab__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F6188.s"
}

// procCanoeRodGrabInit__9daAlink_cFv
// daAlink_c::procCanoeRodGrabInit(void)
asm void procCanoeRodGrabInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F6320.s"
}

// procCanoeRodGrab__9daAlink_cFv
// daAlink_c::procCanoeRodGrab(void)
asm void procCanoeRodGrab__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F6394.s"
}

// procCanoeFishingWaitInit__9daAlink_cFv
// daAlink_c::procCanoeFishingWaitInit(void)
asm void procCanoeFishingWaitInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F6464.s"
}

// procCanoeFishingWait__9daAlink_cFv
// daAlink_c::procCanoeFishingWait(void)
asm void procCanoeFishingWait__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F659C.s"
}

// procCanoeFishingReelInit__9daAlink_cFv
// daAlink_c::procCanoeFishingReelInit(void)
asm void procCanoeFishingReelInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F67C0.s"
}

// procCanoeFishingReel__9daAlink_cFv
// daAlink_c::procCanoeFishingReel(void)
asm void procCanoeFishingReel__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F6874.s"
}

// procCanoeFishingGetInit__9daAlink_cFv
// daAlink_c::procCanoeFishingGetInit(void)
asm void procCanoeFishingGetInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F69D4.s"
}

// procCanoeFishingGet__9daAlink_cFv
// daAlink_c::procCanoeFishingGet(void)
asm void procCanoeFishingGet__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F6A70.s"
}

// procCanoeSubjectivityInit__9daAlink_cFv
// daAlink_c::procCanoeSubjectivityInit(void)
asm void procCanoeSubjectivityInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F6BEC.s"
}

// procCanoeSubjectivity__9daAlink_cFv
// daAlink_c::procCanoeSubjectivity(void)
asm void procCanoeSubjectivity__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F6C30.s"
}

// procCanoeBowSubjectInit__9daAlink_cFv
// daAlink_c::procCanoeBowSubjectInit(void)
asm void procCanoeBowSubjectInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F6D10.s"
}

// procCanoeBowSubject__9daAlink_cFv
// daAlink_c::procCanoeBowSubject(void)
asm void procCanoeBowSubject__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F6D64.s"
}

// procCanoeBowMoveInit__9daAlink_cFv
// daAlink_c::procCanoeBowMoveInit(void)
asm void procCanoeBowMoveInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F6DF0.s"
}

// procCanoeBowMove__9daAlink_cFv
// daAlink_c::procCanoeBowMove(void)
asm void procCanoeBowMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F6E44.s"
}

// procCanoeGrabMoveInit__9daAlink_cFv
// daAlink_c::procCanoeGrabMoveInit(void)
asm void procCanoeGrabMoveInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F6EB0.s"
}

// procCanoeGrabMove__9daAlink_cFv
// daAlink_c::procCanoeGrabMove(void)
asm void procCanoeGrabMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F6EFC.s"
}

// procCanoeBoomerangSubjectInit__9daAlink_cFv
// daAlink_c::procCanoeBoomerangSubjectInit(void)
asm void procCanoeBoomerangSubjectInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F6FA4.s"
}

// procCanoeBoomerangSubject__9daAlink_cFv
// daAlink_c::procCanoeBoomerangSubject(void)
asm void procCanoeBoomerangSubject__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F7010.s"
}

// procCanoeBoomerangMoveInit__9daAlink_cFv
// daAlink_c::procCanoeBoomerangMoveInit(void)
asm void procCanoeBoomerangMoveInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F70F0.s"
}

// procCanoeBoomerangMove__9daAlink_cFv
// daAlink_c::procCanoeBoomerangMove(void)
asm void procCanoeBoomerangMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F715C.s"
}

// procCanoeHookshotSubjectInit__9daAlink_cFv
// daAlink_c::procCanoeHookshotSubjectInit(void)
asm void procCanoeHookshotSubjectInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F7208.s"
}

// procCanoeHookshotSubject__9daAlink_cFv
// daAlink_c::procCanoeHookshotSubject(void)
asm void procCanoeHookshotSubject__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F7274.s"
}

// procCanoeHookshotMoveInit__9daAlink_cFv
// daAlink_c::procCanoeHookshotMoveInit(void)
asm void procCanoeHookshotMoveInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F731C.s"
}

// procCanoeHookshotMove__9daAlink_cFv
// daAlink_c::procCanoeHookshotMove(void)
asm void procCanoeHookshotMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F7388.s"
}

// procCanoeBottleDrinkInit__9daAlink_cFUs
// daAlink_c::procCanoeBottleDrinkInit(unsigned short)
asm void procCanoeBottleDrinkInit__9daAlink_cFUs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F7404.s"
}

// procCanoeBottleDrink__9daAlink_cFv
// daAlink_c::procCanoeBottleDrink(void)
asm void procCanoeBottleDrink__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F7550.s"
}

// procCanoeKandelaarPourInit__9daAlink_cFv
// daAlink_c::procCanoeKandelaarPourInit(void)
asm void procCanoeKandelaarPourInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F75BC.s"
}

// procCanoeKandelaarPour__9daAlink_cFv
// daAlink_c::procCanoeKandelaarPour(void)
asm void procCanoeKandelaarPour__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F7684.s"
}

// setGroundFishingRodActor__9daAlink_cFv
// daAlink_c::setGroundFishingRodActor(void)
asm void setGroundFishingRodActor__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F7708.s"
}

// procFishingCastInit__9daAlink_cFv
// daAlink_c::procFishingCastInit(void)
asm void procFishingCastInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F7760.s"
}

// procFishingCast__9daAlink_cFv
// daAlink_c::procFishingCast(void)
asm void procFishingCast__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F7814.s"
}

// procFishingFoodInit__9daAlink_cFv
// daAlink_c::procFishingFoodInit(void)
asm void procFishingFoodInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F7988.s"
}

// procFishingFood__9daAlink_cFv
// daAlink_c::procFishingFood(void)
asm void procFishingFood__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F7AA8.s"
}

// getCrawlMoveAnmSpeed__9daAlink_cFv
// daAlink_c::getCrawlMoveAnmSpeed(void)
asm void getCrawlMoveAnmSpeed__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F7C50.s"
}

// getCrawlMoveSpeed__9daAlink_cFv
// daAlink_c::getCrawlMoveSpeed(void)
asm void getCrawlMoveSpeed__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F7C74.s"
}

// setCrawlMoveDirectionArrow__9daAlink_cFv
// daAlink_c::setCrawlMoveDirectionArrow(void)
asm void setCrawlMoveDirectionArrow__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F7CE8.s"
}

// changeCrawlAutoMoveProc__9daAlink_cFP4cXyz
// daAlink_c::changeCrawlAutoMoveProc(cXyz*)
asm void changeCrawlAutoMoveProc__9daAlink_cFP4cXyz(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F7E48.s"
}

// getCrawlMoveVec__9daAlink_cFP4cXyzP4cXyzP4cXyziiPUc
// daAlink_c::getCrawlMoveVec(cXyz*, cXyz*, cXyz*, int, int, unsigned char*)
asm void getCrawlMoveVec__9daAlink_cFP4cXyzP4cXyzP4cXyziiPUc(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F81C0.s"
}

// crawlBgCheck__9daAlink_cFP4cXyzP4cXyzi
// daAlink_c::crawlBgCheck(cXyz*, cXyz*, int)
asm void crawlBgCheck__9daAlink_cFP4cXyzP4cXyzi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F85C0.s"
}

// checkCrawlSideWall__9daAlink_cFP4cXyzP4cXyzP4cXyzP4cXyzPsPs
// daAlink_c::checkCrawlSideWall(cXyz*, cXyz*, cXyz*, cXyz*, short*, short*)
asm void checkCrawlSideWall__9daAlink_cFP4cXyzP4cXyzP4cXyzP4cXyzPsPs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F8700.s"
}

// decideCrawlDoStatus__9daAlink_cFv
// daAlink_c::decideCrawlDoStatus(void)
asm void decideCrawlDoStatus__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F88F8.s"
}

// checkNotCrawlStand__9daAlink_cFP4cXyz
// daAlink_c::checkNotCrawlStand(cXyz*)
asm void checkNotCrawlStand__9daAlink_cFP4cXyz(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F89E0.s"
}

// checkNotCrawlStand__9daAlink_cFP4cXyzP4cXyz
// daAlink_c::checkNotCrawlStand(cXyz*, cXyz*)
asm void checkNotCrawlStand__9daAlink_cFP4cXyzP4cXyz(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F8A50.s"
}

// checkCrawlInHoll__9daAlink_cFP4cXyzP4cXyzP4cXyzi
// daAlink_c::checkCrawlInHoll(cXyz*, cXyz*, cXyz*, int)
asm void checkCrawlInHoll__9daAlink_cFP4cXyzP4cXyzP4cXyzi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F8B00.s"
}

// setCrawlMoveHoll__9daAlink_cFv
// daAlink_c::setCrawlMoveHoll(void)
asm void setCrawlMoveHoll__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F8D04.s"
}

// setCrawlMoveAngle__9daAlink_cFv
// daAlink_c::setCrawlMoveAngle(void)
asm void setCrawlMoveAngle__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F8DBC.s"
}

// stopHalfMoveAnime__9daAlink_cFf
// daAlink_c::stopHalfMoveAnime(float)
asm void stopHalfMoveAnime__9daAlink_cFf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F8F08.s"
}

// setCrawlAutoMoveAimPos__9daAlink_cFv
// daAlink_c::setCrawlAutoMoveAimPos(void)
asm void setCrawlAutoMoveAimPos__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F8F84.s"
}

// procCrawlStartInit__9daAlink_cFv
// daAlink_c::procCrawlStartInit(void)
asm void procCrawlStartInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F9210.s"
}

// procCrawlStart__9daAlink_cFv
// daAlink_c::procCrawlStart(void)
asm void procCrawlStart__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F9384.s"
}

// procCrawlMoveInit__9daAlink_cFss
// daAlink_c::procCrawlMoveInit(short, short)
asm void procCrawlMoveInit__9daAlink_cFss(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F9474.s"
}

// procCrawlMove__9daAlink_cFv
// daAlink_c::procCrawlMove(void)
asm void procCrawlMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F95B8.s"
}

// procCrawlAutoMoveInit__9daAlink_cFiP4cXyz
// daAlink_c::procCrawlAutoMoveInit(int, cXyz*)
asm void procCrawlAutoMoveInit__9daAlink_cFiP4cXyz(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F99FC.s"
}

// procCrawlAutoMove__9daAlink_cFv
// daAlink_c::procCrawlAutoMove(void)
asm void procCrawlAutoMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F9ABC.s"
}

// procCrawlEndInit__9daAlink_cFiss
// daAlink_c::procCrawlEndInit(int, short, short)
asm void procCrawlEndInit__9daAlink_cFiss(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F9D7C.s"
}

// procCrawlEnd__9daAlink_cFv
// daAlink_c::procCrawlEnd(void)
asm void procCrawlEnd__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F9F30.s"
}

// getHangMoveAnmSpeed__9daAlink_cFv
// daAlink_c::getHangMoveAnmSpeed(void)
asm void getHangMoveAnmSpeed__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F9FDC.s"
}

// getHangDirectionFromAngle__9daAlink_cFv
// daAlink_c::getHangDirectionFromAngle(void)
asm void getHangDirectionFromAngle__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800F9FFC.s"
}

// hangMoveBgCheck__9daAlink_cFsP4cXyz
// daAlink_c::hangMoveBgCheck(short, cXyz*)
asm void hangMoveBgCheck__9daAlink_cFsP4cXyz(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FA070.s"
}

// changeHangMoveProc__9daAlink_cFi
// daAlink_c::changeHangMoveProc(int)
asm void changeHangMoveProc__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FA338.s"
}

// checkHangFootWall__9daAlink_cFv
// daAlink_c::checkHangFootWall(void)
asm void checkHangFootWall__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FA5C8.s"
}

// setHangGroundY__9daAlink_cFv
// daAlink_c::setHangGroundY(void)
asm void setHangGroundY__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FA6E4.s"
}

// changeHangEndProc__9daAlink_cFv
// daAlink_c::changeHangEndProc(void)
asm void changeHangEndProc__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FA78C.s"
}

// checkHangStartSideWall__9daAlink_cFs
// daAlink_c::checkHangStartSideWall(short)
asm void checkHangStartSideWall__9daAlink_cFs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FA85C.s"
}

// procHangStartInit__9daAlink_cFv
// daAlink_c::procHangStartInit(void)
asm void procHangStartInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FAA7C.s"
}

// procHangStart__9daAlink_cFv
// daAlink_c::procHangStart(void)
asm void procHangStart__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FAE14.s"
}

// procHangFallStartInit__9daAlink_cFP8cM3dGPla
// daAlink_c::procHangFallStartInit(cM3dGPla*)
asm void procHangFallStartInit__9daAlink_cFP8cM3dGPla(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FAECC.s"
}

// procHangFallStart__9daAlink_cFv
// daAlink_c::procHangFallStart(void)
asm void procHangFallStart__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FB1A4.s"
}

// procHangUpInit__9daAlink_cFi
// daAlink_c::procHangUpInit(int)
asm void procHangUpInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FB2A0.s"
}

// procHangUp__9daAlink_cFv
// daAlink_c::procHangUp(void)
asm void procHangUp__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FB328.s"
}

// procHangWaitInit__9daAlink_cFv
// daAlink_c::procHangWaitInit(void)
asm void procHangWaitInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FB43C.s"
}

// procHangWait__9daAlink_cFv
// daAlink_c::procHangWait(void)
asm void procHangWait__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FB544.s"
}

// procHangMoveInit__9daAlink_cFi
// daAlink_c::procHangMoveInit(int)
asm void procHangMoveInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FB650.s"
}

// procHangMove__9daAlink_cFv
// daAlink_c::procHangMove(void)
asm void procHangMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FB790.s"
}

// procHangClimbInit__9daAlink_cFf
// daAlink_c::procHangClimbInit(float)
asm void procHangClimbInit__9daAlink_cFf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FBBC8.s"
}

// procHangClimb__9daAlink_cFv
// daAlink_c::procHangClimb(void)
asm void procHangClimb__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FBCD4.s"
}

// procHangWallCatchInit__9daAlink_cFv
// daAlink_c::procHangWallCatchInit(void)
asm void procHangWallCatchInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FBE04.s"
}

// procHangWallCatch__9daAlink_cFv
// daAlink_c::procHangWallCatch(void)
asm void procHangWallCatch__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FC0D8.s"
}

// procHangReadyInit__9daAlink_cFv
// daAlink_c::procHangReadyInit(void)
asm void procHangReadyInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FC178.s"
}

// procHangReady__9daAlink_cFv
// daAlink_c::procHangReady(void)
asm void procHangReady__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FC240.s"
}

// procHangLeverDownInit__9daAlink_cFv
// daAlink_c::procHangLeverDownInit(void)
asm void procHangLeverDownInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FC2F4.s"
}

// procHangLeverDown__9daAlink_cFv
// daAlink_c::procHangLeverDown(void)
asm void procHangLeverDown__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FC390.s"
}

// changeDragonActor__9daAlink_cFP10fopAc_ac_c
// daAlink_c::changeDragonActor(fopAc_ac_c*)
asm void changeDragonActor__9daAlink_cFP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FC568.s"
}

// setDragonHangPos__9daAlink_cFv
// daAlink_c::setDragonHangPos(void)
asm void setDragonHangPos__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FC5A4.s"
}

// setOctaIealHangPos__9daAlink_cFv
// daAlink_c::setOctaIealHangPos(void)
asm void setOctaIealHangPos__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FC6B4.s"
}

// setBossBodyHangPos__9daAlink_cFv
// daAlink_c::setBossBodyHangPos(void)
asm void setBossBodyHangPos__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FC748.s"
}

// procBossBodyHangInit__9daAlink_cFP10fopAc_ac_c
// daAlink_c::procBossBodyHangInit(fopAc_ac_c*)
asm void procBossBodyHangInit__9daAlink_cFP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FC77C.s"
}

// procBossBodyHang__9daAlink_cFv
// daAlink_c::procBossBodyHang(void)
asm void procBossBodyHang__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FC870.s"
}

// getLadderUnitCount__9daAlink_cCFv
// daAlink_c::getLadderUnitCount(const void)
asm void getLadderUnitCount__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FCF58.s"
}

// setLadderInit__9daAlink_cFv
// daAlink_c::setLadderInit(void)
asm void setLadderInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FCF84.s"
}

// setLadderPosInit__9daAlink_cFv
// daAlink_c::setLadderPosInit(void)
asm void setLadderPosInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FD048.s"
}

// setLadderPos__9daAlink_cFi
// daAlink_c::setLadderPos(int)
asm void setLadderPos__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FD1F0.s"
}

// getLadderMoveAnmSpeed__9daAlink_cFv
// daAlink_c::getLadderMoveAnmSpeed(void)
asm void getLadderMoveAnmSpeed__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FD288.s"
}

// changeLadderMoveProc__9daAlink_cFi
// daAlink_c::changeLadderMoveProc(int)
asm void changeLadderMoveProc__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FD2AC.s"
}

// setMoveBGLadderCorrect__9daAlink_cFv
// daAlink_c::setMoveBGLadderCorrect(void)
asm void setMoveBGLadderCorrect__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FD4A8.s"
}

// checkLadderFall__9daAlink_cFv
// daAlink_c::checkLadderFall(void)
asm void checkLadderFall__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FD5E4.s"
}

// procLadderUpStartInit__9daAlink_cFv
// daAlink_c::procLadderUpStartInit(void)
asm void procLadderUpStartInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FD648.s"
}

// procLadderUpStart__9daAlink_cFv
// daAlink_c::procLadderUpStart(void)
asm void procLadderUpStart__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FD7B0.s"
}

// procLadderUpEndInit__9daAlink_cFi
// daAlink_c::procLadderUpEndInit(int)
asm void procLadderUpEndInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FD824.s"
}

// procLadderUpEnd__9daAlink_cFv
// daAlink_c::procLadderUpEnd(void)
asm void procLadderUpEnd__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FD8E8.s"
}

// procLadderDownStartInit__9daAlink_cFv
// daAlink_c::procLadderDownStartInit(void)
asm void procLadderDownStartInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FD9CC.s"
}

// procLadderDownStart__9daAlink_cFv
// daAlink_c::procLadderDownStart(void)
asm void procLadderDownStart__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FDB74.s"
}

// procLadderDownEndInit__9daAlink_cFi
// daAlink_c::procLadderDownEndInit(int)
asm void procLadderDownEndInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FDC18.s"
}

// procLadderDownEnd__9daAlink_cFv
// daAlink_c::procLadderDownEnd(void)
asm void procLadderDownEnd__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FDCCC.s"
}

// procLadderMoveInit__9daAlink_cFiiP4cXyz
// daAlink_c::procLadderMoveInit(int, int, cXyz*)
asm void procLadderMoveInit__9daAlink_cFiiP4cXyz(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FDD90.s"
}

// procLadderMove__9daAlink_cFv
// daAlink_c::procLadderMove(void)
asm void procLadderMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FDF50.s"
}

// getClimbMoveUpDownAnmSpeed__9daAlink_cFv
// daAlink_c::getClimbMoveUpDownAnmSpeed(void)
asm void getClimbMoveUpDownAnmSpeed__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FE010.s"
}

// getClimbMoveSideAnmSpeed__9daAlink_cFv
// daAlink_c::getClimbMoveSideAnmSpeed(void)
asm void getClimbMoveSideAnmSpeed__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FE034.s"
}

// checkClimbCode__9daAlink_cFR13cBgS_PolyInfo
// daAlink_c::checkClimbCode(cBgS_PolyInfo&)
asm void checkClimbCode__9daAlink_cFR13cBgS_PolyInfo(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FE058.s"
}

// setClimbInit__9daAlink_cFv
// daAlink_c::setClimbInit(void)
asm void setClimbInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FE114.s"
}

// setClimbShapeOffset__9daAlink_cFv
// daAlink_c::setClimbShapeOffset(void)
asm void setClimbShapeOffset__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FE174.s"
}

// getClimbDirectionFromAngle__9daAlink_cFv
// daAlink_c::getClimbDirectionFromAngle(void)
asm void getClimbDirectionFromAngle__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FE3C4.s"
}

// changeClimbMoveProc__9daAlink_cFi
// daAlink_c::changeClimbMoveProc(int)
asm void changeClimbMoveProc__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FE438.s"
}

// checkClimbMoveUpDownProc__9daAlink_cFi
// daAlink_c::checkClimbMoveUpDownProc(int)
asm void checkClimbMoveUpDownProc__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FE5A0.s"
}

// checkClimbMoveSideProc__9daAlink_cFi
// daAlink_c::checkClimbMoveSideProc(int)
asm void checkClimbMoveSideProc__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FE6E8.s"
}

// setMoveBGClimbCorrect__9daAlink_cFv
// daAlink_c::setMoveBGClimbCorrect(void)
asm void setMoveBGClimbCorrect__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FE868.s"
}

// checkBgCorrectClimbMove__9daAlink_cFP4cXyzP4cXyz
// daAlink_c::checkBgCorrectClimbMove(cXyz*, cXyz*)
asm void checkBgCorrectClimbMove__9daAlink_cFP4cXyzP4cXyz(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FEB90.s"
}

// checkClimbRoof__9daAlink_cFf
// daAlink_c::checkClimbRoof(float)
asm void checkClimbRoof__9daAlink_cFf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FEC70.s"
}

// checkClimbGround__9daAlink_cFP4cXyzf
// daAlink_c::checkClimbGround(cXyz*, float)
asm void checkClimbGround__9daAlink_cFP4cXyzf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FED50.s"
}

// checkBgClimbMove__9daAlink_cFi
// daAlink_c::checkBgClimbMove(int)
asm void checkBgClimbMove__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FEEC0.s"
}

// setClimbStartNotGround__9daAlink_cFv
// daAlink_c::setClimbStartNotGround(void)
asm void setClimbStartNotGround__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FF28C.s"
}

// procClimbUpStartInit__9daAlink_cFi
// daAlink_c::procClimbUpStartInit(int)
asm void procClimbUpStartInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FF450.s"
}

// procClimbUpStart__9daAlink_cFv
// daAlink_c::procClimbUpStart(void)
asm void procClimbUpStart__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FF704.s"
}

// procClimbDownStartInit__9daAlink_cFs
// daAlink_c::procClimbDownStartInit(short)
asm void procClimbDownStartInit__9daAlink_cFs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FF818.s"
}

// procClimbDownStart__9daAlink_cFv
// daAlink_c::procClimbDownStart(void)
asm void procClimbDownStart__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FF9A8.s"
}

// procClimbMoveUpDownInit__9daAlink_cFi
// daAlink_c::procClimbMoveUpDownInit(int)
asm void procClimbMoveUpDownInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FFAB0.s"
}

// procClimbMoveUpDown__9daAlink_cFv
// daAlink_c::procClimbMoveUpDown(void)
asm void procClimbMoveUpDown__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FFC58.s"
}

// procClimbMoveSideInit__9daAlink_cFv
// daAlink_c::procClimbMoveSideInit(void)
asm void procClimbMoveSideInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FFDB0.s"
}

// procClimbMoveSide__9daAlink_cFv
// daAlink_c::procClimbMoveSide(void)
asm void procClimbMoveSide__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800FFF4C.s"
}

// procClimbWaitInit__9daAlink_cFii
// daAlink_c::procClimbWaitInit(int, int)
asm void procClimbWaitInit__9daAlink_cFii(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801000F8.s"
}

// procClimbWait__9daAlink_cFv
// daAlink_c::procClimbWait(void)
asm void procClimbWait__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80100258.s"
}

// procClimbToRoofInit__9daAlink_cFv
// daAlink_c::procClimbToRoofInit(void)
asm void procClimbToRoofInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801003E4.s"
}

// procClimbToRoof__9daAlink_cFv
// daAlink_c::procClimbToRoof(void)
asm void procClimbToRoof__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80100464.s"
}

// getRoofHangFMoveAnmSpeed__9daAlink_cCFv
// daAlink_c::getRoofHangFMoveAnmSpeed(const void)
asm void getRoofHangFMoveAnmSpeed__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801005CC.s"
}

// getRoofHangSMoveAnmSpeed__9daAlink_cCFv
// daAlink_c::getRoofHangSMoveAnmSpeed(const void)
asm void getRoofHangSMoveAnmSpeed__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801005F0.s"
}

// setRoofHangHandOnSE__9daAlink_cFP13cBgS_PolyInfo
// daAlink_c::setRoofHangHandOnSE(cBgS_PolyInfo*)
asm void setRoofHangHandOnSE__9daAlink_cFP13cBgS_PolyInfo(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80100614.s"
}

// checkRoofHangMovePos__9daAlink_cFv
// daAlink_c::checkRoofHangMovePos(void)
asm void checkRoofHangMovePos__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80100668.s"
}

// commonRoofHangProc__9daAlink_cFv
// daAlink_c::commonRoofHangProc(void)
asm void commonRoofHangProc__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80100770.s"
}

// checkNextActionRoofHang__9daAlink_cFv
// daAlink_c::checkNextActionRoofHang(void)
asm void checkNextActionRoofHang__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801008EC.s"
}

// procRoofHangStartInit__9daAlink_cFRC13cBgS_PolyInfoRC4cXyzi
// daAlink_c::procRoofHangStartInit(const cBgS_PolyInfo&, const cXyz&, int)
asm void procRoofHangStartInit__9daAlink_cFRC13cBgS_PolyInfoRC4cXyzi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80100A10.s"
}

// procRoofHangStart__9daAlink_cFv
// daAlink_c::procRoofHangStart(void)
asm void procRoofHangStart__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80100AE4.s"
}

// procRoofHangWaitInit__9daAlink_cFi
// daAlink_c::procRoofHangWaitInit(int)
asm void procRoofHangWaitInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80100BB4.s"
}

// procRoofHangWait__9daAlink_cFv
// daAlink_c::procRoofHangWait(void)
asm void procRoofHangWait__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80100D38.s"
}

// procRoofHangFrontMoveInit__9daAlink_cFv
// daAlink_c::procRoofHangFrontMoveInit(void)
asm void procRoofHangFrontMoveInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80100DA4.s"
}

// procRoofHangFrontMove__9daAlink_cFv
// daAlink_c::procRoofHangFrontMove(void)
asm void procRoofHangFrontMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80100EEC.s"
}

// procRoofHangSideMoveInit__9daAlink_cFv
// daAlink_c::procRoofHangSideMoveInit(void)
asm void procRoofHangSideMoveInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010121C.s"
}

// procRoofHangSideMove__9daAlink_cFv
// daAlink_c::procRoofHangSideMove(void)
asm void procRoofHangSideMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80101308.s"
}

// procRoofHangTurnInit__9daAlink_cFv
// daAlink_c::procRoofHangTurnInit(void)
asm void procRoofHangTurnInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801013B8.s"
}

// procRoofHangTurn__9daAlink_cFv
// daAlink_c::procRoofHangTurn(void)
asm void procRoofHangTurn__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80101534.s"
}

// setRoofHangSwitch__9daAlink_cFv
// daAlink_c::setRoofHangSwitch(void)
asm void setRoofHangSwitch__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010163C.s"
}

// procRoofSwitchHangInit__9daAlink_cFP10fopAc_ac_c
// daAlink_c::procRoofSwitchHangInit(fopAc_ac_c*)
asm void procRoofSwitchHangInit__9daAlink_cFP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801016AC.s"
}

// procRoofSwitchHang__9daAlink_cFv
// daAlink_c::procRoofSwitchHang(void)
asm void procRoofSwitchHang__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801017AC.s"
}

// getHangPos__13daObjSwHang_cFv
// daObjSwHang_c::getHangPos(void)
asm void getHangPos__13daObjSwHang_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80101874.s"
}

// checkZoraWearMaskDraw__9daAlink_cFv
// daAlink_c::checkZoraWearMaskDraw(void)
asm void checkZoraWearMaskDraw__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80101890.s"
}

// checkAcceptUseItemInWater__9daAlink_cCFUs
// daAlink_c::checkAcceptUseItemInWater(const unsigned short)
asm void checkAcceptUseItemInWater__9daAlink_cCFUs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801018E4.s"
}

// swimDeleteItem__9daAlink_cFv
// daAlink_c::swimDeleteItem(void)
asm void swimDeleteItem__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80101934.s"
}

// getZoraSwim__9daAlink_cCFv
// daAlink_c::getZoraSwim(const void)
asm void getZoraSwim__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801019B8.s"
}

// getSwimFrontMaxSpeed__9daAlink_cCFv
// daAlink_c::getSwimFrontMaxSpeed(const void)
asm void getSwimFrontMaxSpeed__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80101A18.s"
}

// getSwimMaxFallSpeed__9daAlink_cCFv
// daAlink_c::getSwimMaxFallSpeed(const void)
asm void getSwimMaxFallSpeed__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80101AA8.s"
}

// checkOxygenTimer__9daAlink_cFv
// daAlink_c::checkOxygenTimer(void)
asm void checkOxygenTimer__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80101B44.s"
}

// offOxygenTimer__9daAlink_cFv
// daAlink_c::offOxygenTimer(void)
asm void offOxygenTimer__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80101C94.s"
}

// checkPossibleWaterInMode__9daAlink_cCFv
// daAlink_c::checkPossibleWaterInMode(const void)
asm void checkPossibleWaterInMode__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80101CB8.s"
}

// setWaterInAnmRate__9daAlink_cFP16daPy_frameCtrl_cf
// daAlink_c::setWaterInAnmRate(daPy_frameCtrl_c*, float)
asm void setWaterInAnmRate__9daAlink_cFP16daPy_frameCtrl_cf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80101CF4.s"
}

// swimBgCheck__9daAlink_cFf
// daAlink_c::swimBgCheck(float)
asm void swimBgCheck__9daAlink_cFf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80101D70.s"
}

// setSpeedAndAngleSwim__9daAlink_cFv
// daAlink_c::setSpeedAndAngleSwim(void)
asm void setSpeedAndAngleSwim__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801023E4.s"
}

// checkNextActionSwim__9daAlink_cFv
// daAlink_c::checkNextActionSwim(void)
asm void checkNextActionSwim__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801029C8.s"
}

// checkSwimAction__9daAlink_cFi
// daAlink_c::checkSwimAction(int)
asm void checkSwimAction__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80102B1C.s"
}

// checkSwimUpAction__9daAlink_cFv
// daAlink_c::checkSwimUpAction(void)
asm void checkSwimUpAction__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80103058.s"
}

// swimOutAfter__9daAlink_cFi
// daAlink_c::swimOutAfter(int)
asm void swimOutAfter__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801032C8.s"
}

// checkSwimFall__9daAlink_cFv
// daAlink_c::checkSwimFall(void)
asm void checkSwimFall__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80103398.s"
}

// checkSwimOutAction__9daAlink_cFv
// daAlink_c::checkSwimOutAction(void)
asm void checkSwimOutAction__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801033CC.s"
}

// setSwimMoveAnime__9daAlink_cFv
// daAlink_c::setSwimMoveAnime(void)
asm void setSwimMoveAnime__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80103698.s"
}

// checkSwimButtonAccept__9daAlink_cFv
// daAlink_c::checkSwimButtonAccept(void)
asm void checkSwimButtonAccept__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80103EE0.s"
}

// checkUpSwimButtonAccept__9daAlink_cFv
// daAlink_c::checkUpSwimButtonAccept(void)
asm void checkUpSwimButtonAccept__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80103F08.s"
}

// checkSwimButtonMove__9daAlink_cFv
// daAlink_c::checkSwimButtonMove(void)
asm void checkSwimButtonMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80103F24.s"
}

// checkZoraSwimMove__9daAlink_cFv
// daAlink_c::checkZoraSwimMove(void)
asm void checkZoraSwimMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80103F94.s"
}

// checkSwimNeckUpDown__9daAlink_cCFv
// daAlink_c::checkSwimNeckUpDown(const void)
asm void checkSwimNeckUpDown__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80103FE8.s"
}

// setSwimUpDownOffset__9daAlink_cFv
// daAlink_c::setSwimUpDownOffset(void)
asm void setSwimUpDownOffset__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80104034.s"
}

// procSwimUpInit__9daAlink_cFv
// daAlink_c::procSwimUpInit(void)
asm void procSwimUpInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801040F8.s"
}

// procSwimUp__9daAlink_cFv
// daAlink_c::procSwimUp(void)
asm void procSwimUp__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801041E8.s"
}

// procSwimWaitInit__9daAlink_cFi
// daAlink_c::procSwimWaitInit(int)
asm void procSwimWaitInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801042F8.s"
}

// procSwimWait__9daAlink_cFv
// daAlink_c::procSwimWait(void)
asm void procSwimWait__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801044B4.s"
}

// procSwimMoveInit__9daAlink_cFv
// daAlink_c::procSwimMoveInit(void)
asm void procSwimMoveInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80104670.s"
}

// procSwimMove__9daAlink_cFv
// daAlink_c::procSwimMove(void)
asm void procSwimMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801047B8.s"
}

// procSwimDiveInit__9daAlink_cFv
// daAlink_c::procSwimDiveInit(void)
asm void procSwimDiveInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80104958.s"
}

// procSwimDive__9daAlink_cFv
// daAlink_c::procSwimDive(void)
asm void procSwimDive__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80104AA0.s"
}

// procSwimHookshotSubjectInit__9daAlink_cFv
// daAlink_c::procSwimHookshotSubjectInit(void)
asm void procSwimHookshotSubjectInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80104C50.s"
}

// procSwimHookshotSubject__9daAlink_cFv
// daAlink_c::procSwimHookshotSubject(void)
asm void procSwimHookshotSubject__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80104D7C.s"
}

// procSwimHookshotMoveInit__9daAlink_cFv
// daAlink_c::procSwimHookshotMoveInit(void)
asm void procSwimHookshotMoveInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80104EB8.s"
}

// procSwimHookshotMove__9daAlink_cFv
// daAlink_c::procSwimHookshotMove(void)
asm void procSwimHookshotMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80104FC4.s"
}

// procSwimDamageInit__9daAlink_cFP12dCcD_GObjInf
// daAlink_c::procSwimDamageInit(dCcD_GObjInf*)
asm void procSwimDamageInit__9daAlink_cFP12dCcD_GObjInf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010519C.s"
}

// procSwimDamage__9daAlink_cFv
// daAlink_c::procSwimDamage(void)
asm void procSwimDamage__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80105728.s"
}

// procOctaIealSpitInit__9daAlink_cFv
// daAlink_c::procOctaIealSpitInit(void)
asm void procOctaIealSpitInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801058A0.s"
}

// procOctaIealSpit__9daAlink_cFv
// daAlink_c::procOctaIealSpit(void)
asm void procOctaIealSpit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80105A00.s"
}

// daAlink_searchIceLeaf__FP10fopAc_ac_cPv
// daAlink_searchIceLeaf__FP10fopAc_ac_cPv(fopAc_ac_c*, void*)
asm void daAlink_searchIceLeaf__FP10fopAc_ac_cPv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80105A84.s"
}

// checkSnowCode__9daAlink_cCFv
// daAlink_c::checkSnowCode(const void)
asm void checkSnowCode__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80105A98.s"
}

// checkSnowCodePolygon__9daAlink_cFR13cBgS_PolyInfo
// daAlink_c::checkSnowCodePolygon(cBgS_PolyInfo&)
asm void checkSnowCodePolygon__9daAlink_cFR13cBgS_PolyInfo(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80105ABC.s"
}

// checkBoardRestart__9daAlink_cFv
// daAlink_c::checkBoardRestart(void)
asm void checkBoardRestart__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80105B10.s"
}

// boardCommon__9daAlink_cFi
// daAlink_c::boardCommon(int)
asm void boardCommon__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80105B58.s"
}

// setCommonBoardAnime__9daAlink_cFi
// daAlink_c::setCommonBoardAnime(int)
asm void setCommonBoardAnime__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80106534.s"
}

// checkNextActionBoard__9daAlink_cFv
// daAlink_c::checkNextActionBoard(void)
asm void checkNextActionBoard__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010658C.s"
}

// checkBoardSwordTriggerAction__9daAlink_cFv
// daAlink_c::checkBoardSwordTriggerAction(void)
asm void checkBoardSwordTriggerAction__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80106618.s"
}

// commonProcBoardInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
asm void commonProcBoardInit__9daAlink_cFQ29daAlink_c12daAlink_PROC(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80106650.s"
}

// getBoardRowAnmSpeed__9daAlink_cFv
// daAlink_c::getBoardRowAnmSpeed(void)
asm void getBoardRowAnmSpeed__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801066B8.s"
}

// setBoardLandAnime__9daAlink_cFv
// daAlink_c::setBoardLandAnime(void)
asm void setBoardLandAnime__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801066EC.s"
}

// procBoardRideInit__9daAlink_cFv
// daAlink_c::procBoardRideInit(void)
asm void procBoardRideInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80106774.s"
}

// procBoardRide__9daAlink_cFv
// daAlink_c::procBoardRide(void)
asm void procBoardRide__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801069D0.s"
}

// procBoardWaitInit__9daAlink_cFP10fopAc_ac_c
// daAlink_c::procBoardWaitInit(fopAc_ac_c*)
asm void procBoardWaitInit__9daAlink_cFP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80106A38.s"
}

// procBoardWait__9daAlink_cFv
// daAlink_c::procBoardWait(void)
asm void procBoardWait__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80106BCC.s"
}

// procBoardRowInit__9daAlink_cFv
// daAlink_c::procBoardRowInit(void)
asm void procBoardRowInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80106E88.s"
}

// procBoardRow__9daAlink_cFv
// daAlink_c::procBoardRow(void)
asm void procBoardRow__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80106F00.s"
}

// procBoardTurnInit__9daAlink_cFv
// daAlink_c::procBoardTurnInit(void)
asm void procBoardTurnInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80107060.s"
}

// procBoardTurn__9daAlink_cFv
// daAlink_c::procBoardTurn(void)
asm void procBoardTurn__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801070DC.s"
}

// procBoardJumpInit__9daAlink_cFfi
// daAlink_c::procBoardJumpInit(float, int)
asm void procBoardJumpInit__9daAlink_cFfi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80107218.s"
}

// procBoardJump__9daAlink_cFv
// daAlink_c::procBoardJump(void)
asm void procBoardJump__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80107300.s"
}

// procBoardSubjectivityInit__9daAlink_cFv
// daAlink_c::procBoardSubjectivityInit(void)
asm void procBoardSubjectivityInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801073D0.s"
}

// procBoardSubjectivity__9daAlink_cFv
// daAlink_c::procBoardSubjectivity(void)
asm void procBoardSubjectivity__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80107418.s"
}

// procBoardCutInit__9daAlink_cFv
// daAlink_c::procBoardCutInit(void)
asm void procBoardCutInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801074AC.s"
}

// procBoardCut__9daAlink_cFv
// daAlink_c::procBoardCut(void)
asm void procBoardCut__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010755C.s"
}

// procBoardCutTurnInit__9daAlink_cFv
// daAlink_c::procBoardCutTurnInit(void)
asm void procBoardCutTurnInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801075D4.s"
}

// procBoardCutTurn__9daAlink_cFv
// daAlink_c::procBoardCutTurn(void)
asm void procBoardCutTurn__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80107744.s"
}

// draw__Q29daAlink_c14hsChainShape_cFv
asm void draw__Q29daAlink_c14hsChainShape_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80107900.s"
}

// hookshotAtHitCallBack__9daAlink_cFP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf
// daAlink_c::hookshotAtHitCallBack(dCcD_GObjInf*, fopAc_ac_c*, dCcD_GObjInf*)
asm void hookshotAtHitCallBack__9daAlink_cFP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801083C8.s"
}

// daAlink_hookshotAtHitCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf
// daAlink_hookshotAtHitCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf(fopAc_ac_c*,
// dCcD_GObjInf*, fopAc_ac_c*, dCcD_GObjInf*)
asm void
daAlink_hookshotAtHitCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010859C.s"
}

// getHookshotTopPos__9daAlink_cFv
// daAlink_c::getHookshotTopPos(void)
asm void getHookshotTopPos__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801085BC.s"
}

// checkHookshotReturnMode__9daAlink_cCFv
// daAlink_c::checkHookshotReturnMode(const void)
asm void checkHookshotReturnMode__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80108600.s"
}

// checkHookshotShootReturnMode__9daAlink_cCFv
// daAlink_c::checkHookshotShootReturnMode(const void)
asm void checkHookshotShootReturnMode__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80108668.s"
}

// resetHookshotMode__9daAlink_cFv
// daAlink_c::resetHookshotMode(void)
asm void resetHookshotMode__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801086DC.s"
}

// setEnemyBombHookshot__9daAlink_cFP10fopAc_ac_c
// daAlink_c::setEnemyBombHookshot(fopAc_ac_c*)
asm void setEnemyBombHookshot__9daAlink_cFP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010871C.s"
}

// checkLv7BossRoom__9daAlink_cFv
// daAlink_c::checkLv7BossRoom(void)
asm void checkLv7BossRoom__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80108784.s"
}

// checkHookshotStickBG__9daAlink_cFR13cBgS_PolyInfo
// daAlink_c::checkHookshotStickBG(cBgS_PolyInfo&)
asm void checkHookshotStickBG__9daAlink_cFR13cBgS_PolyInfo(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801087B0.s"
}

// cancelHookshotCarry__9daAlink_cFv
// daAlink_c::cancelHookshotCarry(void)
asm void cancelHookshotCarry__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80108828.s"
}

// changeHookshotDrawModel__9daAlink_cFv
// daAlink_c::changeHookshotDrawModel(void)
asm void changeHookshotDrawModel__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80108864.s"
}

// checkHookshotRoofLv7Boss__9daAlink_cFv
// daAlink_c::checkHookshotRoofLv7Boss(void)
asm void checkHookshotRoofLv7Boss__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801088A0.s"
}

// checkChaseHookshot__9daAlink_cFv
// daAlink_c::checkChaseHookshot(void)
asm void checkChaseHookshot__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801088C8.s"
}

// checkOctaIealSpecialCollect__9daAlink_cFv
// daAlink_c::checkOctaIealSpecialCollect(void)
asm void checkOctaIealSpecialCollect__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80108980.s"
}

// checkBossOctaIealRoom__9daAlink_cFv
// daAlink_c::checkBossOctaIealRoom(void)
asm void checkBossOctaIealRoom__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801089E8.s"
}

// checkHookshotWait__9daAlink_cCFv
// daAlink_c::checkHookshotWait(const void)
asm void checkHookshotWait__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80108A18.s"
}

// setHookshotCatchNow__9daAlink_cFv
// daAlink_c::setHookshotCatchNow(void)
asm void setHookshotCatchNow__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80108A3C.s"
}

// setHookshotCarryOffset__9daAlink_cFUiPC4cXyz
// daAlink_c::setHookshotCarryOffset(unsigned int, const cXyz*)
asm void setHookshotCarryOffset__9daAlink_cFUiPC4cXyz(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80108A90.s"
}

// setHookshotModel__9daAlink_cFv
// daAlink_c::setHookshotModel(void)
asm void setHookshotModel__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80108B34.s"
}

// setHookshotSight__9daAlink_cFv
// daAlink_c::setHookshotSight(void)
asm void setHookshotSight__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80108DB4.s"
}

// cancelHookshotShot__9daAlink_cFv
// daAlink_c::cancelHookshotShot(void)
asm void cancelHookshotShot__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80108EEC.s"
}

// cancelHookshotMove__9daAlink_cFv
// daAlink_c::cancelHookshotMove(void)
asm void cancelHookshotMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80108F64.s"
}

// checkHookshotReadyMaterialOffMode__9daAlink_cCFv
// daAlink_c::checkHookshotReadyMaterialOffMode(const void)
asm void checkHookshotReadyMaterialOffMode__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010903C.s"
}

// setHookshotReadyMaterial__9daAlink_cFv
// daAlink_c::setHookshotReadyMaterial(void)
asm void setHookshotReadyMaterial__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80109070.s"
}

// initHookshotUpperAnimeSpeed__9daAlink_cFi
// daAlink_c::initHookshotUpperAnimeSpeed(int)
asm void initHookshotUpperAnimeSpeed__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801090EC.s"
}

// initHookshotReady__9daAlink_cFv
// daAlink_c::initHookshotReady(void)
asm void initHookshotReady__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80109170.s"
}

// setHookshotReadyAnime__9daAlink_cFv
// daAlink_c::setHookshotReadyAnime(void)
asm void setHookshotReadyAnime__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801091E4.s"
}

// checkUpperItemActionHookshot__9daAlink_cFv
// daAlink_c::checkUpperItemActionHookshot(void)
asm void checkUpperItemActionHookshot__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80109284.s"
}

// checkNextActionHookshot__9daAlink_cFv
// daAlink_c::checkNextActionHookshot(void)
asm void checkNextActionHookshot__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801095C8.s"
}

// setHookshotReturnEnd__9daAlink_cFv
// daAlink_c::setHookshotReturnEnd(void)
asm void setHookshotReturnEnd__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801097A0.s"
}

// setHookshotHangMoveBGCollect__9daAlink_cFv
// daAlink_c::setHookshotHangMoveBGCollect(void)
asm void setHookshotHangMoveBGCollect__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80109890.s"
}

// setHookshotTopPosFly__9daAlink_cFv
// daAlink_c::setHookshotTopPosFly(void)
asm void setHookshotTopPosFly__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80109AAC.s"
}

// setHookshotPos__9daAlink_cFv
// daAlink_c::setHookshotPos(void)
asm void setHookshotPos__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80109BDC.s"
}

// setHookshotRoofWaitAnime__9daAlink_cFv
// daAlink_c::setHookshotRoofWaitAnime(void)
asm void setHookshotRoofWaitAnime__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010B2DC.s"
}

// setHookshotWallWaitAnime__9daAlink_cFv
// daAlink_c::setHookshotWallWaitAnime(void)
asm void setHookshotWallWaitAnime__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010B35C.s"
}

// hookshotRoofTurn__9daAlink_cFv
// daAlink_c::hookshotRoofTurn(void)
asm void hookshotRoofTurn__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010B3AC.s"
}

// initHookshotRoofWaitActor__9daAlink_cFP10fopAc_ac_c
// daAlink_c::initHookshotRoofWaitActor(fopAc_ac_c*)
asm void initHookshotRoofWaitActor__9daAlink_cFP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010B644.s"
}

// checkNextHookPoint__9daAlink_cFv
// daAlink_c::checkNextHookPoint(void)
asm void checkNextHookPoint__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010B720.s"
}

// checkLandHookshotHang__9daAlink_cFv
// daAlink_c::checkLandHookshotHang(void)
asm void checkLandHookshotHang__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010B84C.s"
}

// commonHookshotRoofWait__9daAlink_cFv
// daAlink_c::commonHookshotRoofWait(void)
asm void commonHookshotRoofWait__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010B96C.s"
}

// commonHookshotWallWait__9daAlink_cFv
// daAlink_c::commonHookshotWallWait(void)
asm void commonHookshotWallWait__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010BA6C.s"
}

// procHookshotSubjectInit__9daAlink_cFv
// daAlink_c::procHookshotSubjectInit(void)
asm void procHookshotSubjectInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010BAA8.s"
}

// procHookshotSubject__9daAlink_cFv
// daAlink_c::procHookshotSubject(void)
asm void procHookshotSubject__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010BB48.s"
}

// procHookshotMoveInit__9daAlink_cFv
// daAlink_c::procHookshotMoveInit(void)
asm void procHookshotMoveInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010BC08.s"
}

// procHookshotMove__9daAlink_cFv
// daAlink_c::procHookshotMove(void)
asm void procHookshotMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010BCA4.s"
}

// procHookshotFlyInit__9daAlink_cFv
// daAlink_c::procHookshotFlyInit(void)
asm void procHookshotFlyInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010BD90.s"
}

// procHookshotFly__9daAlink_cFv
// daAlink_c::procHookshotFly(void)
asm void procHookshotFly__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010BEF0.s"
}

// procHookshotRoofWaitInit__9daAlink_cFiP10fopAc_ac_ci
// daAlink_c::procHookshotRoofWaitInit(int, fopAc_ac_c*, int)
asm void procHookshotRoofWaitInit__9daAlink_cFiP10fopAc_ac_ci(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010C830.s"
}

// procHookshotRoofWait__9daAlink_cFv
// daAlink_c::procHookshotRoofWait(void)
asm void procHookshotRoofWait__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010C9F4.s"
}

// procHookshotRoofShootInit__9daAlink_cFP10fopAc_ac_c
// daAlink_c::procHookshotRoofShootInit(fopAc_ac_c*)
asm void procHookshotRoofShootInit__9daAlink_cFP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010CC80.s"
}

// procHookshotRoofShoot__9daAlink_cFv
// daAlink_c::procHookshotRoofShoot(void)
asm void procHookshotRoofShoot__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010CD60.s"
}

// procHookshotRoofBootsInit__9daAlink_cFP10fopAc_ac_c
// daAlink_c::procHookshotRoofBootsInit(fopAc_ac_c*)
asm void procHookshotRoofBootsInit__9daAlink_cFP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010CF6C.s"
}

// procHookshotRoofBoots__9daAlink_cFv
// daAlink_c::procHookshotRoofBoots(void)
asm void procHookshotRoofBoots__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010D034.s"
}

// procHookshotWallWaitInit__9daAlink_cFisi
// daAlink_c::procHookshotWallWaitInit(int, short, int)
asm void procHookshotWallWaitInit__9daAlink_cFisi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010D174.s"
}

// procHookshotWallWait__9daAlink_cFv
// daAlink_c::procHookshotWallWait(void)
asm void procHookshotWallWait__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010D38C.s"
}

// procHookshotWallShootInit__9daAlink_cFv
// daAlink_c::procHookshotWallShootInit(void)
asm void procHookshotWallShootInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010D5F4.s"
}

// procHookshotWallShoot__9daAlink_cFv
// daAlink_c::procHookshotWallShoot(void)
asm void procHookshotWallShoot__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010D6CC.s"
}

// getSpinnerGravity__9daAlink_cCFv
// daAlink_c::getSpinnerGravity(const void)
asm void getSpinnerGravity__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010D93C.s"
}

// getSpinnerMaxFallSpeed__9daAlink_cCFv
// daAlink_c::getSpinnerMaxFallSpeed(const void)
asm void getSpinnerMaxFallSpeed__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010D94C.s"
}

// getSpinnerJumpRate__9daAlink_cCFv
// daAlink_c::getSpinnerJumpRate(const void)
asm void getSpinnerJumpRate__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010D95C.s"
}

// getSpinnerRideMoveTime__9daAlink_cFv
// daAlink_c::getSpinnerRideMoveTime(void)
asm void getSpinnerRideMoveTime__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010D96C.s"
}

// getSpinnerRideSpeedF__9daAlink_cFv
// daAlink_c::getSpinnerRideSpeedF(void)
asm void getSpinnerRideSpeedF__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010D9B0.s"
}

// getSpinnerRideDecSpeedMax__9daAlink_cCFv
// daAlink_c::getSpinnerRideDecSpeedMax(const void)
asm void getSpinnerRideDecSpeedMax__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010D9F4.s"
}

// getSpinnerRideDecSpeedMin__9daAlink_cCFv
// daAlink_c::getSpinnerRideDecSpeedMin(const void)
asm void getSpinnerRideDecSpeedMin__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010DA04.s"
}

// getSpinnerRideDecSpeedRate__9daAlink_cCFv
// daAlink_c::getSpinnerRideDecSpeedRate(const void)
asm void getSpinnerRideDecSpeedRate__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010DA14.s"
}

// getSpinnerRideRotAngleMax__9daAlink_cCFv
// daAlink_c::getSpinnerRideRotAngleMax(const void)
asm void getSpinnerRideRotAngleMax__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010DA24.s"
}

// getSpinnerRideRotAngleMin__9daAlink_cCFv
// daAlink_c::getSpinnerRideRotAngleMin(const void)
asm void getSpinnerRideRotAngleMin__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010DA34.s"
}

// onSpinnerPathForceRemove__9daAlink_cFv
// daAlink_c::onSpinnerPathForceRemove(void)
asm void onSpinnerPathForceRemove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010DA44.s"
}

// checkSpinnerPathMove__9daAlink_cFv
// daAlink_c::checkSpinnerPathMove(void)
asm void checkSpinnerPathMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010DA98.s"
}

// checkLv4BossRoom__9daAlink_cFv
// daAlink_c::checkLv4BossRoom(void)
asm void checkLv4BossRoom__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010DAFC.s"
}

// checkSpinnerTriggerAttack__9daAlink_cFv
// daAlink_c::checkSpinnerTriggerAttack(void)
asm void checkSpinnerTriggerAttack__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010DB28.s"
}

// setSpinnerSyncPos__9daAlink_cFv
// daAlink_c::setSpinnerSyncPos(void)
asm void setSpinnerSyncPos__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010DBC8.s"
}

// procSpinnerReadyInit__9daAlink_cFv
// daAlink_c::procSpinnerReadyInit(void)
asm void procSpinnerReadyInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010DC64.s"
}

// procSpinnerReady__9daAlink_cFv
// daAlink_c::procSpinnerReady(void)
asm void procSpinnerReady__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010DDCC.s"
}

// setSpinnerStatus__9daAlink_cFUcUc
// daAlink_c::setSpinnerStatus(unsigned char, unsigned char)
asm void setSpinnerStatus__9daAlink_cFUcUc(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010DE64.s"
}

// procSpinnerWaitInit__9daAlink_cFv
// daAlink_c::procSpinnerWaitInit(void)
asm void procSpinnerWaitInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010DE78.s"
}

// procSpinnerWait__9daAlink_cFv
// daAlink_c::procSpinnerWait(void)
asm void procSpinnerWait__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010DF4C.s"
}

// bottleModelCallBack__9daAlink_cFv
// daAlink_c::bottleModelCallBack(void)
asm void bottleModelCallBack__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010E48C.s"
}

// daAlink_bottleModelCallBack__FP8J3DJointi
// daAlink_bottleModelCallBack__FP8J3DJointi(J3DJoint*, int)
asm void daAlink_bottleModelCallBack__FP8J3DJointi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010E52C.s"
}

// getBottleOpenAppearItem__9daAlink_cCFv
// daAlink_c::getBottleOpenAppearItem(const void)
asm void getBottleOpenAppearItem__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010E568.s"
}

// checkOilBottleItemNotGet__9daAlink_cFUs
// daAlink_c::checkOilBottleItemNotGet(unsigned short)
asm void checkOilBottleItemNotGet__9daAlink_cFUs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010E584.s"
}

// setBottleModel__9daAlink_cFUs
// daAlink_c::setBottleModel(unsigned short)
asm void setBottleModel__9daAlink_cFUs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010E5D8.s"
}

// commonBottleDrink__9daAlink_cFi
// daAlink_c::commonBottleDrink(int)
asm void commonBottleDrink__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010EAC4.s"
}

// makeFairy__9daAlink_cFP4cXyzUl
// daAlink_c::makeFairy(cXyz*, unsigned long)
asm void makeFairy__9daAlink_cFP4cXyzUl(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010F45C.s"
}

// procBottleDrinkInit__9daAlink_cFUs
// daAlink_c::procBottleDrinkInit(unsigned short)
asm void procBottleDrinkInit__9daAlink_cFUs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010F54C.s"
}

// procBottleDrink__9daAlink_cFv
// daAlink_c::procBottleDrink(void)
asm void procBottleDrink__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010F698.s"
}

// procBottleOpenInit__9daAlink_cFUs
// daAlink_c::procBottleOpenInit(unsigned short)
asm void procBottleOpenInit__9daAlink_cFUs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010F6F4.s"
}

// procBottleOpen__9daAlink_cFv
// daAlink_c::procBottleOpen(void)
asm void procBottleOpen__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010F8E4.s"
}

// procBottleSwingInit__9daAlink_cFP10fopAc_ac_ci
// daAlink_c::procBottleSwingInit(fopAc_ac_c*, int)
asm void procBottleSwingInit__9daAlink_cFP10fopAc_ac_ci(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010FC38.s"
}

// procBottleSwing__9daAlink_cFv
// daAlink_c::procBottleSwing(void)
asm void procBottleSwing__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8010FF58.s"
}

// procBottleGetInit__9daAlink_cFi
// daAlink_c::procBottleGetInit(int)
asm void procBottleGetInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801102D0.s"
}

// procBottleGet__9daAlink_cFv
// daAlink_c::procBottleGet(void)
asm void procBottleGet__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80110518.s"
}

// Insect_Release__9dInsect_cFv
// dInsect_c::Insect_Release(void)
asm void Insect_Release__9dInsect_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80110648.s"
}

// daAlink_searchTagKandelaar__FP10fopAc_ac_cPv
// daAlink_searchTagKandelaar__FP10fopAc_ac_cPv(fopAc_ac_c*, void*)
asm void daAlink_searchTagKandelaar__FP10fopAc_ac_cPv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80110654.s"
}

// daAlink_searchTagKtOnFire__FP10fopAc_ac_cPv
// daAlink_searchTagKtOnFire__FP10fopAc_ac_cPv(fopAc_ac_c*, void*)
asm void daAlink_searchTagKtOnFire__FP10fopAc_ac_cPv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80110668.s"
}

// setKandelaarMtx__9daAlink_cFPA4_fii
asm void setKandelaarMtx__9daAlink_cFPA4_fii(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801106E8.s"
}

// checkWaterInKandelaarOffset__9daAlink_cFf
// daAlink_c::checkWaterInKandelaarOffset(float)
asm void checkWaterInKandelaarOffset__9daAlink_cFf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011078C.s"
}

// checkWaterInKandelaar__9daAlink_cFf
// daAlink_c::checkWaterInKandelaar(float)
asm void checkWaterInKandelaar__9daAlink_cFf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801107BC.s"
}

// offKandelaarModel__9daAlink_cFv
// daAlink_c::offKandelaarModel(void)
asm void offKandelaarModel__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80110840.s"
}

// checkUseKandelaar__9daAlink_cFi
// daAlink_c::checkUseKandelaar(int)
asm void checkUseKandelaar__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011087C.s"
}

// checkKandelaarSwing__9daAlink_cCFi
// daAlink_c::checkKandelaarSwing(const int)
asm void checkKandelaarSwing__9daAlink_cCFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801108B4.s"
}

// kandelaarModelCallBack__9daAlink_cFv
// daAlink_c::kandelaarModelCallBack(void)
asm void kandelaarModelCallBack__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801108EC.s"
}

// daAlink_kandelaarModelCallBack__FP8J3DJointi
// daAlink_kandelaarModelCallBack__FP8J3DJointi(J3DJoint*, int)
asm void daAlink_kandelaarModelCallBack__FP8J3DJointi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80110BEC.s"
}

// getKandelaarFlamePos__9daAlink_cFv
// daAlink_c::getKandelaarFlamePos(void)
asm void getKandelaarFlamePos__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80110C28.s"
}

// checkKandelaarEquipAnime__9daAlink_cCFv
// daAlink_c::checkKandelaarEquipAnime(const void)
asm void checkKandelaarEquipAnime__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80110C6C.s"
}

// preKandelaarDraw__9daAlink_cFv
// daAlink_c::preKandelaarDraw(void)
asm void preKandelaarDraw__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80110C94.s"
}

// setTevColor__11J3DTevBlockFUlPC13J3DGXColorS10
// J3DTevBlock::setTevColor(unsigned long, const J3DGXColorS10*)
asm void setTevColor__11J3DTevBlockFUlPC13J3DGXColorS10(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80110E80.s"
}

// setKandelaarModel__9daAlink_cFv
// daAlink_c::setKandelaarModel(void)
asm void setKandelaarModel__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80110E84.s"
}

// resetOilBottleModel__9daAlink_cFv
// daAlink_c::resetOilBottleModel(void)
asm void resetOilBottleModel__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80110F88.s"
}

// commonKandelaarPourInit__9daAlink_cFv
// daAlink_c::commonKandelaarPourInit(void)
asm void commonKandelaarPourInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80110FE0.s"
}

// commonKandelaarPour__9daAlink_cFi
// daAlink_c::commonKandelaarPour(int)
asm void commonKandelaarPour__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801110B8.s"
}

// initKandelaarSwing__9daAlink_cFv
// daAlink_c::initKandelaarSwing(void)
asm void initKandelaarSwing__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011130C.s"
}

// procKandelaarSwingInit__9daAlink_cFv
// daAlink_c::procKandelaarSwingInit(void)
asm void procKandelaarSwingInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80111440.s"
}

// procKandelaarSwing__9daAlink_cFv
// daAlink_c::procKandelaarSwing(void)
asm void procKandelaarSwing__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801115CC.s"
}

// procKandelaarPourInit__9daAlink_cFv
// daAlink_c::procKandelaarPourInit(void)
asm void procKandelaarPourInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011167C.s"
}

// procKandelaarPour__9daAlink_cFv
// daAlink_c::procKandelaarPour(void)
asm void procKandelaarPour__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80111724.s"
}

// daAlink_searchWhistle__FP10fopAc_ac_cPv
// daAlink_searchWhistle__FP10fopAc_ac_cPv(fopAc_ac_c*, void*)
asm void daAlink_searchWhistle__FP10fopAc_ac_cPv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011174C.s"
}

// daAlink_searchHawk__FP10fopAc_ac_cPv
// daAlink_searchHawk__FP10fopAc_ac_cPv(fopAc_ac_c*, void*)
asm void daAlink_searchHawk__FP10fopAc_ac_cPv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80111770.s"
}

// setGrassWhistleModel__9daAlink_cFi
// daAlink_c::setGrassWhistleModel(int)
asm void setGrassWhistleModel__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80111784.s"
}

// setHorseWhistleModel__9daAlink_cFv
// daAlink_c::setHorseWhistleModel(void)
asm void setHorseWhistleModel__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011181C.s"
}

// procGrassWhistleGetInit__9daAlink_cFv
// daAlink_c::procGrassWhistleGetInit(void)
asm void procGrassWhistleGetInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80111894.s"
}

// procGrassWhistleGet__9daAlink_cFv
// daAlink_c::procGrassWhistleGet(void)
asm void procGrassWhistleGet__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801119D8.s"
}

// procGrassWhistleWaitInit__9daAlink_cFiiisP4cXyz
// daAlink_c::procGrassWhistleWaitInit(int, int, int, short, cXyz*)
asm void procGrassWhistleWaitInit__9daAlink_cFiiisP4cXyz(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80111A9C.s"
}

// procGrassWhistleWait__9daAlink_cFv
// daAlink_c::procGrassWhistleWait(void)
asm void procGrassWhistleWait__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80111CA4.s"
}

// procCoHorseCallWaitInit__9daAlink_cFi
// daAlink_c::procCoHorseCallWaitInit(int)
asm void procCoHorseCallWaitInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80111FF0.s"
}

// procCoHorseCallWait__9daAlink_cFv
// daAlink_c::procCoHorseCallWait(void)
asm void procCoHorseCallWait__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801120C8.s"
}

// procHawkCatchInit__9daAlink_cFv
// daAlink_c::procHawkCatchInit(void)
asm void procHawkCatchInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801121B4.s"
}

// procHawkCatch__9daAlink_cFv
// daAlink_c::procHawkCatch(void)
asm void procHawkCatch__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80112220.s"
}

// procHawkSubjectInit__9daAlink_cFv
// daAlink_c::procHawkSubjectInit(void)
asm void procHawkSubjectInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80112278.s"
}

// procHawkSubject__9daAlink_cFv
// daAlink_c::procHawkSubject(void)
asm void procHawkSubject__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80112304.s"
}

// getIronBallCenterPos__9daAlink_cFv
// daAlink_c::getIronBallCenterPos(void)
asm void getIronBallCenterPos__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011243C.s"
}

// getIronBallBgHit__9daAlink_cCFv
// daAlink_c::getIronBallBgHit(const void)
asm void getIronBallBgHit__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80112458.s"
}

// checkIronBallThrowMode__9daAlink_cCFv
// daAlink_c::checkIronBallThrowMode(const void)
asm void checkIronBallThrowMode__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80112474.s"
}

// checkIronBallThrowReturnMode__9daAlink_cCFv
// daAlink_c::checkIronBallThrowReturnMode(const void)
asm void checkIronBallThrowReturnMode__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801124B4.s"
}

// checkIronBallReturn__9daAlink_cCFv
// daAlink_c::checkIronBallReturn(const void)
asm void checkIronBallReturn__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801124FC.s"
}

// checkIronBallGroundStop__9daAlink_cCFv
// daAlink_c::checkIronBallGroundStop(const void)
asm void checkIronBallGroundStop__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80112524.s"
}

// setIronBallWaitUpperAnime__9daAlink_cFi
// daAlink_c::setIronBallWaitUpperAnime(int)
asm void setIronBallWaitUpperAnime__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80112568.s"
}

// checkIronBallDelete__9daAlink_cFv
// daAlink_c::checkIronBallDelete(void)
asm void checkIronBallDelete__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80112628.s"
}

// setIronBallReturn__9daAlink_cFi
// daAlink_c::setIronBallReturn(int)
asm void setIronBallReturn__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801126F8.s"
}

// setIronBallBgCheckPos__9daAlink_cFv
// daAlink_c::setIronBallBgCheckPos(void)
asm void setIronBallBgCheckPos__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80112768.s"
}

// setIronBallModel__9daAlink_cFv
// daAlink_c::setIronBallModel(void)
asm void setIronBallModel__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801127F0.s"
}

// __ct__5csXyzFv
// csXyz::csXyz(void)
asm void __ct__5csXyzFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80112C80.s"
}

// setIronBallGroundVec__9daAlink_cFPC4cXyzP4cXyz
// daAlink_c::setIronBallGroundVec(const cXyz*, cXyz*)
asm void setIronBallGroundVec__9daAlink_cFPC4cXyzP4cXyz(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80112C84.s"
}

// setIronBallChainPos__9daAlink_cFv
// daAlink_c::setIronBallChainPos(void)
asm void setIronBallChainPos__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80112E7C.s"
}

// checkIronBallReturnChange__9daAlink_cFv
// daAlink_c::checkIronBallReturnChange(void)
asm void checkIronBallReturnChange__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80113CA0.s"
}

// setIronBallPos__9daAlink_cFv
// daAlink_c::setIronBallPos(void)
asm void setIronBallPos__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80113D58.s"
}

// checkIronBallAnime__9daAlink_cCFv
// daAlink_c::checkIronBallAnime(const void)
asm void checkIronBallAnime__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801150E4.s"
}

// setIronBallReadyAnime__9daAlink_cFv
// daAlink_c::setIronBallReadyAnime(void)
asm void setIronBallReadyAnime__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011510C.s"
}

// setIronBallBaseAnime__9daAlink_cFv
// daAlink_c::setIronBallBaseAnime(void)
asm void setIronBallBaseAnime__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801151E0.s"
}

// checkUpperItemActionIronBall__9daAlink_cFv
// daAlink_c::checkUpperItemActionIronBall(void)
asm void checkUpperItemActionIronBall__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80115254.s"
}

// checkNextActionIronBall__9daAlink_cFv
// daAlink_c::checkNextActionIronBall(void)
asm void checkNextActionIronBall__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801153F8.s"
}

// procIronBallSubjectInit__9daAlink_cFv
// daAlink_c::procIronBallSubjectInit(void)
asm void procIronBallSubjectInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801154E4.s"
}

// procIronBallSubject__9daAlink_cFv
// daAlink_c::procIronBallSubject(void)
asm void procIronBallSubject__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80115564.s"
}

// procIronBallMoveInit__9daAlink_cFv
// daAlink_c::procIronBallMoveInit(void)
asm void procIronBallMoveInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801155EC.s"
}

// procIronBallMove__9daAlink_cFv
// daAlink_c::procIronBallMove(void)
asm void procIronBallMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80115674.s"
}

// procIronBallThrowInit__9daAlink_cFv
// daAlink_c::procIronBallThrowInit(void)
asm void procIronBallThrowInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011577C.s"
}

// procIronBallThrow__9daAlink_cFv
// daAlink_c::procIronBallThrow(void)
asm void procIronBallThrow__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80115860.s"
}

// procIronBallReturnInit__9daAlink_cFv
// daAlink_c::procIronBallReturnInit(void)
asm void procIronBallReturnInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801159F0.s"
}

// procIronBallReturn__9daAlink_cFv
// daAlink_c::procIronBallReturn(void)
asm void procIronBallReturn__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80115AA0.s"
}

// checkEventRun__9daAlink_cCFv
// daAlink_c::checkEventRun(const void)
asm void checkEventRun__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80115C20.s"
}

// createNpcTks__9daAlink_cFP4cXyziUl
// daAlink_c::createNpcTks(cXyz*, int, unsigned long)
asm void createNpcTks__9daAlink_cFP4cXyziUl(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80115C50.s"
}

// checkSetNpcTks__9daAlink_cFP4cXyzii
// daAlink_c::checkSetNpcTks(cXyz*, int, int)
asm void checkSetNpcTks__9daAlink_cFP4cXyzii(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80115D08.s"
}

// checkDemoAction__9daAlink_cFv
// daAlink_c::checkDemoAction(void)
asm void checkDemoAction__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80115EC0.s"
}

// checkDemoMoveMode__9daAlink_cCFUl
// daAlink_c::checkDemoMoveMode(const unsigned long)
asm void checkDemoMoveMode__9daAlink_cCFUl(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80116E60.s"
}

// setDemoMoveData__9daAlink_cFPUlPC4cXyz
// daAlink_c::setDemoMoveData(unsigned long*, const cXyz*)
asm void setDemoMoveData__9daAlink_cFPUlPC4cXyz(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80116E9C.s"
}

// setNoDrawSwordShield__9daAlink_cFiUs
// daAlink_c::setNoDrawSwordShield(int, unsigned short)
asm void setNoDrawSwordShield__9daAlink_cFiUs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80117064.s"
}

// setDemoData__9daAlink_cFv
// daAlink_c::setDemoData(void)
asm void setDemoData__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801171F4.s"
}

// resetDemoBck__9daAlink_cFv
// daAlink_c::resetDemoBck(void)
asm void resetDemoBck__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80117B90.s"
}

// endHighModel__9daAlink_cFv
// daAlink_c::endHighModel(void)
asm void endHighModel__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80117C34.s"
}

// resetSpecialEvent__9daAlink_cFv
// daAlink_c::resetSpecialEvent(void)
asm void resetSpecialEvent__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80117C90.s"
}

// endDemoMode__9daAlink_cFv
// daAlink_c::endDemoMode(void)
asm void endDemoMode__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80117CF8.s"
}

// getDemoLookActor__9daAlink_cFv
// daAlink_c::getDemoLookActor(void)
asm void getDemoLookActor__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801180EC.s"
}

// checkFlyAtnWait__9daAlink_cFv
// daAlink_c::checkFlyAtnWait(void)
asm void checkFlyAtnWait__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80118170.s"
}

// setGetItemFace__9daAlink_cFUs
// daAlink_c::setGetItemFace(unsigned short)
asm void setGetItemFace__9daAlink_cFUs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801181A0.s"
}

// checkGrabTalkActor__9daAlink_cFP10fopAc_ac_c
// daAlink_c::checkGrabTalkActor(fopAc_ac_c*)
asm void checkGrabTalkActor__9daAlink_cFP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801182D4.s"
}

// setTalkStartBack__9daAlink_cFP4cXyz
// daAlink_c::setTalkStartBack(cXyz*)
asm void setTalkStartBack__9daAlink_cFP4cXyz(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80118308.s"
}

// setShapeAngleToTalkActor__9daAlink_cFv
// daAlink_c::setShapeAngleToTalkActor(void)
asm void setShapeAngleToTalkActor__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011856C.s"
}

// setTalkAnime__9daAlink_cFv
// daAlink_c::setTalkAnime(void)
asm void setTalkAnime__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80118654.s"
}

// setTradeItemAnime__9daAlink_cFv
// daAlink_c::setTradeItemAnime(void)
asm void setTradeItemAnime__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801186D4.s"
}

// setTradeItemOutHand__9daAlink_cFv
// daAlink_c::setTradeItemOutHand(void)
asm void setTradeItemOutHand__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80118778.s"
}

// checkEndMessage__9daAlink_cFUl
// daAlink_c::checkEndMessage(unsigned long)
asm void checkEndMessage__9daAlink_cFUl(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801187B4.s"
}

// setDemoRightHandIndex__9daAlink_cFUs
// daAlink_c::setDemoRightHandIndex(unsigned short)
asm void setDemoRightHandIndex__9daAlink_cFUs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80118840.s"
}

// setDemoLeftHandIndex__9daAlink_cFUs
// daAlink_c::setDemoLeftHandIndex(unsigned short)
asm void setDemoLeftHandIndex__9daAlink_cFUs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801188B0.s"
}

// setDemoRide__9daAlink_cFUs
// daAlink_c::setDemoRide(unsigned short)
asm void setDemoRide__9daAlink_cFUs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011894C.s"
}

// setDemoBodyBck__9daAlink_cFP13dDemo_actor_cUs
// daAlink_c::setDemoBodyBck(dDemo_actor_c*, unsigned short)
asm void setDemoBodyBck__9daAlink_cFP13dDemo_actor_cUs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801189F8.s"
}

// checkFinalBattle__9daAlink_cFv
// daAlink_c::checkFinalBattle(void)
asm void checkFinalBattle__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80118AD0.s"
}

// checkRestartDead__9daAlink_cFii
// daAlink_c::checkRestartDead(int, int)
asm void checkRestartDead__9daAlink_cFii(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80118B34.s"
}

// setDeadRideSyncPos__9daAlink_cFv
// daAlink_c::setDeadRideSyncPos(void)
asm void setDeadRideSyncPos__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80118BF4.s"
}

// checkDeadHP__9daAlink_cFv
// daAlink_c::checkDeadHP(void)
asm void checkDeadHP__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80118C98.s"
}

// checkDeadAction__9daAlink_cFi
// daAlink_c::checkDeadAction(int)
asm void checkDeadAction__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80118D7C.s"
}

// setHighModelBck__9daAlink_cFP13mDoExt_bckAnmUs
// daAlink_c::setHighModelBck(mDoExt_bckAnm*, unsigned short)
asm void setHighModelBck__9daAlink_cFP13mDoExt_bckAnmUs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80118FF8.s"
}

// setHighModelFaceBtk__9daAlink_cFUs
// daAlink_c::setHighModelFaceBtk(unsigned short)
asm void setHighModelFaceBtk__9daAlink_cFUs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801190A4.s"
}

// setDemoBrk__9daAlink_cFPP15J3DAnmTevRegKeyP8J3DModelUs
// daAlink_c::setDemoBrk(J3DAnmTevRegKey*, J3DModel*, unsigned short)
asm void setDemoBrk__9daAlink_cFPP15J3DAnmTevRegKeyP8J3DModelUs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80119134.s"
}

// setStickAnmData__9daAlink_cFP10J3DAnmBaseiiUsi
// daAlink_c::setStickAnmData(J3DAnmBase*, int, int, unsigned short, int)
asm void setStickAnmData__9daAlink_cFP10J3DAnmBaseiiUsi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801191C4.s"
}

// daAlink_c_getDemoIDData__FP13dDemo_actor_cPiPiPiPUsPiPi
// daAlink_c_getDemoIDData__FP13dDemo_actor_cPiPiPiPUsPiPi(dDemo_actor_c*, int*, int*, int*,
// unsigned short*, int*, int*)
asm void daAlink_c_getDemoIDData__FP13dDemo_actor_cPiPiPiPUsPiPi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80119464.s"
}

// procDemoCommon__9daAlink_cFv
// daAlink_c::procDemoCommon(void)
asm void procDemoCommon__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801195C0.s"
}

// procCoToolDemoInit__9daAlink_cFv
// daAlink_c::procCoToolDemoInit(void)
asm void procCoToolDemoInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801195F8.s"
}

// procCoToolDemo__9daAlink_cFv
// daAlink_c::procCoToolDemo(void)
asm void procCoToolDemo__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801196D8.s"
}

// procCoTalkInit__9daAlink_cFv
// daAlink_c::procCoTalkInit(void)
asm void procCoTalkInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80119D98.s"
}

// procCoTalk__9daAlink_cFv
// daAlink_c::procCoTalk(void)
asm void procCoTalk__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80119F64.s"
}

// procCoOpenTreasureInit__9daAlink_cFv
// daAlink_c::procCoOpenTreasureInit(void)
asm void procCoOpenTreasureInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011A214.s"
}

// procCoOpenTreasure__9daAlink_cFv
// daAlink_c::procCoOpenTreasure(void)
asm void procCoOpenTreasure__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011A42C.s"
}

// procCoUnequipInit__9daAlink_cFv
// daAlink_c::procCoUnequipInit(void)
asm void procCoUnequipInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011A4C0.s"
}

// procCoUnequip__9daAlink_cFv
// daAlink_c::procCoUnequip(void)
asm void procCoUnequip__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011A5CC.s"
}

// setGetSubBgm__9daAlink_cFi
// daAlink_c::setGetSubBgm(int)
asm void setGetSubBgm__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011A688.s"
}

// checkTreasureRupeeReturn__9daAlink_cCFi
// daAlink_c::checkTreasureRupeeReturn(const int)
asm void checkTreasureRupeeReturn__9daAlink_cCFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011A6FC.s"
}

// procCoGetItemInit__9daAlink_cFv
// daAlink_c::procCoGetItemInit(void)
asm void procCoGetItemInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011A798.s"
}

// procCoGetItem__9daAlink_cFv
// daAlink_c::procCoGetItem(void)
asm void procCoGetItem__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011AC28.s"
}

// procCoTurnBackInit__9daAlink_cFv
// daAlink_c::procCoTurnBackInit(void)
asm void procCoTurnBackInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011B3F0.s"
}

// procCoTurnBack__9daAlink_cFv
// daAlink_c::procCoTurnBack(void)
asm void procCoTurnBack__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011B46C.s"
}

// procDoorOpenInit__9daAlink_cFv
// daAlink_c::procDoorOpenInit(void)
asm void procDoorOpenInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011B57C.s"
}

// procDoorOpen__9daAlink_cFv
// daAlink_c::procDoorOpen(void)
asm void procDoorOpen__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011B71C.s"
}

// procCoLookWaitInit__9daAlink_cFv
// daAlink_c::procCoLookWaitInit(void)
asm void procCoLookWaitInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011B914.s"
}

// procCoLookWait__9daAlink_cFv
// daAlink_c::procCoLookWait(void)
asm void procCoLookWait__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011BA20.s"
}

// procCoDemoPushPullWaitInit__9daAlink_cFv
// daAlink_c::procCoDemoPushPullWaitInit(void)
asm void procCoDemoPushPullWaitInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011BABC.s"
}

// procCoDemoPushMoveInit__9daAlink_cFv
// daAlink_c::procCoDemoPushMoveInit(void)
asm void procCoDemoPushMoveInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011BB40.s"
}

// setMonkeyMoveAnime__9daAlink_cFv
// daAlink_c::setMonkeyMoveAnime(void)
asm void setMonkeyMoveAnime__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011BC14.s"
}

// procMonkeyMoveInit__9daAlink_cFv
// daAlink_c::procMonkeyMoveInit(void)
asm void procMonkeyMoveInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011BC74.s"
}

// procMonkeyMove__9daAlink_cFv
// daAlink_c::procMonkeyMove(void)
asm void procMonkeyMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011BD18.s"
}

// procDemoBoomerangCatchInit__9daAlink_cFv
// daAlink_c::procDemoBoomerangCatchInit(void)
asm void procDemoBoomerangCatchInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011BD6C.s"
}

// procDemoBoomerangCatch__9daAlink_cFv
// daAlink_c::procDemoBoomerangCatch(void)
asm void procDemoBoomerangCatch__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011BDF0.s"
}

// procCoDeadInit__9daAlink_cFi
// daAlink_c::procCoDeadInit(int)
asm void procCoDeadInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011BE54.s"
}

// procCoDead__9daAlink_cFv
// daAlink_c::procCoDead(void)
asm void procCoDead__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011C1B4.s"
}

// procCoLookAroundInit__9daAlink_cFv
// daAlink_c::procCoLookAroundInit(void)
asm void procCoLookAroundInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011C62C.s"
}

// procCoLookAround__9daAlink_cFv
// daAlink_c::procCoLookAround(void)
asm void procCoLookAround__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011C760.s"
}

// procBossAtnWaitInit__9daAlink_cFv
// daAlink_c::procBossAtnWaitInit(void)
asm void procBossAtnWaitInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011C81C.s"
}

// procCoQuakeWaitInit__9daAlink_cFv
// daAlink_c::procCoQuakeWaitInit(void)
asm void procCoQuakeWaitInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011C890.s"
}

// procCoCaughtInit__9daAlink_cFv
// daAlink_c::procCoCaughtInit(void)
asm void procCoCaughtInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011C904.s"
}

// procLookUpInit__9daAlink_cFv
// daAlink_c::procLookUpInit(void)
asm void procLookUpInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011C9D0.s"
}

// procLookUp__9daAlink_cFv
// daAlink_c::procLookUp(void)
asm void procLookUp__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011CA4C.s"
}

// procLookUpToGetItemInit__9daAlink_cFv
// daAlink_c::procLookUpToGetItemInit(void)
asm void procLookUpToGetItemInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011CA98.s"
}

// procLookUpToGetItem__9daAlink_cFv
// daAlink_c::procLookUpToGetItem(void)
asm void procLookUpToGetItem__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011CB20.s"
}

// procHandPatInit__9daAlink_cFv
// daAlink_c::procHandPatInit(void)
asm void procHandPatInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011CBD4.s"
}

// procHandPat__9daAlink_cFv
// daAlink_c::procHandPat(void)
asm void procHandPat__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011CCA8.s"
}

// procCoFogDeadInit__9daAlink_cFv
// daAlink_c::procCoFogDeadInit(void)
asm void procCoFogDeadInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011CDE0.s"
}

// procCoFogDead__9daAlink_cFv
// daAlink_c::procCoFogDead(void)
asm void procCoFogDead__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011CF60.s"
}

// procWolfSmellWaitInit__9daAlink_cFv
// daAlink_c::procWolfSmellWaitInit(void)
asm void procWolfSmellWaitInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011D0A0.s"
}

// procCoNodInit__9daAlink_cFv
// daAlink_c::procCoNodInit(void)
asm void procCoNodInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011D110.s"
}

// procCoNod__9daAlink_cFv
// daAlink_c::procCoNod(void)
asm void procCoNod__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011D1F4.s"
}

// procCoEyeAwayInit__9daAlink_cFv
// daAlink_c::procCoEyeAwayInit(void)
asm void procCoEyeAwayInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011D268.s"
}

// procCoGlareInit__9daAlink_cFv
// daAlink_c::procCoGlareInit(void)
asm void procCoGlareInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011D304.s"
}

// procCoGlare__9daAlink_cFv
// daAlink_c::procCoGlare(void)
asm void procCoGlare__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011D3CC.s"
}

// procGoatStopReadyInit__9daAlink_cFv
// daAlink_c::procGoatStopReadyInit(void)
asm void procGoatStopReadyInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011D474.s"
}

// procGoatStopReady__9daAlink_cFv
// daAlink_c::procGoatStopReady(void)
asm void procGoatStopReady__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011D4D4.s"
}

// procCoGetReadySitInit__9daAlink_cFv
// daAlink_c::procCoGetReadySitInit(void)
asm void procCoGetReadySitInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011D544.s"
}

// procCoGetReadySit__9daAlink_cFv
// daAlink_c::procCoGetReadySit(void)
asm void procCoGetReadySit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011D64C.s"
}

// procCoTwGateInit__9daAlink_cFv
// daAlink_c::procCoTwGateInit(void)
asm void procCoTwGateInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011D6D0.s"
}

// procCoTwGate__9daAlink_cFv
// daAlink_c::procCoTwGate(void)
asm void procCoTwGate__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011D7D4.s"
}

// procWolfSnowEscapeInit__9daAlink_cFv
// daAlink_c::procWolfSnowEscapeInit(void)
asm void procWolfSnowEscapeInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011D82C.s"
}

// procWolfSnowEscape__9daAlink_cFv
// daAlink_c::procWolfSnowEscape(void)
asm void procWolfSnowEscape__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011D8F8.s"
}

// procZoraMoveInit__9daAlink_cFv
// daAlink_c::procZoraMoveInit(void)
asm void procZoraMoveInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011DB04.s"
}

// procZoraMove__9daAlink_cFv
// daAlink_c::procZoraMove(void)
asm void procZoraMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011DB9C.s"
}

// procLookAroundTurnInit__9daAlink_cFv
// daAlink_c::procLookAroundTurnInit(void)
asm void procLookAroundTurnInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011DDD4.s"
}

// procLookAroundTurn__9daAlink_cFv
// daAlink_c::procLookAroundTurn(void)
asm void procLookAroundTurn__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011DED8.s"
}

// procTradeItemOutInit__9daAlink_cFv
// daAlink_c::procTradeItemOutInit(void)
asm void procTradeItemOutInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011DF68.s"
}

// procTradeItemOut__9daAlink_cFv
// daAlink_c::procTradeItemOut(void)
asm void procTradeItemOut__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011E060.s"
}

// checkLetterItem__9daAlink_cFi
// daAlink_c::checkLetterItem(int)
asm void checkLetterItem__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011E3D8.s"
}

// procNotUseItemInit__9daAlink_cFi
// daAlink_c::procNotUseItemInit(int)
asm void procNotUseItemInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011E448.s"
}

// procNotUseItem__9daAlink_cFv
// daAlink_c::procNotUseItem(void)
asm void procNotUseItem__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011E57C.s"
}

// procSwordReadyInit__9daAlink_cFv
// daAlink_c::procSwordReadyInit(void)
asm void procSwordReadyInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011E6E0.s"
}

// procSwordReady__9daAlink_cFv
// daAlink_c::procSwordReady(void)
asm void procSwordReady__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011E748.s"
}

// setSwordPushAnime__9daAlink_cFv
// daAlink_c::setSwordPushAnime(void)
asm void setSwordPushAnime__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011E83C.s"
}

// procSwordPushInit__9daAlink_cFv
// daAlink_c::procSwordPushInit(void)
asm void procSwordPushInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011E8E0.s"
}

// procSwordPush__9daAlink_cFv
// daAlink_c::procSwordPush(void)
asm void procSwordPush__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011E960.s"
}

// procGanonFinishInit__9daAlink_cFv
// daAlink_c::procGanonFinishInit(void)
asm void procGanonFinishInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011E9F8.s"
}

// procGanonFinish__9daAlink_cFv
// daAlink_c::procGanonFinish(void)
asm void procGanonFinish__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011EA78.s"
}

// procCutFastReadyInit__9daAlink_cFv
// daAlink_c::procCutFastReadyInit(void)
asm void procCutFastReadyInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011EAE8.s"
}

// procCutFastReady__9daAlink_cFv
// daAlink_c::procCutFastReady(void)
asm void procCutFastReady__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011EB8C.s"
}

// procMasterSwordStickInit__9daAlink_cFv
// daAlink_c::procMasterSwordStickInit(void)
asm void procMasterSwordStickInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011EBDC.s"
}

// procMasterSwordStick__9daAlink_cFv
// daAlink_c::procMasterSwordStick(void)
asm void procMasterSwordStick__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011EC60.s"
}

// procMasterSwordPullInit__9daAlink_cFv
// daAlink_c::procMasterSwordPullInit(void)
asm void procMasterSwordPullInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011ED18.s"
}

// procMasterSwordPull__9daAlink_cFv
// daAlink_c::procMasterSwordPull(void)
asm void procMasterSwordPull__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011ED8C.s"
}

// checkLv7DungeonShop__9daAlink_cFv
// daAlink_c::checkLv7DungeonShop(void)
asm void checkLv7DungeonShop__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011EE40.s"
}

// procDungeonWarpReadyInit__9daAlink_cFv
// daAlink_c::procDungeonWarpReadyInit(void)
asm void procDungeonWarpReadyInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011EE94.s"
}

// procDungeonWarpReady__9daAlink_cFv
// daAlink_c::procDungeonWarpReady(void)
asm void procDungeonWarpReady__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011EFB8.s"
}

// procDungeonWarpInit__9daAlink_cFv
// daAlink_c::procDungeonWarpInit(void)
asm void procDungeonWarpInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011F084.s"
}

// procDungeonWarp__9daAlink_cFv
// daAlink_c::procDungeonWarp(void)
asm void procDungeonWarp__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011F0F4.s"
}

// procDungeonWarpSceneStartInit__9daAlink_cFv
// daAlink_c::procDungeonWarpSceneStartInit(void)
asm void procDungeonWarpSceneStartInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011F360.s"
}

// procDungeonWarpSceneStart__9daAlink_cFv
// daAlink_c::procDungeonWarpSceneStart(void)
asm void procDungeonWarpSceneStart__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011F460.s"
}

// daAlink_searchPortal__FP10fopAc_ac_cPv
// daAlink_searchPortal__FP10fopAc_ac_cPv(fopAc_ac_c*, void*)
asm void daAlink_searchPortal__FP10fopAc_ac_cPv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011F5D4.s"
}

// checkAcceptWarp__9daAlink_cFv
// daAlink_c::checkAcceptWarp(void)
asm void checkAcceptWarp__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011F658.s"
}

// dungeonReturnWarp__9daAlink_cFv
// daAlink_c::dungeonReturnWarp(void)
asm void dungeonReturnWarp__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011F7D8.s"
}

// skipPortalObjWarp__9daAlink_cFv
// daAlink_c::skipPortalObjWarp(void)
asm void skipPortalObjWarp__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011F8B8.s"
}

// checkWarpStart__9daAlink_cFv
// daAlink_c::checkWarpStart(void)
asm void checkWarpStart__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011F9EC.s"
}

// warpModelTexScroll__9daAlink_cFv
// daAlink_c::warpModelTexScroll(void)
asm void warpModelTexScroll__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011FBC0.s"
}

// procCoWarpInit__9daAlink_cFii
// daAlink_c::procCoWarpInit(int, int)
asm void procCoWarpInit__9daAlink_cFii(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8011FD4C.s"
}

// procCoWarp__9daAlink_cFv
// daAlink_c::procCoWarp(void)
asm void procCoWarp__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80120124.s"
}

// commonWaitTurnInit__9daAlink_cFv
// daAlink_c::commonWaitTurnInit(void)
asm void commonWaitTurnInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80120440.s"
}

// commonGrabPutInit__9daAlink_cFv
// daAlink_c::commonGrabPutInit(void)
asm void commonGrabPutInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80120474.s"
}

// commonLargeDamageUpInit__9daAlink_cFiiss
// daAlink_c::commonLargeDamageUpInit(int, int, short, short)
asm void commonLargeDamageUpInit__9daAlink_cFiiss(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80120500.s"
}

// commonFallInit__9daAlink_cFi
// daAlink_c::commonFallInit(int)
asm void commonFallInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80120534.s"
}

// setEmitter__9daAlink_cFPUlUsPC4cXyzPC5csXyz
// daAlink_c::setEmitter(unsigned long*, unsigned short, const cXyz*, const csXyz*)
asm void setEmitter__9daAlink_cFPUlUsPC4cXyzPC5csXyz(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80120580.s"
}

// setEmitterPolyColor__9daAlink_cFPUlUsR13cBgS_PolyInfoPC4cXyzPC5csXyz
// daAlink_c::setEmitterPolyColor(unsigned long*, unsigned short, cBgS_PolyInfo&, const cXyz*, const
// csXyz*)
asm void setEmitterPolyColor__9daAlink_cFPUlUsR13cBgS_PolyInfoPC4cXyzPC5csXyz(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80120634.s"
}

// setEmitterColor__9daAlink_cFPUlUsPC4cXyzPC5csXyz
// daAlink_c::setEmitterColor(unsigned long*, unsigned short, const cXyz*, const csXyz*)
asm void setEmitterColor__9daAlink_cFPUlUsPC4cXyzPC5csXyz(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801206C4.s"
}

// stopDrawParticle__9daAlink_cFUl
// daAlink_c::stopDrawParticle(unsigned long)
asm void stopDrawParticle__9daAlink_cFUl(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80120778.s"
}

// setEffectFrontRollParam__9daAlink_cFv
// daAlink_c::setEffectFrontRollParam(void)
asm void setEffectFrontRollParam__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801207BC.s"
}

// setEffectSlipParam__9daAlink_cFv
// daAlink_c::setEffectSlipParam(void)
asm void setEffectSlipParam__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80120880.s"
}

// setEffectRunParam__9daAlink_cFv
// daAlink_c::setEffectRunParam(void)
asm void setEffectRunParam__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80120B00.s"
}

// setEffectSmallLandParam__9daAlink_cFv
// daAlink_c::setEffectSmallLandParam(void)
asm void setEffectSmallLandParam__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80120DB0.s"
}

// setEffectLandParam__9daAlink_cFv
// daAlink_c::setEffectLandParam(void)
asm void setEffectLandParam__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80121000.s"
}

// setEffectSumouParam__9daAlink_cFv
// daAlink_c::setEffectSumouParam(void)
asm void setEffectSumouParam__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80121004.s"
}

// setFootEffectProcType__9daAlink_cFi
// daAlink_c::setFootEffectProcType(int)
asm void setFootEffectProcType__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801211C0.s"
}

// setWolfFootOn__9daAlink_cFi
// daAlink_c::setWolfFootOn(int)
asm void setWolfFootOn__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80121214.s"
}

// setFootMark__9daAlink_cFP4cXyzUsi
// daAlink_c::setFootMark(cXyz*, unsigned short, int)
asm void setFootMark__9daAlink_cFP4cXyzUsi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80121304.s"
}

// setEffect__9daAlink_cFv
// daAlink_c::setEffect(void)
asm void setEffect__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80121388.s"
}

// setSumouEffect__9daAlink_cFv
// daAlink_c::setSumouEffect(void)
asm void setSumouEffect__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801221F0.s"
}

// setWaterfallEffect__9daAlink_cFPC4cXyzPUl
// daAlink_c::setWaterfallEffect(const cXyz*, unsigned long*)
asm void setWaterfallEffect__9daAlink_cFPC4cXyzPUl(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801225E8.s"
}

// setWaterfallEffect__9daAlink_cFv
// daAlink_c::setWaterfallEffect(void)
asm void setWaterfallEffect__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80122654.s"
}

// setMagneBootsEffect__9daAlink_cFv
// daAlink_c::setMagneBootsEffect(void)
asm void setMagneBootsEffect__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012277C.s"
}

// setSwordChargeEffect__9daAlink_cFv
// daAlink_c::setSwordChargeEffect(void)
asm void setSwordChargeEffect__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801228F4.s"
}

// setElecDamageEffect__9daAlink_cFv
// daAlink_c::setElecDamageEffect(void)
asm void setElecDamageEffect__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80122BBC.s"
}

// clearCutTurnEffectID__9daAlink_cFv
// daAlink_c::clearCutTurnEffectID(void)
asm void clearCutTurnEffectID__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80122F18.s"
}

// setCutTurnEffect__9daAlink_cFv
// daAlink_c::setCutTurnEffect(void)
asm void setCutTurnEffect__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80122F78.s"
}

// setHorseCutTurnEffect__9daAlink_cFv
// daAlink_c::setHorseCutTurnEffect(void)
asm void setHorseCutTurnEffect__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801233A4.s"
}

// setCutLargeJumpLandEffect__9daAlink_cFv
// daAlink_c::setCutLargeJumpLandEffect(void)
asm void setCutLargeJumpLandEffect__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80123434.s"
}

// setBootsLightEffect__9daAlink_cFv
// daAlink_c::setBootsLightEffect(void)
asm void setBootsLightEffect__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801236BC.s"
}

// setLightningSwordEffect__9daAlink_cFv
// daAlink_c::setLightningSwordEffect(void)
asm void setLightningSwordEffect__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801237A8.s"
}

// setWolfRollAttackEffect__9daAlink_cFv
// daAlink_c::setWolfRollAttackEffect(void)
asm void setWolfRollAttackEffect__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801238FC.s"
}

// setWolfDigEffect__9daAlink_cFv
// daAlink_c::setWolfDigEffect(void)
asm void setWolfDigEffect__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801239B0.s"
}

// setWolfSwimEndEffect__9daAlink_cFPP14JPABaseEmitterPP14JPABaseEmitter
// daAlink_c::setWolfSwimEndEffect(JPABaseEmitter*, JPABaseEmitter*)
asm void setWolfSwimEndEffect__9daAlink_cFPP14JPABaseEmitterPP14JPABaseEmitter(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80123BF0.s"
}

// setWolfLockAttackEffect__9daAlink_cFv
// daAlink_c::setWolfLockAttackEffect(void)
asm void setWolfLockAttackEffect__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80123C8C.s"
}

// setWolfJumpAttackEffect__9daAlink_cFv
// daAlink_c::setWolfJumpAttackEffect(void)
asm void setWolfJumpAttackEffect__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80123D88.s"
}

// setWolfBarrierHitEffect__9daAlink_cFR11dBgS_LinChk
// daAlink_c::setWolfBarrierHitEffect(dBgS_LinChk&)
asm void setWolfBarrierHitEffect__9daAlink_cFR11dBgS_LinChk(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80123ED0.s"
}

// setCutWaterDropEffect__9daAlink_cFv
// daAlink_c::setCutWaterDropEffect(void)
asm void setCutWaterDropEffect__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80124144.s"
}

// setWaterDropEffect__9daAlink_cFv
// daAlink_c::setWaterDropEffect(void)
asm void setWaterDropEffect__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801241E0.s"
}

// setSwordUpColorEffect__9daAlink_cFv
// daAlink_c::setSwordUpColorEffect(void)
asm void setSwordUpColorEffect__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801244E4.s"
}

// setSwordCutSplash__9daAlink_cFv
// daAlink_c::setSwordCutSplash(void)
asm void setSwordCutSplash__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801245EC.s"
}

// setMetamorphoseEffectStartLink__9daAlink_cFv
// daAlink_c::setMetamorphoseEffectStartLink(void)
asm void setMetamorphoseEffectStartLink__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80124738.s"
}

// setMetamorphoseEffect__9daAlink_cFv
// daAlink_c::setMetamorphoseEffect(void)
asm void setMetamorphoseEffect__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801247A8.s"
}

// setRunSplash__9daAlink_cFv
// daAlink_c::setRunSplash(void)
asm void setRunSplash__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801248A8.s"
}

// execute__29dAlink_bottleWaterPcallBack_cFP14JPABaseEmitterP15JPABaseParticle
// dAlink_bottleWaterPcallBack_c::execute(JPABaseEmitter*, JPABaseParticle*)
asm void execute__29dAlink_bottleWaterPcallBack_cFP14JPABaseEmitterP15JPABaseParticle(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80124A2C.s"
}

// resetFairyEffect__9daAlink_cFv
// daAlink_c::resetFairyEffect(void)
asm void resetFairyEffect__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80124B68.s"
}

// setBottleEffect__9daAlink_cFv
// daAlink_c::setBottleEffect(void)
asm void setBottleEffect__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80124BA4.s"
}

// clearFirePointDamageEffect__9daAlink_cFi
// daAlink_c::clearFirePointDamageEffect(int)
asm void clearFirePointDamageEffect__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80124E28.s"
}

// initFirePointDamageEffectAll__9daAlink_cFv
// daAlink_c::initFirePointDamageEffectAll(void)
asm void initFirePointDamageEffectAll__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80124EA8.s"
}

// initFirePointDamageEffect__9daAlink_cFPC4cXyzP12dCcD_GObjInf
// daAlink_c::initFirePointDamageEffect(const cXyz*, dCcD_GObjInf*)
asm void initFirePointDamageEffect__9daAlink_cFPC4cXyzP12dCcD_GObjInf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80124FA4.s"
}

// setFirePointDamageEffect__9daAlink_cFv
// daAlink_c::setFirePointDamageEffect(void)
asm void setFirePointDamageEffect__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80125128.s"
}

// setFreezeEffect__9daAlink_cFv
// daAlink_c::setFreezeEffect(void)
asm void setFreezeEffect__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80125338.s"
}

// setWoodShieldBurnEffect__9daAlink_cFv
// daAlink_c::setWoodShieldBurnEffect(void)
asm void setWoodShieldBurnEffect__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80125524.s"
}

// clearWoodShieldBurnEffect__9daAlink_cFv
// daAlink_c::clearWoodShieldBurnEffect(void)
asm void clearWoodShieldBurnEffect__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801255BC.s"
}

// setWoodShieldBurnOutEffect__9daAlink_cFv
// daAlink_c::setWoodShieldBurnOutEffect(void)
asm void setWoodShieldBurnOutEffect__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80125628.s"
}

// initBlur__14daAlink_blur_cFfiPC4cXyzPC4cXyzPC4cXyz
// daAlink_blur_c::initBlur(float, int, const cXyz*, const cXyz*, const cXyz*)
asm void initBlur__14daAlink_blur_cFfiPC4cXyzPC4cXyzPC4cXyz(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801256EC.s"
}

// setBezierPos__FPC4cXyzPC4cXyzPC4cXyzPC4cXyzfP4cXyz
// setBezierPos__FPC4cXyzPC4cXyzPC4cXyzPC4cXyzfP4cXyz(const cXyz*, const cXyz*, const cXyz*, const
// cXyz*, float, cXyz*)
asm void setBezierPos__FPC4cXyzPC4cXyzPC4cXyzPC4cXyzfP4cXyz(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80125778.s"
}

// copyBlur__14daAlink_blur_cFPC4cXyzPC4cXyzPC4cXyz
// daAlink_blur_c::copyBlur(const cXyz*, const cXyz*, const cXyz*)
asm void copyBlur__14daAlink_blur_cFPC4cXyzPC4cXyzPC4cXyz(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012589C.s"
}

// traceBlur__14daAlink_blur_cFPC4cXyzPC4cXyzs
// daAlink_blur_c::traceBlur(const cXyz*, const cXyz*, short)
asm void traceBlur__14daAlink_blur_cFPC4cXyzPC4cXyzs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80125B0C.s"
}

// draw__14daAlink_blur_cFv
// daAlink_blur_c::draw(void)
asm void draw__14daAlink_blur_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80125BF4.s"
}

// create__20daAlink_lockCursor_cFv
// daAlink_lockCursor_c::create(void)
asm void create__20daAlink_lockCursor_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80125F14.s"
}

// setAnimation__7J2DPaneFP15J2DAnmTevRegKey
// J2DPane::setAnimation(J2DAnmTevRegKey*)
asm void setAnimation__7J2DPaneFP15J2DAnmTevRegKey(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80126350.s"
}

// setAnimation__7J2DPaneFP11J2DAnmColor
// J2DPane::setAnimation(J2DAnmColor*)
asm void setAnimation__7J2DPaneFP11J2DAnmColor(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80126354.s"
}

// update__20daAlink_lockCursor_cFv
// daAlink_lockCursor_c::update(void)
asm void update__20daAlink_lockCursor_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80126358.s"
}

// draw__20daAlink_lockCursor_cFv
// daAlink_lockCursor_c::draw(void)
asm void draw__20daAlink_lockCursor_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80126424.s"
}

// create__15daAlink_sight_cFv
// daAlink_sight_c::create(void)
asm void create__15daAlink_sight_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80126650.s"
}

// draw__15daAlink_sight_cFv
// daAlink_sight_c::draw(void)
asm void draw__15daAlink_sight_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801266C0.s"
}

// onLockFlg__15daAlink_sight_cFv
// daAlink_sight_c::onLockFlg(void)
asm void onLockFlg__15daAlink_sight_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80126710.s"
}

// changeCommon__9daAlink_cFv
// daAlink_c::changeCommon(void)
asm void changeCommon__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80126740.s"
}

// changeWolf__9daAlink_cFv
// daAlink_c::changeWolf(void)
asm void changeWolf__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80126928.s"
}

// changeLink__9daAlink_cFi
// daAlink_c::changeLink(int)
asm void changeLink__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80126F3C.s"
}

// onWolfEyeUp__9daAlink_cFv
// daAlink_c::onWolfEyeUp(void)
asm void onWolfEyeUp__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80127C54.s"
}

// offWolfEyeUp__9daAlink_cFv
// daAlink_c::offWolfEyeUp(void)
asm void offWolfEyeUp__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80127CAC.s"
}

// wolfSenseTrigger__9daAlink_cFv
// daAlink_c::wolfSenseTrigger(void)
asm void wolfSenseTrigger__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80127CF0.s"
}

// setWolfSenceStatus__9daAlink_cFUc
// daAlink_c::setWolfSenceStatus(unsigned char)
asm void setWolfSenceStatus__9daAlink_cFUc(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80127D14.s"
}

// wolfClawTrigger__9daAlink_cFv
// daAlink_c::wolfClawTrigger(void)
asm void wolfClawTrigger__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80127D2C.s"
}

// setWolfDigStatus__9daAlink_cFUc
// daAlink_c::setWolfDigStatus(unsigned char)
asm void setWolfDigStatus__9daAlink_cFUc(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80127D50.s"
}

// checkWolfShapeReverse__9daAlink_cCFv
// daAlink_c::checkWolfShapeReverse(const void)
asm void checkWolfShapeReverse__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80127D68.s"
}

// checkWolfSideStep__9daAlink_cCFv
// daAlink_c::checkWolfSideStep(const void)
asm void checkWolfSideStep__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80127DC4.s"
}

// setWolfTailAngle__9daAlink_cFv
// daAlink_c::setWolfTailAngle(void)
asm void setWolfTailAngle__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80127E08.s"
}

// checkWolfSlowDash__9daAlink_cFv
// daAlink_c::checkWolfSlowDash(void)
asm void checkWolfSlowDash__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80127F20.s"
}

// setSpeedAndAngleWolf__9daAlink_cFv
// daAlink_c::setSpeedAndAngleWolf(void)
asm void setSpeedAndAngleWolf__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80127F50.s"
}

// setSpeedAndAngleWolfAtn__9daAlink_cFv
// daAlink_c::setSpeedAndAngleWolfAtn(void)
asm void setSpeedAndAngleWolfAtn__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80128478.s"
}

// checkWolfAtnWait__9daAlink_cFv
// daAlink_c::checkWolfAtnWait(void)
asm void checkWolfAtnWait__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80128798.s"
}

// checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
asm void checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012880C.s"
}

// setBlendWolfMoveAnime__9daAlink_cFf
// daAlink_c::setBlendWolfMoveAnime(float)
asm void setBlendWolfMoveAnime__9daAlink_cFf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80128844.s"
}

// checkWolfAtnMoveBack__9daAlink_cFs
// daAlink_c::checkWolfAtnMoveBack(short)
asm void checkWolfAtnMoveBack__9daAlink_cFs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80128F0C.s"
}

// setWolfAtnMoveDirection__9daAlink_cFv
// daAlink_c::setWolfAtnMoveDirection(void)
asm void setWolfAtnMoveDirection__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80128F5C.s"
}

// setBlendWolfAtnMoveAnime__9daAlink_cFf
// daAlink_c::setBlendWolfAtnMoveAnime(float)
asm void setBlendWolfAtnMoveAnime__9daAlink_cFf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80129114.s"
}

// setBlendWolfAtnBackMoveAnime__9daAlink_cFf
// daAlink_c::setBlendWolfAtnBackMoveAnime(float)
asm void setBlendWolfAtnBackMoveAnime__9daAlink_cFf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012933C.s"
}

// setDoubleAnimeWolf__9daAlink_cFfffQ29daAlink_c12daAlink_WANMQ29daAlink_c12daAlink_WANMif
asm void
setDoubleAnimeWolf__9daAlink_cFfffQ29daAlink_c12daAlink_WANMQ29daAlink_c12daAlink_WANMif(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012948C.s"
}

// setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
asm void setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80129678.s"
}

// setSingleAnimeWolfBaseMorf__9daAlink_cFQ29daAlink_c12daAlink_WANMf
asm void setSingleAnimeWolfBaseMorf__9daAlink_cFQ29daAlink_c12daAlink_WANMf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801296A8.s"
}

// setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
asm void setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801296D8.s"
}

// setSingleAnimeWolf__9daAlink_cFQ29daAlink_c12daAlink_WANMffsf
asm void setSingleAnimeWolf__9daAlink_cFQ29daAlink_c12daAlink_WANMffsf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80129704.s"
}

// setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
asm void setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80129848.s"
}

// checkWolfLandAction__9daAlink_cFi
// daAlink_c::checkWolfLandAction(int)
asm void checkWolfLandAction__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012987C.s"
}

// checkMidnaUseAbility__9daAlink_cCFv
// daAlink_c::checkMidnaUseAbility(const void)
asm void checkMidnaUseAbility__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80129958.s"
}

// checkWolfUseAbility__9daAlink_cFv
// daAlink_c::checkWolfUseAbility(void)
asm void checkWolfUseAbility__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801299A8.s"
}

// checkWolfGroundSpecialMode__9daAlink_cFv
// daAlink_c::checkWolfGroundSpecialMode(void)
asm void checkWolfGroundSpecialMode__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80129A80.s"
}

// checkNextActionWolf__9daAlink_cFi
// daAlink_c::checkNextActionWolf(int)
asm void checkNextActionWolf__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80129B44.s"
}

// wolfSideBgCheck__9daAlink_cFs
// daAlink_c::wolfSideBgCheck(short)
asm void wolfSideBgCheck__9daAlink_cFs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012A02C.s"
}

// checkWolfAttackReverse__9daAlink_cFi
// daAlink_c::checkWolfAttackReverse(int)
asm void checkWolfAttackReverse__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012A228.s"
}

// checkWolfBarrierHitReverse__9daAlink_cFv
// daAlink_c::checkWolfBarrierHitReverse(void)
asm void checkWolfBarrierHitReverse__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012A330.s"
}

// checkWolfBarrierWallHit__9daAlink_cFR13cBgS_PolyInfo
// daAlink_c::checkWolfBarrierWallHit(cBgS_PolyInfo&)
asm void checkWolfBarrierWallHit__9daAlink_cFR13cBgS_PolyInfo(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012A41C.s"
}

// wolfBgCheck__9daAlink_cFv
// daAlink_c::wolfBgCheck(void)
asm void wolfBgCheck__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012A498.s"
}

// changeWolfBlendRate__9daAlink_cFi
// daAlink_c::changeWolfBlendRate(int)
asm void changeWolfBlendRate__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012ACCC.s"
}

// setWolfFootMatrix__9daAlink_cFv
// daAlink_c::setWolfFootMatrix(void)
asm void setWolfFootMatrix__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012AD1C.s"
}

// wolfFootBgCheck__9daAlink_cFv
// daAlink_c::wolfFootBgCheck(void)
asm void wolfFootBgCheck__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012B724.s"
}

// checkWolfWaitSlipPolygon__9daAlink_cFv
// daAlink_c::checkWolfWaitSlipPolygon(void)
asm void checkWolfWaitSlipPolygon__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012BFA8.s"
}

// setWolfWaitSlip__9daAlink_cFv
// daAlink_c::setWolfWaitSlip(void)
asm void setWolfWaitSlip__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012C1F4.s"
}

// checkWolfAtnDoCharge__9daAlink_cFv
// daAlink_c::checkWolfAtnDoCharge(void)
asm void checkWolfAtnDoCharge__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012C308.s"
}

// setWolfChainPos__9daAlink_cFv
// daAlink_c::setWolfChainPos(void)
asm void setWolfChainPos__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012C30C.s"
}

// setWolfAnmVoice__9daAlink_cFv
// daAlink_c::setWolfAnmVoice(void)
asm void setWolfAnmVoice__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012CB0C.s"
}

// procWolfServiceWaitInit__9daAlink_cFi
// daAlink_c::procWolfServiceWaitInit(int)
asm void procWolfServiceWaitInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012CBE4.s"
}

// procWolfServiceWait__9daAlink_cFv
// daAlink_c::procWolfServiceWait(void)
asm void procWolfServiceWait__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012CD28.s"
}

// procWolfTiredWaitInit__9daAlink_cFv
// daAlink_c::procWolfTiredWaitInit(void)
asm void procWolfTiredWaitInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012CF68.s"
}

// procWolfTiredWait__9daAlink_cFv
// daAlink_c::procWolfTiredWait(void)
asm void procWolfTiredWait__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012CFEC.s"
}

// procWolfMidnaRideShockInit__9daAlink_cFv
// daAlink_c::procWolfMidnaRideShockInit(void)
asm void procWolfMidnaRideShockInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012D050.s"
}

// procWolfMidnaRideShock__9daAlink_cFv
// daAlink_c::procWolfMidnaRideShock(void)
asm void procWolfMidnaRideShock__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012D104.s"
}

// procWolfWaitInit__9daAlink_cFv
// daAlink_c::procWolfWaitInit(void)
asm void procWolfWaitInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012D1A8.s"
}

// procWolfWait__9daAlink_cFv
// daAlink_c::procWolfWait(void)
asm void procWolfWait__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012D2A8.s"
}

// procWolfMoveInit__9daAlink_cFv
// daAlink_c::procWolfMoveInit(void)
asm void procWolfMoveInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012D380.s"
}

// procWolfMove__9daAlink_cFv
// daAlink_c::procWolfMove(void)
asm void procWolfMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012D3E4.s"
}

// procWolfDashInit__9daAlink_cFv
// daAlink_c::procWolfDashInit(void)
asm void procWolfDashInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012D474.s"
}

// procWolfDash__9daAlink_cFv
// daAlink_c::procWolfDash(void)
asm void procWolfDash__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012D590.s"
}

// procWolfDashReverseInit__9daAlink_cFi
// daAlink_c::procWolfDashReverseInit(int)
asm void procWolfDashReverseInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012D8C0.s"
}

// procWolfDashReverse__9daAlink_cFv
// daAlink_c::procWolfDashReverse(void)
asm void procWolfDashReverse__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012DA5C.s"
}

// procWolfAtnActorMoveInit__9daAlink_cFv
// daAlink_c::procWolfAtnActorMoveInit(void)
asm void procWolfAtnActorMoveInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012DBA8.s"
}

// procWolfAtnActorMove__9daAlink_cFv
// daAlink_c::procWolfAtnActorMove(void)
asm void procWolfAtnActorMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012DC44.s"
}

// procWolfWaitTurnInit__9daAlink_cFv
// daAlink_c::procWolfWaitTurnInit(void)
asm void procWolfWaitTurnInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012DD08.s"
}

// procWolfWaitTurn__9daAlink_cFv
// daAlink_c::procWolfWaitTurn(void)
asm void procWolfWaitTurn__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012DDB4.s"
}

// procWolfSideStepInit__9daAlink_cFi
// daAlink_c::procWolfSideStepInit(int)
asm void procWolfSideStepInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012DEC8.s"
}

// procWolfSideStep__9daAlink_cFv
// daAlink_c::procWolfSideStep(void)
asm void procWolfSideStep__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012E0AC.s"
}

// procWolfSideStepLandInit__9daAlink_cFs
// daAlink_c::procWolfSideStepLandInit(short)
asm void procWolfSideStepLandInit__9daAlink_cFs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012E1E8.s"
}

// procWolfSideStepLand__9daAlink_cFv
// daAlink_c::procWolfSideStepLand(void)
asm void procWolfSideStepLand__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012E2DC.s"
}

// procWolfBackJumpInit__9daAlink_cFi
// daAlink_c::procWolfBackJumpInit(int)
asm void procWolfBackJumpInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012E398.s"
}

// procWolfBackJump__9daAlink_cFv
// daAlink_c::procWolfBackJump(void)
asm void procWolfBackJump__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012E508.s"
}

// procWolfBackJumpLandInit__9daAlink_cFss
// daAlink_c::procWolfBackJumpLandInit(short, short)
asm void procWolfBackJumpLandInit__9daAlink_cFss(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012E5F4.s"
}

// procWolfBackJumpLand__9daAlink_cFv
// daAlink_c::procWolfBackJumpLand(void)
asm void procWolfBackJumpLand__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012E684.s"
}

// procWolfHowlInit__9daAlink_cFi
// daAlink_c::procWolfHowlInit(int)
asm void procWolfHowlInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012E754.s"
}

// procWolfHowl__9daAlink_cFv
// daAlink_c::procWolfHowl(void)
asm void procWolfHowl__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012E83C.s"
}

// procWolfAutoJumpInit__9daAlink_cFi
// daAlink_c::procWolfAutoJumpInit(int)
asm void procWolfAutoJumpInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012E9C8.s"
}

// procWolfAutoJump__9daAlink_cFv
// daAlink_c::procWolfAutoJump(void)
asm void procWolfAutoJump__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012EB94.s"
}

// procWolfFallInit__9daAlink_cFif
// daAlink_c::procWolfFallInit(int, float)
asm void procWolfFallInit__9daAlink_cFif(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012EDD0.s"
}

// procWolfFall__9daAlink_cFv
// daAlink_c::procWolfFall(void)
asm void procWolfFall__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012EFB8.s"
}

// procWolfLandInit__9daAlink_cFv
// daAlink_c::procWolfLandInit(void)
asm void procWolfLandInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012F138.s"
}

// procWolfLand__9daAlink_cFv
// daAlink_c::procWolfLand(void)
asm void procWolfLand__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012F1F0.s"
}

// procWolfSitInit__9daAlink_cFi
// daAlink_c::procWolfSitInit(int)
asm void procWolfSitInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012F278.s"
}

// procWolfSit__9daAlink_cFv
// daAlink_c::procWolfSit(void)
asm void procWolfSit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012F358.s"
}

// procWolfStepMoveInit__9daAlink_cFv
// daAlink_c::procWolfStepMoveInit(void)
asm void procWolfStepMoveInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012F41C.s"
}

// procWolfStepMove__9daAlink_cFv
// daAlink_c::procWolfStepMove(void)
asm void procWolfStepMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012F500.s"
}

// procWolfSlipInit__9daAlink_cFv
// daAlink_c::procWolfSlipInit(void)
asm void procWolfSlipInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012F634.s"
}

// procWolfSlip__9daAlink_cFv
// daAlink_c::procWolfSlip(void)
asm void procWolfSlip__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012F6EC.s"
}

// procWolfSlipTurnInit__9daAlink_cFi
// daAlink_c::procWolfSlipTurnInit(int)
asm void procWolfSlipTurnInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012F840.s"
}

// procWolfSlipTurn__9daAlink_cFv
// daAlink_c::procWolfSlipTurn(void)
asm void procWolfSlipTurn__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012F9C0.s"
}

// procWolfSlipTurnLandInit__9daAlink_cFv
// daAlink_c::procWolfSlipTurnLandInit(void)
asm void procWolfSlipTurnLandInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012FB18.s"
}

// procWolfSlipTurnLand__9daAlink_cFv
// daAlink_c::procWolfSlipTurnLand(void)
asm void procWolfSlipTurnLand__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012FBB4.s"
}

// procWolfSlideReadyInit__9daAlink_cFsi
// daAlink_c::procWolfSlideReadyInit(short, int)
asm void procWolfSlideReadyInit__9daAlink_cFsi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012FC38.s"
}

// procWolfSlideReady__9daAlink_cFv
// daAlink_c::procWolfSlideReady(void)
asm void procWolfSlideReady__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012FD2C.s"
}

// procWolfSlideInit__9daAlink_cFsi
// daAlink_c::procWolfSlideInit(short, int)
asm void procWolfSlideInit__9daAlink_cFsi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012FE80.s"
}

// procWolfSlide__9daAlink_cFv
// daAlink_c::procWolfSlide(void)
asm void procWolfSlide__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8012FFA4.s"
}

// procWolfSlideLandInit__9daAlink_cFv
// daAlink_c::procWolfSlideLandInit(void)
asm void procWolfSlideLandInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801300D4.s"
}

// procWolfSlideLand__9daAlink_cFv
// daAlink_c::procWolfSlideLand(void)
asm void procWolfSlideLand__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80130138.s"
}

// procWolfWaitSlipInit__9daAlink_cFv
// daAlink_c::procWolfWaitSlipInit(void)
asm void procWolfWaitSlipInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801301E4.s"
}

// procWolfWaitSlip__9daAlink_cFv
// daAlink_c::procWolfWaitSlip(void)
asm void procWolfWaitSlip__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80130268.s"
}

// procWolfSlopeStartInit__9daAlink_cFi
// daAlink_c::procWolfSlopeStartInit(int)
asm void procWolfSlopeStartInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80130440.s"
}

// procWolfSlopeStart__9daAlink_cFv
// daAlink_c::procWolfSlopeStart(void)
asm void procWolfSlopeStart__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801304D4.s"
}

// daAlink_searchGoldWolf__FP10fopAc_ac_cPv
// daAlink_searchGoldWolf__FP10fopAc_ac_cPv(fopAc_ac_c*, void*)
asm void daAlink_searchGoldWolf__FP10fopAc_ac_cPv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013056C.s"
}

// daAlink_searchWolfHowl__FP10fopAc_ac_cPv
// daAlink_searchWolfHowl__FP10fopAc_ac_cPv(fopAc_ac_c*, void*)
asm void daAlink_searchWolfHowl__FP10fopAc_ac_cPv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80130580.s"
}

// setWolfHowlNotHappen__9daAlink_cFi
// daAlink_c::setWolfHowlNotHappen(int)
asm void setWolfHowlNotHappen__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80130654.s"
}

// procWolfHowlDemoInit__9daAlink_cFv
// daAlink_c::procWolfHowlDemoInit(void)
asm void procWolfHowlDemoInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80130700.s"
}

// procWolfHowlDemo__9daAlink_cFv
// daAlink_c::procWolfHowlDemo(void)
asm void procWolfHowlDemo__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80130BC4.s"
}

// setWolfHowling__15daObj_Sekizoa_cFv
// daObj_Sekizoa_c::setWolfHowling(void)
asm void setWolfHowling__15daObj_Sekizoa_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801312C8.s"
}

// checkWolfRope__9daAlink_cFv
// daAlink_c::checkWolfRope(void)
asm void checkWolfRope__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80131408.s"
}

// checkWolfRopeHit__9daAlink_cCFP12dCcD_GObjInfPC4cXyzi
// daAlink_c::checkWolfRopeHit(const dCcD_GObjInf*, const cXyz*, int)
asm void checkWolfRopeHit__9daAlink_cCFP12dCcD_GObjInfPC4cXyzi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80131450.s"
}

// checkWolfRopeJumpHang__9daAlink_cFv
// daAlink_c::checkWolfRopeJumpHang(void)
asm void checkWolfRopeJumpHang__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80131628.s"
}

// getWolfRopeMoveSpeed__9daAlink_cFv
// daAlink_c::getWolfRopeMoveSpeed(void)
asm void getWolfRopeMoveSpeed__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801316A4.s"
}

// setWolfRopePosY__9daAlink_cFv
// daAlink_c::setWolfRopePosY(void)
asm void setWolfRopePosY__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80131718.s"
}

// initWolfRopeShapeAngle__9daAlink_cFv
// daAlink_c::initWolfRopeShapeAngle(void)
asm void initWolfRopeShapeAngle__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801319F0.s"
}

// wolfRopeSwingInc__9daAlink_cFf
// daAlink_c::wolfRopeSwingInc(float)
asm void wolfRopeSwingInc__9daAlink_cFf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80131A6C.s"
}

// setWolfRopeOffsetY__9daAlink_cFi
// daAlink_c::setWolfRopeOffsetY(int)
asm void setWolfRopeOffsetY__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80131AFC.s"
}

// getDirectionRopeMove__9daAlink_cCFv
// daAlink_c::getDirectionRopeMove(const void)
asm void getDirectionRopeMove__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80131C00.s"
}

// procWolfRopeMoveInit__9daAlink_cFii
// daAlink_c::procWolfRopeMoveInit(int, int)
asm void procWolfRopeMoveInit__9daAlink_cFii(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80131C74.s"
}

// procWolfRopeMove__9daAlink_cFv
// daAlink_c::procWolfRopeMove(void)
asm void procWolfRopeMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80131DA0.s"
}

// procWolfRopeHangInit__9daAlink_cFi
// daAlink_c::procWolfRopeHangInit(int)
asm void procWolfRopeHangInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80132738.s"
}

// procWolfRopeHang__9daAlink_cFv
// daAlink_c::procWolfRopeHang(void)
asm void procWolfRopeHang__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80132914.s"
}

// procWolfRopeTurnInit__9daAlink_cFv
// daAlink_c::procWolfRopeTurnInit(void)
asm void procWolfRopeTurnInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80132D68.s"
}

// procWolfRopeTurn__9daAlink_cFv
// daAlink_c::procWolfRopeTurn(void)
asm void procWolfRopeTurn__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80132E88.s"
}

// procWolfRopeStaggerInit__9daAlink_cFi
// daAlink_c::procWolfRopeStaggerInit(int)
asm void procWolfRopeStaggerInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80133054.s"
}

// procWolfRopeStagger__9daAlink_cFv
// daAlink_c::procWolfRopeStagger(void)
asm void procWolfRopeStagger__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80133164.s"
}

// procWolfRopeSubjectivityInit__9daAlink_cFv
// daAlink_c::procWolfRopeSubjectivityInit(void)
asm void procWolfRopeSubjectivityInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013384C.s"
}

// procWolfRopeSubjectivity__9daAlink_cFv
// daAlink_c::procWolfRopeSubjectivity(void)
asm void procWolfRopeSubjectivity__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80133930.s"
}

// getWolfTagJumpTime__9daAlink_cCFv
// daAlink_c::getWolfTagJumpTime(const void)
asm void getWolfTagJumpTime__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80133D6C.s"
}

// checkMidnaLockJumpPoint__9daAlink_cCFv
// daAlink_c::checkMidnaLockJumpPoint(const void)
asm void checkMidnaLockJumpPoint__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80133EF0.s"
}

// procWolfTagJumpInit__9daAlink_cFP10fopAc_ac_c
// daAlink_c::procWolfTagJumpInit(fopAc_ac_c*)
asm void procWolfTagJumpInit__9daAlink_cFP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80134000.s"
}

// procWolfTagJump__9daAlink_cFv
// daAlink_c::procWolfTagJump(void)
asm void procWolfTagJump__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80134838.s"
}

// procWolfTagJumpLandInit__9daAlink_cFP10fopAc_ac_c
// daAlink_c::procWolfTagJumpLandInit(fopAc_ac_c*)
asm void procWolfTagJumpLandInit__9daAlink_cFP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80134DB8.s"
}

// procWolfTagJumpLand__9daAlink_cFv
// daAlink_c::procWolfTagJumpLand(void)
asm void procWolfTagJumpLand__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80134EBC.s"
}

// daAlink_searchGiant__FP10fopAc_ac_cPv
// daAlink_searchGiant__FP10fopAc_ac_cPv(fopAc_ac_c*, void*)
asm void daAlink_searchGiant__FP10fopAc_ac_cPv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80135050.s"
}

// daAlink_searchGiantTalk__FP10fopAc_ac_cPv
// daAlink_searchGiantTalk__FP10fopAc_ac_cPv(fopAc_ac_c*, void*)
asm void daAlink_searchGiantTalk__FP10fopAc_ac_cPv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801350A4.s"
}

// procWolfGiantPuzzleInit__9daAlink_cFv
// daAlink_c::procWolfGiantPuzzleInit(void)
asm void procWolfGiantPuzzleInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80135160.s"
}

// procWolfGiantPuzzle__9daAlink_cFv
// daAlink_c::procWolfGiantPuzzle(void)
asm void procWolfGiantPuzzle__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801351F8.s"
}

// setWolfHangGroundY__9daAlink_cFv
// daAlink_c::setWolfHangGroundY(void)
asm void setWolfHangGroundY__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80135458.s"
}

// changeWolfHangEndProc__9daAlink_cFv
// daAlink_c::changeWolfHangEndProc(void)
asm void changeWolfHangEndProc__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801354C8.s"
}

// procWolfHangReadyInit__9daAlink_cFv
// daAlink_c::procWolfHangReadyInit(void)
asm void procWolfHangReadyInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801355EC.s"
}

// procWolfHangReady__9daAlink_cFv
// daAlink_c::procWolfHangReady(void)
asm void procWolfHangReady__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80135668.s"
}

// procWolfHangWallCatchInit__9daAlink_cFi
// daAlink_c::procWolfHangWallCatchInit(int)
asm void procWolfHangWallCatchInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801356F0.s"
}

// procWolfHangWallCatch__9daAlink_cFv
// daAlink_c::procWolfHangWallCatch(void)
asm void procWolfHangWallCatch__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80135AF4.s"
}

// procWolfHangFallStartInit__9daAlink_cFP8cM3dGPla
// daAlink_c::procWolfHangFallStartInit(cM3dGPla*)
asm void procWolfHangFallStartInit__9daAlink_cFP8cM3dGPla(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80135CD8.s"
}

// procWolfHangFallStart__9daAlink_cFv
// daAlink_c::procWolfHangFallStart(void)
asm void procWolfHangFallStart__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80135F00.s"
}

// setWolfHeadDamage__9daAlink_cFv
// daAlink_c::setWolfHeadDamage(void)
asm void setWolfHeadDamage__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80136064.s"
}

// procWolfDamageInit__9daAlink_cFP12dCcD_GObjInf
// daAlink_c::procWolfDamageInit(dCcD_GObjInf*)
asm void procWolfDamageInit__9daAlink_cFP12dCcD_GObjInf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801360EC.s"
}

// procWolfDamage__9daAlink_cFv
// daAlink_c::procWolfDamage(void)
asm void procWolfDamage__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80136508.s"
}

// procWolfLargeDamageUpInit__9daAlink_cFiiss
// daAlink_c::procWolfLargeDamageUpInit(int, int, short, short)
asm void procWolfLargeDamageUpInit__9daAlink_cFiiss(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80136624.s"
}

// procWolfLargeDamageUp__9daAlink_cFv
// daAlink_c::procWolfLargeDamageUp(void)
asm void procWolfLargeDamageUp__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801369E4.s"
}

// procWolfLandDamageInit__9daAlink_cFi
// daAlink_c::procWolfLandDamageInit(int)
asm void procWolfLandDamageInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80136C18.s"
}

// procWolfLandDamage__9daAlink_cFv
// daAlink_c::procWolfLandDamage(void)
asm void procWolfLandDamage__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80136DE4.s"
}

// setWolfScreamWaitAnime__9daAlink_cFv
// daAlink_c::setWolfScreamWaitAnime(void)
asm void setWolfScreamWaitAnime__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80136EC4.s"
}

// procWolfScreamWaitInit__9daAlink_cFv
// daAlink_c::procWolfScreamWaitInit(void)
asm void procWolfScreamWaitInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80136F54.s"
}

// procWolfScreamWait__9daAlink_cFv
// daAlink_c::procWolfScreamWait(void)
asm void procWolfScreamWait__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80136FF8.s"
}

// getWolfLieMoveAnmSpeed__9daAlink_cFv
// daAlink_c::getWolfLieMoveAnmSpeed(void)
asm void getWolfLieMoveAnmSpeed__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801370E4.s"
}

// getWolfLieMoveSpeed__9daAlink_cFv
// daAlink_c::getWolfLieMoveSpeed(void)
asm void getWolfLieMoveSpeed__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013712C.s"
}

// checkMidnaDisappearMode__9daAlink_cCFv
// daAlink_c::checkMidnaDisappearMode(const void)
asm void checkMidnaDisappearMode__9daAlink_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801371A0.s"
}

// checkWolfLieContinue__9daAlink_cFi
// daAlink_c::checkWolfLieContinue(int)
asm void checkWolfLieContinue__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801371FC.s"
}

// checkNextActionWolfFromLie__9daAlink_cFv
// daAlink_c::checkNextActionWolfFromLie(void)
asm void checkNextActionWolfFromLie__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801372B4.s"
}

// setWolfLieMoveVoice__9daAlink_cFi
// daAlink_c::setWolfLieMoveVoice(int)
asm void setWolfLieMoveVoice__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80137330.s"
}

// checkWolfLieCode__9daAlink_cFv
// daAlink_c::checkWolfLieCode(void)
asm void checkWolfLieCode__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801373F8.s"
}

// procWolfLieStartInit__9daAlink_cFi
// daAlink_c::procWolfLieStartInit(int)
asm void procWolfLieStartInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80137420.s"
}

// procWolfLieStart__9daAlink_cFv
// daAlink_c::procWolfLieStart(void)
asm void procWolfLieStart__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013753C.s"
}

// procWolfLieMoveInit__9daAlink_cFi
// daAlink_c::procWolfLieMoveInit(int)
asm void procWolfLieMoveInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80137634.s"
}

// procWolfLieMove__9daAlink_cFv
// daAlink_c::procWolfLieMove(void)
asm void procWolfLieMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801377F0.s"
}

// procWolfLieAutoMoveInit__9daAlink_cFiP4cXyz
// daAlink_c::procWolfLieAutoMoveInit(int, cXyz*)
asm void procWolfLieAutoMoveInit__9daAlink_cFiP4cXyz(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80137C90.s"
}

// procWolfLieAutoMove__9daAlink_cFv
// daAlink_c::procWolfLieAutoMove(void)
asm void procWolfLieAutoMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80137D4C.s"
}

// setSpeedAndAngleSwimWolf__9daAlink_cFv
// daAlink_c::setSpeedAndAngleSwimWolf(void)
asm void setSpeedAndAngleSwimWolf__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80138000.s"
}

// getWolfSwimMoveAnmSpeed__9daAlink_cFv
// daAlink_c::getWolfSwimMoveAnmSpeed(void)
asm void getWolfSwimMoveAnmSpeed__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80138188.s"
}

// decideDoStatusSwimWolf__9daAlink_cFv
// daAlink_c::decideDoStatusSwimWolf(void)
asm void decideDoStatusSwimWolf__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801381F8.s"
}

// procWolfSwimUpInit__9daAlink_cFv
// daAlink_c::procWolfSwimUpInit(void)
asm void procWolfSwimUpInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801383D8.s"
}

// procWolfSwimUp__9daAlink_cFv
// daAlink_c::procWolfSwimUp(void)
asm void procWolfSwimUp__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80138484.s"
}

// procWolfSwimWaitInit__9daAlink_cFi
// daAlink_c::procWolfSwimWaitInit(int)
asm void procWolfSwimWaitInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013852C.s"
}

// procWolfSwimWait__9daAlink_cFv
// daAlink_c::procWolfSwimWait(void)
asm void procWolfSwimWait__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80138644.s"
}

// procWolfSwimMoveInit__9daAlink_cFv
// daAlink_c::procWolfSwimMoveInit(void)
asm void procWolfSwimMoveInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013871C.s"
}

// procWolfSwimMove__9daAlink_cFv
// daAlink_c::procWolfSwimMove(void)
asm void procWolfSwimMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801387A0.s"
}

// procWolfSwimEndWaitInit__9daAlink_cFi
// daAlink_c::procWolfSwimEndWaitInit(int)
asm void procWolfSwimEndWaitInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013890C.s"
}

// procWolfSwimEndWait__9daAlink_cFv
// daAlink_c::procWolfSwimEndWait(void)
asm void procWolfSwimEndWait__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80138A18.s"
}

// onWolfEnemyBiteAll__9daAlink_cFP10fopAc_ac_cQ29daPy_py_c9daPy_FLG2
asm void onWolfEnemyBiteAll__9daAlink_cFP10fopAc_ac_cQ29daPy_py_c9daPy_FLG2(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80138B6C.s"
}

// resetWolfEnemyBiteAll__9daAlink_cFv
// daAlink_c::resetWolfEnemyBiteAll(void)
asm void resetWolfEnemyBiteAll__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80138C04.s"
}

// checkWolfEnemyThrowAction__9daAlink_cFv
// daAlink_c::checkWolfEnemyThrowAction(void)
asm void checkWolfEnemyThrowAction__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80138C44.s"
}

// setWolfLockDomeModel__9daAlink_cFv
// daAlink_c::setWolfLockDomeModel(void)
asm void setWolfLockDomeModel__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80138CB8.s"
}

// setWolfBallModel__9daAlink_cFv
// daAlink_c::setWolfBallModel(void)
asm void setWolfBallModel__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80138DC0.s"
}

// resetWolfBallGrab__9daAlink_cFv
// daAlink_c::resetWolfBallGrab(void)
asm void resetWolfBallGrab__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80138F18.s"
}

// checkWolfLockData__9daAlink_cFv
// daAlink_c::checkWolfLockData(void)
asm void checkWolfLockData__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80139048.s"
}

// checkWolfLock__9daAlink_cCFP10fopAc_ac_c
// daAlink_c::checkWolfLock(const fopAc_ac_c*)
asm void checkWolfLock__9daAlink_cCFP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013911C.s"
}

// cancelWolfLock__9daAlink_cFP10fopAc_ac_c
// daAlink_c::cancelWolfLock(fopAc_ac_c*)
asm void cancelWolfLock__9daAlink_cFP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013916C.s"
}

// getWolfLockActorEnd__9daAlink_cFv
// daAlink_c::getWolfLockActorEnd(void)
asm void getWolfLockActorEnd__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801391DC.s"
}

// searchWolfLockEnemy__9daAlink_cFP10fopAc_ac_cPv
// daAlink_c::searchWolfLockEnemy(fopAc_ac_c*, void*)
asm void searchWolfLockEnemy__9daAlink_cFP10fopAc_ac_cPv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801391E4.s"
}

// daAlink_searchWolfLockEnemy__FP10fopAc_ac_cPv
// daAlink_searchWolfLockEnemy__FP10fopAc_ac_cPv(fopAc_ac_c*, void*)
asm void daAlink_searchWolfLockEnemy__FP10fopAc_ac_cPv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801392A8.s"
}

// checkWolfComboCnt__9daAlink_cFv
// daAlink_c::checkWolfComboCnt(void)
asm void checkWolfComboCnt__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801392E4.s"
}

// checkWolfAttackAction__9daAlink_cFv
// daAlink_c::checkWolfAttackAction(void)
asm void checkWolfAttackAction__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801393A4.s"
}

// setWolfEnemyThrowUpperAnime__9daAlink_cFQ29daAlink_c12daAlink_WANMf
asm void setWolfEnemyThrowUpperAnime__9daAlink_cFQ29daAlink_c12daAlink_WANMf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801395B4.s"
}

// setWolfEnemyHangBitePos__9daAlink_cFP13fopEn_enemy_c
// daAlink_c::setWolfEnemyHangBitePos(fopEn_enemy_c*)
asm void setWolfEnemyHangBitePos__9daAlink_cFP13fopEn_enemy_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80139600.s"
}

// setWolfBiteDamage__9daAlink_cFP13fopEn_enemy_c
// daAlink_c::setWolfBiteDamage(fopEn_enemy_c*)
asm void setWolfBiteDamage__9daAlink_cFP13fopEn_enemy_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801396F8.s"
}

// checkWolfLockAttackChargeState__9daAlink_cFv
// daAlink_c::checkWolfLockAttackChargeState(void)
asm void checkWolfLockAttackChargeState__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801397A4.s"
}

// procWolfRollAttackChargeInit__9daAlink_cFv
// daAlink_c::procWolfRollAttackChargeInit(void)
asm void procWolfRollAttackChargeInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801398A8.s"
}

// procWolfRollAttackCharge__9daAlink_cFv
// daAlink_c::procWolfRollAttackCharge(void)
asm void procWolfRollAttackCharge__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80139908.s"
}

// procWolfRollAttackMoveInit__9daAlink_cFv
// daAlink_c::procWolfRollAttackMoveInit(void)
asm void procWolfRollAttackMoveInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801399C4.s"
}

// procWolfRollAttackMove__9daAlink_cFv
// daAlink_c::procWolfRollAttackMove(void)
asm void procWolfRollAttackMove__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80139A70.s"
}

// procWolfJumpAttackInit__9daAlink_cFi
// daAlink_c::procWolfJumpAttackInit(int)
asm void procWolfJumpAttackInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80139DE0.s"
}

// procWolfJumpAttack__9daAlink_cFv
// daAlink_c::procWolfJumpAttack(void)
asm void procWolfJumpAttack__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013A4F8.s"
}

// procWolfJumpAttackKickInit__9daAlink_cFv
// daAlink_c::procWolfJumpAttackKickInit(void)
asm void procWolfJumpAttackKickInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013A7EC.s"
}

// procWolfJumpAttackKick__9daAlink_cFv
// daAlink_c::procWolfJumpAttackKick(void)
asm void procWolfJumpAttackKick__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013A8A0.s"
}

// procWolfJumpAttackSlideLandInit__9daAlink_cFiii
// daAlink_c::procWolfJumpAttackSlideLandInit(int, int, int)
asm void procWolfJumpAttackSlideLandInit__9daAlink_cFiii(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013A8FC.s"
}

// procWolfJumpAttackSlideLand__9daAlink_cFv
// daAlink_c::procWolfJumpAttackSlideLand(void)
asm void procWolfJumpAttackSlideLand__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013AAC4.s"
}

// procWolfJumpAttackNormalLandInit__9daAlink_cFi
// daAlink_c::procWolfJumpAttackNormalLandInit(int)
asm void procWolfJumpAttackNormalLandInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013AC44.s"
}

// procWolfJumpAttackNormalLand__9daAlink_cFv
// daAlink_c::procWolfJumpAttackNormalLand(void)
asm void procWolfJumpAttackNormalLand__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013ACF4.s"
}

// procWolfWaitAttackInit__9daAlink_cFi
// daAlink_c::procWolfWaitAttackInit(int)
asm void procWolfWaitAttackInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013ADF0.s"
}

// procWolfWaitAttack__9daAlink_cFv
// daAlink_c::procWolfWaitAttack(void)
asm void procWolfWaitAttack__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013AFC0.s"
}

// procWolfRollAttackInit__9daAlink_cFii
// daAlink_c::procWolfRollAttackInit(int, int)
asm void procWolfRollAttackInit__9daAlink_cFii(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013B2A0.s"
}

// procWolfRollAttack__9daAlink_cFv
// daAlink_c::procWolfRollAttack(void)
asm void procWolfRollAttack__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013B424.s"
}

// procWolfDownAttackInit__9daAlink_cFv
// daAlink_c::procWolfDownAttackInit(void)
asm void procWolfDownAttackInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013B528.s"
}

// procWolfDownAttack__9daAlink_cFv
// daAlink_c::procWolfDownAttack(void)
asm void procWolfDownAttack__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013B808.s"
}

// procWolfDownAtLandInit__9daAlink_cFP13fopEn_enemy_c
// daAlink_c::procWolfDownAtLandInit(fopEn_enemy_c*)
asm void procWolfDownAtLandInit__9daAlink_cFP13fopEn_enemy_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013B964.s"
}

// procWolfDownAtLand__9daAlink_cFv
// daAlink_c::procWolfDownAtLand(void)
asm void procWolfDownAtLand__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013BA44.s"
}

// procWolfDownAtMissLandInit__9daAlink_cFv
// daAlink_c::procWolfDownAtMissLandInit(void)
asm void procWolfDownAtMissLandInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013BC94.s"
}

// procWolfDownAtMissLand__9daAlink_cFv
// daAlink_c::procWolfDownAtMissLand(void)
asm void procWolfDownAtMissLand__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013BD54.s"
}

// procWolfLockAttackInit__9daAlink_cFi
// daAlink_c::procWolfLockAttackInit(int)
asm void procWolfLockAttackInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013BE24.s"
}

// procWolfLockAttack__9daAlink_cFv
// daAlink_c::procWolfLockAttack(void)
asm void procWolfLockAttack__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013C3E4.s"
}

// procWolfLockAttackTurnInit__9daAlink_cFi
// daAlink_c::procWolfLockAttackTurnInit(int)
asm void procWolfLockAttackTurnInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013C630.s"
}

// procWolfLockAttackTurn__9daAlink_cFv
// daAlink_c::procWolfLockAttackTurn(void)
asm void procWolfLockAttackTurn__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013C7A4.s"
}

// procWolfAttackReverseInit__9daAlink_cFv
// daAlink_c::procWolfAttackReverseInit(void)
asm void procWolfAttackReverseInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013C8C8.s"
}

// procWolfAttackReverse__9daAlink_cFv
// daAlink_c::procWolfAttackReverse(void)
asm void procWolfAttackReverse__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013C9EC.s"
}

// procWolfEnemyThrowInit__9daAlink_cFi
// daAlink_c::procWolfEnemyThrowInit(int)
asm void procWolfEnemyThrowInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013CB48.s"
}

// procWolfEnemyThrow__9daAlink_cFv
// daAlink_c::procWolfEnemyThrow(void)
asm void procWolfEnemyThrow__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013CC5C.s"
}

// procWolfEnemyHangBiteInit__9daAlink_cFv
// daAlink_c::procWolfEnemyHangBiteInit(void)
asm void procWolfEnemyHangBiteInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013CCF4.s"
}

// procWolfEnemyHangBite__9daAlink_cFv
// daAlink_c::procWolfEnemyHangBite(void)
asm void procWolfEnemyHangBite__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013CDEC.s"
}

// procWolfGrabUpInit__9daAlink_cFv
// daAlink_c::procWolfGrabUpInit(void)
asm void procWolfGrabUpInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013D0D4.s"
}

// procWolfGrabUp__9daAlink_cFv
// daAlink_c::procWolfGrabUp(void)
asm void procWolfGrabUp__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013D3FC.s"
}

// procWolfGrabPutInit__9daAlink_cFv
// daAlink_c::procWolfGrabPutInit(void)
asm void procWolfGrabPutInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013D588.s"
}

// procWolfGrabPut__9daAlink_cFv
// daAlink_c::procWolfGrabPut(void)
asm void procWolfGrabPut__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013D65C.s"
}

// procWolfGrabThrowInit__9daAlink_cFv
// daAlink_c::procWolfGrabThrowInit(void)
asm void procWolfGrabThrowInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013D818.s"
}

// procWolfGrabThrow__9daAlink_cFv
// daAlink_c::procWolfGrabThrow(void)
asm void procWolfGrabThrow__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013D86C.s"
}

// procWolfPushInit__9daAlink_cFv
// daAlink_c::procWolfPushInit(void)
asm void procWolfPushInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013D930.s"
}

// procWolfPush__9daAlink_cFv
// daAlink_c::procWolfPush(void)
asm void procWolfPush__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013DA8C.s"
}

// daAlink_searchEnemyCargo__FP10fopAc_ac_cPv
// daAlink_searchEnemyCargo__FP10fopAc_ac_cPv(fopAc_ac_c*, void*)
asm void daAlink_searchEnemyCargo__FP10fopAc_ac_cPv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013DB58.s"
}

// procWolfCargoCarryInit__9daAlink_cFv
// daAlink_c::procWolfCargoCarryInit(void)
asm void procWolfCargoCarryInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013DB6C.s"
}

// procWolfCargoCarry__9daAlink_cFv
// daAlink_c::procWolfCargoCarry(void)
asm void procWolfCargoCarry__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013DC5C.s"
}

// procWolfChainUpInit__9daAlink_cFv
// daAlink_c::procWolfChainUpInit(void)
asm void procWolfChainUpInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013DDF8.s"
}

// procWolfChainUp__9daAlink_cFv
// daAlink_c::procWolfChainUp(void)
asm void procWolfChainUp__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013DE70.s"
}

// procWolfGanonCatchInit__9daAlink_cFv
// daAlink_c::procWolfGanonCatchInit(void)
asm void procWolfGanonCatchInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013DF30.s"
}

// procWolfGanonCatch__9daAlink_cFv
// daAlink_c::procWolfGanonCatch(void)
asm void procWolfGanonCatch__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013E034.s"
}

// procWolfChainReadyInit__9daAlink_cFv
// daAlink_c::procWolfChainReadyInit(void)
asm void procWolfChainReadyInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013E240.s"
}

// procWolfChainReady__9daAlink_cFv
// daAlink_c::procWolfChainReady(void)
asm void procWolfChainReady__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013E2A8.s"
}

// procWolfChainWaitInit__9daAlink_cFv
// daAlink_c::procWolfChainWaitInit(void)
asm void procWolfChainWaitInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013E6C0.s"
}

// procWolfChainWait__9daAlink_cFv
// daAlink_c::procWolfChainWait(void)
asm void procWolfChainWait__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013E80C.s"
}

// procWolfDigInit__9daAlink_cFv
// daAlink_c::procWolfDigInit(void)
asm void procWolfDigInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013ED44.s"
}

// procWolfDig__9daAlink_cFv
// daAlink_c::procWolfDig(void)
asm void procWolfDig__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013F1F0.s"
}

// procWolfDigThroughInit__9daAlink_cFi
// daAlink_c::procWolfDigThroughInit(int)
asm void procWolfDigThroughInit__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013F4A8.s"
}

// procWolfDigThrough__9daAlink_cFv
// daAlink_c::procWolfDigThrough(void)
asm void procWolfDigThrough__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013F7C4.s"
}

// setSmellSave__9daAlink_cFv
// daAlink_c::setSmellSave(void)
asm void setSmellSave__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013F90C.s"
}

// procWolfGetSmellInit__9daAlink_cFv
// daAlink_c::procWolfGetSmellInit(void)
asm void procWolfGetSmellInit__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013FA14.s"
}

// procWolfGetSmell__9daAlink_cFv
// daAlink_c::procWolfGetSmell(void)
asm void procWolfGetSmell__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013FC24.s"
}

// setArcName__9daAlink_cFi
// daAlink_c::setArcName(int)
asm void setArcName__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013FF28.s"
}

// setShieldArcName__9daAlink_cFv
// daAlink_c::setShieldArcName(void)
asm void setShieldArcName__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013FF90.s"
}

// setOriginalHeap__9daAlink_cFPP10JKRExpHeapUl
// daAlink_c::setOriginalHeap(JKRExpHeap*, unsigned long)
asm void setOriginalHeap__9daAlink_cFPP10JKRExpHeapUl(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8013FFD8.s"
}

// setClothesChange__9daAlink_cFi
// daAlink_c::setClothesChange(int)
asm void setClothesChange__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80140038.s"
}

// setShieldChange__9daAlink_cFv
// daAlink_c::setShieldChange(void)
void daAlink_c::setShieldChange(void) {
    unk12241 = 4;
}

// loadModelDVD__9daAlink_cFv
// daAlink_c::loadModelDVD(void)
asm void loadModelDVD__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80140070.s"
}

// setShieldModel__9daAlink_cFv
// daAlink_c::setShieldModel(void)
asm void setShieldModel__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801401F8.s"
}

// loadShieldModelDVD__9daAlink_cFv
// daAlink_c::loadShieldModelDVD(void)
asm void loadShieldModelDVD__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80140274.s"
}

// changeModelDataDirect__9daAlink_cFi
// daAlink_c::changeModelDataDirect(int)
asm void changeModelDataDirect__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80140338.s"
}

// changeModelDataDirectWolf__9daAlink_cFi
// daAlink_c::changeModelDataDirectWolf(int)
asm void changeModelDataDirectWolf__9daAlink_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80140550.s"
}

// initStatusWindow__9daAlink_cFv
// daAlink_c::initStatusWindow(void)
asm void initStatusWindow__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801406A8.s"
}

// statusWindowExecute__9daAlink_cFPC4cXyzs
// daAlink_c::statusWindowExecute(const cXyz*, short)
asm void statusWindowExecute__9daAlink_cFPC4cXyzs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80140888.s"
}

// statusWindowDraw__9daAlink_cFv
// daAlink_c::statusWindowDraw(void)
asm void statusWindowDraw__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80140984.s"
}

// resetStatusWindow__9daAlink_cFv
// daAlink_c::resetStatusWindow(void)
asm void resetStatusWindow__9daAlink_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80140AC8.s"
}

// __ct__12daAlinkHIO_cFv
// daAlinkHIO_c::daAlinkHIO_c(void)
asm void __ct__12daAlinkHIO_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80140B88.s"
}

// __dt__17daAlinkHIO_wolf_cFv
// daAlinkHIO_wolf_c::~daAlinkHIO_wolf_c(void)
asm void __dt__17daAlinkHIO_wolf_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80140B98.s"
}

// __dt__16daAlinkHIO_cut_cFv
// daAlinkHIO_cut_c::~daAlinkHIO_cut_c(void)
asm void __dt__16daAlinkHIO_cut_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80140BD4.s"
}

// __dt__12daAlinkHIO_cFv
// daAlinkHIO_c::~daAlinkHIO_c(void)
asm void __dt__12daAlinkHIO_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80140C10.s"
}

// __dt__8dEyeHL_cFv
// dEyeHL_c::~dEyeHL_c(void)
asm void __dt__8dEyeHL_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80140C80.s"
}

// __dt__18daPy_sightPacket_cFv
// daPy_sightPacket_c::~daPy_sightPacket_c(void)
asm void __dt__18daPy_sightPacket_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80140CDC.s"
}

// __dt__16daPy_frameCtrl_cFv
// daPy_frameCtrl_c::~daPy_frameCtrl_c(void)
asm void __dt__16daPy_frameCtrl_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80140D24.s"
}

// __ct__16daPy_frameCtrl_cFv
// daPy_frameCtrl_c::daPy_frameCtrl_c(void)
asm void __ct__16daPy_frameCtrl_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80140D80.s"
}

// __defctor__14daPy_anmHeap_cFv
asm void __defctor__14daPy_anmHeap_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80140DCC.s"
}

// __dt__19mDoExt_AnmRatioPackFv
// mDoExt_AnmRatioPack::~mDoExt_AnmRatioPack(void)
asm void __dt__19mDoExt_AnmRatioPackFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80140DF0.s"
}

// __ct__19mDoExt_AnmRatioPackFv
// mDoExt_AnmRatioPack::mDoExt_AnmRatioPack(void)
asm void __ct__19mDoExt_AnmRatioPackFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80140E2C.s"
}

// __dt__16dBgS_LinkRoofChkFv
// dBgS_LinkRoofChk::~dBgS_LinkRoofChk(void)
asm void __dt__16dBgS_LinkRoofChkFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80140E40.s"
}

// __dt__15dBgS_LinkGndChkFv
// dBgS_LinkGndChk::~dBgS_LinkGndChk(void)
asm void __dt__15dBgS_LinkGndChkFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80140EB8.s"
}

// __dt__13dBgS_LinkAcchFv
// dBgS_LinkAcch::~dBgS_LinkAcch(void)
asm void __dt__13dBgS_LinkAcchFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80140F30.s"
}

// __ct__8dCcD_CpsFv
// dCcD_Cps::dCcD_Cps(void)
asm void __ct__8dCcD_CpsFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80140FA0.s"
}

// __ct__8dCcD_CylFv
// dCcD_Cyl::dCcD_Cyl(void)
asm void __ct__8dCcD_CylFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141020.s"
}

// __dt__9cCcD_SttsFv
// cCcD_Stts::~cCcD_Stts(void)
asm void __dt__9cCcD_SttsFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801410A4.s"
}

// __ct__16daPy_actorKeep_cFv
// daPy_actorKeep_c::daPy_actorKeep_c(void)
asm daPy_actorKeep_c::daPy_actorKeep_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801410EC.s"
}

// onNoResetFlg2__9daPy_py_cFQ29daPy_py_c9daPy_FLG2
asm void onNoResetFlg2__9daPy_py_cFQ29daPy_py_c9daPy_FLG2(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014111C.s"
}

// offNoResetFlg0__9daPy_py_cFQ29daPy_py_c9daPy_FLG0
asm void offNoResetFlg0__9daPy_py_cFQ29daPy_py_c9daPy_FLG0(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014112C.s"
}

// mDoAud_seStartLevel__FUlPC3VecUlSc
// mDoAud_seStartLevel__FUlPC3VecUlSc(unsigned long, const Vec*, unsigned long, char)
asm void mDoAud_seStartLevel__FUlPC3VecUlSc(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014113C.s"
}

// checkEndResetFlg2__9daPy_py_cCFQ29daPy_py_c11daPy_ERFLG2
asm void checkEndResetFlg2__9daPy_py_cCFQ29daPy_py_c11daPy_ERFLG2(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141190.s"
}

// dComIfGp_setBottleStatus__FUcUc
// dComIfGp_setBottleStatus__FUcUc(unsigned char, unsigned char)
asm void dComIfGp_setBottleStatus__FUcUc(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014119C.s"
}

// getSumouMode__9daPy_py_cCFv
// daPy_py_c::getSumouMode(const void)
asm void getSumouMode__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801411B0.s"
}

// checkNoResetFlg3__9daPy_py_cCFQ29daPy_py_c9daPy_FLG3
asm void checkNoResetFlg3__9daPy_py_cCFQ29daPy_py_c9daPy_FLG3(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801411D4.s"
}

// onCondition__11dEvt_info_cFUs
// dEvt_info_c::onCondition(unsigned short)
asm void onCondition__11dEvt_info_cFUs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801411E0.s"
}

// __ct__8cM3dGPlaFv
// cM3dGPla::cM3dGPla(void)
asm void __ct__8cM3dGPlaFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801411F0.s"
}

// offCondition__11dEvt_info_cFUs
// dEvt_info_c::offCondition(unsigned short)
asm void offCondition__11dEvt_info_cFUs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141200.s"
}

// checkShieldGet__9daPy_py_cFv
// daPy_py_c::checkShieldGet(void)
asm void checkShieldGet__9daPy_py_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141210.s"
}

// fopAcM_onSwitch__FPC10fopAc_ac_ci
// fopAcM_onSwitch__FPC10fopAc_ac_ci(const fopAc_ac_c*, int)
asm void fopAcM_onSwitch__FPC10fopAc_ac_ci(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141230.s"
}

int dComIfGs_isItemFirstBit(u8 i_no) {
    return g_dComIfG_gameInfo.getSaveFile().getPlayerGetItem().isFirstBit(i_no);
}

// dStage_stagInfo_GetSaveTbl__FP21stage_stag_info_class
// dStage_stagInfo_GetSaveTbl__FP21stage_stag_info_class(stage_stag_info_class*)
asm void dStage_stagInfo_GetSaveTbl__FP21stage_stag_info_class(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141294.s"
}

// dComIfGp_getStage__Fv
// dComIfGp_getStage__Fv(void)
asm void dComIfGp_getStage__Fv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801412A0.s"
}

// checkEquipHeavyBoots__9daPy_py_cCFv
// daPy_py_c::checkEquipHeavyBoots(const void)
asm void checkEquipHeavyBoots__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801412B0.s"
}

// fopAcM_GetName__FPv
// fopAcM_GetName__FPv(void*)
asm void fopAcM_GetName__FPv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801412BC.s"
}

// onNoResetFlg0__9daPy_py_cFQ29daPy_py_c9daPy_FLG0
asm void onNoResetFlg0__9daPy_py_cFQ29daPy_py_c9daPy_FLG0(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801412C4.s"
}

// isOrderOK__14dEvt_control_cFv
// dEvt_control_c::isOrderOK(void)
asm void isOrderOK__14dEvt_control_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801412D4.s"
}

// dComIfGp_getEvent__Fv
// dComIfGp_getEvent__Fv(void)
asm void dComIfGp_getEvent__Fv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801412F8.s"
}

// dComIfGp_checkPlayerStatus0__FiUl
// dComIfGp_checkPlayerStatus0__FiUl(int, unsigned long)
asm void dComIfGp_checkPlayerStatus0__FiUl(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141308.s"
}

// dComIfGp_checkPlayerStatus1__FiUl
// dComIfGp_checkPlayerStatus1__FiUl(int, unsigned long)
asm void dComIfGp_checkPlayerStatus1__FiUl(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141324.s"
}

// checkEndResetFlg1__9daPy_py_cCFQ29daPy_py_c11daPy_ERFLG1
asm void checkEndResetFlg1__9daPy_py_cCFQ29daPy_py_c11daPy_ERFLG1(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141340.s"
}

// dComIfGp_getEventManager__Fv
// dComIfGp_getEventManager__Fv(void)
asm void dComIfGp_getEventManager__Fv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014134C.s"
}

// offNoResetFlg1__9daPy_py_cFQ29daPy_py_c9daPy_FLG1
asm void offNoResetFlg1__9daPy_py_cFQ29daPy_py_c9daPy_FLG1(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014135C.s"
}

// offNoResetFlg2__9daPy_py_cFQ29daPy_py_c9daPy_FLG2
asm void offNoResetFlg2__9daPy_py_cFQ29daPy_py_c9daPy_FLG2(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014136C.s"
}

// setSpecialDemoType__11daPy_demo_cFv
// daPy_demo_c::setSpecialDemoType(void)
asm void setSpecialDemoType__11daPy_demo_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014137C.s"
}

// checkCommandCatch__11dEvt_info_cFv
// dEvt_info_c::checkCommandCatch(void)
asm void checkCommandCatch__11dEvt_info_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141388.s"
}

// dComIfGs_isEventBit__FUs
// dComIfGs_isEventBit__FUs(unsigned short)
asm bool dComIfGs_isEventBit__FUs(u16) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014139C.s"
}

// checkWolf__9daPy_py_cCFv
// daPy_py_c::checkWolf(const void)
asm void checkWolf__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801413CC.s"
}

// checkSwordGet__9daPy_py_cFv
// daPy_py_c::checkSwordGet(void)
asm void checkSwordGet__9daPy_py_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801413D8.s"
}

// checkResetFlg0__9daPy_py_cCFQ29daPy_py_c10daPy_RFLG0
asm void checkResetFlg0__9daPy_py_cCFQ29daPy_py_c10daPy_RFLG0(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801413F8.s"
}

// ChkGroundHit__9dBgS_AcchCFv
// dBgS_Acch::ChkGroundHit(const void)
asm void ChkGroundHit__9dBgS_AcchCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141404.s"
}

// checkNoResetFlg0__9daPy_py_cCFQ29daPy_py_c9daPy_FLG0
asm void checkNoResetFlg0__9daPy_py_cCFQ29daPy_py_c9daPy_FLG0(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141410.s"
}

// dComIfGp_getPlayerCameraID__Fi
// dComIfGp_getPlayerCameraID__Fi(int)
asm void dComIfGp_getPlayerCameraID__Fi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014141C.s"
}

// dComIfGp_event_chkEventFlag__FUs
// dComIfGp_event_chkEventFlag__FUs(unsigned short)
asm void dComIfGp_event_chkEventFlag__FUs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141438.s"
}

// checkCommandDoor__11dEvt_info_cFv
// dEvt_info_c::checkCommandDoor(void)
asm void checkCommandDoor__11dEvt_info_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141450.s"
}

// dComIfGp_evmng_getMyStaffId__FPCcP10fopAc_ac_ci
// dComIfGp_evmng_getMyStaffId__FPCcP10fopAc_ac_ci(const char*, fopAc_ac_c*, int)
asm void dComIfGp_evmng_getMyStaffId__FPCcP10fopAc_ac_ci(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141464.s"
}

// dComIfGp_event_runCheck__Fv
// dComIfGp_event_runCheck__Fv(void)
asm void dComIfGp_event_runCheck__Fv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801414A4.s"
}

// checkNoResetFlg2__9daPy_py_cCFQ29daPy_py_c9daPy_FLG2
asm void checkNoResetFlg2__9daPy_py_cCFQ29daPy_py_c9daPy_FLG2(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801414C0.s"
}

// checkMagneBootsOn__9daPy_py_cCFv
// daPy_py_c::checkMagneBootsOn(const void)
asm void checkMagneBootsOn__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801414CC.s"
}

// dComIfGp_getHorseActor__Fv
// dComIfGp_getHorseActor__Fv(void)
asm void dComIfGp_getHorseActor__Fv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801414D8.s"
}

// checkBoarSingleBattle__9daPy_py_cCFv
// daPy_py_c::checkBoarSingleBattle(const void)
asm void checkBoarSingleBattle__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801414E8.s"
}

// checkEndResetFlg0__9daPy_py_cCFQ29daPy_py_c11daPy_ERFLG0
asm void checkEndResetFlg0__9daPy_py_cCFQ29daPy_py_c11daPy_ERFLG0(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801414F4.s"
}

// getMidnaAtnPos__9daPy_py_cCFv
// daPy_py_c::getMidnaAtnPos(const void)
asm void getMidnaAtnPos__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141500.s"
}

// setMidnaMsgNum__9daPy_py_cFP10fopAc_ac_cUs
// daPy_py_c::setMidnaMsgNum(fopAc_ac_c*, unsigned short)
asm void setMidnaMsgNum__9daPy_py_cFP10fopAc_ac_cUs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141508.s"
}

// getModelMtx__9daPy_py_cFv
// daPy_py_c::getModelMtx(void)
asm void getModelMtx__9daPy_py_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014150C.s"
}

// getInvMtx__9daPy_py_cFv
// daPy_py_c::getInvMtx(void)
asm void getInvMtx__9daPy_py_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141514.s"
}

// getShadowTalkAtnPos__9daPy_py_cFv
// daPy_py_c::getShadowTalkAtnPos(void)
asm void getShadowTalkAtnPos__9daPy_py_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014151C.s"
}

// getLeftItemMatrix__9daPy_py_cFv
// daPy_py_c::getLeftItemMatrix(void)
asm void getLeftItemMatrix__9daPy_py_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141524.s"
}

// getRightItemMatrix__9daPy_py_cFv
// daPy_py_c::getRightItemMatrix(void)
asm void getRightItemMatrix__9daPy_py_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014152C.s"
}

// getLeftHandMatrix__9daPy_py_cFv
// daPy_py_c::getLeftHandMatrix(void)
asm void getLeftHandMatrix__9daPy_py_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141534.s"
}

// getRightHandMatrix__9daPy_py_cFv
// daPy_py_c::getRightHandMatrix(void)
asm void getRightHandMatrix__9daPy_py_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014153C.s"
}

// getLinkBackBone1Matrix__9daPy_py_cFv
// daPy_py_c::getLinkBackBone1Matrix(void)
asm void getLinkBackBone1Matrix__9daPy_py_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141544.s"
}

// getWolfMouthMatrix__9daPy_py_cFv
// daPy_py_c::getWolfMouthMatrix(void)
asm void getWolfMouthMatrix__9daPy_py_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014154C.s"
}

// getWolfBackbone2Matrix__9daPy_py_cFv
// daPy_py_c::getWolfBackbone2Matrix(void)
asm void getWolfBackbone2Matrix__9daPy_py_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141554.s"
}

// getBottleMtx__9daPy_py_cFv
// daPy_py_c::getBottleMtx(void)
asm void getBottleMtx__9daPy_py_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014155C.s"
}

// checkPlayerGuard__9daPy_py_cCFv
// daPy_py_c::checkPlayerGuard(const void)
asm void checkPlayerGuard__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141564.s"
}

// checkAutoJump__9daPy_py_cCFv
// daPy_py_c::checkAutoJump(const void)
asm void checkAutoJump__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014156C.s"
}

// checkSideStep__9daPy_py_cCFv
// daPy_py_c::checkSideStep(const void)
asm void checkSideStep__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141574.s"
}

// checkWolfTriggerJump__9daPy_py_cCFv
// daPy_py_c::checkWolfTriggerJump(const void)
asm void checkWolfTriggerJump__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014157C.s"
}

// checkGuardBreakMode__9daPy_py_cCFv
// daPy_py_c::checkGuardBreakMode(const void)
asm void checkGuardBreakMode__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141584.s"
}

// checkLv3Slide__9daPy_py_cCFv
// daPy_py_c::checkLv3Slide(const void)
asm void checkLv3Slide__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014158C.s"
}

// checkWolfHowlDemoMode__9daPy_py_cCFv
// daPy_py_c::checkWolfHowlDemoMode(const void)
asm void checkWolfHowlDemoMode__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141594.s"
}

// checkChainBlockPushPull__9daPy_py_cFv
// daPy_py_c::checkChainBlockPushPull(void)
asm void checkChainBlockPushPull__9daPy_py_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014159C.s"
}

// checkElecDamage__9daPy_py_cCFv
// daPy_py_c::checkElecDamage(const void)
asm void checkElecDamage__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801415A4.s"
}

// checkEmptyBottleSwing__9daPy_py_cCFv
// daPy_py_c::checkEmptyBottleSwing(const void)
asm void checkEmptyBottleSwing__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801415AC.s"
}

// checkBottleSwingMode__9daPy_py_cCFv
// daPy_py_c::checkBottleSwingMode(const void)
asm void checkBottleSwingMode__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801415B4.s"
}

// checkHawkWait__9daPy_py_cCFv
// daPy_py_c::checkHawkWait(const void)
asm void checkHawkWait__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801415BC.s"
}

// checkGoatThrow__9daPy_py_cCFv
// daPy_py_c::checkGoatThrow(const void)
asm void checkGoatThrow__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801415C4.s"
}

// checkGoatThrowAfter__9daPy_py_cCFv
// daPy_py_c::checkGoatThrowAfter(const void)
asm void checkGoatThrowAfter__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801415CC.s"
}

// checkWolfTagLockJump__9daPy_py_cCFv
// daPy_py_c::checkWolfTagLockJump(const void)
asm void checkWolfTagLockJump__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801415D4.s"
}

// checkWolfTagLockJumpLand__9daPy_py_cCFv
// daPy_py_c::checkWolfTagLockJumpLand(const void)
asm void checkWolfTagLockJumpLand__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801415DC.s"
}

// checkWolfRope__9daPy_py_cFv
// daPy_py_c::checkWolfRope(void)
asm void checkWolfRope__9daPy_py_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801415E4.s"
}

// checkWolfRopeHang__9daPy_py_cCFv
// daPy_py_c::checkWolfRopeHang(const void)
asm void checkWolfRopeHang__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801415EC.s"
}

// checkRollJump__9daPy_py_cCFv
// daPy_py_c::checkRollJump(const void)
asm void checkRollJump__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801415F4.s"
}

// checkGoronRideWait__9daPy_py_cCFv
// daPy_py_c::checkGoronRideWait(const void)
asm void checkGoronRideWait__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801415FC.s"
}

// checkWolfChain__9daPy_py_cCFv
// daPy_py_c::checkWolfChain(const void)
asm void checkWolfChain__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141604.s"
}

// checkWolfWait__9daPy_py_cCFv
// daPy_py_c::checkWolfWait(const void)
asm void checkWolfWait__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014160C.s"
}

// checkWolfJumpAttack__9daPy_py_cCFv
// daPy_py_c::checkWolfJumpAttack(const void)
asm void checkWolfJumpAttack__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141614.s"
}

// checkWolfRSit__9daPy_py_cCFv
// daPy_py_c::checkWolfRSit(const void)
asm void checkWolfRSit__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014161C.s"
}

// checkBubbleFly__9daPy_py_cCFv
// daPy_py_c::checkBubbleFly(const void)
asm void checkBubbleFly__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141624.s"
}

// checkBottleDrinkEnd__9daPy_py_cCFv
// daPy_py_c::checkBottleDrinkEnd(const void)
asm void checkBottleDrinkEnd__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014162C.s"
}

// checkWolfDig__9daPy_py_cCFv
// daPy_py_c::checkWolfDig(const void)
asm void checkWolfDig__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141634.s"
}

// checkCutCharge__9daPy_py_cCFv
// daPy_py_c::checkCutCharge(const void)
asm void checkCutCharge__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014163C.s"
}

// checkCutTurnCharge__9daPy_py_cCFv
// daPy_py_c::checkCutTurnCharge(const void)
asm void checkCutTurnCharge__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141644.s"
}

// checkCutLargeJumpCharge__9daPy_py_cCFv
// daPy_py_c::checkCutLargeJumpCharge(const void)
asm void checkCutLargeJumpCharge__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014164C.s"
}

// getBokoFlamePos__9daPy_py_cFP4cXyz
// daPy_py_c::getBokoFlamePos(cXyz*)
asm void getBokoFlamePos__9daPy_py_cFP4cXyz(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141654.s"
}

// checkComboCutTurn__9daPy_py_cCFv
// daPy_py_c::checkComboCutTurn(const void)
asm void checkComboCutTurn__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014165C.s"
}

// checkClimbMove__9daPy_py_cCFv
// daPy_py_c::checkClimbMove(const void)
asm void checkClimbMove__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141664.s"
}

// checkGrassWhistle__9daPy_py_cCFv
// daPy_py_c::checkGrassWhistle(const void)
asm void checkGrassWhistle__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014166C.s"
}

// checkBoarRun__9daPy_py_cCFv
// daPy_py_c::checkBoarRun(const void)
asm void checkBoarRun__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141674.s"
}

// checkFmChainPut__9daPy_py_cCFv
// daPy_py_c::checkFmChainPut(const void)
asm void checkFmChainPut__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014167C.s"
}

// checkHorseElecDamage__9daPy_py_cCFv
// daPy_py_c::checkHorseElecDamage(const void)
asm void checkHorseElecDamage__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141684.s"
}

// getBaseAnimeFrameRate__9daPy_py_cCFv
// daPy_py_c::getBaseAnimeFrameRate(const void)
asm void getBaseAnimeFrameRate__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014168C.s"
}

// getBaseAnimeFrame__9daPy_py_cCFv
// daPy_py_c::getBaseAnimeFrame(const void)
asm void getBaseAnimeFrame__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141694.s"
}

// setAnimeFrame__9daPy_py_cFf
// daPy_py_c::setAnimeFrame(float)
asm void setAnimeFrame__9daPy_py_cFf(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014169C.s"
}

// checkWolfLock__9daPy_py_cCFP10fopAc_ac_c
// daPy_py_c::checkWolfLock(const fopAc_ac_c*)
asm void checkWolfLock__9daPy_py_cCFP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801416A0.s"
}

// cancelWolfLock__9daPy_py_cFP10fopAc_ac_c
// daPy_py_c::cancelWolfLock(fopAc_ac_c*)
asm void cancelWolfLock__9daPy_py_cFP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801416A8.s"
}

// getItemID__9daPy_py_cCFv
// daPy_py_c::getItemID(const void)
asm void getItemID__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801416B0.s"
}

// exchangeGrabActor__9daPy_py_cFP10fopAc_ac_c
// daPy_py_c::exchangeGrabActor(fopAc_ac_c*)
asm void exchangeGrabActor__9daPy_py_cFP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801416B8.s"
}

// setForceGrab__9daPy_py_cFP10fopAc_ac_cii
// daPy_py_c::setForceGrab(fopAc_ac_c*, int, int)
asm void setForceGrab__9daPy_py_cFP10fopAc_ac_cii(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801416C0.s"
}

// setForcePutPos__9daPy_py_cFRC4cXyz
// daPy_py_c::setForcePutPos(const cXyz&)
asm void setForcePutPos__9daPy_py_cFRC4cXyz(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801416C8.s"
}

// checkPlayerNoDraw__9daPy_py_cFv
// daPy_py_c::checkPlayerNoDraw(void)
asm void checkPlayerNoDraw__9daPy_py_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801416CC.s"
}

// checkRopeTag__9daPy_py_cFv
// daPy_py_c::checkRopeTag(void)
asm void checkRopeTag__9daPy_py_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801416D4.s"
}

// voiceStart__9daPy_py_cFUl
// daPy_py_c::voiceStart(unsigned long)
asm void voiceStart__9daPy_py_cFUl(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801416DC.s"
}

// seStartOnlyReverb__9daPy_py_cFUl
// daPy_py_c::seStartOnlyReverb(unsigned long)
asm void seStartOnlyReverb__9daPy_py_cFUl(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801416E0.s"
}

// seStartOnlyReverbLevel__9daPy_py_cFUl
// daPy_py_c::seStartOnlyReverbLevel(unsigned long)
asm void seStartOnlyReverbLevel__9daPy_py_cFUl(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801416E4.s"
}

// setOutPower__9daPy_py_cFfsi
// daPy_py_c::setOutPower(float, short, int)
asm void setOutPower__9daPy_py_cFfsi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801416E8.s"
}

// setGrabCollisionOffset__9daPy_py_cFffP13cBgS_PolyInfo
// daPy_py_c::setGrabCollisionOffset(float, float, cBgS_PolyInfo*)
asm void setGrabCollisionOffset__9daPy_py_cFffP13cBgS_PolyInfo(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801416EC.s"
}

// onMagneGrab__9daPy_py_cFff
// daPy_py_c::onMagneGrab(float, float)
asm void onMagneGrab__9daPy_py_cFff(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801416F0.s"
}

// getModelJointMtx__9daPy_py_cFUs
// daPy_py_c::getModelJointMtx(unsigned short)
asm void getModelJointMtx__9daPy_py_cFUs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801416F4.s"
}

// getHeadMtx__9daPy_py_cFv
// daPy_py_c::getHeadMtx(void)
asm void getHeadMtx__9daPy_py_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801416FC.s"
}

// setHookshotCarryOffset__9daPy_py_cFUiPC4cXyz
// daPy_py_c::setHookshotCarryOffset(unsigned int, const cXyz*)
asm void setHookshotCarryOffset__9daPy_py_cFUiPC4cXyz(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141704.s"
}

// checkIronBallReturn__9daPy_py_cCFv
// daPy_py_c::checkIronBallReturn(const void)
asm void checkIronBallReturn__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014170C.s"
}

// checkIronBallGroundStop__9daPy_py_cCFv
// daPy_py_c::checkIronBallGroundStop(const void)
asm void checkIronBallGroundStop__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141714.s"
}

// checkSingleBoarBattleSecondBowReady__9daPy_py_cCFv
// daPy_py_c::checkSingleBoarBattleSecondBowReady(const void)
asm void checkSingleBoarBattleSecondBowReady__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014171C.s"
}

// checkPointSubWindowMode__9daPy_py_cCFv
// daPy_py_c::checkPointSubWindowMode(const void)
asm void checkPointSubWindowMode__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141724.s"
}

// setClothesChange__9daPy_py_cFi
// daPy_py_c::setClothesChange(int)
asm void setClothesChange__9daPy_py_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014172C.s"
}

// setPlayerPosAndAngle__9daPy_py_cFPA4_f
asm void setPlayerPosAndAngle__9daPy_py_cFPA4_f(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141730.s"
}

// setPlayerPosAndAngle__9daPy_py_cFPC4cXyzPC5csXyz
// daPy_py_c::setPlayerPosAndAngle(const cXyz*, const csXyz*)
asm void setPlayerPosAndAngle__9daPy_py_cFPC4cXyzPC5csXyz(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141734.s"
}

// setPlayerPosAndAngle__9daPy_py_cFPC4cXyzsi
// daPy_py_c::setPlayerPosAndAngle(const cXyz*, short, int)
asm void setPlayerPosAndAngle__9daPy_py_cFPC4cXyzsi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141738.s"
}

// setThrowDamage__9daPy_py_cFsffiii
// daPy_py_c::setThrowDamage(short, float, float, int, int, int)
asm void setThrowDamage__9daPy_py_cFsffiii(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014173C.s"
}

// checkSetNpcTks__9daPy_py_cFP4cXyzii
// daPy_py_c::checkSetNpcTks(cXyz*, int, int)
asm void checkSetNpcTks__9daPy_py_cFP4cXyzii(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141744.s"
}

// setRollJump__9daPy_py_cFffs
// daPy_py_c::setRollJump(float, float, short)
asm void setRollJump__9daPy_py_cFffs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014174C.s"
}

// playerStartCollisionSE__9daPy_py_cFUlUl
// daPy_py_c::playerStartCollisionSE(unsigned long, unsigned long)
asm void playerStartCollisionSE__9daPy_py_cFUlUl(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141754.s"
}

// changeTextureAnime__9daPy_py_cFUsUsi
// daPy_py_c::changeTextureAnime(unsigned short, unsigned short, int)
asm void changeTextureAnime__9daPy_py_cFUsUsi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141758.s"
}

// cancelChangeTextureAnime__9daPy_py_cFv
// daPy_py_c::cancelChangeTextureAnime(void)
asm void cancelChangeTextureAnime__9daPy_py_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014175C.s"
}

// cancelDungeonWarpReadyNeck__9daPy_py_cFv
// daPy_py_c::cancelDungeonWarpReadyNeck(void)
asm void cancelDungeonWarpReadyNeck__9daPy_py_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141760.s"
}

// onSceneChangeArea__9daPy_py_cFUcUcP10fopAc_ac_c
// daPy_py_c::onSceneChangeArea(unsigned char, unsigned char, fopAc_ac_c*)
asm void onSceneChangeArea__9daPy_py_cFUcUcP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141764.s"
}

// onSceneChangeAreaJump__9daPy_py_cFUcUcP10fopAc_ac_c
// daPy_py_c::onSceneChangeAreaJump(unsigned char, unsigned char, fopAc_ac_c*)
asm void onSceneChangeAreaJump__9daPy_py_cFUcUcP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141768.s"
}

// onSceneChangeDead__9daPy_py_cFUci
// daPy_py_c::onSceneChangeDead(unsigned char, int)
asm void onSceneChangeDead__9daPy_py_cFUci(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014176C.s"
}

// getSpinnerActor__9daPy_py_cFv
// daPy_py_c::getSpinnerActor(void)
asm void getSpinnerActor__9daPy_py_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141770.s"
}

// checkHorseRideNotReady__9daPy_py_cCFv
// daPy_py_c::checkHorseRideNotReady(const void)
asm void checkHorseRideNotReady__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141778.s"
}

// checkArrowChargeEnd__9daPy_py_cCFv
// daPy_py_c::checkArrowChargeEnd(const void)
asm void checkArrowChargeEnd__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141780.s"
}

// getSearchBallScale__9daPy_py_cCFv
// daPy_py_c::getSearchBallScale(const void)
asm void getSearchBallScale__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141788.s"
}

// checkFastShotTime__9daPy_py_cFv
// daPy_py_c::checkFastShotTime(void)
asm void checkFastShotTime__9daPy_py_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141790.s"
}

// checkNoEquipItem__9daPy_py_cCFv
// daPy_py_c::checkNoEquipItem(const void)
asm void checkNoEquipItem__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141798.s"
}

// checkFireMaterial__9daPy_py_cCFv
// daPy_py_c::checkFireMaterial(const void)
asm void checkFireMaterial__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801417A0.s"
}

// checkKandelaarSwing__9daPy_py_cCFi
// daPy_py_c::checkKandelaarSwing(const int)
asm void checkKandelaarSwing__9daPy_py_cCFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801417A8.s"
}

// getBoardCutTurnOffsetAngleY__9daPy_py_cCFv
// daPy_py_c::getBoardCutTurnOffsetAngleY(const void)
asm void getBoardCutTurnOffsetAngleY__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801417B0.s"
}

// getMagneHitPos__9daPy_py_cFv
// daPy_py_c::getMagneHitPos(void)
asm void getMagneHitPos__9daPy_py_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801417B8.s"
}

// getMagneBootsTopVec__9daPy_py_cFv
// daPy_py_c::getMagneBootsTopVec(void)
asm void getMagneBootsTopVec__9daPy_py_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801417C0.s"
}

// checkUseKandelaar__9daPy_py_cFi
// daPy_py_c::checkUseKandelaar(int)
asm void checkUseKandelaar__9daPy_py_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801417C8.s"
}

// setDkCaught__9daPy_py_cFP10fopAc_ac_c
// daPy_py_c::setDkCaught(fopAc_ac_c*)
asm void setDkCaught__9daPy_py_cFP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801417D0.s"
}

// onPressedDamage__9daPy_py_cFRC4cXyzs
// daPy_py_c::onPressedDamage(const cXyz&, short)
asm void onPressedDamage__9daPy_py_cFRC4cXyzs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801417D4.s"
}

// checkPriActorOwn__9daPy_py_cCFPC10fopAc_ac_c
// daPy_py_c::checkPriActorOwn(const fopAc_ac_c*)
asm void checkPriActorOwn__9daPy_py_cCFPC10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801417D8.s"
}

// onWolfEnemyBiteAll__9daPy_py_cFP10fopAc_ac_cQ29daPy_py_c9daPy_FLG2
asm void onWolfEnemyBiteAll__9daPy_py_cFP10fopAc_ac_cQ29daPy_py_c9daPy_FLG2(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801417E0.s"
}

// checkWolfEnemyBiteAllOwn__9daPy_py_cCFPC10fopAc_ac_c
// daPy_py_c::checkWolfEnemyBiteAllOwn(const fopAc_ac_c*)
asm void checkWolfEnemyBiteAllOwn__9daPy_py_cCFPC10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801417E8.s"
}

// setWolfEnemyHangBiteAngle__9daPy_py_cFs
// daPy_py_c::setWolfEnemyHangBiteAngle(short)
asm void setWolfEnemyHangBiteAngle__9daPy_py_cFs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801417F0.s"
}

// setKandelaarMtx__9daPy_py_cFPA4_fii
asm void setKandelaarMtx__9daPy_py_cFPA4_fii(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801417F4.s"
}

// getStickAngleFromPlayerShape__9daPy_py_cCFPs
// daPy_py_c::getStickAngleFromPlayerShape(const short*)
asm void getStickAngleFromPlayerShape__9daPy_py_cCFPs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801417F8.s"
}

// checkSpinnerPathMove__9daPy_py_cFv
// daPy_py_c::checkSpinnerPathMove(void)
asm void checkSpinnerPathMove__9daPy_py_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141800.s"
}

// checkSpinnerTriggerAttack__9daPy_py_cFv
// daPy_py_c::checkSpinnerTriggerAttack(void)
asm void checkSpinnerTriggerAttack__9daPy_py_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141808.s"
}

// onSpinnerPathForceRemove__9daPy_py_cFv
// daPy_py_c::onSpinnerPathForceRemove(void)
asm void onSpinnerPathForceRemove__9daPy_py_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141810.s"
}

// getIronBallBgHit__9daPy_py_cCFv
// daPy_py_c::getIronBallBgHit(const void)
asm void getIronBallBgHit__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141814.s"
}

// getIronBallCenterPos__9daPy_py_cFv
// daPy_py_c::getIronBallCenterPos(void)
asm void getIronBallCenterPos__9daPy_py_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014181C.s"
}

// checkCanoeFishingGetLeft__9daPy_py_cCFv
// daPy_py_c::checkCanoeFishingGetLeft(const void)
asm void checkCanoeFishingGetLeft__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141824.s"
}

// checkCanoeFishingGetRight__9daPy_py_cCFv
// daPy_py_c::checkCanoeFishingGetRight(const void)
asm void checkCanoeFishingGetRight__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014182C.s"
}

// checkBeeChildDrink__9daPy_py_cCFv
// daPy_py_c::checkBeeChildDrink(const void)
asm void checkBeeChildDrink__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141834.s"
}

// skipPortalObjWarp__9daPy_py_cFv
// daPy_py_c::skipPortalObjWarp(void)
asm void skipPortalObjWarp__9daPy_py_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014183C.s"
}

// checkTreasureRupeeReturn__9daPy_py_cCFi
// daPy_py_c::checkTreasureRupeeReturn(const int)
asm void checkTreasureRupeeReturn__9daPy_py_cCFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141840.s"
}

// setSumouReady__9daPy_py_cFP10fopAc_ac_c
// daPy_py_c::setSumouReady(fopAc_ac_c*)
asm void setSumouReady__9daPy_py_cFP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141848.s"
}

// checkAcceptDungeonWarpAlink__9daPy_py_cFi
// daPy_py_c::checkAcceptDungeonWarpAlink(int)
asm void checkAcceptDungeonWarpAlink__9daPy_py_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014184C.s"
}

// getSumouCounter__9daPy_py_cCFv
// daPy_py_c::getSumouCounter(const void)
asm void getSumouCounter__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141854.s"
}

// checkSumouWithstand__9daPy_py_cCFv
// daPy_py_c::checkSumouWithstand(const void)
asm void checkSumouWithstand__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014185C.s"
}

// cancelGoronThrowEvent__9daPy_py_cFv
// daPy_py_c::cancelGoronThrowEvent(void)
asm void cancelGoronThrowEvent__9daPy_py_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141864.s"
}

// setSumouGraspCancelCount__9daPy_py_cFi
// daPy_py_c::setSumouGraspCancelCount(int)
asm void setSumouGraspCancelCount__9daPy_py_cFi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141868.s"
}

// setSumouPushBackDirection__9daPy_py_cFs
// daPy_py_c::setSumouPushBackDirection(short)
asm void setSumouPushBackDirection__9daPy_py_cFs(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014186C.s"
}

// setSumouLoseHeadUp__9daPy_py_cFv
// daPy_py_c::setSumouLoseHeadUp(void)
asm void setSumouLoseHeadUp__9daPy_py_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141870.s"
}

// getGiantPuzzleAimAngle__9daPy_py_cCFv
// daPy_py_c::getGiantPuzzleAimAngle(const void)
asm void getGiantPuzzleAimAngle__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141874.s"
}

// setGoronSideMove__9daPy_py_cFP10fopAc_ac_c
// daPy_py_c::setGoronSideMove(fopAc_ac_c*)
asm void setGoronSideMove__9daPy_py_cFP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014187C.s"
}

// setCargoCarry__9daPy_py_cFP10fopAc_ac_c
// daPy_py_c::setCargoCarry(fopAc_ac_c*)
asm void setCargoCarry__9daPy_py_cFP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141880.s"
}

// getDpdFarFlg__9daPy_py_cCFv
// daPy_py_c::getDpdFarFlg(const void)
asm void getDpdFarFlg__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141884.s"
}

// getHookshotTopPos__9daPy_py_cFv
// daPy_py_c::getHookshotTopPos(void)
asm void getHookshotTopPos__9daPy_py_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014188C.s"
}

// checkHookshotReturnMode__9daPy_py_cCFv
// daPy_py_c::checkHookshotReturnMode(const void)
asm void checkHookshotReturnMode__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141894.s"
}

// checkHookshotShootReturnMode__9daPy_py_cCFv
// daPy_py_c::checkHookshotShootReturnMode(const void)
asm void checkHookshotShootReturnMode__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014189C.s"
}

// checkOctaIealHang__9daPy_py_cCFv
// daPy_py_c::checkOctaIealHang(const void)
asm void checkOctaIealHang__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801418A4.s"
}

// cancelOctaIealHang__9daPy_py_cFv
// daPy_py_c::cancelOctaIealHang(void)
asm void cancelOctaIealHang__9daPy_py_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801418AC.s"
}

// cancelDragonHangBackJump__9daPy_py_cFv
// daPy_py_c::cancelDragonHangBackJump(void)
asm void cancelDragonHangBackJump__9daPy_py_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801418B0.s"
}

// setOctaIealWildHang__9daPy_py_cFv
// daPy_py_c::setOctaIealWildHang(void)
asm void setOctaIealWildHang__9daPy_py_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801418B4.s"
}

// checkDragonHangRide__9daPy_py_cCFv
// daPy_py_c::checkDragonHangRide(const void)
asm void checkDragonHangRide__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801418B8.s"
}

// changeDragonActor__9daPy_py_cFP10fopAc_ac_c
// daPy_py_c::changeDragonActor(fopAc_ac_c*)
asm void changeDragonActor__9daPy_py_cFP10fopAc_ac_c(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801418C0.s"
}

// getClothesChangeWaitTimer__9daPy_py_cCFv
// daPy_py_c::getClothesChangeWaitTimer(const void)
asm void getClothesChangeWaitTimer__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801418C4.s"
}

// getShieldChangeWaitTimer__9daPy_py_cCFv
// daPy_py_c::getShieldChangeWaitTimer(const void)
asm void getShieldChangeWaitTimer__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801418CC.s"
}

// getSwordChangeWaitTimer__9daPy_py_cCFv
// daPy_py_c::getSwordChangeWaitTimer(const void)
asm void getSwordChangeWaitTimer__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801418D4.s"
}

// checkMetamorphose__9daPy_py_cCFv
// daPy_py_c::checkMetamorphose(const void)
asm void checkMetamorphose__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801418DC.s"
}

// checkWolfDownAttackPullOut__9daPy_py_cCFv
// daPy_py_c::checkWolfDownAttackPullOut(const void)
asm void checkWolfDownAttackPullOut__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801418E4.s"
}

// checkBootsOrArmorHeavy__9daPy_py_cCFv
// daPy_py_c::checkBootsOrArmorHeavy(const void)
asm void checkBootsOrArmorHeavy__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801418EC.s"
}

// getBottleOpenAppearItem__9daPy_py_cCFv
// daPy_py_c::getBottleOpenAppearItem(const void)
asm void getBottleOpenAppearItem__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801418F4.s"
}

// checkItemSwordEquip__9daPy_py_cCFv
// daPy_py_c::checkItemSwordEquip(const void)
asm void checkItemSwordEquip__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801418FC.s"
}

// getSinkShapeOffset__9daPy_py_cCFv
// daPy_py_c::getSinkShapeOffset(const void)
asm void getSinkShapeOffset__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141904.s"
}

// checkSinkDead__9daPy_py_cCFv
// daPy_py_c::checkSinkDead(const void)
asm void checkSinkDead__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014190C.s"
}

// checkHorseStart__9daPy_py_cFv
// daPy_py_c::checkHorseStart(void)
asm void checkHorseStart__9daPy_py_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141914.s"
}

// getWolfHowlMgrP__9daPy_py_cFv
// daPy_py_c::getWolfHowlMgrP(void)
asm void getWolfHowlMgrP__9daPy_py_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014191C.s"
}

// checkWolfHowlSuccessAnime__9daPy_py_cCFv
// daPy_py_c::checkWolfHowlSuccessAnime(const void)
asm void checkWolfHowlSuccessAnime__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141924.s"
}

// checkCopyRodTopUse__9daPy_py_cFv
// daPy_py_c::checkCopyRodTopUse(void)
asm void checkCopyRodTopUse__9daPy_py_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014192C.s"
}

// checkCopyRodEquip__9daPy_py_cCFv
// daPy_py_c::checkCopyRodEquip(const void)
asm void checkCopyRodEquip__9daPy_py_cCFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141934.s"
}

// checkCutJumpMode__9daPy_py_cCFv
// daPy_py_c::checkCutJumpMode(const void)
asm void checkCutJumpMode__9daPy_py_cCFv(void){nofralloc
#include "d/d_a/d_a_alink/asm/func_8014193C.s"
}

u32 daHorse_c::getZeldaActor(void) {
    return actorKeep.getActor();
}

u8 dComIfGp_getDoStatus__Fv(void) {
    return g_dComIfG_gameInfo.getPlay().getDoStatus();
}

// __ct__4cXyzFfff
// cXyz::cXyz(float, float, float)
asm void __ct__4cXyzFfff(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014195C.s"
}

// dMeter2Info_offUseButton__Fi
// dMeter2Info_offUseButton__Fi(int)
asm void dMeter2Info_offUseButton__Fi(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014196C.s"
}

void Z2CreatureLink::setLinkState(u8 state) {
    link_state = state;
}

u16 dComIfGs_getRupee__Fv(void) {
    return g_dComIfG_gameInfo.getSaveFile().getPlayerStatusA().getRupee();
}

void dComIfGp_setItemRupeeCount(long amount) {
    g_dComIfG_gameInfo.getPlay().setItemRupeeCount(amount);
}

// dMeter2Info_setFloatingMessage__FUssb
asm void dMeter2Info_setFloatingMessage__FUssb(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801419B8.s"
}

void daMidna_c::onForcePanic(void) {
    unk2200 |= 8;
}

u32 daMidna_c::checkForceNormalColor(void) const {
    return unk2196 & 8;
}

u32 daMidna_c::checkForceTiredColor(void) const {
    return unk2196 & 4;
}

// checkMidnaTired__9daMidna_cFv
// daMidna_c::checkMidnaTired(void)
asm void checkMidnaTired__9daMidna_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141A1C.s"
}

void daMidna_c::onNoServiceWait(void) {
    unk2200 |= 128;
}

// setControllActorData__8daCrod_cFv
// daCrod_c::setControllActorData(void)
asm void setControllActorData__8daCrod_cFv(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141A94.s"
}

// PrmAbstract<Q312daObjMovebox5Act_c5Prm_e>__5daObjFPC10fopAc_ac_cQ312daObjMovebox5Act_c5Prm_eQ312daObjMovebox5Act_c5Prm_e
asm void daObj_NS_PrmAbstract(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141ACC.s"
}

// cLib_calcTimer<Uc>__FPUc
// cLib_calcTimer<Uc>(unsigned char*)
asm void cLib_calcTimer(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141AE8.s"
}

// __sinit_d_a_alink_cpp
asm void __sinit_d_a_alink_cpp(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80141B04.s"
}

// @36@__dt__12dBgS_ObjAcchFv
asm void func_801446D4(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801446D4.s"
}

// @20@__dt__12dBgS_ObjAcchFv
asm void func_801446DC(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801446DC.s"
}

// @36@__dt__13dBgS_LinkAcchFv
asm void func_801446E4(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801446E4.s"
}

// @20@__dt__13dBgS_LinkAcchFv
asm void func_801446EC(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801446EC.s"
}

// @20@__dt__15dBgS_LinkGndChkFv
asm void func_801446F4(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801446F4.s"
}

// @76@__dt__15dBgS_LinkGndChkFv
asm void func_801446FC(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_801446FC.s"
}

// @60@__dt__15dBgS_LinkGndChkFv
asm void func_80144704(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80144704.s"
}

// @16@__dt__16dBgS_LinkRoofChkFv
asm void func_8014470C(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014470C.s"
}

// @52@__dt__16dBgS_LinkRoofChkFv
asm void func_80144714(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_80144714.s"
}

// @36@__dt__16dBgS_LinkRoofChkFv
asm void func_8014471C(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8014471C.s"
}
};
