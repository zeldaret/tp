lbl_801D7210:
/* 801D7210  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801D7214  7C 08 02 A6 */	mflr r0
/* 801D7218  90 01 00 34 */	stw r0, 0x34(r1)
/* 801D721C  39 61 00 30 */	addi r11, r1, 0x30
/* 801D7220  48 18 AF AD */	bl _savegpr_25
/* 801D7224  7C 79 1B 78 */	mr r25, r3
/* 801D7228  7C 9A 23 79 */	or. r26, r4, r4
/* 801D722C  7C BB 2B 78 */	mr r27, r5
/* 801D7230  40 82 00 10 */	bne lbl_801D7240
/* 801D7234  38 00 00 00 */	li r0, 0
/* 801D7238  98 19 00 C1 */	stb r0, 0xc1(r25)
/* 801D723C  48 00 00 80 */	b lbl_801D72BC
lbl_801D7240:
/* 801D7240  3B 80 00 00 */	li r28, 0
/* 801D7244  3B E0 00 00 */	li r31, 0
/* 801D7248  3C 60 80 39 */	lis r3, font_bt_6176@ha
/* 801D724C  3B A3 65 30 */	addi r29, r3, font_bt_6176@l
/* 801D7250  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801D7254  3B C3 01 88 */	addi r30, r3, g_meter2_info@l
lbl_801D7258:
/* 801D7258  80 79 00 08 */	lwz r3, 8(r25)
/* 801D725C  7C 9D FA 14 */	add r4, r29, r31
/* 801D7260  80 A4 00 00 */	lwz r5, 0(r4)
/* 801D7264  80 C4 00 04 */	lwz r6, 4(r4)
/* 801D7268  81 83 00 00 */	lwz r12, 0(r3)
/* 801D726C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D7270  7D 89 03 A6 */	mtctr r12
/* 801D7274  4E 80 04 21 */	bctrl 
/* 801D7278  48 12 93 E1 */	bl getStringPtr__10J2DTextBoxCFv
/* 801D727C  7C 65 1B 78 */	mr r5, r3
/* 801D7280  7F C3 F3 78 */	mr r3, r30
/* 801D7284  7F 44 D3 78 */	mr r4, r26
/* 801D7288  38 C0 00 00 */	li r6, 0
/* 801D728C  48 04 52 B9 */	bl getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 801D7290  3B 9C 00 01 */	addi r28, r28, 1
/* 801D7294  2C 1C 00 05 */	cmpwi r28, 5
/* 801D7298  3B FF 00 08 */	addi r31, r31, 8
/* 801D729C  41 80 FF BC */	blt lbl_801D7258
/* 801D72A0  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 801D72A4  28 00 00 FF */	cmplwi r0, 0xff
/* 801D72A8  40 82 00 10 */	bne lbl_801D72B8
/* 801D72AC  38 00 00 02 */	li r0, 2
/* 801D72B0  98 19 00 C1 */	stb r0, 0xc1(r25)
/* 801D72B4  48 00 00 08 */	b lbl_801D72BC
lbl_801D72B8:
/* 801D72B8  9B 79 00 C1 */	stb r27, 0xc1(r25)
lbl_801D72BC:
/* 801D72BC  39 61 00 30 */	addi r11, r1, 0x30
/* 801D72C0  48 18 AF 59 */	bl _restgpr_25
/* 801D72C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801D72C8  7C 08 03 A6 */	mtlr r0
/* 801D72CC  38 21 00 30 */	addi r1, r1, 0x30
/* 801D72D0  4E 80 00 20 */	blr 
