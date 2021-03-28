lbl_80CE6BF8:
/* 80CE6BF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE6BFC  7C 08 02 A6 */	mflr r0
/* 80CE6C00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE6C04  4B 57 C4 8C */	b ModuleUnresolved
/* 80CE6C08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE6C0C  7C 08 03 A6 */	mtlr r0
/* 80CE6C10  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE6C14  4E 80 00 20 */	blr 
