lbl_80ACA584:
/* 80ACA584  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACA588  7C 08 02 A6 */	mflr r0
/* 80ACA58C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACA590  4B FF F5 65 */	bl Execute__12daNpc_seiD_cFv
/* 80ACA594  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACA598  7C 08 03 A6 */	mtlr r0
/* 80ACA59C  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACA5A0  4E 80 00 20 */	blr 
