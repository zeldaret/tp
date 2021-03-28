lbl_80C8FD78:
/* 80C8FD78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8FD7C  7C 08 02 A6 */	mflr r0
/* 80C8FD80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8FD84  4B 5D 33 0C */	b ModuleUnresolved
/* 80C8FD88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8FD8C  7C 08 03 A6 */	mtlr r0
/* 80C8FD90  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8FD94  4E 80 00 20 */	blr 
