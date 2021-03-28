lbl_806558B8:
/* 806558B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806558BC  7C 08 02 A6 */	mflr r0
/* 806558C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806558C4  4B C0 D7 CC */	b ModuleUnresolved
/* 806558C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806558CC  7C 08 03 A6 */	mtlr r0
/* 806558D0  38 21 00 10 */	addi r1, r1, 0x10
/* 806558D4  4E 80 00 20 */	blr 
