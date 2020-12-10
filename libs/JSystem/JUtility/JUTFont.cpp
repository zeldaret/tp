#include "JSystem/JUtility/JUTFont/JUTFont.h"

#ifdef NONMATCHING
JUTFont::JUTFont() {
    mColor1 = TColor();
    mColor2 = TColor();
    mColor3 = TColor();
    mColor4 = TColor();
    unk4 = false;
}
#endif

void JUTFont::initialize_state() {
    setCharColor(TColor());
    unk5 = false;
    unk8 = 0;
    unk4 = false;
}

void JUTFont::setCharColor(TColor col1) {
    mColor1 = col1;
    mColor2 = col1;
    mColor3 = col1;
    mColor4 = col1;
}

void JUTFont::setGradColor(TColor col1, TColor col2) {
    mColor1 = col1;
    mColor2 = col1;
    mColor3 = col2;
    mColor4 = col2;
}

asm float JUTFont::drawString_size_scale(float a1, float a2, float a3, float a4, char* a5,
                                         unsigned long usz, bool a7) {
    nofralloc

#include "JSystem/JUtility/JUTFont/asm/drawString_size_scale.s"
}