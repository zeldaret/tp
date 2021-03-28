lbl_80C66AA0:
/* 80C66AA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C66AA4  7C 08 02 A6 */	mflr r0
/* 80C66AA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C66AAC  3C 60 80 C6 */	lis r3, data_80C675CC@ha
/* 80C66AB0  38 63 75 CC */	addi r3, r3, data_80C675CC@l
/* 80C66AB4  4B 5F C6 98 */	b ModuleConstructorsX
/* 80C66AB8  4B 5F C5 D0 */	b ModuleProlog
/* 80C66ABC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C66AC0  7C 08 03 A6 */	mtlr r0
/* 80C66AC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C66AC8  4E 80 00 20 */	blr 
