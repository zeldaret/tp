lbl_80BE9A20:
/* 80BE9A20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE9A24  7C 08 02 A6 */	mflr r0
/* 80BE9A28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE9A2C  4B FF F8 05 */	bl create__14daObjFPillar_cFv
/* 80BE9A30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE9A34  7C 08 03 A6 */	mtlr r0
/* 80BE9A38  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE9A3C  4E 80 00 20 */	blr 
