lbl_8000F1CC:
/* 8000F1CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000F1D0  7C 08 02 A6 */	mflr r0
/* 8000F1D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000F1D8  48 2B F2 61 */	bl becomeCurrentHeap__7JKRHeapFv
/* 8000F1DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000F1E0  7C 08 03 A6 */	mtlr r0
/* 8000F1E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8000F1E8  4E 80 00 20 */	blr 
