lbl_80C58404:
/* 80C58404  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C58408  7C 08 02 A6 */	mflr r0
/* 80C5840C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C58410  4B FF FE ED */	bl Draw__13daLv3Candle_cFv
/* 80C58414  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C58418  7C 08 03 A6 */	mtlr r0
/* 80C5841C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C58420  4E 80 00 20 */	blr 
