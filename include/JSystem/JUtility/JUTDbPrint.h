#ifndef JUTDBPRINT_H
#define JUTDBPRINT_H

#include "JSystem/JUtility/JUTFont.h"
#include "dolphin/types.h"

class JKRHeap;

// TODO: fix struct
struct unk_print {
    /* 0x00 */ unk_print* mNext;
    /* 0x04 */ s16 unk_0x04;
    /* 0x06 */ s16 unk_0x06;
    /* 0x08 */ s16 unk_0x08;
    /* 0x0A */ s16 unk_0x0A;
    /* 0x0C */ char unk_0x0C[0];
};

class JUTDbPrint {
public:
    /* 802E0148 */ JUTDbPrint(JUTFont*, JKRHeap*);
    /* 802E0190 */ static JUTDbPrint* start(JUTFont*, JKRHeap*);
    /* 802E0204 */ JUTFont* changeFont(JUTFont*);
    /* 802E021C */ void enter(int, int, int, char const*, int);
    /* 802E02DC */ void flush(int, int, int, int);
    /* 802E02A4 */ void flush();
    /* 802E0440 */ void drawString(int, int, int, u8 const*);

    static JUTDbPrint* getManager() { return sDebugPrint; }

    void setVisible(bool visible) { mVisible = visible; }
    JUTFont* getFont() const { return mFont; }

    static JUTDbPrint* sDebugPrint;

private:
    /* 0x00 */ unk_print* mFirst;
    /* 0x04 */ JUTFont* mFont;
    /* 0x08 */ JUtility::TColor mColor;
    /* 0x0C */ bool mVisible;
    /* 0x10 */ JKRHeap* mHeap;
};

#endif /* JUTDBPRINT_H */
