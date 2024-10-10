/**
 * d_a_alink_canoe.inc
 * Player Canoe riding handling
 */

#include "d/actor/d_a_canoe.h"

/* 800F3BB0-800F3BDC 0EE4F0 002C+00 1/1 0/0 2/2 .text            getCanoeMaxSpeed__9daAlink_cCFv */
f32 daAlink_c::getCanoeMaxSpeed() const {
    if (checkCanoeSlider()) {
        return daAlinkHIO_canoe_c0::m.field_0x3C;
    }

    return daAlinkHIO_canoe_c0::m.field_0x24;
}

/* 800F3BDC-800F3BEC 0EE51C 0010+00 0/0 0/0 1/1 .text            getCanoeBackMaxSpeed__9daAlink_cCFv
 */
f32 daAlink_c::getCanoeBackMaxSpeed() const {
    return daAlinkHIO_canoe_c0::m.mBackMaxSpeed;
}

/* 800F3BEC-800F3C18 0EE52C 002C+00 0/0 0/0 1/1 .text            getCanoeCres__9daAlink_cCFv */
f32 daAlink_c::getCanoeCres() const {
    if (checkCanoeSlider()) {
        return daAlinkHIO_canoe_c0::m.field_0x44;
    }

    return daAlinkHIO_canoe_c0::m.field_0x28;
}

/* 800F3C18-800F3C44 0EE558 002C+00 2/2 0/0 0/0 .text            getCanoeSpeedRate__9daAlink_cCFv */
f32 daAlink_c::getCanoeSpeedRate() const {
    if (checkCanoeSlider()) {
        return daAlinkHIO_canoe_c0::m.field_0x40;
    }

    return daAlinkHIO_canoe_c0::m.field_0x20;
}

/* 800F3C44-800F3CCC 0EE584 0088+00 0/0 0/0 1/1 .text            getCanoeMaxRotSpeed__9daAlink_cCFv
 */
s16 daAlink_c::getCanoeMaxRotSpeed() const {
    // NONMATCHING
}

/* 800F3CCC-800F3CD8 0EE60C 000C+00 1/1 0/0 1/1 .text getCanoeLocalPaddleTop__9daAlink_cFv */
cXyz* daAlink_c::getCanoeLocalPaddleTop() {
    return (cXyz*)&localPaddleTop;
}

/* 800F3CD8-800F3CF8 0EE618 0020+00 3/3 0/0 0/0 .text daAlink_searchCanoe__FP10fopAc_ac_cPv */
static fopAc_ac_c* daAlink_searchCanoe(fopAc_ac_c* param_0, void* param_1) {
    if (fopAcM_GetName(param_0) == PROC_CANOE &&
        static_cast<daCanoe_c*>(param_0)->getModel() != NULL) {
        return param_0;
    }

    return NULL;
}

/* 800F3CF8-800F3D58 0EE638 0060+00 0/0 2/2 0/0 .text            checkCanoeRideTandem__9daAlink_cFv
 */
BOOL daAlink_c::checkCanoeRideTandem() {
    daCanoe_c* canoe = (daCanoe_c*)mRideAcKeep.getActor();

    if (checkCanoeRide() && canoe != NULL && canoe->checkTandem()) {
        return true;
    }

    return false;
}

/* 800F3D58-800F3DA0 0EE698 0048+00 7/7 0/0 0/0 .text checkFishingRodAndLureItem__9daAlink_cCFv */
BOOL daAlink_c::checkFishingRodAndLureItem() const {
    return checkFisingRodLure() || checkFishingRodItem(mEquipItem);
}

/* 800F3DA0-800F3DFC 0EE6E0 005C+00 4/4 0/0 0/0 .text            initFishingRodHand__9daAlink_cFv */
void daAlink_c::initFishingRodHand() {
    field_0x2f94 = 0x65;
    field_0x2f95 = 0x65;
    mItemVar0.field_0x3018 = 1;

    if (mEquipItem == JEWEL_WORM_ROD || mEquipItem == WORM_ROD) {
        mItemMode = 0x74;
    } else if (mEquipItem == JEWEL_BEE_ROD || mEquipItem == BEE_ROD) {
        mItemMode = 0x76;
    } else {
        mItemMode = 0xFF;
    }
}

/* 800F3DFC-800F3E4C 0EE73C 0050+00 1/1 0/0 1/1 .text            getCanoePaddleMatrix__9daAlink_cFv
 */
MtxP daAlink_c::getCanoePaddleMatrix() {
    mDoMtx_stack_c::copy(getRightItemMatrix());
    f32 tmp_0 = 0.0f;
    mDoMtx_stack_c::transM(tmp_0, tmp_0, 25.0f);
    return mDoMtx_stack_c::get();
}

/* 800F3E4C-800F3EB8 0EE78C 006C+00 0/0 0/0 4/4 .text
 * checkFishingRodGrab__9daAlink_cCFP10fopAc_ac_c               */
BOOL daAlink_c::checkFishingRodGrab(fopAc_ac_c* param_0) const {
    return checkFishingRodAndLureItem() && mItemAcKeep.getID() == fopAcM_GetID(param_0);
}

/* 800F3EB8-800F3F38 0EE7F8 0080+00 0/0 0/0 2/2 .text
 * checkCanoePaddleGrab__9daAlink_cCFP10fopAc_ac_c              */
BOOL daAlink_c::checkCanoePaddleGrab(fopAc_ac_c* param_0) const {
    return mEquipItem == noentry79 && checkCanoeRideOwn(param_0);
}

/* 800F3F38-800F3FC4 0EE878 008C+00 0/0 0/0 1/1 .text checkCanoeFishingRodGrabOrPut__9daAlink_cCFv
 */
BOOL daAlink_c::checkCanoeFishingRodGrabOrPut() const {
    return checkFisingRodLure() && checkCanoeRide() &&
           (checkEquipAnime() || mProcID == PROC_CANOE_PADDLE_PUT ||
            mProcID == PROC_CANOE_PADDLE_GRAB || mProcID == PROC_CANOE_ROD_GRAB);
}

/* 800F3FC4-800F4008 0EE904 0044+00 2/2 0/0 0/0 .text            initCanoeRide__9daAlink_cFv */
void daAlink_c::initCanoeRide() {
    mProcVar3.field_0x300e.z = 1;
    field_0x3588 = l_waitBaseAnime;
    field_0x384c = (cXyz*)&l_canoeBaseAnime;
    mRideStatus = 3;
    mProcVar3.field_0x300e.y = 0;
}

/* 800F4008-800F40E4 0EE948 00DC+00 2/2 0/0 0/0 .text            checkCanoeJumpRide__9daAlink_cFv */
BOOL daAlink_c::checkCanoeJumpRide() {
    daCanoe_c* canoe = NULL;

    if (field_0x850[0].ChkCoHit()) {
        canoe = (daCanoe_c*)field_0x850[0].GetCoHitAc();
    } else if (field_0x850[1].ChkCoHit()) {
        canoe = (daCanoe_c*)field_0x850[1].GetCoHitAc();
    }

    if (speed.y < 0.0f && canoe != NULL && fopAcM_GetName(canoe) == PROC_CANOE &&
        canoe->checkJumpRideFlg() && !checkDeadHP() &&
        (mProcID != PROC_FALL || mProcVar3.field_0x300e.y != 0)) {
        return procCanoeJumpRideInit(canoe);
    }

    return 0;
}

/* 800F40E4-800F4140 0EEA24 005C+00 2/2 0/0 0/0 .text            setArmReelAnime__9daAlink_cFv */
void daAlink_c::setArmReelAnime() {
    setUpperAnimeBaseSpeed(0x1FB, 1.0f, -1.0f);
    mUpperFrameCtrl[2].setRate(0.0f);
    mNowAnmPackUpper[2].setRatio(1.0f);
    field_0x2f97 = 8;
    offNoResetFlg1(FLG1_UNK_8000);
}

/* 800F4140-800F4490 0EEA80 0350+00 1/1 0/0 0/0 .text            setFishingWaitAction__9daAlink_cFv
 */
void daAlink_c::setFishingWaitAction() {
    // NONMATCHING
}

/* 800F4490-800F4564 0EEDD0 00D4+00 3/3 0/0 0/0 .text            setFishGetFace__9daAlink_cFv */
void daAlink_c::setFishGetFace() {
    if (field_0x2fc8 == 1) {
        setFacePriBck(0x140);
    } else if (field_0x2fc8 == 2) {
        setFacePriTexture(FTANM_UNK_7A);
        setFacePriBck(0x143);
    } else if (field_0x2fc8 == 3) {
        setFacePriTexture(FTANM_UNK_7B);
        setFacePriBck(0x146);
    } else if (field_0x2fc8 == 4) {
        setFacePriTexture(FTANM_UNK_7C);
        setFacePriBck(0x149);
    } else {
        resetFacePriAnime();
    }
}

/* 800F4564-800F459C 0EEEA4 0038+00 3/3 0/0 0/0 .text
 * setRideCanoeBasePos__9daAlink_cFP10fopAc_ac_c                */
void daAlink_c::setRideCanoeBasePos(fopAc_ac_c* param_0) {
    field_0x37c8.x = 0.0f;
    field_0x37c8.y = 25.0f;
    field_0x37c8.z = -35.0f;

    if (static_cast<daCanoe_c*>(param_0)->checkTandem()) {
        field_0x37c8.z += 175.0f;
    }
}

/* 800F459C-800F47D8 0EEEDC 023C+00 20/20 0/0 0/0 .text            setSyncCanoePos__9daAlink_cFv */
void daAlink_c::setSyncCanoePos() {
    // NONMATCHING
}

/* 800F47D8-800F4924 0EF118 014C+00 19/19 0/0 0/0 .text            canoeCommon__9daAlink_cFv */
void daAlink_c::canoeCommon() {
    // NONMATCHING
}

/* 800F4924-800F4A50 0EF264 012C+00 10/10 0/0 0/0 .text checkNextActionCanoe__9daAlink_cFv */
int daAlink_c::checkNextActionCanoe() {
    if ((!checkFishingRodAndLureItem() || mItemAcKeep.getActor() == NULL ||
         static_cast<dmg_rod_class*>(mItemAcKeep.getActor())->checkRodEquipPermission()) &&
        checkNextActionFromButton()) {
        return 1;
    }

    if (checkBowAnime()) {
        return checkNextActionBow();
    } else if (checkBoomerangAnimeAndReturnWait()) {
        return checkNextActionBoomerang();
    } else if (checkHookshotAnime()) {
        return checkNextActionHookshot();
    } else if (checkGrabAnimeAndThrow()) {
        return procCanoeGrabMoveInit();
    } else if (checkCanoeFishingWaitAnime()) {
        return procCanoeFishingWaitInit();
    } else {
        return procCanoeWaitInit(0);
    }
}

/* 800F4A50-800F4B90 0EF390 0140+00 2/2 0/0 0/0 .text            procCanoeRideInit__9daAlink_cFv */
int daAlink_c::procCanoeRideInit() {
    commonProcInit(PROC_CANOE_RIDE);
    setHeavyBoots(0);
    mRideAcKeep.setData(field_0x27f4);
    deleteEquipItem(0, 0);
    daCanoe_c* canoe = (daCanoe_c*)field_0x27f4;

    setSingleAnime(ANM_HANG_CLIMB_TOP, daAlinkHIO_wallCatch_c0::m.mClimbAnm.mSpeed,
                   daAlinkHIO_wallCatch_c0::m.mClimbStartFrame,
                   daAlinkHIO_wallCatch_c0::m.mClimbAnm.mEndFrame,
                   daAlinkHIO_wallCatch_c0::m.mClimbAnm.mInterpolation);
    setSpecialGravity(0.0f, maxFallSpeed, 0);

    f32 tmp_0 = 0.0f;
    mNormalSpeed = tmp_0;
    speed.y = tmp_0;
    setRideCanoeBasePos(canoe);

    if ((s16)(fopAcM_searchActorAngleY(canoe, this) - canoe->shape_angle.y) > 0) {
        shape_angle.y = canoe->shape_angle.y - 0x4000;
        mProcVar0.field_0x3008 = 0;
        field_0x37c8.x = 55.0f;
    } else {
        shape_angle.y = canoe->shape_angle.y + 0x4000;
        mProcVar0.field_0x3008 = 1;
        field_0x37c8.x = -55.0f;
    }

    mDoMtx_multVec(canoe->getModelMtx(), &field_0x37c8, &current.pos);
    current.angle.y = shape_angle.y;

    initCanoeRide();
    mProcVar3.field_0x300e.x = 0x80;
    swimOutAfter(1);
    return 1;
}

/* 800F4B90-800F4C78 0EF4D0 00E8+00 1/0 0/0 0/0 .text            procCanoeRide__9daAlink_cFv */
int daAlink_c::procCanoeRide() {
    daCanoe_c* canoe = (daCanoe_c*)mRideAcKeep.getActor();
    if (canoe == NULL) {
        return checkNextAction(0);
    }

    mDoMtx_multVec(canoe->getModelMtx(), &field_0x37c8, &current.pos);

    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;
    if (frameCtrl->checkAnmEnd()) {
        procCanoeWaitInit(1);
    } else if (frameCtrl->getFrame() < 9.0f) {
        mProcVar3.field_0x300e.x += 0x180;

        if (mProcVar0.field_0x3008 == 0) {
            canoe->incShapeAngleZ(-mProcVar3.field_0x300e.x);
        } else {
            canoe->incShapeAngleZ(mProcVar3.field_0x300e.x);
        }
        canoe->incShapeOffsetY(-4.0f);
    }

    return 1;
}

/* 800F4C78-800F4D84 0EF5B8 010C+00 4/4 0/0 0/0 .text
 * procCanoeJumpRideInit__9daAlink_cFP10fopAc_ac_c              */
int daAlink_c::procCanoeJumpRideInit(fopAc_ac_c* param_0) {
    BOOL var_r31;
    daCanoe_c* canoe = (daCanoe_c*)param_0;

    commonProcInit(PROC_CANOE_JUMP_RIDE);

    if (canoe == NULL) {
        canoe = (daCanoe_c*)fopAcIt_Judge((fopAcIt_JudgeFunc)daAlink_searchCanoe, NULL);
        var_r31 = true;
    } else {
        var_r31 = false;
    }

    setHeavyBoots(0);
    setSingleAnimeParam(ANM_JUMP_LAND, &daAlinkHIO_autoJump_c0::m.mLandAnm);
    deleteEquipItem(0, 0);

    mRideAcKeep.setData(canoe);
    setSpecialGravity(0.0f, maxFallSpeed, 0);

    f32 tmp_0 = 0.0f;
    mNormalSpeed = tmp_0;
    speed.y = tmp_0;
    setRideCanoeBasePos(canoe);
    mDoMtx_multVec(canoe->getModelMtx(), &field_0x37c8, &current.pos);
    current.angle.y = shape_angle.y;

    initCanoeRide();
    if (var_r31) {
        procCanoeWaitInit(2);
    }

    return 1;
}

/* 800F4D84-800F4DF8 0EF6C4 0074+00 1/0 0/0 0/0 .text            procCanoeJumpRide__9daAlink_cFv */
int daAlink_c::procCanoeJumpRide() {
    daCanoe_c* canoe = (daCanoe_c*)mRideAcKeep.getActor();
    if (canoe == NULL) {
        return checkNextAction(0);
    }

    mDoMtx_multVec(canoe->getModelMtx(), &field_0x37c8, &current.pos);

    if (mUnderFrameCtrl[0].checkAnmEnd()) {
        procCanoeWaitInit(1);
    }

    return 1;
}

/* 800F4DF8-800F5048 0EF738 0250+00 2/2 0/0 0/0 .text            procCanoeGetOffInit__9daAlink_cFv
 */
int daAlink_c::procCanoeGetOffInit() {
    // NONMATCHING
}

/* 800F5048-800F51E4 0EF988 019C+00 1/1 0/0 0/0 .text            procCanoeGetOff__9daAlink_cFv */
int daAlink_c::procCanoeGetOff() {
    // NONMATCHING
}

/* 800F51E4-800F542C 0EFB24 0248+00 15/15 0/0 0/0 .text            procCanoeWaitInit__9daAlink_cFi
 */
int daAlink_c::procCanoeWaitInit(int param_0) {
    // NONMATCHING
}

/* 800F542C-800F571C 0EFD6C 02F0+00 1/0 0/0 0/0 .text            procCanoeWait__9daAlink_cFv */
int daAlink_c::procCanoeWait() {
    // NONMATCHING
}

/* 800F571C-800F5A1C 0F005C 0300+00 3/3 0/0 0/0 .text            procCanoeRowInit__9daAlink_cFi */
int daAlink_c::procCanoeRowInit(int param_0) {
    // NONMATCHING
}

/* 800F5A1C-800F5D04 0F035C 02E8+00 1/0 0/0 0/0 .text            procCanoeRow__9daAlink_cFv */
int daAlink_c::procCanoeRow() {
    // NONMATCHING
}

/* 800F5D04-800F5DB8 0F0644 00B4+00 1/1 0/0 0/0 .text procCanoePaddleShiftInit__9daAlink_cFi */
int daAlink_c::procCanoePaddleShiftInit(int param_0) {
    // NONMATCHING
}

/* 800F5DB8-800F5EA8 0F06F8 00F0+00 1/0 0/0 0/0 .text            procCanoePaddleShift__9daAlink_cFv
 */
int daAlink_c::procCanoePaddleShift() {
    // NONMATCHING
}

/* 800F5EA8-800F5FEC 0F07E8 0144+00 3/3 0/0 0/0 .text procCanoePaddlePutInit__9daAlink_cFi */
int daAlink_c::procCanoePaddlePutInit(int param_0) {
    // NONMATCHING
}

/* 800F5FEC-800F6140 0F092C 0154+00 1/0 0/0 0/0 .text            procCanoePaddlePut__9daAlink_cFv */
int daAlink_c::procCanoePaddlePut() {
    // NONMATCHING
}

/* 800F6140-800F6188 0F0A80 0048+00 2/2 0/0 0/0 .text procCanoePaddleGrabInit__9daAlink_cFv */
int daAlink_c::procCanoePaddleGrabInit() {
    // NONMATCHING
}

/* 800F6188-800F6320 0F0AC8 0198+00 1/0 0/0 0/0 .text            procCanoePaddleGrab__9daAlink_cFv
 */
int daAlink_c::procCanoePaddleGrab() {
    // NONMATCHING
}

/* 800F6320-800F6394 0F0C60 0074+00 1/1 0/0 0/0 .text            procCanoeRodGrabInit__9daAlink_cFv
 */
int daAlink_c::procCanoeRodGrabInit() {
    // NONMATCHING
}

/* 800F6394-800F6464 0F0CD4 00D0+00 1/0 0/0 0/0 .text            procCanoeRodGrab__9daAlink_cFv */
int daAlink_c::procCanoeRodGrab() {
    // NONMATCHING
}

/* 800F6464-800F659C 0F0DA4 0138+00 6/6 0/0 0/0 .text procCanoeFishingWaitInit__9daAlink_cFv */
int daAlink_c::procCanoeFishingWaitInit() {
    // NONMATCHING
}

/* 800F659C-800F67C0 0F0EDC 0224+00 1/0 0/0 0/0 .text            procCanoeFishingWait__9daAlink_cFv
 */
int daAlink_c::procCanoeFishingWait() {
    // NONMATCHING
}

/* 800F67C0-800F6874 0F1100 00B4+00 1/1 0/0 0/0 .text procCanoeFishingReelInit__9daAlink_cFv */
int daAlink_c::procCanoeFishingReelInit() {
    // NONMATCHING
}

/* 800F6874-800F69D4 0F11B4 0160+00 1/0 0/0 0/0 .text            procCanoeFishingReel__9daAlink_cFv
 */
int daAlink_c::procCanoeFishingReel() {
    // NONMATCHING
}

/* 800F69D4-800F6A70 0F1314 009C+00 1/1 0/0 0/0 .text procCanoeFishingGetInit__9daAlink_cFv */
int daAlink_c::procCanoeFishingGetInit() {
    // NONMATCHING
}

/* 800F6A70-800F6BEC 0F13B0 017C+00 1/0 0/0 0/0 .text            procCanoeFishingGet__9daAlink_cFv
 */
int daAlink_c::procCanoeFishingGet() {
    // NONMATCHING
}

/* 800F6BEC-800F6C30 0F152C 0044+00 1/1 0/0 0/0 .text procCanoeSubjectivityInit__9daAlink_cFv */
int daAlink_c::procCanoeSubjectivityInit() {
    // NONMATCHING
}

/* 800F6C30-800F6D10 0F1570 00E0+00 1/0 0/0 0/0 .text            procCanoeSubjectivity__9daAlink_cFv
 */
int daAlink_c::procCanoeSubjectivity() {
    // NONMATCHING
}

/* 800F6D10-800F6D64 0F1650 0054+00 1/1 0/0 0/0 .text procCanoeBowSubjectInit__9daAlink_cFv */
int daAlink_c::procCanoeBowSubjectInit() {
    // NONMATCHING
}

/* 800F6D64-800F6DF0 0F16A4 008C+00 1/0 0/0 0/0 .text            procCanoeBowSubject__9daAlink_cFv
 */
int daAlink_c::procCanoeBowSubject() {
    // NONMATCHING
}

/* 800F6DF0-800F6E44 0F1730 0054+00 1/1 0/0 0/0 .text            procCanoeBowMoveInit__9daAlink_cFv
 */
int daAlink_c::procCanoeBowMoveInit() {
    // NONMATCHING
}

/* 800F6E44-800F6EB0 0F1784 006C+00 1/0 0/0 0/0 .text            procCanoeBowMove__9daAlink_cFv */
int daAlink_c::procCanoeBowMove() {
    // NONMATCHING
}

/* 800F6EB0-800F6EFC 0F17F0 004C+00 2/2 0/0 0/0 .text            procCanoeGrabMoveInit__9daAlink_cFv
 */
int daAlink_c::procCanoeGrabMoveInit() {
    // NONMATCHING
}

/* 800F6EFC-800F6FA4 0F183C 00A8+00 1/0 0/0 0/0 .text            procCanoeGrabMove__9daAlink_cFv */
int daAlink_c::procCanoeGrabMove() {
    // NONMATCHING
}

/* 800F6FA4-800F7010 0F18E4 006C+00 1/1 0/0 0/0 .text procCanoeBoomerangSubjectInit__9daAlink_cFv
 */
int daAlink_c::procCanoeBoomerangSubjectInit() {
    // NONMATCHING
}

/* 800F7010-800F70F0 0F1950 00E0+00 1/0 0/0 0/0 .text procCanoeBoomerangSubject__9daAlink_cFv */
int daAlink_c::procCanoeBoomerangSubject() {
    // NONMATCHING
}

/* 800F70F0-800F715C 0F1A30 006C+00 1/1 0/0 0/0 .text procCanoeBoomerangMoveInit__9daAlink_cFv */
int daAlink_c::procCanoeBoomerangMoveInit() {
    // NONMATCHING
}

/* 800F715C-800F7208 0F1A9C 00AC+00 1/0 0/0 0/0 .text procCanoeBoomerangMove__9daAlink_cFv */
int daAlink_c::procCanoeBoomerangMove() {
    // NONMATCHING
}

/* 800F7208-800F7274 0F1B48 006C+00 1/1 0/0 0/0 .text procCanoeHookshotSubjectInit__9daAlink_cFv
 */
int daAlink_c::procCanoeHookshotSubjectInit() {
    // NONMATCHING
}

/* 800F7274-800F731C 0F1BB4 00A8+00 1/0 0/0 0/0 .text procCanoeHookshotSubject__9daAlink_cFv */
int daAlink_c::procCanoeHookshotSubject() {
    // NONMATCHING
}

/* 800F731C-800F7388 0F1C5C 006C+00 1/1 0/0 0/0 .text procCanoeHookshotMoveInit__9daAlink_cFv */
int daAlink_c::procCanoeHookshotMoveInit() {
    // NONMATCHING
}

/* 800F7388-800F7404 0F1CC8 007C+00 1/0 0/0 0/0 .text            procCanoeHookshotMove__9daAlink_cFv
 */
int daAlink_c::procCanoeHookshotMove() {
    // NONMATCHING
}

/* 800F7404-800F7550 0F1D44 014C+00 1/1 0/0 0/0 .text procCanoeBottleDrinkInit__9daAlink_cFUs */
int daAlink_c::procCanoeBottleDrinkInit(u16 param_0) {
    // NONMATCHING
}

/* 800F7550-800F75BC 0F1E90 006C+00 1/0 0/0 0/0 .text            procCanoeBottleDrink__9daAlink_cFv
 */
int daAlink_c::procCanoeBottleDrink() {
    // NONMATCHING
}

/* 800F75BC-800F7684 0F1EFC 00C8+00 1/1 0/0 0/0 .text procCanoeKandelaarPourInit__9daAlink_cFv */
int daAlink_c::procCanoeKandelaarPourInit() {
    // NONMATCHING
}

/* 800F7684-800F7708 0F1FC4 0084+00 1/0 0/0 0/0 .text procCanoeKandelaarPour__9daAlink_cFv */
int daAlink_c::procCanoeKandelaarPour() {
    // NONMATCHING
}

/* 800F7708-800F7760 0F2048 0058+00 2/2 0/0 0/0 .text setGroundFishingRodActor__9daAlink_cFv */
void daAlink_c::setGroundFishingRodActor() {
    // NONMATCHING
}

/* 800F7760-800F7814 0F20A0 00B4+00 1/1 0/0 0/0 .text            procFishingCastInit__9daAlink_cFv
 */
int daAlink_c::procFishingCastInit() {
    // NONMATCHING
}

/* 800F7814-800F7988 0F2154 0174+00 1/0 0/0 0/0 .text            procFishingCast__9daAlink_cFv */
int daAlink_c::procFishingCast() {
    // NONMATCHING
}

/* 800F7988-800F7AA8 0F22C8 0120+00 1/1 0/0 0/0 .text            procFishingFoodInit__9daAlink_cFv
 */
int daAlink_c::procFishingFoodInit() {
    // NONMATCHING
}

/* 800F7AA8-800F7C50 0F23E8 01A8+00 1/0 0/0 0/0 .text            procFishingFood__9daAlink_cFv */
int daAlink_c::procFishingFood() {
    // NONMATCHING
}
