lbl_80B1DCA4:
/* 80B1DCA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B1DCA8  7C 08 02 A6 */	mflr r0
/* 80B1DCAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1DCB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B1DCB4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B1DCB8  41 82 00 1C */	beq lbl_80B1DCD4
/* 80B1DCBC  3C A0 80 B2 */	lis r5, __vt__10cCcD_GStts@ha
/* 80B1DCC0  38 05 E4 DC */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80B1DCC4  90 1F 00 00 */	stw r0, 0(r31)
/* 80B1DCC8  7C 80 07 35 */	extsh. r0, r4
/* 80B1DCCC  40 81 00 08 */	ble lbl_80B1DCD4
/* 80B1DCD0  4B 7B 10 6C */	b __dl__FPv
lbl_80B1DCD4:
/* 80B1DCD4  7F E3 FB 78 */	mr r3, r31
/* 80B1DCD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B1DCDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B1DCE0  7C 08 03 A6 */	mtlr r0
/* 80B1DCE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B1DCE8  4E 80 00 20 */	blr 
