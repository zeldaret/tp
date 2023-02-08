lbl_802C5AB4:
/* 802C5AB4  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 802C5AB8  7C 08 02 A6 */	mflr r0
/* 802C5ABC  90 01 00 94 */	stw r0, 0x94(r1)
/* 802C5AC0  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 802C5AC4  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 802C5AC8  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 802C5ACC  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 802C5AD0  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 802C5AD4  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 802C5AD8  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 802C5ADC  F3 81 00 58 */	psq_st f28, 88(r1), 0, 0 /* qr0 */
/* 802C5AE0  DB 61 00 40 */	stfd f27, 0x40(r1)
/* 802C5AE4  F3 61 00 48 */	psq_st f27, 72(r1), 0, 0 /* qr0 */
/* 802C5AE8  DB 41 00 30 */	stfd f26, 0x30(r1)
/* 802C5AEC  F3 41 00 38 */	psq_st f26, 56(r1), 0, 0 /* qr0 */
/* 802C5AF0  39 61 00 30 */	addi r11, r1, 0x30
/* 802C5AF4  48 09 C6 E9 */	bl _savegpr_29
/* 802C5AF8  7C 7E 1B 78 */	mr r30, r3
/* 802C5AFC  7C 9D 23 78 */	mr r29, r4
/* 802C5B00  FF 40 08 90 */	fmr f26, f1
/* 802C5B04  FF 60 10 90 */	fmr f27, f2
/* 802C5B08  FF 80 18 90 */	fmr f28, f3
/* 802C5B0C  FF A0 20 90 */	fmr f29, f4
/* 802C5B10  FF C0 28 90 */	fmr f30, f5
/* 802C5B14  7C BF 2B 78 */	mr r31, r5
/* 802C5B18  80 6D 85 FC */	lwz r3, data_80450B7C(r13)
/* 802C5B1C  88 03 00 0C */	lbz r0, 0xc(r3)
/* 802C5B20  28 00 00 00 */	cmplwi r0, 0
/* 802C5B24  41 82 00 0C */	beq lbl_802C5B30
/* 802C5B28  C0 02 C3 40 */	lfs f0, lit_3501(r2)
/* 802C5B2C  EF 7B 00 32 */	fmuls f27, f27, f0
lbl_802C5B30:
/* 802C5B30  C3 E2 C3 44 */	lfs f31, lit_3502(r2)
/* 802C5B34  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 802C5B38  C0 62 C3 48 */	lfs f3, lit_3503(r2)
/* 802C5B3C  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 802C5B40  7C 00 00 26 */	mfcr r0
/* 802C5B44  54 00 17 FE */	rlwinm r0, r0, 2, 0x1f, 0x1f
/* 802C5B48  C8 22 C3 58 */	lfd f1, lit_3508(r2)
/* 802C5B4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C5B50  3C 00 43 30 */	lis r0, 0x4330
/* 802C5B54  90 01 00 10 */	stw r0, 0x10(r1)
/* 802C5B58  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802C5B5C  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C5B60  FC 01 18 00 */	fcmpu cr0, f1, f3
/* 802C5B64  41 82 00 24 */	beq lbl_802C5B88
/* 802C5B68  C0 42 C3 4C */	lfs f2, lit_3504(r2)
/* 802C5B6C  C0 82 C3 50 */	lfs f4, lit_3505(r2)
/* 802C5B70  FC A0 18 90 */	fmr f5, f3
/* 802C5B74  FC C0 F8 90 */	fmr f6, f31
/* 802C5B78  38 60 00 00 */	li r3, 0
/* 802C5B7C  4B FE 3B 79 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C5B80  FF E0 08 90 */	fmr f31, f1
/* 802C5B84  EF 7B 07 F2 */	fmuls f27, f27, f31
lbl_802C5B88:
/* 802C5B88  80 1D 00 00 */	lwz r0, 0(r29)
/* 802C5B8C  90 01 00 08 */	stw r0, 8(r1)
/* 802C5B90  80 6D 85 F4 */	lwz r3, data_80450B74(r13)
/* 802C5B94  38 81 00 08 */	addi r4, r1, 8
/* 802C5B98  38 BE 00 04 */	addi r5, r30, 4
/* 802C5B9C  80 DE 00 00 */	lwz r6, 0(r30)
/* 802C5BA0  4B FD D4 4D */	bl func_802A2FEC
/* 802C5BA4  7C 7D 1B 78 */	mr r29, r3
/* 802C5BA8  80 9E 00 04 */	lwz r4, 4(r30)
/* 802C5BAC  28 04 00 00 */	cmplwi r4, 0
/* 802C5BB0  41 82 00 A0 */	beq lbl_802C5C50
/* 802C5BB4  C0 02 C3 44 */	lfs f0, lit_3502(r2)
/* 802C5BB8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 802C5BBC  40 80 00 1C */	bge lbl_802C5BD8
/* 802C5BC0  80 6D 85 E0 */	lwz r3, data_80450B60(r13)
/* 802C5BC4  3C A0 80 3A */	lis r5, CUTOFF_TO_IIR_TABLE__7JASCalc@ha /* 0x8039ABB8@ha */
/* 802C5BC8  38 A5 AB B8 */	addi r5, r5, CUTOFF_TO_IIR_TABLE__7JASCalc@l /* 0x8039ABB8@l */
/* 802C5BCC  38 A5 02 00 */	addi r5, r5, 0x200
/* 802C5BD0  4B FE 46 A1 */	bl setIIR__10Z2SoundMgrFP8JAISoundPCs
/* 802C5BD4  48 00 00 18 */	b lbl_802C5BEC
lbl_802C5BD8:
/* 802C5BD8  80 6D 85 E0 */	lwz r3, data_80450B60(r13)
/* 802C5BDC  3C A0 80 3A */	lis r5, CUTOFF_TO_IIR_TABLE__7JASCalc@ha /* 0x8039ABB8@ha */
/* 802C5BE0  38 A5 AB B8 */	addi r5, r5, CUTOFF_TO_IIR_TABLE__7JASCalc@l /* 0x8039ABB8@l */
/* 802C5BE4  38 A5 03 F8 */	addi r5, r5, 0x3f8
/* 802C5BE8  4B FE 46 89 */	bl setIIR__10Z2SoundMgrFP8JAISoundPCs
lbl_802C5BEC:
/* 802C5BEC  80 7E 00 04 */	lwz r3, 4(r30)
/* 802C5BF0  38 63 00 48 */	addi r3, r3, 0x48
/* 802C5BF4  FC 20 D8 90 */	fmr f1, f27
/* 802C5BF8  7F E4 FB 78 */	mr r4, r31
/* 802C5BFC  4B FD D1 B9 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802C5C00  80 7E 00 04 */	lwz r3, 4(r30)
/* 802C5C04  38 63 00 48 */	addi r3, r3, 0x48
/* 802C5C08  FC 20 E0 90 */	fmr f1, f28
/* 802C5C0C  7F E4 FB 78 */	mr r4, r31
/* 802C5C10  4B FD D2 AD */	bl movePan__18JAISoundParamsMoveFfUl
/* 802C5C14  80 7E 00 04 */	lwz r3, 4(r30)
/* 802C5C18  38 63 00 48 */	addi r3, r3, 0x48
/* 802C5C1C  FC 20 E8 90 */	fmr f1, f29
/* 802C5C20  7F E4 FB 78 */	mr r4, r31
/* 802C5C24  4B FD D2 F1 */	bl moveDolby__18JAISoundParamsMoveFfUl
/* 802C5C28  80 7E 00 04 */	lwz r3, 4(r30)
/* 802C5C2C  38 63 00 48 */	addi r3, r3, 0x48
/* 802C5C30  FC 20 D0 90 */	fmr f1, f26
/* 802C5C34  7F E4 FB 78 */	mr r4, r31
/* 802C5C38  4B FD D2 2D */	bl moveFxMix__18JAISoundParamsMoveFfUl
/* 802C5C3C  80 7E 00 04 */	lwz r3, 4(r30)
/* 802C5C40  38 63 00 48 */	addi r3, r3, 0x48
/* 802C5C44  FC 20 F0 90 */	fmr f1, f30
/* 802C5C48  7F E4 FB 78 */	mr r4, r31
/* 802C5C4C  4B FD D1 C1 */	bl movePitch__18JAISoundParamsMoveFfUl
lbl_802C5C50:
/* 802C5C50  7F A3 EB 78 */	mr r3, r29
/* 802C5C54  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 802C5C58  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 802C5C5C  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 802C5C60  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 802C5C64  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 802C5C68  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 802C5C6C  E3 81 00 58 */	psq_l f28, 88(r1), 0, 0 /* qr0 */
/* 802C5C70  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 802C5C74  E3 61 00 48 */	psq_l f27, 72(r1), 0, 0 /* qr0 */
/* 802C5C78  CB 61 00 40 */	lfd f27, 0x40(r1)
/* 802C5C7C  E3 41 00 38 */	psq_l f26, 56(r1), 0, 0 /* qr0 */
/* 802C5C80  CB 41 00 30 */	lfd f26, 0x30(r1)
/* 802C5C84  39 61 00 30 */	addi r11, r1, 0x30
/* 802C5C88  48 09 C5 A1 */	bl _restgpr_29
/* 802C5C8C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 802C5C90  7C 08 03 A6 */	mtlr r0
/* 802C5C94  38 21 00 90 */	addi r1, r1, 0x90
/* 802C5C98  4E 80 00 20 */	blr 
