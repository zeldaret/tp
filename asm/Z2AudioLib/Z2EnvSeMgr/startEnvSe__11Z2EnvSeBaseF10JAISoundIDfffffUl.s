lbl_802C5908:
/* 802C5908  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 802C590C  7C 08 02 A6 */	mflr r0
/* 802C5910  90 01 00 94 */	stw r0, 0x94(r1)
/* 802C5914  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 802C5918  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 802C591C  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 802C5920  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 802C5924  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 802C5928  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 802C592C  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 802C5930  F3 81 00 58 */	psq_st f28, 88(r1), 0, 0 /* qr0 */
/* 802C5934  DB 61 00 40 */	stfd f27, 0x40(r1)
/* 802C5938  F3 61 00 48 */	psq_st f27, 72(r1), 0, 0 /* qr0 */
/* 802C593C  DB 41 00 30 */	stfd f26, 0x30(r1)
/* 802C5940  F3 41 00 38 */	psq_st f26, 56(r1), 0, 0 /* qr0 */
/* 802C5944  39 61 00 30 */	addi r11, r1, 0x30
/* 802C5948  48 09 C8 95 */	bl _savegpr_29
/* 802C594C  7C 7D 1B 78 */	mr r29, r3
/* 802C5950  7C 9E 23 78 */	mr r30, r4
/* 802C5954  FF 40 08 90 */	fmr f26, f1
/* 802C5958  FF 60 10 90 */	fmr f27, f2
/* 802C595C  FF 80 18 90 */	fmr f28, f3
/* 802C5960  FF A0 20 90 */	fmr f29, f4
/* 802C5964  FF C0 28 90 */	fmr f30, f5
/* 802C5968  7C BF 2B 78 */	mr r31, r5
/* 802C596C  80 6D 85 FC */	lwz r3, __OSReport_disable-0x1C(r13)
/* 802C5970  88 03 00 0C */	lbz r0, 0xc(r3)
/* 802C5974  28 00 00 00 */	cmplwi r0, 0
/* 802C5978  41 82 00 0C */	beq lbl_802C5984
/* 802C597C  C0 02 C3 40 */	lfs f0, lit_3501(r2)
/* 802C5980  EF 7B 00 32 */	fmuls f27, f27, f0
lbl_802C5984:
/* 802C5984  C3 E2 C3 44 */	lfs f31, lit_3502(r2)
/* 802C5988  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 802C598C  C0 62 C3 48 */	lfs f3, lit_3503(r2)
/* 802C5990  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 802C5994  7C 00 00 26 */	mfcr r0
/* 802C5998  54 00 17 FE */	rlwinm r0, r0, 2, 0x1f, 0x1f
/* 802C599C  C8 22 C3 58 */	lfd f1, lit_3508(r2)
/* 802C59A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C59A4  3C 00 43 30 */	lis r0, 0x4330
/* 802C59A8  90 01 00 10 */	stw r0, 0x10(r1)
/* 802C59AC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802C59B0  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C59B4  FC 01 18 00 */	fcmpu cr0, f1, f3
/* 802C59B8  41 82 00 24 */	beq lbl_802C59DC
/* 802C59BC  C0 42 C3 4C */	lfs f2, lit_3504(r2)
/* 802C59C0  C0 82 C3 50 */	lfs f4, lit_3505(r2)
/* 802C59C4  FC A0 18 90 */	fmr f5, f3
/* 802C59C8  FC C0 F8 90 */	fmr f6, f31
/* 802C59CC  38 60 00 00 */	li r3, 0
/* 802C59D0  4B FE 3D 25 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C59D4  FF E0 08 90 */	fmr f31, f1
/* 802C59D8  EF 7B 07 F2 */	fmuls f27, f27, f31
lbl_802C59DC:
/* 802C59DC  80 1E 00 00 */	lwz r0, 0(r30)
/* 802C59E0  90 01 00 08 */	stw r0, 8(r1)
/* 802C59E4  80 6D 85 F4 */	lwz r3, __OSReport_disable-0x24(r13)
/* 802C59E8  38 81 00 08 */	addi r4, r1, 8
/* 802C59EC  38 BD 00 04 */	addi r5, r29, 4
/* 802C59F0  80 DD 00 00 */	lwz r6, 0(r29)
/* 802C59F4  38 E0 00 00 */	li r7, 0
/* 802C59F8  FC 20 D0 90 */	fmr f1, f26
/* 802C59FC  FC 40 F0 90 */	fmr f2, f30
/* 802C5A00  FC 60 D8 90 */	fmr f3, f27
/* 802C5A04  FC 80 E0 90 */	fmr f4, f28
/* 802C5A08  FC A0 E8 90 */	fmr f5, f29
/* 802C5A0C  7F E8 FB 78 */	mr r8, r31
/* 802C5A10  81 83 00 00 */	lwz r12, 0(r3)
/* 802C5A14  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802C5A18  7D 89 03 A6 */	mtctr r12
/* 802C5A1C  4E 80 04 21 */	bctrl 
/* 802C5A20  7C 7F 1B 78 */	mr r31, r3
/* 802C5A24  80 9D 00 04 */	lwz r4, 4(r29)
/* 802C5A28  28 04 00 00 */	cmplwi r4, 0
/* 802C5A2C  41 82 00 3C */	beq lbl_802C5A68
/* 802C5A30  C0 02 C3 44 */	lfs f0, lit_3502(r2)
/* 802C5A34  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 802C5A38  40 80 00 1C */	bge lbl_802C5A54
/* 802C5A3C  80 6D 85 E0 */	lwz r3, __OSReport_disable-0x38(r13)
/* 802C5A40  3C A0 80 3A */	lis r5, CUTOFF_TO_IIR_TABLE__7JASCalc@ha /* 0x8039ABB8@ha */
/* 802C5A44  38 A5 AB B8 */	addi r5, r5, CUTOFF_TO_IIR_TABLE__7JASCalc@l /* 0x8039ABB8@l */
/* 802C5A48  38 A5 02 00 */	addi r5, r5, 0x200
/* 802C5A4C  4B FE 48 25 */	bl setIIR__10Z2SoundMgrFP8JAISoundPCs
/* 802C5A50  48 00 00 18 */	b lbl_802C5A68
lbl_802C5A54:
/* 802C5A54  80 6D 85 E0 */	lwz r3, __OSReport_disable-0x38(r13)
/* 802C5A58  3C A0 80 3A */	lis r5, CUTOFF_TO_IIR_TABLE__7JASCalc@ha /* 0x8039ABB8@ha */
/* 802C5A5C  38 A5 AB B8 */	addi r5, r5, CUTOFF_TO_IIR_TABLE__7JASCalc@l /* 0x8039ABB8@l */
/* 802C5A60  38 A5 03 F8 */	addi r5, r5, 0x3f8
/* 802C5A64  4B FE 48 0D */	bl setIIR__10Z2SoundMgrFP8JAISoundPCs
lbl_802C5A68:
/* 802C5A68  7F E3 FB 78 */	mr r3, r31
/* 802C5A6C  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 802C5A70  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 802C5A74  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 802C5A78  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 802C5A7C  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 802C5A80  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 802C5A84  E3 81 00 58 */	psq_l f28, 88(r1), 0, 0 /* qr0 */
/* 802C5A88  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 802C5A8C  E3 61 00 48 */	psq_l f27, 72(r1), 0, 0 /* qr0 */
/* 802C5A90  CB 61 00 40 */	lfd f27, 0x40(r1)
/* 802C5A94  E3 41 00 38 */	psq_l f26, 56(r1), 0, 0 /* qr0 */
/* 802C5A98  CB 41 00 30 */	lfd f26, 0x30(r1)
/* 802C5A9C  39 61 00 30 */	addi r11, r1, 0x30
/* 802C5AA0  48 09 C7 89 */	bl _restgpr_29
/* 802C5AA4  80 01 00 94 */	lwz r0, 0x94(r1)
/* 802C5AA8  7C 08 03 A6 */	mtlr r0
/* 802C5AAC  38 21 00 90 */	addi r1, r1, 0x90
/* 802C5AB0  4E 80 00 20 */	blr 
