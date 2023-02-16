/* 800EA844-800EA8D0 0E5184 008C+00 5/5 0/0 0/0 .text            checkSumouVsActor__9daAlink_cFv */
BOOL daAlink_c::checkSumouVsActor() {
    mCargoCarryAcKeep.setActor();

    if (mCargoCarryAcKeep.getActor() == NULL) {
        cancelSumouMode();
        procWaitInit();
        return false;
    }

    if (mSpecialMode == 0xD || mSpecialMode == 0xB || mSpecialMode == 0xC || mSpecialMode == 0xE) {
        procSumouWinLoseInit();
        return false;
    }

    return true;
}

/* 800EA8D0-800EA908 0E5210 0038+00 5/5 0/0 0/0 .text            cancelSumouMode__9daAlink_cFv */
void daAlink_c::cancelSumouMode() {
    mCargoCarryAcKeep.clearData();
    mSpecialMode = 0;
}

/* 800EA908-800EA92C 0E5248 0024+00 2/2 0/0 0/0 .text            sumouPunchTrigger__9daAlink_cFv */
void daAlink_c::sumouPunchTrigger() {
    itemTriggerCheck(BTN_B);
}

/* 800EA92C-800EA950 0E526C 0024+00 5/5 0/0 0/0 .text            setSumouPunchStatus__9daAlink_cFv
 */
void daAlink_c::setSumouPunchStatus() {
    setBStatus(ACTION_STR_SLAP);
}

/* 800EA950-800EAA28 0E5290 00D8+00 4/4 0/0 0/0 .text            procSumouReadyInit__9daAlink_cFv */
int daAlink_c::procSumouReadyInit() {
    if (!commonProcInitNotSameProc(PROC_SUMOU_READY)) {
        return 0;
    }

    setSingleAnimeBaseMorf(ANM_SUMOU_MIAU, FLOAT_LABEL(lit_6108));
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    current.angle.y = shape_angle.y;
    field_0x3588 = l_waitBaseAnime;
    field_0x34d4 = field_0x3588;
    field_0x2f99 = 4;
    mSpecialMode = 1;
    field_0x300c = 0;
    field_0x300e = 0;
    deleteEquipItem(0, 1);

    if (mThrowBoomerangAcKeep.getActor() != NULL) {
        static_cast<daBoomerang_c*>(mThrowBoomerangAcKeep.getActor())->onForceDelete();
    }

    return 1;
}

/* 800EAA28-800EAC4C 0E5368 0224+00 1/0 0/0 0/0 .text            procSumouReady__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procSumouReady() {
    nofralloc
#include "asm/d/a/d_a_alink/procSumouReady__9daAlink_cFv.s"
}
#pragma pop

/* 800EAC4C-800EAD84 0E558C 0138+00 1/1 0/0 0/0 .text            procSumouMoveInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procSumouMoveInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procSumouMoveInit__9daAlink_cFv.s"
}
#pragma pop

/* 800EAD84-800EB208 0E56C4 0484+00 1/0 0/0 0/0 .text            procSumouMove__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procSumouMove() {
    nofralloc
#include "asm/d/a/d_a_alink/procSumouMove__9daAlink_cFv.s"
}
#pragma pop

/* 800EB208-800EB2BC 0E5B48 00B4+00 4/4 0/0 0/0 .text            procSumouSideMoveInit__9daAlink_cFv
 */
int daAlink_c::procSumouSideMoveInit() {
    commonProcInit(PROC_SUMOU_SIDE_MOVE);
    mSpecialMode = 0x16;
    field_0x2f98 = 3;
    current.angle.y = shape_angle.y + -0x4000;
    field_0x594 = daAlinkHIO_atnMove_c0::m.mMaxSpeed;
    setSingleAnimeBase(ANM_SUMOU_FIGHT_WAIT);

    field_0x3198 = 0x141;
    setSumouPunchStatus();
    setDoStatusEmphasys(0x15);
    dComIfGp_setAdvanceDirection(5);

    field_0x2f99 = 12;
    setFootEffectProcType(5);
    field_0x3008 = 15;

    return 1;
}

/* 800EB2BC-800EB624 0E5BFC 0368+00 1/0 0/0 0/0 .text            procSumouSideMove__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procSumouSideMove() {
    nofralloc
#include "asm/d/a/d_a_alink/procSumouSideMove__9daAlink_cFv.s"
}
#pragma pop

/* 800EB624-800EBCE0 0E5F64 06BC+00 4/4 0/0 0/0 .text            procSumouActionInit__9daAlink_cFiii
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procSumouActionInit(int param_0, int param_1, int param_2) {
    nofralloc
#include "asm/d/a/d_a_alink/procSumouActionInit__9daAlink_cFiii.s"
}
#pragma pop

/* 800EBCE0-800EC0F8 0E6620 0418+00 1/0 0/0 0/0 .text            procSumouAction__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procSumouAction() {
    nofralloc
#include "asm/d/a/d_a_alink/procSumouAction__9daAlink_cFv.s"
}
#pragma pop

/* 800EC0F8-800EC170 0E6A38 0078+00 1/1 0/0 0/0 .text            procSumouStaggerInit__9daAlink_cFv
 */
int daAlink_c::procSumouStaggerInit() {
    commonProcInit(PROC_SUMOU_STAGGER);
    
    if (mSpecialMode == 0x11) {
        mSpecialMode = 0x20;
    } else {
        mSpecialMode = 0x1F;
    }

    setSingleAnimeBase(ANM_SUMOU_STAGGER);
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    field_0x2f99 = 12;
    field_0x3008 = 30;
    return 1;
}

/* 800EC170-800EC20C 0E6AB0 009C+00 1/0 0/0 0/0 .text            procSumouStagger__9daAlink_cFv */
int daAlink_c::procSumouStagger() {
    field_0x2f99 = 4;

    if (!checkSumouVsActor()) {
        return 1;
    }

    field_0x3008--;
    if (mSpecialMode == 0x1C || mSpecialMode == 0x21 || mSpecialMode == 0x1B) {
        procSumouActionInit(0, 0, 0);
    } else if (field_0x3008 == 0) {
        procSumouSideMoveInit();
    }

    return 1;
}

/* 800EC20C-800EC3D8 0E6B4C 01CC+00 1/1 0/0 0/0 .text            procSumouWinLoseInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procSumouWinLoseInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procSumouWinLoseInit__9daAlink_cFv.s"
}
#pragma pop

/* 800EC3D8-800EC538 0E6D18 0160+00 1/0 0/0 0/0 .text            procSumouWinLose__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procSumouWinLose() {
    nofralloc
#include "asm/d/a/d_a_alink/procSumouWinLose__9daAlink_cFv.s"
}
#pragma pop

/* 800EC538-800EC5F4 0E6E78 00BC+00 1/0 0/0 0/0 .text            procSumouShikoInit__9daAlink_cFv */
int daAlink_c::procSumouShikoInit() {
    if (!commonProcInitNotSameProc(PROC_SUMOU_SHIKO)) {
        return 0;
    }

    setSingleAnimeBase(ANM_SUMOU_SHIKO);
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    field_0x3588 = l_waitBaseAnime;
    field_0x34d4 = field_0x3588;
    field_0x2f99 = 12;
    field_0x300c = 0;
    mSpecialMode = 0;

    setFootEffectProcType(5);
    deleteEquipItem(0, 1);

    return 1;
}

/* 800EC5F4-800EC724 0E6F34 0130+00 1/0 0/0 0/0 .text            procSumouShiko__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procSumouShiko() {
    nofralloc
#include "asm/d/a/d_a_alink/procSumouShiko__9daAlink_cFv.s"
}
#pragma pop