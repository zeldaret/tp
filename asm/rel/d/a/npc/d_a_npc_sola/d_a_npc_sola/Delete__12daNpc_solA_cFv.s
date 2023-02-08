lbl_80AED0F8:
/* 80AED0F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AED0FC  7C 08 02 A6 */	mflr r0
/* 80AED100  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AED104  38 80 FF FF */	li r4, -1
/* 80AED108  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80AED10C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80AED110  7D 89 03 A6 */	mtctr r12
/* 80AED114  4E 80 04 21 */	bctrl 
/* 80AED118  38 60 00 01 */	li r3, 1
/* 80AED11C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AED120  7C 08 03 A6 */	mtlr r0
/* 80AED124  38 21 00 10 */	addi r1, r1, 0x10
/* 80AED128  4E 80 00 20 */	blr 
