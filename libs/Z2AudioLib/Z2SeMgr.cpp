#include "Z2AudioLib/Z2SeMgr/Z2SeMgr.h"
#include "Z2AudioLib/Z2SpeechMgr2/Z2SpeechMgr2.h"
#include "Z2AudioLib/Z2SoundStarter/Z2SoundStarter.h"
#include "Z2AudioLib/Z2StatusMgr/Z2StatusMgr.h"

extern "C" {
void JAISoundHandle(void);
void JAISoundHandle_NS_dtor(void);
void Z2MultiSeObj_NS_dtor(void);
}

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

asm void Z2SeMgr::incrCrowdSize(void) {
    nofralloc
#include "Z2AudioLib/Z2SeMgr/asm/func_802AB93C.s"
}

asm void Z2SeMgr::decrCrowdSize(void) {
    nofralloc
#include "Z2AudioLib/Z2SeMgr/asm/func_802AB960.s"
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

asm void Z2MultiSeMgr::resetMultiSePos(void) {
    nofralloc
#include "Z2AudioLib/Z2SeMgr/asm/func_802AECBC.s"
}

asm float Z2MultiSeMgr::getPanPower(void) {
    nofralloc
#include "Z2AudioLib/Z2SeMgr/asm/func_802AECE0.s"
}

asm float Z2MultiSeMgr::getDolbyPower(void) {
    nofralloc
#include "Z2AudioLib/Z2SeMgr/asm/func_802AEDC0.s"
}