lbl_806B63C0:
/* 806B63C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806B63C4  7C 08 02 A6 */	mflr r0
/* 806B63C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B63CC  3C 60 80 6C */	lis r3, data_806B8F78@ha
/* 806B63D0  38 63 8F 78 */	addi r3, r3, data_806B8F78@l
/* 806B63D4  4B BA CD 78 */	b ModuleConstructorsX
/* 806B63D8  4B BA CC B0 */	b ModuleProlog
/* 806B63DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B63E0  7C 08 03 A6 */	mtlr r0
/* 806B63E4  38 21 00 10 */	addi r1, r1, 0x10
/* 806B63E8  4E 80 00 20 */	blr 
