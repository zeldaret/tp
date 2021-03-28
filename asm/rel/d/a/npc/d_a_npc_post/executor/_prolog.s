lbl_80AA8BA0:
/* 80AA8BA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA8BA4  7C 08 02 A6 */	mflr r0
/* 80AA8BA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA8BAC  3C 60 80 AB */	lis r3, data_80AAD1D8@ha
/* 80AA8BB0  38 63 D1 D8 */	addi r3, r3, data_80AAD1D8@l
/* 80AA8BB4  4B 7B A5 98 */	b ModuleConstructorsX
/* 80AA8BB8  4B 7B A4 D0 */	b ModuleProlog
/* 80AA8BBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA8BC0  7C 08 03 A6 */	mtlr r0
/* 80AA8BC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA8BC8  4E 80 00 20 */	blr 
