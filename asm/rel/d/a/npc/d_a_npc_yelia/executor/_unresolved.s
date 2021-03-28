lbl_80B4D278:
/* 80B4D278  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4D27C  7C 08 02 A6 */	mflr r0
/* 80B4D280  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4D284  4B 71 5E 0C */	b ModuleUnresolved
/* 80B4D288  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4D28C  7C 08 03 A6 */	mtlr r0
/* 80B4D290  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4D294  4E 80 00 20 */	blr 
