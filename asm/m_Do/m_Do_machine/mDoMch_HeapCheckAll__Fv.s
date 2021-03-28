lbl_8000B668:
/* 8000B668  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000B66C  7C 08 02 A6 */	mflr r0
/* 8000B670  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000B674  80 6D 8D F8 */	lwz r3, sRootHeap__7JKRHeap(r13)
/* 8000B678  4B FF FF 51 */	bl myHeapCheckRecursive__FP7JKRHeap
/* 8000B67C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000B680  7C 08 03 A6 */	mtlr r0
/* 8000B684  38 21 00 10 */	addi r1, r1, 0x10
/* 8000B688  4E 80 00 20 */	blr 
