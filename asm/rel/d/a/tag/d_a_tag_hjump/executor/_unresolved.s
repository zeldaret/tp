lbl_805A3A98:
/* 805A3A98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A3A9C  7C 08 02 A6 */	mflr r0
/* 805A3AA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A3AA4  4B CB F5 EC */	b ModuleUnresolved
/* 805A3AA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A3AAC  7C 08 03 A6 */	mtlr r0
/* 805A3AB0  38 21 00 10 */	addi r1, r1, 0x10
/* 805A3AB4  4E 80 00 20 */	blr 
