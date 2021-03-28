lbl_80578CA0:
/* 80578CA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80578CA4  7C 08 02 A6 */	mflr r0
/* 80578CA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80578CAC  3C 60 80 58 */	lis r3, data_80579488@ha
/* 80578CB0  38 63 94 88 */	addi r3, r3, data_80579488@l
/* 80578CB4  4B CE A4 98 */	b ModuleConstructorsX
/* 80578CB8  4B CE A3 D0 */	b ModuleProlog
/* 80578CBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80578CC0  7C 08 03 A6 */	mtlr r0
/* 80578CC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80578CC8  4E 80 00 20 */	blr 
