lbl_80ABA678:
/* 80ABA678  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ABA67C  7C 08 02 A6 */	mflr r0
/* 80ABA680  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ABA684  4B FF F7 B9 */	bl CreateHeap__13daNpcRafrel_cFv
/* 80ABA688  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ABA68C  7C 08 03 A6 */	mtlr r0
/* 80ABA690  38 21 00 10 */	addi r1, r1, 0x10
/* 80ABA694  4E 80 00 20 */	blr 
