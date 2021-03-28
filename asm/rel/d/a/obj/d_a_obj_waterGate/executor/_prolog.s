lbl_80D2BAA0:
/* 80D2BAA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2BAA4  7C 08 02 A6 */	mflr r0
/* 80D2BAA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2BAAC  3C 60 80 D3 */	lis r3, data_80D2C458@ha
/* 80D2BAB0  38 63 C4 58 */	addi r3, r3, data_80D2C458@l
/* 80D2BAB4  4B 53 76 98 */	b ModuleConstructorsX
/* 80D2BAB8  4B 53 75 D0 */	b ModuleProlog
/* 80D2BABC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2BAC0  7C 08 03 A6 */	mtlr r0
/* 80D2BAC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2BAC8  4E 80 00 20 */	blr 
