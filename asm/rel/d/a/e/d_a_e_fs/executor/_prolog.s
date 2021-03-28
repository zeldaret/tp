lbl_806BB9E0:
/* 806BB9E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806BB9E4  7C 08 02 A6 */	mflr r0
/* 806BB9E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806BB9EC  3C 60 80 6C */	lis r3, data_806BE478@ha
/* 806BB9F0  38 63 E4 78 */	addi r3, r3, data_806BE478@l
/* 806BB9F4  4B BA 77 58 */	b ModuleConstructorsX
/* 806BB9F8  4B BA 76 90 */	b ModuleProlog
/* 806BB9FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806BBA00  7C 08 03 A6 */	mtlr r0
/* 806BBA04  38 21 00 10 */	addi r1, r1, 0x10
/* 806BBA08  4E 80 00 20 */	blr 
