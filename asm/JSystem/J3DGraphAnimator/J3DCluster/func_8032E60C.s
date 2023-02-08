lbl_8032E60C:
/* 8032E60C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8032E610  7C 08 02 A6 */	mflr r0
/* 8032E614  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8032E618  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 8032E61C  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 8032E620  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 8032E624  F3 C1 00 88 */	psq_st f30, 136(r1), 0, 0 /* qr0 */
/* 8032E628  DB A1 00 70 */	stfd f29, 0x70(r1)
/* 8032E62C  F3 A1 00 78 */	psq_st f29, 120(r1), 0, 0 /* qr0 */
/* 8032E630  DB 81 00 60 */	stfd f28, 0x60(r1)
/* 8032E634  F3 81 00 68 */	psq_st f28, 104(r1), 0, 0 /* qr0 */
/* 8032E638  DB 61 00 50 */	stfd f27, 0x50(r1)
/* 8032E63C  F3 61 00 58 */	psq_st f27, 88(r1), 0, 0 /* qr0 */
/* 8032E640  39 61 00 50 */	addi r11, r1, 0x50
/* 8032E644  48 03 3B 79 */	bl _savegpr_21
/* 8032E648  7C BF 2B 78 */	mr r31, r5
/* 8032E64C  7C D6 33 78 */	mr r22, r6
/* 8032E650  7C F5 3B 78 */	mr r21, r7
/* 8032E654  83 64 00 0C */	lwz r27, 0xc(r4)
/* 8032E658  80 83 00 00 */	lwz r4, 0(r3)
/* 8032E65C  83 C4 00 1C */	lwz r30, 0x1c(r4)
/* 8032E660  83 43 00 0C */	lwz r26, 0xc(r3)
/* 8032E664  A2 E5 00 10 */	lhz r23, 0x10(r5)
/* 8032E668  A3 25 00 16 */	lhz r25, 0x16(r5)
/* 8032E66C  3B 80 00 00 */	li r28, 0
/* 8032E670  C3 62 CA 7C */	lfs f27, lit_866(r2)
/* 8032E674  48 00 01 24 */	b lbl_8032E798
lbl_8032E678:
/* 8032E678  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 8032E67C  1C 00 00 03 */	mulli r0, r0, 3
/* 8032E680  54 00 10 3A */	slwi r0, r0, 2
/* 8032E684  7C 7A 02 14 */	add r3, r26, r0
/* 8032E688  D3 63 00 00 */	stfs f27, 0(r3)
/* 8032E68C  D3 63 00 04 */	stfs f27, 4(r3)
/* 8032E690  D3 63 00 08 */	stfs f27, 8(r3)
/* 8032E694  38 A0 00 00 */	li r5, 0
/* 8032E698  57 84 0B FC */	rlwinm r4, r28, 1, 0xf, 0x1e
/* 8032E69C  48 00 00 E4 */	b lbl_8032E780
lbl_8032E6A0:
/* 8032E6A0  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 8032E6A4  1C C0 00 0C */	mulli r6, r0, 0xc
/* 8032E6A8  38 C6 00 08 */	addi r6, r6, 8
/* 8032E6AC  7C D6 30 2E */	lwzx r6, r22, r6
/* 8032E6B0  7C E4 32 2E */	lhzx r7, r4, r6
/* 8032E6B4  54 E6 04 21 */	rlwinm. r6, r7, 0, 0x10, 0x10
/* 8032E6B8  41 82 00 18 */	beq lbl_8032E6D0
/* 8032E6BC  54 E6 04 DE */	rlwinm r6, r7, 0, 0x13, 0xf
/* 8032E6C0  1C C6 00 0C */	mulli r6, r6, 0xc
/* 8032E6C4  7C 1E 34 2E */	lfsx f0, r30, r6
/* 8032E6C8  FC 40 00 50 */	fneg f2, f0
/* 8032E6CC  48 00 00 10 */	b lbl_8032E6DC
lbl_8032E6D0:
/* 8032E6D0  54 E6 04 DE */	rlwinm r6, r7, 0, 0x13, 0xf
/* 8032E6D4  1C C6 00 0C */	mulli r6, r6, 0xc
/* 8032E6D8  7C 5E 34 2E */	lfsx f2, r30, r6
lbl_8032E6DC:
/* 8032E6DC  54 E6 04 63 */	rlwinm. r6, r7, 0, 0x11, 0x11
/* 8032E6E0  41 82 00 1C */	beq lbl_8032E6FC
/* 8032E6E4  54 E6 04 DE */	rlwinm r6, r7, 0, 0x13, 0xf
/* 8032E6E8  1C C6 00 0C */	mulli r6, r6, 0xc
/* 8032E6EC  38 C6 00 04 */	addi r6, r6, 4
/* 8032E6F0  7C 1E 34 2E */	lfsx f0, r30, r6
/* 8032E6F4  FC 60 00 50 */	fneg f3, f0
/* 8032E6F8  48 00 00 14 */	b lbl_8032E70C
lbl_8032E6FC:
/* 8032E6FC  54 E6 04 DE */	rlwinm r6, r7, 0, 0x13, 0xf
/* 8032E700  1C C6 00 0C */	mulli r6, r6, 0xc
/* 8032E704  38 C6 00 04 */	addi r6, r6, 4
/* 8032E708  7C 7E 34 2E */	lfsx f3, r30, r6
lbl_8032E70C:
/* 8032E70C  54 E6 04 A5 */	rlwinm. r6, r7, 0, 0x12, 0x12
/* 8032E710  41 82 00 1C */	beq lbl_8032E72C
/* 8032E714  54 E6 04 DE */	rlwinm r6, r7, 0, 0x13, 0xf
/* 8032E718  1C C6 00 0C */	mulli r6, r6, 0xc
/* 8032E71C  38 C6 00 08 */	addi r6, r6, 8
/* 8032E720  7C 1E 34 2E */	lfsx f0, r30, r6
/* 8032E724  FC 80 00 50 */	fneg f4, f0
/* 8032E728  48 00 00 14 */	b lbl_8032E73C
lbl_8032E72C:
/* 8032E72C  54 E6 04 DE */	rlwinm r6, r7, 0, 0x13, 0xf
/* 8032E730  1C C6 00 0C */	mulli r6, r6, 0xc
/* 8032E734  38 C6 00 08 */	addi r6, r6, 8
/* 8032E738  7C 9E 34 2E */	lfsx f4, r30, r6
lbl_8032E73C:
/* 8032E73C  C0 23 00 00 */	lfs f1, 0(r3)
/* 8032E740  54 00 10 3A */	slwi r0, r0, 2
/* 8032E744  7C 15 04 2E */	lfsx f0, r21, r0
/* 8032E748  EC 02 00 32 */	fmuls f0, f2, f0
/* 8032E74C  EC 01 00 2A */	fadds f0, f1, f0
/* 8032E750  D0 03 00 00 */	stfs f0, 0(r3)
/* 8032E754  C0 23 00 04 */	lfs f1, 4(r3)
/* 8032E758  7C 15 04 2E */	lfsx f0, r21, r0
/* 8032E75C  EC 03 00 32 */	fmuls f0, f3, f0
/* 8032E760  EC 01 00 2A */	fadds f0, f1, f0
/* 8032E764  D0 03 00 04 */	stfs f0, 4(r3)
/* 8032E768  C0 23 00 08 */	lfs f1, 8(r3)
/* 8032E76C  7C 15 04 2E */	lfsx f0, r21, r0
/* 8032E770  EC 04 00 32 */	fmuls f0, f4, f0
/* 8032E774  EC 01 00 2A */	fadds f0, f1, f0
/* 8032E778  D0 03 00 08 */	stfs f0, 8(r3)
/* 8032E77C  38 A5 00 01 */	addi r5, r5, 1
lbl_8032E780:
/* 8032E780  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 8032E784  7C 00 B8 40 */	cmplw r0, r23
/* 8032E788  41 80 FF 18 */	blt lbl_8032E6A0
/* 8032E78C  7C 64 1B 78 */	mr r4, r3
/* 8032E790  48 01 89 65 */	bl PSVECNormalize
/* 8032E794  3B 9C 00 01 */	addi r28, r28, 1
lbl_8032E798:
/* 8032E798  57 83 04 3E */	clrlwi r3, r28, 0x10
/* 8032E79C  A0 1F 00 14 */	lhz r0, 0x14(r31)
/* 8032E7A0  7C 03 00 40 */	cmplw r3, r0
/* 8032E7A4  41 80 FE D4 */	blt lbl_8032E678
/* 8032E7A8  3B 00 00 00 */	li r24, 0
/* 8032E7AC  C3 A2 CA 7C */	lfs f29, lit_866(r2)
/* 8032E7B0  C3 C2 CA 70 */	lfs f30, lit_830(r2)
/* 8032E7B4  CB E2 CA 98 */	lfd f31, lit_1027(r2)
/* 8032E7B8  3F C0 43 30 */	lis r30, 0x4330
/* 8032E7BC  48 00 02 AC */	b lbl_8032EA68
lbl_8032E7C0:
/* 8032E7C0  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8032E7C4  57 00 04 3E */	clrlwi r0, r24, 0x10
/* 8032E7C8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8032E7CC  7E E3 02 14 */	add r23, r3, r0
/* 8032E7D0  D3 A1 00 08 */	stfs f29, 8(r1)
/* 8032E7D4  D3 A1 00 0C */	stfs f29, 0xc(r1)
/* 8032E7D8  D3 A1 00 10 */	stfs f29, 0x10(r1)
/* 8032E7DC  A0 17 00 00 */	lhz r0, 0(r23)
/* 8032E7E0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8032E7E4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8032E7E8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8032E7EC  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8032E7F0  EC 5E 00 24 */	fdivs f2, f30, f0
/* 8032E7F4  38 80 00 00 */	li r4, 0
/* 8032E7F8  48 00 00 5C */	b lbl_8032E854
lbl_8032E7FC:
/* 8032E7FC  80 77 00 04 */	lwz r3, 4(r23)
/* 8032E800  54 80 0B FC */	rlwinm r0, r4, 1, 0xf, 0x1e
/* 8032E804  7C 03 02 2E */	lhzx r0, r3, r0
/* 8032E808  1C 00 00 03 */	mulli r0, r0, 3
/* 8032E80C  C0 21 00 08 */	lfs f1, 8(r1)
/* 8032E810  54 00 10 3A */	slwi r0, r0, 2
/* 8032E814  7C 7A 02 14 */	add r3, r26, r0
/* 8032E818  C0 03 00 00 */	lfs f0, 0(r3)
/* 8032E81C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8032E820  EC 01 00 2A */	fadds f0, f1, f0
/* 8032E824  D0 01 00 08 */	stfs f0, 8(r1)
/* 8032E828  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8032E82C  C0 03 00 04 */	lfs f0, 4(r3)
/* 8032E830  EC 02 00 32 */	fmuls f0, f2, f0
/* 8032E834  EC 01 00 2A */	fadds f0, f1, f0
/* 8032E838  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8032E83C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8032E840  C0 03 00 08 */	lfs f0, 8(r3)
/* 8032E844  EC 02 00 32 */	fmuls f0, f2, f0
/* 8032E848  EC 01 00 2A */	fadds f0, f1, f0
/* 8032E84C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8032E850  38 84 00 01 */	addi r4, r4, 1
lbl_8032E854:
/* 8032E854  54 83 04 3E */	clrlwi r3, r4, 0x10
/* 8032E858  A0 17 00 00 */	lhz r0, 0(r23)
/* 8032E85C  7C 03 00 40 */	cmplw r3, r0
/* 8032E860  41 80 FF 9C */	blt lbl_8032E7FC
/* 8032E864  38 61 00 08 */	addi r3, r1, 8
/* 8032E868  7C 64 1B 78 */	mr r4, r3
/* 8032E86C  48 01 88 89 */	bl PSVECNormalize
/* 8032E870  3A C0 00 00 */	li r22, 0
/* 8032E874  48 00 01 E0 */	b lbl_8032EA54
lbl_8032E878:
/* 8032E878  80 77 00 08 */	lwz r3, 8(r23)
/* 8032E87C  56 C0 0B FC */	rlwinm r0, r22, 1, 0xf, 0x1e
/* 8032E880  7C 63 02 2E */	lhzx r3, r3, r0
/* 8032E884  28 03 FF FF */	cmplwi r3, 0xffff
/* 8032E888  41 82 01 C8 */	beq lbl_8032EA50
/* 8032E88C  1E A3 00 03 */	mulli r21, r3, 3
/* 8032E890  80 77 00 04 */	lwz r3, 4(r23)
/* 8032E894  7C 03 02 2E */	lhzx r0, r3, r0
/* 8032E898  7C 1C 03 78 */	mr r28, r0
/* 8032E89C  1C 00 00 03 */	mulli r0, r0, 3
/* 8032E8A0  54 00 10 3A */	slwi r0, r0, 2
/* 8032E8A4  7F BA 02 14 */	add r29, r26, r0
/* 8032E8A8  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8032E8AC  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8032E8B0  EC 61 00 32 */	fmuls f3, f1, f0
/* 8032E8B4  C3 81 00 08 */	lfs f28, 8(r1)
/* 8032E8B8  C3 7D 00 00 */	lfs f27, 0(r29)
/* 8032E8BC  EC 5C 06 F2 */	fmuls f2, f28, f27
/* 8032E8C0  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8032E8C4  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8032E8C8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8032E8CC  EC 02 00 2A */	fadds f0, f2, f0
/* 8032E8D0  EC 43 00 2A */	fadds f2, f3, f0
/* 8032E8D4  C0 22 CA 70 */	lfs f1, lit_830(r2)
/* 8032E8D8  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8032E8DC  4C 41 13 82 */	cror 2, 1, 2
/* 8032E8E0  40 82 00 0C */	bne lbl_8032E8EC
/* 8032E8E4  C0 22 CA 7C */	lfs f1, lit_866(r2)
/* 8032E8E8  48 00 00 A4 */	b lbl_8032E98C
lbl_8032E8EC:
/* 8032E8EC  C0 02 CA 80 */	lfs f0, lit_1020(r2)
/* 8032E8F0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8032E8F4  40 81 00 94 */	ble lbl_8032E988
/* 8032E8F8  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8032E8FC  4C 41 13 82 */	cror 2, 1, 2
/* 8032E900  40 82 00 0C */	bne lbl_8032E90C
/* 8032E904  C0 22 CA 7C */	lfs f1, lit_866(r2)
/* 8032E908  48 00 00 74 */	b lbl_8032E97C
lbl_8032E90C:
/* 8032E90C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8032E910  4C 40 13 82 */	cror 2, 0, 2
/* 8032E914  40 82 00 0C */	bne lbl_8032E920
/* 8032E918  C0 22 CA 84 */	lfs f1, lit_1021(r2)
/* 8032E91C  48 00 00 60 */	b lbl_8032E97C
lbl_8032E920:
/* 8032E920  C0 02 CA 7C */	lfs f0, lit_866(r2)
/* 8032E924  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8032E928  40 80 00 30 */	bge lbl_8032E958
/* 8032E92C  C0 22 CA 88 */	lfs f1, lit_1022(r2)
/* 8032E930  FC 00 10 50 */	fneg f0, f2
/* 8032E934  EC 21 00 32 */	fmuls f1, f1, f0
/* 8032E938  48 03 37 75 */	bl __cvt_fp2unsigned
/* 8032E93C  54 60 10 3A */	slwi r0, r3, 2
/* 8032E940  3C 60 80 45 */	lis r3, asinAcosTable___5JMath@ha /* 0x8044AA40@ha */
/* 8032E944  38 63 AA 40 */	addi r3, r3, asinAcosTable___5JMath@l /* 0x8044AA40@l */
/* 8032E948  7C 23 04 2E */	lfsx f1, r3, r0
/* 8032E94C  C0 02 CA 8C */	lfs f0, lit_1023(r2)
/* 8032E950  EC 21 00 2A */	fadds f1, f1, f0
/* 8032E954  48 00 00 28 */	b lbl_8032E97C
lbl_8032E958:
/* 8032E958  C0 02 CA 88 */	lfs f0, lit_1022(r2)
/* 8032E95C  EC 20 00 B2 */	fmuls f1, f0, f2
/* 8032E960  48 03 37 4D */	bl __cvt_fp2unsigned
/* 8032E964  54 60 10 3A */	slwi r0, r3, 2
/* 8032E968  3C 60 80 45 */	lis r3, asinAcosTable___5JMath@ha /* 0x8044AA40@ha */
/* 8032E96C  38 63 AA 40 */	addi r3, r3, asinAcosTable___5JMath@l /* 0x8044AA40@l */
/* 8032E970  7C 23 04 2E */	lfsx f1, r3, r0
/* 8032E974  C0 02 CA 8C */	lfs f0, lit_1023(r2)
/* 8032E978  EC 20 08 28 */	fsubs f1, f0, f1
lbl_8032E97C:
/* 8032E97C  C0 02 CA 90 */	lfs f0, lit_1024(r2)
/* 8032E980  EC 21 00 32 */	fmuls f1, f1, f0
/* 8032E984  48 00 00 08 */	b lbl_8032E98C
lbl_8032E988:
/* 8032E988  C0 22 CA 94 */	lfs f1, lit_1025(r2)
lbl_8032E98C:
/* 8032E98C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8032E990  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8032E994  4C 40 13 82 */	cror 2, 0, 2
/* 8032E998  40 82 00 24 */	bne lbl_8032E9BC
/* 8032E99C  56 A0 10 3A */	slwi r0, r21, 2
/* 8032E9A0  7C 7B 02 14 */	add r3, r27, r0
/* 8032E9A4  D3 83 00 00 */	stfs f28, 0(r3)
/* 8032E9A8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8032E9AC  D0 03 00 04 */	stfs f0, 4(r3)
/* 8032E9B0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8032E9B4  D0 03 00 08 */	stfs f0, 8(r3)
/* 8032E9B8  48 00 00 98 */	b lbl_8032EA50
lbl_8032E9BC:
/* 8032E9BC  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8032E9C0  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8032E9C4  40 81 00 30 */	ble lbl_8032E9F4
/* 8032E9C8  1C 1C 00 0C */	mulli r0, r28, 0xc
/* 8032E9CC  7C 7A 02 14 */	add r3, r26, r0
/* 8032E9D0  C0 03 00 00 */	lfs f0, 0(r3)
/* 8032E9D4  56 A0 10 3A */	slwi r0, r21, 2
/* 8032E9D8  7C 9B 02 14 */	add r4, r27, r0
/* 8032E9DC  D0 04 00 00 */	stfs f0, 0(r4)
/* 8032E9E0  C0 03 00 04 */	lfs f0, 4(r3)
/* 8032E9E4  D0 04 00 04 */	stfs f0, 4(r4)
/* 8032E9E8  C0 03 00 08 */	lfs f0, 8(r3)
/* 8032E9EC  D0 04 00 08 */	stfs f0, 8(r4)
/* 8032E9F0  48 00 00 60 */	b lbl_8032EA50
lbl_8032E9F4:
/* 8032E9F4  EC 21 00 28 */	fsubs f1, f1, f0
/* 8032E9F8  EC 02 00 28 */	fsubs f0, f2, f0
/* 8032E9FC  EC 41 00 24 */	fdivs f2, f1, f0
/* 8032EA00  C0 02 CA 70 */	lfs f0, lit_830(r2)
/* 8032EA04  EC 60 10 28 */	fsubs f3, f0, f2
/* 8032EA08  EC 22 06 F2 */	fmuls f1, f2, f27
/* 8032EA0C  EC 03 07 32 */	fmuls f0, f3, f28
/* 8032EA10  EC 01 00 2A */	fadds f0, f1, f0
/* 8032EA14  56 A0 10 3A */	slwi r0, r21, 2
/* 8032EA18  7C 7B 02 14 */	add r3, r27, r0
/* 8032EA1C  D0 03 00 00 */	stfs f0, 0(r3)
/* 8032EA20  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8032EA24  EC 22 00 32 */	fmuls f1, f2, f0
/* 8032EA28  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8032EA2C  EC 03 00 32 */	fmuls f0, f3, f0
/* 8032EA30  EC 01 00 2A */	fadds f0, f1, f0
/* 8032EA34  D0 03 00 04 */	stfs f0, 4(r3)
/* 8032EA38  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8032EA3C  EC 22 00 32 */	fmuls f1, f2, f0
/* 8032EA40  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8032EA44  EC 03 00 32 */	fmuls f0, f3, f0
/* 8032EA48  EC 01 00 2A */	fadds f0, f1, f0
/* 8032EA4C  D0 03 00 08 */	stfs f0, 8(r3)
lbl_8032EA50:
/* 8032EA50  3A D6 00 01 */	addi r22, r22, 1
lbl_8032EA54:
/* 8032EA54  56 C3 04 3E */	clrlwi r3, r22, 0x10
/* 8032EA58  A0 17 00 00 */	lhz r0, 0(r23)
/* 8032EA5C  7C 03 00 40 */	cmplw r3, r0
/* 8032EA60  41 80 FE 18 */	blt lbl_8032E878
/* 8032EA64  3B 18 00 01 */	addi r24, r24, 1
lbl_8032EA68:
/* 8032EA68  57 00 04 3E */	clrlwi r0, r24, 0x10
/* 8032EA6C  7C 00 C8 00 */	cmpw r0, r25
/* 8032EA70  41 80 FD 50 */	blt lbl_8032E7C0
/* 8032EA74  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 8032EA78  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 8032EA7C  E3 C1 00 88 */	psq_l f30, 136(r1), 0, 0 /* qr0 */
/* 8032EA80  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 8032EA84  E3 A1 00 78 */	psq_l f29, 120(r1), 0, 0 /* qr0 */
/* 8032EA88  CB A1 00 70 */	lfd f29, 0x70(r1)
/* 8032EA8C  E3 81 00 68 */	psq_l f28, 104(r1), 0, 0 /* qr0 */
/* 8032EA90  CB 81 00 60 */	lfd f28, 0x60(r1)
/* 8032EA94  E3 61 00 58 */	psq_l f27, 88(r1), 0, 0 /* qr0 */
/* 8032EA98  CB 61 00 50 */	lfd f27, 0x50(r1)
/* 8032EA9C  39 61 00 50 */	addi r11, r1, 0x50
/* 8032EAA0  48 03 37 69 */	bl _restgpr_21
/* 8032EAA4  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8032EAA8  7C 08 03 A6 */	mtlr r0
/* 8032EAAC  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8032EAB0  4E 80 00 20 */	blr 
