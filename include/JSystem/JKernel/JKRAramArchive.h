#ifndef JKRARAMARCHIVE_H
#define JKRARAMARCHIVE_H

#include "JSystem/JKernel/JKRArchive.h"
#include "dolphin/types.h"

class JKRAramBlock;
class JKRDvdFile;

class JKRAramArchive : public JKRArchive {
public:
    JKRAramArchive(long, JKRArchive::EMountDirection);
    virtual ~JKRAramArchive();

    bool open(long);
    u32 getAramAddress_Entry(SDIFileEntry*);
    u32 getAramAddress(char const*);

    /* vt[15] */ u32 getExpandedResSize(const void*) const;            /* override */
    /* vt[16] */ void* fetchResource(SDIFileEntry*, u32*);             /* override */
    /* vt[17] */ void* fetchResource(void*, u32, SDIFileEntry*, u32*); /* override */

public:
    static u32 fetchResource_subroutine(u32, u32, u8*, u32, int);
    static u32 fetchResource_subroutine(u32, u32, JKRHeap*, int, u8**);

private:
    /* 0x00 */  // vtable
    /* 0x04 */  // JKRArchive
    /* 0x5C */ JKRCompression mCompression;
    /* 0x60 */ EMountDirection mMountDirection;
    /* 0x64 */ JKRAramBlock* mBlock;
    /* 0x68 */ JKRDvdFile* mDvdFile;
};  // Size = 0x6C

#endif /* JKRARAMARCHIVE_H */
