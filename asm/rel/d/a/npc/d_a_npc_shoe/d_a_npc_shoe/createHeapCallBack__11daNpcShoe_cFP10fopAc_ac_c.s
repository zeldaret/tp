lbl_80AE8598:
/* 80AE8598  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE859C  7C 08 02 A6 */	mflr r0
/* 80AE85A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE85A4  4B FF FA 35 */	bl CreateHeap__11daNpcShoe_cFv
/* 80AE85A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE85AC  7C 08 03 A6 */	mtlr r0
/* 80AE85B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE85B4  4E 80 00 20 */	blr 
