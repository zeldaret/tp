lbl_807EEE74:
/* 807EEE74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807EEE78  7C 08 02 A6 */	mflr r0
/* 807EEE7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807EEE80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807EEE84  7C 7F 1B 79 */	or. r31, r3, r3
/* 807EEE88  41 82 00 1C */	beq lbl_807EEEA4
/* 807EEE8C  3C A0 80 7F */	lis r5, __vt__10cCcD_GStts@ha /* 0x807EFADC@ha */
/* 807EEE90  38 05 FA DC */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x807EFADC@l */
/* 807EEE94  90 1F 00 00 */	stw r0, 0(r31)
/* 807EEE98  7C 80 07 35 */	extsh. r0, r4
/* 807EEE9C  40 81 00 08 */	ble lbl_807EEEA4
/* 807EEEA0  4B AD FE 9D */	bl __dl__FPv
lbl_807EEEA4:
/* 807EEEA4  7F E3 FB 78 */	mr r3, r31
/* 807EEEA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807EEEAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807EEEB0  7C 08 03 A6 */	mtlr r0
/* 807EEEB4  38 21 00 10 */	addi r1, r1, 0x10
/* 807EEEB8  4E 80 00 20 */	blr 
