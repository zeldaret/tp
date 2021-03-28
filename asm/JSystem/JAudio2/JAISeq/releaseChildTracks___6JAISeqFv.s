lbl_802A0E48:
/* 802A0E48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A0E4C  7C 08 02 A6 */	mflr r0
/* 802A0E50  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A0E54  39 61 00 20 */	addi r11, r1, 0x20
/* 802A0E58  48 0C 13 79 */	bl _savegpr_26
/* 802A0E5C  7C 7A 1B 78 */	mr r26, r3
/* 802A0E60  3B 80 00 00 */	li r28, 0
/* 802A0E64  3B E0 00 00 */	li r31, 0
lbl_802A0E68:
/* 802A0E68  38 1F 01 D8 */	addi r0, r31, 0x1d8
/* 802A0E6C  7F BA 00 2E */	lwzx r29, r26, r0
/* 802A0E70  28 1D 00 00 */	cmplwi r29, 0
/* 802A0E74  41 82 00 40 */	beq lbl_802A0EB4
/* 802A0E78  3B 60 00 00 */	li r27, 0
/* 802A0E7C  3B C0 00 00 */	li r30, 0
lbl_802A0E80:
/* 802A0E80  38 1E 01 30 */	addi r0, r30, 0x130
/* 802A0E84  7C 7D 00 2E */	lwzx r3, r29, r0
/* 802A0E88  28 03 00 00 */	cmplwi r3, 0
/* 802A0E8C  41 82 00 0C */	beq lbl_802A0E98
/* 802A0E90  38 80 00 01 */	li r4, 1
/* 802A0E94  4B FF 04 89 */	bl __dt__8JASTrackFv
lbl_802A0E98:
/* 802A0E98  3B 7B 00 01 */	addi r27, r27, 1
/* 802A0E9C  28 1B 00 10 */	cmplwi r27, 0x10
/* 802A0EA0  3B DE 00 04 */	addi r30, r30, 4
/* 802A0EA4  41 80 FF DC */	blt lbl_802A0E80
/* 802A0EA8  7F A3 EB 78 */	mr r3, r29
/* 802A0EAC  38 80 00 01 */	li r4, 1
/* 802A0EB0  4B FF 04 6D */	bl __dt__8JASTrackFv
lbl_802A0EB4:
/* 802A0EB4  3B 9C 00 01 */	addi r28, r28, 1
/* 802A0EB8  28 1C 00 02 */	cmplwi r28, 2
/* 802A0EBC  3B FF 00 04 */	addi r31, r31, 4
/* 802A0EC0  41 80 FF A8 */	blt lbl_802A0E68
/* 802A0EC4  39 61 00 20 */	addi r11, r1, 0x20
/* 802A0EC8  48 0C 13 55 */	bl _restgpr_26
/* 802A0ECC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A0ED0  7C 08 03 A6 */	mtlr r0
/* 802A0ED4  38 21 00 20 */	addi r1, r1, 0x20
/* 802A0ED8  4E 80 00 20 */	blr 
