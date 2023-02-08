lbl_8076D3C4:
/* 8076D3C4  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8076D3C8  7C 08 02 A6 */	mflr r0
/* 8076D3CC  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8076D3D0  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8076D3D4  4B BF 4E 01 */	bl _savegpr_27
/* 8076D3D8  7C 7E 1B 78 */	mr r30, r3
/* 8076D3DC  3C 60 80 78 */	lis r3, lit_4018@ha /* 0x80779DFC@ha */
/* 8076D3E0  3B E3 9D FC */	addi r31, r3, lit_4018@l /* 0x80779DFC@l */
/* 8076D3E4  38 61 00 20 */	addi r3, r1, 0x20
/* 8076D3E8  4B 90 A8 81 */	bl __ct__11dBgS_LinChkFv
/* 8076D3EC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8076D3F0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8076D3F4  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8076D3F8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8076D3FC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8076D400  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8076D404  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 8076D408  EC 01 00 2A */	fadds f0, f1, f0
/* 8076D40C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8076D410  80 7E 0B CC */	lwz r3, 0xbcc(r30)
/* 8076D414  83 83 00 08 */	lwz r28, 8(r3)
/* 8076D418  3B 60 00 00 */	li r27, 0
/* 8076D41C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8076D420  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8076D424  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 8076D428  48 00 00 80 */	b lbl_8076D4A8
lbl_8076D42C:
/* 8076D42C  2C 1B 00 FF */	cmpwi r27, 0xff
/* 8076D430  40 80 00 70 */	bge lbl_8076D4A0
/* 8076D434  C0 1C 00 04 */	lfs f0, 4(r28)
/* 8076D438  D0 01 00 08 */	stfs f0, 8(r1)
/* 8076D43C  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8076D440  C0 1C 00 08 */	lfs f0, 8(r28)
/* 8076D444  EC 01 00 2A */	fadds f0, f1, f0
/* 8076D448  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8076D44C  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 8076D450  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8076D454  38 61 00 20 */	addi r3, r1, 0x20
/* 8076D458  38 81 00 14 */	addi r4, r1, 0x14
/* 8076D45C  38 A1 00 08 */	addi r5, r1, 8
/* 8076D460  7F C6 F3 78 */	mr r6, r30
/* 8076D464  4B 90 A9 01 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8076D468  7F A3 EB 78 */	mr r3, r29
/* 8076D46C  38 81 00 20 */	addi r4, r1, 0x20
/* 8076D470  4B 90 6F 45 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 8076D474  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8076D478  40 82 00 18 */	bne lbl_8076D490
/* 8076D47C  38 00 00 01 */	li r0, 1
/* 8076D480  3C 60 80 78 */	lis r3, check_index@ha /* 0x8077A91C@ha */
/* 8076D484  38 63 A9 1C */	addi r3, r3, check_index@l /* 0x8077A91C@l */
/* 8076D488  7C 03 D9 AE */	stbx r0, r3, r27
/* 8076D48C  48 00 00 14 */	b lbl_8076D4A0
lbl_8076D490:
/* 8076D490  38 00 00 00 */	li r0, 0
/* 8076D494  3C 60 80 78 */	lis r3, check_index@ha /* 0x8077A91C@ha */
/* 8076D498  38 63 A9 1C */	addi r3, r3, check_index@l /* 0x8077A91C@l */
/* 8076D49C  7C 03 D9 AE */	stbx r0, r3, r27
lbl_8076D4A0:
/* 8076D4A0  3B 7B 00 01 */	addi r27, r27, 1
/* 8076D4A4  3B 9C 00 10 */	addi r28, r28, 0x10
lbl_8076D4A8:
/* 8076D4A8  80 7E 0B CC */	lwz r3, 0xbcc(r30)
/* 8076D4AC  A0 03 00 00 */	lhz r0, 0(r3)
/* 8076D4B0  7C 1B 00 00 */	cmpw r27, r0
/* 8076D4B4  41 80 FF 78 */	blt lbl_8076D42C
/* 8076D4B8  C0 DF 00 00 */	lfs f6, 0(r31)
/* 8076D4BC  38 A0 00 00 */	li r5, 0
/* 8076D4C0  38 C0 00 00 */	li r6, 0
/* 8076D4C4  C0 1F 00 7C */	lfs f0, 0x7c(r31)
lbl_8076D4C8:
/* 8076D4C8  80 7E 0B CC */	lwz r3, 0xbcc(r30)
/* 8076D4CC  80 83 00 08 */	lwz r4, 8(r3)
/* 8076D4D0  38 E0 00 00 */	li r7, 0
/* 8076D4D4  A0 03 00 00 */	lhz r0, 0(r3)
/* 8076D4D8  7C 09 03 A6 */	mtctr r0
/* 8076D4DC  2C 00 00 00 */	cmpwi r0, 0
/* 8076D4E0  40 81 00 8C */	ble lbl_8076D56C
lbl_8076D4E4:
/* 8076D4E4  2C 07 00 FF */	cmpwi r7, 0xff
/* 8076D4E8  40 80 00 78 */	bge lbl_8076D560
/* 8076D4EC  3C 60 80 78 */	lis r3, check_index@ha /* 0x8077A91C@ha */
/* 8076D4F0  38 63 A9 1C */	addi r3, r3, check_index@l /* 0x8077A91C@l */
/* 8076D4F4  7C 03 38 AE */	lbzx r0, r3, r7
/* 8076D4F8  28 00 00 00 */	cmplwi r0, 0
/* 8076D4FC  41 82 00 64 */	beq lbl_8076D560
/* 8076D500  C0 5E 04 D0 */	lfs f2, 0x4d0(r30)
/* 8076D504  C0 24 00 04 */	lfs f1, 4(r4)
/* 8076D508  EC 82 08 28 */	fsubs f4, f2, f1
/* 8076D50C  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 8076D510  C0 24 00 08 */	lfs f1, 8(r4)
/* 8076D514  EC A2 08 28 */	fsubs f5, f2, f1
/* 8076D518  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 8076D51C  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 8076D520  EC 22 08 28 */	fsubs f1, f2, f1
/* 8076D524  EC 61 00 72 */	fmuls f3, f1, f1
/* 8076D528  EC 44 01 32 */	fmuls f2, f4, f4
/* 8076D52C  EC 25 01 72 */	fmuls f1, f5, f5
/* 8076D530  EC 22 08 2A */	fadds f1, f2, f1
/* 8076D534  EC 43 08 2A */	fadds f2, f3, f1
/* 8076D538  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8076D53C  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8076D540  40 81 00 0C */	ble lbl_8076D54C
/* 8076D544  FC 20 10 34 */	frsqrte f1, f2
/* 8076D548  EC 41 00 B2 */	fmuls f2, f1, f2
lbl_8076D54C:
/* 8076D54C  FC 02 30 40 */	fcmpo cr0, f2, f6
/* 8076D550  40 80 00 10 */	bge lbl_8076D560
/* 8076D554  98 FE 0B D0 */	stb r7, 0xbd0(r30)
/* 8076D558  38 A0 00 01 */	li r5, 1
/* 8076D55C  48 00 00 10 */	b lbl_8076D56C
lbl_8076D560:
/* 8076D560  38 E7 00 01 */	addi r7, r7, 1
/* 8076D564  38 84 00 10 */	addi r4, r4, 0x10
/* 8076D568  42 00 FF 7C */	bdnz lbl_8076D4E4
lbl_8076D56C:
/* 8076D56C  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 8076D570  40 82 00 14 */	bne lbl_8076D584
/* 8076D574  EC C6 00 2A */	fadds f6, f6, f0
/* 8076D578  38 C6 00 01 */	addi r6, r6, 1
/* 8076D57C  2C 06 00 64 */	cmpwi r6, 0x64
/* 8076D580  41 80 FF 48 */	blt lbl_8076D4C8
lbl_8076D584:
/* 8076D584  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 8076D588  40 82 00 18 */	bne lbl_8076D5A0
/* 8076D58C  38 61 00 20 */	addi r3, r1, 0x20
/* 8076D590  38 80 FF FF */	li r4, -1
/* 8076D594  4B 90 A7 49 */	bl __dt__11dBgS_LinChkFv
/* 8076D598  38 60 00 00 */	li r3, 0
/* 8076D59C  48 00 00 3C */	b lbl_8076D5D8
lbl_8076D5A0:
/* 8076D5A0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8076D5A4  4B AF A3 B1 */	bl cM_rndF__Ff
/* 8076D5A8  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 8076D5AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8076D5B0  40 80 00 10 */	bge lbl_8076D5C0
/* 8076D5B4  38 00 00 01 */	li r0, 1
/* 8076D5B8  98 1E 0B D1 */	stb r0, 0xbd1(r30)
/* 8076D5BC  48 00 00 0C */	b lbl_8076D5C8
lbl_8076D5C0:
/* 8076D5C0  38 00 FF FF */	li r0, -1
/* 8076D5C4  98 1E 0B D1 */	stb r0, 0xbd1(r30)
lbl_8076D5C8:
/* 8076D5C8  38 61 00 20 */	addi r3, r1, 0x20
/* 8076D5CC  38 80 FF FF */	li r4, -1
/* 8076D5D0  4B 90 A7 0D */	bl __dt__11dBgS_LinChkFv
/* 8076D5D4  38 60 00 01 */	li r3, 1
lbl_8076D5D8:
/* 8076D5D8  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8076D5DC  4B BF 4C 45 */	bl _restgpr_27
/* 8076D5E0  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8076D5E4  7C 08 03 A6 */	mtlr r0
/* 8076D5E8  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8076D5EC  4E 80 00 20 */	blr 
