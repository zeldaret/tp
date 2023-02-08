lbl_80D03BDC:
/* 80D03BDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D03BE0  7C 08 02 A6 */	mflr r0
/* 80D03BE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D03BE8  4B FF E9 9D */	bl create__10daSyRock_cFv
/* 80D03BEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D03BF0  7C 08 03 A6 */	mtlr r0
/* 80D03BF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D03BF8  4E 80 00 20 */	blr 
