#include "d/d_a/d_a_alink/d_a_alink.h"
#include "f/f_pc/f_pc_searcher.h"

u32 daAlink_c::getE3Zhint(void) {
    return 0;
}

asm const char* daAlink_c::getAlinkArcName(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8009D884.s"
}

asm void daAlink_tgHitCallback(fopAc_ac_c*, dCcD_GObjInf*, fopAc_ac_c*, dCcD_GObjInf*) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8009D88C.s"
}

asm void daAlink_coHitCallback(fopAc_ac_c*, dCcD_GObjInf*, fopAc_ac_c*, dCcD_GObjInf*) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8009D8B8.s"
}

void daAlink_matAnm_c::init(void) {
    float init = lbl_80452CC0;

    unk244 = init;
    unk248 = init;
    unk252 = init;
    unk256 = init;
    lbl_80450FC8 = 0;
    lbl_80450FC9 = 0;
    unk260 = 0;
}

asm void daAlink_matAnm_c::calc(J3DMaterial*) const {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8009D90C.s"
}

// 1 missing mr instruction
#ifdef NONMATCHING
u32 daAlink_c::checkStageName(const char* stage) {
    return (u32)__cntlzw(strcmp(g_dComIfG_gameInfo.stage, (char*)stage)) >>
           5;  // no idea if current stage vars are a struct or part of some class
}
#else
asm u32 daAlink_c::checkStageName(char const* stage) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8009DA60.s"
}
#endif

asm void daAlink_c::tgHitCallback(fopAc_ac_c*, dCcD_GObjInf*, dCcD_GObjInf*) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8009DA98.s"
}

asm void daAlink_c::coHitCallback(fopAc_ac_c*, dCcD_GObjInf*) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8009DB64.s"
}

asm void daAlink_c::setMatrixWorldAxisRot(float (*)[4], short, short, short, int, const cXyz*) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8009DC6C.s"
}

asm bool daAlink_c::jointControll(int) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8009DD90.s"
}

asm void daAlink_c::setUpperFront(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8009E7B8.s"
}

asm void daAlink_c::changeBlendRate(int) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8009E91C.s"
}

asm void daAlink_c::resetRootMtx(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8009EB18.s"
}

asm bool daAlink_c::modelCallBack(int) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8009EB58.s"
}

asm bool daAlink_modelCallBack(J3DJoint*, int) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8009EC28.s"
}

asm bool daAlink_c::headModelCallBack(int) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8009ECA0.s"
}

asm bool daAlink_headModelCallBack(J3DJoint*, int) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8009EF38.s"
}

asm bool daAlink_c::wolfModelCallBack(int) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8009EF7C.s"
}

asm bool daAlink_wolfModelCallBack(J3DJoint*, int) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8009EFF0.s"
}

asm void daAlink_c::setHatAngle(void) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8009F034.s"
}

asm void daAlink_c::calcHairAngle(short*) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_8009FFF8.s"
}

asm void daAlink_c::setHairAngle(cXyz*, float, float) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A002C.s"
}

asm void daAlink_c::setLookPosFromOut(cXyz*) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A0744.s"
}

asm int daAlink_c::checkAttentionPosAngle(cXyz*) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A07D8.s"
}

asm bool daAlink_c::checkActorPosAngle(fopAc_ac_c*, cXyz**) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A0868.s"
}

asm cXyz* daAlink_c::getNeckAimPos(cXyz*, int*, int) {
    nofralloc
#include "d/d_a/d_a_alink/asm/func_800A093C.s"
}