lbl_80D02218:
/* 80D02218  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0221C  7C 08 02 A6 */	mflr r0
/* 80D02220  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D02224  4B 56 0E 6C */	b ModuleUnresolved
/* 80D02228  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0222C  7C 08 03 A6 */	mtlr r0
/* 80D02230  38 21 00 10 */	addi r1, r1, 0x10
/* 80D02234  4E 80 00 20 */	blr 
