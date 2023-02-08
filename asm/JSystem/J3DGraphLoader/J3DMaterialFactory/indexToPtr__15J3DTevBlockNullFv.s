lbl_80332A14:
/* 80332A14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80332A18  7C 08 02 A6 */	mflr r0
/* 80332A1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80332A20  80 83 00 04 */	lwz r4, 4(r3)
/* 80332A24  4B FE B6 75 */	bl indexToPtr_private__11J3DTevBlockFUl
/* 80332A28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80332A2C  7C 08 03 A6 */	mtlr r0
/* 80332A30  38 21 00 10 */	addi r1, r1, 0x10
/* 80332A34  4E 80 00 20 */	blr 
