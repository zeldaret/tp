#include "global.h"
#include "JSystem/JAudio2/JAISe/JAISe.h"
#include "Z2AudioLib/Z2SeqMgr/Z2SeqMgr.h"

struct JAISoundParamsMove{
    void moveVolume(float param_1, u32 param_2);

    float unk_1;
};

struct Z2SoundMgr{
    void resetFilterAll();
    u8 p1[0x3ec];
    JAISoundParamsMove* JAISoundParamsMove;
};

struct Z2SceneMgr{
    long BGM_ID;
    int sceneNum;
    int timer;
    s8 roomNum;
    u8 SeWave_1;
    u8 SeWaveToErase_1;
    u8 SeWave_2;
    u8 SeWaveToErase_2;
    u8 BgmWave_1;
    u8 BgmWaveToErase_1;
    u8 BgmWave_2;
    u8 BgmWaveToErase_2;
    u8 SeWave_3;
    u8 SeWaveToErase_3;
    u8 field_0x17;
    u8 field_0x18;
    u8 field_0x19;
    u8 field_0x1a;
    u8 field_0x1b;
    bool inGame;
    bool sceneExist;
    bool inDarkness;

    Z2SceneMgr(void);
    void setInDarkness(bool param_1);
    void setSceneExist(bool param_1);
    void setFadeOutStart(u8 param_1);
    void setFadeInStart(u8 param_1);
    void setSceneName(char* stageName, long roomNum, long layerNum);
    int checkFirstWaves(void);
};
