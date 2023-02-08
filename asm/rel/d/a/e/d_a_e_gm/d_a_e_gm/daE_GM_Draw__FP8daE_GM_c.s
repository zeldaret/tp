lbl_806D62FC:
/* 806D62FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806D6300  7C 08 02 A6 */	mflr r0
/* 806D6304  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D6308  4B FF FA 4D */	bl draw__8daE_GM_cFv
/* 806D630C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806D6310  7C 08 03 A6 */	mtlr r0
/* 806D6314  38 21 00 10 */	addi r1, r1, 0x10
/* 806D6318  4E 80 00 20 */	blr 
