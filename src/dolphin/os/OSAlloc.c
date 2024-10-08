#include "dolphin/os/OSAlloc.h"

/* 8033B078-8033B124 3359B8 00AC+00 1/1 0/0 0/0 .text            DLInsert */
static OSHeapCell* DLInsert(OSHeapCell* list, OSHeapCell* child) {
    OSHeapCell* prev = NULL;
    OSHeapCell* next = list;

    for (; next != NULL; prev = next, next = next->next) {
        if ((char*)child <= (char*)next) {
            break;
        }
    }

    child->next = next;
    child->prev = prev;

    if (next != NULL) {
        next->prev = child;

        if ((char*)child + child->size == (char*)next) {
            child->size += next->size;
            next = next->next;
            child->next = next;
            if (next != NULL) {
                next->prev = child;
            }
        }
    }

    if (prev != NULL) {
        prev->next = child;

        if ((char*)prev + prev->size == (char*)child) {
            prev->size += child->size;
            prev->next = next;
            if (next != NULL) {
                next->prev = prev;
            }
        }

        return list;
    } else {
        return child;
    }
}

inline OSHeapCell* DLExtract(OSHeapCell* list, OSHeapCell* child) {
    if (child->next != NULL) {
        child->next->prev = child->prev;
    }

    if (child->prev == NULL) {
        return child->next;
    }

    child->prev->next = child->next;
    return list;
}

/* ############################################################################################## */
/* 80451640-80451644 000B40 0004+00 3/3 0/0 0/0 .sbss            HeapArray */
static OSHeapDescriptor* HeapArray;

/* 8033B124-8033B1A0 335A64 007C+00 0/0 1/1 0/0 .text            OSFreeToHeap */
void OSFreeToHeap(OSHeapHandle handle, void* ptr) {
    OSHeapDescriptor* hd = &HeapArray[handle];
    OSHeapCell* cell = (OSHeapCell*)((char*)ptr - sizeof(OSHeapCell));
    hd->usedList = DLExtract(hd->usedList, cell);
    hd->freeList = DLInsert(hd->freeList, cell);
}

/* ############################################################################################## */
/* 80450990-80450998 000410 0004+04 2/2 1/1 0/0 .sdata           __OSCurrHeap */
volatile s32 __OSCurrHeap = -1;

/* 8033B1A0-8033B1B0 335AE0 0010+00 0/0 1/1 0/0 .text            OSSetCurrentHeap */
s32 OSSetCurrentHeap(OSHeapHandle handle) {
    s32 old = __OSCurrHeap;
    __OSCurrHeap = handle;
    return old;
}

/* ############################################################################################## */
/* 80451644-80451648 000B44 0004+00 2/2 0/0 0/0 .sbss            NumHeaps */
static s32 NumHeaps;

/* 80451648-8045164C 000B48 0004+00 1/1 0/0 0/0 .sbss            ArenaStart */
static void* ArenaStart;

/* 8045164C-80451650 000B4C 0004+00 1/1 0/0 0/0 .sbss            ArenaEnd */
static void* ArenaEnd;

/* 8033B1B0-8033B220 335AF0 0070+00 0/0 2/2 0/0 .text            OSInitAlloc */
void* OSInitAlloc(void* lo, void* hi, s32 maxHeaps) {
    u32 totalSize = maxHeaps * sizeof(OSHeapDescriptor);
    int i;

    HeapArray = lo;
    NumHeaps = maxHeaps;

    for (i = 0; i < NumHeaps; i++) {
        OSHeapDescriptor* hd = &HeapArray[i];
        hd->size = -1;
        
        hd->freeList = hd->usedList = NULL;
    }

    __OSCurrHeap = -1;

    lo = (u8*)HeapArray + totalSize;
	lo = OSRoundUpPtr(lo, 0x20);

	ArenaStart = lo;
	ArenaEnd = OSRoundDownPtr(hi, 0x20);

    return ArenaStart;
}

/* 8033B220-8033B28C 335B60 006C+00 0/0 1/1 0/0 .text            OSCreateHeap */
OSHeapHandle OSCreateHeap(void* start, void* end) {
    int i;
	OSHeapCell* cell = OSRoundUpPtr(start, 0x20);
	end = OSRoundDownPtr(end, 0x20);

	for (i = 0; i < NumHeaps; i++) {
		OSHeapDescriptor* hd = &HeapArray[i];

		if (hd->size < 0) {
			hd->size = (u8*)end - (u8*)cell;
			cell->prev = NULL;
			cell->next = NULL;
			cell->size = hd->size;
			hd->freeList = cell;
			hd->usedList = NULL;
			return i;
		}
	}

	return -1;
}