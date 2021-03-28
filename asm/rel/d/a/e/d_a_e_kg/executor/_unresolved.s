lbl_806F7E58:
/* 806F7E58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F7E5C  7C 08 02 A6 */	mflr r0
/* 806F7E60  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F7E64  4B B6 B2 2C */	b ModuleUnresolved
/* 806F7E68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F7E6C  7C 08 03 A6 */	mtlr r0
/* 806F7E70  38 21 00 10 */	addi r1, r1, 0x10
/* 806F7E74  4E 80 00 20 */	blr 
