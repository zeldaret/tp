#ifndef __JKRMEMARCHIVE_H__
#define __JKRMEMARCHIVE_H__

#include "JSystem/JKernel/JKRArchive/JKRArchive.h"
#include "dolphin/types.h"

enum JKRMemBreakFlag {
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
    /* vt[10] */ void removeResource(void*);   /* override */

    /* vt[15] */ void getExpandedResSize(void const*) const;                      /* override */
    /* vt[16] */ void fetchResource(JKRArchive::SDIFileEntry*, u32*);             /* override */
    /* vt[17] */ void fetchResource(void*, u32, JKRArchive::SDIFileEntry*, u32*); /* override */

public:
    static void fetchResource_subroutine(u8*, u32, u8*, u32, int);
};

#endif
