lbl_80C96E20:
/* 80C96E20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C96E24  7C 08 02 A6 */	mflr r0
/* 80C96E28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C96E2C  48 00 00 15 */	bl createHeap__18daObjMirrorChain_cFv
/* 80C96E30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C96E34  7C 08 03 A6 */	mtlr r0
/* 80C96E38  38 21 00 10 */	addi r1, r1, 0x10
/* 80C96E3C  4E 80 00 20 */	blr 
