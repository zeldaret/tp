lbl_80A3AD50:
/* 80A3AD50  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80A3AD54  7C 08 02 A6 */	mflr r0
/* 80A3AD58  90 01 00 94 */	stw r0, 0x94(r1)
/* 80A3AD5C  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80A3AD60  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80A3AD64  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 80A3AD68  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 80A3AD6C  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 80A3AD70  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 80A3AD74  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 80A3AD78  F3 81 00 58 */	psq_st f28, 88(r1), 0, 0 /* qr0 */
/* 80A3AD7C  39 61 00 50 */	addi r11, r1, 0x50
/* 80A3AD80  4B 92 74 50 */	b _savegpr_26
/* 80A3AD84  7C 7A 1B 78 */	mr r26, r3
/* 80A3AD88  7C 9B 23 78 */	mr r27, r4
/* 80A3AD8C  7C BC 2B 78 */	mr r28, r5
/* 80A3AD90  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha
/* 80A3AD94  3B C3 08 C8 */	addi r30, r3, mCcDObjData__10daNpc_Kn_c@l
/* 80A3AD98  38 61 00 20 */	addi r3, r1, 0x20
/* 80A3AD9C  7F 44 D3 78 */	mr r4, r26
/* 80A3ADA0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80A3ADA4  3B E5 61 C0 */	addi r31, r5, g_dComIfG_gameInfo@l
/* 80A3ADA8  80 BF 5D AC */	lwz r5, 0x5dac(r31)
/* 80A3ADAC  48 00 02 55 */	bl getAttnPos__10daNpc_Kn_cFP10fopAc_ac_c
/* 80A3ADB0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80A3ADB4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A3ADB8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80A3ADBC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A3ADC0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80A3ADC4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A3ADC8  2C 1B 00 00 */	cmpwi r27, 0
/* 80A3ADCC  40 82 00 0C */	bne lbl_80A3ADD8
/* 80A3ADD0  88 1A 05 47 */	lbz r0, 0x547(r26)
/* 80A3ADD4  48 00 00 08 */	b lbl_80A3ADDC
lbl_80A3ADD8:
/* 80A3ADD8  88 1A 05 45 */	lbz r0, 0x545(r26)
lbl_80A3ADDC:
/* 80A3ADDC  54 1D 06 3E */	clrlwi r29, r0, 0x18
/* 80A3ADE0  2C 1B 00 00 */	cmpwi r27, 0
/* 80A3ADE4  40 82 00 14 */	bne lbl_80A3ADF8
/* 80A3ADE8  7F A3 EB 78 */	mr r3, r29
/* 80A3ADEC  48 00 01 65 */	bl getDistTable__12dAttention_cFi
/* 80A3ADF0  C3 E3 00 00 */	lfs f31, 0(r3)
/* 80A3ADF4  48 00 00 10 */	b lbl_80A3AE04
lbl_80A3ADF8:
/* 80A3ADF8  7F A3 EB 78 */	mr r3, r29
/* 80A3ADFC  48 00 01 55 */	bl getDistTable__12dAttention_cFi
/* 80A3AE00  C3 E3 00 04 */	lfs f31, 4(r3)
lbl_80A3AE04:
/* 80A3AE04  7F A3 EB 78 */	mr r3, r29
/* 80A3AE08  48 00 01 49 */	bl getDistTable__12dAttention_cFi
/* 80A3AE0C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80A3AE10  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A3AE14  EF C0 00 72 */	fmuls f30, f0, f1
/* 80A3AE18  7F A3 EB 78 */	mr r3, r29
/* 80A3AE1C  48 00 01 35 */	bl getDistTable__12dAttention_cFi
/* 80A3AE20  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80A3AE24  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A3AE28  EF A0 00 72 */	fmuls f29, f0, f1
/* 80A3AE2C  7F A3 EB 78 */	mr r3, r29
/* 80A3AE30  48 00 01 21 */	bl getDistTable__12dAttention_cFi
/* 80A3AE34  80 63 00 18 */	lwz r3, 0x18(r3)
/* 80A3AE38  C3 9E 00 54 */	lfs f28, 0x54(r30)
/* 80A3AE3C  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 80A3AE40  41 82 00 0C */	beq lbl_80A3AE4C
/* 80A3AE44  C3 9E 00 5C */	lfs f28, 0x5c(r30)
/* 80A3AE48  48 00 00 50 */	b lbl_80A3AE98
lbl_80A3AE4C:
/* 80A3AE4C  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 80A3AE50  41 82 00 0C */	beq lbl_80A3AE5C
/* 80A3AE54  C3 9E 00 60 */	lfs f28, 0x60(r30)
/* 80A3AE58  48 00 00 40 */	b lbl_80A3AE98
lbl_80A3AE5C:
/* 80A3AE5C  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 80A3AE60  41 82 00 0C */	beq lbl_80A3AE6C
/* 80A3AE64  C3 9E 00 64 */	lfs f28, 0x64(r30)
/* 80A3AE68  48 00 00 30 */	b lbl_80A3AE98
lbl_80A3AE6C:
/* 80A3AE6C  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 80A3AE70  41 82 00 0C */	beq lbl_80A3AE7C
/* 80A3AE74  C3 9E 00 68 */	lfs f28, 0x68(r30)
/* 80A3AE78  48 00 00 20 */	b lbl_80A3AE98
lbl_80A3AE7C:
/* 80A3AE7C  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 80A3AE80  41 82 00 0C */	beq lbl_80A3AE8C
/* 80A3AE84  C3 9E 00 6C */	lfs f28, 0x6c(r30)
/* 80A3AE88  48 00 00 10 */	b lbl_80A3AE98
lbl_80A3AE8C:
/* 80A3AE8C  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 80A3AE90  41 82 00 08 */	beq lbl_80A3AE98
/* 80A3AE94  C3 9E 00 70 */	lfs f28, 0x70(r30)
lbl_80A3AE98:
/* 80A3AE98  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80A3AE9C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A3AEA0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80A3AEA4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A3AEA8  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80A3AEAC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A3AEB0  C0 1A 05 50 */	lfs f0, 0x550(r26)
/* 80A3AEB4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A3AEB8  C0 1A 05 54 */	lfs f0, 0x554(r26)
/* 80A3AEBC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A3AEC0  C0 1A 05 58 */	lfs f0, 0x558(r26)
/* 80A3AEC4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A3AEC8  7F 43 D3 78 */	mr r3, r26
/* 80A3AECC  38 81 00 14 */	addi r4, r1, 0x14
/* 80A3AED0  38 A1 00 08 */	addi r5, r1, 8
/* 80A3AED4  FC 20 F8 90 */	fmr f1, f31
/* 80A3AED8  FC 40 F0 90 */	fmr f2, f30
/* 80A3AEDC  FC 60 E8 90 */	fmr f3, f29
/* 80A3AEE0  38 C0 00 00 */	li r6, 0
/* 80A3AEE4  4B FF FD 41 */	bl chkPointInArea__10daNpc_Kn_cF4cXyz4cXyzfffs
/* 80A3AEE8  2C 03 00 00 */	cmpwi r3, 0
/* 80A3AEEC  41 82 00 28 */	beq lbl_80A3AF14
/* 80A3AEF0  7F 43 D3 78 */	mr r3, r26
/* 80A3AEF4  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A3AEF8  FC 20 E0 90 */	fmr f1, f28
/* 80A3AEFC  7F 85 E3 78 */	mr r5, r28
/* 80A3AF00  4B FF FC 19 */	bl chkActorInSight__10daNpc_Kn_cFP10fopAc_ac_cfs
/* 80A3AF04  2C 03 00 00 */	cmpwi r3, 0
/* 80A3AF08  41 82 00 0C */	beq lbl_80A3AF14
/* 80A3AF0C  38 60 00 01 */	li r3, 1
/* 80A3AF10  48 00 00 08 */	b lbl_80A3AF18
lbl_80A3AF14:
/* 80A3AF14  38 60 00 00 */	li r3, 0
lbl_80A3AF18:
/* 80A3AF18  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80A3AF1C  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80A3AF20  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 80A3AF24  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 80A3AF28  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 80A3AF2C  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 80A3AF30  E3 81 00 58 */	psq_l f28, 88(r1), 0, 0 /* qr0 */
/* 80A3AF34  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 80A3AF38  39 61 00 50 */	addi r11, r1, 0x50
/* 80A3AF3C  4B 92 72 E0 */	b _restgpr_26
/* 80A3AF40  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80A3AF44  7C 08 03 A6 */	mtlr r0
/* 80A3AF48  38 21 00 90 */	addi r1, r1, 0x90
/* 80A3AF4C  4E 80 00 20 */	blr 
