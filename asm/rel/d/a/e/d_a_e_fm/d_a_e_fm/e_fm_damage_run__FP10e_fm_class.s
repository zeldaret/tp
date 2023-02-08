lbl_804F1918:
/* 804F1918  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 804F191C  7C 08 02 A6 */	mflr r0
/* 804F1920  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 804F1924  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 804F1928  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 804F192C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 804F1930  4B E7 08 9D */	bl _savegpr_25
/* 804F1934  7C 7A 1B 78 */	mr r26, r3
/* 804F1938  3C 60 80 50 */	lis r3, lit_3777@ha /* 0x804FA6BC@ha */
/* 804F193C  3B C3 A6 BC */	addi r30, r3, lit_3777@l /* 0x804FA6BC@l */
/* 804F1940  C3 FE 00 3C */	lfs f31, 0x3c(r30)
/* 804F1944  80 7A 05 D0 */	lwz r3, 0x5d0(r26)
/* 804F1948  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 804F194C  FC 00 00 1E */	fctiwz f0, f0
/* 804F1950  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 804F1954  83 81 00 8C */	lwz r28, 0x8c(r1)
/* 804F1958  38 00 00 0A */	li r0, 0xa
/* 804F195C  B0 1A 07 B4 */	sth r0, 0x7b4(r26)
/* 804F1960  A8 1A 07 A4 */	lha r0, 0x7a4(r26)
/* 804F1964  2C 00 00 01 */	cmpwi r0, 1
/* 804F1968  41 82 00 B0 */	beq lbl_804F1A18
/* 804F196C  40 80 00 10 */	bge lbl_804F197C
/* 804F1970  2C 00 00 00 */	cmpwi r0, 0
/* 804F1974  40 80 00 14 */	bge lbl_804F1988
/* 804F1978  48 00 07 38 */	b lbl_804F20B0
lbl_804F197C:
/* 804F197C  2C 00 00 03 */	cmpwi r0, 3
/* 804F1980  40 80 07 30 */	bge lbl_804F20B0
/* 804F1984  48 00 06 C4 */	b lbl_804F2048
lbl_804F1988:
/* 804F1988  80 7A 05 D0 */	lwz r3, 0x5d0(r26)
/* 804F198C  38 80 00 01 */	li r4, 1
/* 804F1990  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804F1994  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804F1998  40 82 00 14 */	bne lbl_804F19AC
/* 804F199C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804F19A0  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 804F19A4  41 82 00 08 */	beq lbl_804F19AC
/* 804F19A8  38 80 00 00 */	li r4, 0
lbl_804F19AC:
/* 804F19AC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804F19B0  41 82 07 00 */	beq lbl_804F20B0
/* 804F19B4  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 804F19B8  4B D7 5F 9D */	bl cM_rndF__Ff
/* 804F19BC  3C 60 80 50 */	lis r3, l_HIO@ha /* 0x804FAEA4@ha */
/* 804F19C0  38 63 AE A4 */	addi r3, r3, l_HIO@l /* 0x804FAEA4@l */
/* 804F19C4  C0 03 00 A4 */	lfs f0, 0xa4(r3)
/* 804F19C8  EC 00 08 2A */	fadds f0, f0, f1
/* 804F19CC  FC 00 00 1E */	fctiwz f0, f0
/* 804F19D0  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 804F19D4  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 804F19D8  B0 1A 07 AC */	sth r0, 0x7ac(r26)
/* 804F19DC  7F 43 D3 78 */	mr r3, r26
/* 804F19E0  38 80 00 11 */	li r4, 0x11
/* 804F19E4  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 804F19E8  38 A0 00 02 */	li r5, 2
/* 804F19EC  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 804F19F0  4B FF DE 19 */	bl anm_init__FP10e_fm_classifUcf
/* 804F19F4  38 00 00 01 */	li r0, 1
/* 804F19F8  B0 1A 07 A4 */	sth r0, 0x7a4(r26)
/* 804F19FC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804F1A00  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804F1A04  80 63 00 00 */	lwz r3, 0(r3)
/* 804F1A08  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 804F1A0C  38 80 00 03 */	li r4, 3
/* 804F1A10  4B DB E5 7D */	bl changeBgmStatus__8Z2SeqMgrFl
/* 804F1A14  48 00 06 9C */	b lbl_804F20B0
lbl_804F1A18:
/* 804F1A18  38 C0 00 00 */	li r6, 0
/* 804F1A1C  38 60 00 00 */	li r3, 0
/* 804F1A20  3C 80 80 50 */	lis r4, l_HIO@ha /* 0x804FAEA4@ha */
/* 804F1A24  38 A4 AE A4 */	addi r5, r4, l_HIO@l /* 0x804FAEA4@l */
/* 804F1A28  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 804F1A2C  38 00 00 02 */	li r0, 2
/* 804F1A30  7C 09 03 A6 */	mtctr r0
lbl_804F1A34:
/* 804F1A34  20 E6 00 01 */	subfic r7, r6, 1
/* 804F1A38  38 03 07 CC */	addi r0, r3, 0x7cc
/* 804F1A3C  7C 1A 04 2E */	lfsx f0, r26, r0
/* 804F1A40  C0 5A 04 D4 */	lfs f2, 0x4d4(r26)
/* 804F1A44  EC 00 10 28 */	fsubs f0, f0, f2
/* 804F1A48  FC 00 02 10 */	fabs f0, f0
/* 804F1A4C  FC 00 00 18 */	frsp f0, f0
/* 804F1A50  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804F1A54  40 80 00 30 */	bge lbl_804F1A84
/* 804F1A58  1C 87 00 0C */	mulli r4, r7, 0xc
/* 804F1A5C  38 04 07 CC */	addi r0, r4, 0x7cc
/* 804F1A60  7C 1A 04 2E */	lfsx f0, r26, r0
/* 804F1A64  EC 00 10 28 */	fsubs f0, f0, f2
/* 804F1A68  FC 00 02 10 */	fabs f0, f0
/* 804F1A6C  FC 00 00 18 */	frsp f0, f0
/* 804F1A70  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804F1A74  4C 41 13 82 */	cror 2, 1, 2
/* 804F1A78  40 82 00 0C */	bne lbl_804F1A84
/* 804F1A7C  C3 E5 00 18 */	lfs f31, 0x18(r5)
/* 804F1A80  90 FA 07 E0 */	stw r7, 0x7e0(r26)
lbl_804F1A84:
/* 804F1A84  38 C6 00 01 */	addi r6, r6, 1
/* 804F1A88  38 63 00 0C */	addi r3, r3, 0xc
/* 804F1A8C  42 00 FF A8 */	bdnz lbl_804F1A34
/* 804F1A90  C0 3A 05 2C */	lfs f1, 0x52c(r26)
/* 804F1A94  C0 1E 00 00 */	lfs f0, 0(r30)
/* 804F1A98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F1A9C  40 80 02 F8 */	bge lbl_804F1D94
/* 804F1AA0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804F1AA4  40 81 02 F0 */	ble lbl_804F1D94
/* 804F1AA8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070004@ha */
/* 804F1AAC  38 03 00 04 */	addi r0, r3, 0x0004 /* 0x00070004@l */
/* 804F1AB0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 804F1AB4  38 7A 06 3C */	addi r3, r26, 0x63c
/* 804F1AB8  38 81 00 2C */	addi r4, r1, 0x2c
/* 804F1ABC  38 A0 00 00 */	li r5, 0
/* 804F1AC0  38 C0 FF FF */	li r6, -1
/* 804F1AC4  81 9A 06 3C */	lwz r12, 0x63c(r26)
/* 804F1AC8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804F1ACC  7D 89 03 A6 */	mtctr r12
/* 804F1AD0  4E 80 04 21 */	bctrl 
/* 804F1AD4  A8 1A 07 AE */	lha r0, 0x7ae(r26)
/* 804F1AD8  2C 00 00 00 */	cmpwi r0, 0
/* 804F1ADC  40 82 02 B8 */	bne lbl_804F1D94
/* 804F1AE0  C0 3E 00 B4 */	lfs f1, 0xb4(r30)
/* 804F1AE4  4B D7 5E 71 */	bl cM_rndF__Ff
/* 804F1AE8  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 804F1AEC  EC 00 08 2A */	fadds f0, f0, f1
/* 804F1AF0  FC 00 00 1E */	fctiwz f0, f0
/* 804F1AF4  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 804F1AF8  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 804F1AFC  B0 1A 07 AE */	sth r0, 0x7ae(r26)
/* 804F1B00  38 C0 00 00 */	li r6, 0
/* 804F1B04  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000C3A8@ha */
/* 804F1B08  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804F1B0C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804F1B10  80 A4 5D AC */	lwz r5, 0x5dac(r4)
/* 804F1B14  38 00 00 02 */	li r0, 2
/* 804F1B18  7C 09 03 A6 */	mtctr r0
/* 804F1B1C  38 63 C3 A8 */	addi r3, r3, 0xC3A8 /* 0x0000C3A8@l */
lbl_804F1B20:
/* 804F1B20  7F BA 1A 14 */	add r29, r26, r3
/* 804F1B24  3C 9D 00 01 */	addis r4, r29, 1
/* 804F1B28  88 04 85 3A */	lbz r0, -0x7ac6(r4)
/* 804F1B2C  7C 00 07 75 */	extsb. r0, r0
/* 804F1B30  40 82 00 1C */	bne lbl_804F1B4C
/* 804F1B34  88 04 85 38 */	lbz r0, -0x7ac8(r4)
/* 804F1B38  7C 00 07 75 */	extsb. r0, r0
/* 804F1B3C  41 82 01 BC */	beq lbl_804F1CF8
/* 804F1B40  80 05 05 70 */	lwz r0, 0x570(r5)
/* 804F1B44  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 804F1B48  41 82 01 B0 */	beq lbl_804F1CF8
lbl_804F1B4C:
/* 804F1B4C  3C 1A 00 01 */	addis r0, r26, 1
/* 804F1B50  7C 60 1A 14 */	add r3, r0, r3
/* 804F1B54  C0 03 85 3C */	lfs f0, -0x7ac4(r3)
/* 804F1B58  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 804F1B5C  C0 03 85 40 */	lfs f0, -0x7ac0(r3)
/* 804F1B60  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 804F1B64  C0 03 85 44 */	lfs f0, -0x7abc(r3)
/* 804F1B68  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 804F1B6C  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 804F1B70  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 804F1B74  38 61 00 78 */	addi r3, r1, 0x78
/* 804F1B78  4B E5 55 C1 */	bl PSVECSquareMag
/* 804F1B7C  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 804F1B80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F1B84  40 81 00 58 */	ble lbl_804F1BDC
/* 804F1B88  FC 00 08 34 */	frsqrte f0, f1
/* 804F1B8C  C8 9E 00 70 */	lfd f4, 0x70(r30)
/* 804F1B90  FC 44 00 32 */	fmul f2, f4, f0
/* 804F1B94  C8 7E 00 78 */	lfd f3, 0x78(r30)
/* 804F1B98  FC 00 00 32 */	fmul f0, f0, f0
/* 804F1B9C  FC 01 00 32 */	fmul f0, f1, f0
/* 804F1BA0  FC 03 00 28 */	fsub f0, f3, f0
/* 804F1BA4  FC 02 00 32 */	fmul f0, f2, f0
/* 804F1BA8  FC 44 00 32 */	fmul f2, f4, f0
/* 804F1BAC  FC 00 00 32 */	fmul f0, f0, f0
/* 804F1BB0  FC 01 00 32 */	fmul f0, f1, f0
/* 804F1BB4  FC 03 00 28 */	fsub f0, f3, f0
/* 804F1BB8  FC 02 00 32 */	fmul f0, f2, f0
/* 804F1BBC  FC 44 00 32 */	fmul f2, f4, f0
/* 804F1BC0  FC 00 00 32 */	fmul f0, f0, f0
/* 804F1BC4  FC 01 00 32 */	fmul f0, f1, f0
/* 804F1BC8  FC 03 00 28 */	fsub f0, f3, f0
/* 804F1BCC  FC 02 00 32 */	fmul f0, f2, f0
/* 804F1BD0  FC 21 00 32 */	fmul f1, f1, f0
/* 804F1BD4  FC 20 08 18 */	frsp f1, f1
/* 804F1BD8  48 00 00 88 */	b lbl_804F1C60
lbl_804F1BDC:
/* 804F1BDC  C8 1E 00 80 */	lfd f0, 0x80(r30)
/* 804F1BE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F1BE4  40 80 00 10 */	bge lbl_804F1BF4
/* 804F1BE8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804F1BEC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804F1BF0  48 00 00 70 */	b lbl_804F1C60
lbl_804F1BF4:
/* 804F1BF4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 804F1BF8  80 81 00 20 */	lwz r4, 0x20(r1)
/* 804F1BFC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804F1C00  3C 00 7F 80 */	lis r0, 0x7f80
/* 804F1C04  7C 03 00 00 */	cmpw r3, r0
/* 804F1C08  41 82 00 14 */	beq lbl_804F1C1C
/* 804F1C0C  40 80 00 40 */	bge lbl_804F1C4C
/* 804F1C10  2C 03 00 00 */	cmpwi r3, 0
/* 804F1C14  41 82 00 20 */	beq lbl_804F1C34
/* 804F1C18  48 00 00 34 */	b lbl_804F1C4C
lbl_804F1C1C:
/* 804F1C1C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804F1C20  41 82 00 0C */	beq lbl_804F1C2C
/* 804F1C24  38 00 00 01 */	li r0, 1
/* 804F1C28  48 00 00 28 */	b lbl_804F1C50
lbl_804F1C2C:
/* 804F1C2C  38 00 00 02 */	li r0, 2
/* 804F1C30  48 00 00 20 */	b lbl_804F1C50
lbl_804F1C34:
/* 804F1C34  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804F1C38  41 82 00 0C */	beq lbl_804F1C44
/* 804F1C3C  38 00 00 05 */	li r0, 5
/* 804F1C40  48 00 00 10 */	b lbl_804F1C50
lbl_804F1C44:
/* 804F1C44  38 00 00 03 */	li r0, 3
/* 804F1C48  48 00 00 08 */	b lbl_804F1C50
lbl_804F1C4C:
/* 804F1C4C  38 00 00 04 */	li r0, 4
lbl_804F1C50:
/* 804F1C50  2C 00 00 01 */	cmpwi r0, 1
/* 804F1C54  40 82 00 0C */	bne lbl_804F1C60
/* 804F1C58  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804F1C5C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_804F1C60:
/* 804F1C60  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 804F1C64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F1C68  40 80 00 34 */	bge lbl_804F1C9C
/* 804F1C6C  38 61 00 60 */	addi r3, r1, 0x60
/* 804F1C70  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 804F1C74  3C BD 00 01 */	addis r5, r29, 1
/* 804F1C78  38 A5 85 3C */	addi r5, r5, -31428
/* 804F1C7C  4B D7 4E B9 */	bl __mi__4cXyzCFRC3Vec
/* 804F1C80  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 804F1C84  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 804F1C88  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 804F1C8C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 804F1C90  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 804F1C94  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 804F1C98  48 00 00 30 */	b lbl_804F1CC8
lbl_804F1C9C:
/* 804F1C9C  38 61 00 54 */	addi r3, r1, 0x54
/* 804F1CA0  38 9A 04 A8 */	addi r4, r26, 0x4a8
/* 804F1CA4  3C BD 00 01 */	addis r5, r29, 1
/* 804F1CA8  38 A5 85 3C */	addi r5, r5, -31428
/* 804F1CAC  4B D7 4E 89 */	bl __mi__4cXyzCFRC3Vec
/* 804F1CB0  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 804F1CB4  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 804F1CB8  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 804F1CBC  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 804F1CC0  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 804F1CC4  D0 01 00 80 */	stfs f0, 0x80(r1)
lbl_804F1CC8:
/* 804F1CC8  C0 3E 00 D4 */	lfs f1, 0xd4(r30)
/* 804F1CCC  4B D7 5C C1 */	bl cM_rndFX__Ff
/* 804F1CD0  FC 00 08 1E */	fctiwz f0, f1
/* 804F1CD4  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 804F1CD8  83 21 00 8C */	lwz r25, 0x8c(r1)
/* 804F1CDC  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 804F1CE0  C0 41 00 80 */	lfs f2, 0x80(r1)
/* 804F1CE4  4B D7 59 91 */	bl cM_atan2s__Fff
/* 804F1CE8  7C 03 CA 14 */	add r0, r3, r25
/* 804F1CEC  B0 1A 05 C4 */	sth r0, 0x5c4(r26)
/* 804F1CF0  38 C0 00 01 */	li r6, 1
/* 804F1CF4  48 00 00 0C */	b lbl_804F1D00
lbl_804F1CF8:
/* 804F1CF8  38 63 61 D4 */	addi r3, r3, 0x61d4
/* 804F1CFC  42 00 FE 24 */	bdnz lbl_804F1B20
lbl_804F1D00:
/* 804F1D00  7C C0 07 75 */	extsb. r0, r6
/* 804F1D04  40 82 00 90 */	bne lbl_804F1D94
/* 804F1D08  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 804F1D0C  4B D7 5C 81 */	bl cM_rndFX__Ff
/* 804F1D10  C0 1A 04 A8 */	lfs f0, 0x4a8(r26)
/* 804F1D14  EC 00 08 2A */	fadds f0, f0, f1
/* 804F1D18  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 804F1D1C  C0 1A 04 AC */	lfs f0, 0x4ac(r26)
/* 804F1D20  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 804F1D24  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 804F1D28  4B D7 5C 65 */	bl cM_rndFX__Ff
/* 804F1D2C  C0 1A 04 B0 */	lfs f0, 0x4b0(r26)
/* 804F1D30  EC 00 08 2A */	fadds f0, f0, f1
/* 804F1D34  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 804F1D38  38 61 00 48 */	addi r3, r1, 0x48
/* 804F1D3C  38 81 00 6C */	addi r4, r1, 0x6c
/* 804F1D40  38 BA 04 D0 */	addi r5, r26, 0x4d0
/* 804F1D44  4B D7 4D F1 */	bl __mi__4cXyzCFRC3Vec
/* 804F1D48  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 804F1D4C  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 804F1D50  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 804F1D54  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 804F1D58  C0 41 00 50 */	lfs f2, 0x50(r1)
/* 804F1D5C  D0 41 00 80 */	stfs f2, 0x80(r1)
/* 804F1D60  4B D7 59 15 */	bl cM_atan2s__Fff
/* 804F1D64  A8 9A 04 DE */	lha r4, 0x4de(r26)
/* 804F1D68  7C 04 18 50 */	subf r0, r4, r3
/* 804F1D6C  7C 00 07 34 */	extsh r0, r0
/* 804F1D70  2C 00 40 00 */	cmpwi r0, 0x4000
/* 804F1D74  40 81 00 0C */	ble lbl_804F1D80
/* 804F1D78  38 00 40 00 */	li r0, 0x4000
/* 804F1D7C  48 00 00 10 */	b lbl_804F1D8C
lbl_804F1D80:
/* 804F1D80  2C 00 C0 00 */	cmpwi r0, -16384
/* 804F1D84  40 80 00 08 */	bge lbl_804F1D8C
/* 804F1D88  38 00 C0 00 */	li r0, -16384
lbl_804F1D8C:
/* 804F1D8C  7C 04 02 14 */	add r0, r4, r0
/* 804F1D90  B0 1A 05 C4 */	sth r0, 0x5c4(r26)
lbl_804F1D94:
/* 804F1D94  C0 1A 05 2C */	lfs f0, 0x52c(r26)
/* 804F1D98  C0 3E 00 00 */	lfs f1, 0(r30)
/* 804F1D9C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804F1DA0  40 81 01 14 */	ble lbl_804F1EB4
/* 804F1DA4  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 804F1DA8  40 80 01 0C */	bge lbl_804F1EB4
/* 804F1DAC  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 804F1DB0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804F1DB4  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 804F1DB8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 804F1DBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804F1DC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804F1DC4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 804F1DC8  38 80 00 07 */	li r4, 7
/* 804F1DCC  38 A0 00 0F */	li r5, 0xf
/* 804F1DD0  38 C1 00 3C */	addi r6, r1, 0x3c
/* 804F1DD4  4B B7 DC 51 */	bl StartShock__12dVibration_cFii4cXyz
/* 804F1DD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804F1DDC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804F1DE0  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 804F1DE4  38 80 00 00 */	li r4, 0
/* 804F1DE8  90 81 00 08 */	stw r4, 8(r1)
/* 804F1DEC  38 00 FF FF */	li r0, -1
/* 804F1DF0  90 01 00 0C */	stw r0, 0xc(r1)
/* 804F1DF4  90 81 00 10 */	stw r4, 0x10(r1)
/* 804F1DF8  90 81 00 14 */	stw r4, 0x14(r1)
/* 804F1DFC  90 81 00 18 */	stw r4, 0x18(r1)
/* 804F1E00  38 80 00 00 */	li r4, 0
/* 804F1E04  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008150@ha */
/* 804F1E08  38 A5 81 50 */	addi r5, r5, 0x8150 /* 0x00008150@l */
/* 804F1E0C  38 DA 04 A8 */	addi r6, r26, 0x4a8
/* 804F1E10  38 E0 00 00 */	li r7, 0
/* 804F1E14  39 00 00 00 */	li r8, 0
/* 804F1E18  39 20 00 00 */	li r9, 0
/* 804F1E1C  39 40 00 FF */	li r10, 0xff
/* 804F1E20  C0 3E 00 00 */	lfs f1, 0(r30)
/* 804F1E24  4B B5 AC 6D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804F1E28  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080163@ha */
/* 804F1E2C  38 03 01 63 */	addi r0, r3, 0x0163 /* 0x00080163@l */
/* 804F1E30  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F1E34  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804F1E38  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804F1E3C  80 63 00 00 */	lwz r3, 0(r3)
/* 804F1E40  38 81 00 24 */	addi r4, r1, 0x24
/* 804F1E44  38 A0 00 00 */	li r5, 0
/* 804F1E48  38 C0 00 00 */	li r6, 0
/* 804F1E4C  38 E0 00 00 */	li r7, 0
/* 804F1E50  C0 3E 00 00 */	lfs f1, 0(r30)
/* 804F1E54  FC 40 08 90 */	fmr f2, f1
/* 804F1E58  C0 7E 00 88 */	lfs f3, 0x88(r30)
/* 804F1E5C  FC 80 18 90 */	fmr f4, f3
/* 804F1E60  39 00 00 00 */	li r8, 0
/* 804F1E64  4B DB 9B 21 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 804F1E68  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070001@ha */
/* 804F1E6C  38 03 00 01 */	addi r0, r3, 0x0001 /* 0x00070001@l */
/* 804F1E70  90 01 00 28 */	stw r0, 0x28(r1)
/* 804F1E74  38 7A 06 3C */	addi r3, r26, 0x63c
/* 804F1E78  38 81 00 28 */	addi r4, r1, 0x28
/* 804F1E7C  38 A0 00 00 */	li r5, 0
/* 804F1E80  38 C0 FF FF */	li r6, -1
/* 804F1E84  81 9A 06 3C */	lwz r12, 0x63c(r26)
/* 804F1E88  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804F1E8C  7D 89 03 A6 */	mtctr r12
/* 804F1E90  4E 80 04 21 */	bctrl 
/* 804F1E94  80 1A 07 E0 */	lwz r0, 0x7e0(r26)
/* 804F1E98  1C 60 00 0C */	mulli r3, r0, 0xc
/* 804F1E9C  38 63 07 C8 */	addi r3, r3, 0x7c8
/* 804F1EA0  7C 7A 1A 14 */	add r3, r26, r3
/* 804F1EA4  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 804F1EA8  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 804F1EAC  38 80 FF FF */	li r4, -1
/* 804F1EB0  4B FF D8 05 */	bl hasira_hahen_hit__FP4cXyzffSc
lbl_804F1EB4:
/* 804F1EB4  3B 60 00 02 */	li r27, 2
/* 804F1EB8  3F 20 00 01 */	lis r25, 0x0001 /* 0x0000C3A8@ha */
/* 804F1EBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804F1EC0  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804F1EC4  57 9D 06 3A */	rlwinm r29, r28, 0, 0x18, 0x1d
/* 804F1EC8  3B 39 C3 A8 */	addi r25, r25, 0xC3A8 /* 0x0000C3A8@l */
lbl_804F1ECC:
/* 804F1ECC  38 61 00 30 */	addi r3, r1, 0x30
/* 804F1ED0  7F 9A CA 14 */	add r28, r26, r25
/* 804F1ED4  3C 9C 00 01 */	addis r4, r28, 1
/* 804F1ED8  38 84 85 3C */	addi r4, r4, -31428
/* 804F1EDC  38 BA 04 D0 */	addi r5, r26, 0x4d0
/* 804F1EE0  4B D7 4C 55 */	bl __mi__4cXyzCFRC3Vec
/* 804F1EE4  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 804F1EE8  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 804F1EEC  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 804F1EF0  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 804F1EF4  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 804F1EF8  D0 41 00 80 */	stfs f2, 0x80(r1)
/* 804F1EFC  4B D7 57 79 */	bl cM_atan2s__Fff
/* 804F1F00  A8 1A 04 E6 */	lha r0, 0x4e6(r26)
/* 804F1F04  7C 03 00 50 */	subf r0, r3, r0
/* 804F1F08  7C 00 07 34 */	extsh r0, r0
/* 804F1F0C  2C 00 60 00 */	cmpwi r0, 0x6000
/* 804F1F10  41 81 00 0C */	bgt lbl_804F1F1C
/* 804F1F14  2C 00 A0 00 */	cmpwi r0, -24576
/* 804F1F18  40 80 00 90 */	bge lbl_804F1FA8
lbl_804F1F1C:
/* 804F1F1C  3C 7C 00 01 */	addis r3, r28, 1
/* 804F1F20  88 03 85 3A */	lbz r0, -0x7ac6(r3)
/* 804F1F24  7C 00 07 75 */	extsb. r0, r0
/* 804F1F28  40 82 00 20 */	bne lbl_804F1F48
/* 804F1F2C  88 03 85 38 */	lbz r0, -0x7ac8(r3)
/* 804F1F30  7C 00 07 75 */	extsb. r0, r0
/* 804F1F34  41 82 00 74 */	beq lbl_804F1FA8
/* 804F1F38  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 804F1F3C  80 03 05 70 */	lwz r0, 0x570(r3)
/* 804F1F40  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 804F1F44  41 82 00 64 */	beq lbl_804F1FA8
lbl_804F1F48:
/* 804F1F48  3C 7C 00 01 */	addis r3, r28, 1
/* 804F1F4C  C0 23 85 30 */	lfs f1, -0x7ad0(r3)
/* 804F1F50  88 03 85 38 */	lbz r0, -0x7ac8(r3)
/* 804F1F54  7C 00 07 75 */	extsb. r0, r0
/* 804F1F58  41 82 00 0C */	beq lbl_804F1F64
/* 804F1F5C  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 804F1F60  48 00 00 08 */	b lbl_804F1F68
lbl_804F1F64:
/* 804F1F64  C0 1E 00 AC */	lfs f0, 0xac(r30)
lbl_804F1F68:
/* 804F1F68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F1F6C  40 81 00 3C */	ble lbl_804F1FA8
/* 804F1F70  2C 1B 00 02 */	cmpwi r27, 2
/* 804F1F74  40 82 00 0C */	bne lbl_804F1F80
/* 804F1F78  2C 1D 00 0C */	cmpwi r29, 0xc
/* 804F1F7C  41 82 00 14 */	beq lbl_804F1F90
lbl_804F1F80:
/* 804F1F80  2C 1B 00 03 */	cmpwi r27, 3
/* 804F1F84  40 82 00 24 */	bne lbl_804F1FA8
/* 804F1F88  2C 1D 00 28 */	cmpwi r29, 0x28
/* 804F1F8C  40 82 00 1C */	bne lbl_804F1FA8
lbl_804F1F90:
/* 804F1F90  38 00 00 07 */	li r0, 7
/* 804F1F94  B0 1A 07 A2 */	sth r0, 0x7a2(r26)
/* 804F1F98  38 00 00 00 */	li r0, 0
/* 804F1F9C  B0 1A 07 A4 */	sth r0, 0x7a4(r26)
/* 804F1FA0  9B 7A 08 08 */	stb r27, 0x808(r26)
/* 804F1FA4  48 00 01 30 */	b lbl_804F20D4
lbl_804F1FA8:
/* 804F1FA8  3B 7B 00 01 */	addi r27, r27, 1
/* 804F1FAC  2C 1B 00 03 */	cmpwi r27, 3
/* 804F1FB0  3B 39 61 D4 */	addi r25, r25, 0x61d4
/* 804F1FB4  40 81 FF 18 */	ble lbl_804F1ECC
/* 804F1FB8  A8 9A 07 AC */	lha r4, 0x7ac(r26)
/* 804F1FBC  C8 3E 00 A0 */	lfd f1, 0xa0(r30)
/* 804F1FC0  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 804F1FC4  90 01 00 8C */	stw r0, 0x8c(r1)
/* 804F1FC8  3C 00 43 30 */	lis r0, 0x4330
/* 804F1FCC  90 01 00 88 */	stw r0, 0x88(r1)
/* 804F1FD0  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 804F1FD4  EC 40 08 28 */	fsubs f2, f0, f1
/* 804F1FD8  3C 60 80 50 */	lis r3, l_HIO@ha /* 0x804FAEA4@ha */
/* 804F1FDC  38 63 AE A4 */	addi r3, r3, l_HIO@l /* 0x804FAEA4@l */
/* 804F1FE0  C0 23 00 A4 */	lfs f1, 0xa4(r3)
/* 804F1FE4  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 804F1FE8  EC 01 00 28 */	fsubs f0, f1, f0
/* 804F1FEC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804F1FF0  40 80 00 10 */	bge lbl_804F2000
/* 804F1FF4  88 1A 08 09 */	lbz r0, 0x809(r26)
/* 804F1FF8  7C 00 07 75 */	extsb. r0, r0
/* 804F1FFC  40 82 00 0C */	bne lbl_804F2008
lbl_804F2000:
/* 804F2000  7C 80 07 35 */	extsh. r0, r4
/* 804F2004  40 82 00 AC */	bne lbl_804F20B0
lbl_804F2008:
/* 804F2008  7F 43 D3 78 */	mr r3, r26
/* 804F200C  38 80 00 0A */	li r4, 0xa
/* 804F2010  C0 3E 00 C0 */	lfs f1, 0xc0(r30)
/* 804F2014  38 A0 00 00 */	li r5, 0
/* 804F2018  C0 5E 00 00 */	lfs f2, 0(r30)
/* 804F201C  4B FF D7 ED */	bl anm_init__FP10e_fm_classifUcf
/* 804F2020  38 00 00 02 */	li r0, 2
/* 804F2024  B0 1A 07 A4 */	sth r0, 0x7a4(r26)
/* 804F2028  38 00 00 04 */	li r0, 4
/* 804F202C  90 1A 06 1C */	stw r0, 0x61c(r26)
/* 804F2030  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 804F2034  80 7A 06 08 */	lwz r3, 0x608(r26)
/* 804F2038  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 804F203C  80 7A 05 E4 */	lwz r3, 0x5e4(r26)
/* 804F2040  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 804F2044  48 00 00 6C */	b lbl_804F20B0
lbl_804F2048:
/* 804F2048  80 7A 05 D0 */	lwz r3, 0x5d0(r26)
/* 804F204C  38 80 00 01 */	li r4, 1
/* 804F2050  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804F2054  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804F2058  40 82 00 14 */	bne lbl_804F206C
/* 804F205C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804F2060  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 804F2064  41 82 00 08 */	beq lbl_804F206C
/* 804F2068  38 80 00 00 */	li r4, 0
lbl_804F206C:
/* 804F206C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804F2070  41 82 00 40 */	beq lbl_804F20B0
/* 804F2074  38 00 00 00 */	li r0, 0
/* 804F2078  B0 1A 07 A2 */	sth r0, 0x7a2(r26)
/* 804F207C  B0 1A 07 A4 */	sth r0, 0x7a4(r26)
/* 804F2080  90 1A 06 1C */	stw r0, 0x61c(r26)
/* 804F2084  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 804F2088  80 7A 05 F8 */	lwz r3, 0x5f8(r26)
/* 804F208C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 804F2090  80 7A 05 D4 */	lwz r3, 0x5d4(r26)
/* 804F2094  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 804F2098  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804F209C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804F20A0  80 63 00 00 */	lwz r3, 0(r3)
/* 804F20A4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 804F20A8  38 80 00 04 */	li r4, 4
/* 804F20AC  4B DB DE E1 */	bl changeBgmStatus__8Z2SeqMgrFl
lbl_804F20B0:
/* 804F20B0  D3 FA 05 2C */	stfs f31, 0x52c(r26)
/* 804F20B4  C0 1E 00 00 */	lfs f0, 0(r30)
/* 804F20B8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804F20BC  40 81 00 18 */	ble lbl_804F20D4
/* 804F20C0  38 7A 04 DE */	addi r3, r26, 0x4de
/* 804F20C4  A8 9A 05 C4 */	lha r4, 0x5c4(r26)
/* 804F20C8  38 A0 00 02 */	li r5, 2
/* 804F20CC  38 C0 02 00 */	li r6, 0x200
/* 804F20D0  4B D7 E5 39 */	bl cLib_addCalcAngleS2__FPssss
lbl_804F20D4:
/* 804F20D4  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 804F20D8  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 804F20DC  39 61 00 B0 */	addi r11, r1, 0xb0
/* 804F20E0  4B E7 01 39 */	bl _restgpr_25
/* 804F20E4  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 804F20E8  7C 08 03 A6 */	mtlr r0
/* 804F20EC  38 21 00 C0 */	addi r1, r1, 0xc0
/* 804F20F0  4E 80 00 20 */	blr 
