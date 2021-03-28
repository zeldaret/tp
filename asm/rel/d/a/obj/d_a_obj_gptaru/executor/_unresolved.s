lbl_8057D038:
/* 8057D038  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057D03C  7C 08 02 A6 */	mflr r0
/* 8057D040  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057D044  4B CE 60 4C */	b ModuleUnresolved
/* 8057D048  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057D04C  7C 08 03 A6 */	mtlr r0
/* 8057D050  38 21 00 10 */	addi r1, r1, 0x10
/* 8057D054  4E 80 00 20 */	blr 
