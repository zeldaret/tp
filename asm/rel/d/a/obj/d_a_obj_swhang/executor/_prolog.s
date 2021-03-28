lbl_80CFB8C0:
/* 80CFB8C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFB8C4  7C 08 02 A6 */	mflr r0
/* 80CFB8C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFB8CC  3C 60 80 D0 */	lis r3, data_80CFD1D4@ha
/* 80CFB8D0  38 63 D1 D4 */	addi r3, r3, data_80CFD1D4@l
/* 80CFB8D4  4B 56 78 78 */	b ModuleConstructorsX
/* 80CFB8D8  4B 56 77 B0 */	b ModuleProlog
/* 80CFB8DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFB8E0  7C 08 03 A6 */	mtlr r0
/* 80CFB8E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFB8E8  4E 80 00 20 */	blr 
