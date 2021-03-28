lbl_80C50F20:
/* 80C50F20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C50F24  7C 08 02 A6 */	mflr r0
/* 80C50F28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C50F2C  3C 60 80 C5 */	lis r3, data_80C51FF8@ha
/* 80C50F30  38 63 1F F8 */	addi r3, r3, data_80C51FF8@l
/* 80C50F34  4B 61 22 18 */	b ModuleConstructorsX
/* 80C50F38  4B 61 21 50 */	b ModuleProlog
/* 80C50F3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C50F40  7C 08 03 A6 */	mtlr r0
/* 80C50F44  38 21 00 10 */	addi r1, r1, 0x10
/* 80C50F48  4E 80 00 20 */	blr 
