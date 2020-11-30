#ifndef __JKRDISPOSER_H__
#define __JKRDISPOSER_H__

#include "dolphin/types.h"
#include "JSystem/JSupport/JSUList/JSUList.h"
#include "JSystem/JKernel/JKRDisposer/JKRDisposer_vtable.h"

class JKRHeap;
class JKRDisposer {
  public:
    JKRDisposer();
    virtual ~JKRDisposer();

  public:
    JKRHeap* heap;
    JSUPtrLink ptr_link;
};

#endif
