lbl_8057B938:
/* 8057B938  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057B93C  7C 08 02 A6 */	mflr r0
/* 8057B940  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057B944  4B CE 77 4C */	b ModuleUnresolved
/* 8057B948  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057B94C  7C 08 03 A6 */	mtlr r0
/* 8057B950  38 21 00 10 */	addi r1, r1, 0x10
/* 8057B954  4E 80 00 20 */	blr 
