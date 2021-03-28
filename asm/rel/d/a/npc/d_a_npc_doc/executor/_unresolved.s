lbl_809A6BF8:
/* 809A6BF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A6BFC  7C 08 02 A6 */	mflr r0
/* 809A6C00  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A6C04  4B 8B C4 8C */	b ModuleUnresolved
/* 809A6C08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A6C0C  7C 08 03 A6 */	mtlr r0
/* 809A6C10  38 21 00 10 */	addi r1, r1, 0x10
/* 809A6C14  4E 80 00 20 */	blr 
