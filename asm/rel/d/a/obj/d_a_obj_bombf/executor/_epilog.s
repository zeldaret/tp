lbl_80BBA9AC:
/* 80BBA9AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBA9B0  7C 08 02 A6 */	mflr r0
/* 80BBA9B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBA9B8  4B 6A 86 D4 */	b ModuleEpilog
/* 80BBA9BC  3C 60 80 BC */	lis r3, data_80BBAE80@ha
/* 80BBA9C0  38 63 AE 80 */	addi r3, r3, data_80BBAE80@l
/* 80BBA9C4  4B 6A 87 CC */	b ModuleDestructorsX
/* 80BBA9C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBA9CC  7C 08 03 A6 */	mtlr r0
/* 80BBA9D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBA9D4  4E 80 00 20 */	blr 
