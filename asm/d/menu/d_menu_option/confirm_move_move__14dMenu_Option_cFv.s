lbl_801E4D20:
/* 801E4D20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801E4D24  7C 08 02 A6 */	mflr r0
/* 801E4D28  90 01 00 24 */	stw r0, 0x24(r1)
/* 801E4D2C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801E4D30  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801E4D34  7C 7F 1B 78 */	mr r31, r3
/* 801E4D38  4B FF ED 6D */	bl checkLeftTrigger__14dMenu_Option_cFv
/* 801E4D3C  7C 7E 1B 78 */	mr r30, r3
/* 801E4D40  7F E3 FB 78 */	mr r3, r31
/* 801E4D44  4B FF ED 85 */	bl checkRightTrigger__14dMenu_Option_cFv
/* 801E4D48  3C 80 80 3E */	lis r4, m_cpadInfo__8mDoCPd_c@ha
/* 801E4D4C  38 84 D2 E8 */	addi r4, r4, m_cpadInfo__8mDoCPd_c@l
/* 801E4D50  80 84 00 34 */	lwz r4, 0x34(r4)
/* 801E4D54  54 80 05 EF */	rlwinm. r0, r4, 0, 0x17, 0x17
/* 801E4D58  41 82 00 1C */	beq lbl_801E4D74
/* 801E4D5C  7F E3 FB 78 */	mr r3, r31
/* 801E4D60  48 00 3C 99 */	bl yesNoSelectStart__14dMenu_Option_cFv
/* 801E4D64  38 00 00 07 */	li r0, 7
/* 801E4D68  98 1F 03 EF */	stb r0, 0x3ef(r31)
/* 801E4D6C  48 03 9C 69 */	bl dMeter2Info_set2DVibrationM__Fv
/* 801E4D70  48 00 01 00 */	b lbl_801E4E70
lbl_801E4D74:
/* 801E4D74  54 80 05 AD */	rlwinm. r0, r4, 0, 0x16, 0x16
/* 801E4D78  41 82 00 24 */	beq lbl_801E4D9C
/* 801E4D7C  38 00 00 00 */	li r0, 0
/* 801E4D80  98 1F 03 F9 */	stb r0, 0x3f9(r31)
/* 801E4D84  7F E3 FB 78 */	mr r3, r31
/* 801E4D88  48 00 3E B1 */	bl yesnoCancelAnmSet__14dMenu_Option_cFv
/* 801E4D8C  38 00 00 07 */	li r0, 7
/* 801E4D90  98 1F 03 EF */	stb r0, 0x3ef(r31)
/* 801E4D94  48 03 9C 41 */	bl dMeter2Info_set2DVibrationM__Fv
/* 801E4D98  48 00 00 D8 */	b lbl_801E4E70
lbl_801E4D9C:
/* 801E4D9C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801E4DA0  41 82 00 68 */	beq lbl_801E4E08
/* 801E4DA4  88 1F 03 F9 */	lbz r0, 0x3f9(r31)
/* 801E4DA8  28 00 00 00 */	cmplwi r0, 0
/* 801E4DAC  41 82 00 C4 */	beq lbl_801E4E70
/* 801E4DB0  38 00 00 A0 */	li r0, 0xa0
/* 801E4DB4  90 01 00 0C */	stw r0, 0xc(r1)
/* 801E4DB8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801E4DBC  38 81 00 0C */	addi r4, r1, 0xc
/* 801E4DC0  38 A0 00 00 */	li r5, 0
/* 801E4DC4  38 C0 00 00 */	li r6, 0
/* 801E4DC8  38 E0 00 00 */	li r7, 0
/* 801E4DCC  C0 22 A9 30 */	lfs f1, lit_4069(r2)
/* 801E4DD0  FC 40 08 90 */	fmr f2, f1
/* 801E4DD4  C0 62 A9 54 */	lfs f3, lit_4472(r2)
/* 801E4DD8  FC 80 18 90 */	fmr f4, f3
/* 801E4DDC  39 00 00 00 */	li r8, 0
/* 801E4DE0  48 0C 6B A5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801E4DE4  88 1F 03 F9 */	lbz r0, 0x3f9(r31)
/* 801E4DE8  98 1F 03 FA */	stb r0, 0x3fa(r31)
/* 801E4DEC  38 00 00 00 */	li r0, 0
/* 801E4DF0  98 1F 03 F9 */	stb r0, 0x3f9(r31)
/* 801E4DF4  7F E3 FB 78 */	mr r3, r31
/* 801E4DF8  48 00 3C D1 */	bl yesnoSelectAnmSet__14dMenu_Option_cFv
/* 801E4DFC  38 00 00 06 */	li r0, 6
/* 801E4E00  98 1F 03 EF */	stb r0, 0x3ef(r31)
/* 801E4E04  48 00 00 6C */	b lbl_801E4E70
lbl_801E4E08:
/* 801E4E08  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 801E4E0C  41 82 00 64 */	beq lbl_801E4E70
/* 801E4E10  88 1F 03 F9 */	lbz r0, 0x3f9(r31)
/* 801E4E14  28 00 00 01 */	cmplwi r0, 1
/* 801E4E18  41 82 00 58 */	beq lbl_801E4E70
/* 801E4E1C  38 00 00 A0 */	li r0, 0xa0
/* 801E4E20  90 01 00 08 */	stw r0, 8(r1)
/* 801E4E24  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801E4E28  38 81 00 08 */	addi r4, r1, 8
/* 801E4E2C  38 A0 00 00 */	li r5, 0
/* 801E4E30  38 C0 00 00 */	li r6, 0
/* 801E4E34  38 E0 00 00 */	li r7, 0
/* 801E4E38  C0 22 A9 30 */	lfs f1, lit_4069(r2)
/* 801E4E3C  FC 40 08 90 */	fmr f2, f1
/* 801E4E40  C0 62 A9 54 */	lfs f3, lit_4472(r2)
/* 801E4E44  FC 80 18 90 */	fmr f4, f3
/* 801E4E48  39 00 00 00 */	li r8, 0
/* 801E4E4C  48 0C 6B 39 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801E4E50  88 1F 03 F9 */	lbz r0, 0x3f9(r31)
/* 801E4E54  98 1F 03 FA */	stb r0, 0x3fa(r31)
/* 801E4E58  38 00 00 01 */	li r0, 1
/* 801E4E5C  98 1F 03 F9 */	stb r0, 0x3f9(r31)
/* 801E4E60  7F E3 FB 78 */	mr r3, r31
/* 801E4E64  48 00 3C 65 */	bl yesnoSelectAnmSet__14dMenu_Option_cFv
/* 801E4E68  38 00 00 06 */	li r0, 6
/* 801E4E6C  98 1F 03 EF */	stb r0, 0x3ef(r31)
lbl_801E4E70:
/* 801E4E70  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 801E4E74  4B FA D0 A5 */	bl _move__15dFile_warning_cFv
/* 801E4E78  7F E3 FB 78 */	mr r3, r31
/* 801E4E7C  4B FF EC 71 */	bl setAnimation__14dMenu_Option_cFv
/* 801E4E80  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801E4E84  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801E4E88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801E4E8C  7C 08 03 A6 */	mtlr r0
/* 801E4E90  38 21 00 20 */	addi r1, r1, 0x20
/* 801E4E94  4E 80 00 20 */	blr 
