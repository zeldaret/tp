lbl_806FA620:
/* 806FA620  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806FA624  7C 08 02 A6 */	mflr r0
/* 806FA628  90 01 00 14 */	stw r0, 0x14(r1)
/* 806FA62C  3C 60 80 70 */	lis r3, data_806FF5D4@ha
/* 806FA630  38 63 F5 D4 */	addi r3, r3, data_806FF5D4@l
/* 806FA634  4B B6 8B 18 */	b ModuleConstructorsX
/* 806FA638  4B B6 8A 50 */	b ModuleProlog
/* 806FA63C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806FA640  7C 08 03 A6 */	mtlr r0
/* 806FA644  38 21 00 10 */	addi r1, r1, 0x10
/* 806FA648  4E 80 00 20 */	blr 
