lbl_80AE9260:
/* 80AE9260  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE9264  7C 08 02 A6 */	mflr r0
/* 80AE9268  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE926C  4B FF EA DD */	bl Create__11daNpcShoe_cFv
/* 80AE9270  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE9274  7C 08 03 A6 */	mtlr r0
/* 80AE9278  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE927C  4E 80 00 20 */	blr 
