/**
 * JUTFont.cpp
 * JUtility - Font Management
 */

#include "JSystem/JUtility/JUTFont.h"

/* 802DECF8-802DED24 2D9638 002C+00 0/0 2/2 0/0 .text            __ct__7JUTFontFv */
JUTFont::JUTFont() : mColor1(), mColor2(), mColor3(), mColor4() {
    mValid = false;
}

/* 802DED24-802DED70 2D9664 004C+00 0/0 9/9 0/0 .text            initialize_state__7JUTFontFv */
void JUTFont::initialize_state() {
    setCharColor(JUtility::TColor());
    mFixed = false;
    mFixedWidth = 0;
    mValid = false;
}

/* 802DED70-802DEDC4 2D96B0 0054+00 1/1 3/3 0/0 .text setCharColor__7JUTFontFQ28JUtility6TColor */
void JUTFont::setCharColor(JUtility::TColor col1) {
    mColor1 = col1;
    mColor2 = col1;
    mColor3 = col1;
    mColor4 = col1;
}

/* 802DEDC4-802DEE28 2D9704 0064+00 0/0 2/2 0/0 .text
 * setGradColor__7JUTFontFQ28JUtility6TColorQ28JUtility6TColor  */
void JUTFont::setGradColor(JUtility::TColor col1, JUtility::TColor col2) {
    mColor1 = col1;
    mColor2 = col1;
    mColor3 = col2;
    mColor4 = col2;
}

/* 802DEE28-802DEF48 2D9768 0120+00 0/0 3/3 0/0 .text drawString_size_scale__7JUTFontFffffPCcUlb
 */
f32 JUTFont::drawString_size_scale(f32 a1, f32 a2, f32 a3, f32 a4, const char* str, u32 usz,
                                   bool a7) {
    f32 temp = a1;

    for (; usz > 0; usz--, str++) {
        u32 c = *(u8*)str;
        u32 b = c;
        if (isLeadByte(b)) {
            str++;
            b <<= 8;
            b |= *(u8*)str;
            usz--;
        }

        a1 += drawChar_scale(a1, a2, a3, a4, b, a7);
        a7 = 1;
    }

    return a1 - temp;
}
