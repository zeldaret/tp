lbl_8031ACD0:
/* 8031ACD0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8031ACD4  7C 08 02 A6 */	mflr r0
/* 8031ACD8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8031ACDC  39 61 00 20 */	addi r11, r1, 0x20
/* 8031ACE0  48 04 74 FD */	bl _savegpr_29
/* 8031ACE4  7C 7D 1B 78 */	mr r29, r3
/* 8031ACE8  3B C0 00 00 */	li r30, 0
/* 8031ACEC  3B E0 00 00 */	li r31, 0
lbl_8031ACF0:
/* 8031ACF0  38 1F 00 38 */	addi r0, r31, 0x38
/* 8031ACF4  7C 7D 00 2E */	lwzx r3, r29, r0
/* 8031ACF8  28 03 00 00 */	cmplwi r3, 0
/* 8031ACFC  41 82 00 0C */	beq lbl_8031AD08
/* 8031AD00  7F C4 F3 78 */	mr r4, r30
/* 8031AD04  48 00 8B C1 */	bl load__9J3DTexMtxCFUl
lbl_8031AD08:
/* 8031AD08  3B DE 00 01 */	addi r30, r30, 1
/* 8031AD0C  28 1E 00 08 */	cmplwi r30, 8
/* 8031AD10  3B FF 00 04 */	addi r31, r31, 4
/* 8031AD14  41 80 FF DC */	blt lbl_8031ACF0
/* 8031AD18  39 61 00 20 */	addi r11, r1, 0x20
/* 8031AD1C  48 04 75 0D */	bl _restgpr_29
/* 8031AD20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8031AD24  7C 08 03 A6 */	mtlr r0
/* 8031AD28  38 21 00 20 */	addi r1, r1, 0x20
/* 8031AD2C  4E 80 00 20 */	blr 
