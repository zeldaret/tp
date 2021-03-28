lbl_8068A558:
/* 8068A558  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8068A55C  7C 08 02 A6 */	mflr r0
/* 8068A560  90 01 00 14 */	stw r0, 0x14(r1)
/* 8068A564  4B BD 8B 2C */	b ModuleUnresolved
/* 8068A568  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8068A56C  7C 08 03 A6 */	mtlr r0
/* 8068A570  38 21 00 10 */	addi r1, r1, 0x10
/* 8068A574  4E 80 00 20 */	blr 
