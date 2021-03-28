lbl_80A01478:
/* 80A01478  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A0147C  7C 08 02 A6 */	mflr r0
/* 80A01480  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A01484  4B 86 1C 0C */	b ModuleUnresolved
/* 80A01488  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A0148C  7C 08 03 A6 */	mtlr r0
/* 80A01490  38 21 00 10 */	addi r1, r1, 0x10
/* 80A01494  4E 80 00 20 */	blr 
