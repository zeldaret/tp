lbl_80A6CCFC:
/* 80A6CCFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A6CD00  7C 08 02 A6 */	mflr r0
/* 80A6CD04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6CD08  88 03 0A 88 */	lbz r0, 0xa88(r3)
/* 80A6CD0C  28 00 00 01 */	cmplwi r0, 1
/* 80A6CD10  40 82 00 0C */	bne lbl_80A6CD1C
/* 80A6CD14  3C C0 80 A7 */	lis r6, lit_4218@ha /* 0x80A6FE44@ha */
/* 80A6CD18  C0 26 FE 44 */	lfs f1, lit_4218@l(r6)  /* 0x80A6FE44@l */
lbl_80A6CD1C:
/* 80A6CD1C  4B FF FF 11 */	bl setBowlAnm__11daNpc_Lud_cFiif
/* 80A6CD20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6CD24  7C 08 03 A6 */	mtlr r0
/* 80A6CD28  38 21 00 10 */	addi r1, r1, 0x10
/* 80A6CD2C  4E 80 00 20 */	blr 
