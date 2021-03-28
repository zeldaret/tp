lbl_805A3458:
/* 805A3458  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A345C  7C 08 02 A6 */	mflr r0
/* 805A3460  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A3464  4B CB FC 2C */	b ModuleUnresolved
/* 805A3468  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A346C  7C 08 03 A6 */	mtlr r0
/* 805A3470  38 21 00 10 */	addi r1, r1, 0x10
/* 805A3474  4E 80 00 20 */	blr 
