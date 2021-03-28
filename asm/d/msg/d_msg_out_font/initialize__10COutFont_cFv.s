lbl_80226CF8:
/* 80226CF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80226CFC  7C 08 02 A6 */	mflr r0
/* 80226D00  90 01 00 24 */	stw r0, 0x24(r1)
/* 80226D04  39 61 00 20 */	addi r11, r1, 0x20
/* 80226D08  48 13 B4 D5 */	bl _savegpr_29
/* 80226D0C  7C 7D 1B 78 */	mr r29, r3
/* 80226D10  3B C0 00 00 */	li r30, 0
/* 80226D14  3B E0 00 00 */	li r31, 0
lbl_80226D18:
/* 80226D18  38 1F 00 04 */	addi r0, r31, 4
/* 80226D1C  7C 7D 00 2E */	lwzx r3, r29, r0
/* 80226D20  4B FF EF 1D */	bl initialize__13COutFontSet_cFv
/* 80226D24  3B DE 00 01 */	addi r30, r30, 1
/* 80226D28  2C 1E 00 23 */	cmpwi r30, 0x23
/* 80226D2C  3B FF 00 04 */	addi r31, r31, 4
/* 80226D30  41 80 FF E8 */	blt lbl_80226D18
/* 80226D34  39 61 00 20 */	addi r11, r1, 0x20
/* 80226D38  48 13 B4 F1 */	bl _restgpr_29
/* 80226D3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80226D40  7C 08 03 A6 */	mtlr r0
/* 80226D44  38 21 00 20 */	addi r1, r1, 0x20
/* 80226D48  4E 80 00 20 */	blr 
