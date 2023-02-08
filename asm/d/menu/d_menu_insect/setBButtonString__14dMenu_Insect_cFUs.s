lbl_801DA3B4:
/* 801DA3B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DA3B8  7C 08 02 A6 */	mflr r0
/* 801DA3BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DA3C0  39 61 00 20 */	addi r11, r1, 0x20
/* 801DA3C4  48 18 7E 11 */	bl _savegpr_27
/* 801DA3C8  7C 7B 1B 78 */	mr r27, r3
/* 801DA3CC  54 9D 04 3F */	clrlwi. r29, r4, 0x10
/* 801DA3D0  40 82 00 3C */	bne lbl_801DA40C
/* 801DA3D4  3B A0 00 00 */	li r29, 0
/* 801DA3D8  3B E0 00 00 */	li r31, 0
/* 801DA3DC  3C 60 80 39 */	lis r3, d_menu_d_menu_insect__stringBase0@ha /* 0x803968C0@ha */
/* 801DA3E0  3B C3 68 C0 */	addi r30, r3, d_menu_d_menu_insect__stringBase0@l /* 0x803968C0@l */
lbl_801DA3E4:
/* 801DA3E4  38 1F 00 40 */	addi r0, r31, 0x40
/* 801DA3E8  7C 7B 00 2E */	lwzx r3, r27, r0
/* 801DA3EC  48 12 62 6D */	bl getStringPtr__10J2DTextBoxCFv
/* 801DA3F0  38 9E 00 32 */	addi r4, r30, 0x32
/* 801DA3F4  48 18 E7 39 */	bl strcpy
/* 801DA3F8  3B BD 00 01 */	addi r29, r29, 1
/* 801DA3FC  2C 1D 00 05 */	cmpwi r29, 5
/* 801DA400  3B FF 00 04 */	addi r31, r31, 4
/* 801DA404  41 80 FF E0 */	blt lbl_801DA3E4
/* 801DA408  48 00 00 44 */	b lbl_801DA44C
lbl_801DA40C:
/* 801DA40C  3B 80 00 00 */	li r28, 0
/* 801DA410  3B E0 00 00 */	li r31, 0
/* 801DA414  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801DA418  3B C3 01 88 */	addi r30, r3, g_meter2_info@l /* 0x80430188@l */
lbl_801DA41C:
/* 801DA41C  38 1F 00 40 */	addi r0, r31, 0x40
/* 801DA420  7C 7B 00 2E */	lwzx r3, r27, r0
/* 801DA424  48 12 62 35 */	bl getStringPtr__10J2DTextBoxCFv
/* 801DA428  7C 65 1B 78 */	mr r5, r3
/* 801DA42C  7F C3 F3 78 */	mr r3, r30
/* 801DA430  7F A4 EB 78 */	mr r4, r29
/* 801DA434  38 C0 00 00 */	li r6, 0
/* 801DA438  48 04 21 0D */	bl getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 801DA43C  3B 9C 00 01 */	addi r28, r28, 1
/* 801DA440  2C 1C 00 05 */	cmpwi r28, 5
/* 801DA444  3B FF 00 04 */	addi r31, r31, 4
/* 801DA448  41 80 FF D4 */	blt lbl_801DA41C
lbl_801DA44C:
/* 801DA44C  39 61 00 20 */	addi r11, r1, 0x20
/* 801DA450  48 18 7D D1 */	bl _restgpr_27
/* 801DA454  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DA458  7C 08 03 A6 */	mtlr r0
/* 801DA45C  38 21 00 20 */	addi r1, r1, 0x20
/* 801DA460  4E 80 00 20 */	blr 
