lbl_80C5B52C:
/* 80C5B52C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5B530  7C 08 02 A6 */	mflr r0
/* 80C5B534  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5B538  4B 60 7B 54 */	b ModuleEpilog
/* 80C5B53C  3C 60 80 C6 */	lis r3, data_80C5BD4C@ha
/* 80C5B540  38 63 BD 4C */	addi r3, r3, data_80C5BD4C@l
/* 80C5B544  4B 60 7C 4C */	b ModuleDestructorsX
/* 80C5B548  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5B54C  7C 08 03 A6 */	mtlr r0
/* 80C5B550  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5B554  4E 80 00 20 */	blr 
