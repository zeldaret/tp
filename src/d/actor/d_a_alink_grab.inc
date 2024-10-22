#include "d/actor/d_a_alink.h"
#include "d/d_com_inf_game.h"
#include "d/actor/d_a_obj_carry.h"
#include "d/d_bg_w.h"
#include "d/actor/d_a_cow.h"

/* 800E3830-800E3858 0DE170 0028+00 2/2 0/0 0/0 .text daAlink_checkLightBallA__FP10fopAc_ac_c */
static bool daAlink_checkLightBallA(fopAc_ac_c* p_actor) {
    if (fopAcM_GetName(p_actor) == PROC_Obj_Carry &&
        static_cast<daObjCarry_c*>(p_actor)->getType() == daObjCarry_c::TYPE_BALL_S)
    {
        return true;
    }
    return false;
}

/* 800E3858-800E3880 0DE198 0028+00 2/2 0/0 0/0 .text daAlink_checkLightBallB__FP10fopAc_ac_c */
static bool daAlink_checkLightBallB(fopAc_ac_c* p_actor) {
    if (fopAcM_GetName(p_actor) == PROC_Obj_Carry &&
        static_cast<daObjCarry_c*>(p_actor)->getType() == daObjCarry_c::TYPE_BALL_S_2)
    {
        return true;
    }
    return false;
}

/* 800E3880-800E38EC 0DE1C0 006C+00 1/1 0/0 0/0 .text daAlink_searchLightBall__FP10fopAc_ac_cPv */
static fopAc_ac_c* daAlink_searchLightBall(fopAc_ac_c* p_actor, void* param_1) {
    if ((daPy_py_c::checkCarryStartLightBallA() && daAlink_checkLightBallA(p_actor)) ||
        (daPy_py_c::checkCarryStartLightBallB() && daAlink_checkLightBallB(p_actor)))
    {
        return p_actor;
    }
    return NULL;
}

/* 800E38EC-800E3994 0DE22C 00A8+00 1/1 0/0 0/0 .text            checkGrabLineCheck__9daAlink_cFv */
BOOL daAlink_c::checkGrabLineCheck() {
    // NONMATCHING
    return 0;
}

/* 800E3994-800E3A14 0DE2D4 0080+00 1/0 0/0 0/0 .text
 * setGrabCollisionOffset__9daAlink_cFffP13cBgS_PolyInfo        */
void daAlink_c::setGrabCollisionOffset(f32 param_0, f32 param_1, cBgS_PolyInfo* param_2) {
    if (param_2 != NULL) {
        mPolyInfo4.SetPolyInfo(*param_2);
    } else {
        mPolyInfo4.ClearPi();
    }

    f32 tmp_08 = 0.8f;
    field_0x342c = tmp_08 * param_0;
    field_0x3430 = tmp_08 * param_1;
}

/* 800E3A14-800E3A9C 0DE354 0088+00 1/0 0/0 0/0 .text exchangeGrabActor__9daAlink_cFP10fopAc_ac_c
 */
BOOL daAlink_c::exchangeGrabActor(fopAc_ac_c* p_actor) {
    fopAc_ac_c* actor = mGrabItemAcKeep.getActor();
    if (actor == NULL) {
        return false;
    }

    fopAcM_cancelCarryNow(actor);
    actor->shape_angle.z = 0;
    actor->shape_angle.x = 0;

    if (checkGrabCarryActor()) {
        actor->current.angle.z = 0;
        actor->current.angle.x = 0;
    }

    setGrabItemActor(p_actor);
    return true;
}

/* 800E3A9C-800E3BCC 0DE3DC 0130+00 1/0 0/0 0/0 .text setForceGrab__9daAlink_cFP10fopAc_ac_cii */
BOOL daAlink_c::setForceGrab(fopAc_ac_c* p_actor, int param_1, int param_2) {
    if (((param_1 != 0 || !checkEventRun()) && !checkWolf()) &&
        (((mEquipItem == NO_ITEM || (param_2 != 0 && checkHookshotItem(mEquipItem)))) &&
         ((checkModeFlg(MODE_UNK_10000000) &&
           (checkHorseNoUpperAnime() || checkHorseTurnAnime())) ||
          param_2 != 0 && checkHookshotAnime())))
    {
        deleteEquipItem(TRUE, FALSE);
        setGrabItemActor(p_actor);
        field_0x33e4 = 38.0f;
        setGrabUpperAnime(daAlinkHIO_basic_c0::m.mAnmBlendFactor);
        return true;
    }

    return false;
}

/* 800E3BCC-800E3C1C 0DE50C 0050+00 2/2 0/0 0/0 .text            getGrabThrowRate__9daAlink_cFv */
f32 daAlink_c::getGrabThrowRate() {
    if (checkHeavyStateOn(1, 1)) {
        return 0.6f * mHeavySpeedMultiplier;
    }

    return 0.6f;
}

/* 800E3C1C-800E3C6C 0DE55C 0050+00 3/3 0/0 0/0 .text            checkGrabThrowAnime__9daAlink_cCFv
 */
BOOL daAlink_c::checkGrabThrowAnime() const {
    return checkGrabUpThrowAnime() || checkGrabSideThrowAnime() || checkGrabHeavyThrowAnime();
}

/* 800E3C6C-800E3C9C 0DE5AC 0030+00 25/25 0/0 0/0 .text            checkGrabAnime__9daAlink_cCFv */
BOOL daAlink_c::checkGrabAnime() const {
    return checkGrabAnimeUp() || checkGrabAnimeSide() || checkGrabAnimeCarry();
}

/* 800E3C9C-800E3CF4 0DE5DC 0058+00 5/5 0/0 0/0 .text checkGrabAnimeAndThrow__9daAlink_cCFv */
BOOL daAlink_c::checkGrabAnimeAndThrow() const {
    return checkGrabAnime() || checkGrabThrowAnime();
}

/* 800E3CF4-800E3D1C 0DE634 0028+00 10/10 0/0 0/0 .text            checkGrabCarryActor__9daAlink_cFv
 */
BOOL daAlink_c::checkGrabCarryActor() {
    return mGrabItemAcKeep.getActor() != NULL &&
           fopAcM_CheckCarryType(mGrabItemAcKeep.getActor(), fopAcM_CARRY_TYPE_8);
}

/* 800E3D1C-800E3D6C 0DE65C 0050+00 1/1 0/0 0/0 .text checkGrabSlowMoveActor__9daAlink_cFv */
BOOL daAlink_c::checkGrabSlowMoveActor() {
    // NONMATCHING
    return 0;
}

/* 800E3D6C-800E3D94 0DE6AC 0028+00 1/1 0/0 0/0 .text            checkGrabHeavyActor__9daAlink_cFv
 */
BOOL daAlink_c::checkGrabHeavyActor() {
    return mGrabItemAcKeep.getActor() != NULL &&
           fopAcM_CheckCarryType(mGrabItemAcKeep.getActor(), fopAcM_CARRY_HEAVY);
}

/* 800E3D94-800E3DBC 0DE6D4 0028+00 2/2 0/0 0/0 .text            checkGrabSideActor__9daAlink_cFv */
BOOL daAlink_c::checkGrabSideActor() {
    return mGrabItemAcKeep.getActor() != NULL &&
           fopAcM_CheckCarryType(mGrabItemAcKeep.getActor(), fopAcM_CARRY_SIDE);
}

/* 800E3DBC-800E3F20 0DE6FC 0164+00 5/5 0/0 0/0 .text            setGrabUpperAnime__9daAlink_cFf */
void daAlink_c::setGrabUpperAnime(f32 param_0){// NONMATCHING
}

/* 800E3F20-800E3F50 0DE860 0030+00 8/8 0/0 0/0 .text            checkGrabRooster__9daAlink_cFv */
BOOL daAlink_c::checkGrabRooster() {
    if (mGrabItemAcKeep.getActor() != NULL &&
        (fopAcM_GetName(mGrabItemAcKeep.getActor()) == PROC_NI ||
         fopAcM_GetName(mGrabItemAcKeep.getActor()) == PROC_NPC_TKJ2))
    {
        return true;
    }

    return false;
}

/* ############################################################################################## */
/* 80425628-80425634 052348 000C+00 0/1 0/0 0/0 .bss             @4421 */
#pragma push
#pragma force_active on
static u8 lit_4421[12];
#pragma pop

/* 80425634-80425640 052354 000C+00 2/3 0/0 0/0 .bss             l_wolfRopeBaseAnime */
static Vec l_wolfRopeBaseAnime;

/* 80425640-8042564C 052360 000C+00 0/1 0/0 0/0 .bss             @14255 */
#pragma push
#pragma force_active on
static u8 lit_14255[12];
#pragma pop

/* 8042564C-80425658 05236C 000C+00 0/1 0/0 0/0 .bss             grabCarryOffset0$14254 */
#pragma push
#pragma force_active on
static u8 grabCarryOffset0[12];
#pragma pop

/* 80425658-80425664 052378 000C+00 0/1 0/0 0/0 .bss             @14259 */
#pragma push
#pragma force_active on
static u8 lit_14259[12];
#pragma pop

/* 80425664-80425670 052384 000C+00 0/1 0/0 0/0 .bss             grabCarryOffset1$14258 */
#pragma push
#pragma force_active on
static u8 grabCarryOffset1[12];
#pragma pop

/* 80425670-8042567C 052390 000C+00 0/1 0/0 0/0 .bss             @14263 */
#pragma push
#pragma force_active on
static u8 lit_14263[12];
#pragma pop

/* 8042567C-80425688 05239C 000C+00 0/1 0/0 0/0 .bss             grabCarryOffset2$14262 */
#pragma push
#pragma force_active on
static u8 grabCarryOffset2[12];
#pragma pop

/* 80425688-80425694 0523A8 000C+00 0/1 0/0 0/0 .bss             @14267 */
#pragma push
#pragma force_active on
static u8 lit_14267[12];
#pragma pop

/* 80425694-804256A0 0523B4 000C+00 0/1 0/0 0/0 .bss             grabCarryOffset3$14266 */
#pragma push
#pragma force_active on
static u8 grabCarryOffset3[12];
#pragma pop

/* 800E3F50-800E4BD4 0DE890 0C84+00 1/1 0/0 0/0 .text            setGrabItemPos__9daAlink_cFv */
void daAlink_c::setGrabItemPos() {
    // NONMATCHING
}

/* 800E4BD4-800E4DEC 0DF514 0218+00 16/16 0/0 0/0 .text            freeGrabItem__9daAlink_cFv */
void daAlink_c::freeGrabItem() {
    // NONMATCHING
}

/* 800E4DEC-800E4FA8 0DF72C 01BC+00 1/1 0/0 0/0 .text            setGrabUpperSpeedRate__9daAlink_cFv
 */
void daAlink_c::setGrabUpperSpeedRate() {
    // NONMATCHING
}

/* 800E4FA8-800E5150 0DF8E8 01A8+00 7/7 0/0 0/0 .text            setCarryArmAngle__9daAlink_cFff */
void daAlink_c::setCarryArmAngle(f32 param_0, f32 param_1){// NONMATCHING
}

/* 800E5150-800E5170 0DFA90 0020+00 1/1 0/0 0/0 .text            checkGrabNotThrow__9daAlink_cFv */
BOOL daAlink_c::checkGrabNotThrow() {
    return checkGrabCarryActor();
}

/* 800E5170-800E53AC 0DFAB0 023C+00 1/1 0/0 0/0 .text            checkNextActionGrab__9daAlink_cFv
 */
BOOL daAlink_c::checkNextActionGrab() {
    // NONMATCHING
    return 0;
}

/* 800E53AC-800E53F8 0DFCEC 004C+00 2/2 0/0 0/0 .text            initGrabNextMode__9daAlink_cFv */
void daAlink_c::initGrabNextMode() {
    if (!checkGrabAnime()) {
        setGrabUpperAnime(-1.0f);
    }

    checkNextAction(0);
}

/* 800E53F8-800E57AC 0DFD38 03B4+00 3/3 0/0 0/0 .text            setGrabItemThrow__9daAlink_cFv */
void daAlink_c::setGrabItemThrow() {
    // NONMATCHING
}

/* 800E57AC-800E5830 0E00EC 0084+00 2/2 0/0 0/0 .text checkUpperGrabItemThrow__9daAlink_cFf */
BOOL daAlink_c::checkUpperGrabItemThrow(f32 param_0) {
    // NONMATCHING
    return 0;
}

/* 800E5830-800E5B6C 0E0170 033C+00 2/2 0/0 0/0 .text
 * putObjLineCheck__9daAlink_cFR11dBgS_LinChkP4cXyzP10fopAc_ac_c */
void daAlink_c::putObjLineCheck(dBgS_LinChk& param_0, cXyz* param_1, fopAc_ac_c* param_2) {
    // NONMATCHING
}

/* 800E5B6C-800E5BB4 0E04AC 0048+00 3/3 0/0 0/0 .text grabLineCheck__9daAlink_cFP4cXyzP4cXyz */
bool daAlink_c::grabLineCheck(cXyz* i_start, cXyz* i_end) {
    mObjLinChk.Set(i_start, i_end, mGrabItemAcKeep.getActor());
    return dComIfG_Bgsp().LineCross(&mObjLinChk);
}

/* 800E5BB4-800E5CBC 0E04F4 0108+00 6/6 0/0 0/0 .text setGrabItemActor__9daAlink_cFP10fopAc_ac_c
 */
void daAlink_c::setGrabItemActor(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 800E5CBC-800E5EC8 0E05FC 020C+00 2/2 0/0 0/0 .text            procGrabReadyInit__9daAlink_cFv */
int daAlink_c::procGrabReadyInit() {
    // NONMATCHING
    return 0;
}

/* 800E5EC8-800E5FD0 0E0808 0108+00 1/0 0/0 0/0 .text            procGrabReady__9daAlink_cFv */
int daAlink_c::procGrabReady() {
    // NONMATCHING
    return 0;
}

/* 800E5FD0-800E6230 0E0910 0260+00 1/1 0/0 0/0 .text            procGrabUpInit__9daAlink_cFv */
int daAlink_c::procGrabUpInit() {
    // NONMATCHING
    return 0;
}

/* 800E6230-800E637C 0E0B70 014C+00 1/0 0/0 0/0 .text            procGrabUp__9daAlink_cFv */
int daAlink_c::procGrabUp() {
    // NONMATCHING
    return 0;
}

/* 800E637C-800E63F0 0E0CBC 0074+00 1/0 0/0 0/0 .text            procGrabMiss__9daAlink_cFv */
int daAlink_c::procGrabMiss() {
    // NONMATCHING
    return 0;
}

/* 800E63F0-800E65F8 0E0D30 0208+00 1/1 0/0 0/0 .text            procGrabThrowInit__9daAlink_cFi */
int daAlink_c::procGrabThrowInit(int param_0) {
    // NONMATCHING
    return 0;
}

/* 800E65F8-800E672C 0E0F38 0134+00 1/0 0/0 0/0 .text            procGrabThrow__9daAlink_cFv */
int daAlink_c::procGrabThrow() {
    // NONMATCHING
    return 0;
}

/* 800E672C-800E6914 0E106C 01E8+00 2/2 0/0 0/0 .text            procGrabPutInit__9daAlink_cFv */
int daAlink_c::procGrabPutInit() {
    // NONMATCHING
    return 0;
}

/* 800E6914-800E6A9C 0E1254 0188+00 1/0 0/0 0/0 .text            procGrabPut__9daAlink_cFv */
int daAlink_c::procGrabPut() {
    // NONMATCHING
    return 0;
}

/* 800E6A9C-800E6C34 0E13DC 0198+00 2/2 0/0 0/0 .text            procGrabWaitInit__9daAlink_cFv */
int daAlink_c::procGrabWaitInit() {
    // NONMATCHING
    return 0;
}

/* 800E6C34-800E6D6C 0E1574 0138+00 1/0 0/0 0/0 .text            procGrabWait__9daAlink_cFv */
int daAlink_c::procGrabWait() {
    // NONMATCHING
    return 0;
}

/* 800E6D6C-800E6E0C 0E16AC 00A0+00 2/2 0/0 0/0 .text            procGrabReboundInit__9daAlink_cFi
 */
int daAlink_c::procGrabReboundInit(int param_0) {
    // NONMATCHING
    return 0;
}

/* 800E6E0C-800E6EEC 0E174C 00E0+00 1/0 0/0 0/0 .text            procGrabRebound__9daAlink_cFv */
int daAlink_c::procGrabRebound() {
    // NONMATCHING
    return 0;
}

/* 800E6EEC-800E6FE0 0E182C 00F4+00 2/2 0/0 0/0 .text            procGrabStandInit__9daAlink_cFv */
int daAlink_c::procGrabStandInit() {
    // NONMATCHING
    return 0;
}

/* 800E6FE0-800E70C0 0E1920 00E0+00 1/0 0/0 0/0 .text            procGrabStand__9daAlink_cFv */
int daAlink_c::procGrabStand() {
    // NONMATCHING
    return 0;
}

/* 800E70C0-800E70FC 0E1A00 003C+00 1/1 0/0 0/0 .text
 * checkInsectActorName__9daAlink_cFP10fopAc_ac_c               */
BOOL daAlink_c::checkInsectActorName(fopAc_ac_c* insectActor) {
    s16 insectName = fopAcM_GetName(insectActor);

    for (int i = 0; i < 12; i++) {
        if (insectName == l_insectNameList[i]) {
            return true;
        }
    }
    return false;
}

/* 800E70FC-800E71D4 0E1A3C 00D8+00 2/2 0/0 0/0 .text            procInsectCatchInit__9daAlink_cFv
 */
int daAlink_c::procInsectCatchInit() {
    // NONMATCHING
    return 0;
}

/* 800E71D4-800E7254 0E1B14 0080+00 1/0 0/0 0/0 .text            procInsectCatch__9daAlink_cFv */
int daAlink_c::procInsectCatch() {
    daPy_frameCtrl_c* tmp = &mUnderFrameCtrl[0];

    if (tmp->checkAnmEnd()) {
        checkNextAction(0);
    } else {
        if (tmp->checkPass(field_0x3478)) {
            fopAc_ac_c* tmp2 = field_0x280c.getActor();
            if (tmp2 != NULL) {
                fopAcM_setCarryNow(tmp2, 0);
            }
        }
    }
    return true;
}

/* 800E7254-800E7460 0E1B94 020C+00 2/2 0/0 0/0 .text            procPickUpInit__9daAlink_cFv */
int daAlink_c::procPickUpInit() {
    // NONMATCHING
    return 0;
}

/* 800E7460-800E75EC 0E1DA0 018C+00 1/0 0/0 0/0 .text            procPickUp__9daAlink_cFv */
int daAlink_c::procPickUp() {
    // NONMATCHING
    return 0;
}

/* 800E75EC-800E76E0 0E1F2C 00F4+00 3/3 0/0 0/0 .text            procPickPutInit__9daAlink_cFi */
int daAlink_c::procPickPutInit(int param_0) {
    // NONMATCHING
    return 0;
}

/* 800E76E0-800E7894 0E2020 01B4+00 1/0 0/0 0/0 .text            procPickPut__9daAlink_cFv */
int daAlink_c::procPickPut() {
    // NONMATCHING
    return 0;
}

/* 800E7894-800E794C 0E21D4 00B8+00 2/2 0/0 0/0 .text checkSetChainPullAnime__9daAlink_cFs */
void daAlink_c::checkSetChainPullAnime(s16 param_0){// NONMATCHING
}

/* 800E794C-800E7994 0E228C 0048+00 3/3 0/0 0/0 .text            getChainStickAngleY__9daAlink_cCFs
 */
s16 daAlink_c::getChainStickAngleY(s16 param_0) const {
    s16 angle = field_0x2fe2 - param_0;

    if (angle >= 0x3800 && angle < 0x7F80) {
        return param_0 + 0x7F80;
    } else if (angle <= -0x3800 && angle > -0x7F80) {
        return param_0 - 0x7F80;
    }

    return field_0x2fe2;
}

/* 800E7994-800E79F8 0E22D4 0064+00 1/1 0/0 0/0 .text            checkChainEmphasys__9daAlink_cFv */
u8 daAlink_c::checkChainEmphasys() {
    // NONMATCHING
    return 0;
}

/* 800E79F8-800E7AEC 0E2338 00F4+00 4/4 0/0 0/0 .text            searchFmChainPos__9daAlink_cFv */
BOOL daAlink_c::searchFmChainPos() {
    // NONMATCHING
    return 0;
}

/* 800E7AEC-800E7BD0 0E242C 00E4+00 0/0 1/1 0/0 .text
 * setFmChainPosFromOut__9daAlink_cFP10fopAc_ac_cP4cXyzi        */
void daAlink_c::setFmChainPosFromOut(fopAc_ac_c* param_0, cXyz* param_1, int param_2) {
    // NONMATCHING
}

/* 800E7BD0-800E7C30 0E2510 0060+00 1/0 0/0 0/0 .text checkChainBlockPushPull__9daAlink_cFv */
bool daAlink_c::checkChainBlockPushPull() {
    if (checkFmChainGrabAnime()) {
        fopAc_ac_c* actor = field_0x2844.getActor();
        if (actor != NULL) {
            s16 name = fopAcM_GetName(actor);
            if (name == PROC_Obj_ChainBlock || name == PROC_Obj_SwChain ||
                name == PROC_Obj_ChainWall)
            {
                return true;
            }
        }
    }
    return false;
}

/* 800E7C30-800E7CC0 0E2570 0090+00 2/2 0/0 0/0 .text            procFmChainUpInit__9daAlink_cFv */
int daAlink_c::procFmChainUpInit() {
    // NONMATCHING
    return 0;
}

/* 800E7CC0-800E7DD8 0E2600 0118+00 1/0 0/0 0/0 .text            procFmChainUp__9daAlink_cFv */
int daAlink_c::procFmChainUp() {
    // NONMATCHING
    return 0;
}

/* 800E7DD8-800E7E50 0E2718 0078+00 2/1 0/0 0/0 .text procFmChainStrongPullInit__9daAlink_cFv */
int daAlink_c::procFmChainStrongPullInit() {
    // NONMATCHING
    return 0;
}

/* 800E7E50-800E7ED0 0E2790 0080+00 1/0 0/0 0/0 .text            procFmChainStrongPull__9daAlink_cFv
 */
int daAlink_c::procFmChainStrongPull() {
    // NONMATCHING
    return 0;
}

/* 800E7ED0-800E7EE4 0E2810 0014+00 9/9 0/0 0/0 .text            setWallGrabStatus__9daAlink_cFUcUc
 */
void daAlink_c::setWallGrabStatus(u8 param_0, u8 param_1) {
    // NONMATCHING
}

/* 800E7EE4-800E7EF4 0E2824 0010+00 2/2 0/0 0/0 .text            getWallGrabStatus__9daAlink_cFv */
int daAlink_c::getWallGrabStatus() {
    return dComIfGp_getRStatus();
}

/* 800E7EF4-800E7F18 0E2834 0024+00 1/1 0/0 0/0 .text            wallGrabTrigger__9daAlink_cFv */
BOOL daAlink_c::wallGrabTrigger() {
    return itemTriggerCheck(BTN_R);
}

/* 800E7F18-800E7F3C 0E2858 0024+00 4/4 0/0 0/0 .text            wallGrabButton__9daAlink_cFv */
BOOL daAlink_c::wallGrabButton() {
    return itemButtonCheck(BTN_R);
}

/* 800E7F3C-800E80A4 0E287C 0168+00 4/4 0/0 0/0 .text
 * setPushPullKeepData__9daAlink_cFQ29dBgW_Base13PushPullLabeli */
int daAlink_c::setPushPullKeepData(dBgW_Base::PushPullLabel i_label, int param_1) {
    if (i_label != dBgW::PPLABEL_NONE) {
        if (checkPowerGloveGet()) {
            cLib_onBit<dBgW::PushPullLabel>(i_label, dBgW::PPLABEL_HEAVY);
        }

        if (field_0x3198) {
            cLib_onBit<dBgW::PushPullLabel>(i_label, dBgW::PPLABEL_4);
        }
    }

    fopAc_ac_c* pp_actor = dComIfG_Bgsp().PushPullCallBack(mPolyInfo1, this, shape_angle.y, i_label);
    if (pp_actor == NULL) {
        return 0;
    }

    cXyz unused;
    if (i_label != dBgW::PPLABEL_NONE || param_1) {
        if (pp_actor->shape_angle.y != mProcVar2.field_0x300c) {
            s16 var_r28 = pp_actor->shape_angle.y - mProcVar2.field_0x300c;
            mProcVar3.field_0x300e += var_r28;

            current.pos.x = field_0x37c8.x + field_0x347c * cM_ssin(mProcVar3.field_0x300e);
            current.pos.z = field_0x37c8.z + field_0x347c * cM_scos(mProcVar3.field_0x300e);
            shape_angle.y += var_r28;
            current.angle.y += var_r28;
        }

        current.pos.x += pp_actor->current.pos.x - field_0x37c8.x;
        current.pos.z += pp_actor->current.pos.z - field_0x37c8.z;
    }

    field_0x37c8 = pp_actor->current.pos;
    mProcVar2.field_0x300c = pp_actor->shape_angle.y;
    return 1;
}

/* 800E80A4-800E8148 0E29E4 00A4+00 2/2 0/0 0/0 .text checkPushPullTurnBlock__9daAlink_cFv */
void daAlink_c::checkPushPullTurnBlock() {
    // NONMATCHING
}

/* 800E8148-800E8298 0E2A88 0150+00 1/1 0/0 0/0 .text            checkPullBehindWall__9daAlink_cFv
 */
void daAlink_c::checkPullBehindWall() {
    // NONMATCHING
}

/* 800E8298-800E82B0 0E2BD8 0018+00 3/3 0/0 0/0 .text            offGoatStopGame__9daAlink_cFv */
void daAlink_c::offGoatStopGame() {
    if (mSpecialMode != SMODE_GOAT_STOP) {
        return;
    }

    mSpecialMode = 0;
}

/* 800E82B0-800E8314 0E2BF0 0064+00 4/4 0/0 0/0 .text
 * checkGoatCatchActor__9daAlink_cFP10fopAc_ac_c                */
BOOL daAlink_c::checkGoatCatchActor(fopAc_ac_c* param_0) {
    s16 name = fopAcM_GetName(param_0);
    return name == PROC_E_GOB || (name == PROC_OBJ_GRA && checkSpecialNpc(param_0)) ||
           name == PROC_COW;
}

/* 800E8314-800E8334 0E2C54 0020+00 2/2 0/0 0/0 .text            getGoatCatchDistance2__9daAlink_cFv
 */
f32 daAlink_c::getGoatCatchDistance2() {
    if (fopAcM_GetName(field_0x27f4) == PROC_B_MGN) {
        return 1000000.0f;
    }

    return 90000.0f;
}

/* 800E8334-800E8354 0E2C74 0020+00 3/3 0/0 0/0 .text            endPushPull__9daAlink_cFv */
void daAlink_c::endPushPull() {
    checkWaitAction();
}

/* 800E8354-800E8428 0E2C94 00D4+00 2/2 0/0 0/0 .text            getPushPullAnimeSpeed__9daAlink_cFv
 */
void daAlink_c::getPushPullAnimeSpeed() {
    // NONMATCHING
}

/* 800E8428-800E857C 0E2D68 0154+00 4/4 0/0 0/0 .text procCoPushPullWaitInit__9daAlink_cFi */
int daAlink_c::procCoPushPullWaitInit(int param_0) {
    // NONMATCHING
    return 0;
}

/* 800E857C-800E875C 0E2EBC 01E0+00 1/0 0/0 0/0 .text            procCoPushPullWait__9daAlink_cFv */
int daAlink_c::procCoPushPullWait() {
    // NONMATCHING
    return 0;
}

/* 800E875C-800E89F0 0E309C 0294+00 2/2 0/0 0/0 .text            procCoPushMoveInit__9daAlink_cFii
 */
int daAlink_c::procCoPushMoveInit(int param_0, int param_1) {
    // NONMATCHING
    return 0;
}

/* 800E89F0-800E8D1C 0E3330 032C+00 1/0 0/0 0/0 .text            procCoPushMove__9daAlink_cFv */
int daAlink_c::procCoPushMove() {
    // NONMATCHING
    return 0;
}

/* 800E8D1C-800E8F44 0E365C 0228+00 2/2 0/0 0/0 .text            procPullMoveInit__9daAlink_cFi */
int daAlink_c::procPullMoveInit(int param_0) {
    // NONMATCHING
    return 0;
}

/* 800E8F44-800E91B0 0E3884 026C+00 1/0 0/0 0/0 .text            procPullMove__9daAlink_cFv */
int daAlink_c::procPullMove() {
    // NONMATCHING
    return 0;
}

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
    if (mProcID == PROC_GOAT_CATCH && mProcVar5.field_0x3012 == 0) {
        mProcVar5.field_0x3012 = 1;
        dComIfGp_event_reset();
    }
}

/* 800E9210-800E9344 0E3B50 0134+00 2/2 0/0 0/0 .text
 * setGoatStopGameFail__9daAlink_cFP10fopAc_ac_c                */
void daAlink_c::setGoatStopGameFail(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 800E9344-800E9434 0E3C84 00F0+00 1/1 0/0 0/0 .text            procGoatMoveInit__9daAlink_cFv */
int daAlink_c::procGoatMoveInit() {
    if (!commonProcInitNotSameProc(PROC_GOAT_MOVE)) {
        return 0;
    }

    if (checkZeroSpeedF()) {
        onModeFlg(1);
    }

    mNormalSpeed = 0.0f;
    field_0x37c8 = current.pos;
    field_0x2f98 = 3;
    current.angle.y = shape_angle.y + -0x4000;
    field_0x594 = daAlinkHIO_atnMove_c0::m.mMaxSpeed;

    setSingleAnimeBase(ANM_ATN_COW);
    mProcVar2.field_0x300c = 0;

    fopAc_ac_c* goat_p = (fopAc_ac_c*)fopAcIt_Judge((fopAcIt_JudgeFunc)daAlink_searchGoat, NULL);
    if (goat_p != NULL) {
        field_0x280c.setData(goat_p);
    }

    mProcVar3.field_0x300e = 0;
    deleteEquipItem(FALSE, FALSE);
    return 1;
}

/* 800E9434-800E9894 0E3D74 0460+00 1/0 0/0 0/0 .text            procGoatMove__9daAlink_cFv */
int daAlink_c::procGoatMove() {
    // NONMATCHING
    return 0;
}

/* 800E9894-800E9BD0 0E41D4 033C+00 3/3 0/0 0/0 .text procGoatCatchInit__9daAlink_cFP10fopAc_ac_cf
 */
int daAlink_c::procGoatCatchInit(fopAc_ac_c* param_0, f32 param_1) {
    // NONMATCHING
    return 0;
}

/* 800E9BD0-800EA2A8 0E4510 06D8+00 1/0 0/0 0/0 .text            procGoatCatch__9daAlink_cFv */
int daAlink_c::procGoatCatch() {
    // NONMATCHING
    return 0;
}

/* 800EA2A8-800EA3AC 0E4BE8 0104+00 2/2 0/0 0/0 .text            procGoatStrokeInit__9daAlink_cFv */
int daAlink_c::procGoatStrokeInit() {
    if (mEquipItem != NO_ITEM) {
        return procPreActionUnequipInit(PROC_GOAT_STROKE, field_0x27f4);
    }

    commonProcInit(PROC_GOAT_STROKE);
    field_0x280c.setData(field_0x27f4);
    setSingleAnimeBase(ANM_COW_STROKE);

    static_cast<daCow_c*>(field_0x280c.getActor())->setNaderu();
    mNormalSpeed = 0.0f;

    if ((s16)(fopAcM_searchActorAngleY(field_0x27f4, this) - field_0x27f4->shape_angle.y) > 0) {
        shape_angle.y = field_0x27f4->shape_angle.y - 0x4000;
    } else {
        shape_angle.y = field_0x27f4->shape_angle.y + 0x4000;
    }

    current.pos.x = field_0x27f4->current.pos.x - cM_ssin(shape_angle.y) * 100.0f;
    current.pos.z = field_0x27f4->current.pos.z - cM_scos(shape_angle.y) * 100.0f;
    return 1;
}


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

    mNormalSpeed = 0.0f;
    field_0x2f98 = 3;
    current.angle.y = shape_angle.y + -0x4000;
    field_0x594 = daAlinkHIO_atnMove_c0::m.mMaxSpeed;
    setSingleAnimeBase(ANM_ATN_RIGHT);
    mProcVar2.field_0x300c = 1;
    mProcVar3.field_0x300e = 0;
    return 1;
}

/* 800EA4CC-800EA844 0E4E0C 0378+00 1/0 0/0 0/0 .text            procGoronMove__9daAlink_cFv */
int daAlink_c::procGoronMove() {
    // NONMATCHING
    return 0;
}
