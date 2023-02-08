lbl_802CCFF8:
/* 802CCFF8  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 802CCFFC  7C 08 02 A6 */	mflr r0
/* 802CD000  90 01 00 84 */	stw r0, 0x84(r1)
/* 802CD004  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 802CD008  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 802CD00C  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 802CD010  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 802CD014  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 802CD018  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 802CD01C  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 802CD020  F3 81 00 48 */	psq_st f28, 72(r1), 0, 0 /* qr0 */
/* 802CD024  DB 61 00 30 */	stfd f27, 0x30(r1)
/* 802CD028  F3 61 00 38 */	psq_st f27, 56(r1), 0, 0 /* qr0 */
/* 802CD02C  39 61 00 30 */	addi r11, r1, 0x30
/* 802CD030  48 09 51 A1 */	bl _savegpr_26
/* 802CD034  7C 7D 1B 78 */	mr r29, r3
/* 802CD038  7C 9A 23 78 */	mr r26, r4
/* 802CD03C  7C BE 2B 78 */	mr r30, r5
/* 802CD040  7C DC 33 78 */	mr r28, r6
/* 802CD044  7C FB 3B 78 */	mr r27, r7
/* 802CD048  FF 60 08 90 */	fmr f27, f1
/* 802CD04C  FF 80 10 90 */	fmr f28, f2
/* 802CD050  FF A0 18 90 */	fmr f29, f3
/* 802CD054  FF C0 20 90 */	fmr f30, f4
/* 802CD058  FF E0 28 90 */	fmr f31, f5
/* 802CD05C  7D 1F 43 78 */	mr r31, r8
/* 802CD060  80 8D 86 00 */	lwz r4, data_80450B80(r13)
/* 802CD064  88 04 00 1E */	lbz r0, 0x1e(r4)
/* 802CD068  28 00 00 00 */	cmplwi r0, 0
/* 802CD06C  41 82 00 20 */	beq lbl_802CD08C
/* 802CD070  88 04 00 16 */	lbz r0, 0x16(r4)
/* 802CD074  28 00 00 77 */	cmplwi r0, 0x77
/* 802CD078  41 82 00 14 */	beq lbl_802CD08C
/* 802CD07C  28 00 00 78 */	cmplwi r0, 0x78
/* 802CD080  41 82 00 0C */	beq lbl_802CD08C
/* 802CD084  C3 62 C5 34 */	lfs f27, lit_3837(r2)
/* 802CD088  48 00 00 84 */	b lbl_802CD10C
lbl_802CD08C:
/* 802CD08C  80 6D 85 FC */	lwz r3, data_80450B7C(r13)
/* 802CD090  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 802CD094  C0 42 C5 30 */	lfs f2, lit_3836(r2)
/* 802CD098  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 802CD09C  7C 00 00 26 */	mfcr r0
/* 802CD0A0  54 00 17 FE */	rlwinm r0, r0, 2, 0x1f, 0x1f
/* 802CD0A4  C8 22 C5 48 */	lfd f1, lit_4083(r2)
/* 802CD0A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CD0AC  3C 00 43 30 */	lis r0, 0x4330
/* 802CD0B0  90 01 00 10 */	stw r0, 0x10(r1)
/* 802CD0B4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802CD0B8  EC 00 08 28 */	fsubs f0, f0, f1
/* 802CD0BC  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 802CD0C0  41 82 00 0C */	beq lbl_802CD0CC
/* 802CD0C4  FF 60 00 90 */	fmr f27, f0
/* 802CD0C8  48 00 00 44 */	b lbl_802CD10C
lbl_802CD0CC:
/* 802CD0CC  88 04 00 16 */	lbz r0, 0x16(r4)
/* 802CD0D0  28 00 00 6C */	cmplwi r0, 0x6c
/* 802CD0D4  41 82 00 0C */	beq lbl_802CD0E0
/* 802CD0D8  28 00 00 77 */	cmplwi r0, 0x77
/* 802CD0DC  40 82 00 0C */	bne lbl_802CD0E8
lbl_802CD0E0:
/* 802CD0E0  C3 62 C5 50 */	lfs f27, lit_4571(r2)
/* 802CD0E4  48 00 00 28 */	b lbl_802CD10C
lbl_802CD0E8:
/* 802CD0E8  80 6D 85 BC */	lwz r3, data_80450B3C(r13)
/* 802CD0EC  4B FF C2 F9 */	bl getFogDensity__10Z2EnvSeMgrFv
/* 802CD0F0  C0 02 C5 54 */	lfs f0, lit_4572(r2)
/* 802CD0F4  EC 00 00 72 */	fmuls f0, f0, f1
/* 802CD0F8  EF 7B 00 2A */	fadds f27, f27, f0
/* 802CD0FC  C0 02 C5 34 */	lfs f0, lit_3837(r2)
/* 802CD100  FC 1B 00 40 */	fcmpo cr0, f27, f0
/* 802CD104  40 81 00 08 */	ble lbl_802CD10C
/* 802CD108  FF 60 00 90 */	fmr f27, f0
lbl_802CD10C:
/* 802CD10C  80 1A 00 00 */	lwz r0, 0(r26)
/* 802CD110  90 01 00 08 */	stw r0, 8(r1)
/* 802CD114  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 802CD118  38 81 00 08 */	addi r4, r1, 8
/* 802CD11C  7F C5 F3 78 */	mr r5, r30
/* 802CD120  7F 86 E3 78 */	mr r6, r28
/* 802CD124  81 83 05 14 */	lwz r12, 0x514(r3)
/* 802CD128  81 8C 00 08 */	lwz r12, 8(r12)
/* 802CD12C  7D 89 03 A6 */	mtctr r12
/* 802CD130  4E 80 04 21 */	bctrl 
/* 802CD134  7C 7C 1B 78 */	mr r28, r3
/* 802CD138  80 1E 00 00 */	lwz r0, 0(r30)
/* 802CD13C  28 00 00 00 */	cmplwi r0, 0
/* 802CD140  41 82 00 C4 */	beq lbl_802CD204
/* 802CD144  28 1B 00 00 */	cmplwi r27, 0
/* 802CD148  41 82 00 1C */	beq lbl_802CD164
/* 802CD14C  7F A3 EB 78 */	mr r3, r29
/* 802CD150  7F C4 F3 78 */	mr r4, r30
/* 802CD154  38 A0 00 06 */	li r5, 6
/* 802CD158  57 66 04 3E */	clrlwi r6, r27, 0x10
/* 802CD15C  38 E0 FF FF */	li r7, -1
/* 802CD160  4B FD DD 7D */	bl setPortData__14Z2SoundStarterFP14JAISoundHandleUlUsSc
lbl_802CD164:
/* 802CD164  C0 02 C5 30 */	lfs f0, lit_3836(r2)
/* 802CD168  FC 1B 00 40 */	fcmpo cr0, f27, f0
/* 802CD16C  40 81 00 18 */	ble lbl_802CD184
/* 802CD170  80 7E 00 00 */	lwz r3, 0(r30)
/* 802CD174  38 63 00 48 */	addi r3, r3, 0x48
/* 802CD178  FC 20 D8 90 */	fmr f1, f27
/* 802CD17C  7F E4 FB 78 */	mr r4, r31
/* 802CD180  4B FD 5C E5 */	bl moveFxMix__18JAISoundParamsMoveFfUl
lbl_802CD184:
/* 802CD184  C0 02 C5 34 */	lfs f0, lit_3837(r2)
/* 802CD188  FC 00 E0 00 */	fcmpu cr0, f0, f28
/* 802CD18C  41 82 00 18 */	beq lbl_802CD1A4
/* 802CD190  80 7E 00 00 */	lwz r3, 0(r30)
/* 802CD194  38 63 00 48 */	addi r3, r3, 0x48
/* 802CD198  FC 20 E0 90 */	fmr f1, f28
/* 802CD19C  7F E4 FB 78 */	mr r4, r31
/* 802CD1A0  4B FD 5C 6D */	bl movePitch__18JAISoundParamsMoveFfUl
lbl_802CD1A4:
/* 802CD1A4  C0 02 C5 34 */	lfs f0, lit_3837(r2)
/* 802CD1A8  FC 00 E8 00 */	fcmpu cr0, f0, f29
/* 802CD1AC  41 82 00 18 */	beq lbl_802CD1C4
/* 802CD1B0  80 7E 00 00 */	lwz r3, 0(r30)
/* 802CD1B4  38 63 00 48 */	addi r3, r3, 0x48
/* 802CD1B8  FC 20 E8 90 */	fmr f1, f29
/* 802CD1BC  7F E4 FB 78 */	mr r4, r31
/* 802CD1C0  4B FD 5B F5 */	bl moveVolume__18JAISoundParamsMoveFfUl
lbl_802CD1C4:
/* 802CD1C4  C0 02 C5 38 */	lfs f0, lit_3838(r2)
/* 802CD1C8  FC 00 F0 00 */	fcmpu cr0, f0, f30
/* 802CD1CC  41 82 00 18 */	beq lbl_802CD1E4
/* 802CD1D0  80 7E 00 00 */	lwz r3, 0(r30)
/* 802CD1D4  38 63 00 48 */	addi r3, r3, 0x48
/* 802CD1D8  FC 20 F0 90 */	fmr f1, f30
/* 802CD1DC  7F E4 FB 78 */	mr r4, r31
/* 802CD1E0  4B FD 5C DD */	bl movePan__18JAISoundParamsMoveFfUl
lbl_802CD1E4:
/* 802CD1E4  C0 02 C5 38 */	lfs f0, lit_3838(r2)
/* 802CD1E8  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 802CD1EC  41 82 00 18 */	beq lbl_802CD204
/* 802CD1F0  80 7E 00 00 */	lwz r3, 0(r30)
/* 802CD1F4  38 63 00 48 */	addi r3, r3, 0x48
/* 802CD1F8  FC 20 F8 90 */	fmr f1, f31
/* 802CD1FC  7F E4 FB 78 */	mr r4, r31
/* 802CD200  4B FD 5D 15 */	bl moveDolby__18JAISoundParamsMoveFfUl
lbl_802CD204:
/* 802CD204  7F 83 E3 78 */	mr r3, r28
/* 802CD208  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 802CD20C  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 802CD210  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 802CD214  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 802CD218  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 802CD21C  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 802CD220  E3 81 00 48 */	psq_l f28, 72(r1), 0, 0 /* qr0 */
/* 802CD224  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 802CD228  E3 61 00 38 */	psq_l f27, 56(r1), 0, 0 /* qr0 */
/* 802CD22C  CB 61 00 30 */	lfd f27, 0x30(r1)
/* 802CD230  39 61 00 30 */	addi r11, r1, 0x30
/* 802CD234  48 09 4F E9 */	bl _restgpr_26
/* 802CD238  80 01 00 84 */	lwz r0, 0x84(r1)
/* 802CD23C  7C 08 03 A6 */	mtlr r0
/* 802CD240  38 21 00 80 */	addi r1, r1, 0x80
/* 802CD244  4E 80 00 20 */	blr 
