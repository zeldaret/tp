lbl_804FB1B0:
/* 804FB1B0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804FB1B4  7C 08 02 A6 */	mflr r0
/* 804FB1B8  90 01 00 64 */	stw r0, 0x64(r1)
/* 804FB1BC  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 804FB1C0  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 804FB1C4  39 61 00 50 */	addi r11, r1, 0x50
/* 804FB1C8  4B E6 70 14 */	b _savegpr_29
/* 804FB1CC  7C 7D 1B 78 */	mr r29, r3
/* 804FB1D0  7C 9F 23 78 */	mr r31, r4
/* 804FB1D4  3C 60 80 50 */	lis r3, lit_3646@ha
/* 804FB1D8  3B C3 BB 90 */	addi r30, r3, lit_3646@l
/* 804FB1DC  C0 5E 00 04 */	lfs f2, 4(r30)
/* 804FB1E0  88 1D 05 72 */	lbz r0, 0x572(r29)
/* 804FB1E4  C8 3E 00 18 */	lfd f1, 0x18(r30)
/* 804FB1E8  90 01 00 34 */	stw r0, 0x34(r1)
/* 804FB1EC  3C 00 43 30 */	lis r0, 0x4330
/* 804FB1F0  90 01 00 30 */	stw r0, 0x30(r1)
/* 804FB1F4  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804FB1F8  EC 00 08 28 */	fsubs f0, f0, f1
/* 804FB1FC  EF E2 00 32 */	fmuls f31, f2, f0
/* 804FB200  88 04 00 46 */	lbz r0, 0x46(r4)
/* 804FB204  28 00 00 00 */	cmplwi r0, 0
/* 804FB208  40 82 00 C0 */	bne lbl_804FB2C8
/* 804FB20C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 804FB210  4B D6 C7 44 */	b cM_rndF__Ff
/* 804FB214  FC 00 08 1E */	fctiwz f0, f1
/* 804FB218  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 804FB21C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804FB220  98 1F 00 46 */	stb r0, 0x46(r31)
/* 804FB224  FC 20 F8 90 */	fmr f1, f31
/* 804FB228  4B D6 C7 64 */	b cM_rndFX__Ff
/* 804FB22C  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 804FB230  EC 00 08 2A */	fadds f0, f0, f1
/* 804FB234  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 804FB238  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 804FB23C  4B D6 C7 18 */	b cM_rndF__Ff
/* 804FB240  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 804FB244  EC 00 08 2A */	fadds f0, f0, f1
/* 804FB248  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 804FB24C  FC 20 F8 90 */	fmr f1, f31
/* 804FB250  4B D6 C7 3C */	b cM_rndFX__Ff
/* 804FB254  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 804FB258  EC 00 08 2A */	fadds f0, f0, f1
/* 804FB25C  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 804FB260  38 61 00 08 */	addi r3, r1, 8
/* 804FB264  38 9F 00 10 */	addi r4, r31, 0x10
/* 804FB268  38 BF 00 04 */	addi r5, r31, 4
/* 804FB26C  4B D6 B8 C8 */	b __mi__4cXyzCFRC3Vec
/* 804FB270  C0 21 00 08 */	lfs f1, 8(r1)
/* 804FB274  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 804FB278  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804FB27C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804FB280  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 804FB284  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 804FB288  4B D6 C3 EC */	b cM_atan2s__Fff
/* 804FB28C  B0 7F 00 30 */	sth r3, 0x30(r31)
/* 804FB290  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 804FB294  EC 20 00 32 */	fmuls f1, f0, f0
/* 804FB298  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 804FB29C  EC 00 00 32 */	fmuls f0, f0, f0
/* 804FB2A0  EC 41 00 2A */	fadds f2, f1, f0
/* 804FB2A4  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 804FB2A8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804FB2AC  40 81 00 0C */	ble lbl_804FB2B8
/* 804FB2B0  FC 00 10 34 */	frsqrte f0, f2
/* 804FB2B4  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_804FB2B8:
/* 804FB2B8  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 804FB2BC  4B D6 C3 B8 */	b cM_atan2s__Fff
/* 804FB2C0  7C 03 00 D0 */	neg r0, r3
/* 804FB2C4  B0 1F 00 2E */	sth r0, 0x2e(r31)
lbl_804FB2C8:
/* 804FB2C8  38 7F 00 2A */	addi r3, r31, 0x2a
/* 804FB2CC  A8 9F 00 30 */	lha r4, 0x30(r31)
/* 804FB2D0  38 A0 00 02 */	li r5, 2
/* 804FB2D4  38 C0 10 00 */	li r6, 0x1000
/* 804FB2D8  4B D7 53 30 */	b cLib_addCalcAngleS2__FPssss
/* 804FB2DC  38 7F 00 28 */	addi r3, r31, 0x28
/* 804FB2E0  A8 9F 00 2E */	lha r4, 0x2e(r31)
/* 804FB2E4  38 A0 00 02 */	li r5, 2
/* 804FB2E8  38 C0 10 00 */	li r6, 0x1000
/* 804FB2EC  4B D7 53 1C */	b cLib_addCalcAngleS2__FPssss
/* 804FB2F0  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 804FB2F4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804FB2F8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804FB2FC  C0 1E 00 08 */	lfs f0, 8(r30)
/* 804FB300  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804FB304  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804FB308  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804FB30C  80 63 00 00 */	lwz r3, 0(r3)
/* 804FB310  A8 9F 00 2A */	lha r4, 0x2a(r31)
/* 804FB314  4B B1 10 C8 */	b mDoMtx_YrotS__FPA4_fs
/* 804FB318  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804FB31C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804FB320  80 63 00 00 */	lwz r3, 0(r3)
/* 804FB324  A8 9F 00 28 */	lha r4, 0x28(r31)
/* 804FB328  4B B1 10 74 */	b mDoMtx_XrotM__FPA4_fs
/* 804FB32C  38 61 00 20 */	addi r3, r1, 0x20
/* 804FB330  38 81 00 14 */	addi r4, r1, 0x14
/* 804FB334  4B D7 5B B8 */	b MtxPosition__FP4cXyzP4cXyz
/* 804FB338  38 7F 00 04 */	addi r3, r31, 4
/* 804FB33C  38 81 00 14 */	addi r4, r1, 0x14
/* 804FB340  7C 65 1B 78 */	mr r5, r3
/* 804FB344  4B E4 BD 4C */	b PSVECAdd
/* 804FB348  C0 1F 00 08 */	lfs f0, 8(r31)
/* 804FB34C  C0 3D 04 AC */	lfs f1, 0x4ac(r29)
/* 804FB350  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804FB354  40 80 00 10 */	bge lbl_804FB364
/* 804FB358  D0 3F 00 08 */	stfs f1, 8(r31)
/* 804FB35C  38 00 00 00 */	li r0, 0
/* 804FB360  98 1F 00 46 */	stb r0, 0x46(r31)
lbl_804FB364:
/* 804FB364  A8 1F 00 44 */	lha r0, 0x44(r31)
/* 804FB368  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804FB36C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 804FB370  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 804FB374  7C 03 04 2E */	lfsx f0, r3, r0
/* 804FB378  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 804FB37C  A8 7F 00 44 */	lha r3, 0x44(r31)
/* 804FB380  38 03 3E 00 */	addi r0, r3, 0x3e00
/* 804FB384  B0 1F 00 44 */	sth r0, 0x44(r31)
/* 804FB388  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 804FB38C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 804FB390  39 61 00 50 */	addi r11, r1, 0x50
/* 804FB394  4B E6 6E 94 */	b _restgpr_29
/* 804FB398  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804FB39C  7C 08 03 A6 */	mtlr r0
/* 804FB3A0  38 21 00 60 */	addi r1, r1, 0x60
/* 804FB3A4  4E 80 00 20 */	blr 
