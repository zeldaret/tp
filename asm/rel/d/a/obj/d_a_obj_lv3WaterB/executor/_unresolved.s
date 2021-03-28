lbl_80C5B558:
/* 80C5B558  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5B55C  7C 08 02 A6 */	mflr r0
/* 80C5B560  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5B564  4B 60 7B 2C */	b ModuleUnresolved
/* 80C5B568  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5B56C  7C 08 03 A6 */	mtlr r0
/* 80C5B570  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5B574  4E 80 00 20 */	blr 
