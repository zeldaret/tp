lbl_80A4CABC:
/* 80A4CABC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A4CAC0  7C 08 02 A6 */	mflr r0
/* 80A4CAC4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A4CAC8  39 61 00 30 */	addi r11, r1, 0x30
/* 80A4CACC  4B 91 57 11 */	bl _savegpr_29
/* 80A4CAD0  7C 7E 1B 78 */	mr r30, r3
/* 80A4CAD4  3C 60 80 A6 */	lis r3, lit_4030@ha /* 0x80A5DEFC@ha */
/* 80A4CAD8  3B E3 DE FC */	addi r31, r3, lit_4030@l /* 0x80A5DEFC@l */
/* 80A4CADC  3C 60 80 A5 */	lis r3, s_dn_sub__FPvPv@ha /* 0x80A4CA70@ha */
/* 80A4CAE0  38 63 CA 70 */	addi r3, r3, s_dn_sub__FPvPv@l /* 0x80A4CA70@l */
/* 80A4CAE4  7F C4 F3 78 */	mr r4, r30
/* 80A4CAE8  4B 5D 48 51 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80A4CAEC  7C 7D 1B 78 */	mr r29, r3
/* 80A4CAF0  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A4CAF4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80A4CAF8  FC 00 00 1E */	fctiwz f0, f0
/* 80A4CAFC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80A4CB00  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80A4CB04  A8 1E 05 EA */	lha r0, 0x5ea(r30)
/* 80A4CB08  28 00 00 18 */	cmplwi r0, 0x18
/* 80A4CB0C  41 81 04 04 */	bgt lbl_80A4CF10
/* 80A4CB10  3C 60 80 A6 */	lis r3, lit_5678@ha /* 0x80A5E7D4@ha */
/* 80A4CB14  38 63 E7 D4 */	addi r3, r3, lit_5678@l /* 0x80A5E7D4@l */
/* 80A4CB18  54 00 10 3A */	slwi r0, r0, 2
/* 80A4CB1C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A4CB20  7C 09 03 A6 */	mtctr r0
/* 80A4CB24  4E 80 04 20 */	bctr 
lbl_80A4CB28:
/* 80A4CB28  7F C3 F3 78 */	mr r3, r30
/* 80A4CB2C  38 80 00 33 */	li r4, 0x33
/* 80A4CB30  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A4CB34  38 A0 00 02 */	li r5, 2
/* 80A4CB38  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A4CB3C  4B FF C6 69 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4CB40  38 00 00 01 */	li r0, 1
/* 80A4CB44  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80A4CB48  38 00 00 64 */	li r0, 0x64
/* 80A4CB4C  B0 1E 05 F0 */	sth r0, 0x5f0(r30)
lbl_80A4CB50:
/* 80A4CB50  38 00 00 01 */	li r0, 1
/* 80A4CB54  98 1E 05 FC */	stb r0, 0x5fc(r30)
/* 80A4CB58  A8 1E 05 F0 */	lha r0, 0x5f0(r30)
/* 80A4CB5C  2C 00 00 00 */	cmpwi r0, 0
/* 80A4CB60  40 82 03 B0 */	bne lbl_80A4CF10
/* 80A4CB64  38 00 00 14 */	li r0, 0x14
/* 80A4CB68  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80A4CB6C  7F C3 F3 78 */	mr r3, r30
/* 80A4CB70  38 80 00 1E */	li r4, 0x1e
/* 80A4CB74  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A4CB78  38 A0 00 02 */	li r5, 2
/* 80A4CB7C  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A4CB80  4B FF C6 25 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4CB84  38 00 00 5A */	li r0, 0x5a
/* 80A4CB88  B0 1E 05 F0 */	sth r0, 0x5f0(r30)
/* 80A4CB8C  3C 60 80 A5 */	lis r3, s_resq_sub__FPvPv@ha /* 0x80A49848@ha */
/* 80A4CB90  38 63 98 48 */	addi r3, r3, s_resq_sub__FPvPv@l /* 0x80A49848@l */
/* 80A4CB94  7F C4 F3 78 */	mr r4, r30
/* 80A4CB98  4B 5D 47 A1 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80A4CB9C  48 00 03 74 */	b lbl_80A4CF10
lbl_80A4CBA0:
/* 80A4CBA0  7F C3 F3 78 */	mr r3, r30
/* 80A4CBA4  38 80 00 0D */	li r4, 0xd
/* 80A4CBA8  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80A4CBAC  38 A0 00 02 */	li r5, 2
/* 80A4CBB0  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A4CBB4  4B FF C5 F1 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4CBB8  38 00 00 1E */	li r0, 0x1e
/* 80A4CBBC  B0 1E 05 F0 */	sth r0, 0x5f0(r30)
/* 80A4CBC0  38 00 00 0B */	li r0, 0xb
/* 80A4CBC4  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80A4CBC8  38 00 C7 D0 */	li r0, -14384
/* 80A4CBCC  B0 1E 04 DC */	sth r0, 0x4dc(r30)
lbl_80A4CBD0:
/* 80A4CBD0  A8 1E 05 F0 */	lha r0, 0x5f0(r30)
/* 80A4CBD4  2C 00 00 00 */	cmpwi r0, 0
/* 80A4CBD8  40 82 03 38 */	bne lbl_80A4CF10
/* 80A4CBDC  7F C3 F3 78 */	mr r3, r30
/* 80A4CBE0  38 80 00 23 */	li r4, 0x23
/* 80A4CBE4  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A4CBE8  38 A0 00 00 */	li r5, 0
/* 80A4CBEC  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A4CBF0  4B FF C5 B5 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4CBF4  38 00 00 0C */	li r0, 0xc
/* 80A4CBF8  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80A4CBFC  90 01 00 08 */	stw r0, 8(r1)
/* 80A4CC00  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80A4CC04  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80A4CC08  80 63 00 00 */	lwz r3, 0(r3)
/* 80A4CC0C  38 81 00 08 */	addi r4, r1, 8
/* 80A4CC10  38 A0 00 00 */	li r5, 0
/* 80A4CC14  38 C0 00 00 */	li r6, 0
/* 80A4CC18  38 E0 00 00 */	li r7, 0
/* 80A4CC1C  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80A4CC20  FC 40 08 90 */	fmr f2, f1
/* 80A4CC24  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 80A4CC28  FC 80 18 90 */	fmr f4, f3
/* 80A4CC2C  39 00 00 00 */	li r8, 0
/* 80A4CC30  4B 85 ED 55 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80A4CC34  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80A4CC38  38 83 13 68 */	addi r4, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80A4CC3C  80 64 00 00 */	lwz r3, 0(r4)
/* 80A4CC40  C0 03 04 14 */	lfs f0, 0x414(r3)
/* 80A4CC44  38 00 00 78 */	li r0, 0x78
/* 80A4CC48  90 03 04 20 */	stw r0, 0x420(r3)
/* 80A4CC4C  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 80A4CC50  EC 43 00 28 */	fsubs f2, f3, f0
/* 80A4CC54  80 03 04 20 */	lwz r0, 0x420(r3)
/* 80A4CC58  C8 3F 00 E0 */	lfd f1, 0xe0(r31)
/* 80A4CC5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A4CC60  3C 00 43 30 */	lis r0, 0x4330
/* 80A4CC64  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A4CC68  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80A4CC6C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A4CC70  EC 02 00 24 */	fdivs f0, f2, f0
/* 80A4CC74  D0 03 04 18 */	stfs f0, 0x418(r3)
/* 80A4CC78  D0 63 04 1C */	stfs f3, 0x41c(r3)
/* 80A4CC7C  80 64 00 00 */	lwz r3, 0(r4)
/* 80A4CC80  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80A4CC84  38 80 00 01 */	li r4, 1
/* 80A4CC88  4B 86 74 DD */	bl setBattleBgmOff__8Z2SeqMgrFb
/* 80A4CC8C  48 00 02 84 */	b lbl_80A4CF10
lbl_80A4CC90:
/* 80A4CC90  38 7E 04 DC */	addi r3, r30, 0x4dc
/* 80A4CC94  38 80 00 00 */	li r4, 0
/* 80A4CC98  38 A0 00 01 */	li r5, 1
/* 80A4CC9C  38 C0 08 00 */	li r6, 0x800
/* 80A4CCA0  4B 82 39 69 */	bl cLib_addCalcAngleS2__FPssss
/* 80A4CCA4  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A4CCA8  38 80 00 01 */	li r4, 1
/* 80A4CCAC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80A4CCB0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A4CCB4  40 82 00 18 */	bne lbl_80A4CCCC
/* 80A4CCB8  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80A4CCBC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A4CCC0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A4CCC4  41 82 00 08 */	beq lbl_80A4CCCC
/* 80A4CCC8  38 80 00 00 */	li r4, 0
lbl_80A4CCCC:
/* 80A4CCCC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80A4CCD0  41 82 02 40 */	beq lbl_80A4CF10
/* 80A4CCD4  38 00 00 14 */	li r0, 0x14
/* 80A4CCD8  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80A4CCDC  7F C3 F3 78 */	mr r3, r30
/* 80A4CCE0  38 80 00 1E */	li r4, 0x1e
/* 80A4CCE4  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A4CCE8  38 A0 00 02 */	li r5, 2
/* 80A4CCEC  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A4CCF0  4B FF C4 B5 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4CCF4  38 00 00 5A */	li r0, 0x5a
/* 80A4CCF8  B0 1E 05 F0 */	sth r0, 0x5f0(r30)
/* 80A4CCFC  3C 60 80 A5 */	lis r3, s_resq_sub__FPvPv@ha /* 0x80A49848@ha */
/* 80A4CD00  38 63 98 48 */	addi r3, r3, s_resq_sub__FPvPv@l /* 0x80A49848@l */
/* 80A4CD04  7F C4 F3 78 */	mr r4, r30
/* 80A4CD08  4B 5D 46 31 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80A4CD0C  48 00 02 04 */	b lbl_80A4CF10
lbl_80A4CD10:
/* 80A4CD10  A8 1E 05 F0 */	lha r0, 0x5f0(r30)
/* 80A4CD14  2C 00 00 00 */	cmpwi r0, 0
/* 80A4CD18  40 82 01 F8 */	bne lbl_80A4CF10
/* 80A4CD1C  38 00 00 15 */	li r0, 0x15
/* 80A4CD20  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80A4CD24  48 00 01 EC */	b lbl_80A4CF10
lbl_80A4CD28:
/* 80A4CD28  7F C3 F3 78 */	mr r3, r30
/* 80A4CD2C  38 80 00 27 */	li r4, 0x27
/* 80A4CD30  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A4CD34  38 A0 00 02 */	li r5, 2
/* 80A4CD38  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A4CD3C  4B FF C4 69 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4CD40  38 00 00 16 */	li r0, 0x16
/* 80A4CD44  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80A4CD48  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 80A4CD4C  4B 81 AC 09 */	bl cM_rndF__Ff
/* 80A4CD50  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80A4CD54  EC 00 08 2A */	fadds f0, f0, f1
/* 80A4CD58  FC 00 00 1E */	fctiwz f0, f0
/* 80A4CD5C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80A4CD60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A4CD64  B0 1E 05 F0 */	sth r0, 0x5f0(r30)
/* 80A4CD68  38 00 00 01 */	li r0, 1
/* 80A4CD6C  98 1E 0A EC */	stb r0, 0xaec(r30)
/* 80A4CD70  48 00 01 A0 */	b lbl_80A4CF10
lbl_80A4CD74:
/* 80A4CD74  80 1E 05 D0 */	lwz r0, 0x5d0(r30)
/* 80A4CD78  2C 00 00 27 */	cmpwi r0, 0x27
/* 80A4CD7C  41 82 00 2C */	beq lbl_80A4CDA8
/* 80A4CD80  2C 00 00 2B */	cmpwi r0, 0x2b
/* 80A4CD84  40 82 00 0C */	bne lbl_80A4CD90
/* 80A4CD88  2C 04 00 07 */	cmpwi r4, 7
/* 80A4CD8C  41 80 00 1C */	blt lbl_80A4CDA8
lbl_80A4CD90:
/* 80A4CD90  2C 04 00 28 */	cmpwi r4, 0x28
/* 80A4CD94  40 81 00 0C */	ble lbl_80A4CDA0
/* 80A4CD98  2C 04 00 30 */	cmpwi r4, 0x30
/* 80A4CD9C  41 80 00 0C */	blt lbl_80A4CDA8
lbl_80A4CDA0:
/* 80A4CDA0  2C 04 00 41 */	cmpwi r4, 0x41
/* 80A4CDA4  40 81 00 0C */	ble lbl_80A4CDB0
lbl_80A4CDA8:
/* 80A4CDA8  38 00 00 04 */	li r0, 4
/* 80A4CDAC  B0 1E 05 E0 */	sth r0, 0x5e0(r30)
lbl_80A4CDB0:
/* 80A4CDB0  A8 1E 05 F0 */	lha r0, 0x5f0(r30)
/* 80A4CDB4  2C 00 00 00 */	cmpwi r0, 0
/* 80A4CDB8  40 82 00 28 */	bne lbl_80A4CDE0
/* 80A4CDBC  80 1E 05 D0 */	lwz r0, 0x5d0(r30)
/* 80A4CDC0  2C 00 00 27 */	cmpwi r0, 0x27
/* 80A4CDC4  40 82 00 1C */	bne lbl_80A4CDE0
/* 80A4CDC8  7F C3 F3 78 */	mr r3, r30
/* 80A4CDCC  38 80 00 2B */	li r4, 0x2b
/* 80A4CDD0  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A4CDD4  38 A0 00 00 */	li r5, 0
/* 80A4CDD8  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A4CDDC  4B FF C3 C9 */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A4CDE0:
/* 80A4CDE0  80 1E 05 D0 */	lwz r0, 0x5d0(r30)
/* 80A4CDE4  2C 00 00 2B */	cmpwi r0, 0x2b
/* 80A4CDE8  40 82 00 3C */	bne lbl_80A4CE24
/* 80A4CDEC  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A4CDF0  38 80 00 01 */	li r4, 1
/* 80A4CDF4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80A4CDF8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A4CDFC  40 82 00 18 */	bne lbl_80A4CE14
/* 80A4CE00  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80A4CE04  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A4CE08  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A4CE0C  41 82 00 08 */	beq lbl_80A4CE14
/* 80A4CE10  38 80 00 00 */	li r4, 0
lbl_80A4CE14:
/* 80A4CE14  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80A4CE18  41 82 00 0C */	beq lbl_80A4CE24
/* 80A4CE1C  38 00 00 15 */	li r0, 0x15
/* 80A4CE20  B0 1E 05 EA */	sth r0, 0x5ea(r30)
lbl_80A4CE24:
/* 80A4CE24  28 1D 00 00 */	cmplwi r29, 0
/* 80A4CE28  40 82 00 E8 */	bne lbl_80A4CF10
/* 80A4CE2C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80A4CE30  4B 81 AB 25 */	bl cM_rndF__Ff
/* 80A4CE34  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80A4CE38  EC 00 08 2A */	fadds f0, f0, f1
/* 80A4CE3C  FC 00 00 1E */	fctiwz f0, f0
/* 80A4CE40  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80A4CE44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A4CE48  B0 1E 05 F0 */	sth r0, 0x5f0(r30)
/* 80A4CE4C  38 00 00 17 */	li r0, 0x17
/* 80A4CE50  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80A4CE54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A4CE58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A4CE5C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80A4CE60  54 04 46 3E */	srwi r4, r0, 0x18
/* 80A4CE64  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80A4CE68  7C 05 07 74 */	extsb r5, r0
/* 80A4CE6C  4B 5E 83 95 */	bl onSwitch__10dSv_info_cFii
/* 80A4CE70  48 00 00 A0 */	b lbl_80A4CF10
lbl_80A4CE74:
/* 80A4CE74  A8 1E 05 F0 */	lha r0, 0x5f0(r30)
/* 80A4CE78  2C 00 00 00 */	cmpwi r0, 0
/* 80A4CE7C  40 82 00 94 */	bne lbl_80A4CF10
/* 80A4CE80  88 1E 05 B6 */	lbz r0, 0x5b6(r30)
/* 80A4CE84  28 00 00 00 */	cmplwi r0, 0
/* 80A4CE88  40 82 00 20 */	bne lbl_80A4CEA8
/* 80A4CE8C  7F C3 F3 78 */	mr r3, r30
/* 80A4CE90  38 80 00 38 */	li r4, 0x38
/* 80A4CE94  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A4CE98  38 A0 00 02 */	li r5, 2
/* 80A4CE9C  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A4CEA0  4B FF C3 05 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4CEA4  48 00 00 1C */	b lbl_80A4CEC0
lbl_80A4CEA8:
/* 80A4CEA8  7F C3 F3 78 */	mr r3, r30
/* 80A4CEAC  38 80 00 0B */	li r4, 0xb
/* 80A4CEB0  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A4CEB4  38 A0 00 02 */	li r5, 2
/* 80A4CEB8  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A4CEBC  4B FF C2 E9 */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A4CEC0:
/* 80A4CEC0  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80A4CEC4  4B 81 AA 91 */	bl cM_rndF__Ff
/* 80A4CEC8  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80A4CECC  EC 00 08 2A */	fadds f0, f0, f1
/* 80A4CED0  FC 00 00 1E */	fctiwz f0, f0
/* 80A4CED4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80A4CED8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A4CEDC  B0 1E 05 F0 */	sth r0, 0x5f0(r30)
/* 80A4CEE0  38 00 00 18 */	li r0, 0x18
/* 80A4CEE4  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80A4CEE8  48 00 00 28 */	b lbl_80A4CF10
lbl_80A4CEEC:
/* 80A4CEEC  A8 1E 05 F0 */	lha r0, 0x5f0(r30)
/* 80A4CEF0  2C 00 00 00 */	cmpwi r0, 0
/* 80A4CEF4  40 82 00 1C */	bne lbl_80A4CF10
/* 80A4CEF8  38 00 00 72 */	li r0, 0x72
/* 80A4CEFC  B0 1E 05 E8 */	sth r0, 0x5e8(r30)
/* 80A4CF00  38 00 00 00 */	li r0, 0
/* 80A4CF04  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80A4CF08  38 00 00 3C */	li r0, 0x3c
/* 80A4CF0C  B0 1E 05 F4 */	sth r0, 0x5f4(r30)
lbl_80A4CF10:
/* 80A4CF10  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80A4CF14  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80A4CF18  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A4CF1C  C0 7F 00 CC */	lfs f3, 0xcc(r31)
/* 80A4CF20  4B 82 2B 1D */	bl cLib_addCalc2__FPffff
/* 80A4CF24  38 60 00 01 */	li r3, 1
/* 80A4CF28  39 61 00 30 */	addi r11, r1, 0x30
/* 80A4CF2C  4B 91 52 FD */	bl _restgpr_29
/* 80A4CF30  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A4CF34  7C 08 03 A6 */	mtlr r0
/* 80A4CF38  38 21 00 30 */	addi r1, r1, 0x30
/* 80A4CF3C  4E 80 00 20 */	blr 
