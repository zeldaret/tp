lbl_808051D0:
/* 808051D0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 808051D4  7C 08 02 A6 */	mflr r0
/* 808051D8  90 01 00 74 */	stw r0, 0x74(r1)
/* 808051DC  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 808051E0  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 808051E4  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 808051E8  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 808051EC  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 808051F0  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 808051F4  39 61 00 40 */	addi r11, r1, 0x40
/* 808051F8  4B B5 CF E0 */	b _savegpr_28
/* 808051FC  7C 7C 1B 78 */	mr r28, r3
/* 80805200  3C 60 80 80 */	lis r3, lit_3941@ha
/* 80805204  3B E3 7C 9C */	addi r31, r3, lit_3941@l
/* 80805208  C0 3C 06 74 */	lfs f1, 0x674(r28)
/* 8080520C  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80805210  EF E1 00 28 */	fsubs f31, f1, f0
/* 80805214  C0 3C 06 78 */	lfs f1, 0x678(r28)
/* 80805218  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8080521C  EF C1 00 28 */	fsubs f30, f1, f0
/* 80805220  C0 3C 06 7C */	lfs f1, 0x67c(r28)
/* 80805224  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80805228  EF A1 00 28 */	fsubs f29, f1, f0
/* 8080522C  FC 20 F8 90 */	fmr f1, f31
/* 80805230  FC 40 E8 90 */	fmr f2, f29
/* 80805234  4B A6 24 40 */	b cM_atan2s__Fff
/* 80805238  7C 7E 1B 78 */	mr r30, r3
/* 8080523C  EC 3F 07 F2 */	fmuls f1, f31, f31
/* 80805240  EC 1D 07 72 */	fmuls f0, f29, f29
/* 80805244  EC 41 00 2A */	fadds f2, f1, f0
/* 80805248  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8080524C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80805250  40 81 00 0C */	ble lbl_8080525C
/* 80805254  FC 00 10 34 */	frsqrte f0, f2
/* 80805258  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8080525C:
/* 8080525C  FC 20 F0 90 */	fmr f1, f30
/* 80805260  4B A6 24 14 */	b cM_atan2s__Fff
/* 80805264  7C 03 00 D0 */	neg r0, r3
/* 80805268  7C 1D 07 34 */	extsh r29, r0
/* 8080526C  38 7C 04 DE */	addi r3, r28, 0x4de
/* 80805270  7F C4 F3 78 */	mr r4, r30
/* 80805274  38 A0 00 0A */	li r5, 0xa
/* 80805278  C0 3C 06 90 */	lfs f1, 0x690(r28)
/* 8080527C  C0 1C 06 8C */	lfs f0, 0x68c(r28)
/* 80805280  EC 01 00 32 */	fmuls f0, f1, f0
/* 80805284  FC 00 00 1E */	fctiwz f0, f0
/* 80805288  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8080528C  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 80805290  4B A6 B3 78 */	b cLib_addCalcAngleS2__FPssss
/* 80805294  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80805298  D0 1C 06 90 */	stfs f0, 0x690(r28)
/* 8080529C  38 7C 04 DC */	addi r3, r28, 0x4dc
/* 808052A0  7F A4 EB 78 */	mr r4, r29
/* 808052A4  38 A0 00 0A */	li r5, 0xa
/* 808052A8  C0 3C 06 90 */	lfs f1, 0x690(r28)
/* 808052AC  C0 1C 06 8C */	lfs f0, 0x68c(r28)
/* 808052B0  EC 01 00 32 */	fmuls f0, f1, f0
/* 808052B4  FC 00 00 1E */	fctiwz f0, f0
/* 808052B8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 808052BC  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 808052C0  4B A6 B3 48 */	b cLib_addCalcAngleS2__FPssss
/* 808052C4  38 7C 06 8C */	addi r3, r28, 0x68c
/* 808052C8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 808052CC  FC 40 08 90 */	fmr f2, f1
/* 808052D0  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 808052D4  4B A6 A7 68 */	b cLib_addCalc2__FPffff
/* 808052D8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 808052DC  D0 01 00 08 */	stfs f0, 8(r1)
/* 808052E0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 808052E4  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 808052E8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 808052EC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 808052F0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 808052F4  80 63 00 00 */	lwz r3, 0(r3)
/* 808052F8  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 808052FC  4B 80 70 E0 */	b mDoMtx_YrotS__FPA4_fs
/* 80805300  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80805304  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80805308  80 63 00 00 */	lwz r3, 0(r3)
/* 8080530C  A8 9C 04 DC */	lha r4, 0x4dc(r28)
/* 80805310  4B 80 70 8C */	b mDoMtx_XrotM__FPA4_fs
/* 80805314  38 61 00 08 */	addi r3, r1, 8
/* 80805318  38 9C 04 F8 */	addi r4, r28, 0x4f8
/* 8080531C  4B A6 BB D0 */	b MtxPosition__FP4cXyzP4cXyz
/* 80805320  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80805324  38 9C 04 F8 */	addi r4, r28, 0x4f8
/* 80805328  7C 65 1B 78 */	mr r5, r3
/* 8080532C  4B B4 1D 64 */	b PSVECAdd
/* 80805330  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80805334  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80805338  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 8080533C  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80805340  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 80805344  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 80805348  39 61 00 40 */	addi r11, r1, 0x40
/* 8080534C  4B B5 CE D8 */	b _restgpr_28
/* 80805350  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80805354  7C 08 03 A6 */	mtlr r0
/* 80805358  38 21 00 70 */	addi r1, r1, 0x70
/* 8080535C  4E 80 00 20 */	blr 
