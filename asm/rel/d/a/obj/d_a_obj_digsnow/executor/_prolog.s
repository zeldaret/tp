lbl_80BDCBE0:
/* 80BDCBE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDCBE4  7C 08 02 A6 */	mflr r0
/* 80BDCBE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDCBEC  3C 60 80 BE */	lis r3, data_80BDD6C0@ha
/* 80BDCBF0  38 63 D6 C0 */	addi r3, r3, data_80BDD6C0@l
/* 80BDCBF4  4B 68 65 58 */	b ModuleConstructorsX
/* 80BDCBF8  4B 68 64 90 */	b ModuleProlog
/* 80BDCBFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDCC00  7C 08 03 A6 */	mtlr r0
/* 80BDCC04  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDCC08  4E 80 00 20 */	blr 
