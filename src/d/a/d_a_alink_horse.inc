/* 800EC724-800EC758 0E7064 0034+00 3/3 0/0 0/0 .text daAlink_searchBoar__FP10fopAc_ac_cPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void* daAlink_searchBoar(fopAc_ac_c* param_0, void* param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/daAlink_searchBoar__FP10fopAc_ac_cPv.s"
}
#pragma pop

/* 800EC758-800EC76C 0E7098 0014+00 1/1 0/0 0/0 .text daAlink_searchCoach__FP10fopAc_ac_cPv */
static fopAc_ac_c* daAlink_searchCoach(fopAc_ac_c* param_0, void* param_1) {
    if (fopAcM_GetName(param_0) == PROC_NPC_COACH) {
        return param_0;
    }

    return NULL;
}

/* 800EC76C-800EC7B0 0E70AC 0044+00 3/3 0/0 0/0 .text checkHorseZeldaBowMode__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkHorseZeldaBowMode() {
    nofralloc
#include "asm/d/a/d_a_alink/checkHorseZeldaBowMode__9daAlink_cFv.s"
}
#pragma pop

/* 800EC7B0-800EC7DC 0E70F0 002C+00 4/4 0/0 0/0 .text            setHorseZeldaDamage__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setHorseZeldaDamage() {
    nofralloc
#include "asm/d/a/d_a_alink/setHorseZeldaDamage__9daAlink_cFv.s"
}
#pragma pop

/* 800EC7DC-800EC814 0E711C 0038+00 2/2 0/0 0/0 .text            checkHorseDashAccept__9daAlink_cFv
 */
BOOL daAlink_c::checkHorseDashAccept() {
    return !checkStageName("F_SP103");
}

/* 800EC814-800EC87C 0E7154 0068+00 1/1 0/0 0/0 .text            checkCowGame__9daAlink_cFv */
BOOL daAlink_c::checkCowGame() {
    return checkStageName("F_SP00") && (dComIfGp_getStartStageLayer() == 4 || dComIfGp_getStartStageLayer() == 5);
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
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkReinRideBgCheck() {
    nofralloc
#include "asm/d/a/d_a_alink/checkReinRideBgCheck__9daAlink_cFv.s"
}
#pragma pop

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
    mAttentionInfo.field_0xa = 0x46;
    mUnderFrameCtrl[0].onEndFlg();
}

/* 800ECAAC-800ECB58 0E73EC 00AC+00 1/1 0/0 0/0 .text            initForceRideBoar__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::initForceRideBoar() {
    nofralloc
#include "asm/d/a/d_a_alink/initForceRideBoar__9daAlink_cFv.s"
}
#pragma pop

/* 800ECB58-800ECBD0 0E7498 0078+00 4/4 0/0 0/0 .text            initForceRideHorse__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::initForceRideHorse() {
    nofralloc
#include "asm/d/a/d_a_alink/initForceRideHorse__9daAlink_cFv.s"
}
#pragma pop

/* 800ECBD0-800ECD90 0E7510 01C0+00 5/5 0/0 0/0 .text            rideGetOff__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::rideGetOff() {
    nofralloc
#include "asm/d/a/d_a_alink/rideGetOff__9daAlink_cFv.s"
}
#pragma pop

/* 800ECD90-800ECDC4 0E76D0 0034+00 1/1 0/0 0/0 .text checkHorseNotDamageReaction__9daAlink_cCFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkHorseNotDamageReaction() const {
    nofralloc
#include "asm/d/a/d_a_alink/checkHorseNotDamageReaction__9daAlink_cCFv.s"
}
#pragma pop

/* 800ECDC4-800ECDEC 0E7704 0028+00 1/1 0/0 2/2 .text checkHorseWaitLashAnime__9daAlink_cCFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkHorseWaitLashAnime() const {
    nofralloc
#include "asm/d/a/d_a_alink/checkHorseWaitLashAnime__9daAlink_cCFv.s"
}
#pragma pop

/* 800ECDEC-800ECE10 0E772C 0024+00 1/1 0/0 0/0 .text checkHorseReinLeftOnly__9daAlink_cCFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkHorseReinLeftOnly() const {
    nofralloc
#include "asm/d/a/d_a_alink/checkHorseReinLeftOnly__9daAlink_cCFv.s"
}
#pragma pop

/* 800ECE10-800ECF04 0E7750 00F4+00 2/2 0/0 0/0 .text            getReinHandType__9daAlink_cCFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::getReinHandType() const {
    nofralloc
#include "asm/d/a/d_a_alink/getReinHandType__9daAlink_cCFv.s"
}
#pragma pop

/* 800ECF04-800ECF5C 0E7844 0058+00 5/5 0/0 1/1 .text            checkHorseLieAnime__9daAlink_cCFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daAlink_c::checkHorseLieAnime() const {
    nofralloc
#include "asm/d/a/d_a_alink/checkHorseLieAnime__9daAlink_cCFv.s"
}
#pragma pop

/* 800ECF5C-800ECF9C 0E789C 0040+00 0/0 0/0 3/3 .text checkHorseSubjectivity__9daAlink_cCFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkHorseSubjectivity() const {
    nofralloc
#include "asm/d/a/d_a_alink/checkHorseSubjectivity__9daAlink_cCFv.s"
}
#pragma pop

/* 800ECF9C-800ECFF4 0E78DC 0058+00 2/2 0/0 0/0 .text            setHorseSwordUpAnime__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setHorseSwordUpAnime() {
    nofralloc
#include "asm/d/a/d_a_alink/setHorseSwordUpAnime__9daAlink_cFv.s"
}
#pragma pop

/* 800ECFF4-800ED074 0E7934 0080+00 1/1 0/0 0/0 .text setHorseTurnUpperAnime__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setHorseTurnUpperAnime(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setHorseTurnUpperAnime__9daAlink_cFi.s"
}
#pragma pop

/* 800ED074-800ED0D4 0E79B4 0060+00 9/9 0/0 0/0 .text checkHorseNoUpperAnime__9daAlink_cCFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daAlink_c::checkHorseNoUpperAnime() const {
    nofralloc
#include "asm/d/a/d_a_alink/checkHorseNoUpperAnime__9daAlink_cCFv.s"
}
#pragma pop

/* 800ED0D4-800ED1F0 0E7A14 011C+00 0/0 0/0 2/2 .text getHorseReinHandPos__9daAlink_cFP4cXyzP4cXyz
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::getHorseReinHandPos(cXyz* param_0, cXyz* param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/getHorseReinHandPos__9daAlink_cFP4cXyzP4cXyz.s"
}
#pragma pop

/* 800ED1F0-800ED310 0E7B30 0120+00 1/1 0/0 1/1 .text            checkHorseNotGrab__9daAlink_cCFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkHorseNotGrab() const {
    nofralloc
#include "asm/d/a/d_a_alink/checkHorseNotGrab__9daAlink_cCFv.s"
}
#pragma pop

/* 800ED310-800ED4B8 0E7C50 01A8+00 1/1 0/0 0/0 .text            setHorseStirrup__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setHorseStirrup() {
    nofralloc
#include "asm/d/a/d_a_alink/setHorseStirrup__9daAlink_cFv.s"
}
#pragma pop

/* 800ED4B8-800ED4DC 0E7DF8 0024+00 1/1 0/0 0/0 .text            changeBoarRunRide__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::changeBoarRunRide() {
    nofralloc
#include "asm/d/a/d_a_alink/changeBoarRunRide__9daAlink_cFv.s"
}
#pragma pop

/* 800ED4DC-800ED78C 0E7E1C 02B0+00 7/7 0/0 0/0 .text            setSyncHorsePos__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setSyncHorsePos() {
    nofralloc
#include "asm/d/a/d_a_alink/setSyncHorsePos__9daAlink_cFv.s"
}
#pragma pop

/* 800ED78C-800ED90C 0E80CC 0180+00 4/4 0/0 0/0 .text            setSyncBoarPos__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setSyncBoarPos() {
    nofralloc
#include "asm/d/a/d_a_alink/setSyncBoarPos__9daAlink_cFv.s"
}
#pragma pop

/* 800ED90C-800EDA24 0E824C 0118+00 1/1 0/0 0/0 .text            setSyncBoarRunPos__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setSyncBoarRunPos() {
    nofralloc
#include "asm/d/a/d_a_alink/setSyncBoarRunPos__9daAlink_cFv.s"
}
#pragma pop

/* 800EDA24-800EDA78 0E8364 0054+00 33/33 0/0 0/0 .text            setSyncRidePos__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setSyncRidePos() {
    nofralloc
#include "asm/d/a/d_a_alink/setSyncRidePos__9daAlink_cFv.s"
}
#pragma pop

/* 800EDA78-800EDB48 0E83B8 00D0+00 6/6 0/0 0/0 .text            setHorseTurnAnime__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setHorseTurnAnime() {
    nofralloc
#include "asm/d/a/d_a_alink/setHorseTurnAnime__9daAlink_cFv.s"
}
#pragma pop

/* 800EDB48-800EDD6C 0E8488 0224+00 2/2 0/0 0/0 .text
 * getBaseHorseAnime__9daAlink_cFPQ29daAlink_c11daAlink_ANM     */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::getBaseHorseAnime(daAlink_c::daAlink_ANM* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/getBaseHorseAnime__9daAlink_cFPQ29daAlink_c11daAlink_ANM.s"
}
#pragma pop

/* 800EDD6C-800EDE8C 0E86AC 0120+00 9/9 0/0 0/0 .text            checkHorseSpecialProc__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkHorseSpecialProc() {
    nofralloc
#include "asm/d/a/d_a_alink/checkHorseSpecialProc__9daAlink_cFv.s"
}
#pragma pop

/* 800EDE8C-800EDEEC 0E87CC 0060+00 2/2 0/0 0/0 .text checkHorseServiceWaitAnime__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkHorseServiceWaitAnime() {
    nofralloc
#include "asm/d/a/d_a_alink/checkHorseServiceWaitAnime__9daAlink_cFv.s"
}
#pragma pop

/* 800EDEEC-800EE64C 0E882C 0760+00 1/1 0/0 0/0 .text            setSyncHorse__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setSyncHorse(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setSyncHorse__9daAlink_cFi.s"
}
#pragma pop

/* 800EE64C-800EE918 0E8F8C 02CC+00 1/1 0/0 0/0 .text            setSyncBoar__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setSyncBoar(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setSyncBoar__9daAlink_cFi.s"
}
#pragma pop

/* 800EE918-800EEAE8 0E9258 01D0+00 12/12 0/0 0/0 .text            setSyncRide__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setSyncRide(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setSyncRide__9daAlink_cFi.s"
}
#pragma pop

/* 800EEAE8-800EEC98 0E9428 01B0+00 2/2 0/0 0/0 .text setBaseHorseAnimeFrame__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setBaseHorseAnimeFrame() {
    nofralloc
#include "asm/d/a/d_a_alink/setBaseHorseAnimeFrame__9daAlink_cFv.s"
}
#pragma pop

/* 800EEC98-800EED98 0E95D8 0100+00 2/2 0/0 0/0 .text            setBaseBoarAnime__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setBaseBoarAnime() {
    nofralloc
#include "asm/d/a/d_a_alink/setBaseBoarAnime__9daAlink_cFv.s"
}
#pragma pop

/* 800EED98-800EEE30 0E96D8 0098+00 18/18 0/0 0/0 .text            setBaseRideAnime__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setBaseRideAnime() {
    nofralloc
#include "asm/d/a/d_a_alink/setBaseRideAnime__9daAlink_cFv.s"
}
#pragma pop

/* 800EEE30-800EEE5C 0E9770 002C+00 1/1 0/0 0/0 .text checkHorseSwordUpSpped__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkHorseSwordUpSpped() {
    nofralloc
#include "asm/d/a/d_a_alink/checkHorseSwordUpSpped__9daAlink_cFv.s"
}
#pragma pop

/* 800EEE5C-800EEF30 0E979C 00D4+00 2/2 0/0 0/0 .text            setHorseSwordUp__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setHorseSwordUp(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setHorseSwordUp__9daAlink_cFi.s"
}
#pragma pop

/* 800EEF30-800EF050 0E9870 0120+00 9/9 0/0 0/0 .text            setRideSubjectAngle__9daAlink_cFs
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setRideSubjectAngle(s16 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setRideSubjectAngle__9daAlink_cFs.s"
}
#pragma pop

/* 800EF050-800EF0E8 0E9990 0098+00 7/7 0/0 0/0 .text setBodyAngleRideReadyAnime__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setBodyAngleRideReadyAnime() {
    nofralloc
#include "asm/d/a/d_a_alink/setBodyAngleRideReadyAnime__9daAlink_cFv.s"
}
#pragma pop

/* 800EF0E8-800EF198 0E9A28 00B0+00 1/1 0/0 0/0 .text
 * checkHorseGetOffWallCheck__9daAlink_cFP4cXyzP4cXyzs          */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkHorseGetOffWallCheck(cXyz* param_0, cXyz* param_1, s16 param_2) {
    nofralloc
#include "asm/d/a/d_a_alink/checkHorseGetOffWallCheck__9daAlink_cFP4cXyzP4cXyzs.s"
}
#pragma pop

/* 800EF198-800EF35C 0E9AD8 01C4+00 2/2 0/0 0/0 .text checkHorseGetOffDirection__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkHorseGetOffDirection() {
    nofralloc
#include "asm/d/a/d_a_alink/checkHorseGetOffDirection__9daAlink_cFv.s"
}
#pragma pop

/* 800EF35C-800EF394 0E9C9C 0038+00 4/4 0/0 0/0 .text            boarForceGetOff__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::boarForceGetOff() {
    nofralloc
#include "asm/d/a/d_a_alink/boarForceGetOff__9daAlink_cFv.s"
}
#pragma pop

/* 800EF394-800EF450 0E9CD4 00BC+00 2/2 0/0 0/0 .text            horseGetOffEnd__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::horseGetOffEnd() {
    nofralloc
#include "asm/d/a/d_a_alink/horseGetOffEnd__9daAlink_cFv.s"
}
#pragma pop

/* 800EF450-800EF598 0E9D90 0148+00 12/12 0/0 0/0 .text checkNextActionHorse__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkNextActionHorse() {
    nofralloc
#include "asm/d/a/d_a_alink/checkNextActionHorse__9daAlink_cFv.s"
}
#pragma pop

/* 800EF598-800EF6B0 0E9ED8 0118+00 2/2 0/0 0/0 .text            checkHorseGetOff__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkHorseGetOff() {
    nofralloc
#include "asm/d/a/d_a_alink/checkHorseGetOff__9daAlink_cFv.s"
}
#pragma pop

/* 800EF6B0-800EF884 0E9FF0 01D4+00 3/3 0/0 0/0 .text checkHorseGetOffAndSetDoStatus__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkHorseGetOffAndSetDoStatus() {
    nofralloc
#include "asm/d/a/d_a_alink/checkHorseGetOffAndSetDoStatus__9daAlink_cFv.s"
}
#pragma pop

/* 800EF884-800EF95C 0EA1C4 00D8+00 2/2 0/0 0/0 .text            setHorseGetOff__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setHorseGetOff(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setHorseGetOff__9daAlink_cFi.s"
}
#pragma pop

/* 800EF95C-800EFDC4 0EA29C 0468+00 1/1 0/0 0/0 .text            procHorseRideInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseRideInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseRideInit__9daAlink_cFv.s"
}
#pragma pop

/* 800EFDC4-800F038C 0EA704 05C8+00 1/0 0/0 0/0 .text            procHorseRide__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseRide() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseRide__9daAlink_cFv.s"
}
#pragma pop

/* 800F038C-800F0620 0EACCC 0294+00 1/1 0/0 0/0 .text            procHorseGetOffInit__9daAlink_cFi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseGetOffInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseGetOffInit__9daAlink_cFi.s"
}
#pragma pop

/* 800F0620-800F0980 0EAF60 0360+00 1/0 0/0 0/0 .text            procHorseGetOff__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseGetOff() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseGetOff__9daAlink_cFv.s"
}
#pragma pop

/* 800F0980-800F0AA4 0EB2C0 0124+00 16/16 0/0 0/0 .text            procHorseWaitInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseWaitInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseWaitInit__9daAlink_cFv.s"
}
#pragma pop

/* 800F0AA4-800F0C6C 0EB3E4 01C8+00 1/0 0/0 0/0 .text            procHorseWait__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseWait() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseWait__9daAlink_cFv.s"
}
#pragma pop

/* 800F0C6C-800F0CE4 0EB5AC 0078+00 1/1 0/0 0/0 .text            procHorseTurnInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseTurnInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseTurnInit__9daAlink_cFv.s"
}
#pragma pop

/* 800F0CE4-800F1060 0EB624 037C+00 1/0 0/0 0/0 .text            procHorseTurn__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseTurn() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseTurn__9daAlink_cFv.s"
}
#pragma pop

/* 800F1060-800F10F8 0EB9A0 0098+00 1/1 0/0 0/0 .text            procHorseJumpInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseJumpInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseJumpInit__9daAlink_cFv.s"
}
#pragma pop

/* 800F10F8-800F1188 0EBA38 0090+00 1/0 0/0 0/0 .text            procHorseJump__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseJump() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseJump__9daAlink_cFv.s"
}
#pragma pop

/* 800F1188-800F1204 0EBAC8 007C+00 1/1 0/0 0/0 .text            procHorseLandInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseLandInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseLandInit__9daAlink_cFv.s"
}
#pragma pop

/* 800F1204-800F1294 0EBB44 0090+00 1/0 0/0 0/0 .text            procHorseLand__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseLand() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseLand__9daAlink_cFv.s"
}
#pragma pop

/* 800F1294-800F12F8 0EBBD4 0064+00 1/1 0/0 0/0 .text procHorseSubjectivityInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseSubjectivityInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseSubjectivityInit__9daAlink_cFv.s"
}
#pragma pop

/* 800F12F8-800F13D8 0EBC38 00E0+00 1/0 0/0 0/0 .text            procHorseSubjectivity__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseSubjectivity() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseSubjectivity__9daAlink_cFv.s"
}
#pragma pop

/* 800F13D8-800F1688 0EBD18 02B0+00 1/1 0/0 0/0 .text            procHorseCutInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseCutInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseCutInit__9daAlink_cFv.s"
}
#pragma pop

/* 800F1688-800F1894 0EBFC8 020C+00 1/0 0/0 0/0 .text            procHorseCut__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseCut() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseCut__9daAlink_cFv.s"
}
#pragma pop

/* 800F1894-800F194C 0EC1D4 00B8+00 3/3 0/0 0/0 .text procHorseCutChargeReadyInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseCutChargeReadyInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseCutChargeReadyInit__9daAlink_cFv.s"
}
#pragma pop

/* 800F194C-800F1AAC 0EC28C 0160+00 1/0 0/0 0/0 .text procHorseCutChargeReady__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseCutChargeReady() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseCutChargeReady__9daAlink_cFv.s"
}
#pragma pop

/* 800F1AAC-800F1BA4 0EC3EC 00F8+00 3/3 0/0 0/0 .text            procHorseCutTurnInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseCutTurnInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseCutTurnInit__9daAlink_cFv.s"
}
#pragma pop

/* 800F1BA4-800F1D18 0EC4E4 0174+00 1/0 0/0 0/0 .text            procHorseCutTurn__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseCutTurn() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseCutTurn__9daAlink_cFv.s"
}
#pragma pop

/* 800F1D18-800F2028 0EC658 0310+00 2/2 0/0 0/0 .text
 * procHorseDamageInit__9daAlink_cFP12dCcD_GObjInf              */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseDamageInit(dCcD_GObjInf* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseDamageInit__9daAlink_cFP12dCcD_GObjInf.s"
}
#pragma pop

/* 800F2028-800F2150 0EC968 0128+00 1/0 0/0 0/0 .text            procHorseDamage__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseDamage() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseDamage__9daAlink_cFv.s"
}
#pragma pop

/* 800F2150-800F21B4 0ECA90 0064+00 1/1 0/0 0/0 .text procHorseBowSubjectInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseBowSubjectInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseBowSubjectInit__9daAlink_cFv.s"
}
#pragma pop

/* 800F21B4-800F224C 0ECAF4 0098+00 1/0 0/0 0/0 .text            procHorseBowSubject__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseBowSubject() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseBowSubject__9daAlink_cFv.s"
}
#pragma pop

/* 800F224C-800F22A8 0ECB8C 005C+00 1/1 0/0 0/0 .text            procHorseBowMoveInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseBowMoveInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseBowMoveInit__9daAlink_cFv.s"
}
#pragma pop

/* 800F22A8-800F2334 0ECBE8 008C+00 1/0 0/0 0/0 .text            procHorseBowMove__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseBowMove() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseBowMove__9daAlink_cFv.s"
}
#pragma pop

/* 800F2334-800F2390 0ECC74 005C+00 2/2 0/0 0/0 .text            procHorseGrabMoveInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseGrabMoveInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseGrabMoveInit__9daAlink_cFv.s"
}
#pragma pop

/* 800F2390-800F2454 0ECCD0 00C4+00 1/0 0/0 0/0 .text            procHorseGrabMove__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseGrabMove() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseGrabMove__9daAlink_cFv.s"
}
#pragma pop

/* 800F2454-800F24C8 0ECD94 0074+00 1/1 0/0 0/0 .text procHorseBoomerangSubjectInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseBoomerangSubjectInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseBoomerangSubjectInit__9daAlink_cFv.s"
}
#pragma pop

/* 800F24C8-800F25B4 0ECE08 00EC+00 1/0 0/0 0/0 .text procHorseBoomerangSubject__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseBoomerangSubject() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseBoomerangSubject__9daAlink_cFv.s"
}
#pragma pop

/* 800F25B4-800F2628 0ECEF4 0074+00 1/1 0/0 0/0 .text procHorseBoomerangMoveInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseBoomerangMoveInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseBoomerangMoveInit__9daAlink_cFv.s"
}
#pragma pop

/* 800F2628-800F26F4 0ECF68 00CC+00 1/0 0/0 0/0 .text procHorseBoomerangMove__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseBoomerangMove() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseBoomerangMove__9daAlink_cFv.s"
}
#pragma pop

/* 800F26F4-800F2770 0ED034 007C+00 1/1 0/0 0/0 .text procHorseHookshotSubjectInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseHookshotSubjectInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseHookshotSubjectInit__9daAlink_cFv.s"
}
#pragma pop

/* 800F2770-800F2824 0ED0B0 00B4+00 1/0 0/0 0/0 .text procHorseHookshotSubject__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseHookshotSubject() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseHookshotSubject__9daAlink_cFv.s"
}
#pragma pop

/* 800F2824-800F2898 0ED164 0074+00 1/1 0/0 0/0 .text procHorseHookshotMoveInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseHookshotMoveInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseHookshotMoveInit__9daAlink_cFv.s"
}
#pragma pop

/* 800F2898-800F2934 0ED1D8 009C+00 1/0 0/0 0/0 .text            procHorseHookshotMove__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseHookshotMove() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseHookshotMove__9daAlink_cFv.s"
}
#pragma pop

/* 800F2934-800F2AD8 0ED274 01A4+00 1/1 0/0 0/0 .text procHorseBottleDrinkInit__9daAlink_cFUs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseBottleDrinkInit(u16 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseBottleDrinkInit__9daAlink_cFUs.s"
}
#pragma pop

/* 800F2AD8-800F2B4C 0ED418 0074+00 1/0 0/0 0/0 .text            procHorseBottleDrink__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseBottleDrink() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseBottleDrink__9daAlink_cFv.s"
}
#pragma pop

/* 800F2B4C-800F2C78 0ED48C 012C+00 1/1 0/0 0/0 .text procHorseKandelaarPourInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseKandelaarPourInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseKandelaarPourInit__9daAlink_cFv.s"
}
#pragma pop

/* 800F2C78-800F2D84 0ED5B8 010C+00 1/0 0/0 0/0 .text procHorseKandelaarPour__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseKandelaarPour() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseKandelaarPour__9daAlink_cFv.s"
}
#pragma pop

/* 800F2D84-800F2DE4 0ED6C4 0060+00 2/2 0/0 0/0 .text            procHorseComebackInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseComebackInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseComebackInit__9daAlink_cFv.s"
}
#pragma pop

/* 800F2DE4-800F2EE0 0ED724 00FC+00 1/0 0/0 0/0 .text            procHorseComeback__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseComeback() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseComeback__9daAlink_cFv.s"
}
#pragma pop

/* 800F2EE0-800F2F98 0ED820 00B8+00 2/2 0/0 0/0 .text            procHorseRunInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseRunInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseRunInit__9daAlink_cFv.s"
}
#pragma pop

/* 800F2F98-800F3430 0ED8D8 0498+00 1/0 0/0 0/0 .text            procHorseRun__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseRun() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseRun__9daAlink_cFv.s"
}
#pragma pop

/* 800F3430-800F3580 0EDD70 0150+00 1/1 0/0 0/0 .text
 * procHorseHangInit__9daAlink_cFP12dCcD_GObjInfi               */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseHangInit(dCcD_GObjInf* param_0, int param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseHangInit__9daAlink_cFP12dCcD_GObjInfi.s"
}
#pragma pop

/* 800F3580-800F36E4 0EDEC0 0164+00 1/0 0/0 0/0 .text            procHorseHang__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseHang() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseHang__9daAlink_cFv.s"
}
#pragma pop

/* 800F36E4-800F3754 0EE024 0070+00 1/0 0/0 0/0 .text            procHorseGetKeyInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseGetKeyInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseGetKeyInit__9daAlink_cFv.s"
}
#pragma pop

/* 800F3754-800F3818 0EE094 00C4+00 1/0 0/0 0/0 .text            procHorseGetKey__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseGetKey() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseGetKey__9daAlink_cFv.s"
}
#pragma pop

/* 800F3818-800F3894 0EE158 007C+00 1/0 0/0 0/0 .text            procHorseLookDownInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseLookDownInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseLookDownInit__9daAlink_cFv.s"
}
#pragma pop

/* 800F3894-800F38E8 0EE1D4 0054+00 1/0 0/0 0/0 .text            procHorseLookDown__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHorseLookDown() {
    nofralloc
#include "asm/d/a/d_a_alink/procHorseLookDown__9daAlink_cFv.s"
}
#pragma pop

/* 800F38E8-800F3998 0EE228 00B0+00 1/1 0/0 0/0 .text            procBoarRunInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procBoarRunInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procBoarRunInit__9daAlink_cFv.s"
}
#pragma pop

/* 800F3998-800F3BB0 0EE2D8 0218+00 1/0 0/0 0/0 .text            procBoarRun__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procBoarRun() {
    nofralloc
#include "asm/d/a/d_a_alink/procBoarRun__9daAlink_cFv.s"
}
#pragma pop