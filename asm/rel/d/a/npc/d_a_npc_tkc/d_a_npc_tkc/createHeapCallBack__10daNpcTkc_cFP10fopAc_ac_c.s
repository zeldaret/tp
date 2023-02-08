lbl_80B0D2CC:
/* 80B0D2CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B0D2D0  7C 08 02 A6 */	mflr r0
/* 80B0D2D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B0D2D8  4B FF FA A5 */	bl CreateHeap__10daNpcTkc_cFv
/* 80B0D2DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B0D2E0  7C 08 03 A6 */	mtlr r0
/* 80B0D2E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B0D2E8  4E 80 00 20 */	blr 
