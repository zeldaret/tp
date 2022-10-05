#include "rel/d/a/d_a_boomerang/d_a_boomerang.h"

/* 800DFFE0-800E0010 0DA920 0030+00 0/0 0/0 1/1 .text checkBoomerangLockAccept__9daAlink_cFv */
BOOL daAlink_c::checkBoomerangLockAccept() {
    return mSight.getDrawFlg() && i_dComIfGp_checkPlayerStatus0(0, 0x80000);
}

/* 800E0010-800E00B0 0DA950 00A0+00 0/0 0/0 1/1 .text            getBoomSpeed__9daAlink_cFv */
// small regalloc
#ifdef NONMATCHING
f32 daAlink_c::getBoomSpeed() {
    f32 speed;
    if (checkBoomerangChargeEndWait()) {
        speed = daAlinkHIO_boom_c0::m.mFlySpeed2;
    } else {
        speed = daAlinkHIO_boom_c0::m.mFlySpeed;
    }

    if (i_checkModeFlg(0x400) && mRideAcKeep.getActor() != NULL && mSpeedF > FLOAT_LABEL(lit_6108)) {
        speed += mSpeedF;
    }

    return speed;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm f32 daAlink_c::getBoomSpeed() {
    nofralloc
#include "asm/d/a/d_a_alink/getBoomSpeed__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800E00B0-800E00C0 0DA9F0 0010+00 0/0 0/0 1/1 .text            getBoomCatchSpeed__9daAlink_cCFv */
f32 daAlink_c::getBoomCatchSpeed() const {
    return daAlinkHIO_boom_c0::m.mCatchSpeed;
}

/* 800E00C0-800E011C 0DAA00 005C+00 1/1 0/0 1/1 .text            getBoomFlyMax__9daAlink_cCFv */
f32 daAlink_c::getBoomFlyMax() const {
    if (i_checkModeFlg(0x400) && !checkCanoeRide()) {
        return daAlinkHIO_boom_c0::m.mHorsebackFlyDistMax;
    } else {
        return daAlinkHIO_boom_c0::m.mFlyDistMax;
    }
}

/* 800E011C-800E0190 0DAA5C 0074+00 1/1 0/0 2/2 .text            getBoomLockMax__9daAlink_cFv */
f32 daAlink_c::getBoomLockMax() {
    f32 fly_max = getBoomFlyMax();

    if (checkBossBabaRoom()) {
        return lit_12475;
    } else if (daAlinkHIO_boom_c0::m.mLockDistMax > fly_max) {
        return daAlinkHIO_boom_c0::m.mLockDistMax;
    } else {
        return fly_max;
    }
}

/* 800E0190-800E01A0 0DAAD0 0010+00 0/0 0/0 1/1 .text            getBoomBgThroughTime__9daAlink_cCFv
 */
s16 daAlink_c::getBoomBgThroughTime() const {
    return daAlinkHIO_boom_c0::m.mBgThroughTime;
}

/* 800E01A0-800E01CC 0DAAE0 002C+00 1/1 0/0 0/0 .text            checkBossBabaRoom__9daAlink_cFv */
bool daAlink_c::checkBossBabaRoom() {
    return checkStageName("D_MN05A");
}

/* 800E01CC-800E0210 0DAB0C 0044+00 0/0 1/1 0/0 .text
 * cancelBoomerangLock__9daAlink_cFP10fopAc_ac_c                */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::cancelBoomerangLock(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/cancelBoomerangLock__9daAlink_cFP10fopAc_ac_c.s"
}
#pragma pop

/* 800E0210-800E0244 0DAB50 0034+00 2/2 0/0 0/0 .text            getBoomerangActor__9daAlink_cFv */
fopAc_ac_c* daAlink_c::getBoomerangActor() {
    if (mThrowBoomerangAcKeep.getID() != 0xFFFFFFFF) {
        return mThrowBoomerangAcKeep.getActor();
    }

    if (mEquipItem == BOOMERANG) {
        return mItemAcKeep.getActor();
    }

    return NULL;
}

/* 800E0244-800E02B8 0DAB84 0074+00 0/0 1/1 0/0 .text checkBoomerangChargeEnd__9daAlink_cFv */
bool daAlink_c::checkBoomerangChargeEnd() {
    if (checkBoomerangChargeEndWait()) {
        return true;
    }

    daBoomerang_c* boomerang = (daBoomerang_c*)getBoomerangActor();
    if (boomerang != NULL && boomerang->checkCharge()) {
        return true;
    }

    return false;
}

/* 800E02B8-800E03D0 0DABF8 0118+00 0/0 1/1 0/0 .text
 * checkBoomerangCarry__9daAlink_cFP10fopAc_ac_c                */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daAlink_c::checkBoomerangCarry(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/checkBoomerangCarry__9daAlink_cFP10fopAc_ac_c.s"
}
#pragma pop

/* 800E03D0-800E0440 0DAD10 0070+00 6/6 0/0 0/0 .text initBoomerangUpperAnimeSpeed__9daAlink_cFi
 */
void daAlink_c::initBoomerangUpperAnimeSpeed(int param_0) {
    if (!checkBoomerangThrowAnime()) {
        if (param_0 != 0) {
            f32 tmp = FLOAT_LABEL(lit_6108);
            mFrameCtrl2[2].setRate(tmp);
            mFrameCtrl2[2].setFrame(tmp);
            getNowAnmPackUpper(UPPER_NOW)->setFrame(tmp);
        } else {
            mFrameCtrl2[2].setRate(daAlinkHIO_boom_c0::m.mIdleAnmSpeed);
        }
    }
}

/* 800E0440-800E04AC 0DAD80 006C+00 9/9 0/0 0/0 .text            checkBoomerangAnime__9daAlink_cCFv
 */
BOOL daAlink_c::checkBoomerangAnime() const {
    return checkBoomerangReadyAnime() || checkBoomerangThrowAnime();
}

/* 800E04AC-800E04E8 0DADEC 003C+00 13/13 0/0 0/0 .text checkBoomerangThrowAnime__9daAlink_cCFv */
BOOL daAlink_c::checkBoomerangThrowAnime() const {
    return (mEquipItem == BOOMERANG || i_checkNoResetFlg1(FLG1_UNK_2) || mEquipItem == 0x102) && checkUpperAnime(0x53);
}

/* 800E04E8-800E055C 0DAE28 0074+00 1/1 0/0 0/0 .text setBoomerangReadyQuake__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setBoomerangReadyQuake() {
    nofralloc
#include "asm/d/a/d_a_alink/setBoomerangReadyQuake__9daAlink_cFv.s"
}
#pragma pop

/* 800E055C-800E05E8 0DAE9C 008C+00 2/2 0/0 0/0 .text setBoomerangReadyAnime__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setBoomerangReadyAnime() {
    nofralloc
#include "asm/d/a/d_a_alink/setBoomerangReadyAnime__9daAlink_cFv.s"
}
#pragma pop

/* 800E05E8-800E0630 0DAF28 0048+00 2/2 0/0 0/0 .text setThrowBoomerangAnime__9daAlink_cFv */
void daAlink_c::setThrowBoomerangAnime() {
    setUpperAnimeParam(0x53, UPPER_NOW, &daAlinkHIO_boom_c0::m.mThrowAnm);
    cancelItemUseQuake(0);
}

/* 800E0630-800E06B8 0DAF70 0088+00 2/2 0/0 0/0 .text setBoomerangCatchAnime__9daAlink_cFv */
void daAlink_c::setBoomerangCatchAnime() {
    setUpperAnimeParam(0x52, UPPER_NOW, &daAlinkHIO_boom_c0::m.mCatchAnm);
    setFacePriBck(0xE8);
    field_0x2f97 = 254;
    if (mEquipItem != COPY_ROD) {
        seStartOnlyReverb(JA_SE_LK_BOOM_CATCH);
    }
}

/* 800E06B8-800E08C4 0DAFF8 020C+00 1/1 0/0 0/0 .text            throwBoomerang__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::throwBoomerang() {
    nofralloc
#include "asm/d/a/d_a_alink/throwBoomerang__9daAlink_cFv.s"
}
#pragma pop

/* 800E08C4-800E0A9C 0DB204 01D8+00 0/0 0/0 1/1 .text            returnBoomerang__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::returnBoomerang(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/returnBoomerang__9daAlink_cFi.s"
}
#pragma pop

/* 800E0A9C-800E0B58 0DB3DC 00BC+00 2/2 0/0 0/0 .text checkUpperItemActionBoomerang__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkUpperItemActionBoomerang() {
    nofralloc
#include "asm/d/a/d_a_alink/checkUpperItemActionBoomerang__9daAlink_cFv.s"
}
#pragma pop

/* 800E0B58-800E0BE4 0DB498 008C+00 1/1 0/0 0/0 .text
 * checkUpperItemActionBoomerangFly__9daAlink_cFv               */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkUpperItemActionBoomerangFly() {
    nofralloc
#include "asm/d/a/d_a_alink/checkUpperItemActionBoomerangFly__9daAlink_cFv.s"
}
#pragma pop

/* 800E0BE4-800E0D8C 0DB524 01A8+00 4/4 0/0 0/0 .text checkNextActionBoomerang__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkNextActionBoomerang() {
    nofralloc
#include "asm/d/a/d_a_alink/checkNextActionBoomerang__9daAlink_cFv.s"
}
#pragma pop

/* 800E0D8C-800E0E64 0DB6CC 00D8+00 1/1 0/0 0/0 .text checkBoomerangCatchAction__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkBoomerangCatchAction() {
    nofralloc
#include "asm/d/a/d_a_alink/checkBoomerangCatchAction__9daAlink_cFv.s"
}
#pragma pop

/* 800E0E64-800E0F10 0DB7A4 00AC+00 3/3 0/0 0/0 .text            setBoomerangSight__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setBoomerangSight() {
    nofralloc
#include "asm/d/a/d_a_alink/setBoomerangSight__9daAlink_cFv.s"
}
#pragma pop

/* 800E0F10-800E0FA0 0DB850 0090+00 1/1 0/0 0/0 .text procBoomerangSubjectInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procBoomerangSubjectInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procBoomerangSubjectInit__9daAlink_cFv.s"
}
#pragma pop

/* 800E0FA0-800E1060 0DB8E0 00C0+00 1/0 0/0 0/0 .text            procBoomerangSubject__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procBoomerangSubject() {
    nofralloc
#include "asm/d/a/d_a_alink/procBoomerangSubject__9daAlink_cFv.s"
}
#pragma pop

/* 800E1060-800E10F4 0DB9A0 0094+00 1/1 0/0 0/0 .text            procBoomerangMoveInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procBoomerangMoveInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procBoomerangMoveInit__9daAlink_cFv.s"
}
#pragma pop

/* 800E10F4-800E11D8 0DBA34 00E4+00 1/0 0/0 0/0 .text            procBoomerangMove__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procBoomerangMove() {
    nofralloc
#include "asm/d/a/d_a_alink/procBoomerangMove__9daAlink_cFv.s"
}
#pragma pop

/* 800E11D8-800E1248 0DBB18 0070+00 1/1 0/0 0/0 .text procBoomerangCatchInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procBoomerangCatchInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procBoomerangCatchInit__9daAlink_cFv.s"
}
#pragma pop

/* 800E1248-800E12E0 0DBB88 0098+00 1/0 0/0 0/0 .text            procBoomerangCatch__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procBoomerangCatch() {
    nofralloc
#include "asm/d/a/d_a_alink/procBoomerangCatch__9daAlink_cFv.s"
}
#pragma pop