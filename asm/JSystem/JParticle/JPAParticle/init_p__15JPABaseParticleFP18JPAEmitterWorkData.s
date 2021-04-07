lbl_8027EFEC:
/* 8027EFEC  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 8027EFF0  7C 08 02 A6 */	mflr r0
/* 8027EFF4  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 8027EFF8  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 8027EFFC  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, 0 /* qr0 */
/* 8027F000  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 8027F004  F3 C1 00 D8 */	psq_st f30, 216(r1), 0, 0 /* qr0 */
/* 8027F008  DB A1 00 C0 */	stfd f29, 0xc0(r1)
/* 8027F00C  F3 A1 00 C8 */	psq_st f29, 200(r1), 0, 0 /* qr0 */
/* 8027F010  DB 81 00 B0 */	stfd f28, 0xb0(r1)
/* 8027F014  F3 81 00 B8 */	psq_st f28, 184(r1), 0, 0 /* qr0 */
/* 8027F018  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8027F01C  48 0E 31 B5 */	bl _savegpr_26
/* 8027F020  7C 7A 1B 78 */	mr r26, r3
/* 8027F024  7C 9B 23 78 */	mr r27, r4
/* 8027F028  83 84 00 00 */	lwz r28, 0(r4)
/* 8027F02C  80 64 00 04 */	lwz r3, 4(r4)
/* 8027F030  83 E3 00 20 */	lwz r31, 0x20(r3)
/* 8027F034  83 C3 00 1C */	lwz r30, 0x1c(r3)
/* 8027F038  83 A3 00 2C */	lwz r29, 0x2c(r3)
/* 8027F03C  38 00 FF FF */	li r0, -1
/* 8027F040  B0 1A 00 80 */	sth r0, 0x80(r26)
/* 8027F044  80 9C 00 C4 */	lwz r4, 0xc4(r28)
/* 8027F048  3C 60 00 19 */	lis r3, 0x0019 /* 0x0019660D@ha */
/* 8027F04C  38 03 66 0D */	addi r0, r3, 0x660D /* 0x0019660D@l */
/* 8027F050  7C 64 01 D6 */	mullw r3, r4, r0
/* 8027F054  3C 63 3C 6F */	addis r3, r3, 0x3c6f
/* 8027F058  38 03 F3 5F */	addi r0, r3, -3233
/* 8027F05C  90 1C 00 C4 */	stw r0, 0xc4(r28)
/* 8027F060  54 00 BA 7E */	srwi r0, r0, 9
/* 8027F064  64 00 3F 80 */	oris r0, r0, 0x3f80
/* 8027F068  90 01 00 38 */	stw r0, 0x38(r1)
/* 8027F06C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8027F070  C0 42 B9 88 */	lfs f2, lit_2565(r2)
/* 8027F074  EC 60 10 28 */	fsubs f3, f0, f2
/* 8027F078  A8 1C 00 52 */	lha r0, 0x52(r28)
/* 8027F07C  C8 22 B9 A0 */	lfd f1, lit_2572(r2)
/* 8027F080  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8027F084  90 01 00 8C */	stw r0, 0x8c(r1)
/* 8027F088  3C 00 43 30 */	lis r0, 0x4330
/* 8027F08C  90 01 00 88 */	stw r0, 0x88(r1)
/* 8027F090  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 8027F094  EC 20 08 28 */	fsubs f1, f0, f1
/* 8027F098  80 7D 00 00 */	lwz r3, 0(r29)
/* 8027F09C  C0 03 00 54 */	lfs f0, 0x54(r3)
/* 8027F0A0  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8027F0A4  EC 02 00 28 */	fsubs f0, f2, f0
/* 8027F0A8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8027F0AC  FC 00 00 1E */	fctiwz f0, f0
/* 8027F0B0  D8 01 00 90 */	stfd f0, 0x90(r1)
/* 8027F0B4  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8027F0B8  B0 1A 00 82 */	sth r0, 0x82(r26)
/* 8027F0BC  C0 02 B9 8C */	lfs f0, lit_2566(r2)
/* 8027F0C0  D0 1A 00 84 */	stfs f0, 0x84(r26)
/* 8027F0C4  38 00 00 00 */	li r0, 0
/* 8027F0C8  90 1A 00 7C */	stw r0, 0x7c(r26)
/* 8027F0CC  38 7B 00 D8 */	addi r3, r27, 0xd8
/* 8027F0D0  38 9B 00 10 */	addi r4, r27, 0x10
/* 8027F0D4  38 BA 00 0C */	addi r5, r26, 0xc
/* 8027F0D8  48 0C 7D 75 */	bl PSMTXMultVecSR
/* 8027F0DC  80 7C 00 E8 */	lwz r3, 0xe8(r28)
/* 8027F0E0  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 8027F0E4  80 63 00 00 */	lwz r3, 0(r3)
/* 8027F0E8  80 03 00 08 */	lwz r0, 8(r3)
/* 8027F0EC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8027F0F0  41 82 00 10 */	beq lbl_8027F100
/* 8027F0F4  80 1A 00 7C */	lwz r0, 0x7c(r26)
/* 8027F0F8  60 00 00 20 */	ori r0, r0, 0x20
/* 8027F0FC  90 1A 00 7C */	stw r0, 0x7c(r26)
lbl_8027F100:
/* 8027F100  C0 1B 01 38 */	lfs f0, 0x138(r27)
/* 8027F104  D0 1A 00 18 */	stfs f0, 0x18(r26)
/* 8027F108  C0 1B 01 3C */	lfs f0, 0x13c(r27)
/* 8027F10C  D0 1A 00 1C */	stfs f0, 0x1c(r26)
/* 8027F110  C0 1B 01 40 */	lfs f0, 0x140(r27)
/* 8027F114  D0 1A 00 20 */	stfs f0, 0x20(r26)
/* 8027F118  C0 5A 00 20 */	lfs f2, 0x20(r26)
/* 8027F11C  C0 3A 00 14 */	lfs f1, 0x14(r26)
/* 8027F120  C0 1B 01 34 */	lfs f0, 0x134(r27)
/* 8027F124  EC 01 00 32 */	fmuls f0, f1, f0
/* 8027F128  EC 82 00 2A */	fadds f4, f2, f0
/* 8027F12C  C0 5A 00 1C */	lfs f2, 0x1c(r26)
/* 8027F130  C0 3A 00 10 */	lfs f1, 0x10(r26)
/* 8027F134  C0 1B 01 30 */	lfs f0, 0x130(r27)
/* 8027F138  EC 01 00 32 */	fmuls f0, f1, f0
/* 8027F13C  EC 62 00 2A */	fadds f3, f2, f0
/* 8027F140  C0 5A 00 18 */	lfs f2, 0x18(r26)
/* 8027F144  C0 3A 00 0C */	lfs f1, 0xc(r26)
/* 8027F148  C0 1B 01 2C */	lfs f0, 0x12c(r27)
/* 8027F14C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8027F150  EC 02 00 2A */	fadds f0, f2, f0
/* 8027F154  D0 1A 00 00 */	stfs f0, 0(r26)
/* 8027F158  D0 7A 00 04 */	stfs f3, 4(r26)
/* 8027F15C  D0 9A 00 08 */	stfs f4, 8(r26)
/* 8027F160  C0 9C 00 34 */	lfs f4, 0x34(r28)
/* 8027F164  C0 42 B9 8C */	lfs f2, lit_2566(r2)
/* 8027F168  FC 04 10 00 */	fcmpu cr0, f4, f2
/* 8027F16C  41 82 00 98 */	beq lbl_8027F204
/* 8027F170  E0 1B 00 1C */	psq_l f0, 28(r27), 0, 0 /* qr0 */
/* 8027F174  10 00 00 32 */	ps_mul f0, f0, f0
/* 8027F178  C3 BB 00 24 */	lfs f29, 0x24(r27)
/* 8027F17C  10 BD 07 7A */	ps_madd f5, f29, f29, f0
/* 8027F180  10 A5 00 14 */	ps_sum0 f5, f5, f0, f0
/* 8027F184  C0 22 B9 90 */	lfs f1, lit_2567(r2)
/* 8027F188  3C 60 80 45 */	lis r3, __float_epsilon@ha /* 0x80450AEC@ha */
/* 8027F18C  C0 03 0A EC */	lfs f0, __float_epsilon@l(r3)  /* 0x80450AEC@l */
/* 8027F190  EC 01 00 32 */	fmuls f0, f1, f0
/* 8027F194  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 8027F198  4C 40 13 82 */	cror 2, 0, 2
/* 8027F19C  40 82 00 14 */	bne lbl_8027F1B0
/* 8027F1A0  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 8027F1A4  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 8027F1A8  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 8027F1AC  48 00 00 64 */	b lbl_8027F210
lbl_8027F1B0:
/* 8027F1B0  FC 05 10 40 */	fcmpo cr0, f5, f2
/* 8027F1B4  4C 40 13 82 */	cror 2, 0, 2
/* 8027F1B8  40 82 00 08 */	bne lbl_8027F1C0
/* 8027F1BC  48 00 00 28 */	b lbl_8027F1E4
lbl_8027F1C0:
/* 8027F1C0  FC 60 28 34 */	frsqrte f3, f5
/* 8027F1C4  FC 60 18 18 */	frsp f3, f3
/* 8027F1C8  C0 02 B9 94 */	lfs f0, lit_2568(r2)
/* 8027F1CC  EC 40 00 F2 */	fmuls f2, f0, f3
/* 8027F1D0  C0 22 B9 98 */	lfs f1, lit_2569(r2)
/* 8027F1D4  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8027F1D8  EC 05 00 32 */	fmuls f0, f5, f0
/* 8027F1DC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8027F1E0  EC A2 00 32 */	fmuls f5, f2, f0
lbl_8027F1E4:
/* 8027F1E4  EF E5 01 32 */	fmuls f31, f5, f4
/* 8027F1E8  E0 1B 00 1C */	psq_l f0, 28(r27), 0, 0 /* qr0 */
/* 8027F1EC  E0 3B 80 24 */	psq_l f1, 36(r27), 1, 0 /* qr0 */
/* 8027F1F0  10 00 07 D8 */	ps_muls0 f0, f0, f31
/* 8027F1F4  F0 01 00 48 */	psq_st f0, 72(r1), 0, 0 /* qr0 */
/* 8027F1F8  10 01 07 D8 */	ps_muls0 f0, f1, f31
/* 8027F1FC  F0 01 80 50 */	psq_st f0, 80(r1), 1, 0 /* qr0 */
/* 8027F200  48 00 00 10 */	b lbl_8027F210
lbl_8027F204:
/* 8027F204  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 8027F208  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 8027F20C  D0 41 00 48 */	stfs f2, 0x48(r1)
lbl_8027F210:
/* 8027F210  C0 9C 00 38 */	lfs f4, 0x38(r28)
/* 8027F214  C0 42 B9 8C */	lfs f2, lit_2566(r2)
/* 8027F218  FC 04 10 00 */	fcmpu cr0, f4, f2
/* 8027F21C  41 82 00 98 */	beq lbl_8027F2B4
/* 8027F220  E0 1B 00 28 */	psq_l f0, 40(r27), 0, 0 /* qr0 */
/* 8027F224  10 00 00 32 */	ps_mul f0, f0, f0
/* 8027F228  C3 9B 00 30 */	lfs f28, 0x30(r27)
/* 8027F22C  10 BC 07 3A */	ps_madd f5, f28, f28, f0
/* 8027F230  10 A5 00 14 */	ps_sum0 f5, f5, f0, f0
/* 8027F234  C0 22 B9 90 */	lfs f1, lit_2567(r2)
/* 8027F238  3C 60 80 45 */	lis r3, __float_epsilon@ha /* 0x80450AEC@ha */
/* 8027F23C  C0 03 0A EC */	lfs f0, __float_epsilon@l(r3)  /* 0x80450AEC@l */
/* 8027F240  EC 01 00 32 */	fmuls f0, f1, f0
/* 8027F244  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 8027F248  4C 40 13 82 */	cror 2, 0, 2
/* 8027F24C  40 82 00 14 */	bne lbl_8027F260
/* 8027F250  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 8027F254  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8027F258  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 8027F25C  48 00 00 64 */	b lbl_8027F2C0
lbl_8027F260:
/* 8027F260  FC 05 10 40 */	fcmpo cr0, f5, f2
/* 8027F264  4C 40 13 82 */	cror 2, 0, 2
/* 8027F268  40 82 00 08 */	bne lbl_8027F270
/* 8027F26C  48 00 00 28 */	b lbl_8027F294
lbl_8027F270:
/* 8027F270  FC 60 28 34 */	frsqrte f3, f5
/* 8027F274  FC 60 18 18 */	frsp f3, f3
/* 8027F278  C0 02 B9 94 */	lfs f0, lit_2568(r2)
/* 8027F27C  EC 40 00 F2 */	fmuls f2, f0, f3
/* 8027F280  C0 22 B9 98 */	lfs f1, lit_2569(r2)
/* 8027F284  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8027F288  EC 05 00 32 */	fmuls f0, f5, f0
/* 8027F28C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8027F290  EC A2 00 32 */	fmuls f5, f2, f0
lbl_8027F294:
/* 8027F294  EF C5 01 32 */	fmuls f30, f5, f4
/* 8027F298  E0 1B 00 28 */	psq_l f0, 40(r27), 0, 0 /* qr0 */
/* 8027F29C  E0 3B 80 30 */	psq_l f1, 48(r27), 1, 0 /* qr0 */
/* 8027F2A0  10 00 07 98 */	ps_muls0 f0, f0, f30
/* 8027F2A4  F0 01 00 3C */	psq_st f0, 60(r1), 0, 0 /* qr0 */
/* 8027F2A8  10 01 07 98 */	ps_muls0 f0, f1, f30
/* 8027F2AC  F0 01 80 44 */	psq_st f0, 68(r1), 1, 0 /* qr0 */
/* 8027F2B0  48 00 00 10 */	b lbl_8027F2C0
lbl_8027F2B4:
/* 8027F2B4  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 8027F2B8  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8027F2BC  D0 41 00 3C */	stfs f2, 0x3c(r1)
lbl_8027F2C0:
/* 8027F2C0  C0 1C 00 3C */	lfs f0, 0x3c(r28)
/* 8027F2C4  C0 C2 B9 8C */	lfs f6, lit_2566(r2)
/* 8027F2C8  FC 00 30 00 */	fcmpu cr0, f0, f6
/* 8027F2CC  41 82 00 B0 */	beq lbl_8027F37C
/* 8027F2D0  80 1C 00 C4 */	lwz r0, 0xc4(r28)
/* 8027F2D4  3C 60 00 19 */	lis r3, 0x0019 /* 0x0019660D@ha */
/* 8027F2D8  38 A3 66 0D */	addi r5, r3, 0x660D /* 0x0019660D@l */
/* 8027F2DC  7C 60 29 D6 */	mullw r3, r0, r5
/* 8027F2E0  3C 63 3C 6F */	addis r3, r3, 0x3c6f
/* 8027F2E4  38 83 F3 5F */	addi r4, r3, -3233
/* 8027F2E8  90 9C 00 C4 */	stw r4, 0xc4(r28)
/* 8027F2EC  80 1C 00 C4 */	lwz r0, 0xc4(r28)
/* 8027F2F0  7C 60 29 D6 */	mullw r3, r0, r5
/* 8027F2F4  3C 63 3C 6F */	addis r3, r3, 0x3c6f
/* 8027F2F8  38 03 F3 5F */	addi r0, r3, -3233
/* 8027F2FC  90 1C 00 C4 */	stw r0, 0xc4(r28)
/* 8027F300  54 00 BA 7E */	srwi r0, r0, 9
/* 8027F304  64 00 3F 80 */	oris r0, r0, 0x3f80
/* 8027F308  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8027F30C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8027F310  C0 22 B9 88 */	lfs f1, lit_2565(r2)
/* 8027F314  EC 00 08 28 */	fsubs f0, f0, f1
/* 8027F318  EC 00 00 2A */	fadds f0, f0, f0
/* 8027F31C  EC 40 08 28 */	fsubs f2, f0, f1
/* 8027F320  C0 3C 00 40 */	lfs f1, 0x40(r28)
/* 8027F324  C0 02 B9 9C */	lfs f0, lit_2570(r2)
/* 8027F328  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8027F32C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8027F330  FC 00 00 1E */	fctiwz f0, f0
/* 8027F334  D8 01 00 90 */	stfd f0, 0x90(r1)
/* 8027F338  80 61 00 94 */	lwz r3, 0x94(r1)
/* 8027F33C  54 80 84 3E */	srwi r0, r4, 0x10
/* 8027F340  7C 04 07 34 */	extsh r4, r0
/* 8027F344  38 A1 00 54 */	addi r5, r1, 0x54
/* 8027F348  48 00 13 79 */	bl JPAGetYZRotateMtx__FssPA4_f
/* 8027F34C  38 7B 00 48 */	addi r3, r27, 0x48
/* 8027F350  38 81 00 54 */	addi r4, r1, 0x54
/* 8027F354  7C 85 23 78 */	mr r5, r4
/* 8027F358  48 0C 71 8D */	bl PSMTXConcat
/* 8027F35C  C0 7C 00 3C */	lfs f3, 0x3c(r28)
/* 8027F360  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8027F364  EC 03 00 32 */	fmuls f0, f3, f0
/* 8027F368  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 8027F36C  EC 23 00 72 */	fmuls f1, f3, f1
/* 8027F370  C0 41 00 7C */	lfs f2, 0x7c(r1)
/* 8027F374  EC C3 00 B2 */	fmuls f6, f3, f2
/* 8027F378  48 00 00 0C */	b lbl_8027F384
lbl_8027F37C:
/* 8027F37C  FC 20 30 90 */	fmr f1, f6
/* 8027F380  FC 00 30 90 */	fmr f0, f6
lbl_8027F384:
/* 8027F384  C0 5C 00 44 */	lfs f2, 0x44(r28)
/* 8027F388  C1 02 B9 8C */	lfs f8, lit_2566(r2)
/* 8027F38C  FC 02 40 00 */	fcmpu cr0, f2, f8
/* 8027F390  41 82 00 B4 */	beq lbl_8027F444
/* 8027F394  80 1C 00 C4 */	lwz r0, 0xc4(r28)
/* 8027F398  3C 60 00 19 */	lis r3, 0x0019 /* 0x0019660D@ha */
/* 8027F39C  38 83 66 0D */	addi r4, r3, 0x660D /* 0x0019660D@l */
/* 8027F3A0  7C 60 21 D6 */	mullw r3, r0, r4
/* 8027F3A4  3C 63 3C 6F */	addis r3, r3, 0x3c6f
/* 8027F3A8  38 03 F3 5F */	addi r0, r3, -3233
/* 8027F3AC  90 1C 00 C4 */	stw r0, 0xc4(r28)
/* 8027F3B0  54 00 BA 7E */	srwi r0, r0, 9
/* 8027F3B4  64 00 3F 80 */	oris r0, r0, 0x3f80
/* 8027F3B8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8027F3BC  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8027F3C0  C0 A2 B9 88 */	lfs f5, lit_2565(r2)
/* 8027F3C4  EC 42 28 28 */	fsubs f2, f2, f5
/* 8027F3C8  C0 7C 00 44 */	lfs f3, 0x44(r28)
/* 8027F3CC  C0 82 B9 94 */	lfs f4, lit_2568(r2)
/* 8027F3D0  EC 42 20 28 */	fsubs f2, f2, f4
/* 8027F3D4  ED 03 00 B2 */	fmuls f8, f3, f2
/* 8027F3D8  80 1C 00 C4 */	lwz r0, 0xc4(r28)
/* 8027F3DC  7C 60 21 D6 */	mullw r3, r0, r4
/* 8027F3E0  3C 63 3C 6F */	addis r3, r3, 0x3c6f
/* 8027F3E4  38 03 F3 5F */	addi r0, r3, -3233
/* 8027F3E8  90 1C 00 C4 */	stw r0, 0xc4(r28)
/* 8027F3EC  54 00 BA 7E */	srwi r0, r0, 9
/* 8027F3F0  64 00 3F 80 */	oris r0, r0, 0x3f80
/* 8027F3F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8027F3F8  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 8027F3FC  EC 42 28 28 */	fsubs f2, f2, f5
/* 8027F400  C0 7C 00 44 */	lfs f3, 0x44(r28)
/* 8027F404  EC 42 20 28 */	fsubs f2, f2, f4
/* 8027F408  EC E3 00 B2 */	fmuls f7, f3, f2
/* 8027F40C  80 1C 00 C4 */	lwz r0, 0xc4(r28)
/* 8027F410  7C 60 21 D6 */	mullw r3, r0, r4
/* 8027F414  3C 63 3C 6F */	addis r3, r3, 0x3c6f
/* 8027F418  38 03 F3 5F */	addi r0, r3, -3233
/* 8027F41C  90 1C 00 C4 */	stw r0, 0xc4(r28)
/* 8027F420  54 00 BA 7E */	srwi r0, r0, 9
/* 8027F424  64 00 3F 80 */	oris r0, r0, 0x3f80
/* 8027F428  90 01 00 08 */	stw r0, 8(r1)
/* 8027F42C  C0 41 00 08 */	lfs f2, 8(r1)
/* 8027F430  EC 42 28 28 */	fsubs f2, f2, f5
/* 8027F434  C0 7C 00 44 */	lfs f3, 0x44(r28)
/* 8027F438  EC 42 20 28 */	fsubs f2, f2, f4
/* 8027F43C  EC A3 00 B2 */	fmuls f5, f3, f2
/* 8027F440  48 00 00 0C */	b lbl_8027F44C
lbl_8027F444:
/* 8027F444  FC E0 40 90 */	fmr f7, f8
/* 8027F448  FC A0 40 90 */	fmr f5, f8
lbl_8027F44C:
/* 8027F44C  80 9C 00 C4 */	lwz r4, 0xc4(r28)
/* 8027F450  3C 60 00 19 */	lis r3, 0x0019 /* 0x0019660D@ha */
/* 8027F454  38 03 66 0D */	addi r0, r3, 0x660D /* 0x0019660D@l */
/* 8027F458  7C 64 01 D6 */	mullw r3, r4, r0
/* 8027F45C  3C 63 3C 6F */	addis r3, r3, 0x3c6f
/* 8027F460  38 03 F3 5F */	addi r0, r3, -3233
/* 8027F464  90 1C 00 C4 */	stw r0, 0xc4(r28)
/* 8027F468  54 00 BA 7E */	srwi r0, r0, 9
/* 8027F46C  64 00 3F 80 */	oris r0, r0, 0x3f80
/* 8027F470  90 01 00 28 */	stw r0, 0x28(r1)
/* 8027F474  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 8027F478  C0 62 B9 88 */	lfs f3, lit_2565(r2)
/* 8027F47C  EC 42 18 28 */	fsubs f2, f2, f3
/* 8027F480  EC 42 10 2A */	fadds f2, f2, f2
/* 8027F484  EC 82 18 28 */	fsubs f4, f2, f3
/* 8027F488  80 7D 00 00 */	lwz r3, 0(r29)
/* 8027F48C  C0 43 00 48 */	lfs f2, 0x48(r3)
/* 8027F490  EC 44 00 B2 */	fmuls f2, f4, f2
/* 8027F494  ED 23 10 2A */	fadds f9, f3, f2
/* 8027F498  C0 61 00 50 */	lfs f3, 0x50(r1)
/* 8027F49C  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 8027F4A0  EC 43 10 2A */	fadds f2, f3, f2
/* 8027F4A4  EC 46 10 2A */	fadds f2, f6, f2
/* 8027F4A8  EC 48 10 2A */	fadds f2, f8, f2
/* 8027F4AC  EC 89 00 B2 */	fmuls f4, f9, f2
/* 8027F4B0  C0 61 00 4C */	lfs f3, 0x4c(r1)
/* 8027F4B4  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 8027F4B8  EC 43 10 2A */	fadds f2, f3, f2
/* 8027F4BC  EC 21 10 2A */	fadds f1, f1, f2
/* 8027F4C0  EC 27 08 2A */	fadds f1, f7, f1
/* 8027F4C4  EC 69 00 72 */	fmuls f3, f9, f1
/* 8027F4C8  C0 41 00 48 */	lfs f2, 0x48(r1)
/* 8027F4CC  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 8027F4D0  EC 22 08 2A */	fadds f1, f2, f1
/* 8027F4D4  EC 00 08 2A */	fadds f0, f0, f1
/* 8027F4D8  EC 05 00 2A */	fadds f0, f5, f0
/* 8027F4DC  EC 09 00 32 */	fmuls f0, f9, f0
/* 8027F4E0  D0 1A 00 30 */	stfs f0, 0x30(r26)
/* 8027F4E4  D0 7A 00 34 */	stfs f3, 0x34(r26)
/* 8027F4E8  D0 9A 00 38 */	stfs f4, 0x38(r26)
/* 8027F4EC  80 7C 00 E8 */	lwz r3, 0xe8(r28)
/* 8027F4F0  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 8027F4F4  80 63 00 00 */	lwz r3, 0(r3)
/* 8027F4F8  80 03 00 08 */	lwz r0, 8(r3)
/* 8027F4FC  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8027F500  41 82 00 24 */	beq lbl_8027F524
/* 8027F504  E0 3A 00 30 */	psq_l f1, 48(r26), 0, 0 /* qr0 */
/* 8027F508  E0 1C 00 00 */	psq_l f0, 0(r28), 0, 0 /* qr0 */
/* 8027F50C  10 01 00 32 */	ps_mul f0, f1, f0
/* 8027F510  F0 1A 00 30 */	psq_st f0, 48(r26), 0, 0 /* qr0 */
/* 8027F514  C0 3A 00 38 */	lfs f1, 0x38(r26)
/* 8027F518  C0 1C 00 08 */	lfs f0, 8(r28)
/* 8027F51C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8027F520  D0 1A 00 38 */	stfs f0, 0x38(r26)
lbl_8027F524:
/* 8027F524  38 7B 00 A8 */	addi r3, r27, 0xa8
/* 8027F528  38 9A 00 30 */	addi r4, r26, 0x30
/* 8027F52C  7C 85 23 78 */	mr r5, r4
/* 8027F530  48 0C 79 1D */	bl PSMTXMultVecSR
/* 8027F534  C0 02 B9 8C */	lfs f0, lit_2566(r2)
/* 8027F538  D0 1A 00 44 */	stfs f0, 0x44(r26)
/* 8027F53C  D0 1A 00 40 */	stfs f0, 0x40(r26)
/* 8027F540  D0 1A 00 3C */	stfs f0, 0x3c(r26)
/* 8027F544  80 9C 00 C4 */	lwz r4, 0xc4(r28)
/* 8027F548  3C 60 00 19 */	lis r3, 0x0019 /* 0x0019660D@ha */
/* 8027F54C  38 03 66 0D */	addi r0, r3, 0x660D /* 0x0019660D@l */
/* 8027F550  7C 64 01 D6 */	mullw r3, r4, r0
/* 8027F554  3C 63 3C 6F */	addis r3, r3, 0x3c6f
/* 8027F558  38 63 F3 5F */	addi r3, r3, -3233
/* 8027F55C  90 7C 00 C4 */	stw r3, 0xc4(r28)
/* 8027F560  54 63 BA 7E */	srwi r3, r3, 9
/* 8027F564  64 63 3F 80 */	oris r3, r3, 0x3f80
/* 8027F568  90 61 00 34 */	stw r3, 0x34(r1)
/* 8027F56C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8027F570  C0 42 B9 88 */	lfs f2, lit_2565(r2)
/* 8027F574  EC 20 10 28 */	fsubs f1, f0, f2
/* 8027F578  80 7D 00 00 */	lwz r3, 0(r29)
/* 8027F57C  C0 03 00 64 */	lfs f0, 0x64(r3)
/* 8027F580  EC 00 00 72 */	fmuls f0, f0, f1
/* 8027F584  EC 02 00 28 */	fsubs f0, f2, f0
/* 8027F588  D0 1A 00 70 */	stfs f0, 0x70(r26)
/* 8027F58C  D0 5A 00 74 */	stfs f2, 0x74(r26)
/* 8027F590  38 60 00 00 */	li r3, 0
/* 8027F594  90 7A 00 78 */	stw r3, 0x78(r26)
/* 8027F598  C0 7B 00 CC */	lfs f3, 0xcc(r27)
/* 8027F59C  C0 3B 00 BC */	lfs f1, 0xbc(r27)
/* 8027F5A0  C0 1B 00 AC */	lfs f0, 0xac(r27)
/* 8027F5A4  D0 1A 00 54 */	stfs f0, 0x54(r26)
/* 8027F5A8  D0 3A 00 58 */	stfs f1, 0x58(r26)
/* 8027F5AC  D0 7A 00 5C */	stfs f3, 0x5c(r26)
/* 8027F5B0  88 7C 01 08 */	lbz r3, 0x108(r28)
/* 8027F5B4  98 7A 00 8C */	stb r3, 0x8c(r26)
/* 8027F5B8  88 7C 01 09 */	lbz r3, 0x109(r28)
/* 8027F5BC  98 7A 00 8D */	stb r3, 0x8d(r26)
/* 8027F5C0  88 7C 01 0A */	lbz r3, 0x10a(r28)
/* 8027F5C4  98 7A 00 8E */	stb r3, 0x8e(r26)
/* 8027F5C8  88 7C 01 0B */	lbz r3, 0x10b(r28)
/* 8027F5CC  98 7A 00 8F */	stb r3, 0x8f(r26)
/* 8027F5D0  88 7C 01 0C */	lbz r3, 0x10c(r28)
/* 8027F5D4  98 7A 00 90 */	stb r3, 0x90(r26)
/* 8027F5D8  88 7C 01 0D */	lbz r3, 0x10d(r28)
/* 8027F5DC  98 7A 00 91 */	stb r3, 0x91(r26)
/* 8027F5E0  88 7C 01 0E */	lbz r3, 0x10e(r28)
/* 8027F5E4  98 7A 00 92 */	stb r3, 0x92(r26)
/* 8027F5E8  88 7C 01 0F */	lbz r3, 0x10f(r28)
/* 8027F5EC  98 7A 00 93 */	stb r3, 0x93(r26)
/* 8027F5F0  80 7E 00 00 */	lwz r3, 0(r30)
/* 8027F5F4  88 83 00 2E */	lbz r4, 0x2e(r3)
/* 8027F5F8  80 7C 00 C4 */	lwz r3, 0xc4(r28)
/* 8027F5FC  7C 63 01 D6 */	mullw r3, r3, r0
/* 8027F600  3C 63 3C 6F */	addis r3, r3, 0x3c6f
/* 8027F604  38 63 F3 5F */	addi r3, r3, -3233
/* 8027F608  90 7C 00 C4 */	stw r3, 0xc4(r28)
/* 8027F60C  54 63 BA 7E */	srwi r3, r3, 9
/* 8027F610  64 63 3F 80 */	oris r3, r3, 0x3f80
/* 8027F614  90 61 00 30 */	stw r3, 0x30(r1)
/* 8027F618  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8027F61C  EC 60 10 28 */	fsubs f3, f0, f2
/* 8027F620  C8 22 B9 A8 */	lfd f1, lit_2574(r2)
/* 8027F624  90 81 00 94 */	stw r4, 0x94(r1)
/* 8027F628  3C 60 43 30 */	lis r3, 0x4330
/* 8027F62C  90 61 00 90 */	stw r3, 0x90(r1)
/* 8027F630  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 8027F634  EC 00 08 28 */	fsubs f0, f0, f1
/* 8027F638  EC 03 00 32 */	fmuls f0, f3, f0
/* 8027F63C  FC 00 00 1E */	fctiwz f0, f0
/* 8027F640  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 8027F644  80 61 00 8C */	lwz r3, 0x8c(r1)
/* 8027F648  98 7A 00 95 */	stb r3, 0x95(r26)
/* 8027F64C  28 1F 00 00 */	cmplwi r31, 0
/* 8027F650  41 82 00 6C */	beq lbl_8027F6BC
/* 8027F654  80 7F 00 00 */	lwz r3, 0(r31)
/* 8027F658  80 63 00 08 */	lwz r3, 8(r3)
/* 8027F65C  54 63 07 FF */	clrlwi. r3, r3, 0x1f
/* 8027F660  41 82 00 5C */	beq lbl_8027F6BC
/* 8027F664  80 7C 00 C4 */	lwz r3, 0xc4(r28)
/* 8027F668  7C 63 01 D6 */	mullw r3, r3, r0
/* 8027F66C  3C 63 3C 6F */	addis r3, r3, 0x3c6f
/* 8027F670  38 03 F3 5F */	addi r0, r3, -3233
/* 8027F674  90 1C 00 C4 */	stw r0, 0xc4(r28)
/* 8027F678  54 00 BA 7E */	srwi r0, r0, 9
/* 8027F67C  64 00 3F 80 */	oris r0, r0, 0x3f80
/* 8027F680  90 01 00 24 */	stw r0, 0x24(r1)
/* 8027F684  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8027F688  EC 00 10 28 */	fsubs f0, f0, f2
/* 8027F68C  EC 00 00 2A */	fadds f0, f0, f0
/* 8027F690  EC 60 10 28 */	fsubs f3, f0, f2
/* 8027F694  C0 3C 00 FC */	lfs f1, 0xfc(r28)
/* 8027F698  80 7F 00 00 */	lwz r3, 0(r31)
/* 8027F69C  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8027F6A0  EC 03 00 32 */	fmuls f0, f3, f0
/* 8027F6A4  EC 02 00 2A */	fadds f0, f2, f0
/* 8027F6A8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8027F6AC  D0 1A 00 68 */	stfs f0, 0x68(r26)
/* 8027F6B0  D0 1A 00 64 */	stfs f0, 0x64(r26)
/* 8027F6B4  D0 1A 00 60 */	stfs f0, 0x60(r26)
/* 8027F6B8  48 00 00 14 */	b lbl_8027F6CC
lbl_8027F6BC:
/* 8027F6BC  C0 1C 00 FC */	lfs f0, 0xfc(r28)
/* 8027F6C0  D0 1A 00 68 */	stfs f0, 0x68(r26)
/* 8027F6C4  D0 1A 00 64 */	stfs f0, 0x64(r26)
/* 8027F6C8  D0 1A 00 60 */	stfs f0, 0x60(r26)
lbl_8027F6CC:
/* 8027F6CC  38 00 00 FF */	li r0, 0xff
/* 8027F6D0  98 1A 00 96 */	stb r0, 0x96(r26)
/* 8027F6D4  28 1F 00 00 */	cmplwi r31, 0
/* 8027F6D8  41 82 00 68 */	beq lbl_8027F740
/* 8027F6DC  80 7F 00 00 */	lwz r3, 0(r31)
/* 8027F6E0  80 03 00 08 */	lwz r0, 8(r3)
/* 8027F6E4  54 00 03 9D */	rlwinm. r0, r0, 0, 0xe, 0xe
/* 8027F6E8  41 82 00 58 */	beq lbl_8027F740
/* 8027F6EC  80 9C 00 C4 */	lwz r4, 0xc4(r28)
/* 8027F6F0  3C 60 00 19 */	lis r3, 0x0019 /* 0x0019660D@ha */
/* 8027F6F4  38 03 66 0D */	addi r0, r3, 0x660D /* 0x0019660D@l */
/* 8027F6F8  7C 64 01 D6 */	mullw r3, r4, r0
/* 8027F6FC  3C 63 3C 6F */	addis r3, r3, 0x3c6f
/* 8027F700  38 03 F3 5F */	addi r0, r3, -3233
/* 8027F704  90 1C 00 C4 */	stw r0, 0xc4(r28)
/* 8027F708  54 00 BA 7E */	srwi r0, r0, 9
/* 8027F70C  64 00 3F 80 */	oris r0, r0, 0x3f80
/* 8027F710  90 01 00 20 */	stw r0, 0x20(r1)
/* 8027F714  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8027F718  C0 22 B9 88 */	lfs f1, lit_2565(r2)
/* 8027F71C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8027F720  EC 00 00 2A */	fadds f0, f0, f0
/* 8027F724  EC 40 08 28 */	fsubs f2, f0, f1
/* 8027F728  80 7F 00 00 */	lwz r3, 0(r31)
/* 8027F72C  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 8027F730  EC 02 00 32 */	fmuls f0, f2, f0
/* 8027F734  EC 01 00 2A */	fadds f0, f1, f0
/* 8027F738  D0 1A 00 6C */	stfs f0, 0x6c(r26)
/* 8027F73C  48 00 00 0C */	b lbl_8027F748
lbl_8027F740:
/* 8027F740  C0 02 B9 88 */	lfs f0, lit_2565(r2)
/* 8027F744  D0 1A 00 6C */	stfs f0, 0x6c(r26)
lbl_8027F748:
/* 8027F748  28 1F 00 00 */	cmplwi r31, 0
/* 8027F74C  41 82 01 38 */	beq lbl_8027F884
/* 8027F750  80 7F 00 00 */	lwz r3, 0(r31)
/* 8027F754  80 03 00 08 */	lwz r0, 8(r3)
/* 8027F758  54 00 01 CF */	rlwinm. r0, r0, 0, 7, 7
/* 8027F75C  41 82 01 18 */	beq lbl_8027F874
/* 8027F760  80 1C 00 C4 */	lwz r0, 0xc4(r28)
/* 8027F764  3C 60 00 19 */	lis r3, 0x0019 /* 0x0019660D@ha */
/* 8027F768  38 83 66 0D */	addi r4, r3, 0x660D /* 0x0019660D@l */
/* 8027F76C  7C 60 21 D6 */	mullw r3, r0, r4
/* 8027F770  3C 63 3C 6F */	addis r3, r3, 0x3c6f
/* 8027F774  38 03 F3 5F */	addi r0, r3, -3233
/* 8027F778  90 1C 00 C4 */	stw r0, 0xc4(r28)
/* 8027F77C  54 00 BA 7E */	srwi r0, r0, 9
/* 8027F780  64 00 3F 80 */	oris r0, r0, 0x3f80
/* 8027F784  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8027F788  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8027F78C  C0 62 B9 88 */	lfs f3, lit_2565(r2)
/* 8027F790  EC 80 18 28 */	fsubs f4, f0, f3
/* 8027F794  80 7F 00 00 */	lwz r3, 0(r31)
/* 8027F798  C0 43 00 4C */	lfs f2, 0x4c(r3)
/* 8027F79C  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 8027F7A0  C0 02 B9 94 */	lfs f0, lit_2568(r2)
/* 8027F7A4  EC 04 00 28 */	fsubs f0, f4, f0
/* 8027F7A8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8027F7AC  EC 02 00 2A */	fadds f0, f2, f0
/* 8027F7B0  FC 00 00 1E */	fctiwz f0, f0
/* 8027F7B4  D8 01 00 90 */	stfd f0, 0x90(r1)
/* 8027F7B8  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8027F7BC  B0 1A 00 88 */	sth r0, 0x88(r26)
/* 8027F7C0  80 1C 00 C4 */	lwz r0, 0xc4(r28)
/* 8027F7C4  7C 60 21 D6 */	mullw r3, r0, r4
/* 8027F7C8  3C 63 3C 6F */	addis r3, r3, 0x3c6f
/* 8027F7CC  38 03 F3 5F */	addi r0, r3, -3233
/* 8027F7D0  90 1C 00 C4 */	stw r0, 0xc4(r28)
/* 8027F7D4  54 00 BA 7E */	srwi r0, r0, 9
/* 8027F7D8  64 00 3F 80 */	oris r0, r0, 0x3f80
/* 8027F7DC  90 01 00 18 */	stw r0, 0x18(r1)
/* 8027F7E0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8027F7E4  EC 00 18 28 */	fsubs f0, f0, f3
/* 8027F7E8  EC 00 00 2A */	fadds f0, f0, f0
/* 8027F7EC  EC 40 18 28 */	fsubs f2, f0, f3
/* 8027F7F0  80 7F 00 00 */	lwz r3, 0(r31)
/* 8027F7F4  C0 23 00 54 */	lfs f1, 0x54(r3)
/* 8027F7F8  C0 03 00 58 */	lfs f0, 0x58(r3)
/* 8027F7FC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8027F800  EC 03 00 2A */	fadds f0, f3, f0
/* 8027F804  EC 01 00 32 */	fmuls f0, f1, f0
/* 8027F808  FC 00 00 1E */	fctiwz f0, f0
/* 8027F80C  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 8027F810  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 8027F814  B0 1A 00 8A */	sth r0, 0x8a(r26)
/* 8027F818  80 1C 00 C4 */	lwz r0, 0xc4(r28)
/* 8027F81C  7C 60 21 D6 */	mullw r3, r0, r4
/* 8027F820  3C 63 3C 6F */	addis r3, r3, 0x3c6f
/* 8027F824  38 03 F3 5F */	addi r0, r3, -3233
/* 8027F828  90 1C 00 C4 */	stw r0, 0xc4(r28)
/* 8027F82C  54 00 BA 7E */	srwi r0, r0, 9
/* 8027F830  64 00 3F 80 */	oris r0, r0, 0x3f80
/* 8027F834  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027F838  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8027F83C  EC 00 18 28 */	fsubs f0, f0, f3
/* 8027F840  EC 00 00 2A */	fadds f0, f0, f0
/* 8027F844  EC 20 18 28 */	fsubs f1, f0, f3
/* 8027F848  80 7F 00 00 */	lwz r3, 0(r31)
/* 8027F84C  C0 03 00 5C */	lfs f0, 0x5c(r3)
/* 8027F850  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8027F854  40 80 00 0C */	bge lbl_8027F860
/* 8027F858  A8 1A 00 8A */	lha r0, 0x8a(r26)
/* 8027F85C  48 00 00 10 */	b lbl_8027F86C
lbl_8027F860:
/* 8027F860  A8 1A 00 8A */	lha r0, 0x8a(r26)
/* 8027F864  7C 00 00 D0 */	neg r0, r0
/* 8027F868  7C 00 07 34 */	extsh r0, r0
lbl_8027F86C:
/* 8027F86C  B0 1A 00 8A */	sth r0, 0x8a(r26)
/* 8027F870  48 00 00 20 */	b lbl_8027F890
lbl_8027F874:
/* 8027F874  38 00 00 00 */	li r0, 0
/* 8027F878  B0 1A 00 88 */	sth r0, 0x88(r26)
/* 8027F87C  B0 1A 00 8A */	sth r0, 0x8a(r26)
/* 8027F880  48 00 00 10 */	b lbl_8027F890
lbl_8027F884:
/* 8027F884  38 00 00 00 */	li r0, 0
/* 8027F888  B0 1A 00 88 */	sth r0, 0x88(r26)
/* 8027F88C  B0 1A 00 8A */	sth r0, 0x8a(r26)
lbl_8027F890:
/* 8027F890  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, 0 /* qr0 */
/* 8027F894  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 8027F898  E3 C1 00 D8 */	psq_l f30, 216(r1), 0, 0 /* qr0 */
/* 8027F89C  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 8027F8A0  E3 A1 00 C8 */	psq_l f29, 200(r1), 0, 0 /* qr0 */
/* 8027F8A4  CB A1 00 C0 */	lfd f29, 0xc0(r1)
/* 8027F8A8  E3 81 00 B8 */	psq_l f28, 184(r1), 0, 0 /* qr0 */
/* 8027F8AC  CB 81 00 B0 */	lfd f28, 0xb0(r1)
/* 8027F8B0  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8027F8B4  48 0E 29 69 */	bl _restgpr_26
/* 8027F8B8  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 8027F8BC  7C 08 03 A6 */	mtlr r0
/* 8027F8C0  38 21 00 F0 */	addi r1, r1, 0xf0
/* 8027F8C4  4E 80 00 20 */	blr 
