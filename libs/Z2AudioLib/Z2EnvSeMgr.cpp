/* Z2EnvSeMgr.cpp autogenerated by split.py v0.3 at 2021-01-04 22:52:26.199317 */

#include "Z2AudioLib/Z2EnvSeMgr/Z2EnvSeMgr.h"
#include "JSystem/JAudio2/JAISoundParamsMove.h"
#include "JSystem/JAudio2/JAISoundStarter.h"
#include "JSystem/JMath/vector.h"
#include "Z2AudioLib/Z2Audience/Z2Audience.h"
#include "Z2AudioLib/Z2Calc/Z2Calc.h"
#include "Z2AudioLib/Z2SeMgr/Z2SeMgr.h"
#include "Z2AudioLib/Z2SoundMgr/Z2SoundMgr.h"
#include "Z2AudioLib/Z2SoundStarter/Z2SoundStarter.h"
#include "Z2AudioLib/Z2StatusMgr/Z2StatusMgr.h"
#include "d/d_com/d_com_inf_game/d_com_inf_game.h"
#include "global.h"

extern "C" {
void __dl__FPv(void);
void isEventBit__11dSv_event_cCFUs(void);
void dComIfGp_getReverb(void);
void __cvt_fp2unsigned(void);
void isSwitch__12dSv_memBit_cCFi(void);
void Z2EnvSeMgr_NS_startRainSe(void);
}

// additional symbols needed for Z2EnvSeMgr.cpp
// autogenerated by split.py v0.3 at 2021-01-04 22:52:26.147928
extern u8 lbl_80455E20;
extern u8 lbl_80455D8C;
extern u8 lbl_80455DF0;
extern u8 lbl_80455DDC;
extern u8 lbl_80455E04;
extern u8 lbl_80455E34;
extern u8 lbl_80455D80;
extern u8 lbl_80455E54;
extern u8 lbl_803CBAD0;
extern u8 lbl_80455E50;
extern u8 lbl_80455D6C;
extern u8 lbl_80455E58;
extern u8 lbl_80455DA4;
extern u8 lbl_80455DEC;
extern u8 lbl_80455D70;
extern u8 lbl_80455DE8;
extern u8 lbl_80455820;
extern u8 lbl_80455DD4;
extern u8 lbl_80455E30;
extern u8 lbl_80455E44;
extern u8 lbl_803CB9C8;
extern u8 lbl_80455D44;
extern u8 lbl_80455D58;
extern u8 lbl_80455D7C;
extern u8 lbl_80455E10;
extern u8 lbl_80455DAC;
extern u8 lbl_80455DD8;
extern u8 lbl_80455DF4;
extern u8 lbl_80455E28;
extern u8 lbl_80455D40;
extern u8 lbl_80455D9C;
extern u8 lbl_80455E48;
extern u8 lbl_803CBC28;
extern u8 lbl_8039C250;
extern u8 lbl_80455DBC;
extern u8 lbl_80455D74;
extern u8 lbl_80455DE4;
extern u8 lbl_80455D98;
extern u8 lbl_80455D60;
extern u8 lbl_80455E3C;
extern u8 lbl_803CBB90;
extern u8 lbl_80455DF8;
extern u8 lbl_80455D4C;
extern u8 lbl_80455D88;
extern u8 lbl_80455E40;
extern u8 lbl_80455DA0;
extern u8 lbl_80455E4C;
extern u8 lbl_80455E38;
extern u8 lbl_803CBB10;
extern u8 lbl_80455DA8;
extern u8 lbl_80455D48;
extern u8 lbl_80455E2C;
extern u8 lbl_80455D64;
extern u8 lbl_80455DE0;
extern u8 lbl_80455D68;
extern u8 lbl_80455E0C;
extern u8 lbl_80455DC8;
extern u8 lbl_80455DC0;
extern u8 lbl_80455E00;
extern u8 lbl_80455824;
extern u8 lbl_80455DD0;
extern u8 lbl_80455DB4;
extern u8 lbl_80455DB8;
extern u8 lbl_80455E08;
extern u8 lbl_80455D84;
extern u8 lbl_803CBBC8;
extern u8 lbl_8039ABB8;
extern u8 lbl_80455E5C;
extern u8 lbl_80455D78;
extern u8 lbl_80455DCC;
extern u8 lbl_80455D50;
extern u8 lbl_80455DB0;
extern u8 lbl_803CBBF0;
extern u8 lbl_80455D94;
extern u8 lbl_80455D90;
extern u8 lbl_80455E14;
extern u8 lbl_80455E18;
extern u8 lbl_80455DC4;
extern u8 lbl_80455DFC;
extern u8 lbl_803CB9F8;
extern u8 lbl_803CBA28;
extern u8 lbl_80450B60;
extern u8 lbl_80450B44;
extern u8 lbl_80450B80;
extern u8 lbl_803A7288;
extern u8 lbl_80451360;

extern "C" {
// __ct__11Z2EnvSeBaseFP3Vec
// Z2EnvSeBase::Z2EnvSeBase(Vec*)
asm void Z2EnvSeBase(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C589C.s"
}

// __dt__11Z2EnvSeBaseFv
// Z2EnvSeBase::~Z2EnvSeBase(void)
asm void Z2EnvSeBase_NS_dtor(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C58AC.s"
}

// startEnvSe__11Z2EnvSeBaseF10JAISoundIDfffffUl
// Z2EnvSeBase::startEnvSe(JAISoundID, float, float, float, float, float, unsigned long)
asm void Z2EnvSeBase_NS_startEnvSe(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C5908.s"
}

// startEnvSeLevel__11Z2EnvSeBaseF10JAISoundIDfffffUl
// Z2EnvSeBase::startEnvSeLevel(JAISoundID, float, float, float, float, float, unsigned long)
asm void Z2EnvSeBase_NS_startEnvSeLevel(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C5AB4.s"
}

// __ct__10Z2EnvSeDirFP3Vec
// Z2EnvSeDir::Z2EnvSeDir(Vec*)
asm void Z2EnvSeDir(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C5C9C.s"
}

// __dt__10Z2EnvSeDirFv
// Z2EnvSeDir::~Z2EnvSeDir(void)
asm void Z2EnvSeDir_NS_dtor(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C5D1C.s"
}

// setPanDir__10Z2EnvSeDirFP3Vec
// Z2EnvSeDir::setPanDir(Vec*)
asm void Z2EnvSeDir_NS_setPanDir(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C5D70.s"
}

// calcPan__10Z2EnvSeDirFf
// Z2EnvSeDir::calcPan(float)
asm void Z2EnvSeDir_NS_calcPan(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C5D9C.s"
}

// startEnvSeDirLevel__10Z2EnvSeDirF10JAISoundIDff
// Z2EnvSeDir::startEnvSeDirLevel(JAISoundID, float, float)
asm void Z2EnvSeDir_NS_startEnvSeDirLevel(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C5E90.s"
}

// __ct__14Z2EnvSeAutoPanFv
// Z2EnvSeAutoPan::Z2EnvSeAutoPan(void)
asm void Z2EnvSeAutoPan(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C5ECC.s"
}

// __dt__14Z2EnvSeAutoPanFv
// Z2EnvSeAutoPan::~Z2EnvSeAutoPan(void)
asm void Z2EnvSeAutoPan_NS_dtor(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C5F28.s"
}

// setPanParam__14Z2EnvSeAutoPanFffbbff
// Z2EnvSeAutoPan::setPanParam(float, float, bool, bool, float, float)
asm void Z2EnvSeAutoPan_NS_setPanParam(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C5F7C.s"
}

// calcPan__14Z2EnvSeAutoPanFv
// Z2EnvSeAutoPan::calcPan(void)
asm void Z2EnvSeAutoPan_NS_calcPan(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C5F98.s"
}

// startEnvSeAutoPanLevel__14Z2EnvSeAutoPanF10JAISoundIDfff
// Z2EnvSeAutoPan::startEnvSeAutoPanLevel(JAISoundID, float, float, float)
asm void Z2EnvSeAutoPan_NS_startEnvSeAutoPanLevel(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C60E0.s"
}
// __ct__10Z2EnvSeMgrFv
// Z2EnvSeMgr::Z2EnvSeMgr(void)
asm void __ct__10Z2EnvSeMgrFv(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C611C.s"
}
// __dt__10Z2EnvSeMgrFv
// Z2EnvSeMgr::~Z2EnvSeMgr(void)
asm void Z2EnvSeMgr_NS_dtor(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C6540.s"
}
};
// framework__10Z2EnvSeMgrFv
// Z2EnvSeMgr::framework(void)
asm void Z2EnvSeMgr::framework(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C66B0.s"
}
extern "C" {
// resetScene__10Z2EnvSeMgrFv
// Z2EnvSeMgr::resetScene(void)
asm void Z2EnvSeMgr_NS_resetScene(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C6998.s"
}

// resetSceneInner__10Z2EnvSeMgrFv
// Z2EnvSeMgr::resetSceneInner(void)
asm void Z2EnvSeMgr_NS_resetSceneInner(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C699C.s"
}

// initSceneEnvSe__10Z2EnvSeMgrFlScf
// Z2EnvSeMgr::initSceneEnvSe(long, char, float)
asm void Z2EnvSeMgr_NS_initSceneEnvSe(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C6AC0.s"
}

// playSceneEnvSe__10Z2EnvSeMgrFv
// Z2EnvSeMgr::playSceneEnvSe(void)
asm void Z2EnvSeMgr_NS_playSceneEnvSe(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C6C1C.s"
}

// initStaticEnvSe__10Z2EnvSeMgrFUcUcUcUcP3Vec
// Z2EnvSeMgr::initStaticEnvSe(unsigned char, unsigned char, unsigned char, unsigned char, Vec*)
asm void Z2EnvSeMgr_NS_initStaticEnvSe(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C6C84.s"
}

// startStaticEnvSe__10Z2EnvSeMgrFSc
// Z2EnvSeMgr::startStaticEnvSe(char)
asm void Z2EnvSeMgr_NS_startStaticEnvSe(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C70C8.s"
}

// registWindowPos__10Z2EnvSeMgrFP3Vec
// Z2EnvSeMgr::registWindowPos(Vec*)
asm void Z2EnvSeMgr_NS_registWindowPos(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C780C.s"
}

// startRainSe__10Z2EnvSeMgrFlSc
// Z2EnvSeMgr::startRainSe(long, char)
asm void Z2EnvSeMgr_NS_startRainSe(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C7830.s"
}

// startNearThunderSe__10Z2EnvSeMgrFSc
// Z2EnvSeMgr::startNearThunderSe(char)
asm void Z2EnvSeMgr_NS_startNearThunderSe(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C7CF4.s"
}

// startFarThunderSe__10Z2EnvSeMgrFP3VecSc
// Z2EnvSeMgr::startFarThunderSe(Vec*, char)
asm void Z2EnvSeMgr_NS_startFarThunderSe(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C7E68.s"
}

// setSnowPower__10Z2EnvSeMgrFSc
// Z2EnvSeMgr::setSnowPower(char)
asm void func_802C7FB4(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C7FB4.s"
}

// initStrongWindSe__10Z2EnvSeMgrFv
// Z2EnvSeMgr::initStrongWindSe(void)
asm void Z2EnvSeMgr_NS_initStrongWindSe(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C7FBC.s"
}

// setWindDirection__10Z2EnvSeMgrFP3Vec
// Z2EnvSeMgr::setWindDirection(Vec*)
asm void Z2EnvSeMgr_NS_setWindDirection(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C7FC8.s"
}

// startStrongWindSe__10Z2EnvSeMgrFSc
// Z2EnvSeMgr::startStrongWindSe(char)
asm void Z2EnvSeMgr_NS_startStrongWindSe(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C800C.s"
}

// initRiverSe__10Z2EnvSeMgrFUcUcUcUc
// Z2EnvSeMgr::initRiverSe(unsigned char, unsigned char, unsigned char, unsigned char)
asm void Z2EnvSeMgr_NS_initRiverSe(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C80F8.s"
}

// registRiverSePos__10Z2EnvSeMgrFP3Vec
// Z2EnvSeMgr::registRiverSePos(Vec*)
asm void Z2EnvSeMgr_NS_registRiverSePos(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C8234.s"
}

// setHyrulSewerOpen__10Z2EnvSeMgrFb
// Z2EnvSeMgr::setHyrulSewerOpen(bool)
asm void func_802C8258(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C8258.s"
}

// startRiverSe__10Z2EnvSeMgrFSc
// Z2EnvSeMgr::startRiverSe(char)
asm void Z2EnvSeMgr_NS_startRiverSe(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C8300.s"
}

// initFallSe__10Z2EnvSeMgrFUcUcUcUc
// Z2EnvSeMgr::initFallSe(unsigned char, unsigned char, unsigned char, unsigned char)
asm void Z2EnvSeMgr_NS_initFallSe(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C8730.s"
}

// registFallSePos__10Z2EnvSeMgrFP3Vec
// Z2EnvSeMgr::registFallSePos(Vec*)
asm void Z2EnvSeMgr_NS_registFallSePos(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C886C.s"
}

// startFallSe__10Z2EnvSeMgrFSc
// Z2EnvSeMgr::startFallSe(char)
asm void Z2EnvSeMgr_NS_startFallSe(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C8890.s"
}

// initEtcSe__10Z2EnvSeMgrFUcUcUcUc
// Z2EnvSeMgr::initEtcSe(unsigned char, unsigned char, unsigned char, unsigned char)
asm void Z2EnvSeMgr_NS_initEtcSe(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C8A90.s"
}

// registEtcSePos__10Z2EnvSeMgrFP3Vec
// Z2EnvSeMgr::registEtcSePos(Vec*)
asm void Z2EnvSeMgr_NS_registEtcSePos(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C8C24.s"
}

// startEtcSe__10Z2EnvSeMgrFSc
// Z2EnvSeMgr::startEtcSe(char)
asm void Z2EnvSeMgr_NS_startEtcSe(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C8C48.s"
}

// registWolfSmellSePos__10Z2EnvSeMgrFP3Vec
// Z2EnvSeMgr::registWolfSmellSePos(Vec*)
asm void func_802C92C8(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C92C8.s"
}

// startFogWipeTrigger__10Z2EnvSeMgrFP3Vec
// Z2EnvSeMgr::startFogWipeTrigger(Vec*)
asm void func_802C92EC(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C92EC.s"
}

// setFogWipeWidth__10Z2EnvSeMgrFf
// Z2EnvSeMgr::setFogWipeWidth(float)
asm void func_802C93A0(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C93A0.s"
}

// getFogDensity__10Z2EnvSeMgrFv
// Z2EnvSeMgr::getFogDensity(void)
asm void Z2EnvSeMgr_NS_getFogDensity(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C93E4.s"
}

// startFogSe__10Z2EnvSeMgrFv
// Z2EnvSeMgr::startFogSe(void)
asm void func_802C9400(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C9400.s"
}

// initLv3WaterSe__10Z2EnvSeMgrFUcUcUcUc
// Z2EnvSeMgr::initLv3WaterSe(unsigned char, unsigned char, unsigned char, unsigned char)
asm void Z2EnvSeMgr_NS_initLv3WaterSe(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C950C.s"
}

// registLv3WaterSePos__10Z2EnvSeMgrFUcP3Vec
// Z2EnvSeMgr::registLv3WaterSePos(unsigned char, Vec*)
asm void Z2EnvSeMgr_NS_registLv3WaterSePos(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802C9F58.s"
}

// startLv3WaterSe__10Z2EnvSeMgrFSc
// Z2EnvSeMgr::startLv3WaterSe(char)
asm void Z2EnvSeMgr_NS_startLv3WaterSe(void) {
    nofralloc
#include "Z2AudioLib/Z2EnvSeMgr/asm/func_802CA794.s"
}
};
