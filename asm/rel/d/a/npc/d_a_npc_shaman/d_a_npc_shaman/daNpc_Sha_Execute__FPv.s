lbl_80AE5460:
/* 80AE5460  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE5464  7C 08 02 A6 */	mflr r0
/* 80AE5468  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE546C  4B FF E1 95 */	bl Execute__11daNpc_Sha_cFv
/* 80AE5470  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE5474  7C 08 03 A6 */	mtlr r0
/* 80AE5478  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE547C  4E 80 00 20 */	blr 
