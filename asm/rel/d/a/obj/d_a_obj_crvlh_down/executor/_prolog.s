lbl_80BD40C0:
/* 80BD40C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD40C4  7C 08 02 A6 */	mflr r0
/* 80BD40C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD40CC  3C 60 80 BD */	lis r3, data_80BD4CFC@ha
/* 80BD40D0  38 63 4C FC */	addi r3, r3, data_80BD4CFC@l
/* 80BD40D4  4B 68 F0 78 */	b ModuleConstructorsX
/* 80BD40D8  4B 68 EF B0 */	b ModuleProlog
/* 80BD40DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD40E0  7C 08 03 A6 */	mtlr r0
/* 80BD40E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD40E8  4E 80 00 20 */	blr 
