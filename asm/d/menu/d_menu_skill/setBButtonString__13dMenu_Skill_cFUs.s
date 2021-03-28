lbl_801F9310:
/* 801F9310  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F9314  7C 08 02 A6 */	mflr r0
/* 801F9318  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F931C  39 61 00 20 */	addi r11, r1, 0x20
/* 801F9320  48 16 8E B5 */	bl _savegpr_27
/* 801F9324  7C 7B 1B 78 */	mr r27, r3
/* 801F9328  54 9D 04 3F */	clrlwi. r29, r4, 0x10
/* 801F932C  40 82 00 3C */	bne lbl_801F9368
/* 801F9330  3B A0 00 00 */	li r29, 0
/* 801F9334  3B E0 00 00 */	li r31, 0
/* 801F9338  3C 60 80 39 */	lis r3, d_menu_d_menu_skill__stringBase0@ha
/* 801F933C  3B C3 7D B8 */	addi r30, r3, d_menu_d_menu_skill__stringBase0@l
lbl_801F9340:
/* 801F9340  38 1F 01 34 */	addi r0, r31, 0x134
/* 801F9344  7C 7B 00 2E */	lwzx r3, r27, r0
/* 801F9348  48 10 73 11 */	bl getStringPtr__10J2DTextBoxCFv
/* 801F934C  38 9E 00 2F */	addi r4, r30, 0x2f
/* 801F9350  48 16 F7 DD */	bl strcpy
/* 801F9354  3B BD 00 01 */	addi r29, r29, 1
/* 801F9358  2C 1D 00 05 */	cmpwi r29, 5
/* 801F935C  3B FF 00 04 */	addi r31, r31, 4
/* 801F9360  41 80 FF E0 */	blt lbl_801F9340
/* 801F9364  48 00 00 44 */	b lbl_801F93A8
lbl_801F9368:
/* 801F9368  3B 80 00 00 */	li r28, 0
/* 801F936C  3B E0 00 00 */	li r31, 0
/* 801F9370  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801F9374  3B C3 01 88 */	addi r30, r3, g_meter2_info@l
lbl_801F9378:
/* 801F9378  38 1F 01 34 */	addi r0, r31, 0x134
/* 801F937C  7C 7B 00 2E */	lwzx r3, r27, r0
/* 801F9380  48 10 72 D9 */	bl getStringPtr__10J2DTextBoxCFv
/* 801F9384  7C 65 1B 78 */	mr r5, r3
/* 801F9388  7F C3 F3 78 */	mr r3, r30
/* 801F938C  7F A4 EB 78 */	mr r4, r29
/* 801F9390  38 C0 00 00 */	li r6, 0
/* 801F9394  48 02 31 B1 */	bl getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 801F9398  3B 9C 00 01 */	addi r28, r28, 1
/* 801F939C  2C 1C 00 05 */	cmpwi r28, 5
/* 801F93A0  3B FF 00 04 */	addi r31, r31, 4
/* 801F93A4  41 80 FF D4 */	blt lbl_801F9378
lbl_801F93A8:
/* 801F93A8  39 61 00 20 */	addi r11, r1, 0x20
/* 801F93AC  48 16 8E 75 */	bl _restgpr_27
/* 801F93B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F93B4  7C 08 03 A6 */	mtlr r0
/* 801F93B8  38 21 00 20 */	addi r1, r1, 0x20
/* 801F93BC  4E 80 00 20 */	blr 
