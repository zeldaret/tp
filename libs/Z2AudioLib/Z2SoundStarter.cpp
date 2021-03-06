/* Z2SoundStarter.cpp autogenerated by split.py v0.3 at 2021-01-04 23:38:28.244752 */

#include "Z2AudioLib/Z2SoundStarter/Z2SoundStarter.h"
#include "JSystem/JAudio2/JAISoundParamsMove.h"
#include "JSystem/JAudio2/JAISoundStarter.h"
#include "JSystem/JAudio2/JASTrack.h"
#include "Z2AudioLib/Z2EnvSeMgr/Z2EnvSeMgr.h"
#include "Z2AudioLib/Z2StatusMgr/Z2StatusMgr.h"
#include "m_Do/m_Do_audio/m_Do_audio.h"

extern "C" {
void __dl__FPv(void);
}

// additional symbols needed for Z2SoundStarter.cpp
// autogenerated by split.py v0.3 at 2021-01-04 23:38:28.239258
extern u8 lbl_80455860;
extern u8 lbl_80455864;
extern u8 lbl_8045585C;
extern u8 lbl_80455868;
extern u8 lbl_80455858;
extern u8 lbl_803C9D80;
extern u8 lbl_80450B80;

extern "C" {
// __ct__14Z2SoundStarterFb
// Z2SoundStarter::Z2SoundStarter(bool)
asm Z2SoundStarter::Z2SoundStarter(bool) {
    nofralloc
#include "Z2AudioLib/Z2SoundStarter/asm/func_802AAB94.s"
}

// startSound__14Z2SoundStarterF10JAISoundIDP14JAISoundHandlePCQ29JGeometry8TVec3<f>
// Z2SoundStarter::startSound(JAISoundID, JAISoundHandle*, JGeometry::TVec3<f>)
asm void Z2SoundStarter::startSound(JAISoundID, JAISoundHandle*, JGeometry::TVec3<f32> const*) {
    nofralloc
#include "Z2AudioLib/Z2SoundStarter/asm/func_802AABF4.s"
}

// startSound__14Z2SoundStarterF10JAISoundIDP14JAISoundHandlePCQ29JGeometry8TVec3<f>UlfffffUl
// Z2SoundStarter::startSound(JAISoundID, JAISoundHandle*, JGeometry::TVec3<f>, unsigned long,
// float, float, float, float, float, unsigned long)
asm void Z2SoundStarter::startSound(JAISoundID, JAISoundHandle*, JGeometry::TVec3<f32> const*, u32,
                                    float, float, float, float, float, u32) {
    nofralloc
#include "Z2AudioLib/Z2SoundStarter/asm/func_802AAC3C.s"
}

// setPortData__14Z2SoundStarterFP14JAISoundHandleUlUsSc
// Z2SoundStarter::setPortData(JAISoundHandle*, unsigned long, unsigned short, char)
asm void Z2SoundStarter::setPortData(JAISoundHandle*, u32, u16, s8) {
    nofralloc
#include "Z2AudioLib/Z2SoundStarter/asm/func_802AAEDC.s"
}

// getPortData__14Z2SoundStarterFP14JAISoundHandleUlSc
// Z2SoundStarter::getPortData(JAISoundHandle*, unsigned long, char)
asm void Z2SoundStarter::getPortData(JAISoundHandle*, u32, s8) {
    nofralloc
#include "Z2AudioLib/Z2SoundStarter/asm/func_802AAF74.s"
}

// __dt__14Z2SoundStarterFv
// Z2SoundStarter::~Z2SoundStarter(void)
asm Z2SoundStarter::~Z2SoundStarter(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundStarter/asm/func_802AAFF0.s"
}
};
