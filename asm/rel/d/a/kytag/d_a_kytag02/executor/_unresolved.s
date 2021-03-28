lbl_80855A98:
/* 80855A98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80855A9C  7C 08 02 A6 */	mflr r0
/* 80855AA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80855AA4  4B A0 D5 EC */	b ModuleUnresolved
/* 80855AA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80855AAC  7C 08 03 A6 */	mtlr r0
/* 80855AB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80855AB4  4E 80 00 20 */	blr 
