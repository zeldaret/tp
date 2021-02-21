#include "JSystem/JUtility/JUTGamePad/JUTGamePad.h"
#include "global.h"
#include "msl_c/math.h"

extern "C" {
u32 OSGetResetSwitchState(void);
void __ct__10JSUPtrLinkFPv(void);
void __ct__11JKRDisposerFv(void);
void __dl__FPv(void);
void __dt__10JSUPtrLinkFv(void);
void __dt__11JKRDisposerFv(void);
void append__10JSUPtrListFP10JSUPtrLink(void);
void assign__10JUTGamePadFv(void);
void checkCallback__19JUTGamePadLongPressFlUl(void);
void checkResetCallback__10JUTGamePadFx(void);
void checkResetSwitch__10JUTGamePadFv(void);
void clear__10JUTGamePadFv(void);
void clear__Q210JUTGamePad6CStickFv(void);
void clear__Q210JUTGamePad7CButtonFv(void);
void clear__Q210JUTGamePad7CRumbleFP10JUTGamePad(void);
void getButton__Q210JUTGamePad6CStickFUl(void);
void initList__10JUTGamePadFv(void);
void remove__10JSUPtrListFP10JSUPtrLink(void);
void startMotor__Q210JUTGamePad7CRumbleFi(void);
void stopMotor__Q210JUTGamePad7CRumbleFib(void);
void update__10JUTGamePadFv(void);
void update__Q210JUTGamePad6CStickFScScUlUlUl(void);
void update__Q210JUTGamePad7CButtonFPC9PADStatusUl(void);
void update__Q210JUTGamePad7CRumbleFs(void);
}

extern u8 lbl_803CC610;
extern u8 lbl_804343D8;
extern u32 _sRumbleSupported;
extern u8 lbl_804508DC;
extern u8 lbl_804508D8;
extern void (*lbl_804514EC)(int, void*);  // JUTGamePad::C3ButtonReset::sCallback
extern void* lbl_804514F0;                // JUTGamePad::C3ButtonReset::sCallbackArg
extern u8 lbl_804508E8;
extern u8 lbl_804508EC;
extern u8 lbl_8043456C;
extern u8 lbl_80456020;
extern u8 lbl_80456018;
extern u8 lbl_80456030;
extern u8 lbl_80456038;
extern u8 lbl_80456040;
extern u8 lbl_80456048;
extern u8 lbl_8045604C;
extern u8 lbl_804508E4;
extern u8 lbl_804508E0;
extern f32 lbl_80450AE0[4];

#ifdef NONMATCHING
// TODO(erin): probably ~easy to do, i just didn't do it yet :)
JUTGamePad::JUTGamePad(EPadPort port) : ptr_link(this) {
    this->buttons.clear();
    this->control_stick.clear();
    this->c_stick.clear();
    this->rumble.clear();
}
#else
asm JUTGamePad::JUTGamePad(EPadPort port) {
    nofralloc
#include "JSystem/JUtility/JUTGamePad/asm/func_802E06DC.s"
}
#endif

asm JUTGamePad::~JUTGamePad() {
    nofralloc
#include "JSystem/JUtility/JUTGamePad/asm/func_802E07B0.s"
}

void JUTGamePad::initList() {
    if (/* mIsPadListInitialized */ lbl_804514D0 == false) {
        /*mPadList*/ lbl_804343E4.initiate();
        lbl_804514D0 = true;
    }
}

s32 JUTGamePad::init() {
    PADSetSpec(5);
    /*sAnalogMode*/ sAnalogMode = 3;
    PADSetAnalogMode(3);

    return PADInit();
}

void JUTGamePad::clear() {
    this->field_0x98 = 0;
    this->field_0xa8 = 1;
}

asm void JUTGamePad::read() {
    nofralloc
#include "JSystem/JUtility/JUTGamePad/asm/func_802E08E4.s"
}

void JUTGamePad::assign() {
    s32 iVar3 = 0;

    for (s32 i = 4; i > 0; i--) {
        if ((/* mPadStatus */ lbl_804343F0[iVar3].error == 0) &&
            (/* *puVar2 */ lbl_804514D4[iVar3] == 0)) {
            this->pad_port = iVar3;
            /* JUTGamePad::mPadAssign[iVar3] */ /* *puVar2 */ lbl_804514D4[iVar3] = 1;
            /* JUTGamePad::mPadButton */ lbl_80434420[iVar3].setRepeat(
                this->buttons.field_0x24, this->buttons.field_0x28, this->buttons.field_0x2c);
            this->rumble.clear(this);

            return;
        }

        iVar3++;
    }
}

void JUTGamePad::checkResetCallback(OSTime unk) {
    if (unk < /* sThreshold */ lbl_804514F8)
        return;

    lbl_80451501 = true;
    lbl_80451504 = this->pad_port;
    if (/* sCallback* */ lbl_804514EC != NULL) {
        lbl_804514EC(this->pad_port, /* sCallbackArg */ lbl_804514F0);
    }
}

asm void JUTGamePad::update() {
    nofralloc
#include "JSystem/JUtility/JUTGamePad/asm/func_802E0CD8.s"
}

void JUTGamePad::checkResetSwitch() {
    if (lbl_80451501 == false) {
        if ((s32)OSGetResetSwitchState() != 0) {
            lbl_80451500 = true;
            return;
        }

        if (lbl_80451500 == true) {
            lbl_80451501 = true;
            /* sResetOccurredPort */ lbl_80451504 = -1;
            if (/* sCallback* */ lbl_804514EC != NULL) {
                lbl_804514EC(-1, /* sCallbackArg */ lbl_804514F0);
            }
        }

        lbl_80451500 = false;
    }
}

void JUTGamePad::clearForReset() {
    CRumble::setEnabled((PADMask)0);
    JUTGamePad::recalibrate(
        (PADMask)(PAD_CHAN0_BIT | PAD_CHAN1_BIT | PAD_CHAN2_BIT | PAD_CHAN3_BIT));
}

void JUTGamePad::CButton::clear() {
    this->mButtonFlags = 0;
    this->mPressedButtonFlags = 0;
    this->mReleasedButtonFlags = 0;
    this->field_0x18 = 0;
    this->mAnalogARaw = 0;
    this->mAnalogBRaw = 0;
    this->mTriggerLeftRaw = 0;
    this->mTriggerRightRaw = 0;
    this->field_0x1c = 0;
    this->field_0x20 = 0;
    this->field_0x24 = 0;
    this->field_0x28 = 0;
    this->field_0x2c = 0;
}

asm u32 JUTGamePad::CButton::update(PADStatus const*, u32 unk) {
    nofralloc
#include "JSystem/JUtility/JUTGamePad/asm/func_802E108C.s"
}

void JUTGamePad::CStick::clear() {
    float zero = lbl_80456028;  // 0.0f
    this->mPosX = zero;
    this->mPosY = zero;
    this->mValue = zero;
    this->mAngle = 0;
}

asm u32 JUTGamePad::CStick::update(s8 unk0, s8 unk1, EStickMode mode, EWhichStick stick, u32 unk2) {
    nofralloc
#include "JSystem/JUtility/JUTGamePad/asm/func_802E1238.s"
}

asm u32 JUTGamePad::CStick::getButton(u32 unk) {
    nofralloc
#include "JSystem/JUtility/JUTGamePad/asm/func_802E1500.s"
}

void JUTGamePad::CRumble::clear() {
    this->field_0x0 = 0;
    this->field_0x4 = 0;
    this->field_0x8 = 0;
    this->field_0xc = 0;
    this->field_0x10 = 0;
    lbl_804514E8 = (PADMask)0xf0000000;  // mEnabled
}

void JUTGamePad::CRumble::clear(JUTGamePad* pad) {
    // TODO: potentially fake match
    s16 tmp0 = (s16)pad->pad_port;
    if ((tmp0 >= 0) && (tmp0 < 4)) {
        lbl_804514E4[tmp0] = false;  // mStatus
        this->stopMotor(pad->pad_port, true);
    }

    this->clear();
}

void JUTGamePad::CRumble::startMotor(int channel) {
    if ((/*mEnabled*/ lbl_804514E8 & /*sChannelMask*/ lbl_803CC5F0[channel]) != 0) {
        PADControlMotor(channel, 1);
        lbl_804514E4[channel] = true;  // mStatus
    }
}

void JUTGamePad::CRumble::stopMotor(int channel, bool stop) {
    if ((/*mEnabled*/ lbl_804514E8 & /*sChannelMask*/ lbl_803CC5F0[channel]) != 0) {
        PADControlMotor(channel, (u8)(stop ? 2 : 0));
        lbl_804514E4[channel] = false;  // mStatus
    }
}

extern "C" {
bool getNumBit(u8* buf, u32 n_bits) {
    return (u8)((0x80 >> (n_bits & 0b111)) & (u32) * (buf + ((s32)n_bits >> 3))) != 0;
}
}

#ifdef NONMATCHING
void JUTGamePad::CRumble::update(s16 chn) {
    // i can't get this to generate an `addic;subfe;clrlwi.`; it's just generating
    // an `and.` :/
    if ((/*mEnabled*/ lbl_804514E8 & /*sChannelMask*/ lbl_803CC5F0[chn]) == 0) {
        this->field_0x0 = 0;
        this->field_0x4 = 0;
        this->field_0x8 = 0;
        this->field_0xc = 0;
        this->field_0x10 = 0;
    }

    if (this->field_0x4 == 0)
        return;

    if (this->field_0x0 >= this->field_0x4) {
        stopMotor(chn, true);
        this->field_0x4 = 0;
    } else {
        if (this->field_0xc == 0) {
            if (!/* mStatus */ lbl_804514E4[chn]) {
                startMotor(chn);
            }
            return;
        }

        u32 uVar3 = getNumBit(this->field_0x8, this->field_0x0 % this->field_0xc);
        bool bVar1 = /* mStatus */ lbl_804514E4[chn];
        if (((uVar3 & 0xff) != 0) && !bVar1) {
            startMotor(chn);
        }
        // } else {
        //     if (uVar3 & 0xff == 0) {
        //         uVar3 = 0;
        //         if (this->field_0x10 != 0) {
        //             uVar3 = getNumBit(this->field_0x10, this->field_0x0 -
        //             (this->field_0x0/this->field_0xc) * this->field_0xc);
        //         }
        //         if (bVar1 == false) {
        //             if ((uVar3 & 0xff) != 0) {
        //                 stopMotor(chn, true);
        //             }
        //         } else {
        //             stopMotor(chn, uVar3);
        //         }
        //     }
        // }
    }
    this->field_0x0 = this->field_0x0 + 1;
}
#else
asm void JUTGamePad::CRumble::update(s16 unk0) {
    nofralloc
#include "JSystem/JUtility/JUTGamePad/asm/func_802E1720.s"
}
#endif

void JUTGamePad::CRumble::triggerPatternedRumble(u32 unk0) {
    if (this->field_0x8 == 0)
        return;

    if (this->field_0xc == 0)
        return;

    this->field_0x4 = unk0;
    this->field_0x0 = 0;
}

void JUTGamePad::CRumble::startPatternedRumble(void* unk0, JUTGamePad::CRumble::ERumble rumble,
                                               u32 unk1) {
    this->field_0xc = (u32)(*((u8*)unk0) << 8) + (u32) * ((u8*)unk0 + 1);
    this->field_0x8 = (u8*)unk0 + 2;

    switch (rumble) {
    case 0:
        this->triggerPatternedRumble(this->field_0xc);
        break;
    case 1:
        this->triggerPatternedRumble(-1);
        break;
    case 2:
        this->triggerPatternedRumble(unk1);
        break;
    }
}

void JUTGamePad::CRumble::stopPatternedRumble(s16 pad_port) {
    this->field_0x4 = 0;
    this->stopMotor(pad_port, true);
}

void JUTGamePad::CRumble::stopPatternedRumbleAtThePeriod() {
    this->field_0x4 = (field_0x0 + field_0xc - 1) % (field_0xc);
}

#ifdef NONMATCHING
/* TODO(erin): the issue here is that doing iterator++ removes a temp var fsr.
 * if you comment out iterator++, you can get it to almost match, excepting the
 * instruction that does link = link->mNext which will be missing. this is a
 * matching issue in general; see JKRHeap::dispose or JKRThread::searchThread,
 * both of which are currently nonmatching due to the same issue.
 */
JUTGamePad* JUTGamePad::getGamePad(int pad_index) {
    JSUList<JUTGamePad>* threadList = &lbl_804343E4;
    JSUListIterator<JUTGamePad> iterator;
    for (iterator = threadList; iterator != threadList->getEnd(); iterator++) {
        JUTGamePad* pad = iterator.getObject();
        if (pad_index == pad->pad_port) {
            return pad;
        }
    }

    return NULL;
}
#else
asm JUTGamePad* JUTGamePad::getGamePad(int pad_index) {
    nofralloc
#include "JSystem/JUtility/JUTGamePad/asm/func_802E199C.s"
}
#endif

void JUTGamePad::CRumble::setEnabled(PADMask pad_mask) {
    JUTGamePad* pGamePad;

    for (s32 channel = 0; channel < 4; channel++) {
        if ((/* mEnabled */ lbl_804514E8 & /* channel_mask */ (u32)lbl_803CC600[channel]) == 0) {
            if (/* mStatus */ lbl_804514E4[channel] != false) {
                stopMotor(channel, false);
            }

            pGamePad = getGamePad(channel);
            if (pGamePad != NULL) {
                pGamePad->rumble.stopPatternedRumble(pGamePad->pad_port);
            }
        }
    }

    lbl_804514E8 =
        (PADMask)(pad_mask & (PAD_CHAN3_BIT | PAD_CHAN2_BIT | PAD_CHAN1_BIT | PAD_CHAN0_BIT));
}

void JUTGamePad::CButton::setRepeat(u32 unk0, u32 unk1, u32 unk2) {
    this->field_0x20 = 0;
    this->field_0x1c = 0;
    this->field_0x24 = unk0;
    this->field_0x28 = unk1;
    this->field_0x2c = unk2;
}

bool JUTGamePad::recalibrate(PADMask pad_mask) {
    int iVar2 = 0;
    for (int iVar3 = 4; iVar3 != 0; iVar3--) {
        if ((/* sSuppressPadReset */ lbl_804514D8 & /* channel_mask */ (u32)lbl_803CC600[iVar2]) !=
            0) {
            pad_mask = (PADMask)((u32)pad_mask & (lbl_803CC600[iVar2] ^ 0xffffffff));
        }
        iVar2++;
    }

    s32 sVar1 = PADRecalibrate(pad_mask);

    return sVar1;
}

void JUTGamePadLongPress::checkCallback(s32 unk0, u32 unk1) {
    if ((0 <= unk0) && (unk1 >= this->field_0x1c)) {
        this->field_0x11 = true;
        this->field_0x48[unk0] = true;
        if (this->callback != NULL) {
            this->callback(unk0, this, this->field_0x50);
        }
    }
}