lbl_80D4D60C:
/* 80D4D60C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4D610  7C 08 02 A6 */	mflr r0
/* 80D4D614  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4D618  4B FF FF 71 */	bl destroy__10daSkip2D_cFv
/* 80D4D61C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4D620  7C 08 03 A6 */	mtlr r0
/* 80D4D624  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4D628  4E 80 00 20 */	blr 
