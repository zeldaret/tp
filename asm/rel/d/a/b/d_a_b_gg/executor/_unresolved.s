lbl_805DE378:
/* 805DE378  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DE37C  7C 08 02 A6 */	mflr r0
/* 805DE380  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DE384  4B C8 4D 0C */	b ModuleUnresolved
/* 805DE388  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DE38C  7C 08 03 A6 */	mtlr r0
/* 805DE390  38 21 00 10 */	addi r1, r1, 0x10
/* 805DE394  4E 80 00 20 */	blr 
