lbl_80AE1EC8:
/* 80AE1EC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE1ECC  7C 08 02 A6 */	mflr r0
/* 80AE1ED0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE1ED4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE1ED8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AE1EDC  41 82 00 1C */	beq lbl_80AE1EF8
/* 80AE1EE0  3C A0 80 AE */	lis r5, __vt__10cCcD_GStts@ha /* 0x80AE2C50@ha */
/* 80AE1EE4  38 05 2C 50 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80AE2C50@l */
/* 80AE1EE8  90 1F 00 00 */	stw r0, 0(r31)
/* 80AE1EEC  7C 80 07 35 */	extsh. r0, r4
/* 80AE1EF0  40 81 00 08 */	ble lbl_80AE1EF8
/* 80AE1EF4  4B 7E CE 49 */	bl __dl__FPv
lbl_80AE1EF8:
/* 80AE1EF8  7F E3 FB 78 */	mr r3, r31
/* 80AE1EFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE1F00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE1F04  7C 08 03 A6 */	mtlr r0
/* 80AE1F08  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE1F0C  4E 80 00 20 */	blr 
