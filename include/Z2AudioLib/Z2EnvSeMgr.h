#ifndef Z2ENVSEMGR_H
#define Z2ENVSEMGR_H

#include "JSystem/JAudio2/JASGadget.h"
#include "Z2AudioLib/Z2Calc.h"
#include "Z2AudioLib/Z2SeMgr.h"
#include "dolphin/mtx/mtxvec.h"

struct Z2EnvSeBase {
    /* 802C589C */ Z2EnvSeBase(Vec*);
    /* 802C58AC */ ~Z2EnvSeBase();
    /* 802C5908 */ void startEnvSe(JAISoundID, f32, f32, f32, f32, f32, u32);
    /* 802C5AB4 */ void startEnvSeLevel(JAISoundID, f32, f32, f32, f32, f32, u32);

    /* 0x0 */ Vec* mPos;
    /* 0x4 */ JAISoundHandle mHandle;
};  // Size: 0x8

struct Z2EnvSeAutoPan : public Z2EnvSeBase {
    /* 802C5ECC */ Z2EnvSeAutoPan();
    /* 802C5F28 */ ~Z2EnvSeAutoPan();
    /* 802C5F7C */ void setPanParam(f32, f32, bool, bool, f32, f32);
    /* 802C5F98 */ void calcPan();
    /* 802C60E0 */ void startEnvSeAutoPanLevel(JAISoundID, f32, f32, f32);

    /* 0x08 */ f32 field_0x8;
    /* 0x0C */ f32 field_0xc;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ bool field_0x18;
    /* 0x19 */ bool field_0x19;
};  // Size: 0x1C

struct Z2EnvSeDir : public Z2EnvSeBase {
    /* 802C5C9C */ Z2EnvSeDir(Vec*);
    /* 802C5D1C */ ~Z2EnvSeDir();
    /* 802C5D70 */ void setPanDir(Vec*);
    /* 802C5D9C */ void calcPan(f32);
    /* 802C5E90 */ void startEnvSeDirLevel(JAISoundID, f32, f32);

    /* 0x08 */ f32 field_0x8;
    /* 0x0C */ f32 field_0xc;
    /* 0x10 */ Vec mPanDir;
};  // Size: 0x1C

struct Z2EnvSeMgr : public JASGlobalInstance<Z2EnvSeMgr> {
    /* 802C611C */ Z2EnvSeMgr();
    /* 802C6540 */ ~Z2EnvSeMgr();
    /* 802C66B0 */ void framework();
    /* 802C6998 */ void resetScene();
    /* 802C699C */ void resetSceneInner();
    /* 802C6AC0 */ void initSceneEnvSe(s32, s8, f32);
    /* 802C6C1C */ void playSceneEnvSe();
    /* 802C6C84 */ void initStaticEnvSe(u8, u8, u8, u8, Vec*);
    /* 802C70C8 */ void startStaticEnvSe(s8);
    /* 802C780C */ void registWindowPos(Vec*);
    /* 802C7830 */ void startRainSe(s32, s8);
    /* 802C7CF4 */ void startNearThunderSe(s8);
    /* 802C7E68 */ void startFarThunderSe(Vec*, s8);
    /* 802C7FB4 */ void setSnowPower(s8);
    /* 802C7FBC */ void initStrongWindSe();
    /* 802C7FC8 */ void setWindDirection(Vec*);
    /* 802C800C */ void startStrongWindSe(s8);
    /* 802C80F8 */ void initRiverSe(u8, u8, u8, u8);
    /* 802C8234 */ void registRiverSePos(Vec*);
    /* 802C8258 */ void setHyrulSewerOpen(bool);
    /* 802C8300 */ void startRiverSe(s8);
    /* 802C8730 */ void initFallSe(u8, u8, u8, u8);
    /* 802C886C */ void registFallSePos(Vec*);
    /* 802C8890 */ void startFallSe(s8);
    /* 802C8A90 */ void initEtcSe(u8, u8, u8, u8);
    /* 802C8C24 */ void registEtcSePos(Vec*);
    /* 802C8C48 */ void startEtcSe(s8);
    /* 802C92C8 */ void registWolfSmellSePos(Vec*);
    /* 802C92EC */ void startFogWipeTrigger(Vec*);
    /* 802C93A0 */ void setFogWipeWidth(f32);
    /* 802C93E4 */ void getFogDensity();
    /* 802C9400 */ void startFogSe();
    /* 802C950C */ void initLv3WaterSe(u8, u8, u8, u8);
    /* 802C9F58 */ void registLv3WaterSePos(u8, Vec*);
    /* 802CA794 */ void startLv3WaterSe(s8);

    void setWindType(u8 i_type) { mWindType = i_type; }

    /* 0x000 */ Z2EnvSeAutoPan field_0x0;
    /* 0x01C */ Z2EnvSeAutoPan field_0x1c;
    /* 0x038 */ u8 field_0x38;
    /* 0x039 */ u8 field_0x39;
    /* 0x03C */ f32 field_0x3c;
    /* 0x040 */ f32 field_0x40;
    /* 0x044 */ f32 field_0x44;
    /* 0x048 */ f32 field_0x48;
    /* 0x04C */ f32 field_0x4c;
    /* 0x050 */ f32 field_0x50;
    /* 0x054 */ f32 field_0x54;
    /* 0x058 */ f32 field_0x58;
    /* 0x05C */ f32 field_0x5c;
    /* 0x060 */ f32 field_0x60;
    /* 0x064 */ Z2MultiSeMgr field_0x64;
    /* 0x080 */ Z2EnvSeBase field_0x80;
    /* 0x088 */ Z2EnvSeBase field_0x88;
    /* 0x090 */ Z2Calc::FNoise1f field_0x90;
    /* 0x0A0 */ Z2Calc::FNoise1f field_0xa0;
    /* 0x0B0 */ Z2Calc::FNoise1f field_0xb0;
    /* 0x0C0 */ Z2Calc::FNoise1f field_0xc0;
    /* 0x0D0 */ Z2Calc::FNoise1f field_0xd0;
    /* 0x0E0 */ Z2Calc::FNoise1f field_0xe0;
    /* 0x0F0 */ Z2Calc::FNoise1f field_0xf0;
    /* 0x100 */ Z2Calc::FNoise1f field_0x100;
    /* 0x110 */ Z2EnvSeBase field_0x110;
    /* 0x118 */ Z2EnvSeBase field_0x118;
    /* 0x120 */ Z2Calc::FNoise1f field_0x120;
    /* 0x130 */ Z2Calc::FNoise1f field_0x130;
    /* 0x140 */ u8 field_0x140;
    /* 0x141 */ u8 field_0x141;
    /* 0x144 */ Z2EnvSeDir field_0x144;
    /* 0x160 */ u8 mWindType;
    /* 0x164 */ Z2MultiSeMgr field_0x164;
    /* 0x180 */ Z2EnvSeBase field_0x180;
    /* 0x188 */ u8 field_0x188;
    /* 0x18C */ Z2Calc::FNoise1f field_0x18c;
    /* 0x19C */ Z2Calc::FNoise1f field_0x19c;
    /* 0x1AC */ f32 field_0x1ac;
    /* 0x1B0 */ f32 field_0x1b0;
    /* 0x1B4 */ f32 field_0x1b4;
    /* 0x1B8 */ u8 field_0x1b8;
    /* 0x1BC */ Z2MultiSeMgr field_0x1bc;
    /* 0x1D8 */ Z2EnvSeBase field_0x1d8;
    /* 0x1E0 */ u8 field_0x1e0;
    /* 0x1E4 */ f32 field_0x1e4;
    /* 0x1E8 */ f32 field_0x1e8;
    /* 0x1EC */ f32 field_0x1ec;
    /* 0x1F0 */ Z2MultiSeMgr field_0x1f0;
    /* 0x20C */ Z2EnvSeBase field_0x20c;
    /* 0x214 */ u8 field_0x214;
    /* 0x218 */ f32 field_0x218;
    /* 0x21C */ f32 field_0x21c;
    /* 0x220 */ f32 field_0x220;
    /* 0x224 */ Z2MultiSeMgr field_0x224;
    /* 0x240 */ Z2EnvSeBase field_0x240;
    /* 0x248 */ u8 field_0x248;
    /* 0x24C */ f32 field_0x24c;
    /* 0x250 */ f32 field_0x250;
    /* 0x254 */ f32 field_0x254;
    /* 0x258 */ Z2MultiSeMgr field_0x258;
    /* 0x274 */ Z2EnvSeBase field_0x274;
    /* 0x27C */ u8 field_0x27c;
    /* 0x280 */ f32 field_0x280;
    /* 0x284 */ f32 field_0x284;
    /* 0x288 */ f32 field_0x288;
    /* 0x28C */ Z2MultiSeMgr field_0x28c;
    /* 0x2A8 */ Z2EnvSeBase field_0x2a8;
    /* 0x2B0 */ u8 field_0x2b0;
    /* 0x2B4 */ f32 field_0x2b4;
    /* 0x2B8 */ f32 field_0x2b8;
    /* 0x2BC */ f32 field_0x2bc;
    /* 0x2C0 */ Z2MultiSeMgr field_0x2c0;
    /* 0x2DC */ Z2EnvSeBase field_0x2dc;
    /* 0x2E4 */ u8 field_0x2e4;
    /* 0x2E8 */ Z2Calc::FNoise1f field_0x2e8;
    /* 0x2F8 */ Z2Calc::FNoise1f field_0x2f8;
    /* 0x308 */ f32 field_0x308;
};  // Size: 0x30C

STATIC_ASSERT(sizeof(Z2EnvSeMgr) == 0x30C);

extern Z2EnvSeMgr g_mEnvSeMgr;

#endif /* Z2ENVSEMGR_H */
