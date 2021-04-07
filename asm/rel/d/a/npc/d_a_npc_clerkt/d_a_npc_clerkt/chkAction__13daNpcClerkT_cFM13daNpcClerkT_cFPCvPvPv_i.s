lbl_8099B1B0:
/* 8099B1B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8099B1B4  7C 08 02 A6 */	mflr r0
/* 8099B1B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8099B1BC  38 63 10 D4 */	addi r3, r3, 0x10d4
/* 8099B1C0  4B 9C 6E 89 */	bl __ptmf_cmpr
/* 8099B1C4  7C 60 00 34 */	cntlzw r0, r3
/* 8099B1C8  54 03 D9 7E */	srwi r3, r0, 5
/* 8099B1CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8099B1D0  7C 08 03 A6 */	mtlr r0
/* 8099B1D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8099B1D8  4E 80 00 20 */	blr 
