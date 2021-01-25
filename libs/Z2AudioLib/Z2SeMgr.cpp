#include "Z2AudioLib/Z2SeMgr/Z2SeMgr.h"
#include "JSystem/JAudio2/JAISeCategoryMgr.h"
#include "JSystem/JAudio2/JAISoundParamsMove.h"
#include "JSystem/JAudio2/JAIStreamMgr.h"
#include "Z2AudioLib/Z2Audience/Z2Audience.h"
#include "Z2AudioLib/Z2Calc/Z2Calc.h"
#include "Z2AudioLib/Z2SoundMgr/Z2SoundMgr.h"
#include "Z2AudioLib/Z2SoundObjMgr/Z2SoundObjMgr.h"
#include "Z2AudioLib/Z2SoundStarter/Z2SoundStarter.h"
#include "Z2AudioLib/Z2SpeechMgr2/Z2SpeechMgr2.h"
#include "Z2AudioLib/Z2StatusMgr/Z2StatusMgr.h"
#include "m_Do/m_Do_audio/m_Do_audio.h"

asm Z2SeMgr::Z2SeMgr(void) {
    nofralloc
#include "Z2AudioLib/Z2SeMgr/asm/func_802AB64C.s"
}

asm Z2MultiSeObj::Z2MultiSeObj(void) {
    nofralloc
#include "Z2AudioLib/Z2SeMgr/asm/func_802AB710.s"
}

asm void Z2SeMgr::initSe(void) {
    nofralloc
#include "Z2AudioLib/Z2SeMgr/asm/func_802AB750.s"
}

asm void Z2SeMgr::resetModY(void) {
    nofralloc
#include "Z2AudioLib/Z2SeMgr/asm/func_802AB80C.s"
}

asm void Z2SeMgr::modHeightAtCamera(Vec const** param1) {
    nofralloc
#include "Z2AudioLib/Z2SeMgr/asm/func_802AB830.s"
}

void Z2SeMgr::incrCrowdSize(void) {
    mCrowdSize++;

    if (mCrowdSize > 100)
        mCrowdSize = 100;
}

void Z2SeMgr::decrCrowdSize(void) {
    mCrowdSize--;

    //! @bug probably copypasta from incrCrowdSize(), but semantically it's still correct:
    //! mCrowdSize is a u8, so an underflow would result in mCrowdSize > 100, triggering the clamp.
    if (mCrowdSize > 100)
        mCrowdSize = 0;
}

asm void Z2SeMgr::seStart(JAISoundID, Vec const*, u32, s8, float, float, float, float, u8) {
    nofralloc
#include "Z2AudioLib/Z2SeMgr/asm/func_802AB984.s"
}

asm void Z2SeMgr::seStartLevel(JAISoundID, Vec const*, u32, s8, float, float, float, float, u8) {
    nofralloc
#include "Z2AudioLib/Z2SeMgr/asm/func_802AC50C.s"
}

asm void Z2SeMgr::seStop(JAISoundID, u32) {
    nofralloc
#include "Z2AudioLib/Z2SeMgr/asm/func_802AD8B0.s"
}

asm void Z2SeMgr::seStopAll(u32) {
    nofralloc
#include "Z2AudioLib/Z2SeMgr/asm/func_802AD94C.s"
}

asm void Z2SeMgr::seMoveVolumeAll(float, u32) {
    nofralloc
#include "Z2AudioLib/Z2SeMgr/asm/func_802AD9F4.s"
}

asm void Z2SeMgr::messageSePlay(u16, Vec*, s8) {
    nofralloc
#include "Z2AudioLib/Z2SeMgr/asm/func_802ADB14.s"
}

asm void Z2SeMgr::talkInSe(void) {
    nofralloc
#include "Z2AudioLib/Z2SeMgr/asm/func_802ADB50.s"
}

asm void Z2SeMgr::talkOutSe(void) {
    nofralloc
#include "Z2AudioLib/Z2SeMgr/asm/func_802ADC54.s"
}

asm void Z2SeMgr::menuInSe(void) {
    nofralloc
#include "Z2AudioLib/Z2SeMgr/asm/func_802ADD58.s"
}

asm void Z2SeMgr::setLevObjSE(u32, Vec*, s8) {
    nofralloc
#include "Z2AudioLib/Z2SeMgr/asm/func_802ADE5C.s"
}

asm void Z2SeMgr::setMultiTriggerSE(u32, Vec*, s8) {
    nofralloc
#include "Z2AudioLib/Z2SeMgr/asm/func_802ADFF4.s"
}

asm void Z2SeMgr::processSeFramework(void) {
    nofralloc
#include "Z2AudioLib/Z2SeMgr/asm/func_802AE184.s"
}

asm bool Z2SeMgr::isLevelSe(JAISoundID) {
    nofralloc
#include "Z2AudioLib/Z2SeMgr/asm/func_802AE524.s"
}

asm bool Z2SeMgr::isSoundCulling(JAISoundID) {
    nofralloc
#include "Z2AudioLib/Z2SeMgr/asm/func_802AE5B0.s"
}

asm Z2MultiSeMgr::Z2MultiSeMgr(void) {
    nofralloc
#include "Z2AudioLib/Z2SeMgr/asm/func_802AEB04.s"
}

asm Z2MultiSeMgr::~Z2MultiSeMgr() {
    nofralloc
#include "Z2AudioLib/Z2SeMgr/asm/func_802AEB34.s"
}

asm u32 Z2MultiSeMgr::registMultiSePos(Vec*) {
    nofralloc
#include "Z2AudioLib/Z2SeMgr/asm/func_802AEB70.s"
}

void Z2MultiSeMgr::resetMultiSePos(void) {
    field_0x18 = -1;
    // @todo fix when we have proper const placement
    f32 zero = /* 0.0f */ lbl_80455878;
    field_0x8 = zero;
    this->field_0xc = zero;
    this->field_0x10 = zero;
    this->field_0x14 = zero;
    this->field_0x4 = zero;
}

asm float Z2MultiSeMgr::getPanPower(void) {
    nofralloc
#include "Z2AudioLib/Z2SeMgr/asm/func_802AECE0.s"
}

asm float Z2MultiSeMgr::getDolbyPower(void) {
    nofralloc
#include "Z2AudioLib/Z2SeMgr/asm/func_802AEDC0.s"
}
