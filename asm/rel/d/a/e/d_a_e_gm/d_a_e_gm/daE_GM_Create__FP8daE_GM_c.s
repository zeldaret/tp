lbl_806D73C0:
/* 806D73C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806D73C4  7C 08 02 A6 */	mflr r0
/* 806D73C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D73CC  4B FF F9 25 */	bl create__8daE_GM_cFv
/* 806D73D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806D73D4  7C 08 03 A6 */	mtlr r0
/* 806D73D8  38 21 00 10 */	addi r1, r1, 0x10
/* 806D73DC  4E 80 00 20 */	blr 
