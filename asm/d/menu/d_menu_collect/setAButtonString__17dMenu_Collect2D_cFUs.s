lbl_801B5FB4:
/* 801B5FB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801B5FB8  7C 08 02 A6 */	mflr r0
/* 801B5FBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B5FC0  39 61 00 20 */	addi r11, r1, 0x20
/* 801B5FC4  48 1A C2 0D */	bl _savegpr_26
/* 801B5FC8  7C 7F 1B 78 */	mr r31, r3
/* 801B5FCC  54 9B 04 3E */	clrlwi r27, r4, 0x10
/* 801B5FD0  A0 03 01 7C */	lhz r0, 0x17c(r3)
/* 801B5FD4  7C 1B 00 40 */	cmplw r27, r0
/* 801B5FD8  41 82 00 C8 */	beq lbl_801B60A0
/* 801B5FDC  B0 9F 01 7C */	sth r4, 0x17c(r31)
/* 801B5FE0  28 1B 00 00 */	cmplwi r27, 0
/* 801B5FE4  40 82 00 5C */	bne lbl_801B6040
/* 801B5FE8  3B 60 00 00 */	li r27, 0
/* 801B5FEC  3B C0 00 00 */	li r30, 0
/* 801B5FF0  3C 60 80 39 */	lis r3, text_a_tag_7111@ha
/* 801B5FF4  3B A3 52 68 */	addi r29, r3, text_a_tag_7111@l
/* 801B5FF8  3C 60 80 39 */	lis r3, d_menu_d_menu_collect__stringBase0@ha
/* 801B5FFC  3B 83 53 30 */	addi r28, r3, d_menu_d_menu_collect__stringBase0@l
lbl_801B6000:
/* 801B6000  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801B6004  7C 9D F2 14 */	add r4, r29, r30
/* 801B6008  80 A4 00 00 */	lwz r5, 0(r4)
/* 801B600C  80 C4 00 04 */	lwz r6, 4(r4)
/* 801B6010  81 83 00 00 */	lwz r12, 0(r3)
/* 801B6014  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B6018  7D 89 03 A6 */	mtctr r12
/* 801B601C  4E 80 04 21 */	bctrl 
/* 801B6020  48 14 A6 39 */	bl getStringPtr__10J2DTextBoxCFv
/* 801B6024  38 9C 00 55 */	addi r4, r28, 0x55
/* 801B6028  48 1B 2B 05 */	bl strcpy
/* 801B602C  3B 7B 00 01 */	addi r27, r27, 1
/* 801B6030  2C 1B 00 05 */	cmpwi r27, 5
/* 801B6034  3B DE 00 08 */	addi r30, r30, 8
/* 801B6038  41 80 FF C8 */	blt lbl_801B6000
/* 801B603C  48 00 00 64 */	b lbl_801B60A0
lbl_801B6040:
/* 801B6040  3B 40 00 00 */	li r26, 0
/* 801B6044  3B C0 00 00 */	li r30, 0
/* 801B6048  3C 60 80 39 */	lis r3, text_a_tag_7111@ha
/* 801B604C  3B 83 52 68 */	addi r28, r3, text_a_tag_7111@l
/* 801B6050  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801B6054  3B A3 01 88 */	addi r29, r3, g_meter2_info@l
lbl_801B6058:
/* 801B6058  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801B605C  7C 9C F2 14 */	add r4, r28, r30
/* 801B6060  80 A4 00 00 */	lwz r5, 0(r4)
/* 801B6064  80 C4 00 04 */	lwz r6, 4(r4)
/* 801B6068  81 83 00 00 */	lwz r12, 0(r3)
/* 801B606C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B6070  7D 89 03 A6 */	mtctr r12
/* 801B6074  4E 80 04 21 */	bctrl 
/* 801B6078  48 14 A5 E1 */	bl getStringPtr__10J2DTextBoxCFv
/* 801B607C  7C 65 1B 78 */	mr r5, r3
/* 801B6080  7F A3 EB 78 */	mr r3, r29
/* 801B6084  7F 64 DB 78 */	mr r4, r27
/* 801B6088  38 C0 00 00 */	li r6, 0
/* 801B608C  48 06 64 B9 */	bl getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 801B6090  3B 5A 00 01 */	addi r26, r26, 1
/* 801B6094  2C 1A 00 05 */	cmpwi r26, 5
/* 801B6098  3B DE 00 08 */	addi r30, r30, 8
/* 801B609C  41 80 FF BC */	blt lbl_801B6058
lbl_801B60A0:
/* 801B60A0  39 61 00 20 */	addi r11, r1, 0x20
/* 801B60A4  48 1A C1 79 */	bl _restgpr_26
/* 801B60A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801B60AC  7C 08 03 A6 */	mtlr r0
/* 801B60B0  38 21 00 20 */	addi r1, r1, 0x20
/* 801B60B4  4E 80 00 20 */	blr 
