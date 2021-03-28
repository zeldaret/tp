lbl_80AE35CC:
/* 80AE35CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE35D0  7C 08 02 A6 */	mflr r0
/* 80AE35D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE35D8  38 80 FF FF */	li r4, -1
/* 80AE35DC  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80AE35E0  81 8C 00 08 */	lwz r12, 8(r12)
/* 80AE35E4  7D 89 03 A6 */	mtctr r12
/* 80AE35E8  4E 80 04 21 */	bctrl 
/* 80AE35EC  38 60 00 01 */	li r3, 1
/* 80AE35F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE35F4  7C 08 03 A6 */	mtlr r0
/* 80AE35F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE35FC  4E 80 00 20 */	blr 
