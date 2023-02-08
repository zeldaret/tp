lbl_80AE3410:
/* 80AE3410  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE3414  7C 08 02 A6 */	mflr r0
/* 80AE3418  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE341C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE3420  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AE3424  41 82 00 10 */	beq lbl_80AE3434
/* 80AE3428  7C 80 07 35 */	extsh. r0, r4
/* 80AE342C  40 81 00 08 */	ble lbl_80AE3434
/* 80AE3430  4B 7E B9 0D */	bl __dl__FPv
lbl_80AE3434:
/* 80AE3434  7F E3 FB 78 */	mr r3, r31
/* 80AE3438  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE343C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE3440  7C 08 03 A6 */	mtlr r0
/* 80AE3444  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE3448  4E 80 00 20 */	blr 
