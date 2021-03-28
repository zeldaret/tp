lbl_806FF8C0:
/* 806FF8C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806FF8C4  7C 08 02 A6 */	mflr r0
/* 806FF8C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806FF8CC  3C 60 80 70 */	lis r3, data_80705AE4@ha
/* 806FF8D0  38 63 5A E4 */	addi r3, r3, data_80705AE4@l
/* 806FF8D4  4B B6 38 78 */	b ModuleConstructorsX
/* 806FF8D8  4B B6 37 B0 */	b ModuleProlog
/* 806FF8DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806FF8E0  7C 08 03 A6 */	mtlr r0
/* 806FF8E4  38 21 00 10 */	addi r1, r1, 0x10
/* 806FF8E8  4E 80 00 20 */	blr 
