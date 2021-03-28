lbl_801AF738:
/* 801AF738  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801AF73C  7C 08 02 A6 */	mflr r0
/* 801AF740  90 01 00 24 */	stw r0, 0x24(r1)
/* 801AF744  39 61 00 20 */	addi r11, r1, 0x20
/* 801AF748  48 1B 2A 8D */	bl _savegpr_27
/* 801AF74C  7C 7B 1B 78 */	mr r27, r3
/* 801AF750  54 9D 04 3F */	clrlwi. r29, r4, 0x10
/* 801AF754  40 82 00 3C */	bne lbl_801AF790
/* 801AF758  3B A0 00 00 */	li r29, 0
/* 801AF75C  3B E0 00 00 */	li r31, 0
/* 801AF760  3C 60 80 39 */	lis r3, d_menu_d_menu_calibration__stringBase0@ha
/* 801AF764  3B C3 4F 70 */	addi r30, r3, d_menu_d_menu_calibration__stringBase0@l
lbl_801AF768:
/* 801AF768  38 1F 00 14 */	addi r0, r31, 0x14
/* 801AF76C  7C 7B 00 2E */	lwzx r3, r27, r0
/* 801AF770  48 15 0E E9 */	bl getStringPtr__10J2DTextBoxCFv
/* 801AF774  7F C4 F3 78 */	mr r4, r30
/* 801AF778  48 1B 93 B5 */	bl strcpy
/* 801AF77C  3B BD 00 01 */	addi r29, r29, 1
/* 801AF780  2C 1D 00 05 */	cmpwi r29, 5
/* 801AF784  3B FF 00 04 */	addi r31, r31, 4
/* 801AF788  41 80 FF E0 */	blt lbl_801AF768
/* 801AF78C  48 00 00 44 */	b lbl_801AF7D0
lbl_801AF790:
/* 801AF790  3B 80 00 00 */	li r28, 0
/* 801AF794  3B E0 00 00 */	li r31, 0
/* 801AF798  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801AF79C  3B C3 01 88 */	addi r30, r3, g_meter2_info@l
lbl_801AF7A0:
/* 801AF7A0  38 1F 00 14 */	addi r0, r31, 0x14
/* 801AF7A4  7C 7B 00 2E */	lwzx r3, r27, r0
/* 801AF7A8  48 15 0E B1 */	bl getStringPtr__10J2DTextBoxCFv
/* 801AF7AC  7C 65 1B 78 */	mr r5, r3
/* 801AF7B0  7F C3 F3 78 */	mr r3, r30
/* 801AF7B4  7F A4 EB 78 */	mr r4, r29
/* 801AF7B8  38 C0 00 00 */	li r6, 0
/* 801AF7BC  48 06 CD 89 */	bl getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 801AF7C0  3B 9C 00 01 */	addi r28, r28, 1
/* 801AF7C4  2C 1C 00 05 */	cmpwi r28, 5
/* 801AF7C8  3B FF 00 04 */	addi r31, r31, 4
/* 801AF7CC  41 80 FF D4 */	blt lbl_801AF7A0
lbl_801AF7D0:
/* 801AF7D0  39 61 00 20 */	addi r11, r1, 0x20
/* 801AF7D4  48 1B 2A 4D */	bl _restgpr_27
/* 801AF7D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801AF7DC  7C 08 03 A6 */	mtlr r0
/* 801AF7E0  38 21 00 20 */	addi r1, r1, 0x20
/* 801AF7E4  4E 80 00 20 */	blr 
