lbl_801C5F68:
/* 801C5F68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C5F6C  7C 08 02 A6 */	mflr r0
/* 801C5F70  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C5F74  39 61 00 20 */	addi r11, r1, 0x20
/* 801C5F78  48 19 C2 5D */	bl _savegpr_27
/* 801C5F7C  7C 7B 1B 78 */	mr r27, r3
/* 801C5F80  54 9D 04 3F */	clrlwi. r29, r4, 0x10
/* 801C5F84  40 82 00 3C */	bne lbl_801C5FC0
/* 801C5F88  3B A0 00 00 */	li r29, 0
/* 801C5F8C  3B E0 00 00 */	li r31, 0
/* 801C5F90  3C 60 80 39 */	lis r3, d_menu_d_menu_fishing__stringBase0@ha /* 0x80396068@ha */
/* 801C5F94  3B C3 60 68 */	addi r30, r3, d_menu_d_menu_fishing__stringBase0@l /* 0x80396068@l */
lbl_801C5F98:
/* 801C5F98  38 1F 00 34 */	addi r0, r31, 0x34
/* 801C5F9C  7C 7B 00 2E */	lwzx r3, r27, r0
/* 801C5FA0  48 13 A6 B9 */	bl getStringPtr__10J2DTextBoxCFv
/* 801C5FA4  38 9E 00 3E */	addi r4, r30, 0x3e
/* 801C5FA8  48 1A 2B 85 */	bl strcpy
/* 801C5FAC  3B BD 00 01 */	addi r29, r29, 1
/* 801C5FB0  2C 1D 00 05 */	cmpwi r29, 5
/* 801C5FB4  3B FF 00 04 */	addi r31, r31, 4
/* 801C5FB8  41 80 FF E0 */	blt lbl_801C5F98
/* 801C5FBC  48 00 00 44 */	b lbl_801C6000
lbl_801C5FC0:
/* 801C5FC0  3B 80 00 00 */	li r28, 0
/* 801C5FC4  3B E0 00 00 */	li r31, 0
/* 801C5FC8  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801C5FCC  3B C3 01 88 */	addi r30, r3, g_meter2_info@l /* 0x80430188@l */
lbl_801C5FD0:
/* 801C5FD0  38 1F 00 34 */	addi r0, r31, 0x34
/* 801C5FD4  7C 7B 00 2E */	lwzx r3, r27, r0
/* 801C5FD8  48 13 A6 81 */	bl getStringPtr__10J2DTextBoxCFv
/* 801C5FDC  7C 65 1B 78 */	mr r5, r3
/* 801C5FE0  7F C3 F3 78 */	mr r3, r30
/* 801C5FE4  7F A4 EB 78 */	mr r4, r29
/* 801C5FE8  38 C0 00 00 */	li r6, 0
/* 801C5FEC  48 05 65 59 */	bl getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 801C5FF0  3B 9C 00 01 */	addi r28, r28, 1
/* 801C5FF4  2C 1C 00 05 */	cmpwi r28, 5
/* 801C5FF8  3B FF 00 04 */	addi r31, r31, 4
/* 801C5FFC  41 80 FF D4 */	blt lbl_801C5FD0
lbl_801C6000:
/* 801C6000  39 61 00 20 */	addi r11, r1, 0x20
/* 801C6004  48 19 C2 1D */	bl _restgpr_27
/* 801C6008  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C600C  7C 08 03 A6 */	mtlr r0
/* 801C6010  38 21 00 20 */	addi r1, r1, 0x20
/* 801C6014  4E 80 00 20 */	blr 
