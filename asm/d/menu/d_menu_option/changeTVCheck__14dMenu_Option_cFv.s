lbl_801E7DF4:
/* 801E7DF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801E7DF8  7C 08 02 A6 */	mflr r0
/* 801E7DFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801E7E00  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801E7E04  7C 7F 1B 78 */	mr r31, r3
/* 801E7E08  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 801E7E0C  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l
/* 801E7E10  80 03 00 34 */	lwz r0, 0x34(r3)
/* 801E7E14  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 801E7E18  41 82 00 6C */	beq lbl_801E7E84
/* 801E7E1C  38 00 00 A3 */	li r0, 0xa3
/* 801E7E20  90 01 00 08 */	stw r0, 8(r1)
/* 801E7E24  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801E7E28  38 81 00 08 */	addi r4, r1, 8
/* 801E7E2C  38 A0 00 00 */	li r5, 0
/* 801E7E30  38 C0 00 00 */	li r6, 0
/* 801E7E34  38 E0 00 00 */	li r7, 0
/* 801E7E38  C0 22 A9 30 */	lfs f1, lit_4069(r2)
/* 801E7E3C  FC 40 08 90 */	fmr f2, f1
/* 801E7E40  C0 62 A9 54 */	lfs f3, lit_4472(r2)
/* 801E7E44  FC 80 18 90 */	fmr f4, f3
/* 801E7E48  39 00 00 00 */	li r8, 0
/* 801E7E4C  48 0C 3B 39 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801E7E50  38 00 00 00 */	li r0, 0
/* 801E7E54  98 1F 03 F3 */	stb r0, 0x3f3(r31)
/* 801E7E58  7F E3 FB 78 */	mr r3, r31
/* 801E7E5C  38 80 00 00 */	li r4, 0
/* 801E7E60  48 00 00 39 */	bl setAButtonString__14dMenu_Option_cFUs
/* 801E7E64  7F E3 FB 78 */	mr r3, r31
/* 801E7E68  38 80 00 00 */	li r4, 0
/* 801E7E6C  48 00 01 31 */	bl setBButtonString__14dMenu_Option_cFUs
/* 801E7E70  7F E3 FB 78 */	mr r3, r31
/* 801E7E74  38 80 00 00 */	li r4, 0
/* 801E7E78  4B FF FE E9 */	bl setZButtonString__14dMenu_Option_cFUs
/* 801E7E7C  48 01 4F 8D */	bl dMw_fade_out__5dMw_cFv
/* 801E7E80  48 03 6B 51 */	bl dMeter2Info_set2DVibration__Fv
lbl_801E7E84:
/* 801E7E84  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801E7E88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801E7E8C  7C 08 03 A6 */	mtlr r0
/* 801E7E90  38 21 00 20 */	addi r1, r1, 0x20
/* 801E7E94  4E 80 00 20 */	blr 
