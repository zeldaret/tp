lbl_80BC4A98:
/* 80BC4A98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC4A9C  7C 08 02 A6 */	mflr r0
/* 80BC4AA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC4AA4  4B 69 E5 EC */	b ModuleUnresolved
/* 80BC4AA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC4AAC  7C 08 03 A6 */	mtlr r0
/* 80BC4AB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC4AB4  4E 80 00 20 */	blr 
