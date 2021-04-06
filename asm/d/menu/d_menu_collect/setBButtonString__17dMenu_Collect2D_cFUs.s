lbl_801B60B8:
/* 801B60B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801B60BC  7C 08 02 A6 */	mflr r0
/* 801B60C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B60C4  39 61 00 20 */	addi r11, r1, 0x20
/* 801B60C8  48 1A C1 09 */	bl _savegpr_26
/* 801B60CC  7C 7F 1B 78 */	mr r31, r3
/* 801B60D0  54 9B 04 3E */	clrlwi r27, r4, 0x10
/* 801B60D4  A0 03 01 7E */	lhz r0, 0x17e(r3)
/* 801B60D8  7C 1B 00 40 */	cmplw r27, r0
/* 801B60DC  41 82 00 C8 */	beq lbl_801B61A4
/* 801B60E0  B0 9F 01 7E */	sth r4, 0x17e(r31)
/* 801B60E4  28 1B 00 00 */	cmplwi r27, 0
/* 801B60E8  40 82 00 5C */	bne lbl_801B6144
/* 801B60EC  3B 60 00 00 */	li r27, 0
/* 801B60F0  3B C0 00 00 */	li r30, 0
/* 801B60F4  3C 60 80 39 */	lis r3, text_b_tag_7134@ha /* 0x80395290@ha */
/* 801B60F8  3B A3 52 90 */	addi r29, r3, text_b_tag_7134@l /* 0x80395290@l */
/* 801B60FC  3C 60 80 39 */	lis r3, d_menu_d_menu_collect__stringBase0@ha /* 0x80395330@ha */
/* 801B6100  3B 83 53 30 */	addi r28, r3, d_menu_d_menu_collect__stringBase0@l /* 0x80395330@l */
lbl_801B6104:
/* 801B6104  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801B6108  7C 9D F2 14 */	add r4, r29, r30
/* 801B610C  80 A4 00 00 */	lwz r5, 0(r4)
/* 801B6110  80 C4 00 04 */	lwz r6, 4(r4)
/* 801B6114  81 83 00 00 */	lwz r12, 0(r3)
/* 801B6118  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B611C  7D 89 03 A6 */	mtctr r12
/* 801B6120  4E 80 04 21 */	bctrl 
/* 801B6124  48 14 A5 35 */	bl getStringPtr__10J2DTextBoxCFv
/* 801B6128  38 9C 00 55 */	addi r4, r28, 0x55
/* 801B612C  48 1B 2A 01 */	bl strcpy
/* 801B6130  3B 7B 00 01 */	addi r27, r27, 1
/* 801B6134  2C 1B 00 05 */	cmpwi r27, 5
/* 801B6138  3B DE 00 08 */	addi r30, r30, 8
/* 801B613C  41 80 FF C8 */	blt lbl_801B6104
/* 801B6140  48 00 00 64 */	b lbl_801B61A4
lbl_801B6144:
/* 801B6144  3B 40 00 00 */	li r26, 0
/* 801B6148  3B C0 00 00 */	li r30, 0
/* 801B614C  3C 60 80 39 */	lis r3, text_b_tag_7134@ha /* 0x80395290@ha */
/* 801B6150  3B 83 52 90 */	addi r28, r3, text_b_tag_7134@l /* 0x80395290@l */
/* 801B6154  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801B6158  3B A3 01 88 */	addi r29, r3, g_meter2_info@l /* 0x80430188@l */
lbl_801B615C:
/* 801B615C  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801B6160  7C 9C F2 14 */	add r4, r28, r30
/* 801B6164  80 A4 00 00 */	lwz r5, 0(r4)
/* 801B6168  80 C4 00 04 */	lwz r6, 4(r4)
/* 801B616C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B6170  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B6174  7D 89 03 A6 */	mtctr r12
/* 801B6178  4E 80 04 21 */	bctrl 
/* 801B617C  48 14 A4 DD */	bl getStringPtr__10J2DTextBoxCFv
/* 801B6180  7C 65 1B 78 */	mr r5, r3
/* 801B6184  7F A3 EB 78 */	mr r3, r29
/* 801B6188  7F 64 DB 78 */	mr r4, r27
/* 801B618C  38 C0 00 00 */	li r6, 0
/* 801B6190  48 06 63 B5 */	bl getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 801B6194  3B 5A 00 01 */	addi r26, r26, 1
/* 801B6198  2C 1A 00 05 */	cmpwi r26, 5
/* 801B619C  3B DE 00 08 */	addi r30, r30, 8
/* 801B61A0  41 80 FF BC */	blt lbl_801B615C
lbl_801B61A4:
/* 801B61A4  39 61 00 20 */	addi r11, r1, 0x20
/* 801B61A8  48 1A C0 75 */	bl _restgpr_26
/* 801B61AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801B61B0  7C 08 03 A6 */	mtlr r0
/* 801B61B4  38 21 00 20 */	addi r1, r1, 0x20
/* 801B61B8  4E 80 00 20 */	blr 
