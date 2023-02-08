lbl_80CDE23C:
/* 80CDE23C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDE240  7C 08 02 A6 */	mflr r0
/* 80CDE244  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDE248  4B FF F4 A1 */	bl Delete__14daObj_SMTile_cFv
/* 80CDE24C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDE250  7C 08 03 A6 */	mtlr r0
/* 80CDE254  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDE258  4E 80 00 20 */	blr 
