#ifndef __JKRMEMARCHIVE_H__
#define __JKRMEMARCHIVE_H__

#include "JSystem/JKernel/JKRArchive/JKRArchive.h"
#include "dolphin/types.h"

enum JKRMemBreakFlag {
    JKRMEMBREAK_FLAG_UNKNOWN0 = 0,
    JKRMEMBREAK_FLAG_UNKNOWN1 = 1,
};

class JKRMemArchive : public JKRArchive {
public:
    JKRMemArchive(long, JKRArchive::EMountDirection);
    JKRMemArchive(void*, u32, JKRMemBreakFlag);
    virtual ~JKRMemArchive();

    bool open(long, JKRArchive::EMountDirection);
    bool open(void*, u32, JKRMemBreakFlag);

    /* vt[09] */ void removeResourceAll(void); /* override */
    /* vt[10] */ bool removeResource(void*);   /* override */

    /* vt[15] */ u32 getExpandedResSize(const void*);                  /* override */
    /* vt[16] */ void* fetchResource(SDIFileEntry*, u32*);             /* override */
    /* vt[17] */ void* fetchResource(void*, u32, SDIFileEntry*, u32*); /* override */

public:
    static u32 fetchResource_subroutine(u8*, u32, u8*, u32, JKRCompression);

private:
    /* 0x00 */  // vtable
    /* 0x04 */  // JKRArchive
    /* 0x5C */ JKRCompression mCompression;
    /* 0x60 */ EMountDirection mMountDirection;
    /* 0x64 */ SArcHeader* mArcHeader;
    /* 0x68 */ u8* mArchiveData;
    /* 0x6C */ bool mIsOpen;
    /* 0x6D */ u8 field_0x6d[3];
};

#endif
