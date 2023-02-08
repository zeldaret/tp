lbl_807423D0:
/* 807423D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807423D4  7C 08 02 A6 */	mflr r0
/* 807423D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 807423DC  4B FF FC 5D */	bl CreateHeap__8daE_PM_cFv
/* 807423E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807423E4  7C 08 03 A6 */	mtlr r0
/* 807423E8  38 21 00 10 */	addi r1, r1, 0x10
/* 807423EC  4E 80 00 20 */	blr 
