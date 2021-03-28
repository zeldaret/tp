lbl_80AE1DA8:
/* 80AE1DA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE1DAC  7C 08 02 A6 */	mflr r0
/* 80AE1DB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE1DB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE1DB8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AE1DBC  41 82 00 30 */	beq lbl_80AE1DEC
/* 80AE1DC0  3C 60 80 AE */	lis r3, __vt__10dCcD_GStts@ha
/* 80AE1DC4  38 03 2C 5C */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80AE1DC8  90 1F 00 00 */	stw r0, 0(r31)
/* 80AE1DCC  41 82 00 10 */	beq lbl_80AE1DDC
/* 80AE1DD0  3C 60 80 AE */	lis r3, __vt__10cCcD_GStts@ha
/* 80AE1DD4  38 03 2C 50 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80AE1DD8  90 1F 00 00 */	stw r0, 0(r31)
lbl_80AE1DDC:
/* 80AE1DDC  7C 80 07 35 */	extsh. r0, r4
/* 80AE1DE0  40 81 00 0C */	ble lbl_80AE1DEC
/* 80AE1DE4  7F E3 FB 78 */	mr r3, r31
/* 80AE1DE8  4B 7E CF 54 */	b __dl__FPv
lbl_80AE1DEC:
/* 80AE1DEC  7F E3 FB 78 */	mr r3, r31
/* 80AE1DF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE1DF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE1DF8  7C 08 03 A6 */	mtlr r0
/* 80AE1DFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE1E00  4E 80 00 20 */	blr 
