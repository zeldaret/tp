lbl_8098BE78:
/* 8098BE78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8098BE7C  7C 08 02 A6 */	mflr r0
/* 8098BE80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8098BE84  4B 8D 72 0C */	b ModuleUnresolved
/* 8098BE88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8098BE8C  7C 08 03 A6 */	mtlr r0
/* 8098BE90  38 21 00 10 */	addi r1, r1, 0x10
/* 8098BE94  4E 80 00 20 */	blr 
