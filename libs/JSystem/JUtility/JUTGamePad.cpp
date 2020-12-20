#include "JSystem/JUtility/JUTGamePad/JUTGamePad.h"
#include "global.h"

#ifdef NONMATCHING
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
    /*sAnalogMode*/ lbl_804514DC = 3;
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
        if ((/* mPadStatus */ lbl_804343F0[iVar3].error == 0) && (/* *puVar2 */ lbl_804514D4[iVar3] == 0)) {
            this->pad_port = iVar3;
            /* JUTGamePad::mPadAssign[iVar3] */ /* *puVar2 */ lbl_804514D4[iVar3] = 1;
            /* JUTGamePad::mPadButton */ lbl_80434420[iVar3].setRepeat(this->buttons.field_0x24, this->buttons.field_0x28, this->buttons.field_0x2c);
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
    JUTGamePad::recalibrate((PADMask)(PAD_CHAN0_BIT | PAD_CHAN1_BIT | PAD_CHAN2_BIT | PAD_CHAN3_BIT));
}

void JUTGamePad::CButton::clear() {
    this->button_flags = 0;
    this->field_0x4 = 0;
    this->field_0x8 = 0;
    this->field_0x18 = 0;
    this->analog_a = 0;
    this->analog_b = 0;
    this->trigger_left = 0;
    this->trigger_right = 0;
    this->field_0x1c = 0;
    this->field_0x20 = 0;
    this->field_0x24 = 0;
    this->field_0x28 = 0;
    this->field_0x2c = 0;
}

asm u32 JUTGamePad::CButton::update(PADStatus const *, u32 unk) {
    nofralloc
    #include "JSystem/JUtility/JUTGamePad/asm/func_802E108C.s"
}

asm void JUTGamePad::CStick::clear() {
    nofralloc
    #include "JSystem/JUtility/JUTGamePad/asm/func_802E121C.s"
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
    lbl_804514E8 = 0xf0000000; // mEnabled
}

void JUTGamePad::CRumble::clear(JUTGamePad* pad) {
    // TODO: potentially false match
    s16 tmp0 = (s16) pad->pad_port; 
    if ((tmp0 >= 0) && (tmp0 < 4)) {
        lbl_804514E4[tmp0] = false; // mStatus
        this->stopMotor(pad->pad_port, true);
    }

    this->clear();
}

asm void JUTGamePad::CRumble::startMotor(int channel) {
    nofralloc
    #include "JSystem/JUtility/JUTGamePad/asm/func_802E1634.s"
}

asm void JUTGamePad::CRumble::stopMotor(int channel, bool stop) {
    nofralloc
    #include "JSystem/JUtility/JUTGamePad/asm/func_802E168C.s"
}

extern "C" {
bool getNumBit(u8* buf, u32 n_bits) {
    return (u8)(
            (0x80 >> (n_bits & 0b111))
            & (u32)*(buf + ((s32)n_bits >> 3) )
        ) != 0;
}
}

asm void JUTGamePad::CRumble::update(u16 unk0) {
    nofralloc
    #include "JSystem/JUtility/JUTGamePad/asm/func_802E1720.s"
}

asm void JUTGamePad::CRumble::triggerPatternedRumble(u32 unk0) {
    nofralloc
    #include "JSystem/JUtility/JUTGamePad/asm/func_802E18A4.s"
}

asm void JUTGamePad::CRumble::startPatternedRumble(void* unk0,
        JUTGamePad::CRumble::ERumble rumble, u32 unk1) {
    nofralloc
    #include "JSystem/JUtility/JUTGamePad/asm/func_802E18CC.s"
}

asm void JUTGamePad::CRumble::stopPatternedRumble(u16 pad_port) {
    nofralloc
    #include "JSystem/JUtility/JUTGamePad/asm/func_802E1948.s"
}

asm void JUTGamePad::CRumble::stopPatternedRumbleAtThePeriod() {
    nofralloc
    #include "JSystem/JUtility/JUTGamePad/asm/func_802E1978.s"
}

asm JUTGamePad* JUTGamePad::getGamePad(s32 pad_index) {
    nofralloc
    #include "JSystem/JUtility/JUTGamePad/asm/func_802E199C.s"
}

asm void JUTGamePad::CRumble::setEnabled(PADMask pad_mask) {
    nofralloc
    #include "JSystem/JUtility/JUTGamePad/asm/func_802E19D8.s"
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
        if ((/* sSuppressPadReset */ lbl_804514D8 & /* channel_mask */ (u32)lbl_803CC600[iVar2]) != 0) {
            pad_mask = (PADMask)((u32)pad_mask & (lbl_803CC600[iVar2] ^ 0xffffffff));
        }
        iVar2++;
    }

    s32 sVar1 = PADRecalibrate(pad_mask);

    return sVar1;
}

asm bool JUTGamePadLongPress::checkCallback(s32 unk0, u32 unk1) {
    nofralloc
    #include "JSystem/JUtility/JUTGamePad/asm/func_802E1AFC.s"
}


// asm void JUTGamePad::CRumble::clear(JUTGamePad* pad) {
//     nofralloc

// }
