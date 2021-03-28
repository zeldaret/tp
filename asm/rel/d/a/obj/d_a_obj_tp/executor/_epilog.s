lbl_80D1D52C:
/* 80D1D52C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1D530  7C 08 02 A6 */	mflr r0
/* 80D1D534  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1D538  4B 54 5B 54 */	b ModuleEpilog
/* 80D1D53C  3C 60 80 D2 */	lis r3, data_80D1EE28@ha
/* 80D1D540  38 63 EE 28 */	addi r3, r3, data_80D1EE28@l
/* 80D1D544  4B 54 5C 4C */	b ModuleDestructorsX
/* 80D1D548  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1D54C  7C 08 03 A6 */	mtlr r0
/* 80D1D550  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1D554  4E 80 00 20 */	blr 
