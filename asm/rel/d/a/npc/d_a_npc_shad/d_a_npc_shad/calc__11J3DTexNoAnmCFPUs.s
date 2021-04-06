lbl_80AE018C:
/* 80AE018C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE0190  7C 08 02 A6 */	mflr r0
/* 80AE0194  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE0198  7C 66 1B 78 */	mr r6, r3
/* 80AE019C  7C 85 23 78 */	mr r5, r4
/* 80AE01A0  80 63 00 08 */	lwz r3, 8(r3)
/* 80AE01A4  A0 86 00 04 */	lhz r4, 4(r6)
/* 80AE01A8  4B 84 AD A9 */	bl getTexNo__16J3DAnmTexPatternCFUsPUs
/* 80AE01AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE01B0  7C 08 03 A6 */	mtlr r0
/* 80AE01B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE01B8  4E 80 00 20 */	blr 
