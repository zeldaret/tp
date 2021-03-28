lbl_806C79B8:
/* 806C79B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806C79BC  7C 08 02 A6 */	mflr r0
/* 806C79C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806C79C4  4B B9 B6 CC */	b ModuleUnresolved
/* 806C79C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806C79CC  7C 08 03 A6 */	mtlr r0
/* 806C79D0  38 21 00 10 */	addi r1, r1, 0x10
/* 806C79D4  4E 80 00 20 */	blr 
