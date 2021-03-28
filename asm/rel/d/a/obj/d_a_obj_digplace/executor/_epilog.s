lbl_8057BF4C:
/* 8057BF4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057BF50  7C 08 02 A6 */	mflr r0
/* 8057BF54  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057BF58  4B CE 71 34 */	b ModuleEpilog
/* 8057BF5C  3C 60 80 58 */	lis r3, data_8057C8AC@ha
/* 8057BF60  38 63 C8 AC */	addi r3, r3, data_8057C8AC@l
/* 8057BF64  4B CE 72 2C */	b ModuleDestructorsX
/* 8057BF68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057BF6C  7C 08 03 A6 */	mtlr r0
/* 8057BF70  38 21 00 10 */	addi r1, r1, 0x10
/* 8057BF74  4E 80 00 20 */	blr 
