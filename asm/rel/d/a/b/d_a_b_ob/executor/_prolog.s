lbl_80610480:
/* 80610480  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80610484  7C 08 02 A6 */	mflr r0
/* 80610488  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061048C  3C 60 80 62 */	lis r3, data_8061AD70@ha
/* 80610490  38 63 AD 70 */	addi r3, r3, data_8061AD70@l
/* 80610494  4B C5 2C B8 */	b ModuleConstructorsX
/* 80610498  4B C5 2B F0 */	b ModuleProlog
/* 8061049C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806104A0  7C 08 03 A6 */	mtlr r0
/* 806104A4  38 21 00 10 */	addi r1, r1, 0x10
/* 806104A8  4E 80 00 20 */	blr 
