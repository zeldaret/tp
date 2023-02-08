lbl_80CDE25C:
/* 80CDE25C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDE260  7C 08 02 A6 */	mflr r0
/* 80CDE264  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDE268  4B FF F4 B5 */	bl Execute__14daObj_SMTile_cFv
/* 80CDE26C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDE270  7C 08 03 A6 */	mtlr r0
/* 80CDE274  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDE278  4E 80 00 20 */	blr 
