lbl_80D4D478:
/* 80D4D478  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4D47C  7C 08 02 A6 */	mflr r0
/* 80D4D480  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4D484  48 00 00 15 */	bl createHeap__10daSkip2D_cFv
/* 80D4D488  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4D48C  7C 08 03 A6 */	mtlr r0
/* 80D4D490  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4D494  4E 80 00 20 */	blr 
