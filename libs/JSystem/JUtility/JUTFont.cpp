#include "JSystem/JUtility/JUTFont/JUTFont.h"

JUTFont::JUTFont() : mColor1(), mColor2(), mColor3(), mColor4() {
    unk4 = 0;
}

void JUTFont::initialize_state() {
    setCharColor(JUtility::TColor());
    unk5 = false;
    unk8 = 0;
    unk4 = false;
}

void JUTFont::setCharColor(JUtility::TColor col1) {
    mColor1 = col1;
    mColor2 = col1;
    mColor3 = col1;
    mColor4 = col1;
}

void JUTFont::setGradColor(JUtility::TColor col1, JUtility::TColor col2) {
    mColor1 = col1;
    mColor2 = col1;
    mColor3 = col2;
    mColor4 = col2;
}

#ifdef NONMATCHING  // regalloc
f32 JUTFont::drawString_size_scale(f32 a1, f32 a2, f32 a3, f32 a4, const char* str, u32 usz,
                                   bool a7) {
    f32 temp = a1;

    for (; usz > 0; usz--, str++) {
        u32 b = *(u8*)str;
        if (isLeadByte(b)) {
            str++;
            b = (b << 8 | *(u8*)str);
            usz--;
        }

        a1 += drawChar_scale(temp, a2, a3, a4, b, a7);
        a7 = 1;
    }

    return a1 - temp;
}
#else
asm f32 JUTFont::drawString_size_scale(f32 a1, f32 a2, f32 a3, f32 a4, const char* a5, u32 usz,
                                       bool a7) {
    nofralloc
#include "JSystem/JUtility/JUTFont/asm/drawString_size_scale.s"
}
#endif
