lbl_80AE92C0:
/* 80AE92C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE92C4  7C 08 02 A6 */	mflr r0
/* 80AE92C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE92CC  4B FF F0 3D */	bl Draw__11daNpcShoe_cFv
/* 80AE92D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE92D4  7C 08 03 A6 */	mtlr r0
/* 80AE92D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE92DC  4E 80 00 20 */	blr 
