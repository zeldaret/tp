lbl_80C9F3B8:
/* 80C9F3B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9F3BC  7C 08 02 A6 */	mflr r0
/* 80C9F3C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9F3C4  48 00 01 E5 */	bl createHeap__14daObjNagaisu_cFv
/* 80C9F3C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9F3CC  7C 08 03 A6 */	mtlr r0
/* 80C9F3D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9F3D4  4E 80 00 20 */	blr 
