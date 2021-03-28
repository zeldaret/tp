lbl_80AE0164:
/* 80AE0164  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE0168  7C 08 02 A6 */	mflr r0
/* 80AE016C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE0170  4B FF 8F C9 */	bl Draw__11daNpcShad_cFv
/* 80AE0174  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE0178  7C 08 03 A6 */	mtlr r0
/* 80AE017C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE0180  4E 80 00 20 */	blr 
