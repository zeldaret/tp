lbl_80AEE364:
/* 80AEE364  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEE368  7C 08 02 A6 */	mflr r0
/* 80AEE36C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEE370  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEE374  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AEE378  41 82 00 10 */	beq lbl_80AEE388
/* 80AEE37C  7C 80 07 35 */	extsh. r0, r4
/* 80AEE380  40 81 00 08 */	ble lbl_80AEE388
/* 80AEE384  4B 7E 09 B9 */	bl __dl__FPv
lbl_80AEE388:
/* 80AEE388  7F E3 FB 78 */	mr r3, r31
/* 80AEE38C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEE390  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEE394  7C 08 03 A6 */	mtlr r0
/* 80AEE398  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEE39C  4E 80 00 20 */	blr 
