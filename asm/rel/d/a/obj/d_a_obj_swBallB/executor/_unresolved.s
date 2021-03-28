lbl_80CF4598:
/* 80CF4598  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF459C  7C 08 02 A6 */	mflr r0
/* 80CF45A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF45A4  4B 56 EA EC */	b ModuleUnresolved
/* 80CF45A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF45AC  7C 08 03 A6 */	mtlr r0
/* 80CF45B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF45B4  4E 80 00 20 */	blr 
