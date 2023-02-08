lbl_802C5D1C:
/* 802C5D1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C5D20  7C 08 02 A6 */	mflr r0
/* 802C5D24  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C5D28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C5D2C  93 C1 00 08 */	stw r30, 8(r1)
/* 802C5D30  7C 7E 1B 79 */	or. r30, r3, r3
/* 802C5D34  7C 9F 23 78 */	mr r31, r4
/* 802C5D38  41 82 00 1C */	beq lbl_802C5D54
/* 802C5D3C  38 80 00 00 */	li r4, 0
/* 802C5D40  4B FF FB 6D */	bl __dt__11Z2EnvSeBaseFv
/* 802C5D44  7F E0 07 35 */	extsh. r0, r31
/* 802C5D48  40 81 00 0C */	ble lbl_802C5D54
/* 802C5D4C  7F C3 F3 78 */	mr r3, r30
/* 802C5D50  48 00 8F ED */	bl __dl__FPv
lbl_802C5D54:
/* 802C5D54  7F C3 F3 78 */	mr r3, r30
/* 802C5D58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C5D5C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802C5D60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C5D64  7C 08 03 A6 */	mtlr r0
/* 802C5D68  38 21 00 10 */	addi r1, r1, 0x10
/* 802C5D6C  4E 80 00 20 */	blr 
