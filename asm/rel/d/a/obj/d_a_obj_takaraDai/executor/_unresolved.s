lbl_80D06CF8:
/* 80D06CF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D06CFC  7C 08 02 A6 */	mflr r0
/* 80D06D00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D06D04  4B 55 C3 8C */	b ModuleUnresolved
/* 80D06D08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D06D0C  7C 08 03 A6 */	mtlr r0
/* 80D06D10  38 21 00 10 */	addi r1, r1, 0x10
/* 80D06D14  4E 80 00 20 */	blr 
