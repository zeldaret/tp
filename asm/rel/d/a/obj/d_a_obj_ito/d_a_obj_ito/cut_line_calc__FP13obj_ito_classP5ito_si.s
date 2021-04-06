lbl_8047B504:
/* 8047B504  94 21 FE 60 */	stwu r1, -0x1a0(r1)
/* 8047B508  7C 08 02 A6 */	mflr r0
/* 8047B50C  90 01 01 A4 */	stw r0, 0x1a4(r1)
/* 8047B510  DB E1 01 90 */	stfd f31, 0x190(r1)
/* 8047B514  F3 E1 01 98 */	psq_st f31, 408(r1), 0, 0 /* qr0 */
/* 8047B518  DB C1 01 80 */	stfd f30, 0x180(r1)
/* 8047B51C  F3 C1 01 88 */	psq_st f30, 392(r1), 0, 0 /* qr0 */
/* 8047B520  DB A1 01 70 */	stfd f29, 0x170(r1)
/* 8047B524  F3 A1 01 78 */	psq_st f29, 376(r1), 0, 0 /* qr0 */
/* 8047B528  DB 81 01 60 */	stfd f28, 0x160(r1)
/* 8047B52C  F3 81 01 68 */	psq_st f28, 360(r1), 0, 0 /* qr0 */
/* 8047B530  DB 61 01 50 */	stfd f27, 0x150(r1)
/* 8047B534  F3 61 01 58 */	psq_st f27, 344(r1), 0, 0 /* qr0 */
/* 8047B538  DB 41 01 40 */	stfd f26, 0x140(r1)
/* 8047B53C  F3 41 01 48 */	psq_st f26, 328(r1), 0, 0 /* qr0 */
/* 8047B540  DB 21 01 30 */	stfd f25, 0x130(r1)
/* 8047B544  F3 21 01 38 */	psq_st f25, 312(r1), 0, 0 /* qr0 */
/* 8047B548  DB 01 01 20 */	stfd f24, 0x120(r1)
/* 8047B54C  F3 01 01 28 */	psq_st f24, 296(r1), 0, 0 /* qr0 */
/* 8047B550  39 61 01 20 */	addi r11, r1, 0x120
/* 8047B554  4B EE 6C 55 */	bl _savegpr_16
/* 8047B558  7C 7E 1B 78 */	mr r30, r3
/* 8047B55C  7C 9F 23 78 */	mr r31, r4
/* 8047B560  7C B5 2B 78 */	mr r21, r5
/* 8047B564  3C 60 80 48 */	lis r3, lit_3770@ha /* 0x8047D810@ha */
/* 8047B568  3A E3 D8 10 */	addi r23, r3, lit_3770@l /* 0x8047D810@l */
/* 8047B56C  80 1E 04 A4 */	lwz r0, 0x4a4(r30)
/* 8047B570  90 01 00 08 */	stw r0, 8(r1)
/* 8047B574  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 8047B578  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 8047B57C  38 81 00 08 */	addi r4, r1, 8
/* 8047B580  4B B9 E2 79 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8047B584  7C 70 1B 78 */	mr r16, r3
/* 8047B588  38 61 00 78 */	addi r3, r1, 0x78
/* 8047B58C  4B BF BF F1 */	bl __ct__11dBgS_GndChkFv
/* 8047B590  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8047B594  56 A0 28 34 */	slwi r0, r21, 5
/* 8047B598  7E 83 00 2E */	lwzx r20, r3, r0
/* 8047B59C  1C 75 00 50 */	mulli r3, r21, 0x50
/* 8047B5A0  3A 63 00 20 */	addi r19, r3, 0x20
/* 8047B5A4  7E 7F 9A 14 */	add r19, r31, r19
/* 8047B5A8  C0 3F 02 54 */	lfs f1, 0x254(r31)
/* 8047B5AC  C0 17 00 14 */	lfs f0, 0x14(r23)
/* 8047B5B0  EF A1 00 28 */	fsubs f29, f1, f0
/* 8047B5B4  C0 17 00 18 */	lfs f0, 0x18(r23)
/* 8047B5B8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8047B5BC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8047B5C0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8047B5C4  38 1E 10 3C */	addi r0, r30, 0x103c
/* 8047B5C8  7C 1F 00 40 */	cmplw r31, r0
/* 8047B5CC  40 82 00 58 */	bne lbl_8047B624
/* 8047B5D0  28 10 00 00 */	cmplwi r16, 0
/* 8047B5D4  41 82 00 50 */	beq lbl_8047B624
/* 8047B5D8  A8 10 06 0A */	lha r0, 0x60a(r16)
/* 8047B5DC  2C 00 00 02 */	cmpwi r0, 2
/* 8047B5E0  40 82 00 44 */	bne lbl_8047B624
/* 8047B5E4  38 61 00 18 */	addi r3, r1, 0x18
/* 8047B5E8  7E 84 A3 78 */	mr r4, r20
/* 8047B5EC  38 B0 04 D0 */	addi r5, r16, 0x4d0
/* 8047B5F0  4B DE B5 45 */	bl __mi__4cXyzCFRC3Vec
/* 8047B5F4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8047B5F8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8047B5FC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8047B600  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8047B604  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8047B608  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8047B60C  38 61 00 48 */	addi r3, r1, 0x48
/* 8047B610  7C 64 1B 78 */	mr r4, r3
/* 8047B614  C0 37 00 1C */	lfs f1, 0x1c(r23)
/* 8047B618  C0 10 05 2C */	lfs f0, 0x52c(r16)
/* 8047B61C  EC 21 00 32 */	fmuls f1, f1, f0
/* 8047B620  4B EC BA B9 */	bl PSVECScale
lbl_8047B624:
/* 8047B624  56 B1 08 3C */	slwi r17, r21, 1
/* 8047B628  7C 9F 8A 14 */	add r4, r31, r17
/* 8047B62C  A8 64 02 44 */	lha r3, 0x244(r4)
/* 8047B630  38 03 00 01 */	addi r0, r3, 1
/* 8047B634  B0 04 02 44 */	sth r0, 0x244(r4)
/* 8047B638  38 7F 02 58 */	addi r3, r31, 0x258
/* 8047B63C  C0 37 00 20 */	lfs f1, 0x20(r23)
/* 8047B640  C0 57 00 24 */	lfs f2, 0x24(r23)
/* 8047B644  4B DF 44 3D */	bl cLib_addCalc0__FPfff
/* 8047B648  C3 97 00 18 */	lfs f28, 0x18(r23)
/* 8047B64C  FF 60 E0 90 */	fmr f27, f28
/* 8047B650  3A 40 00 00 */	li r18, 0
/* 8047B654  D3 81 00 68 */	stfs f28, 0x68(r1)
/* 8047B658  D3 81 00 64 */	stfs f28, 0x64(r1)
/* 8047B65C  28 10 00 00 */	cmplwi r16, 0
/* 8047B660  3A 94 00 0C */	addi r20, r20, 0xc
/* 8047B664  41 82 00 48 */	beq lbl_8047B6AC
/* 8047B668  A8 10 06 0A */	lha r0, 0x60a(r16)
/* 8047B66C  2C 00 00 01 */	cmpwi r0, 1
/* 8047B670  40 82 00 3C */	bne lbl_8047B6AC
/* 8047B674  3A 40 00 01 */	li r18, 1
/* 8047B678  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8047B67C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8047B680  80 63 00 00 */	lwz r3, 0(r3)
/* 8047B684  A8 90 06 4C */	lha r4, 0x64c(r16)
/* 8047B688  1C 15 46 50 */	mulli r0, r21, 0x4650
/* 8047B68C  7C 04 02 14 */	add r0, r4, r0
/* 8047B690  7C 04 07 34 */	extsh r4, r0
/* 8047B694  4B B9 0D 49 */	bl mDoMtx_YrotS__FPA4_fs
/* 8047B698  C0 17 00 28 */	lfs f0, 0x28(r23)
/* 8047B69C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8047B6A0  38 61 00 60 */	addi r3, r1, 0x60
/* 8047B6A4  38 81 00 24 */	addi r4, r1, 0x24
/* 8047B6A8  4B DF 58 45 */	bl MtxPosition__FP4cXyzP4cXyz
lbl_8047B6AC:
/* 8047B6AC  C3 D7 00 18 */	lfs f30, 0x18(r23)
/* 8047B6B0  D3 C1 00 60 */	stfs f30, 0x60(r1)
/* 8047B6B4  C0 7F 02 50 */	lfs f3, 0x250(r31)
/* 8047B6B8  C0 57 00 2C */	lfs f2, 0x2c(r23)
/* 8047B6BC  C0 37 00 30 */	lfs f1, 0x30(r23)
/* 8047B6C0  CB F7 00 40 */	lfd f31, 0x40(r23)
/* 8047B6C4  6E A0 80 00 */	xoris r0, r21, 0x8000
/* 8047B6C8  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8047B6CC  3E 00 43 30 */	lis r16, 0x4330
/* 8047B6D0  92 01 00 D0 */	stw r16, 0xd0(r1)
/* 8047B6D4  C8 01 00 D0 */	lfd f0, 0xd0(r1)
/* 8047B6D8  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8047B6DC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8047B6E0  EC 02 00 28 */	fsubs f0, f2, f0
/* 8047B6E4  EC 03 00 32 */	fmuls f0, f3, f0
/* 8047B6E8  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8047B6EC  3A A0 00 01 */	li r21, 1
/* 8047B6F0  3B A0 0F A0 */	li r29, 0xfa0
/* 8047B6F4  3B 80 0B B8 */	li r28, 0xbb8
/* 8047B6F8  3B 60 1B 58 */	li r27, 0x1b58
/* 8047B6FC  3B 40 1F 40 */	li r26, 0x1f40
/* 8047B700  3A 31 02 44 */	addi r17, r17, 0x244
/* 8047B704  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8047B708  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8047B70C  3A C3 0F 38 */	addi r22, r3, 0xf38
/* 8047B710  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8047B714  3B 03 9A 20 */	addi r24, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8047B718  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8047B71C  3B 23 07 68 */	addi r25, r3, calc_mtx@l /* 0x80450768@l */
lbl_8047B720:
/* 8047B720  7C 7F 8A AE */	lhax r3, r31, r17
/* 8047B724  1C 03 09 C4 */	mulli r0, r3, 0x9c4
/* 8047B728  7C 00 D2 14 */	add r0, r0, r26
/* 8047B72C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8047B730  7C 18 04 2E */	lfsx f0, r24, r0
/* 8047B734  C0 3F 02 58 */	lfs f1, 0x258(r31)
/* 8047B738  EC 01 00 32 */	fmuls f0, f1, f0
/* 8047B73C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8047B740  1C 03 07 D0 */	mulli r0, r3, 0x7d0
/* 8047B744  7C 00 DA 14 */	add r0, r0, r27
/* 8047B748  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8047B74C  7C 18 04 2E */	lfsx f0, r24, r0
/* 8047B750  EC 01 00 32 */	fmuls f0, f1, f0
/* 8047B754  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8047B758  2C 12 00 00 */	cmpwi r18, 0
/* 8047B75C  41 82 00 2C */	beq lbl_8047B788
/* 8047B760  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 8047B764  57 80 04 38 */	rlwinm r0, r28, 0, 0x10, 0x1c
/* 8047B768  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8047B76C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8047B770  7C 03 04 2E */	lfsx f0, r3, r0
/* 8047B774  EF 61 00 32 */	fmuls f27, f1, f0
/* 8047B778  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8047B77C  57 A0 04 38 */	rlwinm r0, r29, 0, 0x10, 0x1c
/* 8047B780  7C 03 04 2E */	lfsx f0, r3, r0
/* 8047B784  EF 81 00 32 */	fmuls f28, f1, f0
lbl_8047B788:
/* 8047B788  38 61 00 0C */	addi r3, r1, 0xc
/* 8047B78C  38 81 00 48 */	addi r4, r1, 0x48
/* 8047B790  20 15 00 15 */	subfic r0, r21, 0x15
/* 8047B794  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8047B798  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8047B79C  92 01 00 D0 */	stw r16, 0xd0(r1)
/* 8047B7A0  C8 01 00 D0 */	lfd f0, 0xd0(r1)
/* 8047B7A4  EC 20 F8 28 */	fsubs f1, f0, f31
/* 8047B7A8  4B DE B3 DD */	bl __ml__4cXyzCFf
/* 8047B7AC  C0 A1 00 0C */	lfs f5, 0xc(r1)
/* 8047B7B0  D0 A1 00 3C */	stfs f5, 0x3c(r1)
/* 8047B7B4  C0 81 00 10 */	lfs f4, 0x10(r1)
/* 8047B7B8  D0 81 00 40 */	stfs f4, 0x40(r1)
/* 8047B7BC  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 8047B7C0  D0 61 00 44 */	stfs f3, 0x44(r1)
/* 8047B7C4  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 8047B7C8  C0 34 00 00 */	lfs f1, 0(r20)
/* 8047B7CC  C0 14 FF F4 */	lfs f0, -0xc(r20)
/* 8047B7D0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8047B7D4  EC 02 00 2A */	fadds f0, f2, f0
/* 8047B7D8  EC 05 00 2A */	fadds f0, f5, f0
/* 8047B7DC  EF 5B 00 2A */	fadds f26, f27, f0
/* 8047B7E0  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 8047B7E4  C0 34 00 08 */	lfs f1, 8(r20)
/* 8047B7E8  C0 14 FF FC */	lfs f0, -4(r20)
/* 8047B7EC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8047B7F0  EC 02 00 2A */	fadds f0, f2, f0
/* 8047B7F4  EC 03 00 2A */	fadds f0, f3, f0
/* 8047B7F8  EF 1C 00 2A */	fadds f24, f28, f0
/* 8047B7FC  C0 14 00 04 */	lfs f0, 4(r20)
/* 8047B800  EC 00 E8 2A */	fadds f0, f0, f29
/* 8047B804  EC 24 00 2A */	fadds f1, f4, f0
/* 8047B808  C0 13 00 00 */	lfs f0, 0(r19)
/* 8047B80C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8047B810  40 80 00 08 */	bge lbl_8047B818
/* 8047B814  FC 20 00 90 */	fmr f1, f0
lbl_8047B818:
/* 8047B818  C0 14 FF F8 */	lfs f0, -8(r20)
/* 8047B81C  EF 21 00 28 */	fsubs f25, f1, f0
/* 8047B820  FC 20 D0 90 */	fmr f1, f26
/* 8047B824  FC 40 C0 90 */	fmr f2, f24
/* 8047B828  4B DE BE 4D */	bl cM_atan2s__Fff
/* 8047B82C  7C 64 1B 78 */	mr r4, r3
/* 8047B830  80 79 00 00 */	lwz r3, 0(r25)
/* 8047B834  4B B9 0B A9 */	bl mDoMtx_YrotS__FPA4_fs
/* 8047B838  EC 3A 06 B2 */	fmuls f1, f26, f26
/* 8047B83C  EC 18 06 32 */	fmuls f0, f24, f24
/* 8047B840  EC 41 00 2A */	fadds f2, f1, f0
/* 8047B844  FC 02 F0 40 */	fcmpo cr0, f2, f30
/* 8047B848  40 81 00 0C */	ble lbl_8047B854
/* 8047B84C  FC 00 10 34 */	frsqrte f0, f2
/* 8047B850  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8047B854:
/* 8047B854  FC 20 C8 90 */	fmr f1, f25
/* 8047B858  4B DE BE 1D */	bl cM_atan2s__Fff
/* 8047B85C  7C 03 00 D0 */	neg r0, r3
/* 8047B860  7C 04 07 34 */	extsh r4, r0
/* 8047B864  80 79 00 00 */	lwz r3, 0(r25)
/* 8047B868  4B B9 0B 35 */	bl mDoMtx_XrotM__FPA4_fs
/* 8047B86C  38 61 00 60 */	addi r3, r1, 0x60
/* 8047B870  38 81 00 54 */	addi r4, r1, 0x54
/* 8047B874  4B DF 56 79 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8047B878  C0 34 FF F4 */	lfs f1, -0xc(r20)
/* 8047B87C  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8047B880  EC 01 00 2A */	fadds f0, f1, f0
/* 8047B884  D0 14 00 00 */	stfs f0, 0(r20)
/* 8047B888  C0 34 FF F8 */	lfs f1, -8(r20)
/* 8047B88C  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8047B890  EC 01 00 2A */	fadds f0, f1, f0
/* 8047B894  D0 14 00 04 */	stfs f0, 4(r20)
/* 8047B898  C0 34 FF FC */	lfs f1, -4(r20)
/* 8047B89C  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8047B8A0  EC 01 00 2A */	fadds f0, f1, f0
/* 8047B8A4  D0 14 00 08 */	stfs f0, 8(r20)
/* 8047B8A8  A8 1E 06 0C */	lha r0, 0x60c(r30)
/* 8047B8AC  7C 00 AA 14 */	add r0, r0, r21
/* 8047B8B0  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 8047B8B4  40 82 00 68 */	bne lbl_8047B91C
/* 8047B8B8  C0 14 00 00 */	lfs f0, 0(r20)
/* 8047B8BC  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8047B8C0  C0 34 00 04 */	lfs f1, 4(r20)
/* 8047B8C4  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 8047B8C8  C0 14 00 08 */	lfs f0, 8(r20)
/* 8047B8CC  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8047B8D0  C0 17 00 34 */	lfs f0, 0x34(r23)
/* 8047B8D4  EC 01 00 2A */	fadds f0, f1, f0
/* 8047B8D8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8047B8DC  38 61 00 78 */	addi r3, r1, 0x78
/* 8047B8E0  38 81 00 6C */	addi r4, r1, 0x6c
/* 8047B8E4  4B DE C4 29 */	bl SetPos__11cBgS_GndChkFPC3Vec
/* 8047B8E8  7E C3 B3 78 */	mr r3, r22
/* 8047B8EC  38 81 00 78 */	addi r4, r1, 0x78
/* 8047B8F0  4B BF 8B B1 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8047B8F4  C0 17 00 38 */	lfs f0, 0x38(r23)
/* 8047B8F8  EC 00 08 2A */	fadds f0, f0, f1
/* 8047B8FC  D0 13 00 00 */	stfs f0, 0(r19)
/* 8047B900  C0 13 00 00 */	lfs f0, 0(r19)
/* 8047B904  C0 54 00 04 */	lfs f2, 4(r20)
/* 8047B908  EC 20 10 28 */	fsubs f1, f0, f2
/* 8047B90C  C0 17 00 34 */	lfs f0, 0x34(r23)
/* 8047B910  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8047B914  40 81 00 08 */	ble lbl_8047B91C
/* 8047B918  D0 53 00 00 */	stfs f2, 0(r19)
lbl_8047B91C:
/* 8047B91C  3A B5 00 01 */	addi r21, r21, 1
/* 8047B920  2C 15 00 14 */	cmpwi r21, 0x14
/* 8047B924  3B BD 0F A0 */	addi r29, r29, 0xfa0
/* 8047B928  3B 9C 0B B8 */	addi r28, r28, 0xbb8
/* 8047B92C  3B 7B 1B 58 */	addi r27, r27, 0x1b58
/* 8047B930  3B 5A 1F 40 */	addi r26, r26, 0x1f40
/* 8047B934  3A 94 00 0C */	addi r20, r20, 0xc
/* 8047B938  3A 73 00 04 */	addi r19, r19, 4
/* 8047B93C  41 80 FD E4 */	blt lbl_8047B720
/* 8047B940  38 61 00 78 */	addi r3, r1, 0x78
/* 8047B944  38 80 FF FF */	li r4, -1
/* 8047B948  4B BF BC A9 */	bl __dt__11dBgS_GndChkFv
/* 8047B94C  E3 E1 01 98 */	psq_l f31, 408(r1), 0, 0 /* qr0 */
/* 8047B950  CB E1 01 90 */	lfd f31, 0x190(r1)
/* 8047B954  E3 C1 01 88 */	psq_l f30, 392(r1), 0, 0 /* qr0 */
/* 8047B958  CB C1 01 80 */	lfd f30, 0x180(r1)
/* 8047B95C  E3 A1 01 78 */	psq_l f29, 376(r1), 0, 0 /* qr0 */
/* 8047B960  CB A1 01 70 */	lfd f29, 0x170(r1)
/* 8047B964  E3 81 01 68 */	psq_l f28, 360(r1), 0, 0 /* qr0 */
/* 8047B968  CB 81 01 60 */	lfd f28, 0x160(r1)
/* 8047B96C  E3 61 01 58 */	psq_l f27, 344(r1), 0, 0 /* qr0 */
/* 8047B970  CB 61 01 50 */	lfd f27, 0x150(r1)
/* 8047B974  E3 41 01 48 */	psq_l f26, 328(r1), 0, 0 /* qr0 */
/* 8047B978  CB 41 01 40 */	lfd f26, 0x140(r1)
/* 8047B97C  E3 21 01 38 */	psq_l f25, 312(r1), 0, 0 /* qr0 */
/* 8047B980  CB 21 01 30 */	lfd f25, 0x130(r1)
/* 8047B984  E3 01 01 28 */	psq_l f24, 296(r1), 0, 0 /* qr0 */
/* 8047B988  CB 01 01 20 */	lfd f24, 0x120(r1)
/* 8047B98C  39 61 01 20 */	addi r11, r1, 0x120
/* 8047B990  4B EE 68 65 */	bl _restgpr_16
/* 8047B994  80 01 01 A4 */	lwz r0, 0x1a4(r1)
/* 8047B998  7C 08 03 A6 */	mtlr r0
/* 8047B99C  38 21 01 A0 */	addi r1, r1, 0x1a0
/* 8047B9A0  4E 80 00 20 */	blr 
