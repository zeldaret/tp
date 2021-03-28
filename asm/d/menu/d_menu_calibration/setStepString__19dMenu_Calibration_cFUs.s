lbl_801AF898:
/* 801AF898  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801AF89C  7C 08 02 A6 */	mflr r0
/* 801AF8A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801AF8A4  39 61 00 20 */	addi r11, r1, 0x20
/* 801AF8A8  48 1B 29 2D */	bl _savegpr_27
/* 801AF8AC  7C 7B 1B 78 */	mr r27, r3
/* 801AF8B0  54 9D 04 3F */	clrlwi. r29, r4, 0x10
/* 801AF8B4  40 82 00 3C */	bne lbl_801AF8F0
/* 801AF8B8  3B A0 00 00 */	li r29, 0
/* 801AF8BC  3B E0 00 00 */	li r31, 0
/* 801AF8C0  3C 60 80 39 */	lis r3, d_menu_d_menu_calibration__stringBase0@ha
/* 801AF8C4  3B C3 4F 70 */	addi r30, r3, d_menu_d_menu_calibration__stringBase0@l
lbl_801AF8C8:
/* 801AF8C8  38 1F 00 48 */	addi r0, r31, 0x48
/* 801AF8CC  7C 7B 00 2E */	lwzx r3, r27, r0
/* 801AF8D0  48 15 0D 89 */	bl getStringPtr__10J2DTextBoxCFv
/* 801AF8D4  7F C4 F3 78 */	mr r4, r30
/* 801AF8D8  48 1B 92 55 */	bl strcpy
/* 801AF8DC  3B BD 00 01 */	addi r29, r29, 1
/* 801AF8E0  2C 1D 00 03 */	cmpwi r29, 3
/* 801AF8E4  3B FF 00 04 */	addi r31, r31, 4
/* 801AF8E8  41 80 FF E0 */	blt lbl_801AF8C8
/* 801AF8EC  48 00 00 44 */	b lbl_801AF930
lbl_801AF8F0:
/* 801AF8F0  3B 80 00 00 */	li r28, 0
/* 801AF8F4  3B E0 00 00 */	li r31, 0
/* 801AF8F8  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801AF8FC  3B C3 01 88 */	addi r30, r3, g_meter2_info@l
lbl_801AF900:
/* 801AF900  38 1F 00 48 */	addi r0, r31, 0x48
/* 801AF904  7C 7B 00 2E */	lwzx r3, r27, r0
/* 801AF908  48 15 0D 51 */	bl getStringPtr__10J2DTextBoxCFv
/* 801AF90C  7C 65 1B 78 */	mr r5, r3
/* 801AF910  7F C3 F3 78 */	mr r3, r30
/* 801AF914  7F A4 EB 78 */	mr r4, r29
/* 801AF918  38 C0 00 00 */	li r6, 0
/* 801AF91C  48 06 CC 29 */	bl getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 801AF920  3B 9C 00 01 */	addi r28, r28, 1
/* 801AF924  2C 1C 00 03 */	cmpwi r28, 3
/* 801AF928  3B FF 00 04 */	addi r31, r31, 4
/* 801AF92C  41 80 FF D4 */	blt lbl_801AF900
lbl_801AF930:
/* 801AF930  39 61 00 20 */	addi r11, r1, 0x20
/* 801AF934  48 1B 28 ED */	bl _restgpr_27
/* 801AF938  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801AF93C  7C 08 03 A6 */	mtlr r0
/* 801AF940  38 21 00 20 */	addi r1, r1, 0x20
/* 801AF944  4E 80 00 20 */	blr 
