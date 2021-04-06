lbl_80C270E0:
/* 80C270E0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80C270E4  7C 08 02 A6 */	mflr r0
/* 80C270E8  90 01 00 94 */	stw r0, 0x94(r1)
/* 80C270EC  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80C270F0  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80C270F4  39 61 00 80 */	addi r11, r1, 0x80
/* 80C270F8  4B 73 B0 E5 */	bl _savegpr_29
/* 80C270FC  7C 7D 1B 78 */	mr r29, r3
/* 80C27100  7C 9E 23 78 */	mr r30, r4
/* 80C27104  3C 60 80 C2 */	lis r3, lit_3668@ha /* 0x80C274F0@ha */
/* 80C27108  3B E3 74 F0 */	addi r31, r3, lit_3668@l /* 0x80C274F0@l */
/* 80C2710C  C0 7D 04 D8 */	lfs f3, 0x4d8(r29)
/* 80C27110  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80C27114  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80C27118  EC 40 08 2A */	fadds f2, f0, f1
/* 80C2711C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80C27120  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C27124  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80C27128  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 80C2712C  FF E0 08 90 */	fmr f31, f1
/* 80C27130  38 61 00 08 */	addi r3, r1, 8
/* 80C27134  4B 3F 6C 51 */	bl waterCheck__11fopAcM_wt_cFPC4cXyz
/* 80C27138  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C2713C  41 82 00 0C */	beq lbl_80C27148
/* 80C27140  3C 60 80 45 */	lis r3, mWaterY__11fopAcM_wt_c@ha /* 0x80450CD8@ha */
/* 80C27144  C3 E3 0C D8 */	lfs f31, mWaterY__11fopAcM_wt_c@l(r3)  /* 0x80450CD8@l */
lbl_80C27148:
/* 80C27148  A8 1D 05 C4 */	lha r0, 0x5c4(r29)
/* 80C2714C  C8 9F 00 08 */	lfd f4, 8(r31)
/* 80C27150  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C27154  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80C27158  3C 60 43 30 */	lis r3, 0x4330
/* 80C2715C  90 61 00 18 */	stw r3, 0x18(r1)
/* 80C27160  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80C27164  EC 20 20 28 */	fsubs f1, f0, f4
/* 80C27168  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 80C2716C  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 80C27170  C0 1D 05 A0 */	lfs f0, 0x5a0(r29)
/* 80C27174  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C27178  EC 03 00 2A */	fadds f0, f3, f0
/* 80C2717C  EC 01 00 2A */	fadds f0, f1, f0
/* 80C27180  FC 00 00 1E */	fctiwz f0, f0
/* 80C27184  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80C27188  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C2718C  B0 1D 05 C4 */	sth r0, 0x5c4(r29)
/* 80C27190  A8 1D 05 C6 */	lha r0, 0x5c6(r29)
/* 80C27194  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C27198  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80C2719C  90 61 00 28 */	stw r3, 0x28(r1)
/* 80C271A0  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80C271A4  EC 20 20 28 */	fsubs f1, f0, f4
/* 80C271A8  C0 1D 05 A0 */	lfs f0, 0x5a0(r29)
/* 80C271AC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C271B0  EC 03 00 2A */	fadds f0, f3, f0
/* 80C271B4  EC 01 00 2A */	fadds f0, f1, f0
/* 80C271B8  FC 00 00 1E */	fctiwz f0, f0
/* 80C271BC  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80C271C0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C271C4  B0 1D 05 C6 */	sth r0, 0x5c6(r29)
/* 80C271C8  A8 7D 05 C6 */	lha r3, 0x5c6(r29)
/* 80C271CC  A8 1D 05 D4 */	lha r0, 0x5d4(r29)
/* 80C271D0  7C 03 02 14 */	add r0, r3, r0
/* 80C271D4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C271D8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80C271DC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80C271E0  7C 63 04 2E */	lfsx f3, r3, r0
/* 80C271E4  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 80C271E8  C0 5D 05 D0 */	lfs f2, 0x5d0(r29)
/* 80C271EC  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80C271F0  C0 1D 05 A4 */	lfs f0, 0x5a4(r29)
/* 80C271F4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C271F8  EC 3F 00 2A */	fadds f1, f31, f0
/* 80C271FC  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80C27200  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80C27204  EC 01 00 2A */	fadds f0, f1, f0
/* 80C27208  EC 22 00 2A */	fadds f1, f2, f0
/* 80C2720C  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 80C27210  C0 7F 00 6C */	lfs f3, 0x6c(r31)
/* 80C27214  FC 80 10 90 */	fmr f4, f2
/* 80C27218  4B 64 87 65 */	bl cLib_addCalc__FPfffff
/* 80C2721C  A8 7D 05 C4 */	lha r3, 0x5c4(r29)
/* 80C27220  A8 1D 05 D4 */	lha r0, 0x5d4(r29)
/* 80C27224  7C 63 02 14 */	add r3, r3, r0
/* 80C27228  38 03 20 00 */	addi r0, r3, 0x2000
/* 80C2722C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C27230  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80C27234  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80C27238  7C 63 04 2E */	lfsx f3, r3, r0
/* 80C2723C  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 80C27240  A8 1D 05 C8 */	lha r0, 0x5c8(r29)
/* 80C27244  C8 5F 00 08 */	lfd f2, 8(r31)
/* 80C27248  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C2724C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80C27250  3C 80 43 30 */	lis r4, 0x4330
/* 80C27254  90 81 00 38 */	stw r4, 0x38(r1)
/* 80C27258  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80C2725C  EC 20 10 28 */	fsubs f1, f0, f2
/* 80C27260  A8 1D 05 AC */	lha r0, 0x5ac(r29)
/* 80C27264  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C27268  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C2726C  90 81 00 40 */	stw r4, 0x40(r1)
/* 80C27270  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80C27274  EC 00 10 28 */	fsubs f0, f0, f2
/* 80C27278  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80C2727C  EC 01 00 2A */	fadds f0, f1, f0
/* 80C27280  FC 00 00 1E */	fctiwz f0, f0
/* 80C27284  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80C27288  80 81 00 4C */	lwz r4, 0x4c(r1)
/* 80C2728C  38 A0 00 02 */	li r5, 2
/* 80C27290  38 C0 01 00 */	li r6, 0x100
/* 80C27294  38 E0 00 01 */	li r7, 1
/* 80C27298  4B 64 92 A9 */	bl cLib_addCalcAngleS__FPsssss
/* 80C2729C  A8 7D 05 C6 */	lha r3, 0x5c6(r29)
/* 80C272A0  A8 1D 05 D4 */	lha r0, 0x5d4(r29)
/* 80C272A4  7C 03 02 14 */	add r0, r3, r0
/* 80C272A8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C272AC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80C272B0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80C272B4  7C 63 04 2E */	lfsx f3, r3, r0
/* 80C272B8  38 7D 04 E8 */	addi r3, r29, 0x4e8
/* 80C272BC  A8 1D 05 CC */	lha r0, 0x5cc(r29)
/* 80C272C0  C8 5F 00 08 */	lfd f2, 8(r31)
/* 80C272C4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C272C8  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C272CC  3C 80 43 30 */	lis r4, 0x4330
/* 80C272D0  90 81 00 50 */	stw r4, 0x50(r1)
/* 80C272D4  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 80C272D8  EC 20 10 28 */	fsubs f1, f0, f2
/* 80C272DC  A8 1D 05 AC */	lha r0, 0x5ac(r29)
/* 80C272E0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C272E4  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80C272E8  90 81 00 58 */	stw r4, 0x58(r1)
/* 80C272EC  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 80C272F0  EC 00 10 28 */	fsubs f0, f0, f2
/* 80C272F4  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80C272F8  EC 01 00 2A */	fadds f0, f1, f0
/* 80C272FC  FC 00 00 1E */	fctiwz f0, f0
/* 80C27300  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 80C27304  80 81 00 64 */	lwz r4, 0x64(r1)
/* 80C27308  38 A0 00 02 */	li r5, 2
/* 80C2730C  38 C0 01 00 */	li r6, 0x100
/* 80C27310  38 E0 00 01 */	li r7, 1
/* 80C27314  4B 64 92 2D */	bl cLib_addCalcAngleS__FPsssss
/* 80C27318  88 1D 05 D6 */	lbz r0, 0x5d6(r29)
/* 80C2731C  28 00 00 00 */	cmplwi r0, 0
/* 80C27320  40 82 00 64 */	bne lbl_80C27384
/* 80C27324  38 7D 05 C8 */	addi r3, r29, 0x5c8
/* 80C27328  38 80 00 00 */	li r4, 0
/* 80C2732C  38 A0 00 02 */	li r5, 2
/* 80C27330  38 C0 01 00 */	li r6, 0x100
/* 80C27334  38 E0 00 01 */	li r7, 1
/* 80C27338  4B 64 92 09 */	bl cLib_addCalcAngleS__FPsssss
/* 80C2733C  38 7D 05 CC */	addi r3, r29, 0x5cc
/* 80C27340  38 80 00 00 */	li r4, 0
/* 80C27344  38 A0 00 02 */	li r5, 2
/* 80C27348  38 C0 01 00 */	li r6, 0x100
/* 80C2734C  38 E0 00 01 */	li r7, 1
/* 80C27350  4B 64 91 F1 */	bl cLib_addCalcAngleS__FPsssss
/* 80C27354  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 80C27358  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80C2735C  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 80C27360  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 80C27364  FC 80 08 90 */	fmr f4, f1
/* 80C27368  4B 64 86 15 */	bl cLib_addCalc__FPfffff
/* 80C2736C  38 7D 05 A0 */	addi r3, r29, 0x5a0
/* 80C27370  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80C27374  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 80C27378  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 80C2737C  FC 80 08 90 */	fmr f4, f1
/* 80C27380  4B 64 85 FD */	bl cLib_addCalc__FPfffff
lbl_80C27384:
/* 80C27384  38 7D 05 A4 */	addi r3, r29, 0x5a4
/* 80C27388  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80C2738C  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 80C27390  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 80C27394  FC 80 08 90 */	fmr f4, f1
/* 80C27398  4B 64 85 E5 */	bl cLib_addCalc__FPfffff
/* 80C2739C  38 00 00 00 */	li r0, 0
/* 80C273A0  98 1D 05 D6 */	stb r0, 0x5d6(r29)
/* 80C273A4  38 00 01 20 */	li r0, 0x120
/* 80C273A8  B0 1D 05 AC */	sth r0, 0x5ac(r29)
/* 80C273AC  7F A3 EB 78 */	mr r3, r29
/* 80C273B0  38 9D 05 E4 */	addi r4, r29, 0x5e4
/* 80C273B4  4B 3F 33 19 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80C273B8  38 1D 05 6C */	addi r0, r29, 0x56c
/* 80C273BC  90 1E 00 00 */	stw r0, 0(r30)
/* 80C273C0  7F A3 EB 78 */	mr r3, r29
/* 80C273C4  4B FF F8 B9 */	bl setBaseMtx__12daObjIkada_cFv
/* 80C273C8  38 7D 06 6C */	addi r3, r29, 0x66c
/* 80C273CC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C273D0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C273D4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80C273D8  4B 44 F6 D5 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80C273DC  38 60 00 01 */	li r3, 1
/* 80C273E0  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80C273E4  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80C273E8  39 61 00 80 */	addi r11, r1, 0x80
/* 80C273EC  4B 73 AE 3D */	bl _restgpr_29
/* 80C273F0  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80C273F4  7C 08 03 A6 */	mtlr r0
/* 80C273F8  38 21 00 90 */	addi r1, r1, 0x90
/* 80C273FC  4E 80 00 20 */	blr 
