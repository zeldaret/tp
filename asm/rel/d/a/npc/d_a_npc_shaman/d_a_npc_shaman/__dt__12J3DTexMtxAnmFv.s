lbl_80AE3524:
/* 80AE3524  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE3528  7C 08 02 A6 */	mflr r0
/* 80AE352C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE3530  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE3534  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AE3538  41 82 00 10 */	beq lbl_80AE3548
/* 80AE353C  7C 80 07 35 */	extsh. r0, r4
/* 80AE3540  40 81 00 08 */	ble lbl_80AE3548
/* 80AE3544  4B 7E B7 F9 */	bl __dl__FPv
lbl_80AE3548:
/* 80AE3548  7F E3 FB 78 */	mr r3, r31
/* 80AE354C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE3550  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE3554  7C 08 03 A6 */	mtlr r0
/* 80AE3558  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE355C  4E 80 00 20 */	blr 
