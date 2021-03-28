lbl_80B9ADFC:
/* 80B9ADFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9AE00  7C 08 02 A6 */	mflr r0
/* 80B9AE04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9AE08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9AE0C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B9AE10  41 82 00 1C */	beq lbl_80B9AE2C
/* 80B9AE14  3C A0 80 BA */	lis r5, __vt__10cCcD_GStts@ha
/* 80B9AE18  38 05 B7 E8 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80B9AE1C  90 1F 00 00 */	stw r0, 0(r31)
/* 80B9AE20  7C 80 07 35 */	extsh. r0, r4
/* 80B9AE24  40 81 00 08 */	ble lbl_80B9AE2C
/* 80B9AE28  4B 73 3F 14 */	b __dl__FPv
lbl_80B9AE2C:
/* 80B9AE2C  7F E3 FB 78 */	mr r3, r31
/* 80B9AE30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9AE34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9AE38  7C 08 03 A6 */	mtlr r0
/* 80B9AE3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9AE40  4E 80 00 20 */	blr 
