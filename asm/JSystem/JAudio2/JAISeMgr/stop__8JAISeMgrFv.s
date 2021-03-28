lbl_802A02A0:
/* 802A02A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A02A4  7C 08 02 A6 */	mflr r0
/* 802A02A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A02AC  39 61 00 20 */	addi r11, r1, 0x20
/* 802A02B0  48 0C 1F 2D */	bl _savegpr_29
/* 802A02B4  7C 7D 1B 78 */	mr r29, r3
/* 802A02B8  3B C0 00 00 */	li r30, 0
/* 802A02BC  3B E0 00 00 */	li r31, 0
lbl_802A02C0:
/* 802A02C0  38 7F 00 14 */	addi r3, r31, 0x14
/* 802A02C4  7C 7D 1A 14 */	add r3, r29, r3
/* 802A02C8  4B FF FB 6D */	bl stop__16JAISeCategoryMgrFv
/* 802A02CC  3B DE 00 01 */	addi r30, r30, 1
/* 802A02D0  2C 1E 00 10 */	cmpwi r30, 0x10
/* 802A02D4  3B FF 00 6C */	addi r31, r31, 0x6c
/* 802A02D8  41 80 FF E8 */	blt lbl_802A02C0
/* 802A02DC  39 61 00 20 */	addi r11, r1, 0x20
/* 802A02E0  48 0C 1F 49 */	bl _restgpr_29
/* 802A02E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A02E8  7C 08 03 A6 */	mtlr r0
/* 802A02EC  38 21 00 20 */	addi r1, r1, 0x20
/* 802A02F0  4E 80 00 20 */	blr 
