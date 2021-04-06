lbl_80AE3464:
/* 80AE3464  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE3468  7C 08 02 A6 */	mflr r0
/* 80AE346C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE3470  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE3474  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AE3478  41 82 00 10 */	beq lbl_80AE3488
/* 80AE347C  7C 80 07 35 */	extsh. r0, r4
/* 80AE3480  40 81 00 08 */	ble lbl_80AE3488
/* 80AE3484  4B 7E B8 B9 */	bl __dl__FPv
lbl_80AE3488:
/* 80AE3488  7F E3 FB 78 */	mr r3, r31
/* 80AE348C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE3490  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE3494  7C 08 03 A6 */	mtlr r0
/* 80AE3498  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE349C  4E 80 00 20 */	blr 
