/**
 * d_a_alink_link.inc
 * General Player Human action handling
 */

#include "JSystem/J3DGraphBase/J3DDrawBuffer.h"
#include "d/actor/d_a_alink.h"
#include "d/actor/d_a_canoe.h"
#include "d/actor/d_a_tag_mstop.h"
#include "d/actor/d_a_tag_mhint.h"

/* 800CE294-800CE468 0C8BD4 01D4+00 1/1 0/0 0/0 .text checkNoSubjectModeCamera__9daAlink_cFv */
bool daAlink_c::checkNoSubjectModeCamera() {
    return dCam_getBody()->Type() == dCam_getBody()->GetCameraTypeFromCameraName("Rotary") ||
           dCam_getBody()->Type() == dCam_getBody()->GetCameraTypeFromCameraName("Rampart2") ||
           dCam_getBody()->Type() == dCam_getBody()->GetCameraTypeFromCameraName("Allay") ||
           dCam_getBody()->Type() == dCam_getBody()->GetCameraTypeFromCameraName("AllayR") ||
           dCam_getBody()->Type() == dCam_getBody()->GetCameraTypeFromCameraName("AllayR2") ||
           dCam_getBody()->Type() == dCam_getBody()->GetCameraTypeFromCameraName("AllayS") ||
           checkCargoCarry() ||
           dCam_getBody()->Type() == dCam_getBody()->GetCameraTypeFromCameraName("StreetP") ||
           dCam_getBody()->Type() == dCam_getBody()->GetCameraTypeFromCameraName("Street");
}

/* 800CE468-800CE628 0C8DA8 01C0+00 2/2 0/0 0/0 .text acceptSubjectModeChange__9daAlink_cFv */
bool daAlink_c::acceptSubjectModeChange() {
    return dCam_getBody()->ChangeModeOK(4) &&
           !checkNoSubjectModeCamera() &&
           !checkAttentionLock() &&
           !checkHorseLieAnime() &&
           !checkEventRun() &&
           !checkModeFlg(0x310040) &&
           (checkNoUpperAnime() || checkHorseTiredAnime() || checkGrabAnime() || checkWolfGrabAnime()) &&
           !(checkWolf() && checkWolfWaitSlipPolygon() && mLinkAcch.ChkGroundHit());
}

/* 800CE628-800CE728 0C8F68 0100+00 5/5 0/0 0/0 .text            checkSubjectAction__9daAlink_cFv */
int daAlink_c::checkSubjectAction() {
    if (acceptSubjectModeChange()) {
        onResetFlg0(RFLG0_UNK_4000000);

        if (dComIfGp_checkCameraAttentionStatus(field_0x317c, 0x1000)) {
            if (checkModeFlg(0x400)) {
                if (checkCanoeRide()) {
                    return procCanoeSubjectivityInit();
                } else if (checkBoardRide()) {
                    return procBoardSubjectivityInit();
                } else {
                    return procHorseSubjectivityInit();
                }
            }

            if (checkModeFlg(0x20000)) {
                return procWolfRopeSubjectivityInit();
            }

            if (checkModeFlg(0x40000)) {
                return procCoSwimSubjectivityInit();
            }

            return procCoSubjectivityInit();
        }
    }

    return 0;
}

/* 800CE728-800CE8A0 0C9068 0178+00 1/1 0/0 0/0 .text            checkBodyAngleX__9daAlink_cFs */
s16 daAlink_c::checkBodyAngleX(s16 param_0) {
    if (checkWolf() || mProcID == PROC_PEEP_SUBJECTIVITY || mProcID == PROC_HOOKSHOT_WALL_SHOOT) {
        return param_0;
    }

    Vec sp2C = lit_5908;
    sp2C.y = 0.5f * field_0x598;

    cXyz sp20;
    mDoMtx_multVecZero(mpLinkModel->getAnmMtx(1), &sp20);
    cXyz sp14;

    if (param_0 >= 0) {
        sp2C.z = 25.0f;
    } else {
        sp2C.z = -25.0f;
    }

    mDoMtx_stack_c::transS(sp20);
    concatMagneBootMtx();
    mDoMtx_stack_c::ZXYrotM(param_0, shape_angle.y, 0);
    mDoMtx_stack_c::multVec(&sp2C, &sp14);

    if (commonLineCheck(&sp20, &sp14)) {
        cXyz sp8 = sp14 - mLinkLinChk.GetCross();
        multVecMagneBootInvMtx(&sp8);

        current.pos.x -= sp8.x;
        current.pos.z -= sp8.z;
    }

    return param_0;
}

/* 800CE8A0-800CEAF4 0C91E0 0254+00 15/15 0/0 0/0 .text setBodyAngleToCamera__9daAlink_cFv */
BOOL daAlink_c::setBodyAngleToCamera() {
    if (dComIfGp_checkCameraAttentionStatus(field_0x317c, 0x10)) {
        field_0x310e = field_0x310a;
        field_0x3110 = field_0x310c;
        onEndResetFlg2(ERFLG2_UNK_20);

        s16 sp8;
        if (checkInputOnR()) {
            f32 var_f31 = 512.0f * field_0x33ac * field_0x33ac;
            if (checkWolfEyeUp()) {
                var_f31 *= 0.6f;
            }

            if (dComIfGp_checkPlayerStatus0(0, 0x200000)) {
                var_f31 /= dComIfGp_getCameraZoomScale(field_0x317c);
            }

            shape_angle.y = shape_angle.y + (var_f31 * cM_ssin(mStickAngle));
            sp8 = mBodyAngle.x + (var_f31 * cM_scos(mStickAngle));

            if (checkNotItemSinkLimit() && sp8 > 0 && sp8 > mBodyAngle.x) {
                sp8 = mBodyAngle.x;
            }
        } else {
            sp8 = mBodyAngle.x;
        }

        if (checkNotItemSinkLimit() && sp8 > 0) {
            cLib_addCalcAngleS(&sp8, 0, 5, 0x1000, 0x400);
        }

        s16 var_r29;
        if (!dComIfGp_checkPlayerStatus0(0, 0x202000) && mEquipItem == fpcNm_ITEM_IRONBALL) {
            var_r29 = -10000;
        } else {
            var_r29 = daAlinkHIO_item_c0::m.mItemFPUpMaxUnk;
        }

        mBodyAngle.x = cLib_minMaxLimit<s16>((s16)sp8, var_r29, daAlinkHIO_item_c0::m.mItemFPMaxUnk);
        checkBodyAngleX(mBodyAngle.x);
        field_0x310a = mBodyAngle.x;
        field_0x310c = shape_angle.y;
        return 1;
    }

    return 0;
}

/* 800CEAF4-800CEB58 0C9434 0064+00 9/9 0/0 0/0 .text            setSubjectMode__9daAlink_cFv */
void daAlink_c::setSubjectMode() {
    dComIfGp_setPlayerStatus0(0, 0x2000);
    seStartSystem(Z2SE_SUBJ_VIEW_IN);
}

/* 800CEB58-800CEBD8 0C9498 0080+00 2/2 0/0 0/0 .text            subjectCancelTrigger__9daAlink_cFv
 */
BOOL daAlink_c::subjectCancelTrigger() {
    if (checkWolf() || checkNotBattleStage() || !checkSwordGet() ||
        (checkModeFlg(0x40000) && !checkEquipHeavyBoots()))
    {
        return itemTriggerCheck(BTN_B);
    }

    return false;
}

/* 800CEBD8-800CECE4 0C9518 010C+00 9/9 0/0 0/0 .text            checkSubjectEnd__9daAlink_cFi */
int daAlink_c::checkSubjectEnd(BOOL i_playSound) {
    setDoStatus(0x12);

    if (checkEventRun() || checkEquipAnime() || doTrigger() || checkSetItemTrigger(fpcNm_ITEM_HAWK_EYE) || subjectCancelTrigger() || checkEndResetFlg0(ERFLG0_FORCE_SUBJECT_CANCEL) || dComIfGp_checkCameraAttentionStatus(field_0x317c, 0x2000)) {
        if (i_playSound) {
            seStartSystem(Z2SE_SUBJ_VIEW_OUT);
        }

        onResetFlg0(RFLG0_UNK_10000000);
        return true;
    }

    return false;
}

/* 800CECE4-800CED48 0C9624 0064+00 1/1 0/0 0/0 .text searchPeepObj__9daAlink_cFP10fopAc_ac_cPv */
void daAlink_c::searchPeepObj(fopAc_ac_c* i_actor, void* i_data) {
    if (fopAcM_GetName(i_actor) == PROC_KYTAG05) {
        f32 var_f31 = current.pos.abs2(i_actor->current.pos);
        if (var_f31 < field_0x3478) {
            field_0x3478 = var_f31;
            *(fopAc_ac_c**)i_data = i_actor;
        }
    }
}

/* 800CED48-800CED84 0C9688 003C+00 1/1 0/0 0/0 .text daAlink_searchPeepObj__FP10fopAc_ac_cPv */
static int daAlink_searchPeepObj(fopAc_ac_c* i_actor, void* i_data) {
    daAlink_getAlinkActorClass()->searchPeepObj(i_actor, i_data);
    return 0;
}

/* 800CED84-800CEE08 0C96C4 0084+00 2/2 0/0 0/0 .text procCoSubjectivityInit__9daAlink_cFv */
int daAlink_c::procCoSubjectivityInit() {
    commonProcInit(PROC_SUBJECTIVITY);
    mNormalSpeed = 0.0f;

    setSubjectMode();
    field_0x2fe6 = shape_angle.y;

    if (checkWolf()) {
        setSingleAnimeWolfBaseSpeed(WANM_WAIT, 0.0f, 3.0f);
    } else {
        setSingleAnimeBaseSpeed(ANM_WAIT, 0.0f, 3.0f);
    }

    return 1;
}

/* 800CEE08-800CEF70 0C9748 0168+00 1/0 0/0 0/0 .text            procCoSubjectivity__9daAlink_cFv */
int daAlink_c::procCoSubjectivity() {
    onResetFlg0(RFLG0_UNK_4000000);
    setTalkStatus();

    if (orderTalk(1)) {
        return 1;
    }

    if ((checkWolf() && checkWolfGroundSpecialMode()) || (!checkWolf() && checkGroundSpecialMode())) {
        return 1;
    }

    if (checkSubjectEnd(FALSE) || (dComIfGp_checkPlayerStatus0(0, 0x200000) && checkSetItemTrigger(fpcNm_ITEM_HAWK_EYE))) {
        seStartSystem(Z2SE_SUBJ_VIEW_OUT);
        checkWaitAction();
    } else if (!checkWolf() && (checkItemAction() || checkItemChangeFromButton())) {
        if (checkUpperReadyThrowAnime()) {
            field_0x310a = mBodyAngle.x;
        }

        return 1;
    } else {
        setBodyAngleToCamera();
    }

    return 1;
}

/* 800CEF70-800CF018 0C98B0 00A8+00 1/1 0/0 0/0 .text procCoSwimSubjectivityInit__9daAlink_cFv */
int daAlink_c::procCoSwimSubjectivityInit() {
    commonProcInit(PROC_SWIM_SUBJECTIVITY);
    mNormalSpeed = 0.0f;

    setSubjectMode();

    if (checkWolf()) {
        setSingleAnimeWolfBaseSpeed(WANM_SWIM_WAIT, daAlinkHIO_wlSwim_c0::m.field_0x88,
                                    daAlinkHIO_wlSwim_c0::m.field_0x68);
    } else {
        setSingleAnimeBaseSpeed(ANM_SWIM_WAIT, daAlinkHIO_swim_c0::m.mWaitAnmSpeed,
                                daAlinkHIO_swim_c0::m.mWaitInterpolation);
    }

    dComIfGp_setPlayerStatus0(0, 0x100000);
    mProcVar2.field_0x300c = 0;

    return 1;
}

/* 800CF018-800CF100 0C9958 00E8+00 1/0 0/0 0/0 .text procCoSwimSubjectivity__9daAlink_cFv */
int daAlink_c::procCoSwimSubjectivity() {
    onResetFlg0(RFLG0_UNK_4000000);
    setTalkStatus();

    if (orderTalk(1)) {
        return 1;
    }

    if (checkNoResetFlg0(FLG0_SWIM_UP)) {
        setSwimUpDownOffset();
    }

    if (checkSubjectEnd(FALSE)) {
        seStartSystem(Z2SE_SUBJ_VIEW_OUT);

        if (checkWolf()) {
            procWolfSwimWaitInit(0);
        } else {
            procSwimWaitInit(0);
        }
    } else {
        setBodyAngleToCamera();
    }

    return 1;
}

/* 800CF100-800CF1B8 0C9A40 00B8+00 1/1 0/0 0/0 .text procCoPeepSubjectivityInit__9daAlink_cFv */
int daAlink_c::procCoPeepSubjectivityInit() {
    commonProcInit(PROC_PEEP_SUBJECTIVITY);
    mNormalSpeed = 0.0f;

    if (checkWolf()) {
        setSingleAnimeWolfBaseSpeed(WANM_WAIT, 0.0f, 3.0f);
    } else {
        setSingleAnimeBaseSpeed(ANM_WAIT, 0.0f, 3.0f);
    }

    onPlayerNoDraw();
    setSpecialGravity(0.0f, maxFallSpeed, 0);
    speed.y = 0.0f;
    dComIfGp_setPlayerStatus0(0, 0x2000);
    field_0x3478 = 10000000.0f;
    mProcVar2.field_0x300c = shape_angle.y;

    return 1;
}

/* 800CF1B8-800CF25C 0C9AF8 00A4+00 1/0 0/0 0/0 .text procCoPeepSubjectivity__9daAlink_cFv */
int daAlink_c::procCoPeepSubjectivity() {
    if (doTrigger() || peepSubjectCancelTrigger()) {
        kytag05_class* peep = NULL;
        fopAcIt_Executor((fopAcIt_ExecutorFunc)daAlink_searchPeepObj, &peep);

        if (peep != NULL) {
            mPeepExitID = peep->getSceneListID();
        }

        if (dComIfGp_event_compulsory(this, 0, 0xFFFF)) {
            startPeepChange();
        }
    }

    return 1;
}

/* 800CF25C-800CF270 0C9B9C 0014+00 1/0 0/0 0/0 .text            checkBoardRide__9daAlink_cCFv */
u32 daAlink_c::checkBoardRide() const {
    return mRideStatus == 4;
}

/* 800CF270-800CF284 0C9BB0 0014+00 1/0 0/0 0/0 .text            checkCanoeRide__9daAlink_cCFv */
u32 daAlink_c::checkCanoeRide() const {
    return mRideStatus == 3;
}

/* 800CF284-800CF298 0C9BC4 0014+00 1/0 0/0 0/0 .text            checkHorseRide__9daAlink_cCFv */
u32 daAlink_c::checkHorseRide() const {
    return mRideStatus == 1;
}

/* 800CF298-800CF2B4 0C9BD8 001C+00 1/0 0/0 0/0 .text            getLeftItemMatrix__9daAlink_cFv */
MtxP daAlink_c::getLeftItemMatrix() {
    return mpLinkModel->getAnmMtx(field_0x30c0);
}

/* 800CF2B4-800CF2C8 0C9BF4 0014+00 1/0 0/0 0/0 .text            checkBoarRide__9daAlink_cCFv */
u32 daAlink_c::checkBoarRide() const {
    return mRideStatus == 2;
}

/* 800CF2C8-800CF2DC 0C9C08 0014+00 1/0 0/0 0/0 .text            checkSpinnerRide__9daAlink_cCFv */
u32 daAlink_c::checkSpinnerRide() const {
    return mRideStatus == 5;
}

/* 800CF2DC-800CF2F8 0C9C1C 001C+00 1/0 0/0 0/0 .text            getLeftHandMatrix__9daAlink_cFv */
MtxP daAlink_c::getLeftHandMatrix() {
    return mpLinkModel->getAnmMtx(field_0x30b8);
}

/* 800CF2F8-800CF314 0C9C38 001C+00 1/0 0/0 0/0 .text            getRightHandMatrix__9daAlink_cFv */
MtxP daAlink_c::getRightHandMatrix() {
    return mpLinkModel->getAnmMtx(field_0x30ba);
}

/* 800CF314-800CF328 0C9C54 0014+00 1/0 0/0 0/0 .text
 * onSceneChangeArea__9daAlink_cFUcUcP10fopAc_ac_c              */
void daAlink_c::onSceneChangeArea(u8 exitID, u8 exitDirection, fopAc_ac_c* scexAc) {
    mExitID = exitID;
    mExitDirection = exitDirection;
    mpScnChg = (daScex_c*)scexAc;
}

/* 800CF328-800CF344 0C9C68 001C+00 1/0 0/0 0/0 .text            getRightItemMatrix__9daAlink_cFv */
MtxP daAlink_c::getRightItemMatrix() {
    return mpLinkModel->getAnmMtx(field_0x30c2);
}

/* 800CF344-800CF380 0C9C84 003C+00 1/0 0/0 0/0 .text            checkPlayerNoDraw__9daAlink_cFv */
u32 daAlink_c::checkPlayerNoDraw() {
    return dComIfGp_checkCameraAttentionStatus(field_0x317c, 2) ||
           checkNoResetFlg0(FLG0_PLAYER_NO_DRAW);
}

/* 800CF380-800CFC3C 0C9CC0 08BC+00 1/1 0/0 0/0 .text            __ct__9daAlink_cFv */
daAlink_c::daAlink_c()
    : mAnmHeap3(0), mAnmHeap4(0), mFaceBtpHeap(0x800), mFaceBtkHeap(0x400), mFaceBckHeap(0xC00),
      mAnmHeap9(0x800) {}
