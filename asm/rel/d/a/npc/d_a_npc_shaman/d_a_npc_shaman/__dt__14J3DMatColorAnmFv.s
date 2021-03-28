lbl_80AE3578:
/* 80AE3578  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE357C  7C 08 02 A6 */	mflr r0
/* 80AE3580  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE3584  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE3588  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AE358C  41 82 00 10 */	beq lbl_80AE359C
/* 80AE3590  7C 80 07 35 */	extsh. r0, r4
/* 80AE3594  40 81 00 08 */	ble lbl_80AE359C
/* 80AE3598  4B 7E B7 A4 */	b __dl__FPv
lbl_80AE359C:
/* 80AE359C  7F E3 FB 78 */	mr r3, r31
/* 80AE35A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE35A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE35A8  7C 08 03 A6 */	mtlr r0
/* 80AE35AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE35B0  4E 80 00 20 */	blr 
