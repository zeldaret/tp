#ifndef __JKRDISPOSER_H__
#define __JKRDISPOSER_H__

#include "dolphin/types.h"
#include "JSupport/JSUList.h"

class JKRHeap;
class JKRDisposer {
  public:
    JKRDisposer();
    ~JKRDisposer();

  public:
    void** __vt;
    JKRHeap* heap;
    JSUPtrLink ptr_link;
};

#endif
