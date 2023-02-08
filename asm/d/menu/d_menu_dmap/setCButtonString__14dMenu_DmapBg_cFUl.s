lbl_801B8F94:
/* 801B8F94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801B8F98  7C 08 02 A6 */	mflr r0
/* 801B8F9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B8FA0  39 61 00 20 */	addi r11, r1, 0x20
/* 801B8FA4  48 1A 92 2D */	bl _savegpr_26
/* 801B8FA8  7C 7F 1B 78 */	mr r31, r3
/* 801B8FAC  80 6D 8B 00 */	lwz r3, myclass__12dMenu_Dmap_c(r13)
/* 801B8FB0  48 00 46 E1 */	bl isMapMoveState__12dMenu_Dmap_cFv
/* 801B8FB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B8FB8  40 82 00 0C */	bne lbl_801B8FC4
/* 801B8FBC  3B 40 00 00 */	li r26, 0
/* 801B8FC0  48 00 00 0C */	b lbl_801B8FCC
lbl_801B8FC4:
/* 801B8FC4  80 6D 8B 00 */	lwz r3, myclass__12dMenu_Dmap_c(r13)
/* 801B8FC8  A3 43 01 66 */	lhz r26, 0x166(r3)
lbl_801B8FCC:
/* 801B8FCC  28 1A 00 00 */	cmplwi r26, 0
/* 801B8FD0  40 82 00 68 */	bne lbl_801B9038
/* 801B8FD4  3B 60 00 00 */	li r27, 0
/* 801B8FD8  3B C0 00 00 */	li r30, 0
/* 801B8FDC  3C 60 80 39 */	lis r3, c_tag_4229@ha /* 0x80395618@ha */
/* 801B8FE0  3B A3 56 18 */	addi r29, r3, c_tag_4229@l /* 0x80395618@l */
/* 801B8FE4  3C 60 80 39 */	lis r3, d_menu_d_menu_dmap__stringBase0@ha /* 0x80395760@ha */
/* 801B8FE8  3B 83 57 60 */	addi r28, r3, d_menu_d_menu_dmap__stringBase0@l /* 0x80395760@l */
lbl_801B8FEC:
/* 801B8FEC  80 7F 0C B4 */	lwz r3, 0xcb4(r31)
/* 801B8FF0  7C 9D F2 14 */	add r4, r29, r30
/* 801B8FF4  80 A4 00 00 */	lwz r5, 0(r4)
/* 801B8FF8  80 C4 00 04 */	lwz r6, 4(r4)
/* 801B8FFC  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9000  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B9004  7D 89 03 A6 */	mtctr r12
/* 801B9008  4E 80 04 21 */	bctrl 
/* 801B900C  48 14 76 4D */	bl getStringPtr__10J2DTextBoxCFv
/* 801B9010  38 9C 00 6F */	addi r4, r28, 0x6f
/* 801B9014  48 1A FB 19 */	bl strcpy
/* 801B9018  3B 7B 00 01 */	addi r27, r27, 1
/* 801B901C  2C 1B 00 02 */	cmpwi r27, 2
/* 801B9020  3B DE 00 08 */	addi r30, r30, 8
/* 801B9024  41 80 FF C8 */	blt lbl_801B8FEC
/* 801B9028  80 7F 0C E8 */	lwz r3, 0xce8(r31)
/* 801B902C  C0 22 A6 0C */	lfs f1, lit_4249(r2)
/* 801B9030  48 09 C7 A1 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801B9034  48 00 00 70 */	b lbl_801B90A4
lbl_801B9038:
/* 801B9038  3B 60 00 00 */	li r27, 0
/* 801B903C  3B C0 00 00 */	li r30, 0
/* 801B9040  3C 60 80 39 */	lis r3, c_tag_4229@ha /* 0x80395618@ha */
/* 801B9044  3B 83 56 18 */	addi r28, r3, c_tag_4229@l /* 0x80395618@l */
/* 801B9048  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801B904C  3B A3 01 88 */	addi r29, r3, g_meter2_info@l /* 0x80430188@l */
lbl_801B9050:
/* 801B9050  80 7F 0C B4 */	lwz r3, 0xcb4(r31)
/* 801B9054  7C 9C F2 14 */	add r4, r28, r30
/* 801B9058  80 A4 00 00 */	lwz r5, 0(r4)
/* 801B905C  80 C4 00 04 */	lwz r6, 4(r4)
/* 801B9060  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9064  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B9068  7D 89 03 A6 */	mtctr r12
/* 801B906C  4E 80 04 21 */	bctrl 
/* 801B9070  48 14 75 E9 */	bl getStringPtr__10J2DTextBoxCFv
/* 801B9074  7C 65 1B 78 */	mr r5, r3
/* 801B9078  7F A3 EB 78 */	mr r3, r29
/* 801B907C  7F 44 D3 78 */	mr r4, r26
/* 801B9080  38 C0 00 00 */	li r6, 0
/* 801B9084  48 06 34 C1 */	bl getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 801B9088  3B 7B 00 01 */	addi r27, r27, 1
/* 801B908C  2C 1B 00 02 */	cmpwi r27, 2
/* 801B9090  3B DE 00 08 */	addi r30, r30, 8
/* 801B9094  41 80 FF BC */	blt lbl_801B9050
/* 801B9098  80 7F 0C E8 */	lwz r3, 0xce8(r31)
/* 801B909C  C0 22 A5 EC */	lfs f1, lit_3963(r2)
/* 801B90A0  48 09 C7 31 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_801B90A4:
/* 801B90A4  39 61 00 20 */	addi r11, r1, 0x20
/* 801B90A8  48 1A 91 75 */	bl _restgpr_26
/* 801B90AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801B90B0  7C 08 03 A6 */	mtlr r0
/* 801B90B4  38 21 00 20 */	addi r1, r1, 0x20
/* 801B90B8  4E 80 00 20 */	blr 
