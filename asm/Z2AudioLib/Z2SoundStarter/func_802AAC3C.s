lbl_802AAC3C:
/* 802AAC3C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 802AAC40  7C 08 02 A6 */	mflr r0
/* 802AAC44  90 01 00 94 */	stw r0, 0x94(r1)
/* 802AAC48  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 802AAC4C  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 802AAC50  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 802AAC54  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 802AAC58  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 802AAC5C  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 802AAC60  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 802AAC64  F3 81 00 58 */	psq_st f28, 88(r1), 0, 0 /* qr0 */
/* 802AAC68  DB 61 00 40 */	stfd f27, 0x40(r1)
/* 802AAC6C  F3 61 00 48 */	psq_st f27, 72(r1), 0, 0 /* qr0 */
/* 802AAC70  39 61 00 40 */	addi r11, r1, 0x40
/* 802AAC74  48 0B 75 5D */	bl _savegpr_26
/* 802AAC78  7C 7A 1B 78 */	mr r26, r3
/* 802AAC7C  7C 9B 23 78 */	mr r27, r4
/* 802AAC80  7C BC 2B 78 */	mr r28, r5
/* 802AAC84  7C DD 33 78 */	mr r29, r6
/* 802AAC88  7C FE 3B 78 */	mr r30, r7
/* 802AAC8C  FF 60 08 90 */	fmr f27, f1
/* 802AAC90  FF 80 10 90 */	fmr f28, f2
/* 802AAC94  FF A0 18 90 */	fmr f29, f3
/* 802AAC98  FF C0 20 90 */	fmr f30, f4
/* 802AAC9C  FF E0 28 90 */	fmr f31, f5
/* 802AACA0  7D 1F 43 78 */	mr r31, r8
/* 802AACA4  28 1E 00 06 */	cmplwi r30, 6
/* 802AACA8  40 82 00 68 */	bne lbl_802AAD10
/* 802AACAC  80 9B 00 00 */	lwz r4, 0(r27)
/* 802AACB0  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002C@ha */
/* 802AACB4  38 03 00 2C */	addi r0, r3, 0x002C /* 0x0006002C@l */
/* 802AACB8  7C 04 00 00 */	cmpw r4, r0
/* 802AACBC  41 82 00 38 */	beq lbl_802AACF4
/* 802AACC0  40 80 00 14 */	bge lbl_802AACD4
/* 802AACC4  38 03 00 2B */	addi r0, r3, 0x2b
/* 802AACC8  7C 04 00 00 */	cmpw r4, r0
/* 802AACCC  40 80 00 18 */	bge lbl_802AACE4
/* 802AACD0  48 00 00 40 */	b lbl_802AAD10
lbl_802AACD4:
/* 802AACD4  38 03 00 2E */	addi r0, r3, 0x2e
/* 802AACD8  7C 04 00 00 */	cmpw r4, r0
/* 802AACDC  40 80 00 34 */	bge lbl_802AAD10
/* 802AACE0  48 00 00 24 */	b lbl_802AAD04
lbl_802AACE4:
/* 802AACE4  38 03 00 2E */	addi r0, r3, 0x2e
/* 802AACE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AACEC  90 1B 00 00 */	stw r0, 0(r27)
/* 802AACF0  48 00 00 20 */	b lbl_802AAD10
lbl_802AACF4:
/* 802AACF4  38 03 00 2F */	addi r0, r3, 0x2f
/* 802AACF8  90 01 00 10 */	stw r0, 0x10(r1)
/* 802AACFC  90 1B 00 00 */	stw r0, 0(r27)
/* 802AAD00  48 00 00 10 */	b lbl_802AAD10
lbl_802AAD04:
/* 802AAD04  38 03 00 30 */	addi r0, r3, 0x30
/* 802AAD08  90 01 00 0C */	stw r0, 0xc(r1)
/* 802AAD0C  90 1B 00 00 */	stw r0, 0(r27)
lbl_802AAD10:
/* 802AAD10  88 1B 00 01 */	lbz r0, 1(r27)
/* 802AAD14  28 00 00 00 */	cmplwi r0, 0
/* 802AAD18  41 82 00 88 */	beq lbl_802AADA0
/* 802AAD1C  28 00 00 09 */	cmplwi r0, 9
/* 802AAD20  41 82 00 80 */	beq lbl_802AADA0
/* 802AAD24  80 6D 86 00 */	lwz r3, data_80450B80(r13)
/* 802AAD28  88 03 00 1E */	lbz r0, 0x1e(r3)
/* 802AAD2C  28 00 00 00 */	cmplwi r0, 0
/* 802AAD30  41 82 00 0C */	beq lbl_802AAD3C
/* 802AAD34  C3 62 BE 5C */	lfs f27, lit_3598(r2)
/* 802AAD38  48 00 00 68 */	b lbl_802AADA0
lbl_802AAD3C:
/* 802AAD3C  80 6D 85 FC */	lwz r3, data_80450B7C(r13)
/* 802AAD40  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 802AAD44  C0 42 BE 58 */	lfs f2, lit_3597(r2)
/* 802AAD48  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 802AAD4C  7C 00 00 26 */	mfcr r0
/* 802AAD50  54 00 17 FE */	rlwinm r0, r0, 2, 0x1f, 0x1f
/* 802AAD54  C8 22 BE 68 */	lfd f1, lit_3717(r2)
/* 802AAD58  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802AAD5C  3C 00 43 30 */	lis r0, 0x4330
/* 802AAD60  90 01 00 18 */	stw r0, 0x18(r1)
/* 802AAD64  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802AAD68  EC 00 08 28 */	fsubs f0, f0, f1
/* 802AAD6C  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 802AAD70  41 82 00 0C */	beq lbl_802AAD7C
/* 802AAD74  FF 60 00 90 */	fmr f27, f0
/* 802AAD78  48 00 00 28 */	b lbl_802AADA0
lbl_802AAD7C:
/* 802AAD7C  80 6D 85 BC */	lwz r3, data_80450B3C(r13)
/* 802AAD80  48 01 E6 65 */	bl getFogDensity__10Z2EnvSeMgrFv
/* 802AAD84  C0 02 BE 64 */	lfs f0, lit_3713(r2)
/* 802AAD88  EC 00 00 72 */	fmuls f0, f0, f1
/* 802AAD8C  EF 7B 00 2A */	fadds f27, f27, f0
/* 802AAD90  C0 02 BE 5C */	lfs f0, lit_3598(r2)
/* 802AAD94  FC 1B 00 40 */	fcmpo cr0, f27, f0
/* 802AAD98  40 81 00 08 */	ble lbl_802AADA0
/* 802AAD9C  FF 60 00 90 */	fmr f27, f0
lbl_802AADA0:
/* 802AADA0  80 1B 00 00 */	lwz r0, 0(r27)
/* 802AADA4  90 01 00 08 */	stw r0, 8(r1)
/* 802AADA8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 802AADAC  38 81 00 08 */	addi r4, r1, 8
/* 802AADB0  7F 85 E3 78 */	mr r5, r28
/* 802AADB4  7F A6 EB 78 */	mr r6, r29
/* 802AADB8  81 83 05 14 */	lwz r12, 0x514(r3)
/* 802AADBC  81 8C 00 08 */	lwz r12, 8(r12)
/* 802AADC0  7D 89 03 A6 */	mtctr r12
/* 802AADC4  4E 80 04 21 */	bctrl 
/* 802AADC8  7C 7B 1B 78 */	mr r27, r3
/* 802AADCC  80 1C 00 00 */	lwz r0, 0(r28)
/* 802AADD0  28 00 00 00 */	cmplwi r0, 0
/* 802AADD4  41 82 00 C4 */	beq lbl_802AAE98
/* 802AADD8  28 1E 00 00 */	cmplwi r30, 0
/* 802AADDC  41 82 00 1C */	beq lbl_802AADF8
/* 802AADE0  7F 43 D3 78 */	mr r3, r26
/* 802AADE4  7F 84 E3 78 */	mr r4, r28
/* 802AADE8  38 A0 00 06 */	li r5, 6
/* 802AADEC  57 C6 04 3E */	clrlwi r6, r30, 0x10
/* 802AADF0  38 E0 FF FF */	li r7, -1
/* 802AADF4  48 00 00 E9 */	bl setPortData__14Z2SoundStarterFP14JAISoundHandleUlUsSc
lbl_802AADF8:
/* 802AADF8  C0 02 BE 58 */	lfs f0, lit_3597(r2)
/* 802AADFC  FC 1B 00 40 */	fcmpo cr0, f27, f0
/* 802AAE00  40 81 00 18 */	ble lbl_802AAE18
/* 802AAE04  80 7C 00 00 */	lwz r3, 0(r28)
/* 802AAE08  38 63 00 48 */	addi r3, r3, 0x48
/* 802AAE0C  FC 20 D8 90 */	fmr f1, f27
/* 802AAE10  7F E4 FB 78 */	mr r4, r31
/* 802AAE14  4B FF 80 51 */	bl moveFxMix__18JAISoundParamsMoveFfUl
lbl_802AAE18:
/* 802AAE18  C0 02 BE 5C */	lfs f0, lit_3598(r2)
/* 802AAE1C  FC 00 E0 00 */	fcmpu cr0, f0, f28
/* 802AAE20  41 82 00 18 */	beq lbl_802AAE38
/* 802AAE24  80 7C 00 00 */	lwz r3, 0(r28)
/* 802AAE28  38 63 00 48 */	addi r3, r3, 0x48
/* 802AAE2C  FC 20 E0 90 */	fmr f1, f28
/* 802AAE30  7F E4 FB 78 */	mr r4, r31
/* 802AAE34  4B FF 7F D9 */	bl movePitch__18JAISoundParamsMoveFfUl
lbl_802AAE38:
/* 802AAE38  C0 02 BE 5C */	lfs f0, lit_3598(r2)
/* 802AAE3C  FC 00 E8 00 */	fcmpu cr0, f0, f29
/* 802AAE40  41 82 00 18 */	beq lbl_802AAE58
/* 802AAE44  80 7C 00 00 */	lwz r3, 0(r28)
/* 802AAE48  38 63 00 48 */	addi r3, r3, 0x48
/* 802AAE4C  FC 20 E8 90 */	fmr f1, f29
/* 802AAE50  7F E4 FB 78 */	mr r4, r31
/* 802AAE54  4B FF 7F 61 */	bl moveVolume__18JAISoundParamsMoveFfUl
lbl_802AAE58:
/* 802AAE58  C0 02 BE 60 */	lfs f0, lit_3599(r2)
/* 802AAE5C  FC 00 F0 00 */	fcmpu cr0, f0, f30
/* 802AAE60  41 82 00 18 */	beq lbl_802AAE78
/* 802AAE64  80 7C 00 00 */	lwz r3, 0(r28)
/* 802AAE68  38 63 00 48 */	addi r3, r3, 0x48
/* 802AAE6C  FC 20 F0 90 */	fmr f1, f30
/* 802AAE70  7F E4 FB 78 */	mr r4, r31
/* 802AAE74  4B FF 80 49 */	bl movePan__18JAISoundParamsMoveFfUl
lbl_802AAE78:
/* 802AAE78  C0 02 BE 60 */	lfs f0, lit_3599(r2)
/* 802AAE7C  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 802AAE80  41 82 00 18 */	beq lbl_802AAE98
/* 802AAE84  80 7C 00 00 */	lwz r3, 0(r28)
/* 802AAE88  38 63 00 48 */	addi r3, r3, 0x48
/* 802AAE8C  FC 20 F8 90 */	fmr f1, f31
/* 802AAE90  7F E4 FB 78 */	mr r4, r31
/* 802AAE94  4B FF 80 81 */	bl moveDolby__18JAISoundParamsMoveFfUl
lbl_802AAE98:
/* 802AAE98  7F 63 DB 78 */	mr r3, r27
/* 802AAE9C  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 802AAEA0  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 802AAEA4  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 802AAEA8  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 802AAEAC  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 802AAEB0  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 802AAEB4  E3 81 00 58 */	psq_l f28, 88(r1), 0, 0 /* qr0 */
/* 802AAEB8  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 802AAEBC  E3 61 00 48 */	psq_l f27, 72(r1), 0, 0 /* qr0 */
/* 802AAEC0  CB 61 00 40 */	lfd f27, 0x40(r1)
/* 802AAEC4  39 61 00 40 */	addi r11, r1, 0x40
/* 802AAEC8  48 0B 73 55 */	bl _restgpr_26
/* 802AAECC  80 01 00 94 */	lwz r0, 0x94(r1)
/* 802AAED0  7C 08 03 A6 */	mtlr r0
/* 802AAED4  38 21 00 90 */	addi r1, r1, 0x90
/* 802AAED8  4E 80 00 20 */	blr 
