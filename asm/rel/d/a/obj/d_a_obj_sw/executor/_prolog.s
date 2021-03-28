lbl_80CF05C0:
/* 80CF05C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF05C4  7C 08 02 A6 */	mflr r0
/* 80CF05C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF05CC  3C 60 80 CF */	lis r3, data_80CF2FF8@ha
/* 80CF05D0  38 63 2F F8 */	addi r3, r3, data_80CF2FF8@l
/* 80CF05D4  4B 57 2B 78 */	b ModuleConstructorsX
/* 80CF05D8  4B 57 2A B0 */	b ModuleProlog
/* 80CF05DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF05E0  7C 08 03 A6 */	mtlr r0
/* 80CF05E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF05E8  4E 80 00 20 */	blr 
