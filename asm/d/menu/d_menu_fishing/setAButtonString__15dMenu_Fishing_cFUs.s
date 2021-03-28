lbl_801C5EB8:
/* 801C5EB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C5EBC  7C 08 02 A6 */	mflr r0
/* 801C5EC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C5EC4  39 61 00 20 */	addi r11, r1, 0x20
/* 801C5EC8  48 19 C3 0D */	bl _savegpr_27
/* 801C5ECC  7C 7B 1B 78 */	mr r27, r3
/* 801C5ED0  54 9D 04 3F */	clrlwi. r29, r4, 0x10
/* 801C5ED4  40 82 00 3C */	bne lbl_801C5F10
/* 801C5ED8  3B A0 00 00 */	li r29, 0
/* 801C5EDC  3B E0 00 00 */	li r31, 0
/* 801C5EE0  3C 60 80 39 */	lis r3, d_menu_d_menu_fishing__stringBase0@ha
/* 801C5EE4  3B C3 60 68 */	addi r30, r3, d_menu_d_menu_fishing__stringBase0@l
lbl_801C5EE8:
/* 801C5EE8  38 1F 00 20 */	addi r0, r31, 0x20
/* 801C5EEC  7C 7B 00 2E */	lwzx r3, r27, r0
/* 801C5EF0  48 13 A7 69 */	bl getStringPtr__10J2DTextBoxCFv
/* 801C5EF4  38 9E 00 3E */	addi r4, r30, 0x3e
/* 801C5EF8  48 1A 2C 35 */	bl strcpy
/* 801C5EFC  3B BD 00 01 */	addi r29, r29, 1
/* 801C5F00  2C 1D 00 05 */	cmpwi r29, 5
/* 801C5F04  3B FF 00 04 */	addi r31, r31, 4
/* 801C5F08  41 80 FF E0 */	blt lbl_801C5EE8
/* 801C5F0C  48 00 00 44 */	b lbl_801C5F50
lbl_801C5F10:
/* 801C5F10  3B 80 00 00 */	li r28, 0
/* 801C5F14  3B E0 00 00 */	li r31, 0
/* 801C5F18  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801C5F1C  3B C3 01 88 */	addi r30, r3, g_meter2_info@l
lbl_801C5F20:
/* 801C5F20  38 1F 00 20 */	addi r0, r31, 0x20
/* 801C5F24  7C 7B 00 2E */	lwzx r3, r27, r0
/* 801C5F28  48 13 A7 31 */	bl getStringPtr__10J2DTextBoxCFv
/* 801C5F2C  7C 65 1B 78 */	mr r5, r3
/* 801C5F30  7F C3 F3 78 */	mr r3, r30
/* 801C5F34  7F A4 EB 78 */	mr r4, r29
/* 801C5F38  38 C0 00 00 */	li r6, 0
/* 801C5F3C  48 05 66 09 */	bl getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 801C5F40  3B 9C 00 01 */	addi r28, r28, 1
/* 801C5F44  2C 1C 00 05 */	cmpwi r28, 5
/* 801C5F48  3B FF 00 04 */	addi r31, r31, 4
/* 801C5F4C  41 80 FF D4 */	blt lbl_801C5F20
lbl_801C5F50:
/* 801C5F50  39 61 00 20 */	addi r11, r1, 0x20
/* 801C5F54  48 19 C2 CD */	bl _restgpr_27
/* 801C5F58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C5F5C  7C 08 03 A6 */	mtlr r0
/* 801C5F60  38 21 00 20 */	addi r1, r1, 0x20
/* 801C5F64  4E 80 00 20 */	blr 
