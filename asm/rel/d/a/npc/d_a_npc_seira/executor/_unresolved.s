lbl_80ACB738:
/* 80ACB738  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACB73C  7C 08 02 A6 */	mflr r0
/* 80ACB740  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACB744  4B 79 79 4C */	b ModuleUnresolved
/* 80ACB748  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACB74C  7C 08 03 A6 */	mtlr r0
/* 80ACB750  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACB754  4E 80 00 20 */	blr 
