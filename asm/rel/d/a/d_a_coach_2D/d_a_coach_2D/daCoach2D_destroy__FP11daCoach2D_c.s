lbl_806576D4:
/* 806576D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806576D8  7C 08 02 A6 */	mflr r0
/* 806576DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806576E0  4B FF F6 B5 */	bl destroy__11daCoach2D_cFv
/* 806576E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806576E8  7C 08 03 A6 */	mtlr r0
/* 806576EC  38 21 00 10 */	addi r1, r1, 0x10
/* 806576F0  4E 80 00 20 */	blr 
