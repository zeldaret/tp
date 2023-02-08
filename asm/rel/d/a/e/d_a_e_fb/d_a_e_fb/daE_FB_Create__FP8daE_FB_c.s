lbl_806B8EC4:
/* 806B8EC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806B8EC8  7C 08 02 A6 */	mflr r0
/* 806B8ECC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B8ED0  4B FF FA 11 */	bl create__8daE_FB_cFv
/* 806B8ED4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B8ED8  7C 08 03 A6 */	mtlr r0
/* 806B8EDC  38 21 00 10 */	addi r1, r1, 0x10
/* 806B8EE0  4E 80 00 20 */	blr 
