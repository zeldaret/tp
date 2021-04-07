lbl_80AE54D8:
/* 80AE54D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE54DC  7C 08 02 A6 */	mflr r0
/* 80AE54E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE54E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE54E8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AE54EC  41 82 00 1C */	beq lbl_80AE5508
/* 80AE54F0  3C A0 80 AE */	lis r5, __vt__10cCcD_GStts@ha /* 0x80AE770C@ha */
/* 80AE54F4  38 05 77 0C */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80AE770C@l */
/* 80AE54F8  90 1F 00 00 */	stw r0, 0(r31)
/* 80AE54FC  7C 80 07 35 */	extsh. r0, r4
/* 80AE5500  40 81 00 08 */	ble lbl_80AE5508
/* 80AE5504  4B 7E 98 39 */	bl __dl__FPv
lbl_80AE5508:
/* 80AE5508  7F E3 FB 78 */	mr r3, r31
/* 80AE550C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE5510  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE5514  7C 08 03 A6 */	mtlr r0
/* 80AE5518  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE551C  4E 80 00 20 */	blr 
