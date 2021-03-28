lbl_80BDC7B0:
/* 80BDC7B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDC7B4  7C 08 02 A6 */	mflr r0
/* 80BDC7B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDC7BC  38 80 FF FF */	li r4, -1
/* 80BDC7C0  4B FF FF 9D */	bl __dt__14daObjDigholl_cFv
/* 80BDC7C4  38 60 00 01 */	li r3, 1
/* 80BDC7C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDC7CC  7C 08 03 A6 */	mtlr r0
/* 80BDC7D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDC7D4  4E 80 00 20 */	blr 
