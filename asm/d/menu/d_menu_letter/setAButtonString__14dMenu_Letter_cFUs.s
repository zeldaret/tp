lbl_801E1518:
/* 801E1518  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801E151C  7C 08 02 A6 */	mflr r0
/* 801E1520  90 01 00 24 */	stw r0, 0x24(r1)
/* 801E1524  39 61 00 20 */	addi r11, r1, 0x20
/* 801E1528  48 18 0C AD */	bl _savegpr_27
/* 801E152C  7C 7B 1B 78 */	mr r27, r3
/* 801E1530  54 9D 04 3F */	clrlwi. r29, r4, 0x10
/* 801E1534  40 82 00 3C */	bne lbl_801E1570
/* 801E1538  3B A0 00 00 */	li r29, 0
/* 801E153C  3B E0 00 00 */	li r31, 0
/* 801E1540  3C 60 80 39 */	lis r3, d_menu_d_menu_letter__stringBase0@ha
/* 801E1544  3B C3 6D C0 */	addi r30, r3, d_menu_d_menu_letter__stringBase0@l
lbl_801E1548:
/* 801E1548  38 1F 02 8C */	addi r0, r31, 0x28c
/* 801E154C  7C 7B 00 2E */	lwzx r3, r27, r0
/* 801E1550  48 11 F1 09 */	bl getStringPtr__10J2DTextBoxCFv
/* 801E1554  38 9E 00 3B */	addi r4, r30, 0x3b
/* 801E1558  48 18 75 D5 */	bl strcpy
/* 801E155C  3B BD 00 01 */	addi r29, r29, 1
/* 801E1560  2C 1D 00 05 */	cmpwi r29, 5
/* 801E1564  3B FF 00 04 */	addi r31, r31, 4
/* 801E1568  41 80 FF E0 */	blt lbl_801E1548
/* 801E156C  48 00 00 44 */	b lbl_801E15B0
lbl_801E1570:
/* 801E1570  3B 80 00 00 */	li r28, 0
/* 801E1574  3B E0 00 00 */	li r31, 0
/* 801E1578  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801E157C  3B C3 01 88 */	addi r30, r3, g_meter2_info@l
lbl_801E1580:
/* 801E1580  38 1F 02 8C */	addi r0, r31, 0x28c
/* 801E1584  7C 7B 00 2E */	lwzx r3, r27, r0
/* 801E1588  48 11 F0 D1 */	bl getStringPtr__10J2DTextBoxCFv
/* 801E158C  7C 65 1B 78 */	mr r5, r3
/* 801E1590  7F C3 F3 78 */	mr r3, r30
/* 801E1594  7F A4 EB 78 */	mr r4, r29
/* 801E1598  38 C0 00 00 */	li r6, 0
/* 801E159C  48 03 AF A9 */	bl getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 801E15A0  3B 9C 00 01 */	addi r28, r28, 1
/* 801E15A4  2C 1C 00 05 */	cmpwi r28, 5
/* 801E15A8  3B FF 00 04 */	addi r31, r31, 4
/* 801E15AC  41 80 FF D4 */	blt lbl_801E1580
lbl_801E15B0:
/* 801E15B0  39 61 00 20 */	addi r11, r1, 0x20
/* 801E15B4  48 18 0C 6D */	bl _restgpr_27
/* 801E15B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801E15BC  7C 08 03 A6 */	mtlr r0
/* 801E15C0  38 21 00 20 */	addi r1, r1, 0x20
/* 801E15C4  4E 80 00 20 */	blr 
