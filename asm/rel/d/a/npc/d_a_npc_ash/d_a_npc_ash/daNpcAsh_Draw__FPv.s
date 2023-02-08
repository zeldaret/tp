lbl_8095BC98:
/* 8095BC98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8095BC9C  7C 08 02 A6 */	mflr r0
/* 8095BCA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8095BCA4  4B FF D4 79 */	bl Draw__10daNpcAsh_cFv
/* 8095BCA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8095BCAC  7C 08 03 A6 */	mtlr r0
/* 8095BCB0  38 21 00 10 */	addi r1, r1, 0x10
/* 8095BCB4  4E 80 00 20 */	blr 
