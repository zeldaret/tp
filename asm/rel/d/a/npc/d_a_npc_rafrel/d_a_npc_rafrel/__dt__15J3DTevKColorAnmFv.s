lbl_80ABA1C4:
/* 80ABA1C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ABA1C8  7C 08 02 A6 */	mflr r0
/* 80ABA1CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ABA1D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ABA1D4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80ABA1D8  41 82 00 10 */	beq lbl_80ABA1E8
/* 80ABA1DC  7C 80 07 35 */	extsh. r0, r4
/* 80ABA1E0  40 81 00 08 */	ble lbl_80ABA1E8
/* 80ABA1E4  4B 81 4B 59 */	bl __dl__FPv
lbl_80ABA1E8:
/* 80ABA1E8  7F E3 FB 78 */	mr r3, r31
/* 80ABA1EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ABA1F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ABA1F4  7C 08 03 A6 */	mtlr r0
/* 80ABA1F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80ABA1FC  4E 80 00 20 */	blr 
