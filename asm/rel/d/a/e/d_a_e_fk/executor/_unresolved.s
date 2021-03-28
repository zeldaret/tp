lbl_806B92F8:
/* 806B92F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806B92FC  7C 08 02 A6 */	mflr r0
/* 806B9300  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B9304  4B BA 9D 8C */	b ModuleUnresolved
/* 806B9308  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B930C  7C 08 03 A6 */	mtlr r0
/* 806B9310  38 21 00 10 */	addi r1, r1, 0x10
/* 806B9314  4E 80 00 20 */	blr 
