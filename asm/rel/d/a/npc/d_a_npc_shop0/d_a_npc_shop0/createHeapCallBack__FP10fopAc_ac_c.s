lbl_80AEA7D8:
/* 80AEA7D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEA7DC  7C 08 02 A6 */	mflr r0
/* 80AEA7E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEA7E4  48 00 06 B9 */	bl createHeap__13daNpc_Shop0_cFv
/* 80AEA7E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEA7EC  7C 08 03 A6 */	mtlr r0
/* 80AEA7F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEA7F4  4E 80 00 20 */	blr 
