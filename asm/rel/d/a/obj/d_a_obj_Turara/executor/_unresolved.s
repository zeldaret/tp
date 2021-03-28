lbl_80B9CAF8:
/* 80B9CAF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9CAFC  7C 08 02 A6 */	mflr r0
/* 80B9CB00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9CB04  4B 6C 65 8C */	b ModuleUnresolved
/* 80B9CB08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9CB0C  7C 08 03 A6 */	mtlr r0
/* 80B9CB10  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9CB14  4E 80 00 20 */	blr 
