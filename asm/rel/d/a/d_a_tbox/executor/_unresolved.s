lbl_80490C98:
/* 80490C98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80490C9C  7C 08 02 A6 */	mflr r0
/* 80490CA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80490CA4  4B DD 23 EC */	b ModuleUnresolved
/* 80490CA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80490CAC  7C 08 03 A6 */	mtlr r0
/* 80490CB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80490CB4  4E 80 00 20 */	blr 
