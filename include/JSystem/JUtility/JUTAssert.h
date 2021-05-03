#ifndef JUTASSERT_H
#define JUTASSERT_H

#include "dolphin/types.h"

// TODO: make it a namespace
struct JUTAssertion {
    /* 802E495C */ static void create();
    /* 802E4960 */ static void flush_subroutine();
    /* 802E499C */ static void flushMessage();
    /* 802E4A54 */ static void flushMessage_dbPrint();
    /* 802E4C34 */ static void setVisible(bool);
    /* 802E4C3C */ static void setMessageCount(int);
};

#endif /* JUTASSERT_H */
