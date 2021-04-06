lbl_801D70E8:
/* 801D70E8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801D70EC  7C 08 02 A6 */	mflr r0
/* 801D70F0  90 01 00 34 */	stw r0, 0x34(r1)
/* 801D70F4  39 61 00 30 */	addi r11, r1, 0x30
/* 801D70F8  48 18 B0 D5 */	bl _savegpr_25
/* 801D70FC  7C 7D 1B 78 */	mr r29, r3
/* 801D7100  7C 9E 23 78 */	mr r30, r4
/* 801D7104  7C BF 2B 78 */	mr r31, r5
/* 801D7108  28 1E 05 29 */	cmplwi r30, 0x529
/* 801D710C  40 82 00 30 */	bne lbl_801D713C
/* 801D7110  80 8D 8A 98 */	lwz r4, m_midnaActor__9daPy_py_c(r13)
/* 801D7114  38 60 00 00 */	li r3, 0
/* 801D7118  80 84 08 90 */	lwz r4, 0x890(r4)
/* 801D711C  54 80 01 09 */	rlwinm. r0, r4, 0, 4, 4
/* 801D7120  41 82 00 10 */	beq lbl_801D7130
/* 801D7124  54 80 05 AD */	rlwinm. r0, r4, 0, 0x16, 0x16
/* 801D7128  41 82 00 08 */	beq lbl_801D7130
/* 801D712C  38 60 00 01 */	li r3, 1
lbl_801D7130:
/* 801D7130  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801D7134  41 82 00 08 */	beq lbl_801D713C
/* 801D7138  3B C0 05 33 */	li r30, 0x533
lbl_801D713C:
/* 801D713C  28 1E 00 00 */	cmplwi r30, 0
/* 801D7140  41 82 00 14 */	beq lbl_801D7154
/* 801D7144  7F A3 EB 78 */	mr r3, r29
/* 801D7148  48 00 0F 41 */	bl isWarpAccept__17dMenu_Fmap2DTop_cFv
/* 801D714C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801D7150  40 82 00 10 */	bne lbl_801D7160
lbl_801D7154:
/* 801D7154  38 00 00 01 */	li r0, 1
/* 801D7158  98 1D 00 C2 */	stb r0, 0xc2(r29)
/* 801D715C  48 00 00 9C */	b lbl_801D71F8
lbl_801D7160:
/* 801D7160  3B 20 00 00 */	li r25, 0
/* 801D7164  3B 80 00 00 */	li r28, 0
/* 801D7168  3C 60 80 39 */	lis r3, font_zt_6148@ha /* 0x80396508@ha */
/* 801D716C  3B 43 65 08 */	addi r26, r3, font_zt_6148@l /* 0x80396508@l */
/* 801D7170  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801D7174  3B 63 01 88 */	addi r27, r3, g_meter2_info@l /* 0x80430188@l */
lbl_801D7178:
/* 801D7178  80 7D 00 08 */	lwz r3, 8(r29)
/* 801D717C  7C 9A E2 14 */	add r4, r26, r28
/* 801D7180  80 A4 00 00 */	lwz r5, 0(r4)
/* 801D7184  80 C4 00 04 */	lwz r6, 4(r4)
/* 801D7188  81 83 00 00 */	lwz r12, 0(r3)
/* 801D718C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D7190  7D 89 03 A6 */	mtctr r12
/* 801D7194  4E 80 04 21 */	bctrl 
/* 801D7198  48 12 94 C1 */	bl getStringPtr__10J2DTextBoxCFv
/* 801D719C  7C 65 1B 78 */	mr r5, r3
/* 801D71A0  7F 63 DB 78 */	mr r3, r27
/* 801D71A4  7F C4 F3 78 */	mr r4, r30
/* 801D71A8  38 C0 00 00 */	li r6, 0
/* 801D71AC  48 04 53 99 */	bl getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 801D71B0  3B 39 00 01 */	addi r25, r25, 1
/* 801D71B4  2C 19 00 05 */	cmpwi r25, 5
/* 801D71B8  3B 9C 00 08 */	addi r28, r28, 8
/* 801D71BC  41 80 FF BC */	blt lbl_801D7178
/* 801D71C0  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801D71C4  28 00 00 FF */	cmplwi r0, 0xff
/* 801D71C8  40 82 00 2C */	bne lbl_801D71F4
/* 801D71CC  7F A3 EB 78 */	mr r3, r29
/* 801D71D0  48 00 07 C5 */	bl checkPlayerWarpAccept__17dMenu_Fmap2DTop_cFv
/* 801D71D4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801D71D8  41 82 00 10 */	beq lbl_801D71E8
/* 801D71DC  38 00 00 02 */	li r0, 2
/* 801D71E0  98 1D 00 C2 */	stb r0, 0xc2(r29)
/* 801D71E4  48 00 00 14 */	b lbl_801D71F8
lbl_801D71E8:
/* 801D71E8  38 00 00 01 */	li r0, 1
/* 801D71EC  98 1D 00 C2 */	stb r0, 0xc2(r29)
/* 801D71F0  48 00 00 08 */	b lbl_801D71F8
lbl_801D71F4:
/* 801D71F4  9B FD 00 C2 */	stb r31, 0xc2(r29)
lbl_801D71F8:
/* 801D71F8  39 61 00 30 */	addi r11, r1, 0x30
/* 801D71FC  48 18 B0 1D */	bl _restgpr_25
/* 801D7200  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801D7204  7C 08 03 A6 */	mtlr r0
/* 801D7208  38 21 00 30 */	addi r1, r1, 0x30
/* 801D720C  4E 80 00 20 */	blr 
