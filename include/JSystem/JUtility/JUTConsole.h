#ifndef JUTCONSOLE_H
#define JUTCONSOLE_H

#include "JSystem/JGadget/linklist.h"
#include "JSystem/JKernel/JKRDisposer.h"
#include "JSystem/JUtility/JUTFont.h"
#include "JSystem/JUtility/TColor.h"
#include "dolphin/types.h"

class JUTConsole : public JKRDisposer {
public:
    enum EConsoleType {};

    /* 802E73E4 */ void create(unsigned int, void*, u32);
    /* 802E7354 */ void create(unsigned int, unsigned int, JKRHeap*);
    /* 802E746C */ JUTConsole(unsigned int, unsigned int, bool);
    /* 802E75CC */ void getObjectSizeFromBufferSize(unsigned int, unsigned int);
    /* 802E75DC */ void getLineFromObjectSize(u32, unsigned int);
    /* 802E75EC */ void clear();
    /* 802E7648 */ void doDraw(JUTConsole::EConsoleType) const;
    /* 802E7BB8 */ void print_f(char const*, ...);
    /* 802E7C38 */ void print(char const*);
    /* 802E7F7C */ void dumpToTerminal(unsigned int);
    /* 802E80A8 */ void scroll(int);
    /* 802E8184 */ void getUsedLine() const;
    /* 802E81A8 */ int getLineOffset() const;

    /* 802E755C */ virtual ~JUTConsole();

    void setOutput(u32 output) { mOutput = output; }

    u32 getOutput() const { return mOutput; }

    void setPosition(int x, int y) {
        mPositionX = x;
        mPositionY = y;
    }

    int getPositionY() const { return mPositionY; }

    int getPositionX() const { return mPositionX; }

    bool isVisible() const { return mVisible; }

    void setVisible(bool visible) { mVisible = visible; }

private:
    /* 0x18 */ JGadget::TLinkListNode mListNode;
    /* 0x20 */ u32 field_0x20;
    /* 0x24 */ u32 field_0x24;
    /* 0x28 */ u32 field_0x28;
    /* 0x2C */ bool field_0x2c;
    /* 0x30 */ int field_0x30;
    /* 0x34 */ int field_0x34;
    /* 0x38 */ int field_0x38;
    /* 0x3C */ int field_0x3c;
    /* 0x40 */ int mPositionX;
    /* 0x44 */ int mPositionY;
    /* 0x48 */ u32 mHeight;
    /* 0x4C */ JUTFont* mFont;
    /* 0x50 */ f32 mFontSizeX;
    /* 0x54 */ f32 mFontSizeY;
    /* 0x58 */ int mOutput;
    /* 0x5C */ JUtility::TColor field_0x5c;
    /* 0x60 */ JUtility::TColor field_0x60;
    /* 0x64 */ int field_0x64;
    /* 0x68 */ bool mVisible;
    /* 0x69 */ bool field_0x69;
    /* 0x6A */ bool field_0x6a;
    /* 0x6B */ bool field_0x6b;
};  // Size: 0x6C

#endif /* JUTCONSOLE_H */
