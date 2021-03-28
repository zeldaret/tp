lbl_805C7A98:
/* 805C7A98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C7A9C  7C 08 02 A6 */	mflr r0
/* 805C7AA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C7AA4  4B C9 B5 EC */	b ModuleUnresolved
/* 805C7AA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C7AAC  7C 08 03 A6 */	mtlr r0
/* 805C7AB0  38 21 00 10 */	addi r1, r1, 0x10
/* 805C7AB4  4E 80 00 20 */	blr 
