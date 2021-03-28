lbl_80D0C1C0:
/* 80D0C1C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0C1C4  7C 08 02 A6 */	mflr r0
/* 80D0C1C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0C1CC  3C 60 80 D1 */	lis r3, data_80D0D184@ha
/* 80D0C1D0  38 63 D1 84 */	addi r3, r3, data_80D0D184@l
/* 80D0C1D4  4B 55 6F 78 */	b ModuleConstructorsX
/* 80D0C1D8  4B 55 6E B0 */	b ModuleProlog
/* 80D0C1DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0C1E0  7C 08 03 A6 */	mtlr r0
/* 80D0C1E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0C1E8  4E 80 00 20 */	blr 
