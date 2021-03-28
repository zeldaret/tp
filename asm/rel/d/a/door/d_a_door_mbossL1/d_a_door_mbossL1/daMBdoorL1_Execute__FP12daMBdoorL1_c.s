lbl_806774A4:
/* 806774A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806774A8  7C 08 02 A6 */	mflr r0
/* 806774AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806774B0  4B FF FB A1 */	bl execute__12daMBdoorL1_cFv
/* 806774B4  38 60 00 01 */	li r3, 1
/* 806774B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806774BC  7C 08 03 A6 */	mtlr r0
/* 806774C0  38 21 00 10 */	addi r1, r1, 0x10
/* 806774C4  4E 80 00 20 */	blr 
