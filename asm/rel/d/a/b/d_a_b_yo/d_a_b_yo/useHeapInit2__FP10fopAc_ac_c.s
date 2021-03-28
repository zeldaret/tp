lbl_806389A0:
/* 806389A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806389A4  7C 08 02 A6 */	mflr r0
/* 806389A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806389AC  4B FF FE F5 */	bl CreateHeap2__8daB_YO_cFv
/* 806389B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806389B4  7C 08 03 A6 */	mtlr r0
/* 806389B8  38 21 00 10 */	addi r1, r1, 0x10
/* 806389BC  4E 80 00 20 */	blr 
