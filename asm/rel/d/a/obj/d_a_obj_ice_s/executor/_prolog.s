lbl_80C208C0:
/* 80C208C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C208C4  7C 08 02 A6 */	mflr r0
/* 80C208C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C208CC  3C 60 80 C2 */	lis r3, data_80C21AE4@ha
/* 80C208D0  38 63 1A E4 */	addi r3, r3, data_80C21AE4@l
/* 80C208D4  4B 64 28 78 */	b ModuleConstructorsX
/* 80C208D8  4B 64 27 B0 */	b ModuleProlog
/* 80C208DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C208E0  7C 08 03 A6 */	mtlr r0
/* 80C208E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C208E8  4E 80 00 20 */	blr 
