lbl_80D3EDA0:
/* 80D3EDA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3EDA4  7C 08 02 A6 */	mflr r0
/* 80D3EDA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3EDAC  3C 60 80 D4 */	lis r3, data_80D3F2CC@ha
/* 80D3EDB0  38 63 F2 CC */	addi r3, r3, data_80D3F2CC@l
/* 80D3EDB4  4B 52 43 98 */	b ModuleConstructorsX
/* 80D3EDB8  4B 52 42 D0 */	b ModuleProlog
/* 80D3EDBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3EDC0  7C 08 03 A6 */	mtlr r0
/* 80D3EDC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3EDC8  4E 80 00 20 */	blr 
