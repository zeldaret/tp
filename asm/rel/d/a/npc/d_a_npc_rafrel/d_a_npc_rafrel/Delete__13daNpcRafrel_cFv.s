lbl_80ABA380:
/* 80ABA380  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ABA384  7C 08 02 A6 */	mflr r0
/* 80ABA388  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ABA38C  38 80 FF FF */	li r4, -1
/* 80ABA390  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80ABA394  81 8C 00 08 */	lwz r12, 8(r12)
/* 80ABA398  7D 89 03 A6 */	mtctr r12
/* 80ABA39C  4E 80 04 21 */	bctrl 
/* 80ABA3A0  38 60 00 01 */	li r3, 1
/* 80ABA3A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ABA3A8  7C 08 03 A6 */	mtlr r0
/* 80ABA3AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80ABA3B0  4E 80 00 20 */	blr 
