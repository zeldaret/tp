lbl_80028A10:
/* 80028A10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80028A14  7C 08 02 A6 */	mflr r0
/* 80028A18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80028A1C  48 01 42 A9 */	bl drawPath__11dDrawPath_cFv
/* 80028A20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80028A24  7C 08 03 A6 */	mtlr r0
/* 80028A28  38 21 00 10 */	addi r1, r1, 0x10
/* 80028A2C  4E 80 00 20 */	blr 
