lbl_806FF918:
/* 806FF918  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806FF91C  7C 08 02 A6 */	mflr r0
/* 806FF920  90 01 00 14 */	stw r0, 0x14(r1)
/* 806FF924  4B B6 37 6C */	b ModuleUnresolved
/* 806FF928  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806FF92C  7C 08 03 A6 */	mtlr r0
/* 806FF930  38 21 00 10 */	addi r1, r1, 0x10
/* 806FF934  4E 80 00 20 */	blr 
