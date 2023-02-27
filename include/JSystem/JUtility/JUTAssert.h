#ifndef JUTASSERT_H
#define JUTASSERT_H

#include "dolphin/types.h"

#if DEBUG
#define JUT_ASSERT(FILE, LINE, COND)                                                               \
    if (!COND) {                                                                                   \
        JUTAssertion::showAssert(JUTAssertion::getSDevice(), FILE, LINE, #COND);                   \
        OSPanic(FILE, LINE, "Halt");                                                               \
    }

#else
#define JUT_ASSERT(...)
#endif

#if DEBUG
#define JUT_PANIC(FILE, LINE, TEXT)                                                                \
    JUTAssertion::showAssert(JUTAssertion::getSDevice(), FILE, LINE, TEXT);                        \
    OSPanic(FILE, LINE, "Halt");

#else
#define JUT_PANIC(...)
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
