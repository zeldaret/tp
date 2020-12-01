#ifndef __JKRHEAP_H__
#define __JKRHEAP_H__

#include "dolphin/types.h"
#include "JSystem/JKernel/JKRDisposer/JKRDisposer.h"

typedef void (*JKRErrorHandler)(void*, unsigned long, int);
class JKRHeap : JKRDisposer {
  public:
    JKRHeap(void*, u32, JKRHeap*, bool);
    virtual ~JKRHeap();

    static bool initArena(char**, u32*, int);
    JKRHeap* becomeSystemHeap();
    JKRHeap* becomeCurrentHeap();
    void destroy();

    static void* alloc(u32 size, int alignment, JKRHeap* heap);
    void* alloc(u32 size, int alignment);

    static void free(void* ptr, JKRHeap* heap);
    void free(void* ptr);

    void freeAll();
    void freeTail();

    static s32 resize(void* ptr, u32 size, JKRHeap* heap);
    s32 resize(void* ptr, u32 size);

    static s32 getSize(void* ptr, JKRHeap* heap);
    s32 getSize(void* ptr);

    s32 getFreeSize();
    s32 getMaxFreeBlock();
    s32 getTotalFreeSize();
    u8 changeGroupID(u8 param_1);
    s32 getMaxAllocatableSize(int alignment);

    static JKRHeap* findFromRoot(void* ptr);
    JKRHeap* find(void* ptr) const;
    JKRHeap* findAllHeap(void* ptr) const;

    void dispose_subroutine(u32 begin, u32 end);
    bool dispose(void* ptr, u32 size);
    void dispose(void* begin, void* end);
    void dispose();

    static void copyMemory(void* dst, void* src, u32 size);
    static void JKRDefaultMemoryErrorRoutine(JKRHeap* heap, u32 size, int alignment);

    bool setErrorFlag(bool param_1);
    static JKRErrorHandler setErrorHandler(JKRErrorHandler param_1);

    bool isSubHeap(JKRHeap* heap) const;

  protected:
    virtual void callAllDisposer();
    virtual void vt_func4() = 0;
    virtual void vt_func5() = 0;
    virtual void dump_sort();
    virtual void vt_func7()                         = 0;
    virtual void do_destroy()                       = 0;
    virtual void* do_alloc(u32 size, int alignment) = 0;
    virtual void do_free(void* ptr)                 = 0;
    virtual void do_freeAll()                       = 0;
    virtual void do_freeTail()                      = 0;
    virtual void vt_func13()                        = 0;
    virtual s32 do_resize(void* ptr, u32 size)      = 0;
    virtual s32 do_getSize(void* ptr)               = 0;
    virtual s32 do_getFreeSize()                    = 0;
    virtual s32 do_getMaxFreeBlock()                = 0;
    virtual s32 do_getTotalFreeSize()               = 0;
    virtual u8 do_changeGroupID(u8 param_1);
    virtual void do_getCurrent();
    virtual void state_register();
    virtual void state_compare();
    virtual void state_dump();

  public:
    u8 mutex[24];
    u32 begin;
    u32 end;
    u32 size;
    u8 field_0x3c;
    u8 field_0x3d;
    u8 field_0x3e;
    u8 field_0x3f;
    JSUPtrList child_list;
    JSUPtrLink heap_link;
    JSUPtrList disposable_list;
    bool error_flag;
    u8 field_0x69;
    u8 field_0x6a[2];
};

void* operator new(u32 size);
void* operator new(u32 size, int alignment);
void* operator new(u32 size, JKRHeap* heap, int alignment);

void* operator new[](u32 size);
void* operator new[](u32 size, int alignment);
void* operator new[](u32 size, JKRHeap* heap, int alignment);

void operator delete(void* ptr);
void operator delete[](void* ptr);

#endif