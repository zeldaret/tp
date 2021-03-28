lbl_809D7378:
/* 809D7378  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D737C  7C 08 02 A6 */	mflr r0
/* 809D7380  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D7384  4B 88 BD 0C */	b ModuleUnresolved
/* 809D7388  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D738C  7C 08 03 A6 */	mtlr r0
/* 809D7390  38 21 00 10 */	addi r1, r1, 0x10
/* 809D7394  4E 80 00 20 */	blr 
