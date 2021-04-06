lbl_8024FB08:
/* 8024FB08  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8024FB0C  7C 08 02 A6 */	mflr r0
/* 8024FB10  90 01 00 34 */	stw r0, 0x34(r1)
/* 8024FB14  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8024FB18  7C 7F 1B 78 */	mr r31, r3
/* 8024FB1C  80 63 00 04 */	lwz r3, 4(r3)
/* 8024FB20  4B DE 29 89 */	bl checkRightTrigger__9STControlFv
/* 8024FB24  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8024FB28  40 82 02 64 */	bne lbl_8024FD8C
/* 8024FB2C  80 7F 00 04 */	lwz r3, 4(r31)
/* 8024FB30  4B DE 28 FD */	bl checkLeftTrigger__9STControlFv
/* 8024FB34  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8024FB38  40 82 02 54 */	bne lbl_8024FD8C
/* 8024FB3C  80 7F 00 04 */	lwz r3, 4(r31)
/* 8024FB40  4B DE 29 E5 */	bl checkUpTrigger__9STControlFv
/* 8024FB44  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8024FB48  41 82 00 60 */	beq lbl_8024FBA8
/* 8024FB4C  38 00 00 B0 */	li r0, 0xb0
/* 8024FB50  90 01 00 20 */	stw r0, 0x20(r1)
/* 8024FB54  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8024FB58  38 81 00 20 */	addi r4, r1, 0x20
/* 8024FB5C  38 A0 00 00 */	li r5, 0
/* 8024FB60  38 C0 00 00 */	li r6, 0
/* 8024FB64  38 E0 00 00 */	li r7, 0
/* 8024FB68  C0 22 B3 C0 */	lfs f1, lit_3820(r2)
/* 8024FB6C  FC 40 08 90 */	fmr f2, f1
/* 8024FB70  C0 62 B3 C4 */	lfs f3, lit_3886(r2)
/* 8024FB74  FC 80 18 90 */	fmr f4, f3
/* 8024FB78  39 00 00 00 */	li r8, 0
/* 8024FB7C  48 05 BE 09 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8024FB80  88 1F 02 AF */	lbz r0, 0x2af(r31)
/* 8024FB84  98 1F 02 B0 */	stb r0, 0x2b0(r31)
/* 8024FB88  7F E3 FB 78 */	mr r3, r31
/* 8024FB8C  38 80 00 04 */	li r4, 4
/* 8024FB90  48 00 09 11 */	bl selectCursorPosSet__7dName_cFi
/* 8024FB94  7F E3 FB 78 */	mr r3, r31
/* 8024FB98  48 00 02 09 */	bl MenuSelectAnmInit__7dName_cFv
/* 8024FB9C  38 00 00 06 */	li r0, 6
/* 8024FBA0  98 1F 02 AB */	stb r0, 0x2ab(r31)
/* 8024FBA4  48 00 01 E8 */	b lbl_8024FD8C
lbl_8024FBA8:
/* 8024FBA8  80 7F 00 04 */	lwz r3, 4(r31)
/* 8024FBAC  4B DE 29 F5 */	bl checkDownTrigger__9STControlFv
/* 8024FBB0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8024FBB4  41 82 00 60 */	beq lbl_8024FC14
/* 8024FBB8  38 00 00 B0 */	li r0, 0xb0
/* 8024FBBC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8024FBC0  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8024FBC4  38 81 00 1C */	addi r4, r1, 0x1c
/* 8024FBC8  38 A0 00 00 */	li r5, 0
/* 8024FBCC  38 C0 00 00 */	li r6, 0
/* 8024FBD0  38 E0 00 00 */	li r7, 0
/* 8024FBD4  C0 22 B3 C0 */	lfs f1, lit_3820(r2)
/* 8024FBD8  FC 40 08 90 */	fmr f2, f1
/* 8024FBDC  C0 62 B3 C4 */	lfs f3, lit_3886(r2)
/* 8024FBE0  FC 80 18 90 */	fmr f4, f3
/* 8024FBE4  39 00 00 00 */	li r8, 0
/* 8024FBE8  48 05 BD 9D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8024FBEC  88 1F 02 AF */	lbz r0, 0x2af(r31)
/* 8024FBF0  98 1F 02 B0 */	stb r0, 0x2b0(r31)
/* 8024FBF4  7F E3 FB 78 */	mr r3, r31
/* 8024FBF8  38 80 00 00 */	li r4, 0
/* 8024FBFC  48 00 08 A5 */	bl selectCursorPosSet__7dName_cFi
/* 8024FC00  7F E3 FB 78 */	mr r3, r31
/* 8024FC04  48 00 01 9D */	bl MenuSelectAnmInit__7dName_cFv
/* 8024FC08  38 00 00 06 */	li r0, 6
/* 8024FC0C  98 1F 02 AB */	stb r0, 0x2ab(r31)
/* 8024FC10  48 00 01 7C */	b lbl_8024FD8C
lbl_8024FC14:
/* 8024FC14  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 8024FC18  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 8024FC1C  80 63 00 34 */	lwz r3, 0x34(r3)
/* 8024FC20  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 8024FC24  41 82 00 D0 */	beq lbl_8024FCF4
/* 8024FC28  88 1F 02 AF */	lbz r0, 0x2af(r31)
/* 8024FC2C  28 00 00 03 */	cmplwi r0, 3
/* 8024FC30  40 82 00 84 */	bne lbl_8024FCB4
/* 8024FC34  7F E3 FB 78 */	mr r3, r31
/* 8024FC38  4B FF EF D9 */	bl nameCheck__7dName_cFv
/* 8024FC3C  2C 03 00 00 */	cmpwi r3, 0
/* 8024FC40  41 82 00 3C */	beq lbl_8024FC7C
/* 8024FC44  38 00 00 B3 */	li r0, 0xb3
/* 8024FC48  90 01 00 18 */	stw r0, 0x18(r1)
/* 8024FC4C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8024FC50  38 81 00 18 */	addi r4, r1, 0x18
/* 8024FC54  38 A0 00 00 */	li r5, 0
/* 8024FC58  38 C0 00 00 */	li r6, 0
/* 8024FC5C  38 E0 00 00 */	li r7, 0
/* 8024FC60  C0 22 B3 C0 */	lfs f1, lit_3820(r2)
/* 8024FC64  FC 40 08 90 */	fmr f2, f1
/* 8024FC68  C0 62 B3 C4 */	lfs f3, lit_3886(r2)
/* 8024FC6C  FC 80 18 90 */	fmr f4, f3
/* 8024FC70  39 00 00 00 */	li r8, 0
/* 8024FC74  48 05 BD 11 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8024FC78  48 00 00 70 */	b lbl_8024FCE8
lbl_8024FC7C:
/* 8024FC7C  38 00 00 4A */	li r0, 0x4a
/* 8024FC80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024FC84  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8024FC88  38 81 00 14 */	addi r4, r1, 0x14
/* 8024FC8C  38 A0 00 00 */	li r5, 0
/* 8024FC90  38 C0 00 00 */	li r6, 0
/* 8024FC94  38 E0 00 00 */	li r7, 0
/* 8024FC98  C0 22 B3 C0 */	lfs f1, lit_3820(r2)
/* 8024FC9C  FC 40 08 90 */	fmr f2, f1
/* 8024FCA0  C0 62 B3 C4 */	lfs f3, lit_3886(r2)
/* 8024FCA4  FC 80 18 90 */	fmr f4, f3
/* 8024FCA8  39 00 00 00 */	li r8, 0
/* 8024FCAC  48 05 BC D9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8024FCB0  48 00 00 38 */	b lbl_8024FCE8
lbl_8024FCB4:
/* 8024FCB4  38 00 00 6D */	li r0, 0x6d
/* 8024FCB8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8024FCBC  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8024FCC0  38 81 00 10 */	addi r4, r1, 0x10
/* 8024FCC4  38 A0 00 00 */	li r5, 0
/* 8024FCC8  38 C0 00 00 */	li r6, 0
/* 8024FCCC  38 E0 00 00 */	li r7, 0
/* 8024FCD0  C0 22 B3 C0 */	lfs f1, lit_3820(r2)
/* 8024FCD4  FC 40 08 90 */	fmr f2, f1
/* 8024FCD8  C0 62 B3 C4 */	lfs f3, lit_3886(r2)
/* 8024FCDC  FC 80 18 90 */	fmr f4, f3
/* 8024FCE0  39 00 00 00 */	li r8, 0
/* 8024FCE4  48 05 BC A1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8024FCE8:
/* 8024FCE8  7F E3 FB 78 */	mr r3, r31
/* 8024FCEC  48 00 02 B9 */	bl menuAbtnSelect__7dName_cFv
/* 8024FCF0  48 00 00 9C */	b lbl_8024FD8C
lbl_8024FCF4:
/* 8024FCF4  54 60 04 E7 */	rlwinm. r0, r3, 0, 0x13, 0x13
/* 8024FCF8  41 82 00 94 */	beq lbl_8024FD8C
/* 8024FCFC  88 1F 02 AF */	lbz r0, 0x2af(r31)
/* 8024FD00  28 00 00 03 */	cmplwi r0, 3
/* 8024FD04  40 82 00 88 */	bne lbl_8024FD8C
/* 8024FD08  7F E3 FB 78 */	mr r3, r31
/* 8024FD0C  4B FF EF 05 */	bl nameCheck__7dName_cFv
/* 8024FD10  2C 03 00 00 */	cmpwi r3, 0
/* 8024FD14  41 82 00 3C */	beq lbl_8024FD50
/* 8024FD18  38 00 00 B3 */	li r0, 0xb3
/* 8024FD1C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8024FD20  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8024FD24  38 81 00 0C */	addi r4, r1, 0xc
/* 8024FD28  38 A0 00 00 */	li r5, 0
/* 8024FD2C  38 C0 00 00 */	li r6, 0
/* 8024FD30  38 E0 00 00 */	li r7, 0
/* 8024FD34  C0 22 B3 C0 */	lfs f1, lit_3820(r2)
/* 8024FD38  FC 40 08 90 */	fmr f2, f1
/* 8024FD3C  C0 62 B3 C4 */	lfs f3, lit_3886(r2)
/* 8024FD40  FC 80 18 90 */	fmr f4, f3
/* 8024FD44  39 00 00 00 */	li r8, 0
/* 8024FD48  48 05 BC 3D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8024FD4C  48 00 00 38 */	b lbl_8024FD84
lbl_8024FD50:
/* 8024FD50  38 00 00 4A */	li r0, 0x4a
/* 8024FD54  90 01 00 08 */	stw r0, 8(r1)
/* 8024FD58  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8024FD5C  38 81 00 08 */	addi r4, r1, 8
/* 8024FD60  38 A0 00 00 */	li r5, 0
/* 8024FD64  38 C0 00 00 */	li r6, 0
/* 8024FD68  38 E0 00 00 */	li r7, 0
/* 8024FD6C  C0 22 B3 C0 */	lfs f1, lit_3820(r2)
/* 8024FD70  FC 40 08 90 */	fmr f2, f1
/* 8024FD74  C0 62 B3 C4 */	lfs f3, lit_3886(r2)
/* 8024FD78  FC 80 18 90 */	fmr f4, f3
/* 8024FD7C  39 00 00 00 */	li r8, 0
/* 8024FD80  48 05 BC 05 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8024FD84:
/* 8024FD84  7F E3 FB 78 */	mr r3, r31
/* 8024FD88  48 00 02 1D */	bl menuAbtnSelect__7dName_cFv
lbl_8024FD8C:
/* 8024FD8C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8024FD90  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8024FD94  7C 08 03 A6 */	mtlr r0
/* 8024FD98  38 21 00 30 */	addi r1, r1, 0x30
/* 8024FD9C  4E 80 00 20 */	blr 
