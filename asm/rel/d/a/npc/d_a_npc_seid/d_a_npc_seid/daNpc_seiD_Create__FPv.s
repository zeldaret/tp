lbl_80ACA544:
/* 80ACA544  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACA548  7C 08 02 A6 */	mflr r0
/* 80ACA54C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACA550  4B FF F1 D9 */	bl create__12daNpc_seiD_cFv
/* 80ACA554  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACA558  7C 08 03 A6 */	mtlr r0
/* 80ACA55C  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACA560  4E 80 00 20 */	blr 
