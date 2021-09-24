#ifndef JUTDBPRINT_H
#define JUTDBPRINT_H

#include "JSystem/JKernel/JKRHeap.h"
#include "JSystem/JUtility/JUTFont.h"
#include "dolphin/types.h"

class JUTDbPrint {
public:
    /* 802E0148 */ JUTDbPrint(JUTFont*, JKRHeap*);
    /* 802E0190 */ void start(JUTFont*, JKRHeap*);
    /* 802E0204 */ void changeFont(JUTFont*);
    /* 802E021C */ void enter(int, int, int, char const*, int);
    /* 802E02DC */ void flush(int, int, int, int);
    /* 802E02A4 */ void flush();
    /* 802E0440 */ void drawString(int, int, int, u8 const*);

    static JUTDbPrint* getManager() { return sDebugPrint; }
    void setVisible(bool visible) { mVisible = visible; }

    static JUTDbPrint* sDebugPrint;

private:
    /* 0x00 */ JUTDbPrint* mNext;
    /* 0x04 */ JUTFont* mFont;
    /* 0x08 */ JUtility::TColor mColor;
    /* 0x0C */ bool mVisible;
};

#endif /* JUTDBPRINT_H */
