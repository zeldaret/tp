lbl_805A9218:
/* 805A9218  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A921C  7C 08 02 A6 */	mflr r0
/* 805A9220  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A9224  4B CB 9E 6C */	b ModuleUnresolved
/* 805A9228  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A922C  7C 08 03 A6 */	mtlr r0
/* 805A9230  38 21 00 10 */	addi r1, r1, 0x10
/* 805A9234  4E 80 00 20 */	blr 
