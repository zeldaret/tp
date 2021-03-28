lbl_8057FDA8:
/* 8057FDA8  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 8057FDAC  7C 08 02 A6 */	mflr r0
/* 8057FDB0  90 01 01 24 */	stw r0, 0x124(r1)
/* 8057FDB4  DB E1 01 10 */	stfd f31, 0x110(r1)
/* 8057FDB8  F3 E1 01 18 */	psq_st f31, 280(r1), 0, 0 /* qr0 */
/* 8057FDBC  DB C1 01 00 */	stfd f30, 0x100(r1)
/* 8057FDC0  F3 C1 01 08 */	psq_st f30, 264(r1), 0, 0 /* qr0 */
/* 8057FDC4  DB A1 00 F0 */	stfd f29, 0xf0(r1)
/* 8057FDC8  F3 A1 00 F8 */	psq_st f29, 248(r1), 0, 0 /* qr0 */
/* 8057FDCC  DB 81 00 E0 */	stfd f28, 0xe0(r1)
/* 8057FDD0  F3 81 00 E8 */	psq_st f28, 232(r1), 0, 0 /* qr0 */
/* 8057FDD4  DB 61 00 D0 */	stfd f27, 0xd0(r1)
/* 8057FDD8  F3 61 00 D8 */	psq_st f27, 216(r1), 0, 0 /* qr0 */
/* 8057FDDC  DB 41 00 C0 */	stfd f26, 0xc0(r1)
/* 8057FDE0  F3 41 00 C8 */	psq_st f26, 200(r1), 0, 0 /* qr0 */
/* 8057FDE4  DB 21 00 B0 */	stfd f25, 0xb0(r1)
/* 8057FDE8  F3 21 00 B8 */	psq_st f25, 184(r1), 0, 0 /* qr0 */
/* 8057FDEC  DB 01 00 A0 */	stfd f24, 0xa0(r1)
/* 8057FDF0  F3 01 00 A8 */	psq_st f24, 168(r1), 0, 0 /* qr0 */
/* 8057FDF4  DA E1 00 90 */	stfd f23, 0x90(r1)
/* 8057FDF8  F2 E1 00 98 */	psq_st f23, 152(r1), 0, 0 /* qr0 */
/* 8057FDFC  DA C1 00 80 */	stfd f22, 0x80(r1)
/* 8057FE00  F2 C1 00 88 */	psq_st f22, 136(r1), 0, 0 /* qr0 */
/* 8057FE04  DA A1 00 70 */	stfd f21, 0x70(r1)
/* 8057FE08  F2 A1 00 78 */	psq_st f21, 120(r1), 0, 0 /* qr0 */
/* 8057FE0C  39 61 00 70 */	addi r11, r1, 0x70
/* 8057FE10  4B DE 23 B0 */	b _savegpr_22
/* 8057FE14  7C 7B 1B 78 */	mr r27, r3
/* 8057FE18  FF 20 10 90 */	fmr f25, f2
/* 8057FE1C  FF 40 18 90 */	fmr f26, f3
/* 8057FE20  FF 60 20 90 */	fmr f27, f4
/* 8057FE24  3C 60 80 58 */	lis r3, ccCylSrc@ha
/* 8057FE28  3B E3 14 AC */	addi r31, r3, ccCylSrc@l
/* 8057FE2C  7C 9C 07 34 */	extsh r28, r4
/* 8057FE30  7C BD 07 34 */	extsh r29, r5
/* 8057FE34  3B DD FF EC */	addi r30, r29, -20
/* 8057FE38  C3 9F 00 58 */	lfs f28, 0x58(r31)
/* 8057FE3C  C3 BF 00 60 */	lfs f29, 0x60(r31)
/* 8057FE40  C3 DF 00 68 */	lfs f30, 0x68(r31)
/* 8057FE44  CB FF 00 90 */	lfd f31, 0x90(r31)
/* 8057FE48  3E E0 43 30 */	lis r23, 0x4330
/* 8057FE4C  C2 FF 00 6C */	lfs f23, 0x6c(r31)
/* 8057FE50  C3 1F 00 74 */	lfs f24, 0x74(r31)
/* 8057FE54  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8057FE58  3B 03 D4 70 */	addi r24, r3, now__14mDoMtx_stack_c@l
/* 8057FE5C  1F 3C 00 0C */	mulli r25, r28, 0xc
/* 8057FE60  1F 5C 00 06 */	mulli r26, r28, 6
/* 8057FE64  48 00 01 68 */	b lbl_8057FFCC
lbl_8057FE68:
/* 8057FE68  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8057FE6C  4B CE 7B 20 */	b cM_rndFX__Ff
/* 8057FE70  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 8057FE74  EE A0 08 2A */	fadds f21, f0, f1
/* 8057FE78  FC 20 D8 90 */	fmr f1, f27
/* 8057FE7C  4B CE 7A D8 */	b cM_rndF__Ff
/* 8057FE80  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 8057FE84  EC 00 D0 2A */	fadds f0, f0, f26
/* 8057FE88  EE C0 08 2A */	fadds f22, f0, f1
/* 8057FE8C  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8057FE90  4B CE 7A FC */	b cM_rndFX__Ff
/* 8057FE94  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 8057FE98  EC 00 08 2A */	fadds f0, f0, f1
/* 8057FE9C  7E DB CA 14 */	add r22, r27, r25
/* 8057FEA0  D0 16 05 B0 */	stfs f0, 0x5b0(r22)
/* 8057FEA4  D2 D6 05 B4 */	stfs f22, 0x5b4(r22)
/* 8057FEA8  D2 B6 05 B8 */	stfs f21, 0x5b8(r22)
/* 8057FEAC  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8057FEB0  4B CE 7A A4 */	b cM_rndF__Ff
/* 8057FEB4  EE DC 08 2A */	fadds f22, f28, f1
/* 8057FEB8  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 8057FEBC  4B CE 7A 98 */	b cM_rndF__Ff
/* 8057FEC0  EE BD 08 2A */	fadds f21, f29, f1
/* 8057FEC4  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8057FEC8  4B CE 7A 8C */	b cM_rndF__Ff
/* 8057FECC  EC 1C 08 2A */	fadds f0, f28, f1
/* 8057FED0  D0 16 0A 60 */	stfs f0, 0xa60(r22)
/* 8057FED4  D2 B6 0A 64 */	stfs f21, 0xa64(r22)
/* 8057FED8  D2 D6 0A 68 */	stfs f22, 0xa68(r22)
/* 8057FEDC  FC 20 C8 90 */	fmr f1, f25
/* 8057FEE0  4B CE 7A AC */	b cM_rndFX__Ff
/* 8057FEE4  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 8057FEE8  4B CE 7A A4 */	b cM_rndFX__Ff
/* 8057FEEC  EE BE 08 2A */	fadds f21, f30, f1
/* 8057FEF0  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 8057FEF4  4B CE 7A 98 */	b cM_rndFX__Ff
/* 8057FEF8  FC 00 08 1E */	fctiwz f0, f1
/* 8057FEFC  D8 01 00 08 */	stfd f0, 8(r1)
/* 8057FF00  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8057FF04  7C 00 07 34 */	extsh r0, r0
/* 8057FF08  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8057FF0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057FF10  92 E1 00 10 */	stw r23, 0x10(r1)
/* 8057FF14  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8057FF18  EC 20 F8 28 */	fsubs f1, f0, f31
/* 8057FF1C  C0 1B 0C B8 */	lfs f0, 0xcb8(r27)
/* 8057FF20  EC 00 B8 28 */	fsubs f0, f0, f23
/* 8057FF24  EC 00 08 2A */	fadds f0, f0, f1
/* 8057FF28  FC 00 00 1E */	fctiwz f0, f0
/* 8057FF2C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8057FF30  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8057FF34  D3 16 08 08 */	stfs f24, 0x808(r22)
/* 8057FF38  D3 16 08 0C */	stfs f24, 0x80c(r22)
/* 8057FF3C  D2 B6 08 10 */	stfs f21, 0x810(r22)
/* 8057FF40  7F 03 C3 78 */	mr r3, r24
/* 8057FF44  4B A8 C4 98 */	b mDoMtx_YrotS__FPA4_fs
/* 8057FF48  38 96 08 08 */	addi r4, r22, 0x808
/* 8057FF4C  7F 03 C3 78 */	mr r3, r24
/* 8057FF50  7C 85 23 78 */	mr r5, r4
/* 8057FF54  4B DC 6E 18 */	b PSMTXMultVec
/* 8057FF58  D2 B6 08 0C */	stfs f21, 0x80c(r22)
/* 8057FF5C  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 8057FF60  4B CE 7A 2C */	b cM_rndFX__Ff
/* 8057FF64  FC 00 08 1E */	fctiwz f0, f1
/* 8057FF68  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8057FF6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057FF70  7E DB D2 14 */	add r22, r27, r26
/* 8057FF74  B0 16 0D E8 */	sth r0, 0xde8(r22)
/* 8057FF78  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 8057FF7C  4B CE 7A 10 */	b cM_rndFX__Ff
/* 8057FF80  FC 00 08 1E */	fctiwz f0, f1
/* 8057FF84  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8057FF88  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8057FF8C  B0 16 0D EA */	sth r0, 0xdea(r22)
/* 8057FF90  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 8057FF94  4B CE 79 F8 */	b cM_rndFX__Ff
/* 8057FF98  FC 00 08 1E */	fctiwz f0, f1
/* 8057FF9C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8057FFA0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8057FFA4  B0 16 0C BC */	sth r0, 0xcbc(r22)
/* 8057FFA8  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 8057FFAC  4B CE 79 E0 */	b cM_rndFX__Ff
/* 8057FFB0  FC 00 08 1E */	fctiwz f0, f1
/* 8057FFB4  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8057FFB8  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8057FFBC  B0 16 0C BE */	sth r0, 0xcbe(r22)
/* 8057FFC0  3B 9C 00 01 */	addi r28, r28, 1
/* 8057FFC4  3B 5A 00 06 */	addi r26, r26, 6
/* 8057FFC8  3B 39 00 0C */	addi r25, r25, 0xc
lbl_8057FFCC:
/* 8057FFCC  7C 1C F0 00 */	cmpw r28, r30
/* 8057FFD0  41 80 FE 98 */	blt lbl_8057FE68
/* 8057FFD4  7F D7 F3 78 */	mr r23, r30
/* 8057FFD8  C3 DF 00 58 */	lfs f30, 0x58(r31)
/* 8057FFDC  C3 BF 00 60 */	lfs f29, 0x60(r31)
/* 8057FFE0  C3 9F 00 80 */	lfs f28, 0x80(r31)
/* 8057FFE4  C3 3F 00 84 */	lfs f25, 0x84(r31)
/* 8057FFE8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8057FFEC  3B 23 9A 20 */	addi r25, r3, sincosTable___5JMath@l
/* 8057FFF0  1F 5E 00 0C */	mulli r26, r30, 0xc
/* 8057FFF4  1F 9E 00 06 */	mulli r28, r30, 6
/* 8057FFF8  48 00 01 40 */	b lbl_80580138
lbl_8057FFFC:
/* 8057FFFC  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80580000  4B CE 79 8C */	b cM_rndFX__Ff
/* 80580004  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80580008  EE C0 08 2A */	fadds f22, f0, f1
/* 8058000C  FC 20 D8 90 */	fmr f1, f27
/* 80580010  4B CE 79 7C */	b cM_rndFX__Ff
/* 80580014  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80580018  EC 00 D0 2A */	fadds f0, f0, f26
/* 8058001C  EE A0 08 2A */	fadds f21, f0, f1
/* 80580020  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80580024  4B CE 79 68 */	b cM_rndFX__Ff
/* 80580028  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 8058002C  EC 00 08 2A */	fadds f0, f0, f1
/* 80580030  7E DB D2 14 */	add r22, r27, r26
/* 80580034  D0 16 05 B0 */	stfs f0, 0x5b0(r22)
/* 80580038  D2 B6 05 B4 */	stfs f21, 0x5b4(r22)
/* 8058003C  D2 D6 05 B8 */	stfs f22, 0x5b8(r22)
/* 80580040  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80580044  4B CE 79 10 */	b cM_rndF__Ff
/* 80580048  EE DE 08 2A */	fadds f22, f30, f1
/* 8058004C  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80580050  4B CE 79 04 */	b cM_rndF__Ff
/* 80580054  EE BD 08 2A */	fadds f21, f29, f1
/* 80580058  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8058005C  4B CE 78 F8 */	b cM_rndF__Ff
/* 80580060  EC 1E 08 2A */	fadds f0, f30, f1
/* 80580064  D0 16 0A 60 */	stfs f0, 0xa60(r22)
/* 80580068  D2 B6 0A 64 */	stfs f21, 0xa64(r22)
/* 8058006C  D2 D6 0A 68 */	stfs f22, 0xa68(r22)
/* 80580070  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80580074  4B CE 79 18 */	b cM_rndFX__Ff
/* 80580078  EE DC 08 2A */	fadds f22, f28, f1
/* 8058007C  FC 20 E0 90 */	fmr f1, f28
/* 80580080  4B CE 79 0C */	b cM_rndFX__Ff
/* 80580084  EE B9 08 2A */	fadds f21, f25, f1
/* 80580088  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 8058008C  4B CE 79 00 */	b cM_rndFX__Ff
/* 80580090  FC 00 08 1E */	fctiwz f0, f1
/* 80580094  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80580098  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8058009C  C0 1B 05 30 */	lfs f0, 0x530(r27)
/* 805800A0  EC 35 00 2A */	fadds f1, f21, f0
/* 805800A4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805800A8  7C 79 02 14 */	add r3, r25, r0
/* 805800AC  C0 03 00 04 */	lfs f0, 4(r3)
/* 805800B0  EC 56 00 32 */	fmuls f2, f22, f0
/* 805800B4  C0 03 00 00 */	lfs f0, 0(r3)
/* 805800B8  EC 16 00 32 */	fmuls f0, f22, f0
/* 805800BC  D0 16 08 08 */	stfs f0, 0x808(r22)
/* 805800C0  D0 36 08 0C */	stfs f1, 0x80c(r22)
/* 805800C4  D0 56 08 10 */	stfs f2, 0x810(r22)
/* 805800C8  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 805800CC  4B CE 78 C0 */	b cM_rndFX__Ff
/* 805800D0  FC 00 08 1E */	fctiwz f0, f1
/* 805800D4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 805800D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805800DC  7E DB E2 14 */	add r22, r27, r28
/* 805800E0  B0 16 0D E8 */	sth r0, 0xde8(r22)
/* 805800E4  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 805800E8  4B CE 78 A4 */	b cM_rndFX__Ff
/* 805800EC  FC 00 08 1E */	fctiwz f0, f1
/* 805800F0  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 805800F4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 805800F8  B0 16 0D EA */	sth r0, 0xdea(r22)
/* 805800FC  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80580100  4B CE 78 8C */	b cM_rndFX__Ff
/* 80580104  FC 00 08 1E */	fctiwz f0, f1
/* 80580108  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8058010C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80580110  B0 16 0C BC */	sth r0, 0xcbc(r22)
/* 80580114  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80580118  4B CE 78 74 */	b cM_rndFX__Ff
/* 8058011C  FC 00 08 1E */	fctiwz f0, f1
/* 80580120  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80580124  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80580128  B0 16 0C BE */	sth r0, 0xcbe(r22)
/* 8058012C  3A F7 00 01 */	addi r23, r23, 1
/* 80580130  3B 9C 00 06 */	addi r28, r28, 6
/* 80580134  3B 5A 00 0C */	addi r26, r26, 0xc
lbl_80580138:
/* 80580138  7C 17 E8 00 */	cmpw r23, r29
/* 8058013C  41 80 FE C0 */	blt lbl_8057FFFC
/* 80580140  E3 E1 01 18 */	psq_l f31, 280(r1), 0, 0 /* qr0 */
/* 80580144  CB E1 01 10 */	lfd f31, 0x110(r1)
/* 80580148  E3 C1 01 08 */	psq_l f30, 264(r1), 0, 0 /* qr0 */
/* 8058014C  CB C1 01 00 */	lfd f30, 0x100(r1)
/* 80580150  E3 A1 00 F8 */	psq_l f29, 248(r1), 0, 0 /* qr0 */
/* 80580154  CB A1 00 F0 */	lfd f29, 0xf0(r1)
/* 80580158  E3 81 00 E8 */	psq_l f28, 232(r1), 0, 0 /* qr0 */
/* 8058015C  CB 81 00 E0 */	lfd f28, 0xe0(r1)
/* 80580160  E3 61 00 D8 */	psq_l f27, 216(r1), 0, 0 /* qr0 */
/* 80580164  CB 61 00 D0 */	lfd f27, 0xd0(r1)
/* 80580168  E3 41 00 C8 */	psq_l f26, 200(r1), 0, 0 /* qr0 */
/* 8058016C  CB 41 00 C0 */	lfd f26, 0xc0(r1)
/* 80580170  E3 21 00 B8 */	psq_l f25, 184(r1), 0, 0 /* qr0 */
/* 80580174  CB 21 00 B0 */	lfd f25, 0xb0(r1)
/* 80580178  E3 01 00 A8 */	psq_l f24, 168(r1), 0, 0 /* qr0 */
/* 8058017C  CB 01 00 A0 */	lfd f24, 0xa0(r1)
/* 80580180  E2 E1 00 98 */	psq_l f23, 152(r1), 0, 0 /* qr0 */
/* 80580184  CA E1 00 90 */	lfd f23, 0x90(r1)
/* 80580188  E2 C1 00 88 */	psq_l f22, 136(r1), 0, 0 /* qr0 */
/* 8058018C  CA C1 00 80 */	lfd f22, 0x80(r1)
/* 80580190  E2 A1 00 78 */	psq_l f21, 120(r1), 0, 0 /* qr0 */
/* 80580194  CA A1 00 70 */	lfd f21, 0x70(r1)
/* 80580198  39 61 00 70 */	addi r11, r1, 0x70
/* 8058019C  4B DE 20 70 */	b _restgpr_22
/* 805801A0  80 01 01 24 */	lwz r0, 0x124(r1)
/* 805801A4  7C 08 03 A6 */	mtlr r0
/* 805801A8  38 21 01 20 */	addi r1, r1, 0x120
/* 805801AC  4E 80 00 20 */	blr 
