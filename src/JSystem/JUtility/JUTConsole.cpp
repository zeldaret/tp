#include "JSystem/JUtility/JUTConsole.h"
#include "JSystem/J2DGraph/J2DOrthoGraph.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "JSystem/JUtility/JUTAssert.h"
#include "JSystem/JUtility/JUTDirectPrint.h"
#include "JSystem/JUtility/JUTVideo.h"
#include <stdio.h>

/* 80451570-80451574 000A70 0004+00 4/4 7/7 0/0 .sbss            sManager__17JUTConsoleManager */
JUTConsoleManager* JUTConsoleManager::sManager;

/* 802E7354-802E73E4 2E1C94 0090+00 0/0 1/1 0/0 .text            create__10JUTConsoleFUiUiP7JKRHeap
 */
JUTConsole* JUTConsole::create(unsigned int param_0, unsigned int maxLines, JKRHeap* pHeap) {
    JUTConsoleManager* pManager = JUTConsoleManager::getManager();
    JUT_ASSERT(33, pManager != 0);

    u8* buffer = (u8*)JKRAllocFromHeap(pHeap, getObjectSizeFromBufferSize(param_0, maxLines), 0);

    JUTConsole* console = new (buffer) JUTConsole(param_0, maxLines, true);
    console->mBuf = buffer + sizeof(JUTConsole);
    console->clear();

    pManager->appendConsole(console);
    return console;
}

/* 802E73E4-802E746C 2E1D24 0088+00 0/0 1/1 0/0 .text            create__10JUTConsoleFUiPvUl */
JUTConsole* JUTConsole::create(unsigned int param_0, void* buffer, u32 bufferSize) {
    JUTConsoleManager* pManager = JUTConsoleManager::getManager();
    JUT_ASSERT(59, pManager != 0);

    JUT_ASSERT(62, ( (u32)buffer & 0x3 ) == 0);
    u32 maxLines = getLineFromObjectSize(bufferSize, param_0);

    JUTConsole* console = new (buffer) JUTConsole(param_0, maxLines, false);
    console->mBuf = (u8*)buffer + sizeof(JUTConsole);
    console->clear();

    pManager->appendConsole(console);
    return console;
}

/* 802E746C-802E755C 2E1DAC 00F0+00 2/2 0/0 0/0 .text            __ct__10JUTConsoleFUiUib */
JUTConsole::JUTConsole(unsigned int param_0, unsigned int maxLines, bool param_2) {
    field_0x2c = param_2;
    field_0x20 = param_0;
    mMaxLines = maxLines;

    mPositionX = 30;
    mPositionY = 50;
    mHeight = 20;

    if (mHeight > mMaxLines) {
        mHeight = mMaxLines;
    }

    mFont = NULL;
    mVisible = true;
    field_0x69 = false;
    field_0x6a = false;
    field_0x6b = false;
    mOutput = 1;

    field_0x5c.set(0, 0, 0, 100);
    field_0x60.set(0, 0, 0, 230);
    field_0x64 = 8;
}

/* 802E755C-802E75CC 2E1E9C 0070+00 1/0 0/0 0/0 .text            __dt__10JUTConsoleFv */
JUTConsole::~JUTConsole() {
    JUT_ASSERT(154, JUTConsoleManager::getManager());
    JUTConsoleManager::getManager()->removeConsole(this);
}

/* 802E75CC-802E75DC 2E1F0C 0010+00 1/1 0/0 0/0 .text
 * getObjectSizeFromBufferSize__10JUTConsoleFUiUi               */
size_t JUTConsole::getObjectSizeFromBufferSize(unsigned int param_0, unsigned int maxLines) {
    return (param_0 + 2) * maxLines + sizeof(JUTConsole);
}

/* 802E75DC-802E75EC 2E1F1C 0010+00 1/1 1/1 0/0 .text getLineFromObjectSize__10JUTConsoleFUlUi */
size_t JUTConsole::getLineFromObjectSize(u32 bufferSize, unsigned int param_1) {
    return (bufferSize - sizeof(JUTConsole)) / (param_1 + 2);
}

/* 802E75EC-802E7648 2E1F2C 005C+00 2/2 2/2 0/0 .text            clear__10JUTConsoleFv */
void JUTConsole::clear() {
    field_0x30 = 0;
    field_0x34 = 0;
    field_0x38 = 0;
    field_0x3c = 0;

    for (u32 i = 0; i < mMaxLines; i++) {
        setLineAttr(i, 0);
    }

    setLineAttr(0, -1);
    *getLinePtr(0) = 0;
}

/* 802E7648-802E7BB8 2E1F88 0570+00 2/2 0/0 0/0 .text
 * doDraw__10JUTConsoleCFQ210JUTConsole12EConsoleType           */
void JUTConsole::doDraw(JUTConsole::EConsoleType consoleType) const {
    f32 font_yOffset;
    s32 changeLine_1;
    s32 changeLine_2;

    if (mVisible && (mFont != NULL || consoleType == CONSOLE_TYPE_2)) {
        if (mHeight != 0) {
            bool temp_r30 = consoleType == CONSOLE_TYPE_0;
            font_yOffset = 2.0f + mFontSizeY;

            if (consoleType != CONSOLE_TYPE_2) {
                if (JUTVideo::getManager() == NULL) {
                    J2DOrthoGraph ortho(0.0f, 0.0f, 640.0f, 480.0f, -1.0f, 1.0f);
                    ortho.setPort();
                } else {
                    J2DOrthoGraph ortho(0.0f, 0.0f, JUTVideo::getManager()->getFbWidth(),
                                        JUTVideo::getManager()->getEfbHeight(), -1.0f, 1.0f);
                    ortho.setPort();
                }

                const JUtility::TColor* color;
                if (temp_r30) {
                    color = &field_0x60;
                } else {
                    color = &field_0x5c;
                }

                J2DFillBox(mPositionX - 2, (int)(mPositionY - font_yOffset),
                           (int)((mFontSizeX * field_0x20) + 4.0f), (int)(font_yOffset * mHeight),
                           *color);
                mFont->setGX();

                if (temp_r30) {
                    s32 s = (diffIndex(field_0x30, field_0x38) - mHeight) + 1;
                    if (s <= 0) {
                        mFont->setCharColor(JUtility::TColor(255, 255, 255, 255));
                    } else if (field_0x30 == field_0x34) {
                        mFont->setCharColor(JUtility::TColor(255, 230, 230, 255));
                    } else {
                        mFont->setCharColor(JUtility::TColor(230, 230, 255, 255));
                    }
                } else {
                    mFont->setCharColor(JUtility::TColor(230, 230, 230, 255));
                }
            } else {
                JUTDirectPrint::getManager()->erase(mPositionX - 3, mPositionY - 2,
                                                    (field_0x20 * 6) + 6,
                                                    (int)(font_yOffset * mHeight) + 4);
                JUTDirectPrint::getManager()->setCharColor(JUtility::TColor(255, 255, 255, 255));
            }

            char* linePtr;
            s32 curLine = field_0x30;
            s32 yFactor = 0;

            do {
                linePtr = (char*)getLinePtr(curLine);

                if ((u8)linePtr[-1] != NULL) {
                    if (consoleType != CONSOLE_TYPE_2) {
                        mFont->drawString_scale(mPositionX, ((yFactor * font_yOffset) + mPositionY),
                                                mFontSizeX, mFontSizeY, linePtr, true);
                    } else {
                        JUTDirectPrint::getManager()->drawString(
                            mPositionX, ((yFactor * font_yOffset) + mPositionY), linePtr);
                    }

                    changeLine_1 = curLine + 1;
                    yFactor += 1;
                    changeLine_2 = changeLine_1 & ~(-((s32)mMaxLines <= (s32)changeLine_1));
                    curLine = changeLine_2;
                } else {
                    break;
                }
            } while (yFactor < mHeight && changeLine_2 != field_0x34);
        }
    }
}

/* 802E7BB8-802E7C38 2E24F8 0080+00 0/0 13/13 0/0 .text            print_f__10JUTConsoleFPCce */
void JUTConsole::print_f(char const* fmt, ...) {
    va_list args;
    va_start(args, fmt);
    JUTConsole_print_f_va_(this, fmt, args);
    va_end(args);
}

/* 802E7C38-802E7F30 2E2578 02F8+00 2/2 10/10 0/0 .text            print__10JUTConsoleFPCc */
void JUTConsole::print(char const* str) {
    if (mOutput & 2) {
        OS_REPORT("%s", str);
    }

    if (mOutput & 1) {
        const u8* r29 = (const u8*)str;
        u8* r28 = getLinePtr(field_0x38) + field_0x3c;
        while (*r29) {
            if (field_0x6a && field_0x34 == nextIndex(field_0x38)) {
                break;
            }
            if (*r29 == '\n') {
                r29++;
                field_0x3c = field_0x20;
            } else if (*r29 == '\t') {
                r29++;
                while (field_0x3c < field_0x20) {
                    *(r28++) = ' ';
                    field_0x3c++;
                    if (field_0x3c % field_0x64 == 0) {
                        break;
                    }
                }
            } else if (mFont && mFont->isLeadByte(*r29)) {
                if (field_0x3c + 1 < field_0x20) {
                    *(r28++) = *(r29++);
                    *(r28++) = *(r29++);
                    field_0x3c++;
                    field_0x3c++;
                } else {
                    *(r28++) = 0;
                    field_0x3c++;
                }
            } else {
                *(r28++) = *(r29++);
                field_0x3c++;
            }

            if (field_0x3c < field_0x20) {
                continue;
            }
            *r28 = 0;
            field_0x38 = nextIndex(field_0x38);
            field_0x3c = 0;
            setLineAttr(field_0x38, 0xff);
            r28 = getLinePtr(field_0x38);
            *r28 = 0;
            int local_28 = diffIndex(field_0x30, field_0x38);
            if (local_28 == mHeight) {
                field_0x30 = nextIndex(field_0x30);
            }
            if (field_0x38 == field_0x34) {
                field_0x34 = nextIndex(field_0x34);
            }
            if (field_0x38 == field_0x30) {
                field_0x30 = nextIndex(field_0x30);
            }

            if (field_0x6b) {
                break;
            }
        }
        *r28 = 0;
    }
}

/* 802E7F30-802E7F7C 2E2870 004C+00 1/1 1/1 0/0 .text            JUTConsole_print_f_va_ */
extern "C" void JUTConsole_print_f_va_(JUTConsole* console, const char* fmt, va_list args) {
    JUT_ASSERT(563, console!=0);

    char buf[1024];
    vsnprintf(buf, sizeof(buf), fmt, args);
    console->print(buf);
}

/* 802E7F7C-802E80A8 2E28BC 012C+00 0/0 2/2 0/0 .text            dumpToTerminal__10JUTConsoleFUi */
void JUTConsole::dumpToTerminal(unsigned int param_0) {
    if (param_0 == 0) {
        return;
    }

    int r29 = field_0x34;
    if (param_0 != -1) {
        r29 = field_0x38;
        for (int i = 0; i != param_0; i++) {
            int r25 = prevIndex(r29);
            if (getLineAttr(r25) == 0) {
                break;
            }
            r29 = r25;
            if (r25 == field_0x34) {
                break;
            }
        }
    }

    int r27 = 0;
    OS_REPORT("\n:::dump of console[%x]--------------------------------\n", this);

    do {
        u8* r28 = getLinePtr(r29);
        u8 r24 = r28[-1];
        if (r24 == 0) {
            break;
        }
        if (field_0x69) {
            OSReport("[%03d] %s\n", r27, r28);
        } else {
            OSReport("%s\n", r28);
        }
        r29 = nextIndex(r29);
        r27++;
    } while (r29 != field_0x34);

    OS_REPORT(":::dump of console[%x] END----------------------------\n", this);
}

/* 802E80A8-802E8184 2E29E8 00DC+00 0/0 3/3 0/0 .text            scroll__10JUTConsoleFi */
void JUTConsole::scroll(int scrollAmnt) {
    if (scrollAmnt < 0) {
        int diff = diffIndex(field_0x34, field_0x30);
        if (scrollAmnt < -diff) {
            scrollAmnt = -diff;
        }
    } else {
        if (scrollAmnt > 0) {
            int diff = diffIndex(field_0x34, field_0x38);
            if (diff + 1 <= mHeight) {
                scrollAmnt = 0;
            } else {
                diff = diffIndex(field_0x30, field_0x38);
                if (scrollAmnt > (int)(diff - mHeight) + 1) {
                    scrollAmnt = (int)(diff - mHeight) + 1;
                }
            }
        }
    }

    field_0x30 += scrollAmnt;
    if (field_0x30 < 0) {
        field_0x30 += mMaxLines;
    }

    if (field_0x30 >= (u32)mMaxLines) {
        field_0x30 -= mMaxLines;
    }
}

/* 802E8184-802E81A8 2E2AC4 0024+00 0/0 2/2 0/0 .text            getUsedLine__10JUTConsoleCFv */
int JUTConsole::getUsedLine() const {
    return diffIndex(field_0x34, field_0x38);
}

/* 802E81A8-802E81CC 2E2AE8 0024+00 0/0 3/3 0/0 .text            getLineOffset__10JUTConsoleCFv */
int JUTConsole::getLineOffset() const {
    return diffIndex(field_0x34, field_0x30);
}

/* 802E81CC-802E81F4 2E2B0C 0028+00 1/1 0/0 0/0 .text            __ct__17JUTConsoleManagerFv */
JUTConsoleManager::JUTConsoleManager() {
    mActiveConsole = NULL;
    mDirectConsole = NULL;
}

/* 802E81F4-802E8240 2E2B34 004C+00 0/0 1/1 0/0 .text createManager__17JUTConsoleManagerFP7JKRHeap
 */
JUTConsoleManager* JUTConsoleManager::createManager(JKRHeap* pHeap) {
    JUT_ASSERT(0x39c, sManager == 0);

    if (pHeap == NULL) {
        pHeap = JKRGetCurrentHeap();
    }

    JUTConsoleManager* manager = new (pHeap, 0) JUTConsoleManager();
    sManager = manager;
    return manager;
}

/* 802E8240-802E82B0 2E2B80 0070+00 3/3 0/0 0/0 .text
 * appendConsole__17JUTConsoleManagerFP10JUTConsole             */
void JUTConsoleManager::appendConsole(JUTConsole* console) {
    JUT_ASSERT(961, sManager != 0 && console != 0);

    JUT_ASSERT(964, soLink_.Find( console ) == soLink_.end());
    soLink_.Push_back(console);

    if (mActiveConsole == NULL) {
        mActiveConsole = console;
    }
}

/* 802E82B0-802E8384 2E2BF0 00D4+00 2/2 0/0 0/0 .text
 * removeConsole__17JUTConsoleManagerFP10JUTConsole             */
void JUTConsoleManager::removeConsole(JUTConsole* console) {
    JUT_ASSERT(982, sManager != 0 && console != 0);
    JUT_ASSERT(985, soLink_.Find( console ) != soLink_.end());

    if (mActiveConsole == console) {
        if (soLink_.size() <= 1) {
            mActiveConsole = NULL;
        } else {
            mActiveConsole = console != &soLink_.back() ? soLink_.Element_toValue(console->mListNode.getNext()) : &soLink_.front();
        }
    }

    if (JUTGetWarningConsole() == console)
        JUTSetWarningConsole(NULL);
    if (JUTGetReportConsole() == console)
        JUTSetReportConsole(NULL);

    soLink_.Remove(console);
}

/* 802E8384-802E8450 2E2CC4 00CC+00 0/0 1/1 0/0 .text            draw__17JUTConsoleManagerCFv */
void JUTConsoleManager::draw() const {
    ConsoleList::const_iterator iter = soLink_.begin();
    ConsoleList::const_iterator end = soLink_.end();

    for (; iter != end; ++iter) {
        const JUTConsole* const console = &(*iter);
        if (console != mActiveConsole)
            console->doDraw(JUTConsole::CONSOLE_TYPE_1);
    }

    if (mActiveConsole != NULL)
        mActiveConsole->doDraw(JUTConsole::CONSOLE_TYPE_0);
}

/* 802E8450-802E84C4 2E2D90 0074+00 0/0 5/5 0/0 .text            drawDirect__17JUTConsoleManagerCFb
 */
void JUTConsoleManager::drawDirect(bool waitRetrace) const {
    if (mDirectConsole != NULL) {
        if (waitRetrace) {
            s32 interrupt_status = OSEnableInterrupts();
            u32 retrace_count = VIGetRetraceCount();
            u32 new_count;
            do {
                new_count = VIGetRetraceCount();
            } while (retrace_count == new_count);
            OSRestoreInterrupts(interrupt_status);
        }
        mDirectConsole->doDraw(JUTConsole::CONSOLE_TYPE_2);
    }
}

/* 802E84C4-802E8520 2E2E04 005C+00 0/0 2/2 0/0 .text
 * setDirectConsole__17JUTConsoleManagerFP10JUTConsole          */
void JUTConsoleManager::setDirectConsole(JUTConsole* console) {
    if (mDirectConsole != NULL) {
        appendConsole(mDirectConsole);
    }

    if (console != NULL) {
        removeConsole(console);
    }
    mDirectConsole = console;
}

/* 80451574-80451578 000A74 0004+00 2/1 0/0 0/0 .sbss            sReportConsole */
static JUTConsole* sReportConsole;

/* 802E8520-802E8528 2E2E60 0008+00 1/1 1/1 0/0 .text            JUTSetReportConsole */
extern "C" void JUTSetReportConsole(JUTConsole* console) {
    sReportConsole = console;
}

/* 802E8528-802E8530 -00001 0008+00 0/0 0/0 0/0 .text            JUTGetReportConsole */
extern "C" JUTConsole* JUTGetReportConsole() {
    return sReportConsole;
}

/* 80451578-80451580 000A78 0004+04 2/1 0/0 0/0 .sbss            sWarningConsole */
static JUTConsole* sWarningConsole;

/* 802E8530-802E8538 2E2E70 0008+00 1/1 1/1 0/0 .text            JUTSetWarningConsole */
extern "C" void JUTSetWarningConsole(JUTConsole* console) {
    sWarningConsole = console;
}

/* 802E8538-802E8540 -00001 0008+00 0/0 0/0 0/0 .text            JUTGetWarningConsole */
extern "C" JUTConsole* JUTGetWarningConsole() {
    return sWarningConsole;
}

/* 802E8540-802E85C8 2E2E80 0088+00 2/2 0/0 0/0 .text            JUTReportConsole_f_va */
extern "C" void JUTReportConsole_f_va(const char* fmt, va_list args) {
    char buf[256];

    if (JUTGetReportConsole() == NULL) {
        vsnprintf(buf, sizeof(buf), fmt, args);
    } else if (JUTGetReportConsole()->getOutput() &
               (JUTConsole::OUTPUT_CONSOLE | JUTConsole::OUTPUT_OSREPORT))
    {
        vsnprintf(buf, sizeof(buf), fmt, args);
        JUTGetReportConsole()->print(buf);
    }
}

/* 802E85C8-802E8648 2E2F08 0080+00 2/2 8/8 0/0 .text            JUTReportConsole_f */
extern "C" void JUTReportConsole_f(const char* fmt, ...) {
    va_list args;
    va_start(args, fmt);
    JUTReportConsole_f_va(fmt, args);
    va_end(args);
}

static void dummyString() {
    DEAD_STRING("\n:::dump of console[%x]----------------\n");
    DEAD_STRING(":::dump of console[%x] END------------\n");
}

/* 802E8648-802E867C 2E2F88 0034+00 0/0 6/6 0/0 .text            JUTReportConsole */
void JUTReportConsole(const char* message) {
    JUTReportConsole_f("%s", message);
}

void JUTWarningConsole_f_va(const char* fmt, va_list args) {
    char buf[256];

    if (JUTGetWarningConsole() == NULL) {
        vsnprintf(buf, sizeof(buf), fmt, args);
        OSReport("%s", buf);
    } else if (JUTGetWarningConsole()->getOutput() &
               (JUTConsole::OUTPUT_CONSOLE | JUTConsole::OUTPUT_OSREPORT))
    {
        vsnprintf(buf, sizeof(buf), fmt, args);
        JUTGetWarningConsole()->print(buf);
    }
}

/* 802E867C-802E86FC 2E2FBC 0080+00 0/0 9/9 0/0 .text            JUTWarningConsole_f */
void JUTWarningConsole_f(const char* fmt, ...) {
    va_list args;
    va_start(args, fmt);
    JUTReportConsole_f_va(fmt, args);
    va_end(args);
}

/* 802E86FC-802E8730 2E303C 0034+00 0/0 2/2 0/0 .text            JUTWarningConsole */
void JUTWarningConsole(const char* message) {
    JUTReportConsole_f("%s", message);
}
