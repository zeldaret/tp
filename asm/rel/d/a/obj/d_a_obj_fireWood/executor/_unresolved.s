lbl_80BE7598:
/* 80BE7598  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE759C  7C 08 02 A6 */	mflr r0
/* 80BE75A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE75A4  4B 67 BA EC */	b ModuleUnresolved
/* 80BE75A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE75AC  7C 08 03 A6 */	mtlr r0
/* 80BE75B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE75B4  4E 80 00 20 */	blr 
