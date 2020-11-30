#include "JSystem/JKernel/JKRDisposer/JKRDisposer.h"
#include "global.h"
#include "JSystem/JKernel/JKRHeap/JKRHeap.h"

// #include "JSystem/JKernel/asm/func_802D147C.s"
JKRDisposer::JKRDisposer() : __vt(lbl_803CC0F0), ptr_link(this) {
    this->heap     = JKRHeap::findFromRoot(this);
    if (this->heap != 0) {
        this->heap->disposable_list.append(&this->ptr_link);
    }
}

// Almost. Missing three instructions, something
// to do with the destruction of JSUPtrLink
#ifdef NONMATCHING
JKRDisposer::~JKRDisposer() {
  this->__vt = lbl_803CC0F0;
  if (this->heap != NULL) {
    this->heap->disposable_list.remove(&this->ptr_link);
  }
}
#else
asm JKRDisposer::~JKRDisposer() {
    nofralloc
#include "JSystem/JKernel/JKRDisposer/asm/func_802D14E4.s"
}
#endif
