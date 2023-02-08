lbl_80AE81E8:
/* 80AE81E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE81EC  7C 08 02 A6 */	mflr r0
/* 80AE81F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE81F4  38 80 FF FF */	li r4, -1
/* 80AE81F8  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80AE81FC  81 8C 00 08 */	lwz r12, 8(r12)
/* 80AE8200  7D 89 03 A6 */	mtctr r12
/* 80AE8204  4E 80 04 21 */	bctrl 
/* 80AE8208  38 60 00 01 */	li r3, 1
/* 80AE820C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE8210  7C 08 03 A6 */	mtlr r0
/* 80AE8214  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE8218  4E 80 00 20 */	blr 
