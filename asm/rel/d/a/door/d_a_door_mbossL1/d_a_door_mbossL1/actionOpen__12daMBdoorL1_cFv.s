lbl_80676EB4:
/* 80676EB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80676EB8  7C 08 02 A6 */	mflr r0
/* 80676EBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80676EC0  4B FF D0 01 */	bl demoProc__12daMBdoorL1_cFv
/* 80676EC4  38 60 00 01 */	li r3, 1
/* 80676EC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80676ECC  7C 08 03 A6 */	mtlr r0
/* 80676ED0  38 21 00 10 */	addi r1, r1, 0x10
/* 80676ED4  4E 80 00 20 */	blr 
