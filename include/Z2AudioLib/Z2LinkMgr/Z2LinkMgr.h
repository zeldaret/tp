#ifndef Z2LINKMGR_H_
#define Z2LINKMGR_H_

#include "JSystem/JAudio2/JAISe/JAISe.h"
#include "JSystem/JAudio2/JAISound/JAISound.h"
#include "global.h"
#include "mtx_vec.h"

class Z2SoundObjBase;

class Z2CreatureLink {
public:
    Z2CreatureLink(void);
    ~Z2CreatureLink();

    void setLinkState(u8);
    void setLinkGroupInfo(u8);
    void setLinkHp(s32, s32);
    void setLinkSwordType(s32, s32);
    void setLinkShieldType(s32, s32);
    void setLinkBootsType(s32);
    void deleteObject();
    void init(Vec*, Vec*, Vec*);
    void initKantera(Vec*);
    void deleteKantera(void);
    void setKanteraState(u8);
    void framework(u32, s8);
    void setSinkDepth(s8);
    void setRiding(bool);
    void setMagnetized(bool);
    void setWolfEyeOpen(bool);
    void startLinkSound(JAISoundID, u32, s8);
    void startLinkSoundLevel(JAISoundID, u32, s8);
    void startLinkVoice(JAISoundID, s8);
    void startLinkVoiceLevel(JAISoundID, s8);
    void startLinkSwordSound(JAISoundID, u32, s8);
    void startCollisionSE(u32, u32);
    int startHitItemSE(u32, u32, Z2SoundObjBase*, float);
    void setResumeAttack(bool);

private:
    u8 unk0[179];
    u8 unk179;
    float unk180;
    float unk184;
    float unk188;
    u8 link_state;
    u8 unk193;
    u8 unk194;
    u8 link_hp;
    u8 unk196;
    u8 lantern_state;
    u8 unk198;
    u8 unk199;
    u8 unk200;
    u8 unk201;
    u8 sink_depth;
    u8 unk203;
    u8 unk204;
};

struct Z2LinkSoundStarter {
    Z2LinkSoundStarter(void);
    ~Z2LinkSoundStarter();
    // u32 startSound(JAISoundID, JAISoundHandle, TVec3<float>*, u32, float, float, float, float,
    // float, u32);
};

extern "C" {
void Z2CreatureRide_NS_dtor(void);

void func_802C5078(void);
void func_802C57C0(void);
void func_802C551C(void);
void func_802C5284(void);
void func_802C4FFC(void);
void func_802C5894(void);
void func_802C4928(void);
void func_802C588C(void);
void func_802C54FC(void);
void func_802C54B8(void);
void func_802C56C0(void);
void func_802C51EC(void);
void func_802C520C(void);

void Z2LinkSoundStarter_NS_ctor(void);

void Z2RideSoundStarter(void);
}

#endif  // Z2LINKMGR_H_
