#include "JSystem/JKernel/JKRDisposer/JKRDisposer.h"
#include "global.h"
#include "JSystem/JKernel/JKRHeap/JKRHeap.h"

// #include "JSystem/JKernel/asm/func_802D147C.s"
JKRDisposer::JKRDisposer() : ptr_link(this) {
    this->heap = JKRHeap::findFromRoot(this);
    if (this->heap != 0) {
        this->heap->disposable_list.append(&this->ptr_link);
    }
}

// Maybe we are using the wrong compiler?
#ifdef NONMATCHING
JKRDisposer::~JKRDisposer() {
  JKRHeap* heap = this->heap;
  if (heap != 0) {
    heap->disposable_list.remove(&this->ptr_link);
  }
}
#else
asm JKRDisposer::~JKRDisposer() {
    nofralloc
#include "JSystem/JKernel/JKRDisposer/asm/func_802D14E4.s"
}
#endif
