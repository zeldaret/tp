/**
 * d_a_alink_effect.inc
 * Player Particle Effect handling
 */

/* 80120580-80120634 11AEC0 00B4+00 21/21 0/0 0/0 .text
 * setEmitter__9daAlink_cFPUlUsPC4cXyzPC5csXyz                  */
// matches with literal
#ifdef NONMATCHING
void daAlink_c::setEmitter(u32* param_0, u16 param_1, cXyz const* param_2, csXyz const* param_3) {
    *param_0 = dComIfGp_particle_set(*param_0, param_1, param_2, &mTevStr, param_3, NULL, 0xFF,
                                     NULL, 0xFF, NULL, NULL, NULL);
    dComIfGp_particle_levelEmitterOnEventMove(*param_0);
    dComIfGp_particle_getEmitter(*param_0);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm JPABaseEmitter* daAlink_c::setEmitter(u32* param_0, u16 param_1, cXyz const* param_2,
                                          csXyz const* param_3) {
    nofralloc
#include "asm/d/a/d_a_alink/setEmitter__9daAlink_cFPUlUsPC4cXyzPC5csXyz.s"
}
#pragma pop
#endif

/* 80120634-801206C4 11AF74 0090+00 4/4 0/0 0/0 .text
 * setEmitterPolyColor__9daAlink_cFPUlUsR13cBgS_PolyInfoPC4cXyzPC5csXyz */
JPABaseEmitter* daAlink_c::setEmitterPolyColor(u32* param_0, u16 param_1, cBgS_PolyInfo& param_2,
                                               cXyz const* param_3, csXyz const* param_4) {
    *param_0 = dComIfGp_particle_setPolyColor(*param_0, param_1, param_2, param_3, &mTevStr,
                                              param_4, NULL, 0, NULL, -1, NULL);
    dComIfGp_particle_levelEmitterOnEventMove(*param_0);

    return dComIfGp_particle_getEmitter(*param_0);
}

/* 801206C4-80120778 11B004 00B4+00 2/2 0/0 0/0 .text
 * setEmitterColor__9daAlink_cFPUlUsPC4cXyzPC5csXyz             */
JPABaseEmitter* daAlink_c::setEmitterColor(u32* param_0, u16 param_1, cXyz const* param_2,
                                           csXyz const* param_3) {
    *param_0 = dComIfGp_particle_setColor(*param_0, param_1, param_2, &mTevStr, NULL, NULL,
                                          FLOAT_LABEL(lit_6108), -1, param_3, NULL, NULL, -1, NULL);
    dComIfGp_particle_levelEmitterOnEventMove(*param_0);

    return dComIfGp_particle_getEmitter(*param_0);
}

/* 80120778-801207BC 11B0B8 0044+00 9/9 0/0 0/0 .text            stopDrawParticle__9daAlink_cFUl */
void daAlink_c::stopDrawParticle(u32 param_0) {
    JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(param_0);

    if (emitter != NULL) {
        emitter->stopDrawParticle();
    }
}

/* 801207BC-80120880 11B0FC 00C4+00 1/0 0/0 0/0 .text setEffectFrontRollParam__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setEffectFrontRollParam() {
    nofralloc
#include "asm/d/a/d_a_alink/setEffectFrontRollParam__9daAlink_cFv.s"
}
#pragma pop

/* 80120880-80120B00 11B1C0 0280+00 1/0 0/0 0/0 .text            setEffectSlipParam__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setEffectSlipParam() {
    nofralloc
#include "asm/d/a/d_a_alink/setEffectSlipParam__9daAlink_cFv.s"
}
#pragma pop

/* 80120B00-80120DB0 11B440 02B0+00 1/0 0/0 0/0 .text            setEffectRunParam__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setEffectRunParam() {
    nofralloc
#include "asm/d/a/d_a_alink/setEffectRunParam__9daAlink_cFv.s"
}
#pragma pop

/* 80120DB0-80121000 11B6F0 0250+00 1/0 0/0 0/0 .text setEffectSmallLandParam__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setEffectSmallLandParam() {
    nofralloc
#include "asm/d/a/d_a_alink/setEffectSmallLandParam__9daAlink_cFv.s"
}
#pragma pop

/* 80121000-80121004 11B940 0004+00 1/0 0/0 0/0 .text            setEffectLandParam__9daAlink_cFv */
void daAlink_c::setEffectLandParam() {}

/* 80121004-801211C0 11B944 01BC+00 1/0 0/0 0/0 .text            setEffectSumouParam__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setEffectSumouParam() {
    nofralloc
#include "asm/d/a/d_a_alink/setEffectSumouParam__9daAlink_cFv.s"
}
#pragma pop

/* 801211C0-80121214 11BB00 0054+00 46/46 0/0 0/0 .text setFootEffectProcType__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setFootEffectProcType(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setFootEffectProcType__9daAlink_cFi.s"
}
#pragma pop

/* 80121214-80121304 11BB54 00F0+00 1/1 0/0 0/0 .text            setWolfFootOn__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setWolfFootOn(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setWolfFootOn__9daAlink_cFi.s"
}
#pragma pop

/* 80121304-80121388 11BC44 0084+00 1/1 0/0 0/0 .text            setFootMark__9daAlink_cFP4cXyzUsi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setFootMark(cXyz* param_0, u16 param_1, int param_2) {
    nofralloc
#include "asm/d/a/d_a_alink/setFootMark__9daAlink_cFP4cXyzUsi.s"
}
#pragma pop

/* 80121388-801221F0 11BCC8 0E68+00 1/1 0/0 0/0 .text            setEffect__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setEffect() {
    nofralloc
#include "asm/d/a/d_a_alink/setEffect__9daAlink_cFv.s"
}
#pragma pop

/* 801221F0-801225E8 11CB30 03F8+00 1/1 0/0 0/0 .text            setSumouEffect__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setSumouEffect() {
    nofralloc
#include "asm/d/a/d_a_alink/setSumouEffect__9daAlink_cFv.s"
}
#pragma pop

/* 801225E8-80122654 11CF28 006C+00 1/1 0/0 0/0 .text setWaterfallEffect__9daAlink_cFPC4cXyzPUl */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setWaterfallEffect(cXyz const* param_0, u32* param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/setWaterfallEffect__9daAlink_cFPC4cXyzPUl.s"
}
#pragma pop

/* 80122654-8012277C 11CF94 0128+00 1/1 0/0 0/0 .text            setWaterfallEffect__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setWaterfallEffect() {
    nofralloc
#include "asm/d/a/d_a_alink/setWaterfallEffect__9daAlink_cFv.s"
}
#pragma pop

/* 8012277C-801228F4 11D0BC 0178+00 1/1 0/0 0/0 .text            setMagneBootsEffect__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setMagneBootsEffect() {
    nofralloc
#include "asm/d/a/d_a_alink/setMagneBootsEffect__9daAlink_cFv.s"
}
#pragma pop

/* 801228F4-80122BBC 11D234 02C8+00 1/1 0/0 0/0 .text            setSwordChargeEffect__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setSwordChargeEffect() {
    nofralloc
#include "asm/d/a/d_a_alink/setSwordChargeEffect__9daAlink_cFv.s"
}
#pragma pop

/* 80122BBC-80122F18 11D4FC 035C+00 1/1 0/0 0/0 .text            setElecDamageEffect__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setElecDamageEffect() {
    nofralloc
#include "asm/d/a/d_a_alink/setElecDamageEffect__9daAlink_cFv.s"
}
#pragma pop

/* 80122F18-80122F78 11D858 0060+00 1/1 0/0 0/0 .text            clearCutTurnEffectID__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::clearCutTurnEffectID() {
    nofralloc
#include "asm/d/a/d_a_alink/clearCutTurnEffectID__9daAlink_cFv.s"
}
#pragma pop

/* 80122F78-801233A4 11D8B8 042C+00 1/1 0/0 0/0 .text            setCutTurnEffect__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setCutTurnEffect() {
    nofralloc
#include "asm/d/a/d_a_alink/setCutTurnEffect__9daAlink_cFv.s"
}
#pragma pop

/* 801233A4-80123434 11DCE4 0090+00 1/1 0/0 0/0 .text            setHorseCutTurnEffect__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setHorseCutTurnEffect() {
    nofralloc
#include "asm/d/a/d_a_alink/setHorseCutTurnEffect__9daAlink_cFv.s"
}
#pragma pop

/* 80123434-801236BC 11DD74 0288+00 1/1 0/0 0/0 .text setCutLargeJumpLandEffect__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setCutLargeJumpLandEffect() {
    nofralloc
#include "asm/d/a/d_a_alink/setCutLargeJumpLandEffect__9daAlink_cFv.s"
}
#pragma pop

/* 801236BC-801237A8 11DFFC 00EC+00 1/1 0/0 0/0 .text            setBootsLightEffect__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setBootsLightEffect() {
    nofralloc
#include "asm/d/a/d_a_alink/setBootsLightEffect__9daAlink_cFv.s"
}
#pragma pop

/* 801237A8-801238FC 11E0E8 0154+00 1/1 0/0 0/0 .text setLightningSwordEffect__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setLightningSwordEffect() {
    nofralloc
#include "asm/d/a/d_a_alink/setLightningSwordEffect__9daAlink_cFv.s"
}
#pragma pop

/* 801238FC-801239B0 11E23C 00B4+00 1/1 0/0 0/0 .text setWolfRollAttackEffect__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setWolfRollAttackEffect() {
    nofralloc
#include "asm/d/a/d_a_alink/setWolfRollAttackEffect__9daAlink_cFv.s"
}
#pragma pop

/* 801239B0-80123BF0 11E2F0 0240+00 1/1 0/0 0/0 .text            setWolfDigEffect__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setWolfDigEffect() {
    nofralloc
#include "asm/d/a/d_a_alink/setWolfDigEffect__9daAlink_cFv.s"
}
#pragma pop

/* 80123BF0-80123C8C 11E530 009C+00 2/2 0/0 0/0 .text
 * setWolfSwimEndEffect__9daAlink_cFPP14JPABaseEmitterPP14JPABaseEmitter */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setWolfSwimEndEffect(JPABaseEmitter** param_0, JPABaseEmitter** param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/setWolfSwimEndEffect__9daAlink_cFPP14JPABaseEmitterPP14JPABaseEmitter.s"
}
#pragma pop

/* 80123C8C-80123D88 11E5CC 00FC+00 1/1 0/0 0/0 .text setWolfLockAttackEffect__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setWolfLockAttackEffect() {
    nofralloc
#include "asm/d/a/d_a_alink/setWolfLockAttackEffect__9daAlink_cFv.s"
}
#pragma pop

/* 80123D88-80123ED0 11E6C8 0148+00 1/1 0/0 0/0 .text setWolfJumpAttackEffect__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setWolfJumpAttackEffect() {
    nofralloc
#include "asm/d/a/d_a_alink/setWolfJumpAttackEffect__9daAlink_cFv.s"
}
#pragma pop

/* 80123ED0-80124144 11E810 0274+00 2/2 0/0 0/0 .text
 * setWolfBarrierHitEffect__9daAlink_cFR11dBgS_LinChk           */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setWolfBarrierHitEffect(dBgS_LinChk& param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setWolfBarrierHitEffect__9daAlink_cFR11dBgS_LinChk.s"
}
#pragma pop

/* 80124144-801241E0 11EA84 009C+00 9/9 0/0 0/0 .text            setCutWaterDropEffect__9daAlink_cFv
 */
void daAlink_c::setCutWaterDropEffect() {
    if (field_0x32c0[0] > 0) {
        cXyz sp18;
        mDoMtx_multVecZero(mpLinkModel->i_getAnmMtx(1), &sp18);
        dComIfGp_particle_setColor(0x2A4, &sp18, &mTevStr, NULL, NULL, FLOAT_LABEL(lit_6108), -1,
                                   &shape_angle, NULL, NULL, -1, NULL);
    }
}

/* 801241E0-801244E4 11EB20 0304+00 1/1 0/0 0/0 .text            setWaterDropEffect__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setWaterDropEffect() {
    nofralloc
#include "asm/d/a/d_a_alink/setWaterDropEffect__9daAlink_cFv.s"
}
#pragma pop

/* 801244E4-801245EC 11EE24 0108+00 1/1 0/0 0/0 .text            setSwordUpColorEffect__9daAlink_cFv
 */
// matches with literals
#ifdef NONMATCHING
void daAlink_c::setSwordUpColorEffect() {
    f32 max_intensity;
    if (mSwordUpTimer != 0) {
        max_intensity = 1.0f;
    } else {
        max_intensity = 0.0f;
    }
    cLib_chaseF(&mSwordUpColorIntensity, max_intensity, 0.1f);

    for (int i = 0; i < 2; i++) {
        field_0x32b0[i].mColor.r = mSwordUpColorIntensity * swordUpColor[i].r;
        field_0x32b0[i].mColor.g = mSwordUpColorIntensity * swordUpColor[i].g;
        field_0x32b0[i].mColor.b = mSwordUpColorIntensity * swordUpColor[i].b;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setSwordUpColorEffect() {
    nofralloc
#include "asm/d/a/d_a_alink/setSwordUpColorEffect__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 801245EC-80124738 11EF2C 014C+00 1/1 0/0 0/0 .text            setSwordCutSplash__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setSwordCutSplash() {
    nofralloc
#include "asm/d/a/d_a_alink/setSwordCutSplash__9daAlink_cFv.s"
}
#pragma pop

/* 80124738-801247A8 11F078 0070+00 1/1 0/0 0/0 .text setMetamorphoseEffectStartLink__9daAlink_cFv
 */
void daAlink_c::setMetamorphoseEffectStartLink() {
    setEmitter(&field_0x31f8, 0x24F, &field_0x37c8, NULL);
    setEmitter(&field_0x31fc, 0x250, &field_0x37c8, NULL);
    setEmitter(&field_0x3200, 0x6E8, &cXyz::Zero, NULL);
}

/* 801247A8-801248A8 11F0E8 0100+00 1/1 0/0 0/0 .text            setMetamorphoseEffect__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setMetamorphoseEffect() {
    nofralloc
#include "asm/d/a/d_a_alink/setMetamorphoseEffect__9daAlink_cFv.s"
}
#pragma pop

/* 801248A8-80124A2C 11F1E8 0184+00 1/1 0/0 0/0 .text            setRunSplash__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setRunSplash() {
    nofralloc
#include "asm/d/a/d_a_alink/setRunSplash__9daAlink_cFv.s"
}
#pragma pop

/* 80124A2C-80124B68 11F36C 013C+00 1/0 0/0 0/0 .text
 * execute__29dAlink_bottleWaterPcallBack_cFP14JPABaseEmitterP15JPABaseParticle */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void execute__29dAlink_bottleWaterPcallBack_cFP14JPABaseEmitterP15JPABaseParticle() {
    // asm void dAlink_bottleWaterPcallBack_c::execute(JPABaseEmitter* param_0, JPABaseParticle*
    // param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/execute__29dAlink_bottleWaterPcallBack_cFP14JPABaseEmitterP15JPABaseParticle.s"
}
#pragma pop

/* 80124B68-80124BA4 11F4A8 003C+00 2/2 0/0 0/0 .text            resetFairyEffect__9daAlink_cFv */
void daAlink_c::resetFairyEffect() {
    stopDrawParticle(field_0x3258);
    stopDrawParticle(field_0x325c);
}

/* 80124BA4-80124E28 11F4E4 0284+00 1/1 0/0 0/0 .text            setBottleEffect__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setBottleEffect() {
    nofralloc
#include "asm/d/a/d_a_alink/setBottleEffect__9daAlink_cFv.s"
}
#pragma pop

/* 80124E28-80124EA8 11F768 0080+00 2/2 0/0 0/0 .text clearFirePointDamageEffect__9daAlink_cFi */
void daAlink_c::clearFirePointDamageEffect(int i) {
    firePointEff_c* fire_eff = &field_0x32d8[i];

    if (fire_eff->field_0x0 != 0) {
        stopDrawParticle(fire_eff->field_0x4);
        stopDrawParticle(fire_eff->field_0x8);
    }
    fire_eff->field_0x0 = 0;
    fire_eff->field_0x24 = cXyz::Zero;
}

/* 80124EA8-80124FA4 11F7E8 00FC+00 1/1 0/0 0/0 .text initFirePointDamageEffectAll__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::initFirePointDamageEffectAll() {
    nofralloc
#include "asm/d/a/d_a_alink/initFirePointDamageEffectAll__9daAlink_cFv.s"
}
#pragma pop

/* 80124FA4-80125128 11F8E4 0184+00 1/1 0/0 0/0 .text
 * initFirePointDamageEffect__9daAlink_cFPC4cXyzP12dCcD_GObjInf */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::initFirePointDamageEffect(cXyz const* param_0, dCcD_GObjInf* param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/initFirePointDamageEffect__9daAlink_cFPC4cXyzP12dCcD_GObjInf.s"
}
#pragma pop

/* 80125128-80125338 11FA68 0210+00 1/1 0/0 0/0 .text setFirePointDamageEffect__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setFirePointDamageEffect() {
    nofralloc
#include "asm/d/a/d_a_alink/setFirePointDamageEffect__9daAlink_cFv.s"
}
#pragma pop

/* 80125338-80125524 11FC78 01EC+00 1/1 0/0 0/0 .text            setFreezeEffect__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setFreezeEffect() {
    nofralloc
#include "asm/d/a/d_a_alink/setFreezeEffect__9daAlink_cFv.s"
}
#pragma pop

/* 80125524-801255BC 11FE64 0098+00 1/1 0/0 0/0 .text setWoodShieldBurnEffect__9daAlink_cFv */
void daAlink_c::setWoodShieldBurnEffect() {
    if (field_0x2fcb != 0) {
        for (int i = 0; i < 2; i++) {
            JPABaseEmitter* emitter =
                setEmitter(&field_0x3260[i], effName_42309[i], &current.pos, NULL);

            if (emitter != NULL) {
                emitter->setGlobalRTMatrix(mShieldModel->getBaseTRMtx());
            }
        }
    }
}

/* 801255BC-80125628 11FEFC 006C+00 3/3 0/0 0/0 .text clearWoodShieldBurnEffect__9daAlink_cFv */
void daAlink_c::clearWoodShieldBurnEffect() {
    if (field_0x2fcb != 0) {
        for (int i = 0; i < 2; i++) {
            stopDrawParticle(field_0x3260[i]);
        }

        field_0x2fcb = 0;
    }
}

/* 80125628-801256EC 11FF68 00C4+00 1/1 0/0 0/0 .text setWoodShieldBurnOutEffect__9daAlink_cFv */
void daAlink_c::setWoodShieldBurnOutEffect() {
    for (int i = 0; i < 2; i++) {
        JPABaseEmitter* emitter = dComIfGp_particle_setColor(
            effName_42340[i], &current.pos, &mTevStr, NULL, NULL, FLOAT_LABEL(lit_6108), -1);

        if (emitter != NULL) {
            emitter->setGlobalRTMatrix(mShieldModel->getBaseTRMtx());
        }
    }

    field_0x2fcb = 1;
    clearWoodShieldBurnEffect();
}

/* 801256EC-80125778 12002C 008C+00 2/2 0/0 0/0 .text
 * initBlur__14daAlink_blur_cFfiPC4cXyzPC4cXyzPC4cXyz           */
void daAlink_blur_c::initBlur(f32 param_0, int param_1, cXyz const* param_2, cXyz const* param_3,
                              cXyz const* param_4) {
    field_0x24 = param_0;
    field_0x1c = param_1;
    field_0x2c = *param_4;
    field_0x38[0] = *param_2;
    field_0x308[0] = *param_3;
    field_0x38[1] = field_0x38[0];
    field_0x308[1] = field_0x308[0];
    field_0x14 = 0;
}

/* 80125778-8012589C 1200B8 0124+00 1/1 0/0 0/0 .text
 * setBezierPos__FPC4cXyzPC4cXyzPC4cXyzPC4cXyzfP4cXyz           */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void setBezierPos(cXyz const* param_0, cXyz const* param_1, cXyz const* param_2,
                             cXyz const* param_3, f32 param_4, cXyz* param_5) {
    nofralloc
#include "asm/d/a/d_a_alink/setBezierPos__FPC4cXyzPC4cXyzPC4cXyzPC4cXyzfP4cXyz.s"
}
#pragma pop

/* 8012589C-80125B0C 1201DC 0270+00 1/1 0/0 0/0 .text
 * copyBlur__14daAlink_blur_cFPC4cXyzPC4cXyzPC4cXyz             */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_blur_c::copyBlur(cXyz const* param_0, cXyz const* param_1, cXyz const* param_2) {
    nofralloc
#include "asm/d/a/d_a_alink/copyBlur__14daAlink_blur_cFPC4cXyzPC4cXyzPC4cXyz.s"
}
#pragma pop

/* 80125B0C-80125BF4 12044C 00E8+00 1/1 0/0 0/0 .text traceBlur__14daAlink_blur_cFPC4cXyzPC4cXyzs
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_blur_c::traceBlur(cXyz const* param_0, cXyz const* param_1, s16 param_2) {
    nofralloc
#include "asm/d/a/d_a_alink/traceBlur__14daAlink_blur_cFPC4cXyzPC4cXyzs.s"
}
#pragma pop

/* ############################################################################################## */
/* 804256CC-804256EC 0523EC 0020+00 1/1 0/0 0/0 .bss             texObj$42524 */
static u8 texObj[32];

/* 804506A4-804506A8 000124 0004+00 1/1 0/0 0/0 .sdata           nColor0$42525 */
SECTION_SDATA static u8 nColor0[4] = {
    0xFF,
    0xFF,
    0xFF,
    0x14,
};

/* 80125BF4-80125F14 120534 0320+00 1/0 0/0 0/0 .text            draw__14daAlink_blur_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void draw__14daAlink_blur_cFv() {
    // asm void daAlink_blur_c::draw() {
    nofralloc
#include "asm/d/a/d_a_alink/draw__14daAlink_blur_cFv.s"
}
#pragma pop

/* 80125F14-80126350 120854 043C+00 1/1 0/0 0/0 .text            create__20daAlink_lockCursor_cFv */
BOOL daAlink_lockCursor_c::create() {
    JKRArchive* arc = dComIfG_getObjectResInfo(l_arcName)->getArchive();

    f32 tmp = FLOAT_LABEL(lit_6108);
    field_0x2c = tmp;
    field_0x4 = false;
    field_0x30 = tmp;

    mScrn = new J2DScreen();
    if (mScrn == NULL) {
        return false;
    }

    mScrn->setPriority("zelda_v_cursor_new_yellow.blo", 0x100000, arc);
    dPaneClass_showNullPane(mScrn);

    void* tmpData = JKRFileLoader::getGlbResource("zelda_v_cursor_new_yellow.bpk", arc);
    field_0x24 = (J2DAnmColorKey*)J2DAnmLoaderDataBase::load(tmpData);
    if (field_0x24 == NULL) {
        return false;
    }

    tmpData = JKRFileLoader::getGlbResource("zelda_v_cursor_new_yellow.bck", arc);
    field_0x28 = (J2DAnmTransformKey*)J2DAnmLoaderDataBase::load(tmpData);
    if (field_0x28 == NULL) {
        return false;
    }

    tmpData = JKRFileLoader::getGlbResource("zelda_v_cursor_new_yellow_02.brk", arc);
    field_0x1c = (J2DAnmTevRegKey*)J2DAnmLoaderDataBase::load(tmpData);
    if (field_0x1c == NULL) {
        return false;
    }

    tmpData = JKRFileLoader::getGlbResource("zelda_v_cursor_new_yellow.brk", arc);
    field_0x20 = (J2DAnmTevRegKey*)J2DAnmLoaderDataBase::load(tmpData);
    if (field_0x20 == NULL) {
        return false;
    }

    field_0xc = mScrn->search('n_all');
    mCursor0 = mScrn->search('cursor0');
    mCursor1 = mScrn->search('cursor1');
    mCursor2 = mScrn->search('cursor2');

    field_0x28->searchUpdateMaterialID(mScrn);
    field_0xc->setAnimation(field_0x28);
    mCursor0->setAnimation(field_0x28);
    mCursor1->setAnimation(field_0x28);
    mCursor2->setAnimation(field_0x28);
    field_0x28->setFrame(FLOAT_LABEL(lit_6108));

    field_0x24->searchUpdateMaterialID(mScrn);
    mCursor0->setAnimation(field_0x24);
    mCursor1->setAnimation(field_0x24);
    mCursor2->setAnimation(field_0x24);
    mScrn->search('flash')->setAnimation(field_0x24);
    field_0x24->setFrame(FLOAT_LABEL(lit_6108));

    field_0x1c->searchUpdateMaterialID(mScrn);
    field_0x20->searchUpdateMaterialID(mScrn);
    mCursor0->setAnimation(field_0x1c);
    mCursor1->setAnimation(field_0x1c);
    mCursor2->setAnimation(field_0x1c);
    mCursor0->setAnimation(field_0x20);
    mCursor1->setAnimation(field_0x20);
    mCursor2->setAnimation(field_0x20);
    f32 tmp2 = FLOAT_LABEL(lit_6108);
    field_0x1c->setFrame(tmp2);
    field_0x20->setFrame(tmp2);

    mScrn->animation();
    mScrn->setUserInfo('n_43');
    field_0xc->setUserInfo(0x20);
    return true;
}

/* 80126350-80126354 120C90 0004+00 0/0 4/0 0/0 .text setAnimation__7J2DPaneFP15J2DAnmTevRegKey */
// void J2DPane::setAnimation(J2DAnmTevRegKey* param_0) {
extern "C" void setAnimation__7J2DPaneFP15J2DAnmTevRegKey() {
    /* empty function */
}

/* 80126354-80126358 120C94 0004+00 0/0 4/0 0/0 .text setAnimation__7J2DPaneFP11J2DAnmColor */
// void J2DPane::setAnimation(J2DAnmColor* param_0) {
extern "C" void setAnimation__7J2DPaneFP11J2DAnmColor() {
    /* empty function */
}

/* 80126358-80126424 120C98 00CC+00 1/1 0/0 0/0 .text            update__20daAlink_lockCursor_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_lockCursor_c::update() {
    nofralloc
#include "asm/d/a/d_a_alink/update__20daAlink_lockCursor_cFv.s"
}
#pragma pop

/* 80126424-80126650 120D64 022C+00 1/0 0/0 0/0 .text            draw__20daAlink_lockCursor_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void draw__20daAlink_lockCursor_cFv() {
    // asm void daAlink_lockCursor_c::draw() {
    nofralloc
#include "asm/d/a/d_a_alink/draw__20daAlink_lockCursor_cFv.s"
}
#pragma pop

/* 80126650-801266C0 120F90 0070+00 1/1 0/0 0/0 .text            create__15daAlink_sight_cFv */
bool daAlink_sight_c::create() {
    if (!mLockCursor.create()) {
        return false;
    }

    ResTIMG* data = (ResTIMG*)dComIfG_getObjectRes(l_arcName, daAlink_c::getSightBti());
    setSightImage(data);
    return true;
}

/* 801266C0-80126710 121000 0050+00 1/0 0/0 0/0 .text            draw__15daAlink_sight_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void draw__15daAlink_sight_cFv() {
    // asm void daAlink_sight_c::draw() {
    nofralloc
#include "asm/d/a/d_a_alink/draw__15daAlink_sight_cFv.s"
}
#pragma pop

/* 80126710-80126740 121050 0030+00 2/2 0/0 0/0 .text            onLockFlg__15daAlink_sight_cFv */
// matches with literals
#ifdef NONMATCHING
void daAlink_sight_c::onLockFlg() {
    if (mLockFlag) {
        return;
    }
    mLockFlag = true;
    mLockCursor.initFrame();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_sight_c::onLockFlg() {
    nofralloc
#include "asm/d/a/d_a_alink/onLockFlg__15daAlink_sight_cFv.s"
}
#pragma pop
#endif