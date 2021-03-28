lbl_80D51F28:
/* 80D51F28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D51F2C  7C 08 02 A6 */	mflr r0
/* 80D51F30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D51F34  48 00 00 15 */	bl execute__14daTagLv8Gate_cFv
/* 80D51F38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D51F3C  7C 08 03 A6 */	mtlr r0
/* 80D51F40  38 21 00 10 */	addi r1, r1, 0x10
/* 80D51F44  4E 80 00 20 */	blr 
