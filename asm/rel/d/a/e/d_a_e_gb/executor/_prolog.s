lbl_806C1C00:
/* 806C1C00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806C1C04  7C 08 02 A6 */	mflr r0
/* 806C1C08  90 01 00 14 */	stw r0, 0x14(r1)
/* 806C1C0C  3C 60 80 6C */	lis r3, data_806C74D4@ha
/* 806C1C10  38 63 74 D4 */	addi r3, r3, data_806C74D4@l
/* 806C1C14  4B BA 15 38 */	b ModuleConstructorsX
/* 806C1C18  4B BA 14 70 */	b ModuleProlog
/* 806C1C1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806C1C20  7C 08 03 A6 */	mtlr r0
/* 806C1C24  38 21 00 10 */	addi r1, r1, 0x10
/* 806C1C28  4E 80 00 20 */	blr 
