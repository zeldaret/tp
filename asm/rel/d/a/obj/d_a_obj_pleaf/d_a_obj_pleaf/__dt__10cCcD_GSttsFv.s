lbl_80CB1770:
/* 80CB1770  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB1774  7C 08 02 A6 */	mflr r0
/* 80CB1778  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB177C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB1780  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CB1784  41 82 00 1C */	beq lbl_80CB17A0
/* 80CB1788  3C A0 80 CB */	lis r5, __vt__10cCcD_GStts@ha /* 0x80CB1914@ha */
/* 80CB178C  38 05 19 14 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80CB1914@l */
/* 80CB1790  90 1F 00 00 */	stw r0, 0(r31)
/* 80CB1794  7C 80 07 35 */	extsh. r0, r4
/* 80CB1798  40 81 00 08 */	ble lbl_80CB17A0
/* 80CB179C  4B 61 D5 A1 */	bl __dl__FPv
lbl_80CB17A0:
/* 80CB17A0  7F E3 FB 78 */	mr r3, r31
/* 80CB17A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB17A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB17AC  7C 08 03 A6 */	mtlr r0
/* 80CB17B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB17B4  4E 80 00 20 */	blr 
