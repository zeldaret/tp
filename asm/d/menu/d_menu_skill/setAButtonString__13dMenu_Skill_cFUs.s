lbl_801F9260:
/* 801F9260  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F9264  7C 08 02 A6 */	mflr r0
/* 801F9268  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F926C  39 61 00 20 */	addi r11, r1, 0x20
/* 801F9270  48 16 8F 65 */	bl _savegpr_27
/* 801F9274  7C 7B 1B 78 */	mr r27, r3
/* 801F9278  54 9D 04 3F */	clrlwi. r29, r4, 0x10
/* 801F927C  40 82 00 3C */	bne lbl_801F92B8
/* 801F9280  3B A0 00 00 */	li r29, 0
/* 801F9284  3B E0 00 00 */	li r31, 0
/* 801F9288  3C 60 80 39 */	lis r3, d_menu_d_menu_skill__stringBase0@ha /* 0x80397DB8@ha */
/* 801F928C  3B C3 7D B8 */	addi r30, r3, d_menu_d_menu_skill__stringBase0@l /* 0x80397DB8@l */
lbl_801F9290:
/* 801F9290  38 1F 01 20 */	addi r0, r31, 0x120
/* 801F9294  7C 7B 00 2E */	lwzx r3, r27, r0
/* 801F9298  48 10 73 C1 */	bl getStringPtr__10J2DTextBoxCFv
/* 801F929C  38 9E 00 2F */	addi r4, r30, 0x2f
/* 801F92A0  48 16 F8 8D */	bl strcpy
/* 801F92A4  3B BD 00 01 */	addi r29, r29, 1
/* 801F92A8  2C 1D 00 05 */	cmpwi r29, 5
/* 801F92AC  3B FF 00 04 */	addi r31, r31, 4
/* 801F92B0  41 80 FF E0 */	blt lbl_801F9290
/* 801F92B4  48 00 00 44 */	b lbl_801F92F8
lbl_801F92B8:
/* 801F92B8  3B 80 00 00 */	li r28, 0
/* 801F92BC  3B E0 00 00 */	li r31, 0
/* 801F92C0  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801F92C4  3B C3 01 88 */	addi r30, r3, g_meter2_info@l /* 0x80430188@l */
lbl_801F92C8:
/* 801F92C8  38 1F 01 20 */	addi r0, r31, 0x120
/* 801F92CC  7C 7B 00 2E */	lwzx r3, r27, r0
/* 801F92D0  48 10 73 89 */	bl getStringPtr__10J2DTextBoxCFv
/* 801F92D4  7C 65 1B 78 */	mr r5, r3
/* 801F92D8  7F C3 F3 78 */	mr r3, r30
/* 801F92DC  7F A4 EB 78 */	mr r4, r29
/* 801F92E0  38 C0 00 00 */	li r6, 0
/* 801F92E4  48 02 32 61 */	bl getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 801F92E8  3B 9C 00 01 */	addi r28, r28, 1
/* 801F92EC  2C 1C 00 05 */	cmpwi r28, 5
/* 801F92F0  3B FF 00 04 */	addi r31, r31, 4
/* 801F92F4  41 80 FF D4 */	blt lbl_801F92C8
lbl_801F92F8:
/* 801F92F8  39 61 00 20 */	addi r11, r1, 0x20
/* 801F92FC  48 16 8F 25 */	bl _restgpr_27
/* 801F9300  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F9304  7C 08 03 A6 */	mtlr r0
/* 801F9308  38 21 00 20 */	addi r1, r1, 0x20
/* 801F930C  4E 80 00 20 */	blr 
