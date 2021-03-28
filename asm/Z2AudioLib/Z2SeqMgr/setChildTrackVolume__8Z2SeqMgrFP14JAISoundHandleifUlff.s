lbl_802B3FEC:
/* 802B3FEC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802B3FF0  7C 08 02 A6 */	mflr r0
/* 802B3FF4  90 01 00 54 */	stw r0, 0x54(r1)
/* 802B3FF8  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 802B3FFC  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 802B4000  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 802B4004  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 802B4008  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 802B400C  F3 A1 00 28 */	psq_st f29, 40(r1), 0, 0 /* qr0 */
/* 802B4010  39 61 00 20 */	addi r11, r1, 0x20
/* 802B4014  48 0A E1 C9 */	bl _savegpr_29
/* 802B4018  7C BD 2B 78 */	mr r29, r5
/* 802B401C  FF A0 08 90 */	fmr f29, f1
/* 802B4020  7C DE 33 78 */	mr r30, r6
/* 802B4024  FF C0 10 90 */	fmr f30, f2
/* 802B4028  FF E0 18 90 */	fmr f31, f3
/* 802B402C  80 64 00 00 */	lwz r3, 0(r4)
/* 802B4030  28 03 00 00 */	cmplwi r3, 0
/* 802B4034  41 82 00 C4 */	beq lbl_802B40F8
/* 802B4038  81 83 00 00 */	lwz r12, 0(r3)
/* 802B403C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802B4040  7D 89 03 A6 */	mtctr r12
/* 802B4044  4E 80 04 21 */	bctrl 
/* 802B4048  7C 7F 1B 79 */	or. r31, r3, r3
/* 802B404C  41 82 00 AC */	beq lbl_802B40F8
/* 802B4050  7F A4 EB 78 */	mr r4, r29
/* 802B4054  81 83 00 00 */	lwz r12, 0(r3)
/* 802B4058  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 802B405C  7D 89 03 A6 */	mtctr r12
/* 802B4060  4E 80 04 21 */	bctrl 
/* 802B4064  28 03 00 00 */	cmplwi r3, 0
/* 802B4068  41 82 00 90 */	beq lbl_802B40F8
/* 802B406C  7F E3 FB 78 */	mr r3, r31
/* 802B4070  7F A4 EB 78 */	mr r4, r29
/* 802B4074  81 9F 00 00 */	lwz r12, 0(r31)
/* 802B4078  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802B407C  7D 89 03 A6 */	mtctr r12
/* 802B4080  4E 80 04 21 */	bctrl 
/* 802B4084  7C 7F 1B 79 */	or. r31, r3, r3
/* 802B4088  41 82 00 70 */	beq lbl_802B40F8
/* 802B408C  C0 02 BF 98 */	lfs f0, lit_3372(r2)
/* 802B4090  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 802B4094  40 81 00 0C */	ble lbl_802B40A0
/* 802B4098  FF A0 00 90 */	fmr f29, f0
/* 802B409C  48 00 00 14 */	b lbl_802B40B0
lbl_802B40A0:
/* 802B40A0  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802B40A4  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 802B40A8  40 80 00 08 */	bge lbl_802B40B0
/* 802B40AC  FF A0 00 90 */	fmr f29, f0
lbl_802B40B0:
/* 802B40B0  7F E3 FB 78 */	mr r3, r31
/* 802B40B4  FC 20 E8 90 */	fmr f1, f29
/* 802B40B8  7F C4 F3 78 */	mr r4, r30
/* 802B40BC  4B FE EC F9 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802B40C0  C0 02 BF B4 */	lfs f0, lit_4727(r2)
/* 802B40C4  FC 00 F0 00 */	fcmpu cr0, f0, f30
/* 802B40C8  41 82 00 14 */	beq lbl_802B40DC
/* 802B40CC  7F E3 FB 78 */	mr r3, r31
/* 802B40D0  FC 20 F0 90 */	fmr f1, f30
/* 802B40D4  7F C4 F3 78 */	mr r4, r30
/* 802B40D8  4B FE ED E5 */	bl movePan__18JAISoundParamsMoveFfUl
lbl_802B40DC:
/* 802B40DC  C0 02 BF B4 */	lfs f0, lit_4727(r2)
/* 802B40E0  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 802B40E4  41 82 00 14 */	beq lbl_802B40F8
/* 802B40E8  7F E3 FB 78 */	mr r3, r31
/* 802B40EC  FC 20 F8 90 */	fmr f1, f31
/* 802B40F0  7F C4 F3 78 */	mr r4, r30
/* 802B40F4  4B FE EE 21 */	bl moveDolby__18JAISoundParamsMoveFfUl
lbl_802B40F8:
/* 802B40F8  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 802B40FC  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 802B4100  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 802B4104  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 802B4108  E3 A1 00 28 */	psq_l f29, 40(r1), 0, 0 /* qr0 */
/* 802B410C  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 802B4110  39 61 00 20 */	addi r11, r1, 0x20
/* 802B4114  48 0A E1 15 */	bl _restgpr_29
/* 802B4118  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802B411C  7C 08 03 A6 */	mtlr r0
/* 802B4120  38 21 00 50 */	addi r1, r1, 0x50
/* 802B4124  4E 80 00 20 */	blr 
