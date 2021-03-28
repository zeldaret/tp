lbl_8078B618:
/* 8078B618  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8078B61C  7C 08 02 A6 */	mflr r0
/* 8078B620  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8078B624  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 8078B628  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 8078B62C  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 8078B630  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 8078B634  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 8078B638  F3 A1 00 88 */	psq_st f29, 136(r1), 0, 0 /* qr0 */
/* 8078B63C  39 61 00 80 */	addi r11, r1, 0x80
/* 8078B640  4B BD 6B 98 */	b _savegpr_28
/* 8078B644  7C 7D 1B 78 */	mr r29, r3
/* 8078B648  3C 60 80 79 */	lis r3, lit_3767@ha
/* 8078B64C  3B C3 DD A4 */	addi r30, r3, lit_3767@l
/* 8078B650  80 1D 06 CC */	lwz r0, 0x6cc(r29)
/* 8078B654  90 01 00 10 */	stw r0, 0x10(r1)
/* 8078B658  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 8078B65C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 8078B660  38 81 00 10 */	addi r4, r1, 0x10
/* 8078B664  4B 88 E1 94 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 8078B668  7C 7F 1B 79 */	or. r31, r3, r3
/* 8078B66C  40 82 00 34 */	bne lbl_8078B6A0
/* 8078B670  38 00 00 00 */	li r0, 0
/* 8078B674  B0 1D 06 6C */	sth r0, 0x66c(r29)
/* 8078B678  B0 1D 06 6E */	sth r0, 0x66e(r29)
/* 8078B67C  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8078B680  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8078B684  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 8078B688  4B AD C2 CC */	b cM_rndF__Ff
/* 8078B68C  FC 00 08 1E */	fctiwz f0, f1
/* 8078B690  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 8078B694  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 8078B698  B0 1D 06 60 */	sth r0, 0x660(r29)
/* 8078B69C  48 00 05 58 */	b lbl_8078BBF4
lbl_8078B6A0:
/* 8078B6A0  A8 1D 06 60 */	lha r0, 0x660(r29)
/* 8078B6A4  2C 00 00 00 */	cmpwi r0, 0
/* 8078B6A8  40 82 01 74 */	bne lbl_8078B81C
/* 8078B6AC  A8 1D 06 6A */	lha r0, 0x66a(r29)
/* 8078B6B0  54 03 07 7E */	clrlwi r3, r0, 0x1d
/* 8078B6B4  28 1D 00 00 */	cmplwi r29, 0
/* 8078B6B8  41 82 00 0C */	beq lbl_8078B6C4
/* 8078B6BC  80 1D 00 04 */	lwz r0, 4(r29)
/* 8078B6C0  48 00 00 08 */	b lbl_8078B6C8
lbl_8078B6C4:
/* 8078B6C4  38 00 FF FF */	li r0, -1
lbl_8078B6C8:
/* 8078B6C8  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 8078B6CC  7C 03 00 40 */	cmplw r3, r0
/* 8078B6D0  40 82 01 4C */	bne lbl_8078B81C
/* 8078B6D4  7F A3 EB 78 */	mr r3, r29
/* 8078B6D8  38 9F 05 B4 */	addi r4, r31, 0x5b4
/* 8078B6DC  38 A1 00 3C */	addi r5, r1, 0x3c
/* 8078B6E0  4B FF EE A9 */	bl otherBgCheck__FP10fopAc_ac_cP4cXyzP4cXyz
/* 8078B6E4  2C 03 00 00 */	cmpwi r3, 0
/* 8078B6E8  41 82 01 34 */	beq lbl_8078B81C
/* 8078B6EC  38 61 00 30 */	addi r3, r1, 0x30
/* 8078B6F0  38 81 00 3C */	addi r4, r1, 0x3c
/* 8078B6F4  38 BF 05 B4 */	addi r5, r31, 0x5b4
/* 8078B6F8  4B AD B4 3C */	b __mi__4cXyzCFRC3Vec
/* 8078B6FC  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8078B700  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8078B704  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8078B708  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8078B70C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8078B710  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8078B714  38 61 00 48 */	addi r3, r1, 0x48
/* 8078B718  4B BB BA 20 */	b PSVECSquareMag
/* 8078B71C  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8078B720  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078B724  40 81 00 58 */	ble lbl_8078B77C
/* 8078B728  FC 00 08 34 */	frsqrte f0, f1
/* 8078B72C  C8 9E 00 28 */	lfd f4, 0x28(r30)
/* 8078B730  FC 44 00 32 */	fmul f2, f4, f0
/* 8078B734  C8 7E 00 30 */	lfd f3, 0x30(r30)
/* 8078B738  FC 00 00 32 */	fmul f0, f0, f0
/* 8078B73C  FC 01 00 32 */	fmul f0, f1, f0
/* 8078B740  FC 03 00 28 */	fsub f0, f3, f0
/* 8078B744  FC 02 00 32 */	fmul f0, f2, f0
/* 8078B748  FC 44 00 32 */	fmul f2, f4, f0
/* 8078B74C  FC 00 00 32 */	fmul f0, f0, f0
/* 8078B750  FC 01 00 32 */	fmul f0, f1, f0
/* 8078B754  FC 03 00 28 */	fsub f0, f3, f0
/* 8078B758  FC 02 00 32 */	fmul f0, f2, f0
/* 8078B75C  FC 44 00 32 */	fmul f2, f4, f0
/* 8078B760  FC 00 00 32 */	fmul f0, f0, f0
/* 8078B764  FC 01 00 32 */	fmul f0, f1, f0
/* 8078B768  FC 03 00 28 */	fsub f0, f3, f0
/* 8078B76C  FC 02 00 32 */	fmul f0, f2, f0
/* 8078B770  FC 21 00 32 */	fmul f1, f1, f0
/* 8078B774  FC 20 08 18 */	frsp f1, f1
/* 8078B778  48 00 00 88 */	b lbl_8078B800
lbl_8078B77C:
/* 8078B77C  C8 1E 00 38 */	lfd f0, 0x38(r30)
/* 8078B780  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078B784  40 80 00 10 */	bge lbl_8078B794
/* 8078B788  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8078B78C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8078B790  48 00 00 70 */	b lbl_8078B800
lbl_8078B794:
/* 8078B794  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8078B798  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8078B79C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8078B7A0  3C 00 7F 80 */	lis r0, 0x7f80
/* 8078B7A4  7C 03 00 00 */	cmpw r3, r0
/* 8078B7A8  41 82 00 14 */	beq lbl_8078B7BC
/* 8078B7AC  40 80 00 40 */	bge lbl_8078B7EC
/* 8078B7B0  2C 03 00 00 */	cmpwi r3, 0
/* 8078B7B4  41 82 00 20 */	beq lbl_8078B7D4
/* 8078B7B8  48 00 00 34 */	b lbl_8078B7EC
lbl_8078B7BC:
/* 8078B7BC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8078B7C0  41 82 00 0C */	beq lbl_8078B7CC
/* 8078B7C4  38 00 00 01 */	li r0, 1
/* 8078B7C8  48 00 00 28 */	b lbl_8078B7F0
lbl_8078B7CC:
/* 8078B7CC  38 00 00 02 */	li r0, 2
/* 8078B7D0  48 00 00 20 */	b lbl_8078B7F0
lbl_8078B7D4:
/* 8078B7D4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8078B7D8  41 82 00 0C */	beq lbl_8078B7E4
/* 8078B7DC  38 00 00 05 */	li r0, 5
/* 8078B7E0  48 00 00 10 */	b lbl_8078B7F0
lbl_8078B7E4:
/* 8078B7E4  38 00 00 03 */	li r0, 3
/* 8078B7E8  48 00 00 08 */	b lbl_8078B7F0
lbl_8078B7EC:
/* 8078B7EC  38 00 00 04 */	li r0, 4
lbl_8078B7F0:
/* 8078B7F0  2C 00 00 01 */	cmpwi r0, 1
/* 8078B7F4  40 82 00 0C */	bne lbl_8078B800
/* 8078B7F8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8078B7FC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8078B800:
/* 8078B800  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8078B804  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078B808  40 81 00 14 */	ble lbl_8078B81C
/* 8078B80C  38 00 00 00 */	li r0, 0
/* 8078B810  B0 1D 06 6C */	sth r0, 0x66c(r29)
/* 8078B814  B0 1D 06 6E */	sth r0, 0x66e(r29)
/* 8078B818  48 00 03 DC */	b lbl_8078BBF4
lbl_8078B81C:
/* 8078B81C  A8 1D 06 6E */	lha r0, 0x66e(r29)
/* 8078B820  2C 00 00 00 */	cmpwi r0, 0
/* 8078B824  41 82 00 08 */	beq lbl_8078B82C
/* 8078B828  48 00 00 10 */	b lbl_8078B838
lbl_8078B82C:
/* 8078B82C  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 8078B830  D0 1D 06 98 */	stfs f0, 0x698(r29)
/* 8078B834  C3 FE 00 48 */	lfs f31, 0x48(r30)
lbl_8078B838:
/* 8078B838  C0 1F 05 B4 */	lfs f0, 0x5b4(r31)
/* 8078B83C  D0 1D 06 78 */	stfs f0, 0x678(r29)
/* 8078B840  C0 1F 05 B8 */	lfs f0, 0x5b8(r31)
/* 8078B844  D0 1D 06 7C */	stfs f0, 0x67c(r29)
/* 8078B848  C0 1F 05 BC */	lfs f0, 0x5bc(r31)
/* 8078B84C  D0 1D 06 80 */	stfs f0, 0x680(r29)
/* 8078B850  C0 3D 06 7C */	lfs f1, 0x67c(r29)
/* 8078B854  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 8078B858  EC 01 00 2A */	fadds f0, f1, f0
/* 8078B85C  D0 1D 06 7C */	stfs f0, 0x67c(r29)
/* 8078B860  38 61 00 24 */	addi r3, r1, 0x24
/* 8078B864  38 9D 06 78 */	addi r4, r29, 0x678
/* 8078B868  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8078B86C  4B AD B2 C8 */	b __mi__4cXyzCFRC3Vec
/* 8078B870  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8078B874  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8078B878  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8078B87C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8078B880  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8078B884  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8078B888  AB 9D 04 DE */	lha r28, 0x4de(r29)
/* 8078B88C  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 8078B890  C0 1D 06 8C */	lfs f0, 0x68c(r29)
/* 8078B894  EF A1 00 32 */	fmuls f29, f1, f0
/* 8078B898  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 8078B89C  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 8078B8A0  40 81 00 08 */	ble lbl_8078B8A8
/* 8078B8A4  FF A0 00 90 */	fmr f29, f0
lbl_8078B8A8:
/* 8078B8A8  A8 1D 06 6A */	lha r0, 0x66a(r29)
/* 8078B8AC  1C 00 04 B0 */	mulli r0, r0, 0x4b0
/* 8078B8B0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8078B8B4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8078B8B8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8078B8BC  7F C3 04 2E */	lfsx f30, r3, r0
/* 8078B8C0  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 8078B8C4  C0 41 00 50 */	lfs f2, 0x50(r1)
/* 8078B8C8  4B AD BD AC */	b cM_atan2s__Fff
/* 8078B8CC  EC 1D 07 B2 */	fmuls f0, f29, f30
/* 8078B8D0  FC 00 00 1E */	fctiwz f0, f0
/* 8078B8D4  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 8078B8D8  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 8078B8DC  7C 00 1A 14 */	add r0, r0, r3
/* 8078B8E0  7C 04 07 34 */	extsh r4, r0
/* 8078B8E4  38 7D 04 DE */	addi r3, r29, 0x4de
/* 8078B8E8  38 A0 00 04 */	li r5, 4
/* 8078B8EC  38 C0 08 00 */	li r6, 0x800
/* 8078B8F0  4B AE 4D 18 */	b cLib_addCalcAngleS2__FPssss
/* 8078B8F4  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8078B8F8  EC 20 00 32 */	fmuls f1, f0, f0
/* 8078B8FC  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8078B900  EC 00 00 32 */	fmuls f0, f0, f0
/* 8078B904  EC 41 00 2A */	fadds f2, f1, f0
/* 8078B908  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8078B90C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8078B910  40 81 00 0C */	ble lbl_8078B91C
/* 8078B914  FC 00 10 34 */	frsqrte f0, f2
/* 8078B918  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8078B91C:
/* 8078B91C  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 8078B920  4B AD BD 54 */	b cM_atan2s__Fff
/* 8078B924  7C 03 00 D0 */	neg r0, r3
/* 8078B928  7C 04 07 34 */	extsh r4, r0
/* 8078B92C  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 8078B930  38 A0 00 04 */	li r5, 4
/* 8078B934  38 C0 08 00 */	li r6, 0x800
/* 8078B938  4B AE 4C D0 */	b cLib_addCalcAngleS2__FPssss
/* 8078B93C  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8078B940  7F 80 E0 50 */	subf r28, r0, r28
/* 8078B944  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 8078B948  7F 80 07 34 */	extsh r0, r28
/* 8078B94C  C8 3E 00 78 */	lfd f1, 0x78(r30)
/* 8078B950  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8078B954  90 01 00 5C */	stw r0, 0x5c(r1)
/* 8078B958  3C 00 43 30 */	lis r0, 0x4330
/* 8078B95C  90 01 00 58 */	stw r0, 0x58(r1)
/* 8078B960  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 8078B964  EC 00 08 28 */	fsubs f0, f0, f1
/* 8078B968  EC 22 00 32 */	fmuls f1, f2, f0
/* 8078B96C  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 8078B970  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078B974  40 81 00 0C */	ble lbl_8078B980
/* 8078B978  FC 20 00 90 */	fmr f1, f0
/* 8078B97C  48 00 00 14 */	b lbl_8078B990
lbl_8078B980:
/* 8078B980  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 8078B984  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078B988  40 80 00 08 */	bge lbl_8078B990
/* 8078B98C  FC 20 00 90 */	fmr f1, f0
lbl_8078B990:
/* 8078B990  38 7D 06 A8 */	addi r3, r29, 0x6a8
/* 8078B994  C0 5E 00 48 */	lfs f2, 0x48(r30)
/* 8078B998  C0 7E 00 6C */	lfs f3, 0x6c(r30)
/* 8078B99C  4B AE 40 A0 */	b cLib_addCalc2__FPffff
/* 8078B9A0  38 7D 05 2C */	addi r3, r29, 0x52c
/* 8078B9A4  C0 3D 06 94 */	lfs f1, 0x694(r29)
/* 8078B9A8  3C 80 80 79 */	lis r4, l_HIO@ha
/* 8078B9AC  38 84 E0 EC */	addi r4, r4, l_HIO@l
/* 8078B9B0  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 8078B9B4  EC 21 00 32 */	fmuls f1, f1, f0
/* 8078B9B8  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 8078B9BC  FC 60 F8 90 */	fmr f3, f31
/* 8078B9C0  4B AE 40 7C */	b cLib_addCalc2__FPffff
/* 8078B9C4  3B 80 13 88 */	li r28, 0x1388
/* 8078B9C8  38 61 00 18 */	addi r3, r1, 0x18
/* 8078B9CC  38 9F 05 B4 */	addi r4, r31, 0x5b4
/* 8078B9D0  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8078B9D4  4B AD B1 60 */	b __mi__4cXyzCFRC3Vec
/* 8078B9D8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8078B9DC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8078B9E0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8078B9E4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8078B9E8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8078B9EC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8078B9F0  38 61 00 48 */	addi r3, r1, 0x48
/* 8078B9F4  4B BB B7 44 */	b PSVECSquareMag
/* 8078B9F8  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8078B9FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078BA00  40 81 00 58 */	ble lbl_8078BA58
/* 8078BA04  FC 00 08 34 */	frsqrte f0, f1
/* 8078BA08  C8 9E 00 28 */	lfd f4, 0x28(r30)
/* 8078BA0C  FC 44 00 32 */	fmul f2, f4, f0
/* 8078BA10  C8 7E 00 30 */	lfd f3, 0x30(r30)
/* 8078BA14  FC 00 00 32 */	fmul f0, f0, f0
/* 8078BA18  FC 01 00 32 */	fmul f0, f1, f0
/* 8078BA1C  FC 03 00 28 */	fsub f0, f3, f0
/* 8078BA20  FC 02 00 32 */	fmul f0, f2, f0
/* 8078BA24  FC 44 00 32 */	fmul f2, f4, f0
/* 8078BA28  FC 00 00 32 */	fmul f0, f0, f0
/* 8078BA2C  FC 01 00 32 */	fmul f0, f1, f0
/* 8078BA30  FC 03 00 28 */	fsub f0, f3, f0
/* 8078BA34  FC 02 00 32 */	fmul f0, f2, f0
/* 8078BA38  FC 44 00 32 */	fmul f2, f4, f0
/* 8078BA3C  FC 00 00 32 */	fmul f0, f0, f0
/* 8078BA40  FC 01 00 32 */	fmul f0, f1, f0
/* 8078BA44  FC 03 00 28 */	fsub f0, f3, f0
/* 8078BA48  FC 02 00 32 */	fmul f0, f2, f0
/* 8078BA4C  FC 21 00 32 */	fmul f1, f1, f0
/* 8078BA50  FC 20 08 18 */	frsp f1, f1
/* 8078BA54  48 00 00 88 */	b lbl_8078BADC
lbl_8078BA58:
/* 8078BA58  C8 1E 00 38 */	lfd f0, 0x38(r30)
/* 8078BA5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078BA60  40 80 00 10 */	bge lbl_8078BA70
/* 8078BA64  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8078BA68  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8078BA6C  48 00 00 70 */	b lbl_8078BADC
lbl_8078BA70:
/* 8078BA70  D0 21 00 08 */	stfs f1, 8(r1)
/* 8078BA74  80 81 00 08 */	lwz r4, 8(r1)
/* 8078BA78  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8078BA7C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8078BA80  7C 03 00 00 */	cmpw r3, r0
/* 8078BA84  41 82 00 14 */	beq lbl_8078BA98
/* 8078BA88  40 80 00 40 */	bge lbl_8078BAC8
/* 8078BA8C  2C 03 00 00 */	cmpwi r3, 0
/* 8078BA90  41 82 00 20 */	beq lbl_8078BAB0
/* 8078BA94  48 00 00 34 */	b lbl_8078BAC8
lbl_8078BA98:
/* 8078BA98  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8078BA9C  41 82 00 0C */	beq lbl_8078BAA8
/* 8078BAA0  38 00 00 01 */	li r0, 1
/* 8078BAA4  48 00 00 28 */	b lbl_8078BACC
lbl_8078BAA8:
/* 8078BAA8  38 00 00 02 */	li r0, 2
/* 8078BAAC  48 00 00 20 */	b lbl_8078BACC
lbl_8078BAB0:
/* 8078BAB0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8078BAB4  41 82 00 0C */	beq lbl_8078BAC0
/* 8078BAB8  38 00 00 05 */	li r0, 5
/* 8078BABC  48 00 00 10 */	b lbl_8078BACC
lbl_8078BAC0:
/* 8078BAC0  38 00 00 03 */	li r0, 3
/* 8078BAC4  48 00 00 08 */	b lbl_8078BACC
lbl_8078BAC8:
/* 8078BAC8  38 00 00 04 */	li r0, 4
lbl_8078BACC:
/* 8078BACC  2C 00 00 01 */	cmpwi r0, 1
/* 8078BAD0  40 82 00 0C */	bne lbl_8078BADC
/* 8078BAD4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8078BAD8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8078BADC:
/* 8078BADC  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 8078BAE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078BAE4  40 80 00 FC */	bge lbl_8078BBE0
/* 8078BAE8  A8 1D 06 6A */	lha r0, 0x66a(r29)
/* 8078BAEC  1C 00 31 00 */	mulli r0, r0, 0x3100
/* 8078BAF0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8078BAF4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8078BAF8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8078BAFC  7C 43 04 2E */	lfsx f2, r3, r0
/* 8078BB00  C0 3E 00 94 */	lfs f1, 0x94(r30)
/* 8078BB04  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 8078BB08  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8078BB0C  EC 01 00 2A */	fadds f0, f1, f0
/* 8078BB10  FC 00 00 1E */	fctiwz f0, f0
/* 8078BB14  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 8078BB18  83 81 00 5C */	lwz r28, 0x5c(r1)
/* 8078BB1C  A8 1D 06 62 */	lha r0, 0x662(r29)
/* 8078BB20  2C 00 00 00 */	cmpwi r0, 0
/* 8078BB24  40 82 00 70 */	bne lbl_8078BB94
/* 8078BB28  80 1D 07 4C */	lwz r0, 0x74c(r29)
/* 8078BB2C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8078BB30  41 82 00 64 */	beq lbl_8078BB94
/* 8078BB34  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 8078BB38  4B AD BE 1C */	b cM_rndF__Ff
/* 8078BB3C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8078BB40  EC 00 08 2A */	fadds f0, f0, f1
/* 8078BB44  FC 00 00 1E */	fctiwz f0, f0
/* 8078BB48  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 8078BB4C  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 8078BB50  B0 1D 06 62 */	sth r0, 0x662(r29)
/* 8078BB54  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 8078BB58  4B AD BD FC */	b cM_rndF__Ff
/* 8078BB5C  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 8078BB60  EC 00 08 2A */	fadds f0, f0, f1
/* 8078BB64  FC 00 00 1E */	fctiwz f0, f0
/* 8078BB68  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 8078BB6C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8078BB70  7C 00 07 34 */	extsh r0, r0
/* 8078BB74  C8 3E 00 78 */	lfd f1, 0x78(r30)
/* 8078BB78  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8078BB7C  90 01 00 6C */	stw r0, 0x6c(r1)
/* 8078BB80  3C 00 43 30 */	lis r0, 0x4330
/* 8078BB84  90 01 00 68 */	stw r0, 0x68(r1)
/* 8078BB88  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 8078BB8C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8078BB90  D0 1F 05 98 */	stfs f0, 0x598(r31)
lbl_8078BB94:
/* 8078BB94  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 8078BB98  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 8078BB9C  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 8078BBA0  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 8078BBA4  4B AE 3E 98 */	b cLib_addCalc2__FPffff
/* 8078BBA8  A8 1D 06 6A */	lha r0, 0x66a(r29)
/* 8078BBAC  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 8078BBB0  40 82 00 30 */	bne lbl_8078BBE0
/* 8078BBB4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702C4@ha */
/* 8078BBB8  38 03 02 C4 */	addi r0, r3, 0x02C4 /* 0x000702C4@l */
/* 8078BBBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8078BBC0  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 8078BBC4  38 81 00 14 */	addi r4, r1, 0x14
/* 8078BBC8  38 A0 00 00 */	li r5, 0
/* 8078BBCC  38 C0 FF FF */	li r6, -1
/* 8078BBD0  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 8078BBD4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8078BBD8  7D 89 03 A6 */	mtctr r12
/* 8078BBDC  4E 80 04 21 */	bctrl 
lbl_8078BBE0:
/* 8078BBE0  38 7D 06 B0 */	addi r3, r29, 0x6b0
/* 8078BBE4  7F 84 E3 78 */	mr r4, r28
/* 8078BBE8  38 A0 00 01 */	li r5, 1
/* 8078BBEC  38 C0 40 00 */	li r6, 0x4000
/* 8078BBF0  4B AE 4A 18 */	b cLib_addCalcAngleS2__FPssss
lbl_8078BBF4:
/* 8078BBF4  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 8078BBF8  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 8078BBFC  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 8078BC00  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 8078BC04  E3 A1 00 88 */	psq_l f29, 136(r1), 0, 0 /* qr0 */
/* 8078BC08  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 8078BC0C  39 61 00 80 */	addi r11, r1, 0x80
/* 8078BC10  4B BD 66 14 */	b _restgpr_28
/* 8078BC14  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8078BC18  7C 08 03 A6 */	mtlr r0
/* 8078BC1C  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8078BC20  4E 80 00 20 */	blr 
