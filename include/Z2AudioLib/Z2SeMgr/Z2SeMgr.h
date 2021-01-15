#ifndef Z2SEMGR_H_
#define Z2SEMGR_H_

#include "JSystem/JAudio2/JAISe/JAISe.h"
#include "JSystem/JAudio2/JAISoundHandles/JAISoundHandles.h"
#include "Z2AudioLib/Z2Param/Z2Param.h"
#include "Z2AudioLib/Z2SeqMgr/Z2SeqMgr.h"
#include "global.h"

struct Z2MultiSeObj {
    Z2MultiSeObj();

    u8 unk0[28];
    u32 field_0x1c;
    u8 unk1[4];
};

struct Z2SeMgr {
    Z2SeMgr(void);
    void initSe(void);
    void resetModY(void);
    void modHeightAtCamera(Vec const**);
    void incrCrowdSize(void);
    void decrCrowdSize(void);
    void seStart(JAISoundID, Vec const*, u32, s8, float, float, float, float, u8);
    void seStartLevel(JAISoundID, Vec const*, u32, s8, float, float, float, float, u8);
    void seStop(JAISoundID, u32);
    void seStopAll(u32);
    void seMoveVolumeAll(float, u32);
    void messageSePlay(u16, Vec*, s8);
    void talkInSe(void);
    void talkOutSe(void);
    void menuInSe(void);
    void setLevObjSE(u32, Vec*, s8);
    void setMultiTriggerSE(u32, Vec*, s8);
    void processSeFramework(void);
    bool isLevelSe(JAISoundID);
    bool isSoundCulling(JAISoundID);

    JAISoundHandles sound_handles;
    Z2SeMgr* se_mgr;
    u32 field_0x64;

    Z2MultiSeObj level_object_se[10];
    u8 level_object_se_count;

    u8 padding_1[3];

    Z2MultiSeObj multi_trigger_se[10];
    u8 multi_trigger_se_count;

    u8 padding_2[3];

    u8 unk0[128];
    s8 unk1[12];

    u8 crowd_size;

    u8 unk2[3];
};

struct Z2MultiSeMgr {
    Z2MultiSeMgr();
    ~Z2MultiSeMgr();
    u32 registMultiSePos(Vec*);
    void resetMultiSePos(void);
    float getPanPower(void);
    float getDolbyPower(void);

    u8  field_0x0;
    u8  field_0x1;
    u8  field_0x2;
    u8  field_0x3;
    f32 field_0x4;
    f32 field_0x8;
    f32 field_0xc;
    f32 field_0x10;
    f32 field_0x14;
    s8  field_0x18;
};


extern "C" {
void Z2MultiSeObj(void);
void __ct__12Z2MultiSeObjFv(void);
void resetModY__7Z2SeMgrFv(void);
void JAISoundHandles_NS_getFreeHandle(void);
void JAISoundHandles_NS_getHandleSoundID(void);
void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc(JAISoundID, Vec const*, u32, s8, float, float,
                                                    float, float, u8);
void JAISoundParamsMove_NS_moveDolby(void);
void JAISoundParamsMove_NS_movePan(void);
void JAISoundParamsMove_NS_moveFxMix(void);
void Z2Audience_NS_calcOffMicSound(void);
void modHeightAtCamera__7Z2SeMgrFPPC3Vec(Vec const**);
void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc(JAISoundID, Vec const*, u32, s8, float,
                                                         float, float, float, u8);
void releaseSound__14JAISoundHandleFv(void);
void seStop__7Z2SeMgrF10JAISoundIDUl(JAISoundID, u32);
void JAISeCategoryMgr_NS_stop(void);
void seMoveVolumeAll__7Z2SeMgrFfUl(float, u32);
void Z2SpeechMgr2_NS_playOneShotVoice(void);
void setLevObjSE__7Z2SeMgrFUlP3VecSc(u32, Vec*, s8);
void setMultiTriggerSE__7Z2SeMgrFUlP3VecSc(u32, Vec*, s8);
void isLevelSe__7Z2SeMgrF10JAISoundID(JAISoundID);
void Z2SoundMgr_NS_stopSoundID(void);
void Z2SoundMgr_NS_multiVolumeSoundID(void);
void isSoundCulling__7Z2SeMgrF10JAISoundID(JAISoundID);
void __ct__12Z2MultiSeMgrFv(void);
void Z2Audience_NS_calcRelPosDolby(void);
void Z2Audience_NS_calcRelPosPan(void);
void Z2Audience_NS_calcRelPosVolume(void);
void Z2Audience_NS_convertAbsToRel(void);
void registMultiSePos__12Z2MultiSeMgrFP3Vec(Vec*);
void resetMultiSePos__12Z2MultiSeMgrFv(void);
float getPanPower__12Z2MultiSeMgrFv(void);
float getDolbyPower__12Z2MultiSeMgrFv(void);

void __ct__14JAISoundHandleFv(void);
}

extern Z2SeMgr* lbl_80450B88;  // Z2SeMgr sInstance
extern double lbl_804558D8;
extern float lbl_804558D0;
extern float lbl_804558D4;
extern double lbl_804558E0;
extern float lbl_804558C0;
extern float lbl_8045587C;
extern float lbl_80455878; // 0.0f
extern float lbl_80455870;
extern float lbl_80455874;
extern float lbl_80455880;
extern float lbl_80455884;
extern float lbl_80455888;
extern float lbl_80455880;
extern float lbl_8045588C;
extern float lbl_80455890;
extern float lbl_80455894;
extern float lbl_80455898;
extern float lbl_8045589C;
extern float lbl_804558A0;
extern float lbl_804558A4;
extern float lbl_804558A8;
extern float lbl_804558AC;
extern float lbl_804558B0;
extern float lbl_804558B4;
extern float lbl_804558B8;
extern float lbl_804558BC;
extern float lbl_804558C4;
extern float lbl_804558C8;
extern float lbl_804558CC;
extern float lbl_804558E8;
extern float lbl_804558EC;
extern float lbl_804558F0;
extern float lbl_804558F4;
extern float lbl_804558F8;
extern double lbl_80455900;
extern double lbl_80455908;
extern double lbl_80455910;
extern double lbl_80455918;
extern double lbl_80455920;
extern double lbl_80455928;
extern double lbl_80455930;
extern float lbl_80455938;
extern float lbl_8045593C;
extern float lbl_80455940;
extern float lbl_80455944;
extern float lbl_80455948;
extern float lbl_8045594C;
extern float lbl_80455950;
extern float lbl_80455954;
extern float lbl_80455958;
extern double lbl_80455960;
extern double lbl_80455968;
extern double lbl_80455970;
extern float lbl_80455978;
extern float lbl_8045597C;
extern float lbl_80455980;
extern float lbl_80455984;
extern float lbl_80455988;
extern float lbl_8045598C;
extern float lbl_80455990;
extern float lbl_80455994;
extern u32 lbl_8039B9F0;
extern u32 lbl_8039B9FC;
extern u8 lbl_803C9D98[0x60];

#endif