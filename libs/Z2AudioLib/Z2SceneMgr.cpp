#include "Z2AudioLib/Z2SceneMgr/Z2SceneMgr.h"
#include "Z2AudioLib/Z2EnvSeMgr/Z2EnvSeMgr.h"
#include "Z2AudioLib/Z2SeMgr/Z2SeMgr.h"
#include "Z2AudioLib/Z2StatusMgr/Z2StatusMgr.h"
#include "d/d_com/d_com_inf_game/d_com_inf_game.h"

extern u8 lbl_803CA9BC;
extern u8 lbl_80450863;

// Missing 2 instructions (beginning and end)
#ifdef NONMATCHING
Z2SceneMgr::Z2SceneMgr(void) {
    lbl_80450B80 = this;
    this->sceneNum = -1;
    this->timer = -1;
    this->BGM_ID = -1;
    this->roomNum = -1;
    this->SeWave_1 = 0;
    this->SeWaveToErase_1 = 0;
    this->SeWave_2 = 0;
    this->SeWaveToErase_2 = 0;
    this->BgmWave_1 = 0;
    this->BgmWaveToErase_1 = 0;
    this->BgmWave_2 = 0;
    this->BgmWaveToErase_2 = 0;
    this->SeWave_3 = 0;
    this->SeWaveToErase_3 = 0;
    this->field_0x18 = 0;
    this->field_0x19 = 0;
    this->field_0x1a = 0;
    this->field_0x1b = 0;
    this->sceneExist = 0;
    this->inGame = 0;
    this->inDarkness = false;
    this->field_0x17 = 0;
    return;
}
#else
asm Z2SceneMgr::Z2SceneMgr(void) {
    nofralloc
#include "Z2AudioLib/Z2SceneMgr/asm/func_802B6840.s"
}
#endif

void Z2SceneMgr::setInDarkness(bool param_1) {
    this->inDarkness = param_1;
    if (param_1 == false) {
        lbl_80450B60->resetFilterAll();
    }
    return;
}

extern float lbl_80455A38;
extern float lbl_80455A3C;

#ifdef NONMATCHING
void Z2SceneMgr::setSceneExist(bool param_1) {
    Z2SoundMgr* Z2soundMgrPtr;
    this->sceneExist = param_1;
    this->timer = 0;
    Z2soundMgrPtr = lbl_80450B60;
    if (param_1 == false) {
        Z2soundMgrPtr->JAISoundParamsMove->moveVolume(lbl_80455A38, 0xb4);
    } else {
        this->inGame = 1;
        if (this->SeWave_3 == 0x85) {
            Z2soundMgrPtr->JAISoundParamsMove->moveVolume(lbl_80455A38, 0);
        } else {
            if (this->SeWave_3 == 0x7f) {
                lbl_80450B88->seMoveVolumeAll(lbl_80455A38, 0);
            } else {
                Z2soundMgrPtr->JAISoundParamsMove->moveVolume(lbl_80455A3C, 0x21);
            }
        }
    }
    return;
}
#else
asm void Z2SceneMgr::setSceneExist(bool param_1) {
    nofralloc
#include "Z2AudioLib/Z2SceneMgr/asm/func_802B68E0.s"
}
#endif

extern float lbl_80455A40;
extern double lbl_80455A48;

asm void Z2SceneMgr::setFadeOutStart(u8 param_1) {
    nofralloc
#include "Z2AudioLib/Z2SceneMgr/asm/func_802B697C.s"
}

asm void Z2SceneMgr::setFadeInStart(u8 param_1) {
    nofralloc
#include "Z2AudioLib/Z2SceneMgr/asm/func_802B6A18.s"
}

extern float lbl_80455A50;
extern char lbl_8039BFA8[];   // probably wrong
extern char* lbl_803CA5C0[];  // array of char*
extern void* lbl_803CA878[];  // switch table (array of void*)
extern void* lbl_803CA844[];  // switch table (array of void*)
extern void* lbl_803CA824[];  // switch table (array of void*)
extern void* lbl_803CA7F4[];  // switch table (array of void*)
extern void* lbl_803CA7BC[];  // switch table (array of void*)
extern void* lbl_803CA784[];  // switch table (array of void*)
extern float lbl_80455A54;
extern float lbl_80455A58;
extern void* lbl_803CA744[];  // switch table (array of void*)
extern void* lbl_803CA704[];  // switch table (array of void*)
extern float lbl_80455A5C;
extern u32 lbl_80450860;
extern float lbl_80455A60;
extern float lbl_80455A64;

asm void Z2SceneMgr::setSceneName(char* stageName, long roomNum, long layerNum){nofralloc
#include "Z2AudioLib/Z2SceneMgr/asm/func_802B6AF8.s"
}

JAISoundID::JAISoundID(JAISoundID const& soundIdToSet) {
    this->soundId = soundIdToSet.soundId;
    return;
}

#ifdef NONMATCHING  // 1 Instruction off
void Z2SeqMgr::setFieldBgmPlay(bool param_1) {
    this->unk_1 = (param_1 & 1U) << 2 | this->unk_1 & 0xfb;
}
#else
asm void Z2SeqMgr::setFieldBgmPlay(bool param_1) {
    nofralloc
#include "Z2AudioLib/Z2SceneMgr/asm/func_802B9968.s"
}
#endif

extern "C" {
// isActive__12JAIStreamMgrCFv
// JAIStreamMgr::isActive(void) const
asm void JAIStreamMgr_NS_isActive(void) {
    nofralloc
#include "Z2AudioLib/Z2SceneMgr/asm/func_802B9978.s"
}

// getID__8JAISoundCFv
// JAISound::getID(void) const
asm void JAISound_NS_getID(void) {
    nofralloc
#include "Z2AudioLib/Z2SceneMgr/asm/func_802B9988.s"
}

// getFirst__19JSUList<9JAIStream>CFv
// JSUList<9JAIStream>::getFirst(void) const
asm void JSUList_X1_(void) {
    nofralloc
#include "Z2AudioLib/Z2SceneMgr/asm/func_802B9994.s"
}

// dComIfGs_getStartPoint__Fv
// dComIfGs_getStartPoint(void)
asm void dComIfGs_getStartPoint(void) {
    nofralloc
#include "Z2AudioLib/Z2SceneMgr/asm/func_802B999C.s"
}

// unMuteSceneBgm__8Z2SeqMgrFUl
// Z2SeqMgr::unMuteSceneBgm(unsigned long)
asm void Z2SeqMgr_NS_unMuteSceneBgm(void) {
    nofralloc
#include "Z2AudioLib/Z2SceneMgr/asm/func_802B99AC.s"
}

// muteSceneBgm__8Z2SeqMgrFUlf
// Z2SeqMgr::muteSceneBgm(unsigned long, float)
asm void Z2SeqMgr_NS_muteSceneBgm(void) {
    nofralloc
#include "Z2AudioLib/Z2SceneMgr/asm/func_802B9A24.s"
}

// __as__10JAISoundIDFRC10JAISoundID
// JAISoundID::operator=(const JAISoundID&)
asm void JAISoundID_NS___as(void) {
    nofralloc
#include "Z2AudioLib/Z2SceneMgr/asm/func_802B9A88.s"
}

// dComIfGs_isSaveSwitch__Fi
// dComIfGs_isSaveSwitch(int)
asm void dComIfGs_isSaveSwitch(void) {
    nofralloc
#include "Z2AudioLib/Z2SceneMgr/asm/func_802B9A94.s"
}

// resetCrowdSize__7Z2SeMgrFv
// Z2SeMgr::resetCrowdSize(void)
asm void Z2SeMgr_NS_resetCrowdSize(void) {
    nofralloc
#include "Z2AudioLib/Z2SceneMgr/asm/func_802B9AC4.s"
}

// setTwilightGateVol__8Z2SeqMgrFf
// Z2SeqMgr::setTwilightGateVol(float)
asm void Z2SeqMgr_NS_setTwilightGateVol(void) {
    nofralloc
#include "Z2AudioLib/Z2SceneMgr/asm/func_802B9AD0.s"
}

// setWindStoneVol__8Z2SeqMgrFfUl
// Z2SeqMgr::setWindStoneVol(float, unsigned long)
asm void Z2SeqMgr_NS_setWindStoneVol(void) {
    nofralloc
#include "Z2AudioLib/Z2SceneMgr/asm/func_802B9AFC.s"
}

// __ct__10JAISoundIDFUl
// JAISoundID::JAISoundID(unsigned long)
asm void JAISoundID_X1_(void) {
    nofralloc
#include "Z2AudioLib/Z2SceneMgr/asm/func_802B9B60.s"
}

// sceneChange__10Z2SceneMgrF10JAISoundIDUcUcUcUcUcb
// Z2SceneMgr::sceneChange(JAISoundID, unsigned char, unsigned char, unsigned char, unsigned char,
// unsigned char, bool)
asm void Z2SceneMgr_NS_sceneChange(void) {
    nofralloc
#include "Z2AudioLib/Z2SceneMgr/asm/func_802B9B68.s"
}

// framework__10Z2SceneMgrFv
// Z2SceneMgr::framework(void)
asm void Z2SceneMgr_NS_framework(void) {
    nofralloc
#include "Z2AudioLib/Z2SceneMgr/asm/func_802B9C50.s"
}

// load1stDynamicWave__10Z2SceneMgrFv
// Z2SceneMgr::load1stDynamicWave(void)
asm void Z2SceneMgr::load1stDynamicWave(void) {
    nofralloc
#include "Z2AudioLib/Z2SceneMgr/asm/func_802B9D40.s"
}

// _load1stWaveInner_1__10Z2SceneMgrFv
// Z2SceneMgr::_load1stWaveInner_1(void)
asm void Z2SceneMgr_NS__load1stWaveInner_1(void) {
    nofralloc
#include "Z2AudioLib/Z2SceneMgr/asm/func_802B9D98.s"
}

// _load1stWaveInner_2__10Z2SceneMgrFv
// Z2SceneMgr::_load1stWaveInner_2(void)
asm void Z2SceneMgr_NS__load1stWaveInner_2(void) {
    nofralloc
#include "Z2AudioLib/Z2SceneMgr/asm/func_802B9FC8.s"
}

// check1stDynamicWave__10Z2SceneMgrFv
// Z2SceneMgr::check1stDynamicWave(void)
asm void Z2SceneMgr_NS_check1stDynamicWave(void) {
    nofralloc
#include "Z2AudioLib/Z2SceneMgr/asm/func_802BA09C.s"
}

// load2ndDynamicWave__10Z2SceneMgrFv
// Z2SceneMgr::load2ndDynamicWave(void)
asm void Z2SceneMgr_NS_load2ndDynamicWave(void) {
    nofralloc
#include "Z2AudioLib/Z2SceneMgr/asm/func_802BA120.s"
}

// sceneBgmStart__10Z2SceneMgrFv
// Z2SceneMgr::sceneBgmStart(void)
asm void Z2SceneMgr_NS_sceneBgmStart(void) {
    nofralloc
#include "Z2AudioLib/Z2SceneMgr/asm/func_802BA294.s"
}

// loadStaticWaves__10Z2SceneMgrFv
// Z2SceneMgr::loadStaticWaves(void)
asm void Z2SceneMgr_NS_loadStaticWaves(void) {
    nofralloc
#include "Z2AudioLib/Z2SceneMgr/asm/func_802BA56C.s"
}

// checkFirstWaves__10Z2SceneMgrFv
// Z2SceneMgr::checkFirstWaves(void)
asm void Z2SceneMgr_NS_checkFirstWaves(void) {
    nofralloc
#include "Z2AudioLib/Z2SceneMgr/asm/func_802BA5C0.s"
}

// eraseSeWave__10Z2SceneMgrFUl
// Z2SceneMgr::eraseSeWave(unsigned long)
asm void Z2SceneMgr_NS_eraseSeWave(void) {
    nofralloc
#include "Z2AudioLib/Z2SceneMgr/asm/func_802BA5C8.s"
}

// eraseBgmWave__10Z2SceneMgrFUl
// Z2SceneMgr::eraseBgmWave(unsigned long)
asm void Z2SceneMgr_NS_eraseBgmWave(void) {
    nofralloc
#include "Z2AudioLib/Z2SceneMgr/asm/func_802BA630.s"
}

// getWaveLoadStatus__10Z2SceneMgrFUlUl
// Z2SceneMgr::getWaveLoadStatus(unsigned long, unsigned long)
asm void Z2SceneMgr_NS_getWaveLoadStatus(void) {
    nofralloc
#include "Z2AudioLib/Z2SceneMgr/asm/func_802BA698.s"
}

// loadSeWave__10Z2SceneMgrFUl
// Z2SceneMgr::loadSeWave(unsigned long)
asm void Z2SceneMgr_NS_loadSeWave(void) {
    nofralloc
#include "Z2AudioLib/Z2SceneMgr/asm/func_802BA704.s"
}

// loadBgmWave__10Z2SceneMgrFUl
// Z2SceneMgr::loadBgmWave(unsigned long)
asm void Z2SceneMgr_NS_loadBgmWave(void) {
    nofralloc
#include "Z2AudioLib/Z2SceneMgr/asm/func_802BA770.s"
}
};
