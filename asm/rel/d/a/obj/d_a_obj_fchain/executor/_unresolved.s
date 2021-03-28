lbl_80BE5FD8:
/* 80BE5FD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE5FDC  7C 08 02 A6 */	mflr r0
/* 80BE5FE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE5FE4  4B 67 D0 AC */	b ModuleUnresolved
/* 80BE5FE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE5FEC  7C 08 03 A6 */	mtlr r0
/* 80BE5FF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE5FF4  4E 80 00 20 */	blr 
