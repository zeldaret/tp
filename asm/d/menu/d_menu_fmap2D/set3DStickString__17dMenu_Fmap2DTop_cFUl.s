lbl_801D74EC:
/* 801D74EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D74F0  7C 08 02 A6 */	mflr r0
/* 801D74F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D74F8  39 61 00 20 */	addi r11, r1, 0x20
/* 801D74FC  48 18 AC D5 */	bl _savegpr_26
/* 801D7500  7C 7F 1B 78 */	mr r31, r3
/* 801D7504  7C 9A 23 79 */	or. r26, r4, r4
/* 801D7508  40 82 00 8C */	bne lbl_801D7594
/* 801D750C  3B 60 00 00 */	li r27, 0
/* 801D7510  3B C0 00 00 */	li r30, 0
/* 801D7514  3C 60 80 39 */	lis r3, ast_c_6233@ha /* 0x803965A8@ha */
/* 801D7518  3B A3 65 A8 */	addi r29, r3, ast_c_6233@l /* 0x803965A8@l */
/* 801D751C  3C 60 80 39 */	lis r3, d_menu_d_menu_fmap2D__stringBase0@ha /* 0x803965D0@ha */
/* 801D7520  3B 83 65 D0 */	addi r28, r3, d_menu_d_menu_fmap2D__stringBase0@l /* 0x803965D0@l */
lbl_801D7524:
/* 801D7524  80 7F 00 08 */	lwz r3, 8(r31)
/* 801D7528  7C 9D F2 14 */	add r4, r29, r30
/* 801D752C  80 A4 00 00 */	lwz r5, 0(r4)
/* 801D7530  80 C4 00 04 */	lwz r6, 4(r4)
/* 801D7534  81 83 00 00 */	lwz r12, 0(r3)
/* 801D7538  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D753C  7D 89 03 A6 */	mtctr r12
/* 801D7540  4E 80 04 21 */	bctrl 
/* 801D7544  48 12 91 15 */	bl getStringPtr__10J2DTextBoxCFv
/* 801D7548  38 9C 00 BB */	addi r4, r28, 0xbb
/* 801D754C  48 19 15 E1 */	bl strcpy
/* 801D7550  3B 7B 00 01 */	addi r27, r27, 1
/* 801D7554  2C 1B 00 05 */	cmpwi r27, 5
/* 801D7558  3B DE 00 08 */	addi r30, r30, 8
/* 801D755C  41 80 FF C8 */	blt lbl_801D7524
/* 801D7560  80 7F 00 08 */	lwz r3, 8(r31)
/* 801D7564  3C 80 73 68 */	lis r4, 0x7368 /* 0x73686130@ha */
/* 801D7568  38 C4 61 30 */	addi r6, r4, 0x6130 /* 0x73686130@l */
/* 801D756C  3C 80 00 61 */	lis r4, 0x0061 /* 0x0061735F@ha */
/* 801D7570  38 A4 73 5F */	addi r5, r4, 0x735F /* 0x0061735F@l */
/* 801D7574  81 83 00 00 */	lwz r12, 0(r3)
/* 801D7578  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D757C  7D 89 03 A6 */	mtctr r12
/* 801D7580  4E 80 04 21 */	bctrl 
/* 801D7584  38 00 00 01 */	li r0, 1
/* 801D7588  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801D758C  98 1F 00 C3 */	stb r0, 0xc3(r31)
/* 801D7590  48 00 00 98 */	b lbl_801D7628
lbl_801D7594:
/* 801D7594  3B 60 00 00 */	li r27, 0
/* 801D7598  3B C0 00 00 */	li r30, 0
/* 801D759C  3C 60 80 39 */	lis r3, ast_c_6233@ha /* 0x803965A8@ha */
/* 801D75A0  3B 83 65 A8 */	addi r28, r3, ast_c_6233@l /* 0x803965A8@l */
/* 801D75A4  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801D75A8  3B A3 01 88 */	addi r29, r3, g_meter2_info@l /* 0x80430188@l */
lbl_801D75AC:
/* 801D75AC  80 7F 00 08 */	lwz r3, 8(r31)
/* 801D75B0  7C 9C F2 14 */	add r4, r28, r30
/* 801D75B4  80 A4 00 00 */	lwz r5, 0(r4)
/* 801D75B8  80 C4 00 04 */	lwz r6, 4(r4)
/* 801D75BC  81 83 00 00 */	lwz r12, 0(r3)
/* 801D75C0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D75C4  7D 89 03 A6 */	mtctr r12
/* 801D75C8  4E 80 04 21 */	bctrl 
/* 801D75CC  48 12 90 8D */	bl getStringPtr__10J2DTextBoxCFv
/* 801D75D0  7C 65 1B 78 */	mr r5, r3
/* 801D75D4  7F A3 EB 78 */	mr r3, r29
/* 801D75D8  7F 44 D3 78 */	mr r4, r26
/* 801D75DC  38 C0 00 00 */	li r6, 0
/* 801D75E0  48 04 4F 65 */	bl getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 801D75E4  3B 7B 00 01 */	addi r27, r27, 1
/* 801D75E8  2C 1B 00 05 */	cmpwi r27, 5
/* 801D75EC  3B DE 00 08 */	addi r30, r30, 8
/* 801D75F0  41 80 FF BC */	blt lbl_801D75AC
/* 801D75F4  80 7F 00 08 */	lwz r3, 8(r31)
/* 801D75F8  3C 80 73 68 */	lis r4, 0x7368 /* 0x73686130@ha */
/* 801D75FC  38 C4 61 30 */	addi r6, r4, 0x6130 /* 0x73686130@l */
/* 801D7600  3C 80 00 61 */	lis r4, 0x0061 /* 0x0061735F@ha */
/* 801D7604  38 A4 73 5F */	addi r5, r4, 0x735F /* 0x0061735F@l */
/* 801D7608  81 83 00 00 */	lwz r12, 0(r3)
/* 801D760C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D7610  7D 89 03 A6 */	mtctr r12
/* 801D7614  4E 80 04 21 */	bctrl 
/* 801D7618  38 00 00 01 */	li r0, 1
/* 801D761C  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801D7620  38 00 00 02 */	li r0, 2
/* 801D7624  98 1F 00 C3 */	stb r0, 0xc3(r31)
lbl_801D7628:
/* 801D7628  39 61 00 20 */	addi r11, r1, 0x20
/* 801D762C  48 18 AB F1 */	bl _restgpr_26
/* 801D7630  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D7634  7C 08 03 A6 */	mtlr r0
/* 801D7638  38 21 00 20 */	addi r1, r1, 0x20
/* 801D763C  4E 80 00 20 */	blr 
