lbl_80D1C4B8:
/* 80D1C4B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1C4BC  7C 08 02 A6 */	mflr r0
/* 80D1C4C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1C4C4  4B 54 6B CC */	b ModuleUnresolved
/* 80D1C4C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1C4CC  7C 08 03 A6 */	mtlr r0
/* 80D1C4D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1C4D4  4E 80 00 20 */	blr 
