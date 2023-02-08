lbl_80AA2D20:
/* 80AA2D20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA2D24  7C 08 02 A6 */	mflr r0
/* 80AA2D28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA2D2C  4B FF FF 71 */	bl createHeap__13daNpcPasser_cFv
/* 80AA2D30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA2D34  7C 08 03 A6 */	mtlr r0
/* 80AA2D38  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA2D3C  4E 80 00 20 */	blr 
