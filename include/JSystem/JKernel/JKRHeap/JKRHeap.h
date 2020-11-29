
#include "dolphin/types.h"
#include "JSystem/JKernel/JKRDisposer/JKRDisposer.h"


struct _VTABLE_JKRHeap {
    void (*func0)(JKRHeap*);
    void (*_ct)(JKRHeap*);
    void (*_dt)(JKRHeap*);
    void (*callAllDisposer)(JKRHeap*);
    void (*func4)(JKRHeap*);
    void (*func5)(JKRHeap*);
    void (*dump_sort)(JKRHeap*);
    void (*func7)(JKRHeap*);
    void (*do_destroy)(JKRHeap*);
    void (*do_alloc)(JKRHeap*,u32 size, int alignment);
    void (*do_free)(JKRHeap*,void*ptr);
    void (*do_freeAll)(JKRHeap*);
    void (*do_freeTail)(JKRHeap*);
    void (*func13)(JKRHeap*);
    void (*func14)(JKRHeap*);
    void (*func15)(JKRHeap*);
    void (*func16)(JKRHeap*);
    void (*func17)(JKRHeap*);
    void (*func18)(JKRHeap*);
    void (*do_changeGroup)(JKRHeap*);
    void (*do_getCurrent)(JKRHeap*);
    void (*state_register)(JKRHeap*);
    void (*state_compare)(JKRHeap*);
    void (*state_dump)(JKRHeap*);
};

typedef void (*JKRErrorHandler)(void*, unsigned long, int);
class JKRHeap {
  public:
    JKRHeap(void*, u32, JKRHeap*, bool);
    ~JKRHeap();

    static bool initArena(char**, u32*, int);
    JKRHeap* becomeSystemHeap();
    JKRHeap* becomeCurrentHeap();
    void destroy();

    static void* alloc(u32 size, int alignment, JKRHeap* heap);
    void* alloc(u32 size, int alignment);

    static void free(void* ptr, JKRHeap* heap);
    void free(void* ptr);

    void callAllDisposer();
    void freeAll();
    void freeTail();

    static s32 resize(void* ptr, u32 size, JKRHeap* heap);
    s32 resize(void* ptr, u32 size);

    static s32 getSize(void* ptr, JKRHeap* heap);
    s32 getSize(void* ptr);

    s32 getFreeSize();
    u32 getMaxFreeBlock();
    u32 getTotalFreeSize();
    u8 changeGroupID(u8 param_1);
    u32 getMaxAllocatableSize(int alignment);

    static JKRHeap* findFromRoot(void* ptr);
    JKRHeap* find(void* ptr) const;
    JKRHeap* findAllHeap(void* ptr) const;

    void dispose_subroutine(u32 begin, u32 end);
    void dispose(void* ptr, u32 size);
    void dispose(void* begin, void* end);
    void dispose();

    static void copyMemory(void* dst, void* src, u32 size);
    static void JKRDefaultMemoryErrorRoutine(JKRHeap* heap, u32 size, int alignment);

    bool setErrorFlag(bool param_1);
    static JKRErrorHandler setErrorHandler(JKRErrorHandler param_1);

    bool isSubHeap(JKRHeap* heap) const;

  public:
      union {
        JKRDisposer __base;
        _VTABLE_JKRHeap* __vt;
    };

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
    u8 field_0x6a[4];
};

void* operator new(u32 size);
void* operator new(u32 size, int alignment);
void* operator new(u32 size, JKRHeap* heap, int alignment);

void* operator new[](u32 size);
void* operator new[](u32 size, int alignment);
void* operator new[](u32 size, JKRHeap* heap, int alignment);

void operator delete(void* ptr);
void operator delete[](void* ptr);