#include "Z2AudioLib/Z2SeqMgr/Z2SeqMgr.h"
#include "Z2AudioLib/Z2StatusMgr/Z2StatusMgr.h"
#include "Z2AudioLib/Z2SoundStarter/Z2SoundStarter.h"

asm Z2SeqMgr::Z2SeqMgr(void) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802AEEA0.s"
}

asm void Z2SeqMgr::bgmStart(u32, u32, s32) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802AF010.s"
}

asm void Z2SeqMgr::bgmStop(u32, s32) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802AF408.s"
}

asm void Z2SeqMgr::subBgmStart(u32) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802AF49C.s"
}

asm void Z2SeqMgr::subBgmStop(void) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802AF884.s"
}

asm void Z2SeqMgr::subBgmStopInner(void) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802AF9D0.s"
}

asm void Z2SeqMgr::bgmStreamPrepare(u32) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802AFB94.s"
}

asm int Z2SeqMgr::bgmStreamCheckReady(void) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802AFDEC.s"
}

asm void Z2SeqMgr::bgmStreamPlay(void) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802AFE18.s"
}

asm void Z2SeqMgr::bgmStreamStop(u32) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802AFEDC.s"
}

asm void Z2SeqMgr::changeBgmStatus(s32) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802AFF8C.s"
}

asm void Z2SeqMgr::changeSubBgmStatus(s32) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802B1DF4.s"
}

asm void Z2SeqMgr::onVariantBgmJumpEnd(bool) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802B299C.s"
}

asm void Z2SeqMgr::changeFishingBgm(s32) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802B2A88.s"
}

asm void Z2SeqMgr::talkInBgm(void) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802B2CA4.s"
}

asm void Z2SeqMgr::talkOutBgm(void) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802B2D64.s"
}

asm void Z2SeqMgr::menuInBgm(void) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802B2DAC.s"
}

asm void Z2SeqMgr::menuOutBgm(void) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802B2DF4.s"
}

extern "C" {
// fanfareFramework__8Z2SeqMgrFv
// Z2SeqMgr::fanfareFramework(void)
asm void Z2SeqMgr_NS_fanfareFramework(void) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802B2E3C.s"
}

// stopWolfHowlSong__8Z2SeqMgrFv
// Z2SeqMgr::stopWolfHowlSong(void)
asm void Z2SeqMgr_NS_stopWolfHowlSong(void) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802B327C.s"
}

// setHeightVolMod__8Z2SeqMgrFbUl
// Z2SeqMgr::setHeightVolMod(bool, unsigned long)
asm void Z2SeqMgr_NS_setHeightVolMod(void) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802B3318.s"
}

// setTimeProcVolMod__8Z2SeqMgrFbUl
// Z2SeqMgr::setTimeProcVolMod(bool, unsigned long)
asm void Z2SeqMgr_NS_setTimeProcVolMod(void) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802B3398.s"
}

// processBgmFramework__8Z2SeqMgrFv
// Z2SeqMgr::processBgmFramework(void)
asm void Z2SeqMgr_NS_processBgmFramework(void) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802B33A8.s"
}

// checkBgmIDPlaying__8Z2SeqMgrFUl
// Z2SeqMgr::checkBgmIDPlaying(unsigned long)
asm void Z2SeqMgr_NS_checkBgmIDPlaying(void) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802B3EAC.s"
}

// getChildTrackVolume__8Z2SeqMgrFP14JAISoundHandlei
// Z2SeqMgr::getChildTrackVolume(JAISoundHandle*, int)
asm void Z2SeqMgr_NS_getChildTrackVolume(void) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802B3F40.s"
}

// setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
// Z2SeqMgr::setChildTrackVolume(JAISoundHandle*, int, float, unsigned long, float, float)
asm void Z2SeqMgr_NS_setChildTrackVolume(void) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802B3FEC.s"
}

// resetBattleBgmParams__8Z2SeqMgrFv
// Z2SeqMgr::resetBattleBgmParams(void)
asm void Z2SeqMgr_NS_resetBattleBgmParams(void) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802B4128.s"
}

// setBattleBgmOff__8Z2SeqMgrFb
// Z2SeqMgr::setBattleBgmOff(bool)
asm void Z2SeqMgr_NS_setBattleBgmOff(void) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802B4164.s"
}

// setBattleSearched__8Z2SeqMgrFb
// Z2SeqMgr::setBattleSearched(bool)
asm void Z2SeqMgr_NS_setBattleSearched(void) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802B421C.s"
}

// setBattleDistIgnore__8Z2SeqMgrFb
// Z2SeqMgr::setBattleDistIgnore(bool)
asm void Z2SeqMgr_NS_setBattleDistIgnore(void) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802B43D0.s"
}

// setBattleGhostMute__8Z2SeqMgrFb
// Z2SeqMgr::setBattleGhostMute(bool)
asm void Z2SeqMgr_NS_setBattleGhostMute(void) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802B43E0.s"
}

// setBattleDistState__8Z2SeqMgrFUc
// Z2SeqMgr::setBattleDistState(unsigned char)
asm void Z2SeqMgr_NS_setBattleDistState(void) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802B4498.s"
}

// setBattleSeqState__8Z2SeqMgrFUc
// Z2SeqMgr::setBattleSeqState(unsigned char)
asm void Z2SeqMgr_NS_setBattleSeqState(void) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802B4844.s"
}

// setBattleLastHit__8Z2SeqMgrFUc
// Z2SeqMgr::setBattleLastHit(unsigned char)
asm void Z2SeqMgr_NS_setBattleLastHit(void) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802B4AFC.s"
}

// battleBgmFramework__8Z2SeqMgrFv
// Z2SeqMgr::battleBgmFramework(void)
asm void Z2SeqMgr_NS_battleBgmFramework(void) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802B4BD0.s"
}

// startBattleBgm__8Z2SeqMgrFb
// Z2SeqMgr::startBattleBgm(bool)
asm void Z2SeqMgr_NS_startBattleBgm(void) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802B4EB0.s"
}

// stopBattleBgm__8Z2SeqMgrFUcUc
// Z2SeqMgr::stopBattleBgm(unsigned char, unsigned char)
asm void Z2SeqMgr_NS_stopBattleBgm(void) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802B5204.s"
}

// fieldBgmStart__8Z2SeqMgrFv
// Z2SeqMgr::fieldBgmStart(void)
asm void Z2SeqMgr_NS_fieldBgmStart(void) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802B545C.s"
}

// fieldRidingMute__8Z2SeqMgrFv
// Z2SeqMgr::fieldRidingMute(void)
asm void Z2SeqMgr_NS_fieldRidingMute(void) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802B556C.s"
}

// onFieldBgmJumpStart__8Z2SeqMgrFv
// Z2SeqMgr::onFieldBgmJumpStart(void)
asm void Z2SeqMgr_NS_onFieldBgmJumpStart(void) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802B5750.s"
}

// onFieldBgmJumpEnd__8Z2SeqMgrFv
// Z2SeqMgr::onFieldBgmJumpEnd(void)
asm void Z2SeqMgr_NS_onFieldBgmJumpEnd(void) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802B579C.s"
}

// fieldBgmFramework__8Z2SeqMgrFv
// Z2SeqMgr::fieldBgmFramework(void)
asm void Z2SeqMgr_NS_fieldBgmFramework(void) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802B594C.s"
}

// mbossBgmMuteProcess__8Z2SeqMgrFv
// Z2SeqMgr::mbossBgmMuteProcess(void)
asm void Z2SeqMgr_NS_mbossBgmMuteProcess(void) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802B5E80.s"
}

// bgmSetSwordUsing__8Z2SeqMgrFl
// Z2SeqMgr::bgmSetSwordUsing(long)
asm void Z2SeqMgr_NS_bgmSetSwordUsing(void) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802B5E84.s"
}

// bgmNowBattle__8Z2SeqMgrFf
// Z2SeqMgr::bgmNowBattle(float)
asm void Z2SeqMgr_NS_bgmNowBattle(void) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802B5E88.s"
}

// taktModeMute__8Z2SeqMgrFv
// Z2SeqMgr::taktModeMute(void)
asm void Z2SeqMgr_NS_taktModeMute(void) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802B5E8C.s"
}

// taktModeMuteOff__8Z2SeqMgrFv
// Z2SeqMgr::taktModeMuteOff(void)
asm void Z2SeqMgr_NS_taktModeMuteOff(void) {
    nofralloc
#include "Z2AudioLib/Z2SeqMgr/asm/func_802B5ED4.s"
}
};
