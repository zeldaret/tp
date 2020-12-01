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

/*
Super close.

This is what we expected: (from Ghidra)
  if (this != (JKRDisposer *)&DAT_fffffff8) {
      JSUPtrLink::~JSUPtrLink(&this->ptr_link,0);
  }

But the compiler generate code like this instead: (no if and -1 instead of 0)
  JSUPtrLink::~JSUPtrLink(&this->ptr_link,-1);
  
Maybe we are using the wrong compiler?
*/
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
