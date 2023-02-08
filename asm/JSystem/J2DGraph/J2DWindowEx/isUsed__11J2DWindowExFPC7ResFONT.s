lbl_803035FC:
/* 803035FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80303600  7C 08 02 A6 */	mflr r0
/* 80303604  90 01 00 14 */	stw r0, 0x14(r1)
/* 80303608  4B FF 3E B1 */	bl isUsed__7J2DPaneFPC7ResFONT
/* 8030360C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80303610  7C 08 03 A6 */	mtlr r0
/* 80303614  38 21 00 10 */	addi r1, r1, 0x10
/* 80303618  4E 80 00 20 */	blr 
