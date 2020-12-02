#include "JSystem/JKernel/JKRDisposer/JKRDisposer.h"
#include "global.h"
#include "JSystem/JKernel/JKRHeap/JKRHeap.h"

// #include "JSystem/JKernel/asm/func_802D147C.s"
JKRDisposer::JKRDisposer() : mLink(this) {
    this->mHeap = JKRHeap::findFromRoot(this);
    if (this->mHeap) {
      this->mHeap->appendDisposer(this);
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
  JKRHeap* heap = this->mHeap;
  if (heap) {
    heap->removeDisposer(this);
  }
}
#else
asm JKRDisposer::~JKRDisposer() {
    nofralloc
#include "JSystem/JKernel/JKRDisposer/asm/func_802D14E4.s"
}
#endif
