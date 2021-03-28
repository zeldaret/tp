lbl_806C7960:
/* 806C7960  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806C7964  7C 08 02 A6 */	mflr r0
/* 806C7968  90 01 00 14 */	stw r0, 0x14(r1)
/* 806C796C  3C 60 80 6D */	lis r3, data_806CCFEC@ha
/* 806C7970  38 63 CF EC */	addi r3, r3, data_806CCFEC@l
/* 806C7974  4B B9 B7 D8 */	b ModuleConstructorsX
/* 806C7978  4B B9 B7 10 */	b ModuleProlog
/* 806C797C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806C7980  7C 08 03 A6 */	mtlr r0
/* 806C7984  38 21 00 10 */	addi r1, r1, 0x10
/* 806C7988  4E 80 00 20 */	blr 
