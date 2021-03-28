lbl_80BB60B8:
/* 80BB60B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB60BC  7C 08 02 A6 */	mflr r0
/* 80BB60C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB60C4  4B 6A CF CC */	b ModuleUnresolved
/* 80BB60C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB60CC  7C 08 03 A6 */	mtlr r0
/* 80BB60D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB60D4  4E 80 00 20 */	blr 
