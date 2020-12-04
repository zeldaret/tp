#include "Z2AudioLib/Z2LinkMgr/Z2LinkMgr.h"

void Z2CreatureLink::setLinkGroupInfo(u8 param1) {
    return;
}

void Z2CreatureLink::setLinkHp(s32 health, s32 param2) {
    this->link_hp = health;
}

asm void Z2CreatureLink::setLinkSwordType(s32, s32) {
    nofralloc
    #include "Z2AudioLib/Z2LinkMgr/asm/func_802C3228.s"
}

asm void Z2CreatureLink::setLinkShieldType(s32, s32) {
    nofralloc
    #include "Z2AudioLib/Z2LinkMgr/asm/func_802C328C.s"
}

asm void Z2CreatureLink::setLinkBootsType(s32) {
    nofralloc
    #include "Z2AudioLib/Z2LinkMgr/asm/func_802C32F0.s"
}

asm Z2CreatureLink::Z2CreatureLink(void) {
    nofralloc
    #include "Z2AudioLib/Z2LinkMgr/asm/func_802C333C.s"
}

asm Z2LinkSoundStarter::~Z2LinkSoundStarter() {
    nofralloc
    #include "Z2AudioLib/Z2LinkMgr/asm/func_802C3464.s"
}

asm Z2CreatureLink::~Z2CreatureLink() {
    nofralloc
    #include "Z2AudioLib/Z2LinkMgr/asm/func_802C3500.s"
}

// few instructions off
#ifdef NONMATCHING
/*void Z2CreatureLink::deleteObject(void) {
    if(this->unk179 != 0){
        deleteKantera();
    }
    creature.deleteObject();
}*/
#else
asm void Z2CreatureLink::deleteObject(void) {
    nofralloc
    #include "Z2AudioLib/Z2LinkMgr/asm/func_802C35F8.s"
}
#endif

asm void Z2CreatureLink::init(Vec* param1, Vec* param2, Vec* param3) {
    nofralloc
    #include "Z2AudioLib/Z2LinkMgr/asm/func_802C3638.s"
}

asm void Z2CreatureLink::initKantera(Vec* param1) {
    nofralloc
    #include "Z2AudioLib/Z2LinkMgr/asm/func_802C3710.s"
}

// 1 instruction off
#ifdef NONMATCHING
/*void Z2CreatureLink::deleteKantera(void) {
    lantern_state = 0;
    soundObjBase.deleteObject();
}*/
#else
asm void Z2CreatureLink::deleteKantera(void) {
    nofralloc
    #include "Z2AudioLib/Z2LinkMgr/asm/func_802C374C.s"
}
#endif

void Z2CreatureLink::setKanteraState(u8 param1) {
    this->lantern_state = param1;
}

asm void Z2CreatureLink::framework(u32 param1, s8 param2) {
    nofralloc
    #include "Z2AudioLib/Z2LinkMgr/asm/func_802C3780.s"
}

void Z2CreatureLink::setSinkDepth(s8 param1) {
    this->sink_depth = param1;
}

asm void Z2CreatureLink::setRiding(bool) {
    nofralloc
    #include "Z2AudioLib/Z2LinkMgr/asm/func_802C3A6C.s"
}

// 1 instruction off
#ifdef NONMATCHING
void Z2CreatureLink::setMagnetized(bool param1) {
    unk203 = param1 & 1u | unk203 & 0xfe;
}
#else
asm void Z2CreatureLink::setMagnetized(bool param1) {
    nofralloc
    #include "Z2AudioLib/Z2LinkMgr/asm/func_802C3AEC.s"
}
#endif

asm void Z2CreatureLink::setWolfEyeOpen(bool) {
    nofralloc
    #include "Z2AudioLib/Z2LinkMgr/asm/func_802C3AFC.s"
}

asm void Z2CreatureLink::startLinkSound(JAISoundID, u32, s8) {
    nofralloc
    #include "Z2AudioLib/Z2LinkMgr/asm/func_802C3BD4.s"
}

asm void Z2CreatureLink::startLinkSoundLevel(JAISoundID, u32, s8) {
    nofralloc
    #include "Z2AudioLib/Z2LinkMgr/asm/func_802C3E68.s"
}

asm void Z2CreatureLink::startLinkVoice(JAISoundID, s8) {
    nofralloc
    #include "Z2AudioLib/Z2LinkMgr/asm/func_802C4320.s"
}

asm void Z2CreatureLink::startLinkVoiceLevel(JAISoundID, s8) {
    nofralloc
    #include "Z2AudioLib/Z2LinkMgr/asm/func_802C45B0.s"
}

asm void Z2CreatureLink::startLinkSwordSound(JAISoundID, u32, s8) {
    nofralloc
    #include "Z2AudioLib/Z2LinkMgr/asm/func_802C46F0.s"
}

asm void Z2CreatureLink::startCollisionSE(u32, u32) {
    nofralloc
    #include "Z2AudioLib/Z2LinkMgr/asm/func_802C4784.s"
}

asm int Z2CreatureLink::startHitItemSE(u32, u32, Z2SoundObjBase*, float) {
    nofralloc
    #include "Z2AudioLib/Z2LinkMgr/asm/func_802C4814.s"
}

// 1 instruction off
#ifdef NONMATCHING
void Z2CreatureLink::setResumeAttack(bool param1){
    this->unk203 = ((param1 & 0x1) << 5) | (unk203 & 0xdf);
    return;
}
#else
asm void Z2CreatureLink::setResumeAttack(bool) {
    nofralloc
    #include "Z2AudioLib/Z2LinkMgr/asm/func_802C48D8.s"
}
#endif