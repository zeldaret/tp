#ifndef JUTASSERT_H
#define JUTASSERT_H

#include "dolphin/types.h"

#if DEBUG
#define JUT_ASSERT(FILE, LINE, COND)                                                               \
    if (!COND) {                                                                                   \
        JUTAssertion::showAssert(JUTAssertion::getSDevice(), FILE, LINE, #COND);                   \
        OSPanic(FILE, LINE, "Halt");                                                               \
    }

#define JUT_PANIC(FILE, LINE, TEXT)                                                                \
    JUTAssertion::showAssert(JUTAssertion::getSDevice(), FILE, LINE, TEXT);                        \
    OSPanic(FILE, LINE, "Halt");

#define JUT_WARN(FILE, LINE, ...)                                                                  \
    JUTAssertion::setWarningMessage_f(JUTAssertion::getSDevice(), FILE, LINE, __VA_ARGS__)

#define JUT_LOG(LINE, ...)                                                                         \
    JUTAssertion::setLogMessage_f(JUTAssertion::getSDevice(), __FILE__, LINE, __VA_ARGS__)

#else
#define JUT_ASSERT(...)
#define JUT_PANIC(...)
#define JUT_WARN(...)
#define JUT_LOG(...)
#endif

namespace JUTAssertion {
    /* 802E495C */ void create();
    /* 802E4960 */ u32 flush_subroutine();
    /* 802E499C */ void flushMessage();
    /* 802E4A54 */ void flushMessage_dbPrint();
    /* 802E4C34 */ void setVisible(bool);
    /* 802E4C3C */ void setMessageCount(int);
};

extern bool sAssertVisible;

#endif /* JUTASSERT_H */
