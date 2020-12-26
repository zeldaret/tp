#ifndef __JKRCOMPARCHIVE_H__
#define __JKRCOMPARCHIVE_H__

#include "JSystem/JKernel/JKRArchive/JKRArchive.h"
#include "dolphin/types.h"

class JKRCompArchive : public JKRArchive {
public:
    JKRCompArchive(long, JKRArchive::EMountDirection);
    virtual ~JKRCompArchive();

    void open(long);

    /* vt[09] */ void removeResourceAll(void); /* override */
    /* vt[10] */ void removeResource(void*);   /* override */

    /* vt[15] */ void getExpandedResSize(void const*) const;                      /* override */
    /* vt[16] */ void fetchResource(JKRArchive::SDIFileEntry*, u32*);             /* override */
    /* vt[17] */ void fetchResource(void*, u32, JKRArchive::SDIFileEntry*, u32*); /* override */

public:
};

#endif
