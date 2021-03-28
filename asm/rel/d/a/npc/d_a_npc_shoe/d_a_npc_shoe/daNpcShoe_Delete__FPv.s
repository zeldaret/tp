lbl_80AE9280:
/* 80AE9280  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE9284  7C 08 02 A6 */	mflr r0
/* 80AE9288  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE928C  4B FF EF 5D */	bl Delete__11daNpcShoe_cFv
/* 80AE9290  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE9294  7C 08 03 A6 */	mtlr r0
/* 80AE9298  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE929C  4E 80 00 20 */	blr 
