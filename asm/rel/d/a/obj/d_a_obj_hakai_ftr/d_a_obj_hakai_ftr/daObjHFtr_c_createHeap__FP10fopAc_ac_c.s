lbl_80C17498:
/* 80C17498  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1749C  7C 08 02 A6 */	mflr r0
/* 80C174A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C174A4  48 00 03 D1 */	bl createHeap__11daObjHFtr_cFv
/* 80C174A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C174AC  7C 08 03 A6 */	mtlr r0
/* 80C174B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C174B4  4E 80 00 20 */	blr 
