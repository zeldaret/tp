#ifndef __JKRARAMARCHIVE_H__
#define __JKRARAMARCHIVE_H__

#include "JSystem/JKernel/JKRArchive/JKRArchive.h"
#include "dolphin/types.h"

class JKRAramArchive : public JKRArchive {
public:
    JKRAramArchive(long, JKRArchive::EMountDirection);
    virtual ~JKRAramArchive();

    void open(long);
    void getAramAddress_Entry(SDIFileEntry*);
    void getAramAddress(char const*);

    /* vt[15] */ u32 getExpandedResSize(const void*);            /* override */
    /* vt[16] */ void* fetchResource(SDIFileEntry*, u32*);             /* override */
    /* vt[17] */ void* fetchResource(void*, u32, SDIFileEntry*, u32*); /* override */

public:
    static void fetchResource_subroutine(u32, u32, u8*, u32, int);
    static void fetchResource_subroutine(u32, u32, JKRHeap*, int, u8**);

private:
    /* 0x00 */  // vtable
    /* 0x04 */  // JKRArchive
    u8 unk[16];
};

#endif
