lbl_801DA304:
/* 801DA304  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DA308  7C 08 02 A6 */	mflr r0
/* 801DA30C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DA310  39 61 00 20 */	addi r11, r1, 0x20
/* 801DA314  48 18 7E C1 */	bl _savegpr_27
/* 801DA318  7C 7B 1B 78 */	mr r27, r3
/* 801DA31C  54 9D 04 3F */	clrlwi. r29, r4, 0x10
/* 801DA320  40 82 00 3C */	bne lbl_801DA35C
/* 801DA324  3B A0 00 00 */	li r29, 0
/* 801DA328  3B E0 00 00 */	li r31, 0
/* 801DA32C  3C 60 80 39 */	lis r3, d_menu_d_menu_insect__stringBase0@ha /* 0x803968C0@ha */
/* 801DA330  3B C3 68 C0 */	addi r30, r3, d_menu_d_menu_insect__stringBase0@l /* 0x803968C0@l */
lbl_801DA334:
/* 801DA334  38 1F 00 2C */	addi r0, r31, 0x2c
/* 801DA338  7C 7B 00 2E */	lwzx r3, r27, r0
/* 801DA33C  48 12 63 1D */	bl getStringPtr__10J2DTextBoxCFv
/* 801DA340  38 9E 00 32 */	addi r4, r30, 0x32
/* 801DA344  48 18 E7 E9 */	bl strcpy
/* 801DA348  3B BD 00 01 */	addi r29, r29, 1
/* 801DA34C  2C 1D 00 05 */	cmpwi r29, 5
/* 801DA350  3B FF 00 04 */	addi r31, r31, 4
/* 801DA354  41 80 FF E0 */	blt lbl_801DA334
/* 801DA358  48 00 00 44 */	b lbl_801DA39C
lbl_801DA35C:
/* 801DA35C  3B 80 00 00 */	li r28, 0
/* 801DA360  3B E0 00 00 */	li r31, 0
/* 801DA364  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801DA368  3B C3 01 88 */	addi r30, r3, g_meter2_info@l /* 0x80430188@l */
lbl_801DA36C:
/* 801DA36C  38 1F 00 2C */	addi r0, r31, 0x2c
/* 801DA370  7C 7B 00 2E */	lwzx r3, r27, r0
/* 801DA374  48 12 62 E5 */	bl getStringPtr__10J2DTextBoxCFv
/* 801DA378  7C 65 1B 78 */	mr r5, r3
/* 801DA37C  7F C3 F3 78 */	mr r3, r30
/* 801DA380  7F A4 EB 78 */	mr r4, r29
/* 801DA384  38 C0 00 00 */	li r6, 0
/* 801DA388  48 04 21 BD */	bl getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 801DA38C  3B 9C 00 01 */	addi r28, r28, 1
/* 801DA390  2C 1C 00 05 */	cmpwi r28, 5
/* 801DA394  3B FF 00 04 */	addi r31, r31, 4
/* 801DA398  41 80 FF D4 */	blt lbl_801DA36C
lbl_801DA39C:
/* 801DA39C  39 61 00 20 */	addi r11, r1, 0x20
/* 801DA3A0  48 18 7E 81 */	bl _restgpr_27
/* 801DA3A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DA3A8  7C 08 03 A6 */	mtlr r0
/* 801DA3AC  38 21 00 20 */	addi r1, r1, 0x20
/* 801DA3B0  4E 80 00 20 */	blr 
