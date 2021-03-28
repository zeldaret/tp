lbl_8000F1F4:
/* 8000F1F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000F1F8  7C 08 02 A6 */	mflr r0
/* 8000F1FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000F200  80 6D 86 C0 */	lwz r3, mDoExt_SaveCurrentHeap(r13)
/* 8000F204  48 2B F2 35 */	bl becomeCurrentHeap__7JKRHeapFv
/* 8000F208  38 00 00 00 */	li r0, 0
/* 8000F20C  90 0D 86 C0 */	stw r0, mDoExt_SaveCurrentHeap(r13)
/* 8000F210  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000F214  7C 08 03 A6 */	mtlr r0
/* 8000F218  38 21 00 10 */	addi r1, r1, 0x10
/* 8000F21C  4E 80 00 20 */	blr 
