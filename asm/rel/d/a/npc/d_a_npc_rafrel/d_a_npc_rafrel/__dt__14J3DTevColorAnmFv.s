lbl_80ABA218:
/* 80ABA218  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ABA21C  7C 08 02 A6 */	mflr r0
/* 80ABA220  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ABA224  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ABA228  7C 7F 1B 79 */	or. r31, r3, r3
/* 80ABA22C  41 82 00 10 */	beq lbl_80ABA23C
/* 80ABA230  7C 80 07 35 */	extsh. r0, r4
/* 80ABA234  40 81 00 08 */	ble lbl_80ABA23C
/* 80ABA238  4B 81 4B 04 */	b __dl__FPv
lbl_80ABA23C:
/* 80ABA23C  7F E3 FB 78 */	mr r3, r31
/* 80ABA240  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ABA244  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ABA248  7C 08 03 A6 */	mtlr r0
/* 80ABA24C  38 21 00 10 */	addi r1, r1, 0x10
/* 80ABA250  4E 80 00 20 */	blr 
