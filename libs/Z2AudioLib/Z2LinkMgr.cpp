#include "Z2AudioLib/Z2LinkMgr/Z2LinkMgr.h"
#include "Z2AudioLib/Z2SeMgr/Z2SeMgr.h"
#include "Z2AudioLib/Z2StatusMgr/Z2StatusMgr.h"
#include "Z2AudioLib/Z2SoundStarter/Z2SoundStarter.h"
#include "d/d_com/d_com_inf_game/d_com_inf_game.h"

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
void Z2CreatureLink::setResumeAttack(bool param1) {
    this->unk203 = ((param1 & 0x1) << 5) | (unk203 & 0xdf);
    return;
}
#else
asm void Z2CreatureLink::setResumeAttack(bool) {
    nofralloc
#include "Z2AudioLib/Z2LinkMgr/asm/func_802C48D8.s"
}
#endif

extern "C" {
// __ct__18Z2LinkSoundStarterFv
// Z2LinkSoundStarter::Z2LinkSoundStarter(void)
asm void Z2LinkSoundStarter_NS_ctor(void) {
    nofralloc
#include "Z2AudioLib/Z2LinkMgr/asm/func_802C48E8.s"
}

// startSound__18Z2LinkSoundStarterF10JAISoundIDP14JAISoundHandlePCQ29JGeometry8TVec3<f>UlfffffUl
// Z2LinkSoundStarter::startSound(JAISoundID, JAISoundHandle*, JGeometry::TVec3<f>, unsigned long,
// float, float, float, float, float, unsigned long)
asm void func_802C4928(void) {
    nofralloc
#include "Z2AudioLib/Z2LinkMgr/asm/func_802C4928.s"
}

// __ct__14Z2CreatureRideFv
// Z2CreatureRide::Z2CreatureRide(void)
asm void func_802C4FFC(void) {
    nofralloc
#include "Z2AudioLib/Z2LinkMgr/asm/func_802C4FFC.s"
}

// __dt__18Z2RideSoundStarterFv
// Z2RideSoundStarter::~Z2RideSoundStarter(void)
asm void func_802C5078(void) {
    nofralloc
#include "Z2AudioLib/Z2LinkMgr/asm/func_802C5078.s"
}

// __dt__14Z2CreatureRideFv
// Z2CreatureRide::~Z2CreatureRide(void)
asm void Z2CreatureRide_NS_dtor(void) {
    nofralloc
#include "Z2AudioLib/Z2LinkMgr/asm/func_802C5114.s"
}

// deleteObject__14Z2CreatureRideFv
// Z2CreatureRide::deleteObject(void)
asm void func_802C51EC(void) {
    nofralloc
#include "Z2AudioLib/Z2LinkMgr/asm/func_802C51EC.s"
}

// init__14Z2CreatureRideFP3VecP3VecUcUc
// Z2CreatureRide::init(Vec*, Vec*, unsigned char, unsigned char)
asm void func_802C520C(void) {
    nofralloc
#include "Z2AudioLib/Z2LinkMgr/asm/func_802C520C.s"
}

// setLinkRiding__14Z2CreatureRideFb
// Z2CreatureRide::setLinkRiding(bool)
asm void Z2CreatureRide_NS_setLinkRiding(void) {
    nofralloc
#include "Z2AudioLib/Z2LinkMgr/asm/func_802C522C.s"
}

// __ct__18Z2RideSoundStarterFP14Z2CreatureRide
// Z2RideSoundStarter::Z2RideSoundStarter(Z2CreatureRide*)
asm void Z2RideSoundStarter(void) {
    nofralloc
#include "Z2AudioLib/Z2LinkMgr/asm/func_802C5234.s"
}

// startSound__18Z2RideSoundStarterF10JAISoundIDP14JAISoundHandlePCQ29JGeometry8TVec3<f>UlfffffUl
// Z2RideSoundStarter::startSound(JAISoundID, JAISoundHandle*, JGeometry::TVec3<f>, unsigned long,
// float, float, float, float, float, unsigned long)
asm void func_802C5284(void) {
    nofralloc
#include "Z2AudioLib/Z2LinkMgr/asm/func_802C5284.s"
}

// __ct__15Z2SoundObjCoachFv
// Z2SoundObjCoach::Z2SoundObjCoach(void)
asm void func_802C54B8(void) {
    nofralloc
#include "Z2AudioLib/Z2LinkMgr/asm/func_802C54B8.s"
}

// init__15Z2SoundObjCoachFP3VecUc
// Z2SoundObjCoach::init(Vec*, unsigned char)
asm void func_802C54FC(void) {
    nofralloc
#include "Z2AudioLib/Z2LinkMgr/asm/func_802C54FC.s"
}

// startWheelSound__15Z2SoundObjCoachFf
// Z2SoundObjCoach::startWheelSound(float)
asm void func_802C551C(void) {
    nofralloc
#include "Z2AudioLib/Z2LinkMgr/asm/func_802C551C.s"
}

// startFireSound__15Z2SoundObjCoachFUs
// Z2SoundObjCoach::startFireSound(unsigned short)
asm void func_802C56C0(void) {
    nofralloc
#include "Z2AudioLib/Z2LinkMgr/asm/func_802C56C0.s"
}

// startSound__15Z2SoundObjCoachF10JAISoundIDUlSc
// Z2SoundObjCoach::startSound(JAISoundID, unsigned long, char)
asm void func_802C57C0(void) {
    nofralloc
#include "Z2AudioLib/Z2LinkMgr/asm/func_802C57C0.s"
}

// @144@__dt__14Z2CreatureLinkFv
// Z2CreatureLink::@144@__dt(void)
asm void func_802C588C(void) {
    nofralloc
#include "Z2AudioLib/Z2LinkMgr/asm/func_802C588C.s"
}

// @144@__dt__14Z2CreatureRideFv
// Z2CreatureRide::@144@__dt(void)
asm void func_802C5894(void) {
    nofralloc
#include "Z2AudioLib/Z2LinkMgr/asm/func_802C5894.s"
}
};
