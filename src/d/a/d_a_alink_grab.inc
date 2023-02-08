/* 800E3830-800E3858 0DE170 0028+00 2/2 0/0 0/0 .text daAlink_checkLightBallA__FP10fopAc_ac_c */
static bool daAlink_checkLightBallA(fopAc_ac_c* p_actor) {
    if (fopAcM_GetName(p_actor) == PROC_Obj_Carry &&
        static_cast<daObjCarry_c*>(p_actor)->getType() == daObjCarry_c::TYPE_BALL_S) {
        return true;
    }
    return false;
}

/* 800E3858-800E3880 0DE198 0028+00 2/2 0/0 0/0 .text daAlink_checkLightBallB__FP10fopAc_ac_c */
static bool daAlink_checkLightBallB(fopAc_ac_c* p_actor) {
    if (fopAcM_GetName(p_actor) == PROC_Obj_Carry &&
        static_cast<daObjCarry_c*>(p_actor)->getType() == daObjCarry_c::TYPE_BALL_S_2) {
        return true;
    }
    return false;
}

/* 800E3880-800E38EC 0DE1C0 006C+00 1/1 0/0 0/0 .text daAlink_searchLightBall__FP10fopAc_ac_cPv */
static fopAc_ac_c* daAlink_searchLightBall(fopAc_ac_c* p_actor, void* param_1) {
    if ((daPy_py_c::checkCarryStartLightBallA() && daAlink_checkLightBallA(p_actor)) ||
        (daPy_py_c::checkCarryStartLightBallB() && daAlink_checkLightBallB(p_actor))) {
        return p_actor;
    }
    return NULL;
}

/* 800E38EC-800E3994 0DE22C 00A8+00 1/1 0/0 0/0 .text            checkGrabLineCheck__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkGrabLineCheck() {
    nofralloc
#include "asm/d/a/d_a_alink/checkGrabLineCheck__9daAlink_cFv.s"
}
#pragma pop

/* 800E3994-800E3A14 0DE2D4 0080+00 1/0 0/0 0/0 .text
 * setGrabCollisionOffset__9daAlink_cFffP13cBgS_PolyInfo        */
void daAlink_c::setGrabCollisionOffset(f32 param_0, f32 param_1, cBgS_PolyInfo* param_2) {
    if (param_2 != NULL) {
        mPolyInfo4.SetPolyInfo(*param_2);
    } else {
        mPolyInfo4.ClearPi();
    }

    f32 tmp_08 = lit_14064;
    field_0x342c = tmp_08 * param_0;
    field_0x3430 = tmp_08 * param_1;
}

/* 800E3A14-800E3A9C 0DE354 0088+00 1/0 0/0 0/0 .text exchangeGrabActor__9daAlink_cFP10fopAc_ac_c
 */
bool daAlink_c::exchangeGrabActor(fopAc_ac_c* p_actor) {
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
bool daAlink_c::setForceGrab(fopAc_ac_c* p_actor, int param_1, int param_2) {
    if (((param_1 != 0 || !checkEventRun()) && !i_checkWolf()) &&
        (((mEquipItem == NO_ITEM || (param_2 != 0 && checkHookshotItem(mEquipItem)))) &&
         ((i_checkModeFlg(MODE_UNK_10000000) &&
           (checkHorseNoUpperAnime() || checkHorseTurnAnime())) ||
          param_2 != 0 && checkHookshotAnime()))) {
        deleteEquipItem(TRUE, FALSE);
        setGrabItemActor(p_actor);
        field_0x33e4 = lit_8785;
        setGrabUpperAnime(daAlinkHIO_basic_c0::m.mAnmBlendFactor);
        return true;
    }

    return false;
}

/* 800E3BCC-800E3C1C 0DE50C 0050+00 2/2 0/0 0/0 .text            getGrabThrowRate__9daAlink_cFv */
f32 daAlink_c::getGrabThrowRate() {
    if (checkHeavyStateOn(1, 1)) {
        return lit_6023 * mHeavySpeedMultiplier;
    }

    return lit_6023;
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
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkGrabSlowMoveActor() {
    nofralloc
#include "asm/d/a/d_a_alink/checkGrabSlowMoveActor__9daAlink_cFv.s"
}
#pragma pop

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
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setGrabUpperAnime(f32 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setGrabUpperAnime__9daAlink_cFf.s"
}
#pragma pop

/* 800E3F20-800E3F50 0DE860 0030+00 8/8 0/0 0/0 .text            checkGrabRooster__9daAlink_cFv */
BOOL daAlink_c::checkGrabRooster() {
    if (mGrabItemAcKeep.getActor() != NULL &&
        (fopAcM_GetName(mGrabItemAcKeep.getActor()) == PROC_NI ||
         fopAcM_GetName(mGrabItemAcKeep.getActor()) == PROC_NPC_TKJ2)) {
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
static f32 l_wolfRopeBaseAnime[3];

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
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setGrabItemPos() {
    nofralloc
#include "asm/d/a/d_a_alink/setGrabItemPos__9daAlink_cFv.s"
}
#pragma pop

/* 800E4BD4-800E4DEC 0DF514 0218+00 16/16 0/0 0/0 .text            freeGrabItem__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::freeGrabItem() {
    nofralloc
#include "asm/d/a/d_a_alink/freeGrabItem__9daAlink_cFv.s"
}
#pragma pop

/* 800E4DEC-800E4FA8 0DF72C 01BC+00 1/1 0/0 0/0 .text            setGrabUpperSpeedRate__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setGrabUpperSpeedRate() {
    nofralloc
#include "asm/d/a/d_a_alink/setGrabUpperSpeedRate__9daAlink_cFv.s"
}
#pragma pop

/* 800E4FA8-800E5150 0DF8E8 01A8+00 7/7 0/0 0/0 .text            setCarryArmAngle__9daAlink_cFff */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setCarryArmAngle(f32 param_0, f32 param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/setCarryArmAngle__9daAlink_cFff.s"
}
#pragma pop

/* 800E5150-800E5170 0DFA90 0020+00 1/1 0/0 0/0 .text            checkGrabNotThrow__9daAlink_cFv */
BOOL daAlink_c::checkGrabNotThrow() {
    return checkGrabCarryActor();
}

/* 800E5170-800E53AC 0DFAB0 023C+00 1/1 0/0 0/0 .text            checkNextActionGrab__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkNextActionGrab() {
    nofralloc
#include "asm/d/a/d_a_alink/checkNextActionGrab__9daAlink_cFv.s"
}
#pragma pop

/* 800E53AC-800E53F8 0DFCEC 004C+00 2/2 0/0 0/0 .text            initGrabNextMode__9daAlink_cFv */
void daAlink_c::initGrabNextMode() {
    if (!checkGrabAnime()) {
        setGrabUpperAnime(lit_6041);
    }

    checkNextAction(0);
}

/* 800E53F8-800E57AC 0DFD38 03B4+00 3/3 0/0 0/0 .text            setGrabItemThrow__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setGrabItemThrow() {
    nofralloc
#include "asm/d/a/d_a_alink/setGrabItemThrow__9daAlink_cFv.s"
}
#pragma pop

/* 800E57AC-800E5830 0E00EC 0084+00 2/2 0/0 0/0 .text checkUpperGrabItemThrow__9daAlink_cFf */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkUpperGrabItemThrow(f32 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/checkUpperGrabItemThrow__9daAlink_cFf.s"
}
#pragma pop

/* 800E5830-800E5B6C 0E0170 033C+00 2/2 0/0 0/0 .text
 * putObjLineCheck__9daAlink_cFR11dBgS_LinChkP4cXyzP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::putObjLineCheck(dBgS_LinChk& param_0, cXyz* param_1, fopAc_ac_c* param_2) {
    nofralloc
#include "asm/d/a/d_a_alink/putObjLineCheck__9daAlink_cFR11dBgS_LinChkP4cXyzP10fopAc_ac_c.s"
}
#pragma pop

/* 800E5B6C-800E5BB4 0E04AC 0048+00 3/3 0/0 0/0 .text grabLineCheck__9daAlink_cFP4cXyzP4cXyz */
void daAlink_c::grabLineCheck(cXyz* i_start, cXyz* i_end) {
    mObjLinChk.Set(i_start, i_end, mGrabItemAcKeep.getActor());
    dComIfG_Bgsp().LineCross(&mObjLinChk);
}

/* 800E5BB4-800E5CBC 0E04F4 0108+00 6/6 0/0 0/0 .text setGrabItemActor__9daAlink_cFP10fopAc_ac_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setGrabItemActor(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setGrabItemActor__9daAlink_cFP10fopAc_ac_c.s"
}
#pragma pop

/* 800E5CBC-800E5EC8 0E05FC 020C+00 2/2 0/0 0/0 .text            procGrabReadyInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procGrabReadyInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procGrabReadyInit__9daAlink_cFv.s"
}
#pragma pop

/* 800E5EC8-800E5FD0 0E0808 0108+00 1/0 0/0 0/0 .text            procGrabReady__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procGrabReady() {
    nofralloc
#include "asm/d/a/d_a_alink/procGrabReady__9daAlink_cFv.s"
}
#pragma pop

/* 800E5FD0-800E6230 0E0910 0260+00 1/1 0/0 0/0 .text            procGrabUpInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procGrabUpInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procGrabUpInit__9daAlink_cFv.s"
}
#pragma pop

/* 800E6230-800E637C 0E0B70 014C+00 1/0 0/0 0/0 .text            procGrabUp__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procGrabUp() {
    nofralloc
#include "asm/d/a/d_a_alink/procGrabUp__9daAlink_cFv.s"
}
#pragma pop

/* 800E637C-800E63F0 0E0CBC 0074+00 1/0 0/0 0/0 .text            procGrabMiss__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procGrabMiss() {
    nofralloc
#include "asm/d/a/d_a_alink/procGrabMiss__9daAlink_cFv.s"
}
#pragma pop

/* 800E63F0-800E65F8 0E0D30 0208+00 1/1 0/0 0/0 .text            procGrabThrowInit__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procGrabThrowInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procGrabThrowInit__9daAlink_cFi.s"
}
#pragma pop

/* 800E65F8-800E672C 0E0F38 0134+00 1/0 0/0 0/0 .text            procGrabThrow__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procGrabThrow() {
    nofralloc
#include "asm/d/a/d_a_alink/procGrabThrow__9daAlink_cFv.s"
}
#pragma pop

/* 800E672C-800E6914 0E106C 01E8+00 2/2 0/0 0/0 .text            procGrabPutInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procGrabPutInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procGrabPutInit__9daAlink_cFv.s"
}
#pragma pop

/* 800E6914-800E6A9C 0E1254 0188+00 1/0 0/0 0/0 .text            procGrabPut__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procGrabPut() {
    nofralloc
#include "asm/d/a/d_a_alink/procGrabPut__9daAlink_cFv.s"
}
#pragma pop

/* 800E6A9C-800E6C34 0E13DC 0198+00 2/2 0/0 0/0 .text            procGrabWaitInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procGrabWaitInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procGrabWaitInit__9daAlink_cFv.s"
}
#pragma pop

/* 800E6C34-800E6D6C 0E1574 0138+00 1/0 0/0 0/0 .text            procGrabWait__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procGrabWait() {
    nofralloc
#include "asm/d/a/d_a_alink/procGrabWait__9daAlink_cFv.s"
}
#pragma pop

/* 800E6D6C-800E6E0C 0E16AC 00A0+00 2/2 0/0 0/0 .text            procGrabReboundInit__9daAlink_cFi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procGrabReboundInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procGrabReboundInit__9daAlink_cFi.s"
}
#pragma pop

/* 800E6E0C-800E6EEC 0E174C 00E0+00 1/0 0/0 0/0 .text            procGrabRebound__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procGrabRebound() {
    nofralloc
#include "asm/d/a/d_a_alink/procGrabRebound__9daAlink_cFv.s"
}
#pragma pop

/* 800E6EEC-800E6FE0 0E182C 00F4+00 2/2 0/0 0/0 .text            procGrabStandInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procGrabStandInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procGrabStandInit__9daAlink_cFv.s"
}
#pragma pop

/* 800E6FE0-800E70C0 0E1920 00E0+00 1/0 0/0 0/0 .text            procGrabStand__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procGrabStand() {
    nofralloc
#include "asm/d/a/d_a_alink/procGrabStand__9daAlink_cFv.s"
}
#pragma pop

/* 800E70C0-800E70FC 0E1A00 003C+00 1/1 0/0 0/0 .text
 * checkInsectActorName__9daAlink_cFP10fopAc_ac_c               */
bool daAlink_c::checkInsectActorName(fopAc_ac_c* insectActor) {
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
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procInsectCatchInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procInsectCatchInit__9daAlink_cFv.s"
}
#pragma pop

/* 800E71D4-800E7254 0E1B14 0080+00 1/0 0/0 0/0 .text            procInsectCatch__9daAlink_cFv */
bool daAlink_c::procInsectCatch() {
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
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procPickUpInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procPickUpInit__9daAlink_cFv.s"
}
#pragma pop

/* 800E7460-800E75EC 0E1DA0 018C+00 1/0 0/0 0/0 .text            procPickUp__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procPickUp() {
    nofralloc
#include "asm/d/a/d_a_alink/procPickUp__9daAlink_cFv.s"
}
#pragma pop

/* 800E75EC-800E76E0 0E1F2C 00F4+00 3/3 0/0 0/0 .text            procPickPutInit__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procPickPutInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procPickPutInit__9daAlink_cFi.s"
}
#pragma pop

/* 800E76E0-800E7894 0E2020 01B4+00 1/0 0/0 0/0 .text            procPickPut__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procPickPut() {
    nofralloc
#include "asm/d/a/d_a_alink/procPickPut__9daAlink_cFv.s"
}
#pragma pop

/* 800E7894-800E794C 0E21D4 00B8+00 2/2 0/0 0/0 .text checkSetChainPullAnime__9daAlink_cFs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkSetChainPullAnime(s16 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/checkSetChainPullAnime__9daAlink_cFs.s"
}
#pragma pop

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
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm u8 daAlink_c::checkChainEmphasys() {
    nofralloc
#include "asm/d/a/d_a_alink/checkChainEmphasys__9daAlink_cFv.s"
}
#pragma pop

/* 800E79F8-800E7AEC 0E2338 00F4+00 4/4 0/0 0/0 .text            searchFmChainPos__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm u8 daAlink_c::searchFmChainPos() {
    nofralloc
#include "asm/d/a/d_a_alink/searchFmChainPos__9daAlink_cFv.s"
}
#pragma pop

/* 800E7AEC-800E7BD0 0E242C 00E4+00 0/0 1/1 0/0 .text
 * setFmChainPosFromOut__9daAlink_cFP10fopAc_ac_cP4cXyzi        */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setFmChainPosFromOut(fopAc_ac_c* param_0, cXyz* param_1, int param_2) {
    nofralloc
#include "asm/d/a/d_a_alink/setFmChainPosFromOut__9daAlink_cFP10fopAc_ac_cP4cXyzi.s"
}
#pragma pop

/* 800E7BD0-800E7C30 0E2510 0060+00 1/0 0/0 0/0 .text checkChainBlockPushPull__9daAlink_cFv */
bool daAlink_c::checkChainBlockPushPull() {
    if (i_checkFmChainGrabAnime()) {
        fopAc_ac_c* actor = field_0x2844.getActor();
        if (actor != NULL) {
            s16 name = fopAcM_GetName(actor);
            if (name == PROC_Obj_ChainBlock || name == PROC_Obj_SwChain ||
                name == PROC_Obj_ChainWall) {
                return true;
            }
        }
    }
    return false;
}

/* 800E7C30-800E7CC0 0E2570 0090+00 2/2 0/0 0/0 .text            procFmChainUpInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procFmChainUpInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procFmChainUpInit__9daAlink_cFv.s"
}
#pragma pop

/* 800E7CC0-800E7DD8 0E2600 0118+00 1/0 0/0 0/0 .text            procFmChainUp__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procFmChainUp() {
    nofralloc
#include "asm/d/a/d_a_alink/procFmChainUp__9daAlink_cFv.s"
}
#pragma pop

/* 800E7DD8-800E7E50 0E2718 0078+00 2/1 0/0 0/0 .text procFmChainStrongPullInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procFmChainStrongPullInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procFmChainStrongPullInit__9daAlink_cFv.s"
}
#pragma pop

/* 800E7E50-800E7ED0 0E2790 0080+00 1/0 0/0 0/0 .text            procFmChainStrongPull__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procFmChainStrongPull() {
    nofralloc
#include "asm/d/a/d_a_alink/procFmChainStrongPull__9daAlink_cFv.s"
}
#pragma pop

/* 800E7ED0-800E7EE4 0E2810 0014+00 9/9 0/0 0/0 .text            setWallGrabStatus__9daAlink_cFUcUc
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setWallGrabStatus(u8 param_0, u8 param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/setWallGrabStatus__9daAlink_cFUcUc.s"
}
#pragma pop

/* 800E7EE4-800E7EF4 0E2824 0010+00 2/2 0/0 0/0 .text            getWallGrabStatus__9daAlink_cFv */
int daAlink_c::getWallGrabStatus() {
    return i_dComIfGp_getRStatus();
}

/* 800E7EF4-800E7F18 0E2834 0024+00 1/1 0/0 0/0 .text            wallGrabTrigger__9daAlink_cFv */
void daAlink_c::wallGrabTrigger() {
    itemTriggerCheck(BTN_R);
}

/* 800E7F18-800E7F3C 0E2858 0024+00 4/4 0/0 0/0 .text            wallGrabButton__9daAlink_cFv */
void daAlink_c::wallGrabButton() {
    itemButtonCheck(BTN_R);
}

/* 800E7F3C-800E80A4 0E287C 0168+00 4/4 0/0 0/0 .text
 * setPushPullKeepData__9daAlink_cFQ29dBgW_Base13PushPullLabeli */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setPushPullKeepData(dBgW_Base::PushPullLabel param_0, int param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/setPushPullKeepData__9daAlink_cFQ29dBgW_Base13PushPullLabeli.s"
}
#pragma pop

/* 800E80A4-800E8148 0E29E4 00A4+00 2/2 0/0 0/0 .text checkPushPullTurnBlock__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkPushPullTurnBlock() {
    nofralloc
#include "asm/d/a/d_a_alink/checkPushPullTurnBlock__9daAlink_cFv.s"
}
#pragma pop

/* 800E8148-800E8298 0E2A88 0150+00 1/1 0/0 0/0 .text            checkPullBehindWall__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkPullBehindWall() {
    nofralloc
#include "asm/d/a/d_a_alink/checkPullBehindWall__9daAlink_cFv.s"
}
#pragma pop

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
    return name == PROC_E_GOB || (name == PROC_OBJ_GRA && checkSpecialNpc(param_0)) || name == PROC_COW;
}

/* 800E8314-800E8334 0E2C54 0020+00 2/2 0/0 0/0 .text            getGoatCatchDistance2__9daAlink_cFv
 */
f32 daAlink_c::getGoatCatchDistance2() {
    if (fopAcM_GetName(field_0x27f4) == PROC_B_MGN) {
        return lit_16066;
    }

    return lit_16067;
}

/* 800E8334-800E8354 0E2C74 0020+00 3/3 0/0 0/0 .text            endPushPull__9daAlink_cFv */
void daAlink_c::endPushPull() {
    checkWaitAction();
}

/* 800E8354-800E8428 0E2C94 00D4+00 2/2 0/0 0/0 .text            getPushPullAnimeSpeed__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::getPushPullAnimeSpeed() {
    nofralloc
#include "asm/d/a/d_a_alink/getPushPullAnimeSpeed__9daAlink_cFv.s"
}
#pragma pop

/* 800E8428-800E857C 0E2D68 0154+00 4/4 0/0 0/0 .text procCoPushPullWaitInit__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCoPushPullWaitInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procCoPushPullWaitInit__9daAlink_cFi.s"
}
#pragma pop

/* 800E857C-800E875C 0E2EBC 01E0+00 1/0 0/0 0/0 .text            procCoPushPullWait__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCoPushPullWait() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoPushPullWait__9daAlink_cFv.s"
}
#pragma pop

/* 800E875C-800E89F0 0E309C 0294+00 2/2 0/0 0/0 .text            procCoPushMoveInit__9daAlink_cFii
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCoPushMoveInit(int param_0, int param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/procCoPushMoveInit__9daAlink_cFii.s"
}
#pragma pop

/* 800E89F0-800E8D1C 0E3330 032C+00 1/0 0/0 0/0 .text            procCoPushMove__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCoPushMove() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoPushMove__9daAlink_cFv.s"
}
#pragma pop

/* 800E8D1C-800E8F44 0E365C 0228+00 2/2 0/0 0/0 .text            procPullMoveInit__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procPullMoveInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procPullMoveInit__9daAlink_cFi.s"
}
#pragma pop

/* 800E8F44-800E91B0 0E3884 026C+00 1/0 0/0 0/0 .text            procPullMove__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procPullMove() {
    nofralloc
#include "asm/d/a/d_a_alink/procPullMove__9daAlink_cFv.s"
}
#pragma pop