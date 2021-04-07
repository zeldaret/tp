lbl_8076CB24:
/* 8076CB24  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8076CB28  7C 08 02 A6 */	mflr r0
/* 8076CB2C  90 01 00 84 */	stw r0, 0x84(r1)
/* 8076CB30  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 8076CB34  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 8076CB38  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 8076CB3C  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 8076CB40  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 8076CB44  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 8076CB48  39 61 00 50 */	addi r11, r1, 0x50
/* 8076CB4C  4B BF 56 81 */	bl _savegpr_25
/* 8076CB50  7C 7C 1B 78 */	mr r28, r3
/* 8076CB54  7C 9D 23 78 */	mr r29, r4
/* 8076CB58  3C 60 80 78 */	lis r3, lit_4018@ha /* 0x80779DFC@ha */
/* 8076CB5C  3B E3 9D FC */	addi r31, r3, lit_4018@l /* 0x80779DFC@l */
/* 8076CB60  80 1C 0A F0 */	lwz r0, 0xaf0(r28)
/* 8076CB64  54 00 00 C7 */	rlwinm. r0, r0, 0, 3, 3
/* 8076CB68  40 82 00 0C */	bne lbl_8076CB74
/* 8076CB6C  38 60 00 00 */	li r3, 0
/* 8076CB70  48 00 02 70 */	b lbl_8076CDE0
lbl_8076CB74:
/* 8076CB74  38 A0 00 00 */	li r5, 0
/* 8076CB78  3C 60 80 78 */	lis r3, target_info_count@ha /* 0x8077A918@ha */
/* 8076CB7C  90 A3 A9 18 */	stw r5, target_info_count@l(r3)  /* 0x8077A918@l */
/* 8076CB80  7C A3 2B 78 */	mr r3, r5
/* 8076CB84  3C 80 80 78 */	lis r4, target_info@ha /* 0x8077A8F0@ha */
/* 8076CB88  38 84 A8 F0 */	addi r4, r4, target_info@l /* 0x8077A8F0@l */
/* 8076CB8C  38 00 00 0A */	li r0, 0xa
/* 8076CB90  7C 09 03 A6 */	mtctr r0
lbl_8076CB94:
/* 8076CB94  7C A4 19 2E */	stwx r5, r4, r3
/* 8076CB98  38 63 00 04 */	addi r3, r3, 4
/* 8076CB9C  42 00 FF F8 */	bdnz lbl_8076CB94
/* 8076CBA0  3C 60 80 77 */	lis r3, s_b_sub__FPvPv@ha /* 0x8076CAA8@ha */
/* 8076CBA4  38 63 CA A8 */	addi r3, r3, s_b_sub__FPvPv@l /* 0x8076CAA8@l */
/* 8076CBA8  7F 84 E3 78 */	mr r4, r28
/* 8076CBAC  4B 8B 47 8D */	bl fpcEx_Search__FPFPvPv_PvPv
/* 8076CBB0  C3 BF 00 7C */	lfs f29, 0x7c(r31)
/* 8076CBB4  3C 60 80 78 */	lis r3, target_info_count@ha /* 0x8077A918@ha */
/* 8076CBB8  3B 43 A9 18 */	addi r26, r3, target_info_count@l /* 0x8077A918@l */
/* 8076CBBC  80 1A 00 00 */	lwz r0, 0(r26)
/* 8076CBC0  2C 00 00 00 */	cmpwi r0, 0
/* 8076CBC4  41 82 02 10 */	beq lbl_8076CDD4
/* 8076CBC8  3B C0 00 00 */	li r30, 0
/* 8076CBCC  48 00 01 E8 */	b lbl_8076CDB4
lbl_8076CBD0:
/* 8076CBD0  57 C0 10 3A */	slwi r0, r30, 2
/* 8076CBD4  7F 3B 00 2E */	lwzx r25, r27, r0
/* 8076CBD8  C0 99 04 D0 */	lfs f4, 0x4d0(r25)
/* 8076CBDC  C0 1C 05 38 */	lfs f0, 0x538(r28)
/* 8076CBE0  EC 64 00 28 */	fsubs f3, f4, f0
/* 8076CBE4  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 8076CBE8  C0 19 04 D4 */	lfs f0, 0x4d4(r25)
/* 8076CBEC  EC 3E 00 2A */	fadds f1, f30, f0
/* 8076CBF0  C0 1C 05 3C */	lfs f0, 0x53c(r28)
/* 8076CBF4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8076CBF8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8076CBFC  C0 39 04 D8 */	lfs f1, 0x4d8(r25)
/* 8076CC00  C0 1C 05 40 */	lfs f0, 0x540(r28)
/* 8076CC04  EC 41 00 28 */	fsubs f2, f1, f0
/* 8076CC08  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8076CC0C  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8076CC10  EC 04 00 28 */	fsubs f0, f4, f0
/* 8076CC14  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8076CC18  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8076CC1C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8076CC20  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8076CC24  EC 23 00 F2 */	fmuls f1, f3, f3
/* 8076CC28  EC 02 00 B2 */	fmuls f0, f2, f2
/* 8076CC2C  EC 41 00 2A */	fadds f2, f1, f0
/* 8076CC30  FC 02 F8 40 */	fcmpo cr0, f2, f31
/* 8076CC34  40 81 00 0C */	ble lbl_8076CC40
/* 8076CC38  FC 00 10 34 */	frsqrte f0, f2
/* 8076CC3C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8076CC40:
/* 8076CC40  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8076CC44  EC 20 00 32 */	fmuls f1, f0, f0
/* 8076CC48  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8076CC4C  EC 00 00 32 */	fmuls f0, f0, f0
/* 8076CC50  EC 61 00 2A */	fadds f3, f1, f0
/* 8076CC54  FC 03 F8 40 */	fcmpo cr0, f3, f31
/* 8076CC58  40 81 00 0C */	ble lbl_8076CC64
/* 8076CC5C  FC 00 18 34 */	frsqrte f0, f3
/* 8076CC60  EC 60 00 F2 */	fmuls f3, f0, f3
lbl_8076CC64:
/* 8076CC64  FC 02 E8 40 */	fcmpo cr0, f2, f29
/* 8076CC68  40 80 01 1C */	bge lbl_8076CD84
/* 8076CC6C  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 8076CC70  C0 1C 0A 48 */	lfs f0, 0xa48(r28)
/* 8076CC74  EC 01 00 2A */	fadds f0, f1, f0
/* 8076CC78  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8076CC7C  41 81 01 08 */	bgt lbl_8076CD84
/* 8076CC80  7F 83 E3 78 */	mr r3, r28
/* 8076CC84  7F 24 CB 78 */	mr r4, r25
/* 8076CC88  4B FF FD 49 */	bl other_bg_check__FP11e_rdy_classP10fopAc_ac_c
/* 8076CC8C  2C 03 00 00 */	cmpwi r3, 0
/* 8076CC90  41 82 00 0C */	beq lbl_8076CC9C
/* 8076CC94  2C 1D 00 00 */	cmpwi r29, 0
/* 8076CC98  40 82 00 EC */	bne lbl_8076CD84
lbl_8076CC9C:
/* 8076CC9C  2C 1D 00 00 */	cmpwi r29, 0
/* 8076CCA0  41 82 00 DC */	beq lbl_8076CD7C
/* 8076CCA4  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 8076CCA8  C0 19 04 D4 */	lfs f0, 0x4d4(r25)
/* 8076CCAC  EC 21 00 2A */	fadds f1, f1, f0
/* 8076CCB0  C0 1C 05 3C */	lfs f0, 0x53c(r28)
/* 8076CCB4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8076CCB8  FC 00 02 10 */	fabs f0, f0
/* 8076CCBC  FC 20 00 18 */	frsp f1, f0
/* 8076CCC0  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 8076CCC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8076CCC8  4C 40 13 82 */	cror 2, 0, 2
/* 8076CCCC  40 82 00 B8 */	bne lbl_8076CD84
/* 8076CCD0  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8076CCD4  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 8076CCD8  4B AF A9 9D */	bl cM_atan2s__Fff
/* 8076CCDC  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 8076CCE0  7C 03 20 50 */	subf r0, r3, r4
/* 8076CCE4  7C 00 07 35 */	extsh. r0, r0
/* 8076CCE8  40 80 00 0C */	bge lbl_8076CCF4
/* 8076CCEC  7C 00 00 D0 */	neg r0, r0
/* 8076CCF0  7C 00 07 34 */	extsh r0, r0
lbl_8076CCF4:
/* 8076CCF4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8076CCF8  28 00 4E 20 */	cmplwi r0, 0x4e20
/* 8076CCFC  40 80 00 0C */	bge lbl_8076CD08
/* 8076CD00  7F 23 CB 78 */	mr r3, r25
/* 8076CD04  48 00 00 DC */	b lbl_8076CDE0
lbl_8076CD08:
/* 8076CD08  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8076CD0C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8076CD10  80 63 00 00 */	lwz r3, 0(r3)
/* 8076CD14  7C 04 00 D0 */	neg r0, r4
/* 8076CD18  7C 04 07 34 */	extsh r4, r0
/* 8076CD1C  4B 89 F6 C1 */	bl mDoMtx_YrotS__FPA4_fs
/* 8076CD20  38 61 00 20 */	addi r3, r1, 0x20
/* 8076CD24  38 81 00 08 */	addi r4, r1, 8
/* 8076CD28  4B B0 41 C5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8076CD2C  C0 01 00 08 */	lfs f0, 8(r1)
/* 8076CD30  FC 00 02 10 */	fabs f0, f0
/* 8076CD34  FC 00 00 18 */	frsp f0, f0
/* 8076CD38  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8076CD3C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8076CD40  40 80 00 44 */	bge lbl_8076CD84
/* 8076CD44  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8076CD48  FC 00 02 10 */	fabs f0, f0
/* 8076CD4C  FC 40 00 18 */	frsp f2, f0
/* 8076CD50  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 8076CD54  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8076CD58  40 80 00 2C */	bge lbl_8076CD84
/* 8076CD5C  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8076CD60  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 8076CD64  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8076CD68  40 81 00 1C */	ble lbl_8076CD84
/* 8076CD6C  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8076CD70  40 80 00 14 */	bge lbl_8076CD84
/* 8076CD74  7F 23 CB 78 */	mr r3, r25
/* 8076CD78  48 00 00 68 */	b lbl_8076CDE0
lbl_8076CD7C:
/* 8076CD7C  7F 23 CB 78 */	mr r3, r25
/* 8076CD80  48 00 00 60 */	b lbl_8076CDE0
lbl_8076CD84:
/* 8076CD84  80 1A 00 00 */	lwz r0, 0(r26)
/* 8076CD88  3B DE 00 01 */	addi r30, r30, 1
/* 8076CD8C  7C 1E 00 00 */	cmpw r30, r0
/* 8076CD90  40 82 00 34 */	bne lbl_8076CDC4
/* 8076CD94  3B C0 00 00 */	li r30, 0
/* 8076CD98  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 8076CD9C  EF BD 00 2A */	fadds f29, f29, f0
/* 8076CDA0  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 8076CDA4  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 8076CDA8  40 81 00 1C */	ble lbl_8076CDC4
/* 8076CDAC  38 60 00 00 */	li r3, 0
/* 8076CDB0  48 00 00 30 */	b lbl_8076CDE0
lbl_8076CDB4:
/* 8076CDB4  3C 60 80 78 */	lis r3, target_info@ha /* 0x8077A8F0@ha */
/* 8076CDB8  3B 63 A8 F0 */	addi r27, r3, target_info@l /* 0x8077A8F0@l */
/* 8076CDBC  FF C0 E8 90 */	fmr f30, f29
/* 8076CDC0  C3 FF 00 04 */	lfs f31, 4(r31)
lbl_8076CDC4:
/* 8076CDC4  80 1A 00 00 */	lwz r0, 0(r26)
/* 8076CDC8  7C 1E 00 00 */	cmpw r30, r0
/* 8076CDCC  41 80 FE 04 */	blt lbl_8076CBD0
/* 8076CDD0  48 00 00 0C */	b lbl_8076CDDC
lbl_8076CDD4:
/* 8076CDD4  38 60 00 00 */	li r3, 0
/* 8076CDD8  48 00 00 08 */	b lbl_8076CDE0
lbl_8076CDDC:
/* 8076CDDC  38 60 00 00 */	li r3, 0
lbl_8076CDE0:
/* 8076CDE0  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 8076CDE4  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8076CDE8  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 8076CDEC  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 8076CDF0  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 8076CDF4  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 8076CDF8  39 61 00 50 */	addi r11, r1, 0x50
/* 8076CDFC  4B BF 54 1D */	bl _restgpr_25
/* 8076CE00  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8076CE04  7C 08 03 A6 */	mtlr r0
/* 8076CE08  38 21 00 80 */	addi r1, r1, 0x80
/* 8076CE0C  4E 80 00 20 */	blr 
