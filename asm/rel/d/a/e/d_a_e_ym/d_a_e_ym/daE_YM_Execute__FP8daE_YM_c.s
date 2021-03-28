lbl_80813A10:
/* 80813A10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80813A14  7C 08 02 A6 */	mflr r0
/* 80813A18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80813A1C  4B FF FE 91 */	bl execute__8daE_YM_cFv
/* 80813A20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80813A24  7C 08 03 A6 */	mtlr r0
/* 80813A28  38 21 00 10 */	addi r1, r1, 0x10
/* 80813A2C  4E 80 00 20 */	blr 
