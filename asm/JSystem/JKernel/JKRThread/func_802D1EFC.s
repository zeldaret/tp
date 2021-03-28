lbl_802D1EFC:
/* 802D1EFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D1F00  7C 08 02 A6 */	mflr r0
/* 802D1F04  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D1F08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D1F0C  93 C1 00 08 */	stw r30, 8(r1)
/* 802D1F10  7C 7E 1B 79 */	or. r30, r3, r3
/* 802D1F14  7C 9F 23 78 */	mr r31, r4
/* 802D1F18  41 82 00 1C */	beq lbl_802D1F34
/* 802D1F1C  38 80 00 00 */	li r4, 0
/* 802D1F20  48 00 9F 8D */	bl __dt__10JSUPtrListFv
/* 802D1F24  7F E0 07 35 */	extsh. r0, r31
/* 802D1F28  40 81 00 0C */	ble lbl_802D1F34
/* 802D1F2C  7F C3 F3 78 */	mr r3, r30
/* 802D1F30  4B FF CE 0D */	bl __dl__FPv
lbl_802D1F34:
/* 802D1F34  7F C3 F3 78 */	mr r3, r30
/* 802D1F38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D1F3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D1F40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D1F44  7C 08 03 A6 */	mtlr r0
/* 802D1F48  38 21 00 10 */	addi r1, r1, 0x10
/* 802D1F4C  4E 80 00 20 */	blr 
