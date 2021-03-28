lbl_80C63318:
/* 80C63318  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6331C  7C 08 02 A6 */	mflr r0
/* 80C63320  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C63324  4B 5F FD 6C */	b ModuleUnresolved
/* 80C63328  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6332C  7C 08 03 A6 */	mtlr r0
/* 80C63330  38 21 00 10 */	addi r1, r1, 0x10
/* 80C63334  4E 80 00 20 */	blr 
