#include "JSystem/JKernel/JKRHeap/JKRHeap.h"
#include "global.h"

// Initializing the members seems to be weird because of
// the way we're using vtables.
#ifdef NONMATCHING
JKRHeap::JKRHeap(void *data,u32 size,JKRHeap *parent,bool error_flag) : 
    __base(), 
    __vt(lbl_803CBF70), 
    child_list(true), 
    heap_link(this), 
    disposable_list(true)
{
  OSInitMutex(this->mutex);
  this->size = size;
  this->begin = (u32)data;
  this->end = (u32)data + size;

  if (parent == NULL) {
    this->becomeSystemHeap();
    this->becomeCurrentHeap();
  } else {
    JSUPtrLink* ptr = (JSUPtrLink*)&this->child_list;
    if (ptr != NULL) {
      ptr = &this->heap_link;
    }

    parent->child_list.append(ptr);
    if (lbl_80451370 == lbl_80451378) {
      this->becomeSystemHeap();
    }
    if (lbl_80451374 == lbl_80451378) {
      this->becomeCurrentHeap();
    }
  }

  this->error_flag = error_flag;
  if ((this->error_flag == true) && (lbl_8045137C == NULL)) {
    lbl_8045137C = JKRHeap::JKRDefaultMemoryErrorRoutine;
  }

  this->field_0x3c = lbl_804508B0[0];
  this->field_0x3d = lbl_80451380[0];
  this->field_0x69 = 0;
}
#else
asm JKRHeap::JKRHeap(void* data, u32 size, JKRHeap* parent, bool error_flag) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE138.s"
}
#endif

asm JKRHeap::~JKRHeap() {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE264.s"
}

// #include "JSystem/JKernel/JKRHeap/asm/func_802CE378.s"
bool JKRHeap::initArena(char** memory, u32* size, int param_3) {
    u32 ram_start;
    u32 ram_end;
    u32 ram;

    u32 low = OSGetArenaLo();
    u32 high = OSGetArenaHi();
    if (low == high) return false;

    ram = OSInitAlloc(low, high, param_3);
    ram_start = (ram + 0x1fU & 0xffffffe0);
    ram_end = (high & 0xffffffe0);
    lbl_80451384 = OS_GLOBAL_ADDR(void, 0x80000000);
    lbl_80451388 = (void*)ram_start;
    lbl_8045138C = (void*)ram_start;
    lbl_80451390 = (void*)ram_end;
    lbl_80451394 = OS_GLOBAL(u32, 0x80000028);
    OSSetArenaLo(ram_end);
    OSSetArenaHi(ram_end);
    *memory = (char*)ram_start;
    *size = ram_end - ram_start;
    return true;
}

// #include "JSystem/JKernel/JKRHeap/asm/func_802CE428.s"
JKRHeap * JKRHeap::becomeSystemHeap() {
    JKRHeap* prev = lbl_80451370;
    lbl_80451370 = this;
    return prev;
}

// #include "JSystem/JKernel/JKRHeap/asm/func_802CE438.s"
JKRHeap * JKRHeap::becomeCurrentHeap() {
    JKRHeap* prev = lbl_80451374;
    lbl_80451374 = this;
    return prev;
}

// All virtual calls seems to only use r12
// but emulating the call with use another 
// register (r4 in this case).  
#ifdef NONMATCHING
void JKRHeap::destroy() {
    (*this->__vt->do_destroy)(this);
}
#else
asm void JKRHeap::destroy() {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE448.s"
}
#endif

// #include "JSystem/JKernel/JKRHeap/asm/func_802CE474.s"
void* JKRHeap::alloc(u32 size, int alignment, JKRHeap* heap) {
    if (heap != NULL) {
        return heap->alloc(size, alignment);
    }

    if (lbl_80451374 != NULL) {
        return lbl_80451374->alloc(size, alignment);
    }

    return NULL;
}

// Same problem as with all other virtual calls.
#ifdef NONMATCHING
void* JKRHeap::alloc(u32 size, int alignment) {
    (*this->__vt->do_alloc)(this, size, alignment);
}
#else
asm void* JKRHeap::alloc(u32 size, int alignment) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE4D4.s"
}
#endif

// #include "JSystem/JKernel/JKRHeap/asm/func_802CE500.s"
void JKRHeap::free(void* ptr, JKRHeap* heap) {
    if(!heap) {
        heap = findFromRoot(ptr);
        if(!heap) return;
    }
    
    heap->free(ptr);
}

// Same problem as with all other virtual calls.
#ifdef NONMATCHING
void JKRHeap::free(void* ptr) {
    (*this->__vt->do_free)(this, ptr);
}
#else
asm void JKRHeap::free(void* ptr) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE548.s"
}
#endif

asm void JKRHeap::callAllDisposer() {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE574.s"
}

// Same problem as with all other virtual calls.
#ifdef NONMATCHING
void JKRHeap::freeAll() {
    (*this->__vt->do_freeAll)(this);
}
#else
asm void JKRHeap::freeAll() {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE5CC.s"
}
#endif

// Same problem as with all other virtual calls.
#ifdef NONMATCHING
void JKRHeap::freeAll() {
    (*this->__vt->do_freeTail)(this);
}
#else
asm void JKRHeap::freeTail() {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE5F8.s"
}
#endif

// #include "JSystem/JKernel/JKRHeap/asm/func_802CE624.s"
s32 JKRHeap::resize(void* ptr, u32 size, JKRHeap* heap) {
    if (!heap) {
        heap = findFromRoot(ptr);
        if (!heap) return -1;
    }

    return heap->resize(ptr, size);
}

asm s32 JKRHeap::resize(void* ptr, u32 size) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE684.s"
}

asm s32 JKRHeap::getSize(void* ptr, JKRHeap* heap) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE6B0.s"
}

asm s32 JKRHeap::getSize(void* ptr) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE700.s"
}

asm s32 JKRHeap::getFreeSize() {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE72C.s"
}

asm u32 JKRHeap::getMaxFreeBlock() {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE758.s"
}

asm u32 JKRHeap::getTotalFreeSize() {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE784.s"
}

asm u8 JKRHeap::changeGroupID(u8 param_1) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE7B0.s"
}

asm u32 JKRHeap::getMaxAllocatableSize(int alignment) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE7DC.s"
}

asm JKRHeap* JKRHeap::findFromRoot(void* ptr) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE83C.s"
}

asm JKRHeap* JKRHeap::find(void* ptr) const {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE894.s"
}

asm JKRHeap* JKRHeap::findAllHeap(void* ptr) const {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE93C.s"
}

asm void JKRHeap::dispose_subroutine(u32 begin, u32 end) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE9E4.s"
}

asm void JKRHeap::dispose(void* ptr, u32 size) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CEA78.s"
}

asm void JKRHeap::dispose(void* begin, void* end) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CEAA0.s"
}

asm void JKRHeap::dispose() {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CEAC0.s"
}

asm void JKRHeap::copyMemory(void* dst, void* src, u32 size) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CEB18.s"
}

asm void JKRHeap::JKRDefaultMemoryErrorRoutine(JKRHeap* heap, u32 size, int alignment) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CEB40.s"
}

asm bool JKRHeap::setErrorFlag(bool param_1) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CEB78.s"
}

asm JKRErrorHandler JKRHeap::setErrorHandler(JKRErrorHandler param_1) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CEB88.s"
}

asm bool JKRHeap::isSubHeap(JKRHeap* heap) const {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CEBA8.s"
}

asm void* operator new(u32 size) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CEC4C.s"
}

asm void* operator new(u32 size, int alignment) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CEC74.s"
}

asm void* operator new(u32 size, JKRHeap* heap, int alignment) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CEC98.s"
}

asm void* operator new[](u32 size) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CECC4.s"
}

asm void* operator new[](u32 size, int alignment) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CECEC.s"
}

asm void* operator new[](u32 size, JKRHeap* heap, int alignment) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CED10.s"
}

asm void operator delete(void* ptr) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CED3C.s"
}

asm void operator delete[](void* ptr) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CED60.s"
}
