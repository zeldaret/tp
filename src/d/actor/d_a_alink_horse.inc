/**
 * d_a_alink_horse.inc
 * Player Epona riding handling
 */

#include "d/actor/d_a_alink.h"
#include "d/actor/d_a_horse.h"
#include "d/actor/d_a_hozelda.h"
#include "d/actor/d_a_e_wb.h"
#include "d/actor/d_a_obj_iceleaf.h"

/* 800EC724-800EC758 0E7064 0034+00 3/3 0/0 0/0 .text daAlink_searchBoar__FP10fopAc_ac_cPv */
static void* daAlink_searchBoar(fopAc_ac_c* i_actor, void*) {
    if (fopAcM_GetName(i_actor) == PROC_E_WB) {
        e_wb_class* e_wb_p = (e_wb_class*)i_actor;

        if (e_wb_p->getModel() != NULL) {
            return i_actor;
        }
    }

    return NULL;
}

/* 800EC758-800EC76C 0E7098 0014+00 1/1 0/0 0/0 .text daAlink_searchCoach__FP10fopAc_ac_cPv */
static fopAc_ac_c* daAlink_searchCoach(fopAc_ac_c* i_actor, void*) {
    if (fopAcM_GetName(i_actor) == PROC_NPC_COACH) {
        return i_actor;
    }

    return NULL;
}

/* 800EC76C-800EC7B0 0E70AC 0044+00 3/3 0/0 0/0 .text checkHorseZeldaBowMode__9daAlink_cFv */
BOOL daAlink_c::checkHorseZeldaBowMode() {
    if (dComIfGp_getHorseActor() == NULL) {
        return false;
    }

    daHoZelda_c* zelda_p = dComIfGp_getHorseActor()->i_getZeldaActor();
    return zelda_p != NULL && zelda_p->checkBowMode();
}

/* 800EC7B0-800EC7DC 0E70F0 002C+00 4/4 0/0 0/0 .text            setHorseZeldaDamage__9daAlink_cFv
 */
void daAlink_c::setHorseZeldaDamage() {
    if (dComIfGp_getHorseActor() != NULL) {
        daHoZelda_c* zelda_p = dComIfGp_getHorseActor()->i_getZeldaActor();
        if (zelda_p != NULL) {
            zelda_p->setDamageInit();
        }
    }
}

/* 800EC7DC-800EC814 0E711C 0038+00 2/2 0/0 0/0 .text            checkHorseDashAccept__9daAlink_cFv
 */
BOOL daAlink_c::checkHorseDashAccept() {
    return !checkStageName("F_SP103");
}

/* 800EC814-800EC87C 0E7154 0068+00 1/1 0/0 0/0 .text            checkCowGame__9daAlink_cFv */
BOOL daAlink_c::checkCowGame() {
    return checkStageName("F_SP00") &&
           (dComIfGp_getStartStageLayer() == 4 || dComIfGp_getStartStageLayer() == 5);
}

/* 800EC87C-800EC8F8 0E71BC 007C+00 2/2 0/0 0/0 .text            getReinRideDirection__9daAlink_cFv
 */
int daAlink_c::getReinRideDirection() {
    s16 angle = fopAcM_searchActorAngleY(field_0x27f4, this) - field_0x27f4->shape_angle.y;

    if (fopAcM_GetName(field_0x27f4) == PROC_HORSE && abs(angle) > 0x6800) {
        return DIR_BACKWARD;
    } else if (angle > 0) {
        return DIR_LEFT;
    }

    return DIR_RIGHT;
}

/* 800EC8F8-800ECA3C 0E7238 0144+00 1/1 0/0 0/0 .text            checkReinRideBgCheck__9daAlink_cFv
 */
// issue with sp38 member setting
#ifdef NONMATCHING
int daAlink_c::checkReinRideBgCheck() {
    int direction = getReinRideDirection();

    fopAc_ac_c* temp_r4 = field_0x27f4;
    const Vec* offset_p;
    if (fopAcM_GetName(temp_r4) == PROC_HORSE) {
        if (direction == DIR_BACKWARD) {
            offset_p = &horseLocalBack;
        } else if (direction == DIR_LEFT) {
            offset_p = &horseLocalLeft;
        } else {
            offset_p = &horseLocalRight;
        }
    } else if (direction == DIR_LEFT) {
        offset_p = &boarLocalLeft;
    } else {
        offset_p = &boarLocalRight;
    }

    cXyz sp2C;
    cXyz sp38(temp_r4->current.pos.x, temp_r4->current.pos.y, temp_r4->current.pos.z);

    mDoMtx_stack_c::transS(field_0x27f4->current.pos);
    mDoMtx_stack_c::YrotM(field_0x27f4->shape_angle.y);
    mDoMtx_stack_c::multVec(offset_p, &sp2C);

    dBgS_AcchCir* acchcir_p = mAcchCir;
    for (int i = 0; i < 6; i++) {
        sp38.y = acchcir_p->GetWallH();
        sp38.y += current.pos.y;
        sp2C.y = sp38.y;

        if (commonLineCheck(&sp2C, &sp38)) {
            return 0;
        }

        if (i == 2) {
            acchcir_p = mAcchCir;
            sp2C.x = current.pos.x;
            sp2C.z = current.pos.z;
        } else {
            acchcir_p++;
        }
    }

    return 1;
}
#else
int daAlink_c::checkReinRideBgCheck() {
    // NONMATCHING
    return 0;
}
#endif

/* 800ECA3C-800ECAAC 0E737C 0070+00 3/3 0/0 0/0 .text commonInitForceRideRein__9daAlink_cFv */
void daAlink_c::commonInitForceRideRein() {
    setHeavyBoots(0);
    onModeFlg(0x400);
    field_0x2fc0 = 0;
    field_0x2fab = 0x13;
    field_0x3002 = 0;
    field_0x3004 = 0;
    field_0x30a6 = 0;

    initServiceWaitTime();
    attention_info.field_0xa = 0x46;
    mUnderFrameCtrl[0].onEndFlg();
}

/* 800ECAAC-800ECB58 0E73EC 00AC+00 1/1 0/0 0/0 .text            initForceRideBoar__9daAlink_cFv */
int daAlink_c::initForceRideBoar() {
    e_wb_class* e_wb = (e_wb_class*)fopAcIt_Judge((fopAcIt_JudgeFunc)daAlink_searchBoar, NULL);
    if (e_wb == NULL) {
        return 0;
    }

    commonInitForceRideRein();
    e_wb->current.pos = current.pos;
    e_wb->shape_angle.y = shape_angle.y;
    e_wb->current.angle.y = shape_angle.y;
    mRideStatus = 2;

    mRideAcKeep.setData(e_wb);
    field_0x384c = (cXyz*)&l_boarBaseAnime;
    e_wb->setPlayerRide();
    return 1;
}

/* 800ECB58-800ECBD0 0E7498 0078+00 4/4 0/0 0/0 .text            initForceRideHorse__9daAlink_cFv */
void daAlink_c::initForceRideHorse() {
    commonInitForceRideRein();
    mRideStatus = 1;
    mRideAcKeep.setData(dComIfGp_getHorseActor());
    field_0x384c = (cXyz*)&l_horseBaseAnime;
    dComIfGp_getHorseActor()->onRideFlg();
    mZ2Link.setRiding(true);
}

/* 800ECBD0-800ECD90 0E7510 01C0+00 5/5 0/0 0/0 .text            rideGetOff__9daAlink_cFv */
void daAlink_c::rideGetOff() {
    if (checkHorseRide()) {
        daHorse_c* horse_p = dComIfGp_getHorseActor();
        if (horse_p != NULL) {
            horse_p->offRideFlg();
        }

        mZ2Link.setRiding(false);
    } else if (checkBoarRide()) {
        e_wb_class* boar_p = (e_wb_class*)mRideAcKeep.getActor();
        if (boar_p != NULL) {
            boar_p->getOff();
        }
    } else if (checkSpinnerRide()) {
        daSpinner_c* spinner_p = (daSpinner_c*)mRideAcKeep.getActor();
        if (spinner_p != NULL) {
            spinner_p->forceDelete();
        }

        seStartOnlyReverb(Z2SE_AL_SPINNER_END);
    } else if (checkCanoeRide()) {
        if (mEquipItem == 0x10B) {
            mEquipItem = NO_ITEM;
        }
    } else if (checkBoardRide()) {
        static_cast<daObjIceLeaf_c*>(mRideAcKeep.getActor())->offRide();

        if (checkEventRun()) {
            static_cast<daObjIceLeaf_c*>(mRideAcKeep.getActor())->setBreakEffect();
        }
    }

    if (!checkBoardRide() || checkEventRun()) {
        mRideAcKeep.clearData();
    }

    mRideStatus = 0;
    offNoResetFlg1(FLG1_UNK_1800);
    attention_info.field_0xa = 10;
    shape_angle.x = 0;
    shape_angle.z = 0;
}

/* 800ECD90-800ECDC4 0E76D0 0034+00 1/1 0/0 0/0 .text checkHorseNotDamageReaction__9daAlink_cCFv
 */
BOOL daAlink_c::checkHorseNotDamageReaction() const {
    return mProcID == PROC_HORSE_TURN || mProcID == PROC_HORSE_JUMP || mProcID == PROC_HORSE_HANG ||
           mProcID == PROC_HORSE_LAND;
}

/* 800ECDC4-800ECDEC 0E7704 0028+00 1/1 0/0 2/2 .text checkHorseWaitLashAnime__9daAlink_cCFv */
BOOL daAlink_c::checkHorseWaitLashAnime() const {
    return checkHorseUnderDashStartAnime() && checkModeFlg(1);
}

/* 800ECDEC-800ECE10 0E772C 0024+00 1/1 0/0 0/0 .text checkHorseReinLeftOnly__9daAlink_cCFv */
BOOL daAlink_c::checkHorseReinLeftOnly() const {
    return (field_0x2fab & 8) && !(field_0x2fab & 0x10);
}

/* 800ECE10-800ECF04 0E7750 00F4+00 2/2 0/0 0/0 .text            getReinHandType__9daAlink_cCFv */
void daAlink_c::getReinHandType() const {
    // NONMATCHING
}

/* 800ECF04-800ECF5C 0E7844 0058+00 5/5 0/0 1/1 .text            checkHorseLieAnime__9daAlink_cCFv
 */
BOOL daAlink_c::checkHorseLieAnime() const {
    return checkUnderMove0BckNoArc(ANM_HORSE_CROUCH) || checkUpperHorseLieAnime();
}

/* 800ECF5C-800ECF9C 0E789C 0040+00 0/0 0/0 3/3 .text checkHorseSubjectivity__9daAlink_cCFv */
BOOL daAlink_c::checkHorseSubjectivity() const {
    return dComIfGp_checkPlayerStatus0(0, 0x2000) || mProcID == PROC_HORSE_BOW_SUBJECT ||
           mProcID == PROC_HORSE_HOOKSHOT_SUBJECT || mProcID == PROC_HORSE_BOOMERANG_SUBJECT;
}

/* 800ECF9C-800ECFF4 0E78DC 0058+00 2/2 0/0 0/0 .text            setHorseSwordUpAnime__9daAlink_cFv
 */
void daAlink_c::setHorseSwordUpAnime() {
    setUpperAnimeBaseSpeed(0xCC, daAlinkHIO_horse_c0::m.mSwordUpAnmSpeed,
                           daAlinkHIO_horse_c0::m.mSwordUpInterpolation);
    setFaceBck(0xE8, 1, 0xFFFF);
}

/* 800ECFF4-800ED074 0E7934 0080+00 1/1 0/0 0/0 .text setHorseTurnUpperAnime__9daAlink_cFi */
void daAlink_c::setHorseTurnUpperAnime(int i_useLAnime) {
    if (checkHorseNoUpperAnime() || (i_useLAnime == FALSE && checkHorseTurnRAnime()) ||
        (i_useLAnime == TRUE && checkHorseTurnLAnime()))
    {
        setUpperAnimeBaseMorf(!i_useLAnime ? (u16)0x24C : (u16)0x24D, 4.0f);
    }
}

/* 800ED074-800ED0D4 0E79B4 0060+00 9/9 0/0 0/0 .text checkHorseNoUpperAnime__9daAlink_cCFv */
BOOL daAlink_c::checkHorseNoUpperAnime() const {
    return checkHorseTiredAnime() || checkNoUpperAnime() || checkHorseSwordUpAnime();
}

/* 800ED0D4-800ED1F0 0E7A14 011C+00 0/0 0/0 2/2 .text getHorseReinHandPos__9daAlink_cFP4cXyzP4cXyz
 */
void daAlink_c::getHorseReinHandPos(cXyz* param_0, cXyz* param_1) {
    // NONMATCHING
}

/* 800ED1F0-800ED310 0E7B30 0120+00 1/1 0/0 1/1 .text            checkHorseNotGrab__9daAlink_cCFv */
void daAlink_c::checkHorseNotGrab() const {
    // NONMATCHING
}

/* 800ED310-800ED4B8 0E7C50 01A8+00 1/1 0/0 0/0 .text            setHorseStirrup__9daAlink_cFv */
void daAlink_c::setHorseStirrup() {
    // NONMATCHING
}

/* 800ED4B8-800ED4DC 0E7DF8 0024+00 1/1 0/0 0/0 .text            changeBoarRunRide__9daAlink_cFv */
void daAlink_c::changeBoarRunRide() {
    static_cast<e_wb_class*>(mRideAcKeep.getActor())->setRunRideMode();
}

/* 800ED4DC-800ED78C 0E7E1C 02B0+00 7/7 0/0 0/0 .text            setSyncHorsePos__9daAlink_cFv */
int daAlink_c::setSyncHorsePos() {
    daHorse_c* horse_p = dComIfGp_getHorseActor();

    if (horse_p == NULL) {
        if (mProcID == PROC_DEAD || mProcID == PROC_GET_ITEM) {
            return 1;
        }

        rideGetOff();
        checkWaitAction();
        return 0;
    }

    field_0x2f99 = 0x60;

    if (mProcID == PROC_HORSE_RUN || mProcID == PROC_HORSE_HANG ||
        checkUnderMove0BckNoArc(ANM_HORSE_CROUCH) || checkUnderMove0BckNoArc(ANM_HORSE_TURN_LEFT) ||
        checkUnderMove0BckNoArc(ANM_HORSE_TURN_RIGHT))
    {
        if (mProcID == PROC_HORSE_RUN) {
            mDoMtx_multVec(horse_p->getSaddleMtx(), &localHorseRun_18095, &current.pos);

            if (!horse_p->checkTurn() && !horse_p->checkStop()) {
                f32 frame = horse_p->getAnmFrame(0) / horse_p->getAnmFrameMax(0) + 0.5f;
                if (frame > 1.0f) {
                    frame -= 1.0f;
                }

                f32 var_f0 = frame * (f32)mUnderFrameCtrl[0].getEnd();
                mUnderFrameCtrl[0].setFrame(var_f0);
                getNowAnmPackUnder(UNDER_0)->setFrame(var_f0);
            }
        } else {
            mDoMtx_multVec(horse_p->getSaddleMtx(), &localHorseRun_18103, &current.pos);
        }

        csXyz sp58;
        mDoMtx_MtxToRot(horse_p->getSaddleMtx(), &sp58);
        shape_angle.x = sp58.x;
        shape_angle.y = sp58.y;
        shape_angle.z = sp58.z + -0x4000;
    } else {
        if (dComIfGp_checkCameraAttentionStatus(field_0x317c, 0x20)) {
            current.pos.set(horse_p->current.pos.x, horse_p->current.pos.y + 230.0f,
                            horse_p->current.pos.z);
        } else {
            mDoMtx_multVec(horse_p->getRootMtx(), &l_localHorseRidePos, &current.pos);
        }

        shape_angle = horse_p->shape_angle;
    }

    current.angle.y = shape_angle.y;
    mNormalSpeed = fabsf(horse_p->speedF);

    if (checkZeroSpeedF()) {
        onModeFlg(1);
    } else {
        offModeFlg(1);
    }

    return 1;
}


/* 800ED78C-800ED90C 0E80CC 0180+00 4/4 0/0 0/0 .text            setSyncBoarPos__9daAlink_cFv */
int daAlink_c::setSyncBoarPos() {
    e_wb_class* e_wb_p = static_cast<e_wb_class*>(mRideAcKeep.getActor());
    if (e_wb_p == NULL) {
        if (mProcID == PROC_DEAD || mProcID == PROC_GET_ITEM) {
            return 1;
        }

        rideGetOff();
        checkWaitAction();
        return 0;
    }

    if (fabsf(mRideAcKeep.getActor()->speedF) < 0.0010000000474974513f) {
        onModeFlg(1);
    } else {
        offModeFlg(1);
    }

    if (mProcID != PROC_DEAD && mProcID != PROC_GET_ITEM) {
        if (e_wb_p == NULL || e_wb_p->checkDownDamage()) {
            boarForceGetOff();
            return 0;
        }

        if (!e_wb_p->checkNormalRideMode() && mProcID != PROC_BOAR_RUN) {
            procBoarRunInit();
            return 0;
        }
    }

    MtxP ride_mtx = e_wb_p->getRideMtx();
    field_0x2f99 = 0x60;

    mDoMtx_multVec(ride_mtx, &l_localBoarRidePos, &current.pos);

    csXyz sp18;
    mDoMtx_MtxToRot(ride_mtx, &sp18);
    shape_angle.x = -sp18.z;
    shape_angle.y = sp18.y + 0x4000;
    shape_angle.z = sp18.x;
    current.angle.y = shape_angle.y;

    mNormalSpeed = mRideAcKeep.getActor()->speedF;
    return 1;
}

/* 800ED90C-800EDA24 0E824C 0118+00 1/1 0/0 0/0 .text            setSyncBoarRunPos__9daAlink_cFv */
int daAlink_c::setSyncBoarRunPos() {
    e_wb_class* e_wb_p = static_cast<e_wb_class*>(mRideAcKeep.getActor());
    if (e_wb_p == NULL || e_wb_p->checkDownDamage()) {
        boarForceGetOff();
        return 0;
    }

    if (e_wb_p->checkNormalRideMode()) {
        procHorseWaitInit();
        return 0;
    }

    MtxP ride_mtx = e_wb_p->getRideMtx();
    field_0x2f99 = 0x60;

    mDoMtx_multVec(ride_mtx, &localOffset_18237, &current.pos);

    csXyz sp28;
    mDoMtx_MtxToRot(ride_mtx, &sp28);
    shape_angle.x = -sp28.z;
    shape_angle.y = sp28.y + 0x4000;
    shape_angle.z = sp28.x;
    current.angle.y = shape_angle.y;

    if (mProcID == PROC_BOAR_RUN && mProcVar3.field_0x300e != 0) {
        mUnderFrameCtrl[0].setFrame(e_wb_p->nowAnimeFrame());
        getNowAnmPackUnder(UNDER_0)->setFrame(e_wb_p->nowAnimeFrame());
    }

    return 1;
}

/* 800EDA24-800EDA78 0E8364 0054+00 33/33 0/0 0/0 .text            setSyncRidePos__9daAlink_cFv */
BOOL daAlink_c::setSyncRidePos() {
    if (checkHorseRide()) {
        return setSyncHorsePos();
    } else {
        return setSyncBoarPos();
    }
}

/* 800EDA78-800EDB48 0E83B8 00D0+00 6/6 0/0 0/0 .text            setHorseTurnAnime__9daAlink_cFv */
void daAlink_c::setHorseTurnAnime() {
    // NONMATCHING
}

/* 800EDB48-800EDD6C 0E8488 0224+00 2/2 0/0 0/0 .text
 * getBaseHorseAnime__9daAlink_cFPQ29daAlink_c11daAlink_ANM     */
void daAlink_c::getBaseHorseAnime(daAlink_c::daAlink_ANM* param_0) {
    // NONMATCHING
}

/* 800EDD6C-800EDE8C 0E86AC 0120+00 9/9 0/0 0/0 .text            checkHorseSpecialProc__9daAlink_cFv
 */
int daAlink_c::checkHorseSpecialProc() {
    daHorse_c* horse_p = dComIfGp_getHorseActor();

    if (!checkHorseRide()) {
        return 0;
    }

    if (checkEndResetFlg2(ERFLG2_UNK_2)) {
        current.pos = horse_p->current.pos;
        return procWaitInit();
    }

    if ((horse_p->checkStop() || horse_p->checkTurn()) && !horse_p->checkCutTurnCancel() &&
        !horse_p->checkTurnCancelKeep())
    {
        return procHorseTurnInit();
    }

    if (horse_p->checkJump()) {
        return procHorseJumpInit();
    }

    if (mProcID != PROC_HORSE_WAIT && mProcID != PROC_HORSE_CUT &&
        mProcID != PROC_HORSE_CUT_CHARGE_READY)
    {
        horse_p->onMoveAccept();
    }

    return 0;
}

/* 800EDE8C-800EDEEC 0E87CC 0060+00 2/2 0/0 0/0 .text checkHorseServiceWaitAnime__9daAlink_cFv */
BOOL daAlink_c::checkHorseServiceWaitAnime() {
    return checkUnderMove0BckNoArc(ANM_HORSE_WAIT_A) || checkUnderMove0BckNoArc(ANM_HORSE_WAIT_B);
}

/* 800EDEEC-800EE64C 0E882C 0760+00 1/1 0/0 0/0 .text            setSyncHorse__9daAlink_cFi */
int daAlink_c::setSyncHorse(int param_0) {
    daHorse_c* horse_p = dComIfGp_getHorseActor();
    BOOL mode_1 = checkModeFlg(1);

    setSyncHorsePos();
    if (checkHorseSpecialProc()) {
        return 0;
    }

    daAlink_ANM sp8[2];
    getBaseHorseAnime(sp8);

    if (fabsf(horse_p->speedF) < 0.001f) {
        if (!mode_1) {
            field_0x3004 = 0;
        } else if (checkInputOnR() && horse_p->checkWait() && mProcID != PROC_HORSE_SUBJECTIVITY &&
                   mProcID != PROC_HORSE_CUT_TURN && sp8[0] != ANM_HORSE_TURN_LEFT &&
                   sp8[0] != ANM_HORSE_TURN_RIGHT && field_0x3004 == 0 &&
                   getDirectionFromShapeAngle() == DIR_FORWARD)
        {
            field_0x3004 = daAlinkHIO_horse_c0::m.mNoWalkTime;
            setSingleAnimeParam(ANM_WSTARTH, &daAlinkHIO_horse_c0::m.mWalkAnm);
            offNoResetFlg1(FLG1_UNK_1000);
        }
    }

    if ((checkHorseUnderDashStartAnime() || checkHorseUnderLashAnime()) &&
        checkAnmEnd(&mUnderFrameCtrl[2]))
    {
        resetUnderAnime(UNDER_2, 4.0f);
    }

    if (checkHorseWalkStartAnm() && spActionButton()) {
        if (checkNoUpperAnime()) {
            setUpperAnimeBase(getMainBckData(ANM_HORSE_CROUCH)->m_upperID);
        }
    } else if (checkUpperHorseLieAnime()) {
        resetUpperAnime(UPPER_2, 3.0f);
    }

    if (param_0 && field_0x30a6 == 0 && horse_p->speedF >= 0.0f &&
        horse_p->getAimNeckAngleY() == 0 && sp8[0] != ANM_HORSE_TURN_LEFT &&
        sp8[0] != ANM_HORSE_TURN_RIGHT &&
        (field_0x2f8c == 10 &&
             (checkHorseNoUpperAnime() || checkEquipAnime() || checkUpperGuardAnime()) ||
         (mProcID == PROC_HORSE_CUT || mProcID == PROC_HORSE_CUT_TURN ||
          mProcID == PROC_HORSE_CUT_CHARGE_READY)))
    {
        if (checkCowGame()) {
            if (checkHorseNoUpperAnime()) {
                setDoStatus(40);

                if (doTrigger()) {
                    onResetFlg0(RFLG0_UNK_200);
                    voiceStart(Z2SE_AL_V_RUSH_HORSE);
                    field_0x30a6 = daAlinkHIO_horse_c0::m.mWhipWaitTime;
                    setHorseSwordUpAnime();
                    field_0x3002 = -daAlinkHIO_horse_c0::m.mWhipWaitTime;
                }
            }
        } else if (checkHorseDashAccept()) {
            setDoStatus(9);

            if (doTrigger()) {
                field_0x3004 = daAlinkHIO_horse_c0::m.mNoWalkTime;
                const daAlinkHIO_anm_c* anmparam_p = &daAlinkHIO_horse_c0::m.mWhipAnm;

                if (mProcID != PROC_HORSE_CUT && mProcID != PROC_HORSE_CUT_TURN &&
                    mProcID != PROC_HORSE_CUT_CHARGE_READY)
                {
                    setSingleAnimeParam(ANM_HORSE_LASH, anmparam_p);
                }

                setUnderAnimeParam(getMainBckData(ANM_HORSE_LASH)->m_underID, UNDER_2,
                                   &daAlinkHIO_horse_c0::m.mWhipAnm);
                onNoResetFlg1(FLG1_UNK_1000);
                horse_p->offPlayerBackRideLash();
                voiceStart(Z2SE_AL_V_RUSH_HORSE);

                if (horse_p->speedF <= horse_p->getNormalMaxSpeedF()) {
                    onNoResetFlg1(FLG1_UNK_800);
                }

                field_0x30a6 = daAlinkHIO_horse_c0::m.mWhipWaitTime;
            }
        }
    }

    if ((checkHorseWalkStartAnm() &&
         mUnderFrameCtrl[0].getFrame() > daAlinkHIO_horse_c0::m.mHorseWalkStartFrame) ||
        (checkHorseWaitLashAnime() && mUnderFrameCtrl[2].getFrame() > 13.0f))
    {
        horse_p->onMoveAccept();
    }

    if (checkNoResetFlg1(FLG1_UNK_1000) &&
        ((checkHorseUnderDashStartAnime() && mUnderFrameCtrl[2].getFrame() > 13.0f) ||
         (checkHorseUnderLashAnime() && mUnderFrameCtrl[2].getFrame() > 13.0f)))
    {
        offNoResetFlg1(FLG1_UNK_1000);
        horse_p->onPlayerLash();
    }

    if (checkHorseSwordUpAnime()) {
        if (checkHorseZeldaBowMode()) {
            resetUpperAnime(UPPER_2, daAlinkHIO_horse_c0::m.mSwordUpInterpolation);
            field_0x3002 = 0;
        } else if (field_0x3002 > 0) {
            field_0x3002--;

            if (field_0x3002 == 0 || horse_p->speedF < horse_p->getNormalMaxSpeedF()) {
                resetUpperAnime(UPPER_2, daAlinkHIO_horse_c0::m.mSwordUpInterpolation);
                field_0x3002 = 0;
            }
        } else {
            field_0x30ec = daAlinkHIO_horse_c0::m.mSwordUpInterpolation;
            field_0x3002++;

            if (field_0x3002 == 0) {
                resetUpperAnime(UPPER_2, daAlinkHIO_horse_c0::m.mSwordUpInterpolation);
                field_0x30ec = daAlinkHIO_horse_c0::m.mSwordUpInterpolation;
            }
        }
    }

    BOOL var_r28 =
        checkAnmEnd(mUnderFrameCtrl) ||
        (checkHorseServiceWaitAnime() &&
         (!checkNoUpperAnime() || horse_p->getAimNeckAngleY() != 0 || !checkModeFlg(1)));

    if (((var_r28 || sp8[0] == ANM_HORSE_TURN_LEFT || sp8[0] == ANM_HORSE_TURN_RIGHT ||
          sp8[0] == ANM_HORSE_DASH_START ||
          (spActionButton() && !checkHorseWalkStartAnm() && !checkHorseWaitLashAnime())) &&
         mProcID != PROC_HORSE_CUT_TURN) ||
        field_0x2f8c == 10)
    {
        if ((var_r28 || field_0x3004 != daAlinkHIO_horse_c0::m.mNoWalkTime) && field_0x3004 != 0) {
            field_0x3004--;
        }

        f32 var_f31;
        if (var_r28 && horse_p->getMorfFrame() < 4.0f) {
            var_f31 = 4.0f;
        } else {
            var_f31 = horse_p->getMorfFrame();
        }

        f32 var_f30;
        if (sp8[0] == ANM_HORSE_TURN_LEFT || sp8[0] == ANM_HORSE_TURN_B ||
            sp8[0] == ANM_HORSE_TURN_RIGHT)
        {
            var_f30 = 0.0f;
        } else {
            var_f30 = horse_p->getBlendRate();
        }

        if (sp8[0] == ANM_HORSE_DASH_START && !checkUnderMove0BckNoArc(ANM_HORSE_DASH_START)) {
            voiceStart(Z2SE_AL_V_RUSH_HORSE);
        }

        setDoubleAnime(var_f30, 1.0f, 1.0f, sp8[0], sp8[1], 10, var_f31);
        setBaseHorseAnimeFrame();
        if (var_r28) {
            setHorseSwordUp(0);
        }
    }

    return 1;
}


/* 800EE64C-800EE918 0E8F8C 02CC+00 1/1 0/0 0/0 .text            setSyncBoar__9daAlink_cFi */
// regalloc, equivalent?
#ifdef NONMATCHING
int daAlink_c::setSyncBoar(int param_0) {
    e_wb_class* e_wb_p = static_cast<e_wb_class*>(mRideAcKeep.getActor());
    BOOL mode_1 = checkModeFlg(1);

    if (!setSyncBoarPos()) {
        return 0;
    }

    if (fabsf(e_wb_p->speedF) < 0.001f && mode_1 && checkInputOnR() && e_wb_p->checkWait() &&
        mProcID != PROC_HORSE_SUBJECTIVITY && field_0x3004 == 0)
    {
        int direction = getDirectionFromShapeAngle();
        if (direction == DIR_FORWARD || direction == DIR_BACKWARD) {
            field_0x3004 = daAlinkHIO_horse_c0::m.mNoWalkTime;
            setSingleAnimeParam(ANM_WSTARTH, &daAlinkHIO_horse_c0::m.mWalkAnm);
        }
    }

    if (param_0 && e_wb_p->getWaitRollAngle() == 0 && checkHorseNoUpperAnime()) {
        setDoStatus(9);
        if (doTrigger()) {
            changeBoarRunRide();
        }
    }

    if ((checkAnmEnd(mUnderFrameCtrl) && mProcID != PROC_HORSE_CUT_TURN) ||
        (checkHorseServiceWaitAnime() && (!checkNoUpperAnime() || !checkModeFlg(1))))
    {
        setBaseBoarAnime();
    } else if (mUnderAnmHeap[0].getIdx() == 0x1B3) {
        if (mUnderFrameCtrl[0].checkPass(10.0f)) {
            changeBoarRunRide();
        }
    } else if (!checkHorseServiceWaitAnime() && mProcID != PROC_HORSE_CUT_TURN) {
        setBaseBoarAnime();
    }

    if (mUnderAnmHeap[0].getIdx() != 0x1B3) {
        if (e_wb_p->getWaitRollAngle() > 0) {
            setHorseTurnUpperAnime(FALSE);
        } else if (e_wb_p->getWaitRollAngle() < 0) {
            setHorseTurnUpperAnime(TRUE);
        }
    }

    if (checkHorseTurnAnime()) {
        if (e_wb_p->getWaitRollAngle() == 0) {
            resetUpperAnime(UPPER_2, 4.0f);
            field_0x33f0 = 0.0f;
        } else {
            field_0x33f0 = cLib_minMaxLimit(e_wb_p->getWaitRollAngle() * 0.002f, -1.0f, 1.0f);
            // supposed to be std::abs
            mNowAnmPackUpper[2].setRatio(fabsf(field_0x33f0));
        }
    } else {
        field_0x33f0 = 0.0f;
    }

    return 1;
}
#else
int daAlink_c::setSyncBoar(int param_0) {
    // NONMATCHING
    return 0;
}
#endif

/* 800EE918-800EEAE8 0E9258 01D0+00 12/12 0/0 0/0 .text            setSyncRide__9daAlink_cFi */
int daAlink_c::setSyncRide(int param_0) {
    BOOL var_r31;
    if (param_0 && mMidnaTalkDelayTimer == 0 && dComIfGp_getDoStatus() == 0 &&
        (!checkHorseRide() || dComIfGp_getHorseActor()->getAnmIdx(0) != 7))
    {
        var_r31 = TRUE;
    } else {
        var_r31 = FALSE;
    }

    if (checkServiceWaitMode() && checkHorseRide() && mProcID == PROC_HORSE_WAIT &&
        !checkBowAndSlingItem(mEquipItem) && checkZeroSpeedF() &&
        !checkUnderMove0BckNoArc(ANM_HORSE_TURN_LEFT) &&
        !checkUnderMove0BckNoArc(ANM_HORSE_TURN_RIGHT) && !checkUnderMove0BckNoArc(ANM_WSTARTH) &&
        checkModeFlg(1))
    {
        if (field_0x30ca != 0) {
            field_0x30ca--;
        } else {
            if (cM_rnd() < 0.5f) {
                setSingleAnimeBaseMorf(ANM_HORSE_WAIT_A, 4.0f);
            } else {
                setSingleAnimeBaseMorf(ANM_HORSE_WAIT_B, 4.0f);
            }
            initServiceWaitTime();
        }
    } else {
        initServiceWaitTime();
    }

    if (checkHorseRide()) {
        return setSyncHorse(var_r31);
    } else {
        return setSyncBoar(var_r31);
    }
}

/* 800EEAE8-800EEC98 0E9428 01B0+00 2/2 0/0 0/0 .text setBaseHorseAnimeFrame__9daAlink_cFv */
void daAlink_c::setBaseHorseAnimeFrame() {
    // NONMATCHING
}

/* 800EEC98-800EED98 0E95D8 0100+00 2/2 0/0 0/0 .text            setBaseBoarAnime__9daAlink_cFv */
void daAlink_c::setBaseBoarAnime() {
    // NONMATCHING
}

/* 800EED98-800EEE30 0E96D8 0098+00 18/18 0/0 0/0 .text            setBaseRideAnime__9daAlink_cFv */
void daAlink_c::setBaseRideAnime() {
    if (checkHorseRide()) {
        daHorse_c* horse_p = dComIfGp_getHorseActor();
        daAlink_ANM sp8[2];
        getBaseHorseAnime(sp8);
        setDoubleAnime(horse_p->getBlendRate(), 1.0f, 1.0f, sp8[0], sp8[1], 10,
                       horse_p->getMorfFrame());
        setBaseHorseAnimeFrame();
    } else {
        setBaseBoarAnime();
    }
}


/* 800EEE30-800EEE5C 0E9770 002C+00 1/1 0/0 0/0 .text checkHorseSwordUpSpped__9daAlink_cFv */
bool daAlink_c::checkHorseSwordUpSpped() {
    daHorse_c* horse_p = dComIfGp_getHorseActor();
    return horse_p->speedF > horse_p->getLashMaxSpeedF() * 0.89999998f;
}

/* 800EEE5C-800EEF30 0E979C 00D4+00 2/2 0/0 0/0 .text            setHorseSwordUp__9daAlink_cFi */
void daAlink_c::setHorseSwordUp(int param_0) {
    if (checkHorseRide() && checkNoUpperAnime() && mEquipItem == 0x103 &&
        !checkHorseZeldaBowMode() &&
        ((param_0 && checkHorseSwordUpSpped()) ||
         (!param_0 && checkEnemyGroup(mTargetedActor) && checkNoResetFlg1(FLG1_UNK_800))))
    {
        setHorseSwordUpAnime();
        field_0x3002 = daAlinkHIO_horse_c0::m.mSwordUpTime;
    }

    offNoResetFlg1(FLG1_UNK_800);
}

/* 800EEF30-800EF050 0E9870 0120+00 9/9 0/0 0/0 .text            setRideSubjectAngle__9daAlink_cFs
 */
int daAlink_c::setRideSubjectAngle(s16 param_0) {
    // NONMATCHING
    return 0;
}

/* 800EF050-800EF0E8 0E9990 0098+00 7/7 0/0 0/0 .text setBodyAngleRideReadyAnime__9daAlink_cFv */
// missing mr, probably issue with cLib_minMaxLimit implementation
#ifdef NONMATCHING
void daAlink_c::setBodyAngleRideReadyAnime() {
    setBodyAngleXReadyAnime(0);

    s16 angle;
    if (mTargetedActor != NULL) {
        angle = cLib_minMaxLimit(
            (s16)(cLib_targetAngleY(&current.pos, &mTargetedActor->eyePos) - shape_angle.y),
            (s16)-0x3800, (s16)0x3800);
    } else {
        angle = 0;
    }

    daPy_addCalcShort(&mBodyAngle.y, angle, 4, 0xC00, 0x180);
}
#else
void daAlink_c::setBodyAngleRideReadyAnime() {
    // NONMATCHING
}
#endif

/* 800EF0E8-800EF198 0E9A28 00B0+00 1/1 0/0 0/0 .text
 * checkHorseGetOffWallCheck__9daAlink_cFP4cXyzP4cXyzs          */
BOOL daAlink_c::checkHorseGetOffWallCheck(cXyz* i_lineStartPos, cXyz* i_lineEndPos, s16 param_2) {
    if (!commonLineCheck(i_lineStartPos, i_lineEndPos)) {
        return FALSE;
    }

    if (dBgS_CheckBWallPoly(mLinkLinChk)) {
        return TRUE;
    }

    if (getGroundAngle(&mLinkLinChk, param_2) < -cM_deg2s(daAlinkHIO_wlSlide_c0::m.field_0x5C)) {
        return TRUE;
    }

    return FALSE;
}


/* 800EF198-800EF35C 0E9AD8 01C4+00 2/2 0/0 0/0 .text checkHorseGetOffDirection__9daAlink_cFv */
int daAlink_c::checkHorseGetOffDirection() {
    fopAc_ac_c* ride_actor_p = mRideAcKeep.getActor();

    cXyz lin_start_pos(ride_actor_p->current.pos.x, current.pos.y, ride_actor_p->current.pos.z);
    cXyz lin_end_pos;

    s16 var_r28;
    if (field_0x2fc0 == 0) {
        var_r28 = shape_angle.y + 0x4000;
    } else {
        var_r28 = shape_angle.y - 0x4000;
    }

    lin_end_pos.set(ride_actor_p->current.pos.x + cM_ssin(var_r28) * 125.0f, lin_start_pos.y,
                    ride_actor_p->current.pos.z + cM_scos(var_r28) * 125.0f);

    f32 check_y[3] = {0.0f, 0.0f, 0.0f};
    check_y[0] = current.pos.y;
    check_y[1] = ride_actor_p->current.pos.y + (current.pos.y - ride_actor_p->current.pos.y) * 0.5f;
    check_y[2] = ride_actor_p->current.pos.y + l_autoUpHeight;

    int check_no;
    int i;
    for (i = 0; i < 2; i++) {
        for (check_no = 0; check_no < 3; check_no++) {
            lin_start_pos.y = check_y[check_no];
            lin_end_pos.y = lin_start_pos.y;

            if (checkHorseGetOffWallCheck(&lin_start_pos, &lin_end_pos, var_r28)) {
                break;
            }
        }

        if (check_no == 3) {
            if (i == 0) {
                return field_0x2fc0;
            }
            return field_0x2fc0 ^ 1;
        }

        lin_end_pos.x = lin_start_pos.x * 2.0f - lin_end_pos.x;
        lin_end_pos.z = lin_start_pos.z * 2.0f - lin_end_pos.z;
        var_r28 += 0x8000;
    }

    return 2;
}


/* 800EF35C-800EF394 0E9C9C 0038+00 4/4 0/0 0/0 .text            boarForceGetOff__9daAlink_cFv */
void daAlink_c::boarForceGetOff() {
    procCoLargeDamageInit(-4, 1, 0, 0, NULL, 0);
}

/* 800EF394-800EF450 0E9CD4 00BC+00 2/2 0/0 0/0 .text            horseGetOffEnd__9daAlink_cFv */
void daAlink_c::horseGetOffEnd() {
    if (field_0x2fc0 == 0) {
        shape_angle.y -= 0x4000;
        setOldRootQuaternion(0, 0x4000, 0);
        mDoMtx_stack_c::YrotS(-0x4000);
    } else {
        shape_angle.y += 0x4000;
        setOldRootQuaternion(0, -0x4000, 0);
        mDoMtx_stack_c::YrotS(0x4000);
    }

    J3DTransformInfo* transinfo_p = field_0x2060->getOldFrameTransInfo(0);
    transinfo_p->mTranslate.x = l_waitBaseAnime.x;
    transinfo_p->mTranslate.z = l_waitBaseAnime.z;
    current.angle.y = shape_angle.y;
    field_0x2fe4 = shape_angle.y;
}

/* 800EF450-800EF598 0E9D90 0148+00 12/12 0/0 0/0 .text checkNextActionHorse__9daAlink_cFv */
int daAlink_c::checkNextActionHorse() {
    if ((!checkGrabAnimeAndThrow() || mProcID == PROC_HORSE_GRAB_MOVE) &&
        checkNextActionFromButton())
    {
        return 1;
    }

    if (checkBowAnime()) {
        return checkNextActionBow();
    }

    if (checkBoomerangAnimeAndReturnWait()) {
        return checkNextActionBoomerang();
    }

    if (checkHookshotAnime()) {
        return checkNextActionHookshot();
    }

    if (checkGrabAnimeAndThrow()) {
        return procHorseGrabMoveInit();
    }

    if (mProcID == PROC_HORSE_COMEBACK) {
        return procHorseComebackInit();
    }

    if (mProcID == PROC_HORSE_JUMP && dComIfGp_getHorseActor() != NULL &&
        dComIfGp_getHorseActor()->checkJump())
    {
        return 1;
    }

    if (mProcID == PROC_HORSE_TURN || mProcID == PROC_HORSE_CUT_TURN) {
        return 0;
    }

    return procHorseWaitInit();
}

/* 800EF598-800EF6B0 0E9ED8 0118+00 2/2 0/0 0/0 .text            checkHorseGetOff__9daAlink_cFv */
// regalloc
#ifdef NONMATCHING
BOOL daAlink_c::checkHorseGetOff() {
    return (checkHorseRide() && dComIfGp_getHorseActor() != NULL &&
            dComIfGp_getHorseActor()->checkGetOff()) ||
           (checkBoarRide() && static_cast<e_wb_class*>(mRideAcKeep.getActor()) != NULL &&
            static_cast<e_wb_class*>(mRideAcKeep.getActor())->checkGetOff());
}
#else
BOOL daAlink_c::checkHorseGetOff() {
    // NONMATCHING
    return 0;
}
#endif

/* 800EF6B0-800EF884 0E9FF0 01D4+00 3/3 0/0 0/0 .text checkHorseGetOffAndSetDoStatus__9daAlink_cFv
 */
void daAlink_c::checkHorseGetOffAndSetDoStatus() {
    // NONMATCHING
}

/* 800EF884-800EF95C 0EA1C4 00D8+00 2/2 0/0 0/0 .text            setHorseGetOff__9daAlink_cFi */
int daAlink_c::setHorseGetOff(int param_0) {
    daHorse_c* horse_p = dComIfGp_getHorseActor();

    if (dComIfGp_getDoStatus() == 0x32 && doTrigger()) {
        if ((checkHorseRide() && horse_p->checkEnemySearch()) || checkHorseLieAnime()) {
            resetUpperAnime(UPPER_2, -1.0f);
            procBackJumpInit(0);
            current.pos.y += daAlinkHIO_backJump_c0::m.mBackflipSpeedV;
        } else {
            return procHorseGetOffInit(param_0);
        }
    }

    return 0;
}

/* 800EF95C-800EFDC4 0EA29C 0468+00 1/1 0/0 0/0 .text            procHorseRideInit__9daAlink_cFv */
int daAlink_c::procHorseRideInit() {
    // NONMATCHING
    return 0;
}

/* 800EFDC4-800F038C 0EA704 05C8+00 1/0 0/0 0/0 .text            procHorseRide__9daAlink_cFv */
int daAlink_c::procHorseRide() {
    // NONMATCHING
    return 0;
}

/* 800F038C-800F0620 0EACCC 0294+00 1/1 0/0 0/0 .text            procHorseGetOffInit__9daAlink_cFi
 */
int daAlink_c::procHorseGetOffInit(int param_0) {
    // NONMATCHING
    return 0;
}

/* 800F0620-800F0980 0EAF60 0360+00 1/0 0/0 0/0 .text            procHorseGetOff__9daAlink_cFv */
int daAlink_c::procHorseGetOff() {
    // NONMATCHING
    return 0;
}

/* 800F0980-800F0AA4 0EB2C0 0124+00 16/16 0/0 0/0 .text            procHorseWaitInit__9daAlink_cFv
 */
int daAlink_c::procHorseWaitInit() {
    // NONMATCHING
    return 0;
}

/* 800F0AA4-800F0C6C 0EB3E4 01C8+00 1/0 0/0 0/0 .text            procHorseWait__9daAlink_cFv */
int daAlink_c::procHorseWait() {
    // NONMATCHING
    return 0;
}

/* 800F0C6C-800F0CE4 0EB5AC 0078+00 1/1 0/0 0/0 .text            procHorseTurnInit__9daAlink_cFv */
int daAlink_c::procHorseTurnInit() {
    commonProcInit(PROC_HORSE_TURN);

    if (checkHorseRide()) {
        resetUnderAnime(UNDER_2, -1.0f);
    }

    setSyncRidePos();
    field_0x3004 = 0;
    setHorseTurnAnime();
    return 1;
}

/* 800F0CE4-800F1060 0EB624 037C+00 1/0 0/0 0/0 .text            procHorseTurn__9daAlink_cFv */
int daAlink_c::procHorseTurn() {
    // NONMATCHING
    return 0;
}

/* 800F1060-800F10F8 0EB9A0 0098+00 1/1 0/0 0/0 .text            procHorseJumpInit__9daAlink_cFv */
int daAlink_c::procHorseJumpInit() {
    commonProcInit(PROC_HORSE_JUMP);

    if (checkHorseRide()) {
        resetUnderAnime(UNDER_2, -1.0f);
    }

    setSyncRidePos();
    field_0x3004 = 0;
    field_0x3002 = 0;
    setHorseTurnAnime();
    voiceStart(Z2SE_AL_V_JUMP_L);
    return 1;
}

/* 800F10F8-800F1188 0EBA38 0090+00 1/0 0/0 0/0 .text            procHorseJump__9daAlink_cFv */
int daAlink_c::procHorseJump() {
    daHorse_c* horse_p = dComIfGp_getHorseActor();

    if (!setSyncRidePos()) {
        return 1;
    }

    if (horse_p->checkLand()) {
        procHorseLandInit();
    } else {
        setHorseTurnAnime();
    }

    return 1;
}

/* 800F1188-800F1204 0EBAC8 007C+00 1/1 0/0 0/0 .text            procHorseLandInit__9daAlink_cFv */
int daAlink_c::procHorseLandInit() {
    commonProcInit(PROC_HORSE_LAND);

    if (checkHorseRide()) {
        resetUnderAnime(UNDER_2, -1.0f);
    }

    setSyncRidePos();
    field_0x3004 = 0;
    field_0x3002 = 0;
    setHorseTurnAnime();
    return 1;
}

/* 800F1204-800F1294 0EBB44 0090+00 1/0 0/0 0/0 .text            procHorseLand__9daAlink_cFv */
int daAlink_c::procHorseLand() {
    daHorse_c* horse_p = dComIfGp_getHorseActor();

    if (!setSyncRidePos()) {
        return 1;
    }

    if (!horse_p->checkLand()) {
        procHorseWaitInit();
    } else {
        setHorseTurnAnime();
    }

    return 1;
}

/* 800F1294-800F12F8 0EBBD4 0064+00 1/1 0/0 0/0 .text procHorseSubjectivityInit__9daAlink_cFv */
int daAlink_c::procHorseSubjectivityInit() {
    commonProcInit(PROC_HORSE_SUBJECTIVITY);
    if (checkHorseUnderItemAnime()) {
        resetUnderAnime(UNDER_2, -1.0f);
    }

    setSyncRide(0);
    setSubjectMode();
    return 1;
}

/* 800F12F8-800F13D8 0EBC38 00E0+00 1/0 0/0 0/0 .text            procHorseSubjectivity__9daAlink_cFv
 */
int daAlink_c::procHorseSubjectivity() {
    onResetFlg0(RFLG0_UNK_4000000);
    s16 old_shape_angle = shape_angle.y;
    s16 old_angle = current.angle.y;
    int old_3190 = field_0x3190;

    if (!setSyncRide(0)) {
        return 1;
    }

    shape_angle.y = old_shape_angle;
    if (checkSubjectEnd(1)) {
        procHorseWaitInit();
    } else if (checkNextActionFromButton()) {
        if (checkUpperReadyThrowAnime()) {
            field_0x3190 = old_3190;
            mBodyAngle.y = field_0x3190;
            field_0x310a = mBodyAngle.x;
            field_0x310c = shape_angle.y + field_0x3190;
        }
        return 1;
    } else {
        setRideSubjectAngle(old_angle);
    }

    return 1;
}

/* 800F13D8-800F1688 0EBD18 02B0+00 1/1 0/0 0/0 .text            procHorseCutInit__9daAlink_cFv */
int daAlink_c::procHorseCutInit() {
    // NONMATCHING
    return 0;
}

/* 800F1688-800F1894 0EBFC8 020C+00 1/0 0/0 0/0 .text            procHorseCut__9daAlink_cFv */
int daAlink_c::procHorseCut() {
    // NONMATCHING
    return 0;
}

/* 800F1894-800F194C 0EC1D4 00B8+00 3/3 0/0 0/0 .text procHorseCutChargeReadyInit__9daAlink_cFv */
int daAlink_c::procHorseCutChargeReadyInit() {
    commonProcInit(PROC_HORSE_CUT_CHARGE_READY);
    setUpperAnimeParam(0x96, UPPER_2, &daAlinkHIO_hoCutCharge_c0::m.field_0x0);
    setFacePriBck(0xE8);
    field_0x2f96 = 2;

    setSyncRide(1);
    if (checkHorseUnderItemAnime()) {
        resetUnderAnime(UNDER_2, -1.0f);
    }

    mProcVar2.field_0x300c = daAlinkHIO_cut_c0::m.mNormalSwingDuration;
    field_0x3004 = 0;
    onNoResetFlg1(FLG1_UNK_10000000);
    return 1;
}

/* 800F194C-800F1AAC 0EC28C 0160+00 1/0 0/0 0/0 .text procHorseCutChargeReady__9daAlink_cFv */
int daAlink_c::procHorseCutChargeReady() {
    // NONMATCHING
    return 0;
}

/* 800F1AAC-800F1BA4 0EC3EC 00F8+00 3/3 0/0 0/0 .text            procHorseCutTurnInit__9daAlink_cFv
 */
int daAlink_c::procHorseCutTurnInit() {
    commonProcInit(PROC_HORSE_CUT_TURN);

    if (checkHorseUnderItemAnime()) {
        resetUnderAnime(UNDER_2, -1.0f);
    }

    setSingleAnimeParam(ANM_HORSE_CUT_TURN, &daAlinkHIO_hoCutCharge_c0::m.field_0x28);
    setCutType(43);
    setSyncRide(1);
    field_0x3478 = daAlinkHIO_hoCutCharge_c0::m.field_0x50;
    setCylAtParam(getSwordAtType(), dCcG_At_Spl_UNK_1, 3, 1, 3, field_0x3478 * 0.5f, 200.0f);
    mProcVar4.field_0x3010 = daAlinkHIO_hoCutCharge_c0::m.field_0x3E;
    voiceStart(Z2SE_AL_V_KAITEN);
    setCutWaterDropEffect();
    setHorseZeldaDamage();
    return 1;
}


/* 800F1BA4-800F1D18 0EC4E4 0174+00 1/0 0/0 0/0 .text            procHorseCutTurn__9daAlink_cFv */
int daAlink_c::procHorseCutTurn() {
    // NONMATCHING
    return 0;
}

/* 800F1D18-800F2028 0EC658 0310+00 2/2 0/0 0/0 .text
 * procHorseDamageInit__9daAlink_cFP12dCcD_GObjInf              */
int daAlink_c::procHorseDamageInit(dCcD_GObjInf* param_0) {
    // NONMATCHING
    return 0;
}

/* 800F2028-800F2150 0EC968 0128+00 1/0 0/0 0/0 .text            procHorseDamage__9daAlink_cFv */
int daAlink_c::procHorseDamage() {
    // NONMATCHING
    return 0;
}

/* 800F2150-800F21B4 0ECA90 0064+00 1/1 0/0 0/0 .text procHorseBowSubjectInit__9daAlink_cFv */
int daAlink_c::procHorseBowSubjectInit() {
    if (!commonProcInitNotSameProc(PROC_HORSE_BOW_SUBJECT)) {
        return 0;
    }

    setSyncRidePos();
    setBaseRideAnime();
    mProcVar2.field_0x300c = 0;
    setBowOrSlingStatus();
    return 1;
}

/* 800F21B4-800F224C 0ECAF4 0098+00 1/0 0/0 0/0 .text            procHorseBowSubject__9daAlink_cFv
 */
int daAlink_c::procHorseBowSubject() {
    setDoStatus(0x12);

    if (!setSyncRidePos()) {
        return 1;
    }

    if (checkHorseSpecialProc()) {
        return 1;
    }

    setBaseRideAnime();

    if (!checkNextActionHorse() && setRideSubjectAngle(current.angle.y)) {
        setBowSight();
    }

    return 1;
}

/* 800F224C-800F22A8 0ECB8C 005C+00 1/1 0/0 0/0 .text            procHorseBowMoveInit__9daAlink_cFv
 */
int daAlink_c::procHorseBowMoveInit() {
    if (!commonProcInitNotSameProc(PROC_HORSE_BOW_MOVE)) {
        return 0;
    }

    setSyncRidePos();
    setBaseRideAnime();
    setBowOrSlingStatus();
    return 1;
}

/* 800F22A8-800F2334 0ECBE8 008C+00 1/0 0/0 0/0 .text            procHorseBowMove__9daAlink_cFv */
int daAlink_c::procHorseBowMove() {
    setDoStatus(0x12);

    if (!setSyncRidePos()) {
        return 1;
    }

    if (checkHorseSpecialProc()) {
        return 1;
    }

    setBaseRideAnime();
    cancelBowMove();

    if (!checkNextActionHorse()) {
        setBodyAngleRideReadyAnime();
    }

    return 1;
}

/* 800F2334-800F2390 0ECC74 005C+00 2/2 0/0 0/0 .text            procHorseGrabMoveInit__9daAlink_cFv
 */
int daAlink_c::procHorseGrabMoveInit() {
    if (!commonProcInitNotSameProc(PROC_HORSE_GRAB_MOVE)) {
        return 0;
    }

    setSyncRidePos();
    setBaseRideAnime();
    field_0x3004 = 0;
    return 1;
}

/* 800F2390-800F2454 0ECCD0 00C4+00 1/0 0/0 0/0 .text            procHorseGrabMove__9daAlink_cFv */
int daAlink_c::procHorseGrabMove() {
    if (!setSyncRidePos()) {
        return 1;
    }

    if (checkHorseSpecialProc()) {
        return 1;
    }

    if (mGrabItemAcKeep.getActor() == NULL && checkGrabAnime()) {
        resetUpperAnime(UPPER_2, 4.0f);
    }

    setBaseRideAnime();

    if (checkGrabThrowAnime()) {
        if (checkUpperGrabItemThrow(4.0f)) {
            procHorseWaitInit();
        }
    } else {
        checkNextActionHorse();
    }

    return 1;
}

/* 800F2454-800F24C8 0ECD94 0074+00 1/1 0/0 0/0 .text procHorseBoomerangSubjectInit__9daAlink_cFv
 */
int daAlink_c::procHorseBoomerangSubjectInit() {
    if (!commonProcInitNotSameProc(PROC_HORSE_BOOMERANG_SUBJECT)) {
        return 0;
    }

    setSyncRidePos();
    setBaseRideAnime();
    initBoomerangUpperAnimeSpeed(1);
    dComIfGp_setPlayerStatus0(0, 0x80000);
    return 1;
}

/* 800F24C8-800F25B4 0ECE08 00EC+00 1/0 0/0 0/0 .text procHorseBoomerangSubject__9daAlink_cFv */
int daAlink_c::procHorseBoomerangSubject() {
    if (!checkItemActorPointer()) {
        return 1;
    }

    if (checkBoomerangReadyAnime()) {
        setDoStatus(0x12);
    }

    if (!setSyncRidePos()) {
        return 1;
    }

    if (checkHorseSpecialProc()) {
        return 1;
    }

    setBaseRideAnime();

    if (!checkNextActionHorse()) {
        if (setRideSubjectAngle(current.angle.y)) {
            setBoomerangSight();
        }
    } else {
        mSight.offDrawFlg();
    }

    return 1;
}

/* 800F25B4-800F2628 0ECEF4 0074+00 1/1 0/0 0/0 .text procHorseBoomerangMoveInit__9daAlink_cFv */
int daAlink_c::procHorseBoomerangMoveInit() {
    if (!commonProcInitNotSameProc(PROC_HORSE_BOOMERANG_MOVE)) {
        return 0;
    }

    setSyncRidePos();
    setBaseRideAnime();
    initBoomerangUpperAnimeSpeed(0);
    dComIfGp_setPlayerStatus0(0, 0x80000);
    return 1;
}

/* 800F2628-800F26F4 0ECF68 00CC+00 1/0 0/0 0/0 .text procHorseBoomerangMove__9daAlink_cFv */
int daAlink_c::procHorseBoomerangMove() {
    if (!checkItemActorPointer()) {
        return 1;
    }

    if (checkBoomerangReadyAnime()) {
        setDoStatus(0x12);
    }

    if (!setSyncRidePos()) {
        return 1;
    }

    if (checkHorseSpecialProc()) {
        return 1;
    }

    setBaseRideAnime();

    if (!checkNextActionHorse()) {
        setBodyAngleRideReadyAnime();
    }

    return 1;
}

/* 800F26F4-800F2770 0ED034 007C+00 1/1 0/0 0/0 .text procHorseHookshotSubjectInit__9daAlink_cFv
 */
int daAlink_c::procHorseHookshotSubjectInit() {
    if (!commonProcInitNotSameProc(PROC_HORSE_HOOKSHOT_SUBJECT)) {
        return 0;
    }

    setSyncRidePos();
    setBaseRideAnime();
    initHookshotUpperAnimeSpeed(1);
    setHookshotReadyMaterial();
    dComIfGp_setPlayerStatus0(0, 0x4000);
    return 1;
}

/* 800F2770-800F2824 0ED0B0 00B4+00 1/0 0/0 0/0 .text procHorseHookshotSubject__9daAlink_cFv */
int daAlink_c::procHorseHookshotSubject() {
    if (checkHookshotWait()) {
        setDoStatus(0x12);
    }

    if (!setSyncRidePos()) {
        return 1;
    }

    if (checkHorseSpecialProc()) {
        return 1;
    }

    setBaseRideAnime();

    if (!checkNextActionHorse()) {
        if (setRideSubjectAngle(current.angle.y)) {
            setHookshotSight();
        }
    } else {
        mSight.offDrawFlg();
    }

    return 1;
}

/* 800F2824-800F2898 0ED164 0074+00 1/1 0/0 0/0 .text procHorseHookshotMoveInit__9daAlink_cFv */
int daAlink_c::procHorseHookshotMoveInit() {
    if (!commonProcInitNotSameProc(PROC_HORSE_HOOKSHOT_MOVE)) {
        return 0;
    }

    setSyncRidePos();
    setBaseRideAnime();
    initHookshotUpperAnimeSpeed(0);
    dComIfGp_setPlayerStatus0(0, 0x4000);
    return 1;
}

/* 800F2898-800F2934 0ED1D8 009C+00 1/0 0/0 0/0 .text            procHorseHookshotMove__9daAlink_cFv
 */
int daAlink_c::procHorseHookshotMove() {
    cancelHookshotMove();

    if (checkHookshotWait()) {
        setDoStatus(0x12);
    }

    if (!setSyncRidePos()) {
        return 1;
    }

    if (checkHorseSpecialProc()) {
        return 1;
    }

    setBaseRideAnime();

    if (!checkNextActionHorse()) {
        setBodyAngleRideReadyAnime();
    }

    return 1;
}

/* 800F2934-800F2AD8 0ED274 01A4+00 1/1 0/0 0/0 .text procHorseBottleDrinkInit__9daAlink_cFUs */
int daAlink_c::procHorseBottleDrinkInit(u16 param_0) {
    // NONMATCHING
    return 0;
}

/* 800F2AD8-800F2B4C 0ED418 0074+00 1/0 0/0 0/0 .text            procHorseBottleDrink__9daAlink_cFv
 */
int daAlink_c::procHorseBottleDrink() {
    dComIfGp_getHorseActor();

    if (!setSyncRidePos()) {
        resetUpperAnime(UPPER_2, 3.0f);
        returnKeepItemData();
        resetSpecialEvent();
        return 1;
    }

    setBaseRideAnime();
    commonBottleDrink(1);
    return 1;
}

/* 800F2B4C-800F2C78 0ED48C 012C+00 1/1 0/0 0/0 .text procHorseKandelaarPourInit__9daAlink_cFv */
int daAlink_c::procHorseKandelaarPourInit() {
    // NONMATCHING
    return 0;
}

/* 800F2C78-800F2D84 0ED5B8 010C+00 1/0 0/0 0/0 .text procHorseKandelaarPour__9daAlink_cFv */
int daAlink_c::procHorseKandelaarPour() {
    // NONMATCHING
    return 0;
}

/* 800F2D84-800F2DE4 0ED6C4 0060+00 2/2 0/0 0/0 .text            procHorseComebackInit__9daAlink_cFv
 */
int daAlink_c::procHorseComebackInit() {
    if (!commonProcInitNotSameProc(PROC_HORSE_COMEBACK)) {
        return 0;
    }

    setSingleAnimeBase(ANM_HORSE_DIE_RECOVER);
    field_0x2fab = 0;
    setSyncRidePos();
    return 1;
}

/* 800F2DE4-800F2EE0 0ED724 00FC+00 1/0 0/0 0/0 .text            procHorseComeback__9daAlink_cFv */
int daAlink_c::procHorseComeback() {
    daPy_frameCtrl_c* frameCtrl_p = mUnderFrameCtrl;

    setSyncRidePos();
    if (checkAnmEnd(frameCtrl_p)) {
        field_0x2fab = 0x13;
        return procHorseWaitInit();
    } else if (frameCtrl_p->getFrame() >= 78.0f) {
        field_0x2fab |= 2;
    } else if (frameCtrl_p->getFrame() >= 75.0f) {
        field_0x2f93 = 5;
        field_0x2fab |= 0x10;
    } else if (frameCtrl_p->getFrame() >= 68.0f) {
        field_0x2fab |= 1;
    } else if (frameCtrl_p->checkPass(20.0f)) {
        voiceStart(Z2SE_AL_V_LANDING_FAIL_2);
    }

    return 1;
}

/* 800F2EE0-800F2F98 0ED820 00B8+00 2/2 0/0 0/0 .text            procHorseRunInit__9daAlink_cFv */
int daAlink_c::procHorseRunInit() {
    commonProcInit(PROC_HORSE_RUN);
    initForceRideHorse();
    deleteEquipItem(TRUE, FALSE);
    setSingleAnimeBaseMorf(ANM_HORSE_TAME_WAIT_B, -1.0f);
    setSyncHorsePos();
    field_0x2fab = 0;
    mProcVar4.field_0x3010 = 0;
    mProcVar5.field_0x3012 = 0;

    field_0x3478 = 1000.0f - cM_rndF(500.0f);
    mProcVar2.field_0x300c = 0;
    mProcVar3.field_0x300e = 30;
    field_0x3004 = 0;
    field_0x3002 = 0;
    mDoAud_changeSubBgmStatus(2);
    field_0x32cc = 0;
    return 1;
}


/* 800F2F98-800F3430 0ED8D8 0498+00 1/0 0/0 0/0 .text            procHorseRun__9daAlink_cFv */
int daAlink_c::procHorseRun() {
    // NONMATCHING
    return 0;
}

/* 800F3430-800F3580 0EDD70 0150+00 1/1 0/0 0/0 .text
 * procHorseHangInit__9daAlink_cFP12dCcD_GObjInfi               */
int daAlink_c::procHorseHangInit(dCcD_GObjInf* param_0, int param_1) {
    // NONMATCHING
    return 0;
}

/* 800F3580-800F36E4 0EDEC0 0164+00 1/0 0/0 0/0 .text            procHorseHang__9daAlink_cFv */
int daAlink_c::procHorseHang() {
    // NONMATCHING
    return 0;
}

/* 800F36E4-800F3754 0EE024 0070+00 1/0 0/0 0/0 .text            procHorseGetKeyInit__9daAlink_cFv
 */
int daAlink_c::procHorseGetKeyInit() {
    if (!commonProcInitNotSameProc(PROC_HORSE_GET_KEY)) {
        return 0;
    }

    deleteEquipItem(FALSE, FALSE);
    setSingleAnimeBase(ANM_KEY_CATCH);
    setSyncRidePos();
    mProcVar2.field_0x300c = 0;
    return 1;
}

/* 800F3754-800F3818 0EE094 00C4+00 1/0 0/0 0/0 .text            procHorseGetKey__9daAlink_cFv */
int daAlink_c::procHorseGetKey() {
    daPy_frameCtrl_c* frameCtrl_p = mUnderFrameCtrl;

    setSyncRidePos();
    if (checkAnmEnd(frameCtrl_p)) {
        dComIfGp_evmng_cutEnd(field_0x3184);
    } else if (frameCtrl_p->getFrame() >= 34.0f) {
        field_0x2f92 = 254;
        field_0x2f93 = 254;
        mProcVar2.field_0x300c = 1;
    } else if (frameCtrl_p->getFrame() >= 12.0f) {
        field_0x2f92 = 2;
    } else if (frameCtrl_p->getFrame() >= 5.0f) {
        field_0x2f92 = 3;
    }

    return 1;
}

/* 800F3818-800F3894 0EE158 007C+00 1/0 0/0 0/0 .text            procHorseLookDownInit__9daAlink_cFv
 */
int daAlink_c::procHorseLookDownInit() {
    if (!commonProcInitNotSameProc(PROC_HORSE_LOOK_DOWN)) {
        return 0;
    }

    if (mEquipItem != 0x103) {
        deleteEquipItem(FALSE, FALSE);
        setSwordModel();
    }

    setSingleAnimeBase(ANM_GANON_ON_HORSE);
    setSyncRidePos();
    return 1;
}

/* 800F3894-800F38E8 0EE1D4 0054+00 1/0 0/0 0/0 .text            procHorseLookDown__9daAlink_cFv */
int daAlink_c::procHorseLookDown() {
    setSyncRidePos();

    if (checkAnmEnd(mUnderFrameCtrl)) {
        dComIfGp_evmng_cutEnd(field_0x3184);
    }
    return 1;
}

/* 800F38E8-800F3998 0EE228 00B0+00 1/1 0/0 0/0 .text            procBoarRunInit__9daAlink_cFv */
int daAlink_c::procBoarRunInit() {
    commonProcInit(PROC_BOAR_RUN);
    resetUpperAnime(UPPER_2, -1.0f);
    resetUnderAnime(UNDER_2, -1.0f);

    mProcVar4.field_0x3010 = 0;
    mProcVar5.field_0x3012 = 0;
    field_0x3478 = 3000.0f - cM_rndF(1500.0f);
    setSingleAnimeBaseSpeed(ANM_HORSE_TAME_WAIT_A_TO_B, 1.0f, 4.0f);
    mProcVar3.field_0x300e = 0;

    setSyncBoarPos();
    mProcVar2.field_0x300c = 0;
    deleteEquipItem(FALSE, FALSE);
    return 1;
}


/* 800F3998-800F3BB0 0EE2D8 0218+00 1/0 0/0 0/0 .text            procBoarRun__9daAlink_cFv */
int daAlink_c::procBoarRun() {
    // NONMATCHING
    return 0;
}
