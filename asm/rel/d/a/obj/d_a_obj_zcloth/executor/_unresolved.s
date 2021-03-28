lbl_80D3EDF8:
/* 80D3EDF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3EDFC  7C 08 02 A6 */	mflr r0
/* 80D3EE00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3EE04  4B 52 42 8C */	b ModuleUnresolved
/* 80D3EE08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3EE0C  7C 08 03 A6 */	mtlr r0
/* 80D3EE10  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3EE14  4E 80 00 20 */	blr 
