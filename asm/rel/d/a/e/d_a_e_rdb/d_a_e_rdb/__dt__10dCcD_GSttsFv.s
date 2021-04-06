lbl_8076ADE0:
/* 8076ADE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8076ADE4  7C 08 02 A6 */	mflr r0
/* 8076ADE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8076ADEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8076ADF0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8076ADF4  41 82 00 30 */	beq lbl_8076AE24
/* 8076ADF8  3C 60 80 77 */	lis r3, __vt__10dCcD_GStts@ha /* 0x8076B95C@ha */
/* 8076ADFC  38 03 B9 5C */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x8076B95C@l */
/* 8076AE00  90 1F 00 00 */	stw r0, 0(r31)
/* 8076AE04  41 82 00 10 */	beq lbl_8076AE14
/* 8076AE08  3C 60 80 77 */	lis r3, __vt__10cCcD_GStts@ha /* 0x8076B950@ha */
/* 8076AE0C  38 03 B9 50 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x8076B950@l */
/* 8076AE10  90 1F 00 00 */	stw r0, 0(r31)
lbl_8076AE14:
/* 8076AE14  7C 80 07 35 */	extsh. r0, r4
/* 8076AE18  40 81 00 0C */	ble lbl_8076AE24
/* 8076AE1C  7F E3 FB 78 */	mr r3, r31
/* 8076AE20  4B B6 3F 1D */	bl __dl__FPv
lbl_8076AE24:
/* 8076AE24  7F E3 FB 78 */	mr r3, r31
/* 8076AE28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8076AE2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8076AE30  7C 08 03 A6 */	mtlr r0
/* 8076AE34  38 21 00 10 */	addi r1, r1, 0x10
/* 8076AE38  4E 80 00 20 */	blr 
