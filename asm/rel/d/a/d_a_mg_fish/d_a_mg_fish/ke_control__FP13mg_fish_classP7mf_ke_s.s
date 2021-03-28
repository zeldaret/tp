lbl_80533268:
/* 80533268  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8053326C  7C 08 02 A6 */	mflr r0
/* 80533270  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80533274  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80533278  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 8053327C  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 80533280  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 80533284  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 80533288  F3 A1 00 88 */	psq_st f29, 136(r1), 0, 0 /* qr0 */
/* 8053328C  DB 81 00 70 */	stfd f28, 0x70(r1)
/* 80533290  F3 81 00 78 */	psq_st f28, 120(r1), 0, 0 /* qr0 */
/* 80533294  DB 61 00 60 */	stfd f27, 0x60(r1)
/* 80533298  F3 61 00 68 */	psq_st f27, 104(r1), 0, 0 /* qr0 */
/* 8053329C  DB 41 00 50 */	stfd f26, 0x50(r1)
/* 805332A0  F3 41 00 58 */	psq_st f26, 88(r1), 0, 0 /* qr0 */
/* 805332A4  39 61 00 50 */	addi r11, r1, 0x50
/* 805332A8  4B E2 EF 28 */	b _savegpr_26
/* 805332AC  7C 7C 1B 78 */	mr r28, r3
/* 805332B0  7C 9A 23 78 */	mr r26, r4
/* 805332B4  3C 60 80 53 */	lis r3, lit_3679@ha
/* 805332B8  3B E3 61 68 */	addi r31, r3, lit_3679@l
/* 805332BC  3B 7A 00 0C */	addi r27, r26, 0xc
/* 805332C0  C3 DF 00 00 */	lfs f30, 0(r31)
/* 805332C4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805332C8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805332CC  80 63 00 00 */	lwz r3, 0(r3)
/* 805332D0  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 805332D4  4B AD 91 08 */	b mDoMtx_YrotS__FPA4_fs
/* 805332D8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805332DC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805332E0  80 63 00 00 */	lwz r3, 0(r3)
/* 805332E4  A8 9C 04 E4 */	lha r4, 0x4e4(r28)
/* 805332E8  4B AD 90 B4 */	b mDoMtx_XrotM__FPA4_fs
/* 805332EC  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 805332F0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805332F4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805332F8  C0 1F 02 14 */	lfs f0, 0x214(r31)
/* 805332FC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80533300  38 61 00 20 */	addi r3, r1, 0x20
/* 80533304  38 81 00 08 */	addi r4, r1, 8
/* 80533308  4B D3 DB E4 */	b MtxPosition__FP4cXyzP4cXyz
/* 8053330C  C3 FF 00 18 */	lfs f31, 0x18(r31)
/* 80533310  D3 E1 00 20 */	stfs f31, 0x20(r1)
/* 80533314  D3 E1 00 24 */	stfs f31, 0x24(r1)
/* 80533318  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8053331C  C0 1C 05 BC */	lfs f0, 0x5bc(r28)
/* 80533320  EC 01 00 32 */	fmuls f0, f1, f0
/* 80533324  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80533328  3B C0 00 01 */	li r30, 1
/* 8053332C  C3 BF 00 1C */	lfs f29, 0x1c(r31)
/* 80533330  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80533334  3B E3 07 68 */	addi r31, r3, calc_mtx@l
lbl_80533338:
/* 80533338  C0 41 00 08 */	lfs f2, 8(r1)
/* 8053333C  C0 3B 00 00 */	lfs f1, 0(r27)
/* 80533340  C0 1B FF F4 */	lfs f0, -0xc(r27)
/* 80533344  EC 21 00 28 */	fsubs f1, f1, f0
/* 80533348  C0 1A 00 3C */	lfs f0, 0x3c(r26)
/* 8053334C  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80533350  EC 01 00 2A */	fadds f0, f1, f0
/* 80533354  EF 82 00 2A */	fadds f28, f2, f0
/* 80533358  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 8053335C  C0 3B 00 04 */	lfs f1, 4(r27)
/* 80533360  C0 1B FF F8 */	lfs f0, -8(r27)
/* 80533364  EC 21 00 28 */	fsubs f1, f1, f0
/* 80533368  C0 1A 00 40 */	lfs f0, 0x40(r26)
/* 8053336C  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80533370  EC 01 00 2A */	fadds f0, f1, f0
/* 80533374  EF 62 00 2A */	fadds f27, f2, f0
/* 80533378  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8053337C  C0 3B 00 08 */	lfs f1, 8(r27)
/* 80533380  C0 1B FF FC */	lfs f0, -4(r27)
/* 80533384  EC 21 00 28 */	fsubs f1, f1, f0
/* 80533388  C0 1A 00 44 */	lfs f0, 0x44(r26)
/* 8053338C  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80533390  EC 01 00 2A */	fadds f0, f1, f0
/* 80533394  EF 42 00 2A */	fadds f26, f2, f0
/* 80533398  EF DE 07 72 */	fmuls f30, f30, f29
/* 8053339C  FC 20 E0 90 */	fmr f1, f28
/* 805333A0  FC 40 D0 90 */	fmr f2, f26
/* 805333A4  4B D3 42 D0 */	b cM_atan2s__Fff
/* 805333A8  7C 7C 07 34 */	extsh r28, r3
/* 805333AC  EC 3C 07 32 */	fmuls f1, f28, f28
/* 805333B0  EC 1A 06 B2 */	fmuls f0, f26, f26
/* 805333B4  EC 41 00 2A */	fadds f2, f1, f0
/* 805333B8  FC 02 F8 40 */	fcmpo cr0, f2, f31
/* 805333BC  40 81 00 0C */	ble lbl_805333C8
/* 805333C0  FC 00 10 34 */	frsqrte f0, f2
/* 805333C4  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_805333C8:
/* 805333C8  FC 20 D8 90 */	fmr f1, f27
/* 805333CC  4B D3 42 A8 */	b cM_atan2s__Fff
/* 805333D0  7C 03 00 D0 */	neg r0, r3
/* 805333D4  7C 1D 07 34 */	extsh r29, r0
/* 805333D8  80 7F 00 00 */	lwz r3, 0(r31)
/* 805333DC  7F 84 E3 78 */	mr r4, r28
/* 805333E0  4B AD 8F FC */	b mDoMtx_YrotS__FPA4_fs
/* 805333E4  80 7F 00 00 */	lwz r3, 0(r31)
/* 805333E8  7F A4 EB 78 */	mr r4, r29
/* 805333EC  4B AD 8F B0 */	b mDoMtx_XrotM__FPA4_fs
/* 805333F0  38 61 00 20 */	addi r3, r1, 0x20
/* 805333F4  38 81 00 14 */	addi r4, r1, 0x14
/* 805333F8  4B D3 DA F4 */	b MtxPosition__FP4cXyzP4cXyz
/* 805333FC  C0 3B FF F4 */	lfs f1, -0xc(r27)
/* 80533400  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80533404  EC 01 00 2A */	fadds f0, f1, f0
/* 80533408  D0 1B 00 00 */	stfs f0, 0(r27)
/* 8053340C  C0 3B FF F8 */	lfs f1, -8(r27)
/* 80533410  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80533414  EC 01 00 2A */	fadds f0, f1, f0
/* 80533418  D0 1B 00 04 */	stfs f0, 4(r27)
/* 8053341C  C0 3B FF FC */	lfs f1, -4(r27)
/* 80533420  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80533424  EC 01 00 2A */	fadds f0, f1, f0
/* 80533428  D0 1B 00 08 */	stfs f0, 8(r27)
/* 8053342C  3B DE 00 01 */	addi r30, r30, 1
/* 80533430  2C 1E 00 05 */	cmpwi r30, 5
/* 80533434  3B 7B 00 0C */	addi r27, r27, 0xc
/* 80533438  41 80 FF 00 */	blt lbl_80533338
/* 8053343C  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 80533440  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 80533444  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 80533448  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 8053344C  E3 A1 00 88 */	psq_l f29, 136(r1), 0, 0 /* qr0 */
/* 80533450  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 80533454  E3 81 00 78 */	psq_l f28, 120(r1), 0, 0 /* qr0 */
/* 80533458  CB 81 00 70 */	lfd f28, 0x70(r1)
/* 8053345C  E3 61 00 68 */	psq_l f27, 104(r1), 0, 0 /* qr0 */
/* 80533460  CB 61 00 60 */	lfd f27, 0x60(r1)
/* 80533464  E3 41 00 58 */	psq_l f26, 88(r1), 0, 0 /* qr0 */
/* 80533468  CB 41 00 50 */	lfd f26, 0x50(r1)
/* 8053346C  39 61 00 50 */	addi r11, r1, 0x50
/* 80533470  4B E2 ED AC */	b _restgpr_26
/* 80533474  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80533478  7C 08 03 A6 */	mtlr r0
/* 8053347C  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80533480  4E 80 00 20 */	blr 
