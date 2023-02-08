lbl_806565A8:
/* 806565A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806565AC  7C 08 02 A6 */	mflr r0
/* 806565B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806565B4  4B FF FB 49 */	bl Draw__10daBullet_cFv
/* 806565B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806565BC  7C 08 03 A6 */	mtlr r0
/* 806565C0  38 21 00 10 */	addi r1, r1, 0x10
/* 806565C4  4E 80 00 20 */	blr 
