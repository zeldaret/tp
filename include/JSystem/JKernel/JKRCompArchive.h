#ifndef JKRCOMPARCHIVE_H
#define JKRCOMPARCHIVE_H

#include "dolphin/types.h"
#include "JSystem/JKernel/JKRArchive.h"

class JKRCompArchive : public JKRArchive {
public:
    JKRCompArchive(long, JKRArchive::EMountDirection);
    virtual ~JKRCompArchive();

    void open(long);

    /* vt[09] */ void removeResourceAll(void); /* override */
    /* vt[10] */ bool removeResource(void*);   /* override */

    /* vt[15] */ u32 getExpandedResSize(const void*);                  /* override */
    /* vt[16] */ void* fetchResource(SDIFileEntry*, u32*);             /* override */
    /* vt[17] */ void* fetchResource(void*, u32, SDIFileEntry*, u32*); /* override */

public:
private:
    /* 0x00 */  // vtable
    /* 0x04 */  // JKRArchive
    u8 unk[36];
};

#endif /* JKRCOMPARCHIVE_H */
