lbl_80BD0378:
/* 80BD0378  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD037C  7C 08 02 A6 */	mflr r0
/* 80BD0380  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD0384  4B 69 2D 0C */	b ModuleUnresolved
/* 80BD0388  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD038C  7C 08 03 A6 */	mtlr r0
/* 80BD0390  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD0394  4E 80 00 20 */	blr 
