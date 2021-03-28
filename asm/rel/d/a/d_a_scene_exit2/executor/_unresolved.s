lbl_8059E138:
/* 8059E138  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059E13C  7C 08 02 A6 */	mflr r0
/* 8059E140  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059E144  4B CC 4F 4C */	b ModuleUnresolved
/* 8059E148  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059E14C  7C 08 03 A6 */	mtlr r0
/* 8059E150  38 21 00 10 */	addi r1, r1, 0x10
/* 8059E154  4E 80 00 20 */	blr 
