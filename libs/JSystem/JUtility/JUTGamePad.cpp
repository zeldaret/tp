#include "JSystem/JUtility/JUTGamePad/JUTGamePad.h"
#include "global.h"

#ifdef NONMATCHING
JUTGamePad::JUTGamePad(EPadPort port) {
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

asm void JUTGamePad::initList() {
    nofralloc
    #include "JSystem/JUtility/JUTGamePad/asm/func_802E085C.s"
}

asm s32 JUTGamePad::init() {
    nofralloc
    #include "JSystem/JUtility/JUTGamePad/asm/func_802E0898.s"
}

asm void JUTGamePad::clear() {
    nofralloc
    #include "JSystem/JUtility/JUTGamePad/asm/func_802E08D0.s"
}

asm void JUTGamePad::read() {
    nofralloc
    #include "JSystem/JUtility/JUTGamePad/asm/func_802E08E4.s"
}

asm void JUTGamePad::assign() {
    nofralloc
    #include "JSystem/JUtility/JUTGamePad/asm/func_802E0BBC.s"
}

asm void JUTGamePad::checkResetCallback(s64 unk) {
    nofralloc
    #include "JSystem/JUtility/JUTGamePad/asm/func_802E0C6C.s"
}

asm void JUTGamePad::update() {
    nofralloc
    #include "JSystem/JUtility/JUTGamePad/asm/func_802E0CD8.s"
}

asm void JUTGamePad::checkResetSwitch() {
    nofralloc
    #include "JSystem/JUtility/JUTGamePad/asm/func_802E0FA4.s"
}

asm void JUTGamePad::clearForReset() {
    nofralloc
    #include "JSystem/JUtility/JUTGamePad/asm/func_802E1024.s"
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

asm bool JUTGamePad::recalibrate(PADMask pad_mask) {
    nofralloc
    #include "JSystem/JUtility/JUTGamePad/asm/func_802E1A98.s"
}

asm bool JUTGamePadLongPress::checkCallback(s32 unk0, u32 unk1) {
    nofralloc
    #include "JSystem/JUtility/JUTGamePad/asm/func_802E1AFC.s"
}


// asm void JUTGamePad::CRumble::clear(JUTGamePad* pad) {
//     nofralloc

// }