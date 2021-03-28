lbl_80A4AC68:
/* 80A4AC68  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80A4AC6C  7C 08 02 A6 */	mflr r0
/* 80A4AC70  90 01 00 84 */	stw r0, 0x84(r1)
/* 80A4AC74  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80A4AC78  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80A4AC7C  39 61 00 70 */	addi r11, r1, 0x70
/* 80A4AC80  4B 91 75 54 */	b _savegpr_27
/* 80A4AC84  7C 7D 1B 78 */	mr r29, r3
/* 80A4AC88  3C 60 80 A6 */	lis r3, lit_4030@ha
/* 80A4AC8C  3B C3 DE FC */	addi r30, r3, lit_4030@l
/* 80A4AC90  3B 80 00 01 */	li r28, 1
/* 80A4AC94  A8 1D 05 EA */	lha r0, 0x5ea(r29)
/* 80A4AC98  2C 00 00 00 */	cmpwi r0, 0
/* 80A4AC9C  40 82 00 70 */	bne lbl_80A4AD0C
/* 80A4ACA0  3C 60 80 A5 */	lis r3, s_ori_sub__FPvPv@ha
/* 80A4ACA4  38 63 A1 64 */	addi r3, r3, s_ori_sub__FPvPv@l
/* 80A4ACA8  7F A4 EB 78 */	mr r4, r29
/* 80A4ACAC  4B 5D 66 8C */	b fpcEx_Search__FPFPvPv_PvPv
/* 80A4ACB0  7C 7B 1B 79 */	or. r27, r3, r3
/* 80A4ACB4  41 82 00 50 */	beq lbl_80A4AD04
/* 80A4ACB8  41 82 00 0C */	beq lbl_80A4ACC4
/* 80A4ACBC  80 1B 00 04 */	lwz r0, 4(r27)
/* 80A4ACC0  48 00 00 08 */	b lbl_80A4ACC8
lbl_80A4ACC4:
/* 80A4ACC4  38 00 FF FF */	li r0, -1
lbl_80A4ACC8:
/* 80A4ACC8  90 1D 04 A4 */	stw r0, 0x4a4(r29)
/* 80A4ACCC  7F A3 EB 78 */	mr r3, r29
/* 80A4ACD0  38 80 00 14 */	li r4, 0x14
/* 80A4ACD4  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80A4ACD8  38 A0 00 02 */	li r5, 2
/* 80A4ACDC  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A4ACE0  4B FF E4 C5 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4ACE4  38 00 00 01 */	li r0, 1
/* 80A4ACE8  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A4ACEC  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 80A4ACF0  B0 1D 04 B6 */	sth r0, 0x4b6(r29)
/* 80A4ACF4  A8 7D 04 B6 */	lha r3, 0x4b6(r29)
/* 80A4ACF8  A8 1D 05 C8 */	lha r0, 0x5c8(r29)
/* 80A4ACFC  7C 03 00 50 */	subf r0, r3, r0
/* 80A4AD00  B0 1D 0B DE */	sth r0, 0xbde(r29)
lbl_80A4AD04:
/* 80A4AD04  38 60 00 01 */	li r3, 1
/* 80A4AD08  48 00 0A 94 */	b lbl_80A4B79C
lbl_80A4AD0C:
/* 80A4AD0C  80 1D 04 A4 */	lwz r0, 0x4a4(r29)
/* 80A4AD10  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A4AD14  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80A4AD18  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80A4AD1C  38 81 00 0C */	addi r4, r1, 0xc
/* 80A4AD20  4B 5C EA D8 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80A4AD24  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A4AD28  40 82 00 0C */	bne lbl_80A4AD34
/* 80A4AD2C  38 60 00 01 */	li r3, 1
/* 80A4AD30  48 00 0A 6C */	b lbl_80A4B79C
lbl_80A4AD34:
/* 80A4AD34  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80A4AD38  B0 1D 04 B6 */	sth r0, 0x4b6(r29)
/* 80A4AD3C  A8 9D 05 EA */	lha r4, 0x5ea(r29)
/* 80A4AD40  2C 04 00 02 */	cmpwi r4, 2
/* 80A4AD44  41 81 00 98 */	bgt lbl_80A4ADDC
/* 80A4AD48  88 1F 10 54 */	lbz r0, 0x1054(r31)
/* 80A4AD4C  7C 00 07 75 */	extsb. r0, r0
/* 80A4AD50  41 82 00 8C */	beq lbl_80A4ADDC
/* 80A4AD54  38 00 00 03 */	li r0, 3
/* 80A4AD58  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A4AD5C  38 00 00 5A */	li r0, 0x5a
/* 80A4AD60  B0 1D 05 F0 */	sth r0, 0x5f0(r29)
/* 80A4AD64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A4AD68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A4AD6C  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80A4AD70  54 04 46 3E */	srwi r4, r0, 0x18
/* 80A4AD74  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80A4AD78  7C 05 07 74 */	extsb r5, r0
/* 80A4AD7C  4B 5E A4 84 */	b onSwitch__10dSv_info_cFii
/* 80A4AD80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A4AD84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A4AD88  38 63 09 58 */	addi r3, r3, 0x958
/* 80A4AD8C  80 9D 05 BC */	lwz r4, 0x5bc(r29)
/* 80A4AD90  4B 5E 9A 10 */	b onTbox__12dSv_memBit_cFi
/* 80A4AD94  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80A4AD98  7C 00 07 74 */	extsb r0, r0
/* 80A4AD9C  2C 00 00 04 */	cmpwi r0, 4
/* 80A4ADA0  40 82 00 10 */	bne lbl_80A4ADB0
/* 80A4ADA4  38 00 00 46 */	li r0, 0x46
/* 80A4ADA8  B0 1D 0B 42 */	sth r0, 0xb42(r29)
/* 80A4ADAC  48 00 00 28 */	b lbl_80A4ADD4
lbl_80A4ADB0:
/* 80A4ADB0  2C 00 00 13 */	cmpwi r0, 0x13
/* 80A4ADB4  40 82 00 10 */	bne lbl_80A4ADC4
/* 80A4ADB8  38 00 00 4B */	li r0, 0x4b
/* 80A4ADBC  B0 1D 0B 42 */	sth r0, 0xb42(r29)
/* 80A4ADC0  48 00 00 14 */	b lbl_80A4ADD4
lbl_80A4ADC4:
/* 80A4ADC4  2C 00 00 16 */	cmpwi r0, 0x16
/* 80A4ADC8  40 82 00 0C */	bne lbl_80A4ADD4
/* 80A4ADCC  38 00 00 48 */	li r0, 0x48
/* 80A4ADD0  B0 1D 0B 42 */	sth r0, 0xb42(r29)
lbl_80A4ADD4:
/* 80A4ADD4  38 60 00 01 */	li r3, 1
/* 80A4ADD8  48 00 09 C4 */	b lbl_80A4B79C
lbl_80A4ADDC:
/* 80A4ADDC  A8 7D 0B DE */	lha r3, 0xbde(r29)
/* 80A4ADE0  A8 1D 04 B6 */	lha r0, 0x4b6(r29)
/* 80A4ADE4  7C 63 02 14 */	add r3, r3, r0
/* 80A4ADE8  38 03 FC 18 */	addi r0, r3, -1000
/* 80A4ADEC  7C 1B 07 34 */	extsh r27, r0
/* 80A4ADF0  C3 FE 00 30 */	lfs f31, 0x30(r30)
/* 80A4ADF4  28 04 00 0F */	cmplwi r4, 0xf
/* 80A4ADF8  41 81 09 24 */	bgt lbl_80A4B71C
/* 80A4ADFC  3C 60 80 A6 */	lis r3, lit_5080@ha
/* 80A4AE00  38 63 E6 3C */	addi r3, r3, lit_5080@l
/* 80A4AE04  54 80 10 3A */	slwi r0, r4, 2
/* 80A4AE08  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A4AE0C  7C 09 03 A6 */	mtctr r0
/* 80A4AE10  4E 80 04 20 */	bctr 
lbl_80A4AE14:
/* 80A4AE14  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 80A4AE18  38 63 00 0C */	addi r3, r3, 0xc
/* 80A4AE1C  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 80A4AE20  4B 8D D6 0C */	b checkPass__12J3DFrameCtrlFf
/* 80A4AE24  2C 03 00 00 */	cmpwi r3, 0
/* 80A4AE28  41 82 00 18 */	beq lbl_80A4AE40
/* 80A4AE2C  A8 7D 04 B6 */	lha r3, 0x4b6(r29)
/* 80A4AE30  A8 1D 05 C8 */	lha r0, 0x5c8(r29)
/* 80A4AE34  7C 03 00 50 */	subf r0, r3, r0
/* 80A4AE38  54 00 00 24 */	rlwinm r0, r0, 0, 0, 0x12
/* 80A4AE3C  B0 1D 0B DE */	sth r0, 0xbde(r29)
lbl_80A4AE40:
/* 80A4AE40  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 80A4AE44  38 63 00 0C */	addi r3, r3, 0xc
/* 80A4AE48  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80A4AE4C  4B 8D D5 E0 */	b checkPass__12J3DFrameCtrlFf
/* 80A4AE50  2C 03 00 00 */	cmpwi r3, 0
/* 80A4AE54  40 82 00 1C */	bne lbl_80A4AE70
/* 80A4AE58  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 80A4AE5C  38 63 00 0C */	addi r3, r3, 0xc
/* 80A4AE60  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80A4AE64  4B 8D D5 C8 */	b checkPass__12J3DFrameCtrlFf
/* 80A4AE68  2C 03 00 00 */	cmpwi r3, 0
/* 80A4AE6C  41 82 00 70 */	beq lbl_80A4AEDC
lbl_80A4AE70:
/* 80A4AE70  C0 3F 0D C8 */	lfs f1, 0xdc8(r31)
/* 80A4AE74  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80A4AE78  EC 01 00 2A */	fadds f0, f1, f0
/* 80A4AE7C  D0 1F 0D C8 */	stfs f0, 0xdc8(r31)
/* 80A4AE80  38 00 00 00 */	li r0, 0
/* 80A4AE84  B0 1F 0D AC */	sth r0, 0xdac(r31)
/* 80A4AE88  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800B0@ha */
/* 80A4AE8C  38 03 00 B0 */	addi r0, r3, 0x00B0 /* 0x000800B0@l */
/* 80A4AE90  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80A4AE94  38 7D 08 60 */	addi r3, r29, 0x860
/* 80A4AE98  38 81 00 2C */	addi r4, r1, 0x2c
/* 80A4AE9C  38 A0 00 00 */	li r5, 0
/* 80A4AEA0  38 C0 FF FF */	li r6, -1
/* 80A4AEA4  81 9D 08 60 */	lwz r12, 0x860(r29)
/* 80A4AEA8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A4AEAC  7D 89 03 A6 */	mtctr r12
/* 80A4AEB0  4E 80 04 21 */	bctrl 
/* 80A4AEB4  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005001B@ha */
/* 80A4AEB8  38 03 00 1B */	addi r0, r3, 0x001B /* 0x0005001B@l */
/* 80A4AEBC  90 01 00 28 */	stw r0, 0x28(r1)
/* 80A4AEC0  38 7D 08 60 */	addi r3, r29, 0x860
/* 80A4AEC4  38 81 00 28 */	addi r4, r1, 0x28
/* 80A4AEC8  38 A0 FF FF */	li r5, -1
/* 80A4AECC  81 9D 08 60 */	lwz r12, 0x860(r29)
/* 80A4AED0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A4AED4  7D 89 03 A6 */	mtctr r12
/* 80A4AED8  4E 80 04 21 */	bctrl 
lbl_80A4AEDC:
/* 80A4AEDC  7F A3 EB 78 */	mr r3, r29
/* 80A4AEE0  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 80A4AEE4  4B FF EF B9 */	bl enemy_check__FP12npc_ks_classf
/* 80A4AEE8  28 03 00 00 */	cmplwi r3, 0
/* 80A4AEEC  40 82 00 34 */	bne lbl_80A4AF20
/* 80A4AEF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A4AEF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A4AEF8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80A4AEFC  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80A4AF00  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 80A4AF04  40 82 00 1C */	bne lbl_80A4AF20
/* 80A4AF08  3C 60 80 A5 */	lis r3, shot_bo_sub__FPvPv@ha
/* 80A4AF0C  38 63 AA C8 */	addi r3, r3, shot_bo_sub__FPvPv@l
/* 80A4AF10  7F A4 EB 78 */	mr r4, r29
/* 80A4AF14  4B 5D 64 24 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80A4AF18  28 03 00 00 */	cmplwi r3, 0
/* 80A4AF1C  41 82 08 00 */	beq lbl_80A4B71C
lbl_80A4AF20:
/* 80A4AF20  7F A3 EB 78 */	mr r3, r29
/* 80A4AF24  38 80 00 29 */	li r4, 0x29
/* 80A4AF28  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80A4AF2C  38 A0 00 02 */	li r5, 2
/* 80A4AF30  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A4AF34  4B FF E2 71 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4AF38  38 00 00 02 */	li r0, 2
/* 80A4AF3C  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A4AF40  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80A4AF44  4B 81 CA 10 */	b cM_rndF__Ff
/* 80A4AF48  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80A4AF4C  EC 00 08 2A */	fadds f0, f0, f1
/* 80A4AF50  FC 00 00 1E */	fctiwz f0, f0
/* 80A4AF54  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80A4AF58  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80A4AF5C  B0 1D 05 F0 */	sth r0, 0x5f0(r29)
/* 80A4AF60  48 00 07 BC */	b lbl_80A4B71C
lbl_80A4AF64:
/* 80A4AF64  A8 1D 05 F0 */	lha r0, 0x5f0(r29)
/* 80A4AF68  2C 00 00 00 */	cmpwi r0, 0
/* 80A4AF6C  3B 7B 80 00 */	addi r27, r27, -32768
/* 80A4AF70  40 82 00 80 */	bne lbl_80A4AFF0
/* 80A4AF74  38 60 00 00 */	li r3, 0
/* 80A4AF78  38 00 00 08 */	li r0, 8
/* 80A4AF7C  7C 09 03 A6 */	mtctr r0
lbl_80A4AF80:
/* 80A4AF80  38 03 1A 98 */	addi r0, r3, 0x1a98
/* 80A4AF84  7C 1F 00 AE */	lbzx r0, r31, r0
/* 80A4AF88  7C 00 07 74 */	extsb r0, r0
/* 80A4AF8C  2C 00 00 02 */	cmpwi r0, 2
/* 80A4AF90  40 82 00 0C */	bne lbl_80A4AF9C
/* 80A4AF94  38 00 00 01 */	li r0, 1
/* 80A4AF98  48 00 00 10 */	b lbl_80A4AFA8
lbl_80A4AF9C:
/* 80A4AF9C  38 63 00 01 */	addi r3, r3, 1
/* 80A4AFA0  42 00 FF E0 */	bdnz lbl_80A4AF80
/* 80A4AFA4  38 00 00 00 */	li r0, 0
lbl_80A4AFA8:
/* 80A4AFA8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A4AFAC  41 82 00 20 */	beq lbl_80A4AFCC
/* 80A4AFB0  7F A3 EB 78 */	mr r3, r29
/* 80A4AFB4  38 80 00 16 */	li r4, 0x16
/* 80A4AFB8  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80A4AFBC  38 A0 00 02 */	li r5, 2
/* 80A4AFC0  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A4AFC4  4B FF E1 E1 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4AFC8  48 00 00 1C */	b lbl_80A4AFE4
lbl_80A4AFCC:
/* 80A4AFCC  7F A3 EB 78 */	mr r3, r29
/* 80A4AFD0  38 80 00 14 */	li r4, 0x14
/* 80A4AFD4  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80A4AFD8  38 A0 00 02 */	li r5, 2
/* 80A4AFDC  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A4AFE0  4B FF E1 C5 */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A4AFE4:
/* 80A4AFE4  38 00 00 01 */	li r0, 1
/* 80A4AFE8  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A4AFEC  48 00 07 30 */	b lbl_80A4B71C
lbl_80A4AFF0:
/* 80A4AFF0  7F A3 EB 78 */	mr r3, r29
/* 80A4AFF4  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 80A4AFF8  4B FF EE A5 */	bl enemy_check__FP12npc_ks_classf
/* 80A4AFFC  28 03 00 00 */	cmplwi r3, 0
/* 80A4B000  40 82 00 1C */	bne lbl_80A4B01C
/* 80A4B004  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A4B008  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A4B00C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80A4B010  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80A4B014  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 80A4B018  41 82 07 04 */	beq lbl_80A4B71C
lbl_80A4B01C:
/* 80A4B01C  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80A4B020  4B 81 C9 34 */	b cM_rndF__Ff
/* 80A4B024  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80A4B028  EC 00 08 2A */	fadds f0, f0, f1
/* 80A4B02C  FC 00 00 1E */	fctiwz f0, f0
/* 80A4B030  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80A4B034  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80A4B038  B0 1D 05 F0 */	sth r0, 0x5f0(r29)
/* 80A4B03C  48 00 06 E0 */	b lbl_80A4B71C
lbl_80A4B040:
/* 80A4B040  C3 FE 00 8C */	lfs f31, 0x8c(r30)
/* 80A4B044  A8 1D 05 F0 */	lha r0, 0x5f0(r29)
/* 80A4B048  2C 00 00 32 */	cmpwi r0, 0x32
/* 80A4B04C  40 82 00 1C */	bne lbl_80A4B068
/* 80A4B050  7F A3 EB 78 */	mr r3, r29
/* 80A4B054  38 80 00 33 */	li r4, 0x33
/* 80A4B058  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 80A4B05C  38 A0 00 02 */	li r5, 2
/* 80A4B060  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A4B064  4B FF E1 41 */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A4B068:
/* 80A4B068  A8 1D 05 F0 */	lha r0, 0x5f0(r29)
/* 80A4B06C  2C 00 00 32 */	cmpwi r0, 0x32
/* 80A4B070  40 80 00 64 */	bge lbl_80A4B0D4
/* 80A4B074  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80A4B078  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80A4B07C  80 63 00 00 */	lwz r3, 0(r3)
/* 80A4B080  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80A4B084  4B 5C 13 58 */	b mDoMtx_YrotS__FPA4_fs
/* 80A4B088  A8 1D 05 F0 */	lha r0, 0x5f0(r29)
/* 80A4B08C  2C 00 00 19 */	cmpwi r0, 0x19
/* 80A4B090  40 80 00 0C */	bge lbl_80A4B09C
/* 80A4B094  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80A4B098  48 00 00 08 */	b lbl_80A4B0A0
lbl_80A4B09C:
/* 80A4B09C  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
lbl_80A4B0A0:
/* 80A4B0A0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80A4B0A4  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80A4B0A8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80A4B0AC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80A4B0B0  38 61 00 3C */	addi r3, r1, 0x3c
/* 80A4B0B4  38 9D 09 40 */	addi r4, r29, 0x940
/* 80A4B0B8  4B 82 5E 34 */	b MtxPosition__FP4cXyzP4cXyz
/* 80A4B0BC  38 7D 09 40 */	addi r3, r29, 0x940
/* 80A4B0C0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A4B0C4  7C 65 1B 78 */	mr r5, r3
/* 80A4B0C8  4B 8F BF C8 */	b PSVECAdd
/* 80A4B0CC  38 00 00 14 */	li r0, 0x14
/* 80A4B0D0  90 1D 09 3C */	stw r0, 0x93c(r29)
lbl_80A4B0D4:
/* 80A4B0D4  A8 1D 05 F0 */	lha r0, 0x5f0(r29)
/* 80A4B0D8  2C 00 00 00 */	cmpwi r0, 0
/* 80A4B0DC  40 82 06 40 */	bne lbl_80A4B71C
/* 80A4B0E0  7F A3 EB 78 */	mr r3, r29
/* 80A4B0E4  38 80 00 1E */	li r4, 0x1e
/* 80A4B0E8  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80A4B0EC  38 A0 00 02 */	li r5, 2
/* 80A4B0F0  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A4B0F4  4B FF E0 B1 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4B0F8  38 00 00 04 */	li r0, 4
/* 80A4B0FC  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A4B100  38 00 00 3C */	li r0, 0x3c
/* 80A4B104  B0 1D 05 F0 */	sth r0, 0x5f0(r29)
/* 80A4B108  38 00 00 00 */	li r0, 0
/* 80A4B10C  90 1D 09 3C */	stw r0, 0x93c(r29)
/* 80A4B110  48 00 06 0C */	b lbl_80A4B71C
lbl_80A4B114:
/* 80A4B114  C3 FE 00 8C */	lfs f31, 0x8c(r30)
/* 80A4B118  38 60 00 00 */	li r3, 0
/* 80A4B11C  98 7D 05 FC */	stb r3, 0x5fc(r29)
/* 80A4B120  A8 1D 05 F0 */	lha r0, 0x5f0(r29)
/* 80A4B124  2C 00 00 00 */	cmpwi r0, 0
/* 80A4B128  40 82 05 F4 */	bne lbl_80A4B71C
/* 80A4B12C  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80A4B130  7C 00 07 74 */	extsb r0, r0
/* 80A4B134  2C 00 00 16 */	cmpwi r0, 0x16
/* 80A4B138  40 82 00 1C */	bne lbl_80A4B154
/* 80A4B13C  38 00 00 74 */	li r0, 0x74
/* 80A4B140  B0 1D 05 E8 */	sth r0, 0x5e8(r29)
/* 80A4B144  B0 7D 05 EA */	sth r3, 0x5ea(r29)
/* 80A4B148  38 00 00 01 */	li r0, 1
/* 80A4B14C  98 1D 0A EC */	stb r0, 0xaec(r29)
/* 80A4B150  48 00 05 CC */	b lbl_80A4B71C
lbl_80A4B154:
/* 80A4B154  2C 00 00 04 */	cmpwi r0, 4
/* 80A4B158  40 82 00 10 */	bne lbl_80A4B168
/* 80A4B15C  38 00 00 0A */	li r0, 0xa
/* 80A4B160  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A4B164  48 00 05 B8 */	b lbl_80A4B71C
lbl_80A4B168:
/* 80A4B168  38 00 00 05 */	li r0, 5
/* 80A4B16C  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A4B170  48 00 05 AC */	b lbl_80A4B71C
lbl_80A4B174:
/* 80A4B174  38 00 00 00 */	li r0, 0
/* 80A4B178  98 1D 05 FC */	stb r0, 0x5fc(r29)
/* 80A4B17C  C3 FE 00 8C */	lfs f31, 0x8c(r30)
/* 80A4B180  7F A3 EB 78 */	mr r3, r29
/* 80A4B184  38 80 00 20 */	li r4, 0x20
/* 80A4B188  C0 3E 00 94 */	lfs f1, 0x94(r30)
/* 80A4B18C  38 A0 00 00 */	li r5, 0
/* 80A4B190  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A4B194  4B FF E0 11 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4B198  A8 7D 05 EA */	lha r3, 0x5ea(r29)
/* 80A4B19C  38 03 00 01 */	addi r0, r3, 1
/* 80A4B1A0  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A4B1A4  48 00 05 78 */	b lbl_80A4B71C
lbl_80A4B1A8:
/* 80A4B1A8  38 60 00 00 */	li r3, 0
/* 80A4B1AC  98 7D 05 FC */	stb r3, 0x5fc(r29)
/* 80A4B1B0  C3 FE 00 8C */	lfs f31, 0x8c(r30)
/* 80A4B1B4  80 9D 05 CC */	lwz r4, 0x5cc(r29)
/* 80A4B1B8  38 A0 00 01 */	li r5, 1
/* 80A4B1BC  88 04 00 11 */	lbz r0, 0x11(r4)
/* 80A4B1C0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A4B1C4  3B 7B 20 00 */	addi r27, r27, 0x2000
/* 80A4B1C8  40 82 00 18 */	bne lbl_80A4B1E0
/* 80A4B1CC  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80A4B1D0  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 80A4B1D4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A4B1D8  41 82 00 08 */	beq lbl_80A4B1E0
/* 80A4B1DC  7C 65 1B 78 */	mr r5, r3
lbl_80A4B1E0:
/* 80A4B1E0  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80A4B1E4  41 82 05 38 */	beq lbl_80A4B71C
/* 80A4B1E8  7F A3 EB 78 */	mr r3, r29
/* 80A4B1EC  38 80 00 21 */	li r4, 0x21
/* 80A4B1F0  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 80A4B1F4  38 A0 00 00 */	li r5, 0
/* 80A4B1F8  FC 40 08 90 */	fmr f2, f1
/* 80A4B1FC  4B FF DF A9 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4B200  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80A4B204  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A4B208  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 80A4B20C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80A4B210  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050016@ha */
/* 80A4B214  38 03 00 16 */	addi r0, r3, 0x0016 /* 0x00050016@l */
/* 80A4B218  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A4B21C  38 7D 08 60 */	addi r3, r29, 0x860
/* 80A4B220  38 81 00 24 */	addi r4, r1, 0x24
/* 80A4B224  38 A0 FF FF */	li r5, -1
/* 80A4B228  81 9D 08 60 */	lwz r12, 0x860(r29)
/* 80A4B22C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A4B230  7D 89 03 A6 */	mtctr r12
/* 80A4B234  4E 80 04 21 */	bctrl 
/* 80A4B238  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060020@ha */
/* 80A4B23C  38 03 00 20 */	addi r0, r3, 0x0020 /* 0x00060020@l */
/* 80A4B240  90 01 00 20 */	stw r0, 0x20(r1)
/* 80A4B244  38 7D 08 60 */	addi r3, r29, 0x860
/* 80A4B248  38 81 00 20 */	addi r4, r1, 0x20
/* 80A4B24C  38 A0 00 00 */	li r5, 0
/* 80A4B250  38 C0 FF FF */	li r6, -1
/* 80A4B254  81 9D 08 60 */	lwz r12, 0x860(r29)
/* 80A4B258  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A4B25C  7D 89 03 A6 */	mtctr r12
/* 80A4B260  4E 80 04 21 */	bctrl 
/* 80A4B264  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060024@ha */
/* 80A4B268  38 03 00 24 */	addi r0, r3, 0x0024 /* 0x00060024@l */
/* 80A4B26C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A4B270  38 7D 08 60 */	addi r3, r29, 0x860
/* 80A4B274  38 81 00 1C */	addi r4, r1, 0x1c
/* 80A4B278  38 A0 00 00 */	li r5, 0
/* 80A4B27C  38 C0 FF FF */	li r6, -1
/* 80A4B280  81 9D 08 60 */	lwz r12, 0x860(r29)
/* 80A4B284  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A4B288  7D 89 03 A6 */	mtctr r12
/* 80A4B28C  4E 80 04 21 */	bctrl 
/* 80A4B290  38 00 00 01 */	li r0, 1
/* 80A4B294  98 1D 0B E0 */	stb r0, 0xbe0(r29)
/* 80A4B298  A8 7D 05 EA */	lha r3, 0x5ea(r29)
/* 80A4B29C  38 03 00 01 */	addi r0, r3, 1
/* 80A4B2A0  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A4B2A4  48 00 04 78 */	b lbl_80A4B71C
lbl_80A4B2A8:
/* 80A4B2A8  38 00 00 00 */	li r0, 0
/* 80A4B2AC  98 1D 05 FC */	stb r0, 0x5fc(r29)
/* 80A4B2B0  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80A4B2B4  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80A4B2B8  3B 7B 40 00 */	addi r27, r27, 0x4000
/* 80A4B2BC  48 00 04 60 */	b lbl_80A4B71C
lbl_80A4B2C0:
/* 80A4B2C0  7F A3 EB 78 */	mr r3, r29
/* 80A4B2C4  38 80 00 1A */	li r4, 0x1a
/* 80A4B2C8  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 80A4B2CC  38 A0 00 02 */	li r5, 2
/* 80A4B2D0  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A4B2D4  4B FF DE D1 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4B2D8  38 00 00 0B */	li r0, 0xb
/* 80A4B2DC  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A4B2E0  38 00 00 00 */	li r0, 0
/* 80A4B2E4  90 1D 09 04 */	stw r0, 0x904(r29)
/* 80A4B2E8  FC 00 F8 90 */	fmr f0, f31
/* 80A4B2EC  D0 1D 05 2C */	stfs f0, 0x52c(r29)
lbl_80A4B2F0:
/* 80A4B2F0  80 1D 09 04 */	lwz r0, 0x904(r29)
/* 80A4B2F4  1C A0 00 34 */	mulli r5, r0, 0x34
/* 80A4B2F8  3C 60 80 A6 */	lis r3, guide_path_04@ha
/* 80A4B2FC  38 83 E4 D0 */	addi r4, r3, guide_path_04@l
/* 80A4B300  7C 04 28 2E */	lwzx r0, r4, r5
/* 80A4B304  2C 00 00 00 */	cmpwi r0, 0
/* 80A4B308  41 82 00 94 */	beq lbl_80A4B39C
/* 80A4B30C  7C 64 2A 14 */	add r3, r4, r5
/* 80A4B310  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A4B314  D0 1D 08 F0 */	stfs f0, 0x8f0(r29)
/* 80A4B318  80 1D 09 04 */	lwz r0, 0x904(r29)
/* 80A4B31C  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80A4B320  7C 64 02 14 */	add r3, r4, r0
/* 80A4B324  C0 03 00 08 */	lfs f0, 8(r3)
/* 80A4B328  D0 1D 08 F4 */	stfs f0, 0x8f4(r29)
/* 80A4B32C  80 1D 09 04 */	lwz r0, 0x904(r29)
/* 80A4B330  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80A4B334  7C 64 02 14 */	add r3, r4, r0
/* 80A4B338  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80A4B33C  D0 1D 08 F8 */	stfs f0, 0x8f8(r29)
/* 80A4B340  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A4B344  D0 1D 09 10 */	stfs f0, 0x910(r29)
/* 80A4B348  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80A4B34C  D0 1D 09 14 */	stfs f0, 0x914(r29)
/* 80A4B350  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A4B354  D0 1D 09 18 */	stfs f0, 0x918(r29)
/* 80A4B358  C0 1D 08 F0 */	lfs f0, 0x8f0(r29)
/* 80A4B35C  D0 1D 09 1C */	stfs f0, 0x91c(r29)
/* 80A4B360  C0 1D 08 F4 */	lfs f0, 0x8f4(r29)
/* 80A4B364  D0 1D 09 20 */	stfs f0, 0x920(r29)
/* 80A4B368  C0 1D 08 F8 */	lfs f0, 0x8f8(r29)
/* 80A4B36C  D0 1D 09 24 */	stfs f0, 0x924(r29)
/* 80A4B370  38 00 00 0C */	li r0, 0xc
/* 80A4B374  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A4B378  7F A3 EB 78 */	mr r3, r29
/* 80A4B37C  38 80 00 20 */	li r4, 0x20
/* 80A4B380  C0 3E 00 94 */	lfs f1, 0x94(r30)
/* 80A4B384  38 A0 00 00 */	li r5, 0
/* 80A4B388  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A4B38C  4B FF DE 19 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4B390  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A4B394  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A4B398  48 00 03 84 */	b lbl_80A4B71C
lbl_80A4B39C:
/* 80A4B39C  7C 64 2A 14 */	add r3, r4, r5
/* 80A4B3A0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A4B3A4  D0 1D 08 F0 */	stfs f0, 0x8f0(r29)
/* 80A4B3A8  80 1D 09 04 */	lwz r0, 0x904(r29)
/* 80A4B3AC  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80A4B3B0  7C 64 02 14 */	add r3, r4, r0
/* 80A4B3B4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80A4B3B8  D0 1D 08 F8 */	stfs f0, 0x8f8(r29)
/* 80A4B3BC  38 00 00 0F */	li r0, 0xf
/* 80A4B3C0  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A4B3C4  3C 60 80 A6 */	lis r3, l_HIO@ha
/* 80A4B3C8  38 63 FE B8 */	addi r3, r3, l_HIO@l
/* 80A4B3CC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80A4B3D0  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A4B3D4  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 80A4B3D8  2C 00 00 1A */	cmpwi r0, 0x1a
/* 80A4B3DC  41 82 03 40 */	beq lbl_80A4B71C
/* 80A4B3E0  7F A3 EB 78 */	mr r3, r29
/* 80A4B3E4  38 80 00 1A */	li r4, 0x1a
/* 80A4B3E8  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 80A4B3EC  38 A0 00 02 */	li r5, 2
/* 80A4B3F0  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A4B3F4  4B FF DD B1 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4B3F8  48 00 03 24 */	b lbl_80A4B71C
lbl_80A4B3FC:
/* 80A4B3FC  3B 80 00 02 */	li r28, 2
/* 80A4B400  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 80A4B404  2C 00 00 20 */	cmpwi r0, 0x20
/* 80A4B408  40 82 00 D8 */	bne lbl_80A4B4E0
/* 80A4B40C  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 80A4B410  38 80 00 01 */	li r4, 1
/* 80A4B414  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80A4B418  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A4B41C  40 82 00 14 */	bne lbl_80A4B430
/* 80A4B420  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A4B424  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 80A4B428  41 82 00 08 */	beq lbl_80A4B430
/* 80A4B42C  38 80 00 00 */	li r4, 0
lbl_80A4B430:
/* 80A4B430  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80A4B434  41 82 00 AC */	beq lbl_80A4B4E0
/* 80A4B438  7F A3 EB 78 */	mr r3, r29
/* 80A4B43C  38 80 00 21 */	li r4, 0x21
/* 80A4B440  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 80A4B444  38 A0 00 00 */	li r5, 0
/* 80A4B448  FC 40 08 90 */	fmr f2, f1
/* 80A4B44C  4B FF DD 59 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4B450  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80A4B454  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A4B458  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050016@ha */
/* 80A4B45C  38 03 00 16 */	addi r0, r3, 0x0016 /* 0x00050016@l */
/* 80A4B460  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A4B464  38 7D 08 60 */	addi r3, r29, 0x860
/* 80A4B468  38 81 00 18 */	addi r4, r1, 0x18
/* 80A4B46C  38 A0 FF FF */	li r5, -1
/* 80A4B470  81 9D 08 60 */	lwz r12, 0x860(r29)
/* 80A4B474  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A4B478  7D 89 03 A6 */	mtctr r12
/* 80A4B47C  4E 80 04 21 */	bctrl 
/* 80A4B480  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060020@ha */
/* 80A4B484  38 03 00 20 */	addi r0, r3, 0x0020 /* 0x00060020@l */
/* 80A4B488  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A4B48C  38 7D 08 60 */	addi r3, r29, 0x860
/* 80A4B490  38 81 00 14 */	addi r4, r1, 0x14
/* 80A4B494  38 A0 00 00 */	li r5, 0
/* 80A4B498  38 C0 FF FF */	li r6, -1
/* 80A4B49C  81 9D 08 60 */	lwz r12, 0x860(r29)
/* 80A4B4A0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A4B4A4  7D 89 03 A6 */	mtctr r12
/* 80A4B4A8  4E 80 04 21 */	bctrl 
/* 80A4B4AC  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060024@ha */
/* 80A4B4B0  38 03 00 24 */	addi r0, r3, 0x0024 /* 0x00060024@l */
/* 80A4B4B4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A4B4B8  38 7D 08 60 */	addi r3, r29, 0x860
/* 80A4B4BC  38 81 00 10 */	addi r4, r1, 0x10
/* 80A4B4C0  38 A0 00 00 */	li r5, 0
/* 80A4B4C4  38 C0 FF FF */	li r6, -1
/* 80A4B4C8  81 9D 08 60 */	lwz r12, 0x860(r29)
/* 80A4B4CC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A4B4D0  7D 89 03 A6 */	mtctr r12
/* 80A4B4D4  4E 80 04 21 */	bctrl 
/* 80A4B4D8  38 00 00 01 */	li r0, 1
/* 80A4B4DC  98 1D 0B E0 */	stb r0, 0xbe0(r29)
lbl_80A4B4E0:
/* 80A4B4E0  38 61 00 30 */	addi r3, r1, 0x30
/* 80A4B4E4  38 9D 08 F0 */	addi r4, r29, 0x8f0
/* 80A4B4E8  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80A4B4EC  4B 81 B6 48 */	b __mi__4cXyzCFRC3Vec
/* 80A4B4F0  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80A4B4F4  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80A4B4F8  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80A4B4FC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80A4B500  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 80A4B504  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 80A4B508  4B 81 C1 6C */	b cM_atan2s__Fff
/* 80A4B50C  B0 7D 08 FE */	sth r3, 0x8fe(r29)
/* 80A4B510  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80A4B514  EC 20 00 32 */	fmuls f1, f0, f0
/* 80A4B518  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80A4B51C  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A4B520  EC 41 00 2A */	fadds f2, f1, f0
/* 80A4B524  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A4B528  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A4B52C  40 81 00 0C */	ble lbl_80A4B538
/* 80A4B530  FC 00 10 34 */	frsqrte f0, f2
/* 80A4B534  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80A4B538:
/* 80A4B538  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 80A4B53C  4B 81 C1 38 */	b cM_atan2s__Fff
/* 80A4B540  7C 03 00 D0 */	neg r0, r3
/* 80A4B544  B0 1D 08 FC */	sth r0, 0x8fc(r29)
/* 80A4B548  38 61 00 3C */	addi r3, r1, 0x3c
/* 80A4B54C  4B 8F BB EC */	b PSVECSquareMag
/* 80A4B550  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A4B554  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4B558  40 81 00 58 */	ble lbl_80A4B5B0
/* 80A4B55C  FC 00 08 34 */	frsqrte f0, f1
/* 80A4B560  C8 9E 00 50 */	lfd f4, 0x50(r30)
/* 80A4B564  FC 44 00 32 */	fmul f2, f4, f0
/* 80A4B568  C8 7E 00 58 */	lfd f3, 0x58(r30)
/* 80A4B56C  FC 00 00 32 */	fmul f0, f0, f0
/* 80A4B570  FC 01 00 32 */	fmul f0, f1, f0
/* 80A4B574  FC 03 00 28 */	fsub f0, f3, f0
/* 80A4B578  FC 02 00 32 */	fmul f0, f2, f0
/* 80A4B57C  FC 44 00 32 */	fmul f2, f4, f0
/* 80A4B580  FC 00 00 32 */	fmul f0, f0, f0
/* 80A4B584  FC 01 00 32 */	fmul f0, f1, f0
/* 80A4B588  FC 03 00 28 */	fsub f0, f3, f0
/* 80A4B58C  FC 02 00 32 */	fmul f0, f2, f0
/* 80A4B590  FC 44 00 32 */	fmul f2, f4, f0
/* 80A4B594  FC 00 00 32 */	fmul f0, f0, f0
/* 80A4B598  FC 01 00 32 */	fmul f0, f1, f0
/* 80A4B59C  FC 03 00 28 */	fsub f0, f3, f0
/* 80A4B5A0  FC 02 00 32 */	fmul f0, f2, f0
/* 80A4B5A4  FC 21 00 32 */	fmul f1, f1, f0
/* 80A4B5A8  FC 20 08 18 */	frsp f1, f1
/* 80A4B5AC  48 00 00 88 */	b lbl_80A4B634
lbl_80A4B5B0:
/* 80A4B5B0  C8 1E 00 60 */	lfd f0, 0x60(r30)
/* 80A4B5B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4B5B8  40 80 00 10 */	bge lbl_80A4B5C8
/* 80A4B5BC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A4B5C0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80A4B5C4  48 00 00 70 */	b lbl_80A4B634
lbl_80A4B5C8:
/* 80A4B5C8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A4B5CC  80 81 00 08 */	lwz r4, 8(r1)
/* 80A4B5D0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A4B5D4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A4B5D8  7C 03 00 00 */	cmpw r3, r0
/* 80A4B5DC  41 82 00 14 */	beq lbl_80A4B5F0
/* 80A4B5E0  40 80 00 40 */	bge lbl_80A4B620
/* 80A4B5E4  2C 03 00 00 */	cmpwi r3, 0
/* 80A4B5E8  41 82 00 20 */	beq lbl_80A4B608
/* 80A4B5EC  48 00 00 34 */	b lbl_80A4B620
lbl_80A4B5F0:
/* 80A4B5F0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A4B5F4  41 82 00 0C */	beq lbl_80A4B600
/* 80A4B5F8  38 00 00 01 */	li r0, 1
/* 80A4B5FC  48 00 00 28 */	b lbl_80A4B624
lbl_80A4B600:
/* 80A4B600  38 00 00 02 */	li r0, 2
/* 80A4B604  48 00 00 20 */	b lbl_80A4B624
lbl_80A4B608:
/* 80A4B608  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A4B60C  41 82 00 0C */	beq lbl_80A4B618
/* 80A4B610  38 00 00 05 */	li r0, 5
/* 80A4B614  48 00 00 10 */	b lbl_80A4B624
lbl_80A4B618:
/* 80A4B618  38 00 00 03 */	li r0, 3
/* 80A4B61C  48 00 00 08 */	b lbl_80A4B624
lbl_80A4B620:
/* 80A4B620  38 00 00 04 */	li r0, 4
lbl_80A4B624:
/* 80A4B624  2C 00 00 01 */	cmpwi r0, 1
/* 80A4B628  40 82 00 0C */	bne lbl_80A4B634
/* 80A4B62C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A4B630  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80A4B634:
/* 80A4B634  C0 5E 00 AC */	lfs f2, 0xac(r30)
/* 80A4B638  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80A4B63C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A4B640  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4B644  40 80 00 D8 */	bge lbl_80A4B71C
/* 80A4B648  C0 1D 08 F0 */	lfs f0, 0x8f0(r29)
/* 80A4B64C  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80A4B650  C0 1D 08 F4 */	lfs f0, 0x8f4(r29)
/* 80A4B654  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80A4B658  C0 1D 08 F8 */	lfs f0, 0x8f8(r29)
/* 80A4B65C  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80A4B660  38 00 00 0B */	li r0, 0xb
/* 80A4B664  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A4B668  38 00 00 01 */	li r0, 1
/* 80A4B66C  98 1D 0B E0 */	stb r0, 0xbe0(r29)
/* 80A4B670  80 7D 09 04 */	lwz r3, 0x904(r29)
/* 80A4B674  38 03 00 01 */	addi r0, r3, 1
/* 80A4B678  90 1D 09 04 */	stw r0, 0x904(r29)
/* 80A4B67C  80 1D 09 04 */	lwz r0, 0x904(r29)
/* 80A4B680  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80A4B684  3C 60 80 A6 */	lis r3, guide_path_04@ha
/* 80A4B688  38 63 E4 D0 */	addi r3, r3, guide_path_04@l
/* 80A4B68C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A4B690  2C 00 00 00 */	cmpwi r0, 0
/* 80A4B694  40 80 00 88 */	bge lbl_80A4B71C
/* 80A4B698  7F A3 EB 78 */	mr r3, r29
/* 80A4B69C  4B 5C E5 E0 */	b fopAcM_delete__FP10fopAc_ac_c
/* 80A4B6A0  48 00 00 7C */	b lbl_80A4B71C
lbl_80A4B6A4:
/* 80A4B6A4  C0 3D 08 F0 */	lfs f1, 0x8f0(r29)
/* 80A4B6A8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A4B6AC  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A4B6B0  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80A4B6B4  C0 5D 08 F8 */	lfs f2, 0x8f8(r29)
/* 80A4B6B8  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A4B6BC  EC 42 00 28 */	fsubs f2, f2, f0
/* 80A4B6C0  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 80A4B6C4  4B 81 BF B0 */	b cM_atan2s__Fff
/* 80A4B6C8  B0 7D 08 FE */	sth r3, 0x8fe(r29)
/* 80A4B6CC  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80A4B6D0  EC 20 00 32 */	fmuls f1, f0, f0
/* 80A4B6D4  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80A4B6D8  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A4B6DC  EC 41 00 2A */	fadds f2, f1, f0
/* 80A4B6E0  FC 00 F8 90 */	fmr f0, f31
/* 80A4B6E4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A4B6E8  40 81 00 0C */	ble lbl_80A4B6F4
/* 80A4B6EC  FC 00 10 34 */	frsqrte f0, f2
/* 80A4B6F0  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80A4B6F4:
/* 80A4B6F4  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 80A4B6F8  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80A4B6FC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80A4B700  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A4B704  40 80 00 18 */	bge lbl_80A4B71C
/* 80A4B708  80 7D 09 04 */	lwz r3, 0x904(r29)
/* 80A4B70C  38 03 00 01 */	addi r0, r3, 1
/* 80A4B710  90 1D 09 04 */	stw r0, 0x904(r29)
/* 80A4B714  38 00 00 0B */	li r0, 0xb
/* 80A4B718  B0 1D 05 EA */	sth r0, 0x5ea(r29)
lbl_80A4B71C:
/* 80A4B71C  A8 1D 05 EA */	lha r0, 0x5ea(r29)
/* 80A4B720  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A4B724  41 80 00 28 */	blt lbl_80A4B74C
/* 80A4B728  38 00 00 00 */	li r0, 0
/* 80A4B72C  98 1D 05 FC */	stb r0, 0x5fc(r29)
/* 80A4B730  AB 7D 08 FE */	lha r27, 0x8fe(r29)
/* 80A4B734  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80A4B738  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80A4B73C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4B740  40 81 00 0C */	ble lbl_80A4B74C
/* 80A4B744  38 00 00 01 */	li r0, 1
/* 80A4B748  98 1D 09 0C */	stb r0, 0x90c(r29)
lbl_80A4B74C:
/* 80A4B74C  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80A4B750  7F 64 DB 78 */	mr r4, r27
/* 80A4B754  38 A0 00 02 */	li r5, 2
/* 80A4B758  38 C0 20 00 */	li r6, 0x2000
/* 80A4B75C  4B 82 4E AC */	b cLib_addCalcAngleS2__FPssss
/* 80A4B760  A8 1D 05 EA */	lha r0, 0x5ea(r29)
/* 80A4B764  2C 00 00 07 */	cmpwi r0, 7
/* 80A4B768  40 80 00 30 */	bge lbl_80A4B798
/* 80A4B76C  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80A4B770  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 80A4B774  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80A4B778  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80A4B77C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80A4B780  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80A4B784  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80A4B788  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80A4B78C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80A4B790  EC 00 F8 2A */	fadds f0, f0, f31
/* 80A4B794  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
lbl_80A4B798:
/* 80A4B798  7F 83 E3 78 */	mr r3, r28
lbl_80A4B79C:
/* 80A4B79C  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80A4B7A0  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80A4B7A4  39 61 00 70 */	addi r11, r1, 0x70
/* 80A4B7A8  4B 91 6A 78 */	b _restgpr_27
/* 80A4B7AC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80A4B7B0  7C 08 03 A6 */	mtlr r0
/* 80A4B7B4  38 21 00 80 */	addi r1, r1, 0x80
/* 80A4B7B8  4E 80 00 20 */	blr 
