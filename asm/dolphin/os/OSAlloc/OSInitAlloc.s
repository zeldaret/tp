lbl_8033B1B0:
/* 8033B1B0  1C E5 00 0C */	mulli r7, r5, 0xc
/* 8033B1B4  90 6D 90 C0 */	stw r3, HeapArray(r13)
/* 8033B1B8  90 AD 90 C4 */	stw r5, NumHeaps(r13)
/* 8033B1BC  38 C0 00 00 */	li r6, 0
/* 8033B1C0  38 66 00 00 */	addi r3, r6, 0
/* 8033B1C4  39 00 00 00 */	li r8, 0
/* 8033B1C8  38 A0 FF FF */	li r5, -1
/* 8033B1CC  48 00 00 20 */	b lbl_8033B1EC
lbl_8033B1D0:
/* 8033B1D0  80 0D 90 C0 */	lwz r0, HeapArray(r13)
/* 8033B1D4  39 08 00 01 */	addi r8, r8, 1
/* 8033B1D8  7D 20 32 14 */	add r9, r0, r6
/* 8033B1DC  90 A9 00 00 */	stw r5, 0(r9)
/* 8033B1E0  38 C6 00 0C */	addi r6, r6, 0xc
/* 8033B1E4  90 69 00 08 */	stw r3, 8(r9)
/* 8033B1E8  90 69 00 04 */	stw r3, 4(r9)
lbl_8033B1EC:
/* 8033B1EC  80 0D 90 C4 */	lwz r0, NumHeaps(r13)
/* 8033B1F0  7C 08 00 00 */	cmpw r8, r0
/* 8033B1F4  41 80 FF DC */	blt lbl_8033B1D0
/* 8033B1F8  80 6D 90 C0 */	lwz r3, HeapArray(r13)
/* 8033B1FC  54 80 00 34 */	rlwinm r0, r4, 0, 0, 0x1a
/* 8033B200  38 80 FF FF */	li r4, -1
/* 8033B204  90 0D 90 CC */	stw r0, ArenaEnd(r13)
/* 8033B208  7C 63 3A 14 */	add r3, r3, r7
/* 8033B20C  38 03 00 1F */	addi r0, r3, 0x1f
/* 8033B210  90 8D 84 10 */	stw r4, __OSCurrHeap(r13)
/* 8033B214  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 8033B218  90 6D 90 C8 */	stw r3, ArenaStart(r13)
/* 8033B21C  4E 80 00 20 */	blr 
