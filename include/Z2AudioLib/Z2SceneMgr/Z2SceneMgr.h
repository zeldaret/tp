#include "global.h"

class JAISoundParamsMove{
public:
    void moveVolume(float param_1, u32 param_2);
private:
    float unk_1;
};

class Z2SoundMgr{
public:
    void resetFilterAll();
    u8 p1[0x3ec];
    JAISoundParamsMove* JAISoundParamsMove;
private:
};

class Z2SeMgr{
public:
    void seMoveVolumeAll(float param_1, u32 param_2);
};

class Z2SeqMgr{
private:
    u8 p1[0xD0];
    u8 unk_1;
public:
    void setFieldBgmPlay(bool param_1);
};

class Z2SceneMgr{
private: 
    long BGM_ID;
    int field_0x4;
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
    u8 field_0x1c;
    bool field_0x1d;
    bool inDarkness;
public:
    Z2SceneMgr(void);
    void setInDarkness(bool param_1);
    void setSceneExist(bool param_1);
    void setFadeOutStart(u8 param_1);
    void setFadeInStart(u8 param_1);
    void setSceneName(char* stageName, long roomNum, long layerNum);
    int checkFirstWaves(void);
};

struct  JAISoundID
{
    u32 soundId;
    JAISoundID(JAISoundID const &soundIdToSet);
};
