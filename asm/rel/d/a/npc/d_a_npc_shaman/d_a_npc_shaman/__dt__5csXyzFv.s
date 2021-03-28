lbl_80AE58E4:
/* 80AE58E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE58E8  7C 08 02 A6 */	mflr r0
/* 80AE58EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE58F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE58F4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AE58F8  41 82 00 10 */	beq lbl_80AE5908
/* 80AE58FC  7C 80 07 35 */	extsh. r0, r4
/* 80AE5900  40 81 00 08 */	ble lbl_80AE5908
/* 80AE5904  4B 7E 94 38 */	b __dl__FPv
lbl_80AE5908:
/* 80AE5908  7F E3 FB 78 */	mr r3, r31
/* 80AE590C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE5910  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE5914  7C 08 03 A6 */	mtlr r0
/* 80AE5918  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE591C  4E 80 00 20 */	blr 
