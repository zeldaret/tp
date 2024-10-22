/**
 * d_a_alink_bomb.inc
 * Player Bomb action handling
 */

#include "d/actor/d_a_alink.h"

/* 800E3760-800E3770 0DE0A0 0010+00 0/0 0/0 7/7 .text            getBombExplodeTime__9daAlink_cCFv
 */
s16 daAlink_c::getBombExplodeTime() const {
    return daAlinkHIO_bomb_c0::m.mExplodeTime;
}

/* 800E3770-800E3780 0DE0B0 0010+00 0/0 0/0 2/2 .text            getBombGravity__9daAlink_cCFv */
f32 daAlink_c::getBombGravity() const {
    return daAlinkHIO_bomb_c0::m.mGravity;
}

/* 800E3780-800E3790 0DE0C0 0010+00 0/0 0/0 2/2 .text            getBombMaxFallSpeed__9daAlink_cCFv
 */
f32 daAlink_c::getBombMaxFallSpeed() const {
    return daAlinkHIO_bomb_c0::m.mMaxFallSpeed;
}

/* 800E3790-800E37A0 0DE0D0 0010+00 0/0 0/0 1/1 .text            getBombBoundRate__9daAlink_cCFv */
f32 daAlink_c::getBombBoundRate() const {
    return daAlinkHIO_bomb_c0::m.mBoundRate;
}

/* 800E37A0-800E37B0 0DE0E0 0010+00 0/0 0/0 1/1 .text            getBombStopSpeedY__9daAlink_cCFv */
f32 daAlink_c::getBombStopSpeedY() const {
    return daAlinkHIO_bomb_c0::m.mStopSpeedY;
}

/* 800E37B0-800E37C0 0DE0F0 0010+00 0/0 0/0 1/1 .text            getBombMaxSpeedY__9daAlink_cCFv */
f32 daAlink_c::getBombMaxSpeedY() const {
    return daAlinkHIO_bomb_c0::m.mMaxSpeedY;
}

/* 800E37C0-800E37D0 0DE100 0010+00 0/0 0/0 1/1 .text            getBombEffScale__9daAlink_cCFv */
f32 daAlink_c::getBombEffScale() const {
    return daAlinkHIO_bomb_c0::m.mEffScale;
}

/* 800E37D0-800E37E0 0DE110 0010+00 0/0 0/0 1/1 .text            getBombAtR__9daAlink_cCFv */
f32 daAlink_c::getBombAtR() const {
    return daAlinkHIO_bomb_c0::m.mAttackRadius;
}

/* 800E37E0-800E37F0 0DE120 0010+00 0/0 0/0 1/1 .text            getEnemyBombColorR__9daAlink_cCFv
 */
s16 daAlink_c::getEnemyBombColorR() const {
    return daAlinkHIO_bomb_c0::m.mEnemyBombColorR;
}

/* 800E37F0-800E3800 0DE130 0010+00 0/0 0/0 2/2 .text            getBombWaterGravity__9daAlink_cCFv
 */
f32 daAlink_c::getBombWaterGravity() const {
    return daAlinkHIO_bomb_c0::m.mWaterGravity;
}

/* 800E3800-800E3810 0DE140 0010+00 0/0 0/0 2/2 .text getBombWaterMaxFallSpeed__9daAlink_cCFv */
f32 daAlink_c::getBombWaterMaxFallSpeed() const {
    return daAlinkHIO_bomb_c0::m.mWaterMaxFallSpeed;
}

/* 800E3810-800E3820 0DE150 0010+00 0/0 0/0 1/1 .text
 * getBombExplodeWaterEffectLimit__9daAlink_cCFv                */
f32 daAlink_c::getBombExplodeWaterEffectLimit() const {
    return daAlinkHIO_bomb_c0::m.mExplodeWaterEffectLimit;
}

/* 800E3820-800E3830 0DE160 0010+00 0/0 0/0 1/1 .text getBombInsectLimitAngle__9daAlink_cCFv */
s16 daAlink_c::getBombInsectLimitAngle() const {
    return daAlinkHIO_bomb_c0::m.mBombInsectLimitAngle;
}
