lbl_806CD3F8:
/* 806CD3F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806CD3FC  7C 08 02 A6 */	mflr r0
/* 806CD400  90 01 00 14 */	stw r0, 0x14(r1)
/* 806CD404  4B B9 5C 8C */	b ModuleUnresolved
/* 806CD408  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806CD40C  7C 08 03 A6 */	mtlr r0
/* 806CD410  38 21 00 10 */	addi r1, r1, 0x10
/* 806CD414  4E 80 00 20 */	blr 
