/* 800E12E0-800E1310 0DBC20 0030+00 1/1 0/0 0/0 .text            checkLv6BossRoom__9daAlink_cFv */
BOOL daAlink_c::checkLv6BossRoom() {
    return checkStageName("D_MN06A");
}

/* 800E1310-800E1320 0DBC50 0010+00 0/0 0/0 1/1 .text            getCopyRodBallSpeed__9daAlink_cCFv
 */
f32 daAlink_c::getCopyRodBallSpeed() const {
    return daAlinkHIO_copyRod_c0::m.mBallSpeed;
}

/* 800E1320-800E1330 0DBC60 0010+00 0/0 0/0 1/1 .text getCopyRodBallReturnSpeed__9daAlink_cCFv */
f32 daAlink_c::getCopyRodBallReturnSpeed() const {
    return daAlinkHIO_copyRod_c0::m.mBallReturnSpeed;
}

/* 800E1330-800E1374 0DBC70 0044+00 3/3 0/0 2/2 .text            getCopyRodBallDisMax__9daAlink_cCFv
 */
f32 daAlink_c::getCopyRodBallDisMax() const {
    if (checkLv6BossRoom()) {
        return daAlinkHIO_copyRod_c0::m.mBossBallMaxDistance;
    }

    return daAlinkHIO_copyRod_c0::m.mBallMaxDistance;
}

/* 800E1374-800E1390 0DBCB4 001C+00 6/6 0/0 7/7 .text getCopyRodControllActor__9daAlink_cFv */
fopAc_ac_c* daAlink_c::getCopyRodControllActor() {
    if (mCopyRodAcKeep.getActor() != NULL) {
        return static_cast<daCrod_c*>(mCopyRodAcKeep.getActor())->getControllActor();
    }

    return NULL;
}

/* 800E1390-800E13AC 0DBCD0 001C+00 0/0 4/4 1/1 .text            getCopyRodCameraActor__9daAlink_cFv
 */
fopAc_ac_c* daAlink_c::getCopyRodCameraActor() {
    if (mCopyRodAcKeep.getActor() != NULL) {
        return static_cast<daCrod_c*>(mCopyRodAcKeep.getActor())->getCameraActor();
    }

    return NULL;
}

/* 800E13AC-800E1408 0DBCEC 005C+00 2/2 0/0 0/0 .text initCopyRodUpperAnimeSpeed__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::initCopyRodUpperAnimeSpeed(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/initCopyRodUpperAnimeSpeed__9daAlink_cFi.s"
}
#pragma pop

/* 800E1408-800E145C 0DBD48 0054+00 2/2 0/0 0/0 .text            checkForestOldCentury__9daAlink_cFv
 */
BOOL daAlink_c::checkForestOldCentury() {
    return checkStageName("F_SP117") && dComIfGp_roomControl_getStayNo() == 2;
}

/* 800E145C-800E1530 0DBD9C 00D4+00 1/0 0/0 0/0 .text            checkCopyRodTopUse__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daAlink_c::checkCopyRodTopUse() {
    nofralloc
#include "asm/d/a/d_a_alink/checkCopyRodTopUse__9daAlink_cFv.s"
}
#pragma pop

/* 800E1530-800E158C 0DBE70 005C+00 4/4 0/0 0/0 .text            checkCopyRodAnime__9daAlink_cCFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::checkCopyRodAnime() const {
    nofralloc
#include "asm/d/a/d_a_alink/checkCopyRodAnime__9daAlink_cCFv.s"
}
#pragma pop

/* 800E158C-800E15FC 0DBECC 0070+00 2/2 0/0 0/0 .text setCopyRodControllAnime__9daAlink_cFv */
void daAlink_c::setCopyRodControllAnime() {
    if (checkNoUpperAnime() && getCopyRodControllActor()) {
        setUpperAnimeBaseSpeed(0x202, FLOAT_LABEL(lit_6108), lit_6109);
        field_0x2f96 = 2;
        field_0x2f97 = 5;
        field_0x33e8 = FLOAT_LABEL(lit_6108);
    }
}

/* 800E15FC-800E1748 0DBF3C 014C+00 1/1 0/0 0/0 .text
 * setCopyRodControllUpperSpeedRate__9daAlink_cFv               */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setCopyRodControllUpperSpeedRate() {
    nofralloc
#include "asm/d/a/d_a_alink/setCopyRodControllUpperSpeedRate__9daAlink_cFv.s"
}
#pragma pop

/* 800E1748-800E1840 0DC088 00F8+00 2/2 0/0 0/0 .text            setCopyRodModel__9daAlink_cFv */
void daAlink_c::setCopyRodModel() {
    JKRHeap* heap = setItemHeap();
    J3DModelData* mdl_data = loadAramBmd(0x315, 0x5400);
    mHeldItemModel = initModel(mdl_data, 0x80000, 0x1000000);
    field_0x0724 = loadAramItemBrk(0x323, mHeldItemModel);
    mDoExt_setCurrentHeap(heap);
    field_0x0724->setFrame(FLOAT_LABEL(lit_6108));
    field_0x2f94 = 2;
    field_0x122C[0].SetAtSpl(dCcG_At_Spl_UNK_0);
    field_0x122C[0].SetAtAtp(0);
    field_0x122C[0].SetAtSe(20);
    field_0x122C[0].SetAtHitMark(1);
    field_0x122C[0].OnAtSetBit();
    field_0x122C[0].SetAtHitCallback(NULL);
    field_0x122C[0].SetAtMtrl(0);
    mHeldItemModel->i_setBaseTRMtx(mpLinkModel->i_getAnmMtx(field_0x30c0));
    mHeldItemModel->calc();
}

/* 800E1840-800E191C 0DC180 00DC+00 2/2 0/0 0/0 .text            setCopyRodReadyAnime__9daAlink_cFv
 */
// regalloc
#ifdef NONMATCHING
void daAlink_c::setCopyRodReadyAnime() {
    f32 tmp;
    if (i_checkAttentionLock()) {
        tmp = daAlinkHIO_boom_c0::m.valc;
    } else {
        tmp = FLOAT_LABEL(lit_6108);
    }

    setUpperAnimeBaseSpeed(0x54, tmp, lit_6109);
    if (checkCopyRodTopUse()) {
        seStartSwordCut(Z2SE_AL_COPYROD_READY);
    } else {
        seStartSwordCut(Z2SE_AL_COPYROD_READY_OFF);
    }
    field_0x122C[0].SetR(lit_8676);
    field_0x122C[0].SetAtType(0x1000000);
    initLockAt();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setCopyRodReadyAnime() {
    nofralloc
#include "asm/d/a/d_a_alink/setCopyRodReadyAnime__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800E191C-800E1A30 0DC25C 0114+00 1/1 0/0 0/0 .text            throwCopyRod__9daAlink_cFv */
void daAlink_c::throwCopyRod() {
    daCrod_c* copy_rod = static_cast<daCrod_c*>(mItemAcKeep.getActor());
    i_onNoResetFlg1(FLG1_UNK_10000);

    if (checkCopyRodTopUse()) {
        copy_rod->setThrow();
        mCopyRodAcKeep = mItemAcKeep;
        i_onNoResetFlg3(FLG3_COPY_ROD_THROW_AFTER);
        mItemAcKeep.clearData();
    }
    dComIfGp_clearPlayerStatus0(0, 0x80);
    mFastShotTime = -1;
    voiceStart(Z2SE_AL_V_ATTACK_S);
    seStartSwordCut(Z2SE_AL_COPYROD_SWING);

    if (mLinkAcch.ChkGroundHit()) {
        if (checkZeroSpeedF()) {
            field_0x2f98 = 3;
            procAtnActorWaitInit();
        } else {
            procAtnActorMoveInit();
        }
        field_0x2060->initOldFrameMorf(FLOAT_LABEL(lit_6108), 0, 35);
    }
}

/* 800E1A30-800E1ADC 0DC370 00AC+00 0/0 0/0 1/1 .text            returnCopyRod__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::returnCopyRod() {
    nofralloc
#include "asm/d/a/d_a_alink/returnCopyRod__9daAlink_cFv.s"
}
#pragma pop

/* void daAlink_c::returnCopyRod() {
    i_offNoResetFlg3(FLG3_COPY_ROD_THROW_AFTER);

    if (mEquipItem == 0x46) {
        mItemAcKeep = mCopyRodAcKeep;
        i_onNoResetFlg0(FLG0_UNK_20);
        cXyz tmp(0, 1, 0);
        dComIfGp_getVibration().StartShock(1, 1, tmp);
    }
    mCopyRodAcKeep.clearData();
} */

/* 800E1ADC-800E1BB4 0DC41C 00D8+00 2/2 0/0 0/0 .text checkUpperItemActionCopyRod__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkUpperItemActionCopyRod() {
    nofralloc
#include "asm/d/a/d_a_alink/checkUpperItemActionCopyRod__9daAlink_cFv.s"
}
#pragma pop

/* 800E1BB4-800E1C44 0DC4F4 0090+00 1/1 0/0 0/0 .text checkUpperItemActionCopyRodFly__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkUpperItemActionCopyRodFly() {
    nofralloc
#include "asm/d/a/d_a_alink/checkUpperItemActionCopyRodFly__9daAlink_cFv.s"
}
#pragma pop

/* 800E1C44-800E1D6C 0DC584 0128+00 2/2 0/0 0/0 .text checkNextActionCopyRod__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::checkNextActionCopyRod() {
    nofralloc
#include "asm/d/a/d_a_alink/checkNextActionCopyRod__9daAlink_cFv.s"
}
#pragma pop

/* 800E1D6C-800E1E20 0DC6AC 00B4+00 1/1 0/0 0/0 .text            setCopyRodSight__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setCopyRodSight() {
    nofralloc
#include "asm/d/a/d_a_alink/setCopyRodSight__9daAlink_cFv.s"
}
#pragma pop

/* 800E1E20-800E1EB0 0DC760 0090+00 1/1 0/0 0/0 .text procCopyRodSubjectInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCopyRodSubjectInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCopyRodSubjectInit__9daAlink_cFv.s"
}
#pragma pop

/* 800E1EB0-800E1F68 0DC7F0 00B8+00 1/0 0/0 0/0 .text            procCopyRodSubject__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCopyRodSubject() {
    nofralloc
#include "asm/d/a/d_a_alink/procCopyRodSubject__9daAlink_cFv.s"
}
#pragma pop

/* 800E1F68-800E1FFC 0DC8A8 0094+00 1/1 0/0 0/0 .text            procCopyRodMoveInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCopyRodMoveInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCopyRodMoveInit__9daAlink_cFv.s"
}
#pragma pop

/* 800E1FFC-800E20C8 0DC93C 00CC+00 1/0 0/0 0/0 .text            procCopyRodMove__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCopyRodMove() {
    nofralloc
#include "asm/d/a/d_a_alink/procCopyRodMove__9daAlink_cFv.s"
}
#pragma pop

/* 800E20C8-800E21FC 0DCA08 0134+00 1/1 0/0 0/0 .text            procCopyRodSwingInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCopyRodSwingInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCopyRodSwingInit__9daAlink_cFv.s"
}
#pragma pop

/* 800E21FC-800E2308 0DCB3C 010C+00 1/0 0/0 0/0 .text            procCopyRodSwing__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCopyRodSwing() {
    nofralloc
#include "asm/d/a/d_a_alink/procCopyRodSwing__9daAlink_cFv.s"
}
#pragma pop

/* 800E2308-800E23A4 0DCC48 009C+00 1/0 0/0 0/0 .text            procCopyRodReviveInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCopyRodReviveInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCopyRodReviveInit__9daAlink_cFv.s"
}
#pragma pop

/* 800E23A4-800E23FC 0DCCE4 0058+00 1/0 0/0 0/0 .text            procCopyRodRevive__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCopyRodRevive() {
    nofralloc
#include "asm/d/a/d_a_alink/procCopyRodRevive__9daAlink_cFv.s"
}
#pragma pop