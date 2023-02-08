lbl_80BE8E14:
/* 80BE8E14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE8E18  7C 08 02 A6 */	mflr r0
/* 80BE8E1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE8E20  4B FF FF 81 */	bl Delete__13daFireWood2_cFv
/* 80BE8E24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE8E28  7C 08 03 A6 */	mtlr r0
/* 80BE8E2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE8E30  4E 80 00 20 */	blr 
