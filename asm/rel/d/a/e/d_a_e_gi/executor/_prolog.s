lbl_806CD3A0:
/* 806CD3A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806CD3A4  7C 08 02 A6 */	mflr r0
/* 806CD3A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806CD3AC  3C 60 80 6D */	lis r3, data_806D0E4C@ha
/* 806CD3B0  38 63 0E 4C */	addi r3, r3, data_806D0E4C@l
/* 806CD3B4  4B B9 5D 98 */	b ModuleConstructorsX
/* 806CD3B8  4B B9 5C D0 */	b ModuleProlog
/* 806CD3BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806CD3C0  7C 08 03 A6 */	mtlr r0
/* 806CD3C4  38 21 00 10 */	addi r1, r1, 0x10
/* 806CD3C8  4E 80 00 20 */	blr 
