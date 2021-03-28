lbl_80ABA3B4:
/* 80ABA3B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ABA3B8  7C 08 02 A6 */	mflr r0
/* 80ABA3BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ABA3C0  4B 69 7C 54 */	b execute__8daNpcF_cFv
/* 80ABA3C4  38 60 00 01 */	li r3, 1
/* 80ABA3C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ABA3CC  7C 08 03 A6 */	mtlr r0
/* 80ABA3D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80ABA3D4  4E 80 00 20 */	blr 
