lbl_80300C70:
/* 80300C70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80300C74  7C 08 02 A6 */	mflr r0
/* 80300C78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80300C7C  4B FF 67 B5 */	bl isUsed__7J2DPaneFPC7ResTIMG
/* 80300C80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80300C84  7C 08 03 A6 */	mtlr r0
/* 80300C88  38 21 00 10 */	addi r1, r1, 0x10
/* 80300C8C  4E 80 00 20 */	blr 
