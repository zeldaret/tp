lbl_807B5980:
/* 807B5980  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 807B5984  7C 08 02 A6 */	mflr r0
/* 807B5988  90 01 00 84 */	stw r0, 0x84(r1)
/* 807B598C  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 807B5990  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 807B5994  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 807B5998  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 807B599C  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 807B59A0  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 807B59A4  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 807B59A8  F3 81 00 48 */	psq_st f28, 72(r1), 0, 0 /* qr0 */
/* 807B59AC  39 61 00 40 */	addi r11, r1, 0x40
/* 807B59B0  4B BA C8 1C */	b _savegpr_25
/* 807B59B4  7C 7D 1B 78 */	mr r29, r3
/* 807B59B8  3C 60 80 7C */	lis r3, master@ha
/* 807B59BC  38 63 80 E0 */	addi r3, r3, master@l
/* 807B59C0  80 63 00 00 */	lwz r3, 0(r3)
/* 807B59C4  C0 03 06 A8 */	lfs f0, 0x6a8(r3)
/* 807B59C8  D0 1D 0F 20 */	stfs f0, 0xf20(r29)
/* 807B59CC  C0 03 06 AC */	lfs f0, 0x6ac(r3)
/* 807B59D0  D0 1D 0F 24 */	stfs f0, 0xf24(r29)
/* 807B59D4  C0 03 06 B0 */	lfs f0, 0x6b0(r3)
/* 807B59D8  D0 1D 0F 28 */	stfs f0, 0xf28(r29)
/* 807B59DC  3B FD 0F 14 */	addi r31, r29, 0xf14
/* 807B59E0  3B DD 11 78 */	addi r30, r29, 0x1178
/* 807B59E4  3C 60 80 7B */	lis r3, lit_3747@ha
/* 807B59E8  C3 E3 7E BC */	lfs f31, lit_3747@l(r3)
/* 807B59EC  D3 E1 00 14 */	stfs f31, 0x14(r1)
/* 807B59F0  D3 E1 00 18 */	stfs f31, 0x18(r1)
/* 807B59F4  3C 60 80 7B */	lis r3, lit_3849@ha
/* 807B59F8  C0 03 7E D0 */	lfs f0, lit_3849@l(r3)
/* 807B59FC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807B5A00  3B 60 00 12 */	li r27, 0x12
/* 807B5A04  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807B5A08  3B 83 07 68 */	addi r28, r3, calc_mtx@l
lbl_807B5A0C:
/* 807B5A0C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 807B5A10  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 807B5A14  EF C1 00 28 */	fsubs f30, f1, f0
/* 807B5A18  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807B5A1C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 807B5A20  EF A1 00 28 */	fsubs f29, f1, f0
/* 807B5A24  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807B5A28  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 807B5A2C  EF 81 00 28 */	fsubs f28, f1, f0
/* 807B5A30  FC 20 F0 90 */	fmr f1, f30
/* 807B5A34  FC 40 E0 90 */	fmr f2, f28
/* 807B5A38  4B AB 1C 3C */	b cM_atan2s__Fff
/* 807B5A3C  7C 79 07 34 */	extsh r25, r3
/* 807B5A40  EC 3E 07 B2 */	fmuls f1, f30, f30
/* 807B5A44  EC 1C 07 32 */	fmuls f0, f28, f28
/* 807B5A48  EC 41 00 2A */	fadds f2, f1, f0
/* 807B5A4C  FC 02 F8 40 */	fcmpo cr0, f2, f31
/* 807B5A50  40 81 00 0C */	ble lbl_807B5A5C
/* 807B5A54  FC 00 10 34 */	frsqrte f0, f2
/* 807B5A58  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_807B5A5C:
/* 807B5A5C  FC 20 E8 90 */	fmr f1, f29
/* 807B5A60  4B AB 1C 14 */	b cM_atan2s__Fff
/* 807B5A64  7C 03 00 D0 */	neg r0, r3
/* 807B5A68  7C 1A 07 34 */	extsh r26, r0
/* 807B5A6C  80 7C 00 00 */	lwz r3, 0(r28)
/* 807B5A70  7F 24 CB 78 */	mr r4, r25
/* 807B5A74  4B 85 69 68 */	b mDoMtx_YrotS__FPA4_fs
/* 807B5A78  80 7C 00 00 */	lwz r3, 0(r28)
/* 807B5A7C  7F 44 D3 78 */	mr r4, r26
/* 807B5A80  4B 85 69 1C */	b mDoMtx_XrotM__FPA4_fs
/* 807B5A84  80 7D 0D E8 */	lwz r3, 0xde8(r29)
/* 807B5A88  38 1B 00 01 */	addi r0, r27, 1
/* 807B5A8C  7C 03 00 00 */	cmpw r3, r0
/* 807B5A90  40 82 00 10 */	bne lbl_807B5AA0
/* 807B5A94  3C 60 80 7B */	lis r3, lit_3747@ha
/* 807B5A98  C0 03 7E BC */	lfs f0, lit_3747@l(r3)
/* 807B5A9C  D0 01 00 1C */	stfs f0, 0x1c(r1)
lbl_807B5AA0:
/* 807B5AA0  38 61 00 14 */	addi r3, r1, 0x14
/* 807B5AA4  38 81 00 08 */	addi r4, r1, 8
/* 807B5AA8  4B AB B4 44 */	b MtxPosition__FP4cXyzP4cXyz
/* 807B5AAC  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 807B5AB0  C0 01 00 08 */	lfs f0, 8(r1)
/* 807B5AB4  EC 01 00 2A */	fadds f0, f1, f0
/* 807B5AB8  D0 1F 00 00 */	stfs f0, 0(r31)
/* 807B5ABC  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 807B5AC0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 807B5AC4  EC 01 00 2A */	fadds f0, f1, f0
/* 807B5AC8  D0 1F 00 04 */	stfs f0, 4(r31)
/* 807B5ACC  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 807B5AD0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 807B5AD4  EC 01 00 2A */	fadds f0, f1, f0
/* 807B5AD8  D0 1F 00 08 */	stfs f0, 8(r31)
/* 807B5ADC  7C 1A 00 D0 */	neg r0, r26
/* 807B5AE0  B0 1E 00 00 */	sth r0, 0(r30)
/* 807B5AE4  3C 79 00 01 */	addis r3, r25, 1
/* 807B5AE8  38 03 80 00 */	addi r0, r3, -32768
/* 807B5AEC  B0 1E 00 02 */	sth r0, 2(r30)
/* 807B5AF0  37 7B FF FF */	addic. r27, r27, -1
/* 807B5AF4  3B FF FF F4 */	addi r31, r31, -12
/* 807B5AF8  3B DE FF FA */	addi r30, r30, -6
/* 807B5AFC  40 80 FF 10 */	bge lbl_807B5A0C
/* 807B5B00  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 807B5B04  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 807B5B08  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 807B5B0C  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 807B5B10  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 807B5B14  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 807B5B18  E3 81 00 48 */	psq_l f28, 72(r1), 0, 0 /* qr0 */
/* 807B5B1C  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 807B5B20  39 61 00 40 */	addi r11, r1, 0x40
/* 807B5B24  4B BA C6 F4 */	b _restgpr_25
/* 807B5B28  80 01 00 84 */	lwz r0, 0x84(r1)
/* 807B5B2C  7C 08 03 A6 */	mtlr r0
/* 807B5B30  38 21 00 80 */	addi r1, r1, 0x80
/* 807B5B34  4E 80 00 20 */	blr 
