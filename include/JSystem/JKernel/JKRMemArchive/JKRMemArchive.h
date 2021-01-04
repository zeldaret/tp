#ifndef __JKRMEMARCHIVE_H__
#define __JKRMEMARCHIVE_H__

#include "JSystem/JKernel/JKRArchive/JKRArchive.h"
#include "dolphin/types.h"

enum JKRMemBreakFlag {
    JKRMEMBREAK_FLAG_UNKNOWN0 = 0,
    _JKRMemBreakFlag_PADDING_32BIT = 0xFFFFFFFF,
};

class JKRMemArchive : public JKRArchive {
public:
    JKRMemArchive(long, JKRArchive::EMountDirection);
    JKRMemArchive(void*, u32, JKRMemBreakFlag);
    virtual ~JKRMemArchive();

    void open(long, JKRArchive::EMountDirection);
    void open(void*, u32, JKRMemBreakFlag);

    /* vt[09] */ void removeResourceAll(void); /* override */
    /* vt[10] */ bool removeResource(void*);   /* override */

    /* vt[15] */ void getExpandedResSize(void const*) const;          /* override */
    /* vt[16] */ void* fetchResource(SDIFileEntry*, u32*);              /* override */
    /* vt[17] */ void* fetchResource(void*, u32, SDIFileEntry*, u32*); /* override */

public:
    static void fetchResource_subroutine(u8*, u32, u8*, u32, int);

private:
    /* 0x00 */  // vtable
    /* 0x04 */  // JKRArchive
    u8 unk[20];
};

#endif
