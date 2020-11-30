#ifndef __JKRDISPOSER_H__
#define __JKRDISPOSER_H__

#include "dolphin/types.h"
#include "JSystem/JSupport/JSUList/JSUList.h"
#include "JSystem/JKernel/JKRDisposer/JKRDisposer_vtable.h"

class JKRHeap;
class JKRDisposer {
  public:
    JKRDisposer();
    ~JKRDisposer();

  public:
    _VTABLE_JKRDisposer* __vt;
    JKRHeap* heap;
    JSUPtrLink ptr_link;
};

#endif
