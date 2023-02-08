lbl_80AE5440:
/* 80AE5440  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE5444  7C 08 02 A6 */	mflr r0
/* 80AE5448  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE544C  4B FF E1 81 */	bl Delete__11daNpc_Sha_cFv
/* 80AE5450  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE5454  7C 08 03 A6 */	mtlr r0
/* 80AE5458  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE545C  4E 80 00 20 */	blr 
