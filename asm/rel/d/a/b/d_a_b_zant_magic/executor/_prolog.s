lbl_8064F700:
/* 8064F700  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8064F704  7C 08 02 A6 */	mflr r0
/* 8064F708  90 01 00 14 */	stw r0, 0x14(r1)
/* 8064F70C  3C 60 80 65 */	lis r3, data_80650494@ha
/* 8064F710  38 63 04 94 */	addi r3, r3, data_80650494@l
/* 8064F714  4B C1 3A 38 */	b ModuleConstructorsX
/* 8064F718  4B C1 39 70 */	b ModuleProlog
/* 8064F71C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8064F720  7C 08 03 A6 */	mtlr r0
/* 8064F724  38 21 00 10 */	addi r1, r1, 0x10
/* 8064F728  4E 80 00 20 */	blr 
