lbl_80AE5480:
/* 80AE5480  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE5484  7C 08 02 A6 */	mflr r0
/* 80AE5488  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE548C  4B FF E1 95 */	bl Draw__11daNpc_Sha_cFv
/* 80AE5490  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE5494  7C 08 03 A6 */	mtlr r0
/* 80AE5498  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE549C  4E 80 00 20 */	blr 
