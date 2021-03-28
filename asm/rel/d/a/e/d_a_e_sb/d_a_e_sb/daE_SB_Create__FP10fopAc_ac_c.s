lbl_80784CA0:
/* 80784CA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80784CA4  7C 08 02 A6 */	mflr r0
/* 80784CA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80784CAC  4B FF FA 75 */	bl Create__8daE_SB_cFv
/* 80784CB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80784CB4  7C 08 03 A6 */	mtlr r0
/* 80784CB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80784CBC  4E 80 00 20 */	blr 
