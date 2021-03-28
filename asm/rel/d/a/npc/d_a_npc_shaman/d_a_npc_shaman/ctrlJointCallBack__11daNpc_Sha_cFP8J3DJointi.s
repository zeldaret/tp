lbl_80AE36D4:
/* 80AE36D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE36D8  7C 08 02 A6 */	mflr r0
/* 80AE36DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE36E0  7C 60 1B 78 */	mr r0, r3
/* 80AE36E4  2C 04 00 00 */	cmpwi r4, 0
/* 80AE36E8  40 82 00 30 */	bne lbl_80AE3718
/* 80AE36EC  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80AE36F0  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80AE36F4  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 80AE36F8  80 65 00 14 */	lwz r3, 0x14(r5)
/* 80AE36FC  28 03 00 00 */	cmplwi r3, 0
/* 80AE3700  41 82 00 18 */	beq lbl_80AE3718
/* 80AE3704  7C 04 03 78 */	mr r4, r0
/* 80AE3708  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80AE370C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AE3710  7D 89 03 A6 */	mtctr r12
/* 80AE3714  4E 80 04 21 */	bctrl 
lbl_80AE3718:
/* 80AE3718  38 60 00 01 */	li r3, 1
/* 80AE371C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE3720  7C 08 03 A6 */	mtlr r0
/* 80AE3724  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE3728  4E 80 00 20 */	blr 
