lbl_8018A194:
/* 8018A194  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8018A198  7C 08 02 A6 */	mflr r0
/* 8018A19C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8018A1A0  39 61 00 20 */	addi r11, r1, 0x20
/* 8018A1A4  48 1D 80 39 */	bl _savegpr_29
/* 8018A1A8  7C 7F 1B 78 */	mr r31, r3
/* 8018A1AC  88 03 02 65 */	lbz r0, 0x265(r3)
/* 8018A1B0  54 00 10 3A */	slwi r0, r0, 2
/* 8018A1B4  7C 7F 02 14 */	add r3, r31, r0
/* 8018A1B8  80 63 01 4C */	lwz r3, 0x14c(r3)
/* 8018A1BC  3C 80 80 43 */	lis r4, g_fsHIO@ha /* 0x8042C9EC@ha */
/* 8018A1C0  3B C4 C9 EC */	addi r30, r4, g_fsHIO@l /* 0x8042C9EC@l */
/* 8018A1C4  88 9E 00 09 */	lbz r4, 9(r30)
/* 8018A1C8  38 A0 00 FF */	li r5, 0xff
/* 8018A1CC  38 C0 00 00 */	li r6, 0
/* 8018A1D0  38 E0 00 00 */	li r7, 0
/* 8018A1D4  48 0C B6 A5 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 8018A1D8  54 7D 06 3E */	clrlwi r29, r3, 0x18
/* 8018A1DC  88 9F 02 65 */	lbz r4, 0x265(r31)
/* 8018A1E0  7C 7F 22 14 */	add r3, r31, r4
/* 8018A1E4  88 03 02 5B */	lbz r0, 0x25b(r3)
/* 8018A1E8  28 00 00 00 */	cmplwi r0, 0
/* 8018A1EC  41 82 00 2C */	beq lbl_8018A218
/* 8018A1F0  54 80 10 3A */	slwi r0, r4, 2
/* 8018A1F4  7C 7F 02 14 */	add r3, r31, r0
/* 8018A1F8  80 63 02 2C */	lwz r3, 0x22c(r3)
/* 8018A1FC  88 9E 00 09 */	lbz r4, 9(r30)
/* 8018A200  38 A0 00 FF */	li r5, 0xff
/* 8018A204  38 C0 00 00 */	li r6, 0
/* 8018A208  38 E0 00 00 */	li r7, 0
/* 8018A20C  48 0C B6 6D */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 8018A210  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8018A214  48 00 00 28 */	b lbl_8018A23C
lbl_8018A218:
/* 8018A218  54 80 10 3A */	slwi r0, r4, 2
/* 8018A21C  7C 7F 02 14 */	add r3, r31, r0
/* 8018A220  80 63 02 20 */	lwz r3, 0x220(r3)
/* 8018A224  88 9E 00 09 */	lbz r4, 9(r30)
/* 8018A228  38 A0 00 FF */	li r5, 0xff
/* 8018A22C  38 C0 00 00 */	li r6, 0
/* 8018A230  38 E0 00 00 */	li r7, 0
/* 8018A234  48 0C B6 45 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 8018A238  54 60 06 3E */	clrlwi r0, r3, 0x18
lbl_8018A23C:
/* 8018A23C  2C 1D 00 01 */	cmpwi r29, 1
/* 8018A240  40 82 00 84 */	bne lbl_8018A2C4
/* 8018A244  2C 00 00 01 */	cmpwi r0, 1
/* 8018A248  40 82 00 7C */	bne lbl_8018A2C4
/* 8018A24C  38 00 00 00 */	li r0, 0
/* 8018A250  98 1F 02 08 */	stb r0, 0x208(r31)
/* 8018A254  7F E3 FB 78 */	mr r3, r31
/* 8018A258  48 00 2D ED */	bl setSaveData__14dFile_select_cFv
/* 8018A25C  7F E3 FB 78 */	mr r3, r31
/* 8018A260  88 9F 02 65 */	lbz r4, 0x265(r31)
/* 8018A264  4B FF BE 25 */	bl makeRecInfo__14dFile_select_cFUc
/* 8018A268  7F E3 FB 78 */	mr r3, r31
/* 8018A26C  38 80 00 4B */	li r4, 0x4b
/* 8018A270  38 A0 00 00 */	li r5, 0
/* 8018A274  38 C0 00 00 */	li r6, 0
/* 8018A278  48 00 2E 6D */	bl headerTxtSet__14dFile_select_cFUsUcUc
/* 8018A27C  80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 8018A280  48 00 7E 8D */	bl closeInit__15dFile_warning_cFv
/* 8018A284  38 80 00 00 */	li r4, 0
/* 8018A288  88 1F 02 65 */	lbz r0, 0x265(r31)
/* 8018A28C  54 00 10 3A */	slwi r0, r0, 2
/* 8018A290  7C 7F 02 14 */	add r3, r31, r0
/* 8018A294  80 63 02 2C */	lwz r3, 0x22c(r3)
/* 8018A298  B0 83 00 16 */	sth r4, 0x16(r3)
/* 8018A29C  7F E3 FB 78 */	mr r3, r31
/* 8018A2A0  88 9F 02 65 */	lbz r4, 0x265(r31)
/* 8018A2A4  38 A0 00 00 */	li r5, 0
/* 8018A2A8  38 C0 00 FF */	li r6, 0xff
/* 8018A2AC  3C E0 80 43 */	lis r7, g_fsHIO@ha /* 0x8042C9EC@ha */
/* 8018A2B0  38 E7 C9 EC */	addi r7, r7, g_fsHIO@l /* 0x8042C9EC@l */
/* 8018A2B4  88 E7 00 07 */	lbz r7, 7(r7)
/* 8018A2B8  48 00 33 99 */	bl selectWakuAlpahAnmInit__14dFile_select_cFUcUcUcUc
/* 8018A2BC  38 00 00 26 */	li r0, 0x26
/* 8018A2C0  98 1F 02 6F */	stb r0, 0x26f(r31)
lbl_8018A2C4:
/* 8018A2C4  39 61 00 20 */	addi r11, r1, 0x20
/* 8018A2C8  48 1D 7F 61 */	bl _restgpr_29
/* 8018A2CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8018A2D0  7C 08 03 A6 */	mtlr r0
/* 8018A2D4  38 21 00 20 */	addi r1, r1, 0x20
/* 8018A2D8  4E 80 00 20 */	blr 
