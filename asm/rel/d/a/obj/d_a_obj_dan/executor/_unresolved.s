lbl_80BDA4F8:
/* 80BDA4F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDA4FC  7C 08 02 A6 */	mflr r0
/* 80BDA500  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDA504  4B 68 8B 8C */	b ModuleUnresolved
/* 80BDA508  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDA50C  7C 08 03 A6 */	mtlr r0
/* 80BDA510  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDA514  4E 80 00 20 */	blr 
