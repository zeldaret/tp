lbl_8077D8A8:
/* 8077D8A8  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 8077D8AC  7C 08 02 A6 */	mflr r0
/* 8077D8B0  90 01 01 14 */	stw r0, 0x114(r1)
/* 8077D8B4  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 8077D8B8  F3 E1 01 08 */	psq_st f31, 264(r1), 0, 0 /* qr0 */
/* 8077D8BC  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 8077D8C0  F3 C1 00 F8 */	psq_st f30, 248(r1), 0, 0 /* qr0 */
/* 8077D8C4  DB A1 00 E0 */	stfd f29, 0xe0(r1)
/* 8077D8C8  F3 A1 00 E8 */	psq_st f29, 232(r1), 0, 0 /* qr0 */
/* 8077D8CC  DB 81 00 D0 */	stfd f28, 0xd0(r1)
/* 8077D8D0  F3 81 00 D8 */	psq_st f28, 216(r1), 0, 0 /* qr0 */
/* 8077D8D4  DB 61 00 C0 */	stfd f27, 0xc0(r1)
/* 8077D8D8  F3 61 00 C8 */	psq_st f27, 200(r1), 0, 0 /* qr0 */
/* 8077D8DC  DB 41 00 B0 */	stfd f26, 0xb0(r1)
/* 8077D8E0  F3 41 00 B8 */	psq_st f26, 184(r1), 0, 0 /* qr0 */
/* 8077D8E4  DB 21 00 A0 */	stfd f25, 0xa0(r1)
/* 8077D8E8  F3 21 00 A8 */	psq_st f25, 168(r1), 0, 0 /* qr0 */
/* 8077D8EC  DB 01 00 90 */	stfd f24, 0x90(r1)
/* 8077D8F0  F3 01 00 98 */	psq_st f24, 152(r1), 0, 0 /* qr0 */
/* 8077D8F4  DA E1 00 80 */	stfd f23, 0x80(r1)
/* 8077D8F8  F2 E1 00 88 */	psq_st f23, 136(r1), 0, 0 /* qr0 */
/* 8077D8FC  DA C1 00 70 */	stfd f22, 0x70(r1)
/* 8077D900  F2 C1 00 78 */	psq_st f22, 120(r1), 0, 0 /* qr0 */
/* 8077D904  39 61 00 70 */	addi r11, r1, 0x70
/* 8077D908  4B BE 48 AD */	bl _savegpr_19
/* 8077D90C  7C 73 1B 78 */	mr r19, r3
/* 8077D910  7C 99 23 78 */	mr r25, r4
/* 8077D914  3C 60 80 78 */	lis r3, lit_3903@ha /* 0x80780DC4@ha */
/* 8077D918  3A 83 0D C4 */	addi r20, r3, lit_3903@l /* 0x80780DC4@l */
/* 8077D91C  3B 79 00 0C */	addi r27, r25, 0xc
/* 8077D920  3B 59 00 CC */	addi r26, r25, 0xcc
/* 8077D924  C0 14 00 04 */	lfs f0, 4(r20)
/* 8077D928  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8077D92C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8077D930  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8077D934  C0 34 00 A4 */	lfs f1, 0xa4(r20)
/* 8077D938  4B AE A1 95 */	bl cM_rndF2__Ff
/* 8077D93C  FC 00 08 1E */	fctiwz f0, f1
/* 8077D940  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8077D944  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8077D948  C3 54 00 70 */	lfs f26, 0x70(r20)
/* 8077D94C  C0 13 07 94 */	lfs f0, 0x794(r19)
/* 8077D950  EF 1A 00 2A */	fadds f24, f26, f0
/* 8077D954  3B 80 00 01 */	li r28, 1
/* 8077D958  3B 00 17 70 */	li r24, 0x1770
/* 8077D95C  3A E0 1B 58 */	li r23, 0x1b58
/* 8077D960  7C 1D 07 34 */	extsh r29, r0
/* 8077D964  3B DD 27 10 */	addi r30, r29, 0x2710
/* 8077D968  C3 74 00 88 */	lfs f27, 0x88(r20)
/* 8077D96C  CB 94 00 78 */	lfd f28, 0x78(r20)
/* 8077D970  3F E0 43 30 */	lis r31, 0x4330
/* 8077D974  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8077D978  3A A3 9A 20 */	addi r21, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8077D97C  C3 B4 00 A8 */	lfs f29, 0xa8(r20)
/* 8077D980  C3 D4 00 04 */	lfs f30, 4(r20)
/* 8077D984  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8077D988  3A C3 07 68 */	addi r22, r3, calc_mtx@l /* 0x80450768@l */
/* 8077D98C  C3 F4 00 AC */	lfs f31, 0xac(r20)
lbl_8077D990:
/* 8077D990  20 1C 00 10 */	subfic r0, r28, 0x10
/* 8077D994  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8077D998  90 01 00 34 */	stw r0, 0x34(r1)
/* 8077D99C  93 E1 00 30 */	stw r31, 0x30(r1)
/* 8077D9A0  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8077D9A4  EC 00 E0 28 */	fsubs f0, f0, f28
/* 8077D9A8  EC BB 00 32 */	fmuls f5, f27, f0
/* 8077D9AC  C0 5A 00 00 */	lfs f2, 0(r26)
/* 8077D9B0  7C 1D BA 14 */	add r0, r29, r23
/* 8077D9B4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8077D9B8  7C 15 04 2E */	lfsx f0, r21, r0
/* 8077D9BC  EC 3A 00 32 */	fmuls f1, f26, f0
/* 8077D9C0  C0 19 01 80 */	lfs f0, 0x180(r25)
/* 8077D9C4  EC 00 01 72 */	fmuls f0, f0, f5
/* 8077D9C8  EC 01 00 2A */	fadds f0, f1, f0
/* 8077D9CC  EC 82 00 2A */	fadds f4, f2, f0
/* 8077D9D0  D0 81 00 08 */	stfs f4, 8(r1)
/* 8077D9D4  C0 3A 00 04 */	lfs f1, 4(r26)
/* 8077D9D8  C0 19 01 84 */	lfs f0, 0x184(r25)
/* 8077D9DC  EC 00 01 72 */	fmuls f0, f0, f5
/* 8077D9E0  EC 61 00 2A */	fadds f3, f1, f0
/* 8077D9E4  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 8077D9E8  C0 5A 00 08 */	lfs f2, 8(r26)
/* 8077D9EC  7C 1E C2 14 */	add r0, r30, r24
/* 8077D9F0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8077D9F4  7C 15 04 2E */	lfsx f0, r21, r0
/* 8077D9F8  EC 3A 00 32 */	fmuls f1, f26, f0
/* 8077D9FC  C0 19 01 88 */	lfs f0, 0x188(r25)
/* 8077DA00  EC 00 01 72 */	fmuls f0, f0, f5
/* 8077DA04  EC 01 00 2A */	fadds f0, f1, f0
/* 8077DA08  EC 42 00 2A */	fadds f2, f2, f0
/* 8077DA0C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8077DA10  C0 3B 00 00 */	lfs f1, 0(r27)
/* 8077DA14  C0 1B FF F4 */	lfs f0, -0xc(r27)
/* 8077DA18  EC 01 00 28 */	fsubs f0, f1, f0
/* 8077DA1C  EF 24 00 2A */	fadds f25, f4, f0
/* 8077DA20  C0 3B 00 08 */	lfs f1, 8(r27)
/* 8077DA24  C0 1B FF FC */	lfs f0, -4(r27)
/* 8077DA28  EC 01 00 28 */	fsubs f0, f1, f0
/* 8077DA2C  EE C2 00 2A */	fadds f22, f2, f0
/* 8077DA30  C0 1B 00 04 */	lfs f0, 4(r27)
/* 8077DA34  EC 00 18 2A */	fadds f0, f0, f3
/* 8077DA38  EC 3D 00 2A */	fadds f1, f29, f0
/* 8077DA3C  FC 01 C0 40 */	fcmpo cr0, f1, f24
/* 8077DA40  40 80 00 08 */	bge lbl_8077DA48
/* 8077DA44  FC 20 C0 90 */	fmr f1, f24
lbl_8077DA48:
/* 8077DA48  C0 1B FF F8 */	lfs f0, -8(r27)
/* 8077DA4C  EE E1 00 28 */	fsubs f23, f1, f0
/* 8077DA50  FC 20 B8 90 */	fmr f1, f23
/* 8077DA54  FC 40 B0 90 */	fmr f2, f22
/* 8077DA58  4B AE 9C 1D */	bl cM_atan2s__Fff
/* 8077DA5C  7C 03 00 D0 */	neg r0, r3
/* 8077DA60  7C 14 07 34 */	extsh r20, r0
/* 8077DA64  EC 37 05 F2 */	fmuls f1, f23, f23
/* 8077DA68  EC 16 05 B2 */	fmuls f0, f22, f22
/* 8077DA6C  EC 41 00 2A */	fadds f2, f1, f0
/* 8077DA70  FC 02 F0 40 */	fcmpo cr0, f2, f30
/* 8077DA74  40 81 00 0C */	ble lbl_8077DA80
/* 8077DA78  FC 00 10 34 */	frsqrte f0, f2
/* 8077DA7C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8077DA80:
/* 8077DA80  FC 20 C8 90 */	fmr f1, f25
/* 8077DA84  4B AE 9B F1 */	bl cM_atan2s__Fff
/* 8077DA88  7C 73 07 34 */	extsh r19, r3
/* 8077DA8C  80 76 00 00 */	lwz r3, 0(r22)
/* 8077DA90  7E 84 A3 78 */	mr r4, r20
/* 8077DA94  4B 88 E8 B1 */	bl mDoMtx_XrotS__FPA4_fs
/* 8077DA98  80 76 00 00 */	lwz r3, 0(r22)
/* 8077DA9C  7E 64 9B 78 */	mr r4, r19
/* 8077DAA0  4B 88 E9 95 */	bl mDoMtx_YrotM__FPA4_fs
/* 8077DAA4  38 61 00 20 */	addi r3, r1, 0x20
/* 8077DAA8  38 81 00 14 */	addi r4, r1, 0x14
/* 8077DAAC  4B AF 34 41 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8077DAB0  C0 1B 00 00 */	lfs f0, 0(r27)
/* 8077DAB4  D0 1A 00 00 */	stfs f0, 0(r26)
/* 8077DAB8  C0 1B 00 04 */	lfs f0, 4(r27)
/* 8077DABC  D0 1A 00 04 */	stfs f0, 4(r26)
/* 8077DAC0  C0 1B 00 08 */	lfs f0, 8(r27)
/* 8077DAC4  D0 1A 00 08 */	stfs f0, 8(r26)
/* 8077DAC8  C0 3B FF F4 */	lfs f1, -0xc(r27)
/* 8077DACC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8077DAD0  EC 01 00 2A */	fadds f0, f1, f0
/* 8077DAD4  D0 1B 00 00 */	stfs f0, 0(r27)
/* 8077DAD8  C0 3B FF F8 */	lfs f1, -8(r27)
/* 8077DADC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8077DAE0  EC 01 00 2A */	fadds f0, f1, f0
/* 8077DAE4  D0 1B 00 04 */	stfs f0, 4(r27)
/* 8077DAE8  C0 3B FF FC */	lfs f1, -4(r27)
/* 8077DAEC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8077DAF0  EC 01 00 2A */	fadds f0, f1, f0
/* 8077DAF4  D0 1B 00 08 */	stfs f0, 8(r27)
/* 8077DAF8  C0 3B 00 00 */	lfs f1, 0(r27)
/* 8077DAFC  C0 1A 00 00 */	lfs f0, 0(r26)
/* 8077DB00  EC 01 00 28 */	fsubs f0, f1, f0
/* 8077DB04  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8077DB08  D0 1A 00 00 */	stfs f0, 0(r26)
/* 8077DB0C  C0 3B 00 04 */	lfs f1, 4(r27)
/* 8077DB10  C0 1A 00 04 */	lfs f0, 4(r26)
/* 8077DB14  EC 01 00 28 */	fsubs f0, f1, f0
/* 8077DB18  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8077DB1C  D0 1A 00 04 */	stfs f0, 4(r26)
/* 8077DB20  C0 3B 00 08 */	lfs f1, 8(r27)
/* 8077DB24  C0 1A 00 08 */	lfs f0, 8(r26)
/* 8077DB28  EC 01 00 28 */	fsubs f0, f1, f0
/* 8077DB2C  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8077DB30  D0 1A 00 08 */	stfs f0, 8(r26)
/* 8077DB34  3B 9C 00 01 */	addi r28, r28, 1
/* 8077DB38  2C 1C 00 10 */	cmpwi r28, 0x10
/* 8077DB3C  3B 18 17 70 */	addi r24, r24, 0x1770
/* 8077DB40  3A F7 1B 58 */	addi r23, r23, 0x1b58
/* 8077DB44  3B 7B 00 0C */	addi r27, r27, 0xc
/* 8077DB48  3B 5A 00 0C */	addi r26, r26, 0xc
/* 8077DB4C  41 80 FE 44 */	blt lbl_8077D990
/* 8077DB50  E3 E1 01 08 */	psq_l f31, 264(r1), 0, 0 /* qr0 */
/* 8077DB54  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 8077DB58  E3 C1 00 F8 */	psq_l f30, 248(r1), 0, 0 /* qr0 */
/* 8077DB5C  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 8077DB60  E3 A1 00 E8 */	psq_l f29, 232(r1), 0, 0 /* qr0 */
/* 8077DB64  CB A1 00 E0 */	lfd f29, 0xe0(r1)
/* 8077DB68  E3 81 00 D8 */	psq_l f28, 216(r1), 0, 0 /* qr0 */
/* 8077DB6C  CB 81 00 D0 */	lfd f28, 0xd0(r1)
/* 8077DB70  E3 61 00 C8 */	psq_l f27, 200(r1), 0, 0 /* qr0 */
/* 8077DB74  CB 61 00 C0 */	lfd f27, 0xc0(r1)
/* 8077DB78  E3 41 00 B8 */	psq_l f26, 184(r1), 0, 0 /* qr0 */
/* 8077DB7C  CB 41 00 B0 */	lfd f26, 0xb0(r1)
/* 8077DB80  E3 21 00 A8 */	psq_l f25, 168(r1), 0, 0 /* qr0 */
/* 8077DB84  CB 21 00 A0 */	lfd f25, 0xa0(r1)
/* 8077DB88  E3 01 00 98 */	psq_l f24, 152(r1), 0, 0 /* qr0 */
/* 8077DB8C  CB 01 00 90 */	lfd f24, 0x90(r1)
/* 8077DB90  E2 E1 00 88 */	psq_l f23, 136(r1), 0, 0 /* qr0 */
/* 8077DB94  CA E1 00 80 */	lfd f23, 0x80(r1)
/* 8077DB98  E2 C1 00 78 */	psq_l f22, 120(r1), 0, 0 /* qr0 */
/* 8077DB9C  CA C1 00 70 */	lfd f22, 0x70(r1)
/* 8077DBA0  39 61 00 70 */	addi r11, r1, 0x70
/* 8077DBA4  4B BE 46 5D */	bl _restgpr_19
/* 8077DBA8  80 01 01 14 */	lwz r0, 0x114(r1)
/* 8077DBAC  7C 08 03 A6 */	mtlr r0
/* 8077DBB0  38 21 01 10 */	addi r1, r1, 0x110
/* 8077DBB4  4E 80 00 20 */	blr 
