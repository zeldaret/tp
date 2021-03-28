lbl_801D8CCC:
/* 801D8CCC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D8CD0  7C 08 02 A6 */	mflr r0
/* 801D8CD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D8CD8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801D8CDC  7C 7F 1B 78 */	mr r31, r3
/* 801D8CE0  80 8D 86 48 */	lwz r4, mFader__13mDoGph_gInf_c(r13)
/* 801D8CE4  80 04 00 04 */	lwz r0, 4(r4)
/* 801D8CE8  2C 00 00 01 */	cmpwi r0, 1
/* 801D8CEC  40 82 01 00 */	bne lbl_801D8DEC
/* 801D8CF0  3C 80 80 3E */	lis r4, m_cpadInfo__8mDoCPd_c@ha
/* 801D8CF4  38 84 D2 E8 */	addi r4, r4, m_cpadInfo__8mDoCPd_c@l
/* 801D8CF8  80 A4 00 34 */	lwz r5, 0x34(r4)
/* 801D8CFC  54 A4 05 AD */	rlwinm. r4, r5, 0, 0x16, 0x16
/* 801D8D00  40 82 00 10 */	bne lbl_801D8D10
/* 801D8D04  88 1F 00 F7 */	lbz r0, 0xf7(r31)
/* 801D8D08  28 00 00 00 */	cmplwi r0, 0
/* 801D8D0C  40 82 00 44 */	bne lbl_801D8D50
lbl_801D8D10:
/* 801D8D10  28 04 00 00 */	cmplwi r4, 0
/* 801D8D14  41 82 00 20 */	beq lbl_801D8D34
/* 801D8D18  88 1F 00 F6 */	lbz r0, 0xf6(r31)
/* 801D8D1C  28 00 00 01 */	cmplwi r0, 1
/* 801D8D20  40 82 00 14 */	bne lbl_801D8D34
/* 801D8D24  38 00 00 00 */	li r0, 0
/* 801D8D28  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801D8D2C  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801D8D30  98 03 00 C3 */	stb r0, 0xc3(r3)
lbl_801D8D34:
/* 801D8D34  38 00 00 03 */	li r0, 3
/* 801D8D38  98 1F 00 F2 */	stb r0, 0xf2(r31)
/* 801D8D3C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801D8D40  88 03 00 B4 */	lbz r0, 0xb4(r3)
/* 801D8D44  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 801D8D48  98 03 00 B4 */	stb r0, 0xb4(r3)
/* 801D8D4C  48 00 00 A0 */	b lbl_801D8DEC
lbl_801D8D50:
/* 801D8D50  54 A0 05 EF */	rlwinm. r0, r5, 0, 0x17, 0x17
/* 801D8D54  41 82 00 94 */	beq lbl_801D8DE8
/* 801D8D58  88 9F 00 F4 */	lbz r4, 0xf4(r31)
/* 801D8D5C  88 BF 00 F5 */	lbz r5, 0xf5(r31)
/* 801D8D60  48 00 10 85 */	bl isGetInsect__14dMenu_Insect_cFii
/* 801D8D64  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801D8D68  41 82 00 48 */	beq lbl_801D8DB0
/* 801D8D6C  38 00 00 01 */	li r0, 1
/* 801D8D70  98 1F 00 F3 */	stb r0, 0xf3(r31)
/* 801D8D74  38 00 00 51 */	li r0, 0x51
/* 801D8D78  90 01 00 0C */	stw r0, 0xc(r1)
/* 801D8D7C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801D8D80  38 81 00 0C */	addi r4, r1, 0xc
/* 801D8D84  38 A0 00 00 */	li r5, 0
/* 801D8D88  38 C0 00 00 */	li r6, 0
/* 801D8D8C  38 E0 00 00 */	li r7, 0
/* 801D8D90  C0 22 A8 38 */	lfs f1, lit_3834(r2)
/* 801D8D94  FC 40 08 90 */	fmr f2, f1
/* 801D8D98  C0 62 A8 68 */	lfs f3, lit_4089(r2)
/* 801D8D9C  FC 80 18 90 */	fmr f4, f3
/* 801D8DA0  39 00 00 00 */	li r8, 0
/* 801D8DA4  48 0D 2B E1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801D8DA8  48 04 5C 29 */	bl dMeter2Info_set2DVibration__Fv
/* 801D8DAC  48 00 00 40 */	b lbl_801D8DEC
lbl_801D8DB0:
/* 801D8DB0  38 00 00 4A */	li r0, 0x4a
/* 801D8DB4  90 01 00 08 */	stw r0, 8(r1)
/* 801D8DB8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801D8DBC  38 81 00 08 */	addi r4, r1, 8
/* 801D8DC0  38 A0 00 00 */	li r5, 0
/* 801D8DC4  38 C0 00 00 */	li r6, 0
/* 801D8DC8  38 E0 00 00 */	li r7, 0
/* 801D8DCC  C0 22 A8 38 */	lfs f1, lit_3834(r2)
/* 801D8DD0  FC 40 08 90 */	fmr f2, f1
/* 801D8DD4  C0 62 A8 68 */	lfs f3, lit_4089(r2)
/* 801D8DD8  FC 80 18 90 */	fmr f4, f3
/* 801D8DDC  39 00 00 00 */	li r8, 0
/* 801D8DE0  48 0D 2B A5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801D8DE4  48 00 00 08 */	b lbl_801D8DEC
lbl_801D8DE8:
/* 801D8DE8  48 00 11 A5 */	bl cursorMove__14dMenu_Insect_cFv
lbl_801D8DEC:
/* 801D8DEC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801D8DF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D8DF4  7C 08 03 A6 */	mtlr r0
/* 801D8DF8  38 21 00 20 */	addi r1, r1, 0x20
/* 801D8DFC  4E 80 00 20 */	blr 
