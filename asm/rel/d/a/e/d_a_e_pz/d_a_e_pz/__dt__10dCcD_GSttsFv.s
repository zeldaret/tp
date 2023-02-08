lbl_80760AB8:
/* 80760AB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80760ABC  7C 08 02 A6 */	mflr r0
/* 80760AC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80760AC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80760AC8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80760ACC  41 82 00 30 */	beq lbl_80760AFC
/* 80760AD0  3C 60 80 76 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80761D48@ha */
/* 80760AD4  38 03 1D 48 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80761D48@l */
/* 80760AD8  90 1F 00 00 */	stw r0, 0(r31)
/* 80760ADC  41 82 00 10 */	beq lbl_80760AEC
/* 80760AE0  3C 60 80 76 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80761D3C@ha */
/* 80760AE4  38 03 1D 3C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80761D3C@l */
/* 80760AE8  90 1F 00 00 */	stw r0, 0(r31)
lbl_80760AEC:
/* 80760AEC  7C 80 07 35 */	extsh. r0, r4
/* 80760AF0  40 81 00 0C */	ble lbl_80760AFC
/* 80760AF4  7F E3 FB 78 */	mr r3, r31
/* 80760AF8  4B B6 E2 45 */	bl __dl__FPv
lbl_80760AFC:
/* 80760AFC  7F E3 FB 78 */	mr r3, r31
/* 80760B00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80760B04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80760B08  7C 08 03 A6 */	mtlr r0
/* 80760B0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80760B10  4E 80 00 20 */	blr 
