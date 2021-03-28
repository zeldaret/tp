lbl_806DFEE0:
/* 806DFEE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806DFEE4  7C 08 02 A6 */	mflr r0
/* 806DFEE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806DFEEC  3C 60 80 6E */	lis r3, data_806E0288@ha
/* 806DFEF0  38 63 02 88 */	addi r3, r3, data_806E0288@l
/* 806DFEF4  4B B8 32 58 */	b ModuleConstructorsX
/* 806DFEF8  4B B8 31 90 */	b ModuleProlog
/* 806DFEFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806DFF00  7C 08 03 A6 */	mtlr r0
/* 806DFF04  38 21 00 10 */	addi r1, r1, 0x10
/* 806DFF08  4E 80 00 20 */	blr 
