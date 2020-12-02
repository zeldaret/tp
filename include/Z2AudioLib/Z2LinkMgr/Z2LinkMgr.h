#include "dolphin/types.h"

struct Vec{ // move later
    float x, y, z;
};

struct JAISoundID{ // move later
    u32 value;
};

class Z2SoundObjBase{

};

class JAISoundHandle{

};

class Z2CreatureLink {
    public:
     void setLinkState(u8);
     void setLinkGroupInfo(u8);
     void setLinkHp(s32, s32);
     void setLinkSwordType(s32, s32);
     void setLinkShieldType(s32, s32);
     void setLinkBootsType(s32);
     Z2CreatureLink(void);
     ~Z2CreatureLink();
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

class Z2LinkSoundStarter{
   public:
    Z2LinkSoundStarter(void);
    ~Z2LinkSoundStarter();
    //u32 startSound(JAISoundID, JAISoundHandle, TVec3<float>*, u32, float, float, float, float, float, u32);
};