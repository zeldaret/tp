lbl_80CF020C:
/* 80CF020C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF0210  7C 08 02 A6 */	mflr r0
/* 80CF0214  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF0218  4B FF FF 51 */	bl execute__14daObj_Suisya_cFv
/* 80CF021C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF0220  7C 08 03 A6 */	mtlr r0
/* 80CF0224  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF0228  4E 80 00 20 */	blr 
