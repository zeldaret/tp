lbl_8067F544:
/* 8067F544  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8067F548  7C 08 02 A6 */	mflr r0
/* 8067F54C  90 01 00 74 */	stw r0, 0x74(r1)
/* 8067F550  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8067F554  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8067F558  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 8067F55C  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 8067F560  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 8067F564  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 8067F568  39 61 00 40 */	addi r11, r1, 0x40
/* 8067F56C  4B CE 2C 6C */	b _savegpr_28
/* 8067F570  7C 7C 1B 78 */	mr r28, r3
/* 8067F574  3C 60 80 68 */	lis r3, lit_3947@ha
/* 8067F578  3B E3 23 BC */	addi r31, r3, lit_3947@l
/* 8067F57C  C0 3C 06 78 */	lfs f1, 0x678(r28)
/* 8067F580  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8067F584  EF E1 00 28 */	fsubs f31, f1, f0
/* 8067F588  C0 3C 06 7C */	lfs f1, 0x67c(r28)
/* 8067F58C  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8067F590  EF C1 00 28 */	fsubs f30, f1, f0
/* 8067F594  C0 3C 06 80 */	lfs f1, 0x680(r28)
/* 8067F598  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8067F59C  EF A1 00 28 */	fsubs f29, f1, f0
/* 8067F5A0  FC 20 F8 90 */	fmr f1, f31
/* 8067F5A4  FC 40 E8 90 */	fmr f2, f29
/* 8067F5A8  4B BE 80 CC */	b cM_atan2s__Fff
/* 8067F5AC  7C 7E 1B 78 */	mr r30, r3
/* 8067F5B0  EC 3F 07 F2 */	fmuls f1, f31, f31
/* 8067F5B4  EC 1D 07 72 */	fmuls f0, f29, f29
/* 8067F5B8  EC 41 00 2A */	fadds f2, f1, f0
/* 8067F5BC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8067F5C0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8067F5C4  40 81 00 0C */	ble lbl_8067F5D0
/* 8067F5C8  FC 00 10 34 */	frsqrte f0, f2
/* 8067F5CC  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8067F5D0:
/* 8067F5D0  FC 20 F0 90 */	fmr f1, f30
/* 8067F5D4  4B BE 80 A0 */	b cM_atan2s__Fff
/* 8067F5D8  7C 03 00 D0 */	neg r0, r3
/* 8067F5DC  7C 1D 07 34 */	extsh r29, r0
/* 8067F5E0  38 7C 04 DE */	addi r3, r28, 0x4de
/* 8067F5E4  7F C4 F3 78 */	mr r4, r30
/* 8067F5E8  38 A0 00 0A */	li r5, 0xa
/* 8067F5EC  C0 3C 06 94 */	lfs f1, 0x694(r28)
/* 8067F5F0  C0 1C 06 90 */	lfs f0, 0x690(r28)
/* 8067F5F4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8067F5F8  FC 00 00 1E */	fctiwz f0, f0
/* 8067F5FC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8067F600  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 8067F604  4B BF 10 04 */	b cLib_addCalcAngleS2__FPssss
/* 8067F608  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8067F60C  D0 1C 06 94 */	stfs f0, 0x694(r28)
/* 8067F610  38 7C 04 DC */	addi r3, r28, 0x4dc
/* 8067F614  7F A4 EB 78 */	mr r4, r29
/* 8067F618  38 A0 00 0A */	li r5, 0xa
/* 8067F61C  C0 3C 06 94 */	lfs f1, 0x694(r28)
/* 8067F620  C0 1C 06 90 */	lfs f0, 0x690(r28)
/* 8067F624  EC 01 00 32 */	fmuls f0, f1, f0
/* 8067F628  FC 00 00 1E */	fctiwz f0, f0
/* 8067F62C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8067F630  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 8067F634  4B BF 0F D4 */	b cLib_addCalcAngleS2__FPssss
/* 8067F638  38 7C 06 90 */	addi r3, r28, 0x690
/* 8067F63C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8067F640  FC 40 08 90 */	fmr f2, f1
/* 8067F644  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 8067F648  4B BF 03 F4 */	b cLib_addCalc2__FPffff
/* 8067F64C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8067F650  D0 01 00 08 */	stfs f0, 8(r1)
/* 8067F654  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8067F658  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 8067F65C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8067F660  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8067F664  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8067F668  80 63 00 00 */	lwz r3, 0(r3)
/* 8067F66C  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 8067F670  4B 98 CD 6C */	b mDoMtx_YrotS__FPA4_fs
/* 8067F674  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8067F678  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8067F67C  80 63 00 00 */	lwz r3, 0(r3)
/* 8067F680  A8 9C 04 DC */	lha r4, 0x4dc(r28)
/* 8067F684  4B 98 CD 18 */	b mDoMtx_XrotM__FPA4_fs
/* 8067F688  38 61 00 08 */	addi r3, r1, 8
/* 8067F68C  38 9C 04 F8 */	addi r4, r28, 0x4f8
/* 8067F690  4B BF 18 5C */	b MtxPosition__FP4cXyzP4cXyz
/* 8067F694  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 8067F698  38 9C 04 F8 */	addi r4, r28, 0x4f8
/* 8067F69C  7C 65 1B 78 */	mr r5, r3
/* 8067F6A0  4B CC 79 F0 */	b PSVECAdd
/* 8067F6A4  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8067F6A8  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8067F6AC  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 8067F6B0  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 8067F6B4  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 8067F6B8  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 8067F6BC  39 61 00 40 */	addi r11, r1, 0x40
/* 8067F6C0  4B CE 2B 64 */	b _restgpr_28
/* 8067F6C4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8067F6C8  7C 08 03 A6 */	mtlr r0
/* 8067F6CC  38 21 00 70 */	addi r1, r1, 0x70
/* 8067F6D0  4E 80 00 20 */	blr 
