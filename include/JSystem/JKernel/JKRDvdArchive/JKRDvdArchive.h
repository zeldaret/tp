#ifndef __JKRDVDARCHIVE_H__
#define __JKRDVDARCHIVE_H__

#include "dolphin/types.h"
#include "JSystem/JKernel/JKRArchive/JKRArchive.h"

class JKRDvdArchive : public JKRArchive {
  public:
    JKRDvdArchive(long, JKRArchive::EMountDirection);
    virtual ~JKRDvdArchive();

    void open(long);

    /* vt[15] */ virtual void getExpandedResSize(void const*) const;                      /* override */
    /* vt[16] */ virtual void fetchResource(JKRArchive::SDIFileEntry*, u32*);             /* override */
    /* vt[17] */ virtual void fetchResource(void*, u32, JKRArchive::SDIFileEntry*, u32*); /* override */

  public:
    static void fetchResource_subroutine(long, u32, u32, u8*, u32, int, int);
    static void fetchResource_subroutine(long, u32, u32, JKRHeap*, int, int, u8**);
};

#endif
