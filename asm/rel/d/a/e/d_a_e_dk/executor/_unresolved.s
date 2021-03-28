lbl_806AA158:
/* 806AA158  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806AA15C  7C 08 02 A6 */	mflr r0
/* 806AA160  90 01 00 14 */	stw r0, 0x14(r1)
/* 806AA164  4B BB 8F 2C */	b ModuleUnresolved
/* 806AA168  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806AA16C  7C 08 03 A6 */	mtlr r0
/* 806AA170  38 21 00 10 */	addi r1, r1, 0x10
/* 806AA174  4E 80 00 20 */	blr 
