lbl_802D5ECC:
/* 802D5ECC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D5ED0  7C 08 02 A6 */	mflr r0
/* 802D5ED4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D5ED8  39 61 00 20 */	addi r11, r1, 0x20
/* 802D5EDC  48 08 C3 01 */	bl _savegpr_29
/* 802D5EE0  7C 7D 1B 78 */	mr r29, r3
/* 802D5EE4  7C 9E 23 78 */	mr r30, r4
/* 802D5EE8  7C BF 2B 78 */	mr r31, r5
/* 802D5EEC  7C C4 33 78 */	mr r4, r6
/* 802D5EF0  48 00 07 95 */	bl findIdxResource__10JKRArchiveCFUl
/* 802D5EF4  7C 66 1B 79 */	or. r6, r3, r3
/* 802D5EF8  41 82 00 2C */	beq lbl_802D5F24
/* 802D5EFC  7F A3 EB 78 */	mr r3, r29
/* 802D5F00  7F C4 F3 78 */	mr r4, r30
/* 802D5F04  7F E5 FB 78 */	mr r5, r31
/* 802D5F08  38 E1 00 08 */	addi r7, r1, 8
/* 802D5F0C  81 9D 00 00 */	lwz r12, 0(r29)
/* 802D5F10  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 802D5F14  7D 89 03 A6 */	mtctr r12
/* 802D5F18  4E 80 04 21 */	bctrl 
/* 802D5F1C  80 61 00 08 */	lwz r3, 8(r1)
/* 802D5F20  48 00 00 08 */	b lbl_802D5F28
lbl_802D5F24:
/* 802D5F24  38 60 00 00 */	li r3, 0
lbl_802D5F28:
/* 802D5F28  39 61 00 20 */	addi r11, r1, 0x20
/* 802D5F2C  48 08 C2 FD */	bl _restgpr_29
/* 802D5F30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D5F34  7C 08 03 A6 */	mtlr r0
/* 802D5F38  38 21 00 20 */	addi r1, r1, 0x20
/* 802D5F3C  4E 80 00 20 */	blr 
