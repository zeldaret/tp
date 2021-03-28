lbl_80D2EBF8:
/* 80D2EBF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2EBFC  7C 08 02 A6 */	mflr r0
/* 80D2EC00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2EC04  4B 53 44 8C */	b ModuleUnresolved
/* 80D2EC08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2EC0C  7C 08 03 A6 */	mtlr r0
/* 80D2EC10  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2EC14  4E 80 00 20 */	blr 
