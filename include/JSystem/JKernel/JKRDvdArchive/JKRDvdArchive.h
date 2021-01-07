#ifndef __JKRDVDARCHIVE_H__
#define __JKRDVDARCHIVE_H__

#include "JSystem/JKernel/JKRArchive/JKRArchive.h"
#include "dolphin/types.h"

class JKRDvdArchive : public JKRArchive {
public:
    JKRDvdArchive(long, JKRArchive::EMountDirection);
    virtual ~JKRDvdArchive();

    void open(long);

    /* vt[15] */ virtual u32 getExpandedResSize(const void*) const;            /* override */
    /* vt[16] */ virtual void* fetchResource(SDIFileEntry*, u32*);             /* override */
    /* vt[17] */ virtual void* fetchResource(void*, u32, SDIFileEntry*, u32*); /* override */

public:
    static void fetchResource_subroutine(long, u32, u32, u8*, u32, int, int);
    static void fetchResource_subroutine(long, u32, u32, JKRHeap*, int, int, u8**);

private:
    /* 0x00 */  // vtable
    /* 0x04 */  // JKRArchive
    u8 unk[16];
};

#endif
