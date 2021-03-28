lbl_80573640:
/* 80573640  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80573644  7C 08 02 A6 */	mflr r0
/* 80573648  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057364C  3C 60 80 57 */	lis r3, data_80576584@ha
/* 80573650  38 63 65 84 */	addi r3, r3, data_80576584@l
/* 80573654  4B CE FA F8 */	b ModuleConstructorsX
/* 80573658  4B CE FA 30 */	b ModuleProlog
/* 8057365C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80573660  7C 08 03 A6 */	mtlr r0
/* 80573664  38 21 00 10 */	addi r1, r1, 0x10
/* 80573668  4E 80 00 20 */	blr 
