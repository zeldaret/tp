lbl_8027B87C:
/* 8027B87C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8027B880  80 C3 00 00 */	lwz r6, 0(r3)
/* 8027B884  80 06 00 C4 */	lwz r0, 0xc4(r6)
/* 8027B888  3C 80 00 19 */	lis r4, 0x0019 /* 0x0019660D@ha */
/* 8027B88C  38 A4 66 0D */	addi r5, r4, 0x660D /* 0x0019660D@l */
/* 8027B890  7C 80 29 D6 */	mullw r4, r0, r5
/* 8027B894  3C 84 3C 6F */	addis r4, r4, 0x3c6f
/* 8027B898  38 04 F3 5F */	addi r0, r4, -3233
/* 8027B89C  90 06 00 C4 */	stw r0, 0xc4(r6)
/* 8027B8A0  54 00 84 3E */	srwi r0, r0, 0x10
/* 8027B8A4  7C 00 07 34 */	extsh r0, r0
/* 8027B8A8  C0 43 00 3C */	lfs f2, 0x3c(r3)
/* 8027B8AC  C8 22 B9 20 */	lfd f1, lit_2321(r2)
/* 8027B8B0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8027B8B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027B8B8  3C 00 43 30 */	lis r0, 0x4330
/* 8027B8BC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8027B8C0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8027B8C4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8027B8C8  EC 02 00 32 */	fmuls f0, f2, f0
/* 8027B8CC  FC 00 00 1E */	fctiwz f0, f0
/* 8027B8D0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8027B8D4  81 01 00 1C */	lwz r8, 0x1c(r1)
/* 8027B8D8  80 C3 00 00 */	lwz r6, 0(r3)
/* 8027B8DC  80 06 00 C4 */	lwz r0, 0xc4(r6)
/* 8027B8E0  7C 80 29 D6 */	mullw r4, r0, r5
/* 8027B8E4  3C 84 3C 6F */	addis r4, r4, 0x3c6f
/* 8027B8E8  38 04 F3 5F */	addi r0, r4, -3233
/* 8027B8EC  90 06 00 C4 */	stw r0, 0xc4(r6)
/* 8027B8F0  54 00 BA 7E */	srwi r0, r0, 9
/* 8027B8F4  64 00 3F 80 */	oris r0, r0, 0x3f80
/* 8027B8F8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8027B8FC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8027B900  C0 22 B9 14 */	lfs f1, lit_2288(r2)
/* 8027B904  EC 00 08 28 */	fsubs f0, f0, f1
/* 8027B908  FC 80 00 90 */	fmr f4, f0
/* 8027B90C  80 E3 00 00 */	lwz r7, 0(r3)
/* 8027B910  80 87 00 E8 */	lwz r4, 0xe8(r7)
/* 8027B914  80 84 00 2C */	lwz r4, 0x2c(r4)
/* 8027B918  80 84 00 00 */	lwz r4, 0(r4)
/* 8027B91C  80 04 00 08 */	lwz r0, 8(r4)
/* 8027B920  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8027B924  41 82 00 0C */	beq lbl_8027B930
/* 8027B928  EC 00 00 32 */	fmuls f0, f0, f0
/* 8027B92C  EC 81 00 28 */	fsubs f4, f1, f0
lbl_8027B930:
/* 8027B930  C0 43 00 34 */	lfs f2, 0x34(r3)
/* 8027B934  C0 63 00 38 */	lfs f3, 0x38(r3)
/* 8027B938  C0 22 B9 14 */	lfs f1, lit_2288(r2)
/* 8027B93C  EC 01 18 28 */	fsubs f0, f1, f3
/* 8027B940  EC 04 00 32 */	fmuls f0, f4, f0
/* 8027B944  EC 03 00 2A */	fadds f0, f3, f0
/* 8027B948  EC 62 00 32 */	fmuls f3, f2, f0
/* 8027B94C  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha
/* 8027B950  38 C4 9A 20 */	addi r6, r4, sincosTable___5JMath@l
/* 8027B954  55 08 04 38 */	rlwinm r8, r8, 0, 0x10, 0x1c
/* 8027B958  7C 86 42 14 */	add r4, r6, r8
/* 8027B95C  C0 04 00 04 */	lfs f0, 4(r4)
/* 8027B960  EC 43 00 32 */	fmuls f2, f3, f0
/* 8027B964  80 A7 00 C4 */	lwz r5, 0xc4(r7)
/* 8027B968  3C 80 00 19 */	lis r4, 0x0019 /* 0x0019660D@ha */
/* 8027B96C  38 04 66 0D */	addi r0, r4, 0x660D /* 0x0019660D@l */
/* 8027B970  7C 85 01 D6 */	mullw r4, r5, r0
/* 8027B974  3C 84 3C 6F */	addis r4, r4, 0x3c6f
/* 8027B978  38 04 F3 5F */	addi r0, r4, -3233
/* 8027B97C  90 07 00 C4 */	stw r0, 0xc4(r7)
/* 8027B980  54 00 BA 7E */	srwi r0, r0, 9
/* 8027B984  64 00 3F 80 */	oris r0, r0, 0x3f80
/* 8027B988  90 01 00 08 */	stw r0, 8(r1)
/* 8027B98C  C0 01 00 08 */	lfs f0, 8(r1)
/* 8027B990  EC 00 08 28 */	fsubs f0, f0, f1
/* 8027B994  EC 00 00 2A */	fadds f0, f0, f0
/* 8027B998  EC 20 08 28 */	fsubs f1, f0, f1
/* 8027B99C  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 8027B9A0  EC 20 00 72 */	fmuls f1, f0, f1
/* 8027B9A4  7C 06 44 2E */	lfsx f0, r6, r8
/* 8027B9A8  EC 03 00 32 */	fmuls f0, f3, f0
/* 8027B9AC  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8027B9B0  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 8027B9B4  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 8027B9B8  E0 23 00 10 */	psq_l f1, 16(r3), 0, 0 /* qr0 */
/* 8027B9BC  E0 03 01 14 */	psq_l f0, 276(r3), 0, 0 /* qr0 */
/* 8027B9C0  10 01 00 32 */	ps_mul f0, f1, f0
/* 8027B9C4  F0 03 00 1C */	psq_st f0, 28(r3), 0, 0 /* qr0 */
/* 8027B9C8  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 8027B9CC  C0 03 01 1C */	lfs f0, 0x11c(r3)
/* 8027B9D0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8027B9D4  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 8027B9D8  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 8027B9DC  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8027B9E0  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 8027B9E4  C0 02 B9 10 */	lfs f0, lit_2287(r2)
/* 8027B9E8  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 8027B9EC  D0 23 00 30 */	stfs f1, 0x30(r3)
/* 8027B9F0  38 21 00 20 */	addi r1, r1, 0x20
/* 8027B9F4  4E 80 00 20 */	blr 
