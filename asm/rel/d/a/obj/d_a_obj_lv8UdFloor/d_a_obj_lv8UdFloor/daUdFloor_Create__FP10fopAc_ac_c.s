lbl_80C8CB24:
/* 80C8CB24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8CB28  7C 08 02 A6 */	mflr r0
/* 80C8CB2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8CB30  4B FF F3 B5 */	bl create__11daUdFloor_cFv
/* 80C8CB34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8CB38  7C 08 03 A6 */	mtlr r0
/* 80C8CB3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8CB40  4E 80 00 20 */	blr 
