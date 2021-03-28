lbl_80AE187C:
/* 80AE187C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE1880  7C 08 02 A6 */	mflr r0
/* 80AE1884  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE1888  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE188C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AE1890  41 82 00 10 */	beq lbl_80AE18A0
/* 80AE1894  7C 80 07 35 */	extsh. r0, r4
/* 80AE1898  40 81 00 08 */	ble lbl_80AE18A0
/* 80AE189C  4B 7E D4 A0 */	b __dl__FPv
lbl_80AE18A0:
/* 80AE18A0  7F E3 FB 78 */	mr r3, r31
/* 80AE18A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE18A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE18AC  7C 08 03 A6 */	mtlr r0
/* 80AE18B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE18B4  4E 80 00 20 */	blr 
