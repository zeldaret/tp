/**
 * GCN_Mem_Alloc.c
 * Description:
 */

#include "Runtime.PPCEABI.H/GCN_mem_alloc.h"
#include "dolphin/os/OS.h"

inline static void InitDefaultHeap(void) {
	void* arenaLo;
	void* arenaHi;

	OSReport("GCN_Mem_Alloc.c : InitDefaultHeap. No Heap Available\n");
	OSReport("Metrowerks CW runtime library initializing default heap\n");

	arenaLo = OSGetArenaLo();
	arenaHi = OSGetArenaHi();

	arenaLo = OSInitAlloc(arenaLo, arenaHi, 1);
	OSSetArenaLo(arenaLo);

	arenaLo = OSRoundUpPtr(arenaLo, 0x20);
	arenaHi = OSRoundDownPtr(arenaHi, 0x20);

	OSSetCurrentHeap(OSCreateHeap(arenaLo, arenaHi));
	OSSetArenaLo(arenaLo = arenaHi);
}

/* 80362914-803629CC 35D254 00B8+00 0/0 1/1 0/0 .text            __sys_free */
void __sys_free(void* p) {
    if (__OSCurrHeap == -1) {
        InitDefaultHeap();
    }

    OSFreeToHeap(__OSCurrHeap, p);
}
