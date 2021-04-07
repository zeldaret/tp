lbl_801E7F9C:
/* 801E7F9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801E7FA0  7C 08 02 A6 */	mflr r0
/* 801E7FA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801E7FA8  39 61 00 20 */	addi r11, r1, 0x20
/* 801E7FAC  48 17 A2 25 */	bl _savegpr_26
/* 801E7FB0  7C 7F 1B 78 */	mr r31, r3
/* 801E7FB4  54 9B 04 3E */	clrlwi r27, r4, 0x10
/* 801E7FB8  A0 03 03 DE */	lhz r0, 0x3de(r3)
/* 801E7FBC  7C 1B 00 40 */	cmplw r27, r0
/* 801E7FC0  41 82 00 C8 */	beq lbl_801E8088
/* 801E7FC4  B0 9F 03 DE */	sth r4, 0x3de(r31)
/* 801E7FC8  28 1B 00 00 */	cmplwi r27, 0
/* 801E7FCC  40 82 00 5C */	bne lbl_801E8028
/* 801E7FD0  3B 60 00 00 */	li r27, 0
/* 801E7FD4  3B C0 00 00 */	li r30, 0
/* 801E7FD8  3C 60 80 39 */	lis r3, text_b_tag_6217@ha /* 0x803975B0@ha */
/* 801E7FDC  3B A3 75 B0 */	addi r29, r3, text_b_tag_6217@l /* 0x803975B0@l */
/* 801E7FE0  3C 60 80 39 */	lis r3, d_menu_d_menu_option__stringBase0@ha /* 0x803975D8@ha */
/* 801E7FE4  3B 83 75 D8 */	addi r28, r3, d_menu_d_menu_option__stringBase0@l /* 0x803975D8@l */
lbl_801E7FE8:
/* 801E7FE8  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801E7FEC  7C 9D F2 14 */	add r4, r29, r30
/* 801E7FF0  80 A4 00 00 */	lwz r5, 0(r4)
/* 801E7FF4  80 C4 00 04 */	lwz r6, 4(r4)
/* 801E7FF8  81 83 00 00 */	lwz r12, 0(r3)
/* 801E7FFC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E8000  7D 89 03 A6 */	mtctr r12
/* 801E8004  4E 80 04 21 */	bctrl 
/* 801E8008  48 11 86 51 */	bl getStringPtr__10J2DTextBoxCFv
/* 801E800C  38 9C 00 1D */	addi r4, r28, 0x1d
/* 801E8010  48 18 0B 1D */	bl strcpy
/* 801E8014  3B 7B 00 01 */	addi r27, r27, 1
/* 801E8018  2C 1B 00 05 */	cmpwi r27, 5
/* 801E801C  3B DE 00 08 */	addi r30, r30, 8
/* 801E8020  41 80 FF C8 */	blt lbl_801E7FE8
/* 801E8024  48 00 00 64 */	b lbl_801E8088
lbl_801E8028:
/* 801E8028  3B 40 00 00 */	li r26, 0
/* 801E802C  3B C0 00 00 */	li r30, 0
/* 801E8030  3C 60 80 39 */	lis r3, text_b_tag_6217@ha /* 0x803975B0@ha */
/* 801E8034  3B 83 75 B0 */	addi r28, r3, text_b_tag_6217@l /* 0x803975B0@l */
/* 801E8038  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801E803C  3B A3 01 88 */	addi r29, r3, g_meter2_info@l /* 0x80430188@l */
lbl_801E8040:
/* 801E8040  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801E8044  7C 9C F2 14 */	add r4, r28, r30
/* 801E8048  80 A4 00 00 */	lwz r5, 0(r4)
/* 801E804C  80 C4 00 04 */	lwz r6, 4(r4)
/* 801E8050  81 83 00 00 */	lwz r12, 0(r3)
/* 801E8054  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E8058  7D 89 03 A6 */	mtctr r12
/* 801E805C  4E 80 04 21 */	bctrl 
/* 801E8060  48 11 85 F9 */	bl getStringPtr__10J2DTextBoxCFv
/* 801E8064  7C 65 1B 78 */	mr r5, r3
/* 801E8068  7F A3 EB 78 */	mr r3, r29
/* 801E806C  7F 64 DB 78 */	mr r4, r27
/* 801E8070  38 C0 00 00 */	li r6, 0
/* 801E8074  48 03 44 D1 */	bl getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 801E8078  3B 5A 00 01 */	addi r26, r26, 1
/* 801E807C  2C 1A 00 05 */	cmpwi r26, 5
/* 801E8080  3B DE 00 08 */	addi r30, r30, 8
/* 801E8084  41 80 FF BC */	blt lbl_801E8040
lbl_801E8088:
/* 801E8088  39 61 00 20 */	addi r11, r1, 0x20
/* 801E808C  48 17 A1 91 */	bl _restgpr_26
/* 801E8090  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801E8094  7C 08 03 A6 */	mtlr r0
/* 801E8098  38 21 00 20 */	addi r1, r1, 0x20
/* 801E809C  4E 80 00 20 */	blr 
