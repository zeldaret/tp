lbl_80B2BAC0:
/* 80B2BAC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2BAC4  7C 08 02 A6 */	mflr r0
/* 80B2BAC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B2BACC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B2BAD0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B2BAD4  41 82 00 1C */	beq lbl_80B2BAF0
/* 80B2BAD8  3C A0 80 B3 */	lis r5, __vt__10cCcD_GStts@ha /* 0x80B2DBDC@ha */
/* 80B2BADC  38 05 DB DC */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80B2DBDC@l */
/* 80B2BAE0  90 1F 00 00 */	stw r0, 0(r31)
/* 80B2BAE4  7C 80 07 35 */	extsh. r0, r4
/* 80B2BAE8  40 81 00 08 */	ble lbl_80B2BAF0
/* 80B2BAEC  4B 7A 32 51 */	bl __dl__FPv
lbl_80B2BAF0:
/* 80B2BAF0  7F E3 FB 78 */	mr r3, r31
/* 80B2BAF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B2BAF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2BAFC  7C 08 03 A6 */	mtlr r0
/* 80B2BB00  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2BB04  4E 80 00 20 */	blr 
