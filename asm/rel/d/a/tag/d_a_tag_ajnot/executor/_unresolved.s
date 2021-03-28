lbl_805A2638:
/* 805A2638  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A263C  7C 08 02 A6 */	mflr r0
/* 805A2640  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A2644  4B CC 0A 4C */	b ModuleUnresolved
/* 805A2648  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A264C  7C 08 03 A6 */	mtlr r0
/* 805A2650  38 21 00 10 */	addi r1, r1, 0x10
/* 805A2654  4E 80 00 20 */	blr 
