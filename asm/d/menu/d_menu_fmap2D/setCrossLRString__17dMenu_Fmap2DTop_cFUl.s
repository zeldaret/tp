lbl_801D7398:
/* 801D7398  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D739C  7C 08 02 A6 */	mflr r0
/* 801D73A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D73A4  39 61 00 20 */	addi r11, r1, 0x20
/* 801D73A8  48 18 AE 29 */	bl _savegpr_26
/* 801D73AC  7C 7F 1B 78 */	mr r31, r3
/* 801D73B0  7C 9A 23 79 */	or. r26, r4, r4
/* 801D73B4  40 82 00 8C */	bne lbl_801D7440
/* 801D73B8  3B 60 00 00 */	li r27, 0
/* 801D73BC  3B C0 00 00 */	li r30, 0
/* 801D73C0  3C 60 80 39 */	lis r3, juji_c_6209@ha /* 0x80396580@ha */
/* 801D73C4  3B A3 65 80 */	addi r29, r3, juji_c_6209@l /* 0x80396580@l */
/* 801D73C8  3C 60 80 39 */	lis r3, d_menu_d_menu_fmap2D__stringBase0@ha /* 0x803965D0@ha */
/* 801D73CC  3B 83 65 D0 */	addi r28, r3, d_menu_d_menu_fmap2D__stringBase0@l /* 0x803965D0@l */
lbl_801D73D0:
/* 801D73D0  80 7F 00 08 */	lwz r3, 8(r31)
/* 801D73D4  7C 9D F2 14 */	add r4, r29, r30
/* 801D73D8  80 A4 00 00 */	lwz r5, 0(r4)
/* 801D73DC  80 C4 00 04 */	lwz r6, 4(r4)
/* 801D73E0  81 83 00 00 */	lwz r12, 0(r3)
/* 801D73E4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D73E8  7D 89 03 A6 */	mtctr r12
/* 801D73EC  4E 80 04 21 */	bctrl 
/* 801D73F0  48 12 92 69 */	bl getStringPtr__10J2DTextBoxCFv
/* 801D73F4  38 9C 00 BB */	addi r4, r28, 0xbb
/* 801D73F8  48 19 17 35 */	bl strcpy
/* 801D73FC  3B 7B 00 01 */	addi r27, r27, 1
/* 801D7400  2C 1B 00 05 */	cmpwi r27, 5
/* 801D7404  3B DE 00 08 */	addi r30, r30, 8
/* 801D7408  41 80 FF C8 */	blt lbl_801D73D0
/* 801D740C  80 7F 00 08 */	lwz r3, 8(r31)
/* 801D7410  3C 80 73 68 */	lis r4, 0x7368 /* 0x73686130@ha */
/* 801D7414  38 C4 61 30 */	addi r6, r4, 0x6130 /* 0x73686130@l */
/* 801D7418  3C 80 6A 75 */	lis r4, 0x6A75 /* 0x6A75795F@ha */
/* 801D741C  38 A4 79 5F */	addi r5, r4, 0x795F /* 0x6A75795F@l */
/* 801D7420  81 83 00 00 */	lwz r12, 0(r3)
/* 801D7424  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D7428  7D 89 03 A6 */	mtctr r12
/* 801D742C  4E 80 04 21 */	bctrl 
/* 801D7430  38 00 00 01 */	li r0, 1
/* 801D7434  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801D7438  98 1F 00 C4 */	stb r0, 0xc4(r31)
/* 801D743C  48 00 00 98 */	b lbl_801D74D4
lbl_801D7440:
/* 801D7440  3B 60 00 00 */	li r27, 0
/* 801D7444  3B C0 00 00 */	li r30, 0
/* 801D7448  3C 60 80 39 */	lis r3, juji_c_6209@ha /* 0x80396580@ha */
/* 801D744C  3B 83 65 80 */	addi r28, r3, juji_c_6209@l /* 0x80396580@l */
/* 801D7450  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801D7454  3B A3 01 88 */	addi r29, r3, g_meter2_info@l /* 0x80430188@l */
lbl_801D7458:
/* 801D7458  80 7F 00 08 */	lwz r3, 8(r31)
/* 801D745C  7C 9C F2 14 */	add r4, r28, r30
/* 801D7460  80 A4 00 00 */	lwz r5, 0(r4)
/* 801D7464  80 C4 00 04 */	lwz r6, 4(r4)
/* 801D7468  81 83 00 00 */	lwz r12, 0(r3)
/* 801D746C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D7470  7D 89 03 A6 */	mtctr r12
/* 801D7474  4E 80 04 21 */	bctrl 
/* 801D7478  48 12 91 E1 */	bl getStringPtr__10J2DTextBoxCFv
/* 801D747C  7C 65 1B 78 */	mr r5, r3
/* 801D7480  7F A3 EB 78 */	mr r3, r29
/* 801D7484  7F 44 D3 78 */	mr r4, r26
/* 801D7488  38 C0 00 00 */	li r6, 0
/* 801D748C  48 04 50 B9 */	bl getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 801D7490  3B 7B 00 01 */	addi r27, r27, 1
/* 801D7494  2C 1B 00 05 */	cmpwi r27, 5
/* 801D7498  3B DE 00 08 */	addi r30, r30, 8
/* 801D749C  41 80 FF BC */	blt lbl_801D7458
/* 801D74A0  80 7F 00 08 */	lwz r3, 8(r31)
/* 801D74A4  3C 80 73 68 */	lis r4, 0x7368 /* 0x73686130@ha */
/* 801D74A8  38 C4 61 30 */	addi r6, r4, 0x6130 /* 0x73686130@l */
/* 801D74AC  3C 80 6A 75 */	lis r4, 0x6A75 /* 0x6A75795F@ha */
/* 801D74B0  38 A4 79 5F */	addi r5, r4, 0x795F /* 0x6A75795F@l */
/* 801D74B4  81 83 00 00 */	lwz r12, 0(r3)
/* 801D74B8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D74BC  7D 89 03 A6 */	mtctr r12
/* 801D74C0  4E 80 04 21 */	bctrl 
/* 801D74C4  38 00 00 01 */	li r0, 1
/* 801D74C8  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801D74CC  38 00 00 02 */	li r0, 2
/* 801D74D0  98 1F 00 C4 */	stb r0, 0xc4(r31)
lbl_801D74D4:
/* 801D74D4  39 61 00 20 */	addi r11, r1, 0x20
/* 801D74D8  48 18 AD 45 */	bl _restgpr_26
/* 801D74DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D74E0  7C 08 03 A6 */	mtlr r0
/* 801D74E4  38 21 00 20 */	addi r1, r1, 0x20
/* 801D74E8  4E 80 00 20 */	blr 
