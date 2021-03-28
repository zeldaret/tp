lbl_80D2FE80:
/* 80D2FE80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2FE84  7C 08 02 A6 */	mflr r0
/* 80D2FE88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2FE8C  3C 60 80 D3 */	lis r3, data_80D3191C@ha
/* 80D2FE90  38 63 19 1C */	addi r3, r3, data_80D3191C@l
/* 80D2FE94  4B 53 32 B8 */	b ModuleConstructorsX
/* 80D2FE98  4B 53 31 F0 */	b ModuleProlog
/* 80D2FE9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2FEA0  7C 08 03 A6 */	mtlr r0
/* 80D2FEA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2FEA8  4E 80 00 20 */	blr 
