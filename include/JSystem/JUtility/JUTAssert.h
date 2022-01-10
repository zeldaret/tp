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

// TODO: make it a namespace
struct JUTAssertion {
    /* 802E495C */ static void create();
    /* 802E4960 */ static u32 flush_subroutine();
    /* 802E499C */ static void flushMessage();
    /* 802E4A54 */ static void flushMessage_dbPrint();
    /* 802E4C34 */ static void setVisible(bool);
    /* 802E4C3C */ static void setMessageCount(int);
};

extern bool sAssertVisible;

#endif /* JUTASSERT_H */
