lbl_80D1D558:
/* 80D1D558  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1D55C  7C 08 02 A6 */	mflr r0
/* 80D1D560  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1D564  4B 54 5B 2C */	b ModuleUnresolved
/* 80D1D568  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1D56C  7C 08 03 A6 */	mtlr r0
/* 80D1D570  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1D574  4E 80 00 20 */	blr 
