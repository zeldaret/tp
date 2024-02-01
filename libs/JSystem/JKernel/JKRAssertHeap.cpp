#include "JSystem/JKernel/JKRAssertHeap.h"

/* 802D12C4-802D1300 2CBC04 003C+00 1/1 0/0 0/0 .text __ct__13JKRAssertHeapFPvUlP7JKRHeapb */
JKRAssertHeap::JKRAssertHeap(void* data, unsigned long size, JKRHeap* parent, bool errorFlag)
    : JKRHeap(data, size, parent, errorFlag) {}

/* 802D1300-802D1368 2CBC40 0068+00 1/0 0/0 0/0 .text            __dt__13JKRAssertHeapFv */
JKRAssertHeap::~JKRAssertHeap() {
    this->dispose();
}

/* 802D1368-802D13D8 2CBCA8 0070+00 0/0 1/1 0/0 .text            create__13JKRAssertHeapFP7JKRHeap
 */
JKRAssertHeap* JKRAssertHeap::create(JKRHeap* parent) {
    if (!parent) {
        parent = JKRHeap::getRootHeap();
    }

    // 0x70 is sizeof(JKRAssertHeap) aligned to 16 bytes
    u32 size = 0x70;
    int alignment = 16;

    void* ptr = JKRHeap::alloc(size, alignment, parent);
    if (!ptr)
        return NULL;

    return new (ptr) JKRAssertHeap(NULL, 0, parent, false);
}

/* 802D13D8-802D1408 2CBD18 0030+00 1/0 0/0 0/0 .text            do_destroy__13JKRAssertHeapFv */
void JKRAssertHeap::do_destroy() {
    this->~JKRAssertHeap();
}

/* 802D1408-802D1414 2CBD48 000C+00 1/0 0/0 0/0 .text            getHeapType__13JKRAssertHeapFv */
u32 JKRAssertHeap::getHeapType() {
    return 'ASTH';
}

/* 802D1414-802D141C 2CBD54 0008+00 1/0 0/0 0/0 .text            check__13JKRAssertHeapFv */
bool JKRAssertHeap::check() {
    return true;
}

/* 802D141C-802D1424 2CBD5C 0008+00 1/0 0/0 0/0 .text            dump__13JKRAssertHeapFv */
bool JKRAssertHeap::dump() {
    return true;
}

/* 802D1424-802D142C 2CBD64 0008+00 1/0 0/0 0/0 .text            dump_sort__13JKRAssertHeapFv */
bool JKRAssertHeap::dump_sort() {
    return true;
}

/* 802D142C-802D1434 2CBD6C 0008+00 1/0 0/0 0/0 .text do_changeGroupID__13JKRAssertHeapFUc */

s32 JKRAssertHeap::do_changeGroupID(u8) {
    return 0;
}

/* 802D1434-802D143C 2CBD74 0008+00 1/0 0/0 0/0 .text do_getCurrentGroupId__13JKRAssertHeapFv */
u8 JKRAssertHeap::do_getCurrentGroupId() {
    return 0;
}

/* 802D143C-802D1444 2CBD7C 0008+00 1/0 0/0 0/0 .text            do_alloc__13JKRAssertHeapFUli */
void* JKRAssertHeap::do_alloc(u32, int) {
    return NULL;
}

/* 802D1444-802D1448 2CBD84 0004+00 1/0 0/0 0/0 .text            do_free__13JKRAssertHeapFPv */
void JKRAssertHeap::do_free(void* param_0) {}

/* 802D1448-802D144C 2CBD88 0004+00 1/0 0/0 0/0 .text            do_freeAll__13JKRAssertHeapFv */
void JKRAssertHeap::do_freeAll() {}

/* 802D144C-802D1450 2CBD8C 0004+00 1/0 0/0 0/0 .text            do_freeTail__13JKRAssertHeapFv */
void JKRAssertHeap::do_freeTail() {}

/* 802D1450-802D1454 2CBD90 0004+00 1/0 0/0 0/0 .text            do_fillFreeArea__13JKRAssertHeapFv
 */
void JKRAssertHeap::do_fillFreeArea() {}

/* 802D1454-802D145C 2CBD94 0008+00 1/0 0/0 0/0 .text            do_resize__13JKRAssertHeapFPvUl */
s32 JKRAssertHeap::do_resize(void*, u32) {
    return 0;
}

/* 802D145C-802D1464 2CBD9C 0008+00 1/0 0/0 0/0 .text            do_getSize__13JKRAssertHeapFPv */
s32 JKRAssertHeap::do_getSize(void*) {
    return 0;
}

/* 802D1464-802D146C 2CBDA4 0008+00 1/0 0/0 0/0 .text            do_getFreeSize__13JKRAssertHeapFv
 */
s32 JKRAssertHeap::do_getFreeSize() {
    return 0;
}

/* 802D146C-802D1474 2CBDAC 0008+00 1/0 0/0 0/0 .text do_getMaxFreeBlock__13JKRAssertHeapFv */
void* JKRAssertHeap::do_getMaxFreeBlock() {
    return NULL;
}

/* 802D1474-802D147C 2CBDB4 0008+00 1/0 0/0 0/0 .text do_getTotalFreeSize__13JKRAssertHeapFv */
s32 JKRAssertHeap::do_getTotalFreeSize() {
    return 0;
}
