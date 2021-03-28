lbl_805BB3E8:
/* 805BB3E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BB3EC  7C 08 02 A6 */	mflr r0
/* 805BB3F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BB3F4  4B FF FD 79 */	bl draw__8daB_DR_cFv
/* 805BB3F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BB3FC  7C 08 03 A6 */	mtlr r0
/* 805BB400  38 21 00 10 */	addi r1, r1, 0x10
/* 805BB404  4E 80 00 20 */	blr 
