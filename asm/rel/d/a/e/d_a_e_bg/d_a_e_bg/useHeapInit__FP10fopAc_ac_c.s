lbl_80689C18:
/* 80689C18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80689C1C  7C 08 02 A6 */	mflr r0
/* 80689C20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80689C24  4B FF FD E9 */	bl CreateHeap__8daE_BG_cFv
/* 80689C28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80689C2C  7C 08 03 A6 */	mtlr r0
/* 80689C30  38 21 00 10 */	addi r1, r1, 0x10
/* 80689C34  4E 80 00 20 */	blr 
