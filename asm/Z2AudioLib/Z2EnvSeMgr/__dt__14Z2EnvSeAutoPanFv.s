lbl_802C5F28:
/* 802C5F28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C5F2C  7C 08 02 A6 */	mflr r0
/* 802C5F30  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C5F34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C5F38  93 C1 00 08 */	stw r30, 8(r1)
/* 802C5F3C  7C 7E 1B 79 */	or. r30, r3, r3
/* 802C5F40  7C 9F 23 78 */	mr r31, r4
/* 802C5F44  41 82 00 1C */	beq lbl_802C5F60
/* 802C5F48  38 80 00 00 */	li r4, 0
/* 802C5F4C  4B FF F9 61 */	bl __dt__11Z2EnvSeBaseFv
/* 802C5F50  7F E0 07 35 */	extsh. r0, r31
/* 802C5F54  40 81 00 0C */	ble lbl_802C5F60
/* 802C5F58  7F C3 F3 78 */	mr r3, r30
/* 802C5F5C  48 00 8D E1 */	bl __dl__FPv
lbl_802C5F60:
/* 802C5F60  7F C3 F3 78 */	mr r3, r30
/* 802C5F64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C5F68  83 C1 00 08 */	lwz r30, 8(r1)
/* 802C5F6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C5F70  7C 08 03 A6 */	mtlr r0
/* 802C5F74  38 21 00 10 */	addi r1, r1, 0x10
/* 802C5F78  4E 80 00 20 */	blr 
