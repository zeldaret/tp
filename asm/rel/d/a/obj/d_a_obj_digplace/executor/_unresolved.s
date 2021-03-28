lbl_8057BF78:
/* 8057BF78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057BF7C  7C 08 02 A6 */	mflr r0
/* 8057BF80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057BF84  4B CE 71 0C */	b ModuleUnresolved
/* 8057BF88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057BF8C  7C 08 03 A6 */	mtlr r0
/* 8057BF90  38 21 00 10 */	addi r1, r1, 0x10
/* 8057BF94  4E 80 00 20 */	blr 
