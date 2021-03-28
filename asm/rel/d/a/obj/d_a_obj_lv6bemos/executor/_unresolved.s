lbl_80C7CAF8:
/* 80C7CAF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7CAFC  7C 08 02 A6 */	mflr r0
/* 80C7CB00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7CB04  4B 5E 65 8C */	b ModuleUnresolved
/* 80C7CB08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7CB0C  7C 08 03 A6 */	mtlr r0
/* 80C7CB10  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7CB14  4E 80 00 20 */	blr 
