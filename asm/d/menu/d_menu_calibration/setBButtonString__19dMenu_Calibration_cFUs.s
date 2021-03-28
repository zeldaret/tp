lbl_801AF7E8:
/* 801AF7E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801AF7EC  7C 08 02 A6 */	mflr r0
/* 801AF7F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801AF7F4  39 61 00 20 */	addi r11, r1, 0x20
/* 801AF7F8  48 1B 29 DD */	bl _savegpr_27
/* 801AF7FC  7C 7B 1B 78 */	mr r27, r3
/* 801AF800  54 9D 04 3F */	clrlwi. r29, r4, 0x10
/* 801AF804  40 82 00 3C */	bne lbl_801AF840
/* 801AF808  3B A0 00 00 */	li r29, 0
/* 801AF80C  3B E0 00 00 */	li r31, 0
/* 801AF810  3C 60 80 39 */	lis r3, d_menu_d_menu_calibration__stringBase0@ha
/* 801AF814  3B C3 4F 70 */	addi r30, r3, d_menu_d_menu_calibration__stringBase0@l
lbl_801AF818:
/* 801AF818  38 1F 00 28 */	addi r0, r31, 0x28
/* 801AF81C  7C 7B 00 2E */	lwzx r3, r27, r0
/* 801AF820  48 15 0E 39 */	bl getStringPtr__10J2DTextBoxCFv
/* 801AF824  7F C4 F3 78 */	mr r4, r30
/* 801AF828  48 1B 93 05 */	bl strcpy
/* 801AF82C  3B BD 00 01 */	addi r29, r29, 1
/* 801AF830  2C 1D 00 05 */	cmpwi r29, 5
/* 801AF834  3B FF 00 04 */	addi r31, r31, 4
/* 801AF838  41 80 FF E0 */	blt lbl_801AF818
/* 801AF83C  48 00 00 44 */	b lbl_801AF880
lbl_801AF840:
/* 801AF840  3B 80 00 00 */	li r28, 0
/* 801AF844  3B E0 00 00 */	li r31, 0
/* 801AF848  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801AF84C  3B C3 01 88 */	addi r30, r3, g_meter2_info@l
lbl_801AF850:
/* 801AF850  38 1F 00 28 */	addi r0, r31, 0x28
/* 801AF854  7C 7B 00 2E */	lwzx r3, r27, r0
/* 801AF858  48 15 0E 01 */	bl getStringPtr__10J2DTextBoxCFv
/* 801AF85C  7C 65 1B 78 */	mr r5, r3
/* 801AF860  7F C3 F3 78 */	mr r3, r30
/* 801AF864  7F A4 EB 78 */	mr r4, r29
/* 801AF868  38 C0 00 00 */	li r6, 0
/* 801AF86C  48 06 CC D9 */	bl getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 801AF870  3B 9C 00 01 */	addi r28, r28, 1
/* 801AF874  2C 1C 00 05 */	cmpwi r28, 5
/* 801AF878  3B FF 00 04 */	addi r31, r31, 4
/* 801AF87C  41 80 FF D4 */	blt lbl_801AF850
lbl_801AF880:
/* 801AF880  39 61 00 20 */	addi r11, r1, 0x20
/* 801AF884  48 1B 29 9D */	bl _restgpr_27
/* 801AF888  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801AF88C  7C 08 03 A6 */	mtlr r0
/* 801AF890  38 21 00 20 */	addi r1, r1, 0x20
/* 801AF894  4E 80 00 20 */	blr 
