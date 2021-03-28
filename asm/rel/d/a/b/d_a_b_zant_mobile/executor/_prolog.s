lbl_806506A0:
/* 806506A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806506A4  7C 08 02 A6 */	mflr r0
/* 806506A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806506AC  3C 60 80 65 */	lis r3, data_80652728@ha
/* 806506B0  38 63 27 28 */	addi r3, r3, data_80652728@l
/* 806506B4  4B C1 2A 98 */	b ModuleConstructorsX
/* 806506B8  4B C1 29 D0 */	b ModuleProlog
/* 806506BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806506C0  7C 08 03 A6 */	mtlr r0
/* 806506C4  38 21 00 10 */	addi r1, r1, 0x10
/* 806506C8  4E 80 00 20 */	blr 
