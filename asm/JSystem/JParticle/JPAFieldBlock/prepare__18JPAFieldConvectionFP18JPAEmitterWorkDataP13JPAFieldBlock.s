lbl_8027C814:
/* 8027C814  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8027C818  7C 08 02 A6 */	mflr r0
/* 8027C81C  90 01 00 94 */	stw r0, 0x94(r1)
/* 8027C820  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8027C824  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 8027C828  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 8027C82C  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 8027C830  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 8027C834  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 8027C838  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 8027C83C  F3 81 00 58 */	psq_st f28, 88(r1), 0, 0 /* qr0 */
/* 8027C840  DB 61 00 40 */	stfd f27, 0x40(r1)
/* 8027C844  F3 61 00 48 */	psq_st f27, 72(r1), 0, 0 /* qr0 */
/* 8027C848  DB 41 00 30 */	stfd f26, 0x30(r1)
/* 8027C84C  F3 41 00 38 */	psq_st f26, 56(r1), 0, 0 /* qr0 */
/* 8027C850  39 61 00 30 */	addi r11, r1, 0x30
/* 8027C854  48 0E 59 89 */	bl _savegpr_29
/* 8027C858  7C 7D 1B 78 */	mr r29, r3
/* 8027C85C  7C 9E 23 78 */	mr r30, r4
/* 8027C860  7C BF 2B 78 */	mr r31, r5
/* 8027C864  38 9F 00 1C */	addi r4, r31, 0x1c
/* 8027C868  38 7F 00 10 */	addi r3, r31, 0x10
/* 8027C86C  38 A1 00 08 */	addi r5, r1, 8
/* 8027C870  48 0C A9 45 */	bl PSVECCrossProduct
/* 8027C874  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8027C878  38 81 00 08 */	addi r4, r1, 8
/* 8027C87C  38 A1 00 14 */	addi r5, r1, 0x14
/* 8027C880  48 0C A9 35 */	bl PSVECCrossProduct
/* 8027C884  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 8027C888  38 81 00 14 */	addi r4, r1, 0x14
/* 8027C88C  38 BD 00 10 */	addi r5, r29, 0x10
/* 8027C890  48 0C A5 BD */	bl PSMTXMultVecSR
/* 8027C894  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 8027C898  38 9F 00 1C */	addi r4, r31, 0x1c
/* 8027C89C  38 BD 00 1C */	addi r5, r29, 0x1c
/* 8027C8A0  48 0C A5 AD */	bl PSMTXMultVecSR
/* 8027C8A4  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 8027C8A8  38 81 00 08 */	addi r4, r1, 8
/* 8027C8AC  38 BD 00 28 */	addi r5, r29, 0x28
/* 8027C8B0  48 0C A5 9D */	bl PSMTXMultVecSR
/* 8027C8B4  E0 1D 00 10 */	psq_l f0, 16(r29), 0, 0 /* qr0 */
/* 8027C8B8  10 00 00 32 */	ps_mul f0, f0, f0
/* 8027C8BC  C3 5D 00 18 */	lfs f26, 0x18(r29)
/* 8027C8C0  10 9A 06 BA */	ps_madd f4, f26, f26, f0
/* 8027C8C4  10 84 00 14 */	ps_sum0 f4, f4, f0, f0
/* 8027C8C8  C0 22 B9 40 */	lfs f1, lit_2459(r2)
/* 8027C8CC  3C 60 80 45 */	lis r3, __float_epsilon@ha /* 0x80450AEC@ha */
/* 8027C8D0  C0 03 0A EC */	lfs f0, __float_epsilon@l(r3)  /* 0x80450AEC@l */
/* 8027C8D4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8027C8D8  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8027C8DC  4C 40 13 82 */	cror 2, 0, 2
/* 8027C8E0  41 82 00 5C */	beq lbl_8027C93C
/* 8027C8E4  C0 02 B9 3C */	lfs f0, lit_2354(r2)
/* 8027C8E8  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8027C8EC  4C 40 13 82 */	cror 2, 0, 2
/* 8027C8F0  40 82 00 0C */	bne lbl_8027C8FC
/* 8027C8F4  FF 60 20 90 */	fmr f27, f4
/* 8027C8F8  48 00 00 2C */	b lbl_8027C924
lbl_8027C8FC:
/* 8027C8FC  FC 60 20 34 */	frsqrte f3, f4
/* 8027C900  FC 60 18 18 */	frsp f3, f3
/* 8027C904  C0 02 B9 44 */	lfs f0, lit_2460(r2)
/* 8027C908  EC 40 00 F2 */	fmuls f2, f0, f3
/* 8027C90C  C0 22 B9 48 */	lfs f1, lit_2461(r2)
/* 8027C910  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8027C914  EC 04 00 32 */	fmuls f0, f4, f0
/* 8027C918  EC 01 00 28 */	fsubs f0, f1, f0
/* 8027C91C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8027C920  FF 60 00 90 */	fmr f27, f0
lbl_8027C924:
/* 8027C924  E0 1D 00 10 */	psq_l f0, 16(r29), 0, 0 /* qr0 */
/* 8027C928  E0 3D 80 18 */	psq_l f1, 24(r29), 1, 0 /* qr0 */
/* 8027C92C  10 00 06 D8 */	ps_muls0 f0, f0, f27
/* 8027C930  F0 1D 00 10 */	psq_st f0, 16(r29), 0, 0 /* qr0 */
/* 8027C934  10 01 06 D8 */	ps_muls0 f0, f1, f27
/* 8027C938  F0 1D 80 18 */	psq_st f0, 24(r29), 1, 0 /* qr0 */
lbl_8027C93C:
/* 8027C93C  E0 1D 00 1C */	psq_l f0, 28(r29), 0, 0 /* qr0 */
/* 8027C940  10 00 00 32 */	ps_mul f0, f0, f0
/* 8027C944  C3 BD 00 24 */	lfs f29, 0x24(r29)
/* 8027C948  10 9D 07 7A */	ps_madd f4, f29, f29, f0
/* 8027C94C  10 84 00 14 */	ps_sum0 f4, f4, f0, f0
/* 8027C950  C0 22 B9 40 */	lfs f1, lit_2459(r2)
/* 8027C954  3C 60 80 45 */	lis r3, __float_epsilon@ha /* 0x80450AEC@ha */
/* 8027C958  C0 03 0A EC */	lfs f0, __float_epsilon@l(r3)  /* 0x80450AEC@l */
/* 8027C95C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8027C960  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8027C964  4C 40 13 82 */	cror 2, 0, 2
/* 8027C968  41 82 00 5C */	beq lbl_8027C9C4
/* 8027C96C  C0 02 B9 3C */	lfs f0, lit_2354(r2)
/* 8027C970  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8027C974  4C 40 13 82 */	cror 2, 0, 2
/* 8027C978  40 82 00 0C */	bne lbl_8027C984
/* 8027C97C  FF E0 20 90 */	fmr f31, f4
/* 8027C980  48 00 00 2C */	b lbl_8027C9AC
lbl_8027C984:
/* 8027C984  FC 60 20 34 */	frsqrte f3, f4
/* 8027C988  FC 60 18 18 */	frsp f3, f3
/* 8027C98C  C0 02 B9 44 */	lfs f0, lit_2460(r2)
/* 8027C990  EC 40 00 F2 */	fmuls f2, f0, f3
/* 8027C994  C0 22 B9 48 */	lfs f1, lit_2461(r2)
/* 8027C998  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8027C99C  EC 04 00 32 */	fmuls f0, f4, f0
/* 8027C9A0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8027C9A4  EC 02 00 32 */	fmuls f0, f2, f0
/* 8027C9A8  FF E0 00 90 */	fmr f31, f0
lbl_8027C9AC:
/* 8027C9AC  E0 1D 00 1C */	psq_l f0, 28(r29), 0, 0 /* qr0 */
/* 8027C9B0  E0 3D 80 24 */	psq_l f1, 36(r29), 1, 0 /* qr0 */
/* 8027C9B4  10 00 07 D8 */	ps_muls0 f0, f0, f31
/* 8027C9B8  F0 1D 00 1C */	psq_st f0, 28(r29), 0, 0 /* qr0 */
/* 8027C9BC  10 01 07 D8 */	ps_muls0 f0, f1, f31
/* 8027C9C0  F0 1D 80 24 */	psq_st f0, 36(r29), 1, 0 /* qr0 */
lbl_8027C9C4:
/* 8027C9C4  E0 1D 00 28 */	psq_l f0, 40(r29), 0, 0 /* qr0 */
/* 8027C9C8  10 00 00 32 */	ps_mul f0, f0, f0
/* 8027C9CC  C3 9D 00 30 */	lfs f28, 0x30(r29)
/* 8027C9D0  10 9C 07 3A */	ps_madd f4, f28, f28, f0
/* 8027C9D4  10 84 00 14 */	ps_sum0 f4, f4, f0, f0
/* 8027C9D8  C0 22 B9 40 */	lfs f1, lit_2459(r2)
/* 8027C9DC  3C 60 80 45 */	lis r3, __float_epsilon@ha /* 0x80450AEC@ha */
/* 8027C9E0  C0 03 0A EC */	lfs f0, __float_epsilon@l(r3)  /* 0x80450AEC@l */
/* 8027C9E4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8027C9E8  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8027C9EC  4C 40 13 82 */	cror 2, 0, 2
/* 8027C9F0  41 82 00 5C */	beq lbl_8027CA4C
/* 8027C9F4  C0 02 B9 3C */	lfs f0, lit_2354(r2)
/* 8027C9F8  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8027C9FC  4C 40 13 82 */	cror 2, 0, 2
/* 8027CA00  40 82 00 0C */	bne lbl_8027CA0C
/* 8027CA04  FF C0 20 90 */	fmr f30, f4
/* 8027CA08  48 00 00 2C */	b lbl_8027CA34
lbl_8027CA0C:
/* 8027CA0C  FC 60 20 34 */	frsqrte f3, f4
/* 8027CA10  FC 60 18 18 */	frsp f3, f3
/* 8027CA14  C0 02 B9 44 */	lfs f0, lit_2460(r2)
/* 8027CA18  EC 40 00 F2 */	fmuls f2, f0, f3
/* 8027CA1C  C0 22 B9 48 */	lfs f1, lit_2461(r2)
/* 8027CA20  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8027CA24  EC 04 00 32 */	fmuls f0, f4, f0
/* 8027CA28  EC 01 00 28 */	fsubs f0, f1, f0
/* 8027CA2C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8027CA30  FF C0 00 90 */	fmr f30, f0
lbl_8027CA34:
/* 8027CA34  E0 1D 00 28 */	psq_l f0, 40(r29), 0, 0 /* qr0 */
/* 8027CA38  E0 3D 80 30 */	psq_l f1, 48(r29), 1, 0 /* qr0 */
/* 8027CA3C  10 00 07 98 */	ps_muls0 f0, f0, f30
/* 8027CA40  F0 1D 00 28 */	psq_st f0, 40(r29), 0, 0 /* qr0 */
/* 8027CA44  10 01 07 98 */	ps_muls0 f0, f1, f30
/* 8027CA48  F0 1D 80 30 */	psq_st f0, 48(r29), 1, 0 /* qr0 */
lbl_8027CA4C:
/* 8027CA4C  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 8027CA50  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8027CA54  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 8027CA58  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 8027CA5C  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 8027CA60  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 8027CA64  E3 81 00 58 */	psq_l f28, 88(r1), 0, 0 /* qr0 */
/* 8027CA68  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 8027CA6C  E3 61 00 48 */	psq_l f27, 72(r1), 0, 0 /* qr0 */
/* 8027CA70  CB 61 00 40 */	lfd f27, 0x40(r1)
/* 8027CA74  E3 41 00 38 */	psq_l f26, 56(r1), 0, 0 /* qr0 */
/* 8027CA78  CB 41 00 30 */	lfd f26, 0x30(r1)
/* 8027CA7C  39 61 00 30 */	addi r11, r1, 0x30
/* 8027CA80  48 0E 57 A9 */	bl _restgpr_29
/* 8027CA84  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8027CA88  7C 08 03 A6 */	mtlr r0
/* 8027CA8C  38 21 00 90 */	addi r1, r1, 0x90
/* 8027CA90  4E 80 00 20 */	blr 
