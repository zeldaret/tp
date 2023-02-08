lbl_80B00AAC:
/* 80B00AAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B00AB0  7C 08 02 A6 */	mflr r0
/* 80B00AB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B00AB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B00ABC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B00AC0  41 82 00 30 */	beq lbl_80B00AF0
/* 80B00AC4  3C 60 80 B0 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80B012B4@ha */
/* 80B00AC8  38 03 12 B4 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80B012B4@l */
/* 80B00ACC  90 1F 00 00 */	stw r0, 0(r31)
/* 80B00AD0  41 82 00 10 */	beq lbl_80B00AE0
/* 80B00AD4  3C 60 80 B0 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80B012A8@ha */
/* 80B00AD8  38 03 12 A8 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80B012A8@l */
/* 80B00ADC  90 1F 00 00 */	stw r0, 0(r31)
lbl_80B00AE0:
/* 80B00AE0  7C 80 07 35 */	extsh. r0, r4
/* 80B00AE4  40 81 00 0C */	ble lbl_80B00AF0
/* 80B00AE8  7F E3 FB 78 */	mr r3, r31
/* 80B00AEC  4B 7C E2 51 */	bl __dl__FPv
lbl_80B00AF0:
/* 80B00AF0  7F E3 FB 78 */	mr r3, r31
/* 80B00AF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B00AF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B00AFC  7C 08 03 A6 */	mtlr r0
/* 80B00B00  38 21 00 10 */	addi r1, r1, 0x10
/* 80B00B04  4E 80 00 20 */	blr 
