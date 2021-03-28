lbl_801F93C0:
/* 801F93C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F93C4  7C 08 02 A6 */	mflr r0
/* 801F93C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F93CC  39 61 00 20 */	addi r11, r1, 0x20
/* 801F93D0  48 16 8E 05 */	bl _savegpr_27
/* 801F93D4  7C 7B 1B 78 */	mr r27, r3
/* 801F93D8  54 9D 04 3F */	clrlwi. r29, r4, 0x10
/* 801F93DC  40 82 00 3C */	bne lbl_801F9418
/* 801F93E0  3B A0 00 00 */	li r29, 0
/* 801F93E4  3B E0 00 00 */	li r31, 0
/* 801F93E8  3C 60 80 39 */	lis r3, d_menu_d_menu_skill__stringBase0@ha
/* 801F93EC  3B C3 7D B8 */	addi r30, r3, d_menu_d_menu_skill__stringBase0@l
lbl_801F93F0:
/* 801F93F0  38 1F 01 48 */	addi r0, r31, 0x148
/* 801F93F4  7C 7B 00 2E */	lwzx r3, r27, r0
/* 801F93F8  48 10 72 61 */	bl getStringPtr__10J2DTextBoxCFv
/* 801F93FC  38 9E 00 2F */	addi r4, r30, 0x2f
/* 801F9400  48 16 F7 2D */	bl strcpy
/* 801F9404  3B BD 00 01 */	addi r29, r29, 1
/* 801F9408  2C 1D 00 04 */	cmpwi r29, 4
/* 801F940C  3B FF 00 04 */	addi r31, r31, 4
/* 801F9410  41 80 FF E0 */	blt lbl_801F93F0
/* 801F9414  48 00 00 44 */	b lbl_801F9458
lbl_801F9418:
/* 801F9418  3B 80 00 00 */	li r28, 0
/* 801F941C  3B E0 00 00 */	li r31, 0
/* 801F9420  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801F9424  3B C3 01 88 */	addi r30, r3, g_meter2_info@l
lbl_801F9428:
/* 801F9428  38 1F 01 48 */	addi r0, r31, 0x148
/* 801F942C  7C 7B 00 2E */	lwzx r3, r27, r0
/* 801F9430  48 10 72 29 */	bl getStringPtr__10J2DTextBoxCFv
/* 801F9434  7C 65 1B 78 */	mr r5, r3
/* 801F9438  7F C3 F3 78 */	mr r3, r30
/* 801F943C  7F A4 EB 78 */	mr r4, r29
/* 801F9440  38 C0 00 00 */	li r6, 0
/* 801F9444  48 02 31 01 */	bl getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 801F9448  3B 9C 00 01 */	addi r28, r28, 1
/* 801F944C  2C 1C 00 04 */	cmpwi r28, 4
/* 801F9450  3B FF 00 04 */	addi r31, r31, 4
/* 801F9454  41 80 FF D4 */	blt lbl_801F9428
lbl_801F9458:
/* 801F9458  39 61 00 20 */	addi r11, r1, 0x20
/* 801F945C  48 16 8D C5 */	bl _restgpr_27
/* 801F9460  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F9464  7C 08 03 A6 */	mtlr r0
/* 801F9468  38 21 00 20 */	addi r1, r1, 0x20
/* 801F946C  4E 80 00 20 */	blr 
