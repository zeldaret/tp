lbl_8058F338:
/* 8058F338  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058F33C  7C 08 02 A6 */	mflr r0
/* 8058F340  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058F344  4B CD 3D 4C */	b ModuleUnresolved
/* 8058F348  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058F34C  7C 08 03 A6 */	mtlr r0
/* 8058F350  38 21 00 10 */	addi r1, r1, 0x10
/* 8058F354  4E 80 00 20 */	blr 
