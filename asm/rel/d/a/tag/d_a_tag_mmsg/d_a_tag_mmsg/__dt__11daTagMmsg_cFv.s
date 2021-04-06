lbl_80D5BAB4:
/* 80D5BAB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5BAB8  7C 08 02 A6 */	mflr r0
/* 80D5BABC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5BAC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5BAC4  93 C1 00 08 */	stw r30, 8(r1)
/* 80D5BAC8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D5BACC  7C 9F 23 78 */	mr r31, r4
/* 80D5BAD0  41 82 00 1C */	beq lbl_80D5BAEC
/* 80D5BAD4  38 80 00 00 */	li r4, 0
/* 80D5BAD8  4B 2B D1 B5 */	bl __dt__10fopAc_ac_cFv
/* 80D5BADC  7F E0 07 35 */	extsh. r0, r31
/* 80D5BAE0  40 81 00 0C */	ble lbl_80D5BAEC
/* 80D5BAE4  7F C3 F3 78 */	mr r3, r30
/* 80D5BAE8  4B 57 32 55 */	bl __dl__FPv
lbl_80D5BAEC:
/* 80D5BAEC  7F C3 F3 78 */	mr r3, r30
/* 80D5BAF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5BAF4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D5BAF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5BAFC  7C 08 03 A6 */	mtlr r0
/* 80D5BB00  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5BB04  4E 80 00 20 */	blr 
