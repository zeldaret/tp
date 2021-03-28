lbl_8058D138:
/* 8058D138  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058D13C  7C 08 02 A6 */	mflr r0
/* 8058D140  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058D144  4B CD 5F 4C */	b ModuleUnresolved
/* 8058D148  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058D14C  7C 08 03 A6 */	mtlr r0
/* 8058D150  38 21 00 10 */	addi r1, r1, 0x10
/* 8058D154  4E 80 00 20 */	blr 
