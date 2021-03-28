lbl_80D20718:
/* 80D20718  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2071C  7C 08 02 A6 */	mflr r0
/* 80D20720  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D20724  4B 54 29 6C */	b ModuleUnresolved
/* 80D20728  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2072C  7C 08 03 A6 */	mtlr r0
/* 80D20730  38 21 00 10 */	addi r1, r1, 0x10
/* 80D20734  4E 80 00 20 */	blr 
