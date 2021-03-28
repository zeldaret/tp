lbl_80AE54A8:
/* 80AE54A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE54AC  7C 08 02 A6 */	mflr r0
/* 80AE54B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE54B4  7C 66 1B 78 */	mr r6, r3
/* 80AE54B8  7C 85 23 78 */	mr r5, r4
/* 80AE54BC  80 63 00 08 */	lwz r3, 8(r3)
/* 80AE54C0  A0 86 00 04 */	lhz r4, 4(r6)
/* 80AE54C4  4B 84 5A 8C */	b getTexNo__16J3DAnmTexPatternCFUsPUs
/* 80AE54C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE54CC  7C 08 03 A6 */	mtlr r0
/* 80AE54D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE54D4  4E 80 00 20 */	blr 
