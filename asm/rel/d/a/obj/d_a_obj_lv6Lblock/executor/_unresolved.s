lbl_80C73358:
/* 80C73358  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7335C  7C 08 02 A6 */	mflr r0
/* 80C73360  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C73364  4B 5E FD 2C */	b ModuleUnresolved
/* 80C73368  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7336C  7C 08 03 A6 */	mtlr r0
/* 80C73370  38 21 00 10 */	addi r1, r1, 0x10
/* 80C73374  4E 80 00 20 */	blr 
