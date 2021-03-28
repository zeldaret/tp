lbl_80D5E9F8:
/* 80D5E9F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D5E9FC  7C 08 02 A6 */	mflr r0
/* 80D5EA00  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D5EA04  39 61 00 30 */	addi r11, r1, 0x30
/* 80D5EA08  4B 60 37 D0 */	b _savegpr_28
/* 80D5EA0C  7C 7E 1B 78 */	mr r30, r3
/* 80D5EA10  3C 60 80 D6 */	lis r3, lit_3734@ha
/* 80D5EA14  3B E3 EC E0 */	addi r31, r3, lit_3734@l
/* 80D5EA18  3C 60 80 D6 */	lis r3, search__FPvPv@ha
/* 80D5EA1C  38 63 E6 4C */	addi r3, r3, search__FPvPv@l
/* 80D5EA20  7F C4 F3 78 */	mr r4, r30
/* 80D5EA24  4B 2B AD D4 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80D5EA28  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D5EA2C  54 04 FE 3E */	rlwinm r4, r0, 0x1f, 0x18, 0x1f
/* 80D5EA30  2C 04 00 FF */	cmpwi r4, 0xff
/* 80D5EA34  41 82 01 54 */	beq lbl_80D5EB88
/* 80D5EA38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D5EA3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D5EA40  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80D5EA44  7C 05 07 74 */	extsb r5, r0
/* 80D5EA48  4B 2D 69 18 */	b isSwitch__10dSv_info_cCFii
/* 80D5EA4C  2C 03 00 00 */	cmpwi r3, 0
/* 80D5EA50  41 82 00 C4 */	beq lbl_80D5EB14
/* 80D5EA54  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80D5EA58  38 03 00 01 */	addi r0, r3, 1
/* 80D5EA5C  90 1E 05 70 */	stw r0, 0x570(r30)
/* 80D5EA60  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 80D5EA64  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80D5EA68  40 81 00 0C */	ble lbl_80D5EA74
/* 80D5EA6C  38 00 00 1E */	li r0, 0x1e
/* 80D5EA70  90 1E 05 70 */	stw r0, 0x570(r30)
lbl_80D5EA74:
/* 80D5EA74  38 00 00 00 */	li r0, 0
/* 80D5EA78  90 1E 05 74 */	stw r0, 0x574(r30)
/* 80D5EA7C  C0 5F 00 3C */	lfs f2, 0x3c(r31)
/* 80D5EA80  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 80D5EA84  C8 3F 00 30 */	lfd f1, 0x30(r31)
/* 80D5EA88  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80D5EA8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5EA90  3C 00 43 30 */	lis r0, 0x4330
/* 80D5EA94  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D5EA98  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80D5EA9C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D5EAA0  EC 22 00 32 */	fmuls f1, f2, f0
/* 80D5EAA4  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80D5EAA8  EC 01 00 24 */	fdivs f0, f1, f0
/* 80D5EAAC  FC 00 00 1E */	fctiwz f0, f0
/* 80D5EAB0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80D5EAB4  83 81 00 1C */	lwz r28, 0x1c(r1)
/* 80D5EAB8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D5EABC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80D5EAC0  40 82 00 BC */	bne lbl_80D5EB7C
/* 80D5EAC4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D5EAC8  7C 03 07 74 */	extsb r3, r0
/* 80D5EACC  3C 80 00 09 */	lis r4, 0x0009 /* 0x00090012@ha */
/* 80D5EAD0  38 04 00 12 */	addi r0, r4, 0x0012 /* 0x00090012@l */
/* 80D5EAD4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D5EAD8  3C 80 80 45 */	lis r4, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D5EADC  83 A4 13 68 */	lwz r29, mAudioMgrPtr__10Z2AudioMgr@l(r4)
/* 80D5EAE0  4B 2C E5 8C */	b dComIfGp_getReverb__Fi
/* 80D5EAE4  7C 67 1B 78 */	mr r7, r3
/* 80D5EAE8  7F A3 EB 78 */	mr r3, r29
/* 80D5EAEC  38 81 00 0C */	addi r4, r1, 0xc
/* 80D5EAF0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D5EAF4  38 C0 00 00 */	li r6, 0
/* 80D5EAF8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80D5EAFC  FC 40 08 90 */	fmr f2, f1
/* 80D5EB00  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 80D5EB04  FC 80 18 90 */	fmr f4, f3
/* 80D5EB08  39 00 00 00 */	li r8, 0
/* 80D5EB0C  4B 54 DA 00 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D5EB10  48 00 00 6C */	b lbl_80D5EB7C
lbl_80D5EB14:
/* 80D5EB14  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80D5EB18  38 03 00 01 */	addi r0, r3, 1
/* 80D5EB1C  90 1E 05 74 */	stw r0, 0x574(r30)
/* 80D5EB20  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 80D5EB24  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80D5EB28  40 81 00 0C */	ble lbl_80D5EB34
/* 80D5EB2C  38 00 00 1E */	li r0, 0x1e
/* 80D5EB30  90 1E 05 74 */	stw r0, 0x574(r30)
lbl_80D5EB34:
/* 80D5EB34  38 00 00 00 */	li r0, 0
/* 80D5EB38  90 1E 05 70 */	stw r0, 0x570(r30)
/* 80D5EB3C  C0 5F 00 3C */	lfs f2, 0x3c(r31)
/* 80D5EB40  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 80D5EB44  C8 3F 00 30 */	lfd f1, 0x30(r31)
/* 80D5EB48  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80D5EB4C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80D5EB50  3C 00 43 30 */	lis r0, 0x4330
/* 80D5EB54  90 01 00 18 */	stw r0, 0x18(r1)
/* 80D5EB58  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80D5EB5C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D5EB60  EC 22 00 32 */	fmuls f1, f2, f0
/* 80D5EB64  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80D5EB68  EC 01 00 24 */	fdivs f0, f1, f0
/* 80D5EB6C  EC 02 00 28 */	fsubs f0, f2, f0
/* 80D5EB70  FC 00 00 1E */	fctiwz f0, f0
/* 80D5EB74  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80D5EB78  83 81 00 14 */	lwz r28, 0x14(r1)
lbl_80D5EB7C:
/* 80D5EB7C  7F 83 07 74 */	extsb r3, r28
/* 80D5EB80  4B 2C ED 7C */	b dComIfGs_BossLife_public_Set__FSc
/* 80D5EB84  48 00 00 58 */	b lbl_80D5EBDC
lbl_80D5EB88:
/* 80D5EB88  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80D5EB8C  40 82 00 50 */	bne lbl_80D5EBDC
/* 80D5EB90  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D5EB94  7C 03 07 74 */	extsb r3, r0
/* 80D5EB98  3C 80 00 09 */	lis r4, 0x0009 /* 0x00090012@ha */
/* 80D5EB9C  38 04 00 12 */	addi r0, r4, 0x0012 /* 0x00090012@l */
/* 80D5EBA0  90 01 00 08 */	stw r0, 8(r1)
/* 80D5EBA4  3C 80 80 45 */	lis r4, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D5EBA8  83 A4 13 68 */	lwz r29, mAudioMgrPtr__10Z2AudioMgr@l(r4)
/* 80D5EBAC  4B 2C E4 C0 */	b dComIfGp_getReverb__Fi
/* 80D5EBB0  7C 67 1B 78 */	mr r7, r3
/* 80D5EBB4  7F A3 EB 78 */	mr r3, r29
/* 80D5EBB8  38 81 00 08 */	addi r4, r1, 8
/* 80D5EBBC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D5EBC0  38 C0 00 00 */	li r6, 0
/* 80D5EBC4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80D5EBC8  FC 40 08 90 */	fmr f2, f1
/* 80D5EBCC  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 80D5EBD0  FC 80 18 90 */	fmr f4, f3
/* 80D5EBD4  39 00 00 00 */	li r8, 0
/* 80D5EBD8  4B 54 D9 34 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D5EBDC:
/* 80D5EBDC  38 60 00 01 */	li r3, 1
/* 80D5EBE0  39 61 00 30 */	addi r11, r1, 0x30
/* 80D5EBE4  4B 60 36 40 */	b _restgpr_28
/* 80D5EBE8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D5EBEC  7C 08 03 A6 */	mtlr r0
/* 80D5EBF0  38 21 00 30 */	addi r1, r1, 0x30
/* 80D5EBF4  4E 80 00 20 */	blr 
