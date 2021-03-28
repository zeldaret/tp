lbl_80308A28:
/* 80308A28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80308A2C  7C 08 02 A6 */	mflr r0
/* 80308A30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80308A34  4B FE E9 FD */	bl isUsed__7J2DPaneFPC7ResTIMG
/* 80308A38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80308A3C  7C 08 03 A6 */	mtlr r0
/* 80308A40  38 21 00 10 */	addi r1, r1, 0x10
/* 80308A44  4E 80 00 20 */	blr 
