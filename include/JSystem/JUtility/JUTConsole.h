#ifndef JUTCONSOLE_H
#define JUTCONSOLE_H

#include "JSystem/JGadget/linklist.h"
#include "JSystem/JKernel/JKRDisposer.h"
#include "JSystem/JUtility/JUTFont.h"
#include "JSystem/JUtility/TColor.h"
#include "Runtime.PPCEABI.H/__va_arg.h"
#include "dolphin/types.h"

class JUTConsole : public JKRDisposer {
public:
    enum EConsoleType {
        CONSOLE_TYPE_0 = 0,
        CONSOLE_TYPE_1 = 1,
        CONSOLE_TYPE_2 = 2,
    };

    enum OutputFlag {
        /* 0x0 */ OUTPUT_NONE,
        /* 0x1 */ OUTPUT_OSREPORT,
        /* 0x2 */ OUTPUT_CONSOLE,
        /* 0x3 */ OUTPUT_OSR_AND_CONSOLE,
    };

    /* 802E73E4 */ static JUTConsole* create(unsigned int, void*, u32);
    /* 802E7354 */ static JUTConsole* create(unsigned int, unsigned int, JKRHeap*);
    /* 802E746C */ JUTConsole(unsigned int, unsigned int, bool);
    /* 802E75CC */ static size_t getObjectSizeFromBufferSize(unsigned int, unsigned int);
    /* 802E75DC */ static size_t getLineFromObjectSize(u32, unsigned int);
    /* 802E75EC */ void clear();
    /* 802E7648 */ void doDraw(JUTConsole::EConsoleType) const;
    /* 802E7BB8 */ void print_f(char const*, ...);
    /* 802E7C38 */ void print(char const*);
    /* 802E7F7C */ void dumpToTerminal(unsigned int);
    /* 802E80A8 */ void scroll(int);
    /* 802E8184 */ int getUsedLine() const;
    /* 802E81A8 */ int getLineOffset() const;

    /* 802E755C */ virtual ~JUTConsole();

    void setOutput(unsigned int output) { mOutput = output; }
    void setPosition(int x, int y) {
        mPositionX = x;
        mPositionY = y;
    }
    void setFontSize(f32 x, f32 y) {
        mFontSizeX = x;
        mFontSizeY = y;
    }
    void setHeight(u32 height) {
        mHeight = height;
        if (mHeight > mMaxLines) {
            mHeight = mMaxLines;
        }
    }

    void setFont(JUTFont* p_font) {
        mFont = p_font;
        setFontSize(p_font->getWidth(), p_font->getHeight());
    }

    u32 getOutput() const { return mOutput; }
    int getPositionY() const { return mPositionY; }
    int getPositionX() const { return mPositionX; }
    u32 getHeight() const { return mHeight; }

    bool isVisible() const { return mVisible; }
    void setVisible(bool visible) { mVisible = visible; }

    void setLineAttr(int param_0, u8 param_1) { mBuf[(field_0x20 + 2) * param_0] = param_1; }
    u8* getLinePtr(int param_0) const { return &mBuf[(field_0x20 + 2) * param_0] + 1; }
    int diffIndex(int param_0, int param_1) const {
        int diff = param_1 - param_0;
        if (diff >= 0) {
            return diff;
        }
        return diff += mMaxLines;
    }

    int nextIndex(int param_0) const {
        int index = param_0 + 1;
        if (mMaxLines <= index) {
            index = 0;
        }

        return index;
    }

    void scrollToLastLine() { scroll(mMaxLines); }
    void scrollToFirstLine() { scroll(-mMaxLines); }

private:
    /* 0x18 */ JGadget::TLinkListNode mListNode;

private:
    /* 0x20 */ u32 field_0x20;
    /* 0x24 */ u32 mMaxLines;
    /* 0x28 */ u8* mBuf;
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

class JUTConsoleManager {
public:
    /* 802E81CC */ JUTConsoleManager();
    /* 802E81F4 */ static JUTConsoleManager* createManager(JKRHeap*);
    /* 802E8240 */ void appendConsole(JUTConsole*);
    /* 802E82B0 */ void removeConsole(JUTConsole*);
    /* 802E8384 */ void draw() const;
    /* 802E8450 */ void drawDirect(bool) const;
    /* 802E84C4 */ void setDirectConsole(JUTConsole*);

    JUTConsole* getDirectConsole() const { return mDirectConsole; }

    static JUTConsoleManager* getManager() { return sManager; }

    static JUTConsoleManager* sManager;

private:
    /* 0x00 */ JGadget::TLinkList<JUTConsole, 4> mLinkList;
    /* 0x0C */ JUTConsole* mActiveConsole;
    /* 0x10 */ JUTConsole* mDirectConsole;
};  // Size: 0x14

extern "C" void JUTConsole_print_f_va_(JUTConsole*, const char*, va_list);
extern "C" void JUTSetReportConsole(JUTConsole*);
extern "C" JUTConsole* JUTGetReportConsole();
extern "C" void JUTSetWarningConsole(JUTConsole*);
extern "C" JUTConsole* JUTGetWarningConsole();
extern "C" void JUTReportConsole_f_va(const char*, va_list);
extern "C" void JUTReportConsole_f(const char*, ...);
extern "C" void JUTWarningConsole(const char* message);
extern "C" void JUTReportConsole(const char* message);

#endif /* JUTCONSOLE_H */
