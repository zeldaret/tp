lbl_8012B724:
/* 8012B724  94 21 FE 90 */	stwu r1, -0x170(r1)
/* 8012B728  7C 08 02 A6 */	mflr r0
/* 8012B72C  90 01 01 74 */	stw r0, 0x174(r1)
/* 8012B730  DB E1 01 60 */	stfd f31, 0x160(r1)
/* 8012B734  F3 E1 01 68 */	psq_st f31, 360(r1), 0, 0 /* qr0 */
/* 8012B738  DB C1 01 50 */	stfd f30, 0x150(r1)
/* 8012B73C  F3 C1 01 58 */	psq_st f30, 344(r1), 0, 0 /* qr0 */
/* 8012B740  DB A1 01 40 */	stfd f29, 0x140(r1)
/* 8012B744  F3 A1 01 48 */	psq_st f29, 328(r1), 0, 0 /* qr0 */
/* 8012B748  DB 81 01 30 */	stfd f28, 0x130(r1)
/* 8012B74C  F3 81 01 38 */	psq_st f28, 312(r1), 0, 0 /* qr0 */
/* 8012B750  DB 61 01 20 */	stfd f27, 0x120(r1)
/* 8012B754  F3 61 01 28 */	psq_st f27, 296(r1), 0, 0 /* qr0 */
/* 8012B758  DB 41 01 10 */	stfd f26, 0x110(r1)
/* 8012B75C  F3 41 01 18 */	psq_st f26, 280(r1), 0, 0 /* qr0 */
/* 8012B760  39 61 01 10 */	addi r11, r1, 0x110
/* 8012B764  48 23 6A 3D */	bl __save_gpr
/* 8012B768  7C 6F 1B 78 */	mr r15, r3
/* 8012B76C  80 63 20 60 */	lwz r3, 0x2060(r3)
/* 8012B770  88 03 00 00 */	lbz r0, 0(r3)
/* 8012B774  28 00 00 00 */	cmplwi r0, 0
/* 8012B778  41 82 07 E8 */	beq lbl_8012BF60
/* 8012B77C  80 0F 06 50 */	lwz r0, 0x650(r15)
/* 8012B780  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8012B784  80 0F 31 A0 */	lwz r0, 0x31a0(r15)
/* 8012B788  54 1B 07 FE */	clrlwi r27, r0, 0x1f
/* 8012B78C  80 61 00 C4 */	lwz r3, 0xc4(r1)
/* 8012B790  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8012B794  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8012B798  38 63 03 90 */	addi r3, r3, 0x390
/* 8012B79C  3C 80 80 39 */	lis r4, localFootOffset@ha
/* 8012B7A0  38 84 1E 18 */	addi r4, r4, localFootOffset@l
/* 8012B7A4  38 A1 00 90 */	addi r5, r1, 0x90
/* 8012B7A8  48 21 B5 C5 */	bl PSMTXMultVec
/* 8012B7AC  80 6F 06 50 */	lwz r3, 0x650(r15)
/* 8012B7B0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8012B7B4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8012B7B8  38 63 04 80 */	addi r3, r3, 0x480
/* 8012B7BC  3C 80 80 39 */	lis r4, localFootOffset@ha
/* 8012B7C0  38 84 1E 18 */	addi r4, r4, localFootOffset@l
/* 8012B7C4  38 A1 00 9C */	addi r5, r1, 0x9c
/* 8012B7C8  48 21 B5 A5 */	bl PSMTXMultVec
/* 8012B7CC  80 6F 06 50 */	lwz r3, 0x650(r15)
/* 8012B7D0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8012B7D4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8012B7D8  38 63 05 D0 */	addi r3, r3, 0x5d0
/* 8012B7DC  3C 80 80 39 */	lis r4, localFootOffset@ha
/* 8012B7E0  38 84 1E 18 */	addi r4, r4, localFootOffset@l
/* 8012B7E4  38 A1 00 A8 */	addi r5, r1, 0xa8
/* 8012B7E8  48 21 B5 85 */	bl PSMTXMultVec
/* 8012B7EC  80 6F 06 50 */	lwz r3, 0x650(r15)
/* 8012B7F0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8012B7F4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8012B7F8  38 63 06 C0 */	addi r3, r3, 0x6c0
/* 8012B7FC  3C 80 80 39 */	lis r4, localFootOffset@ha
/* 8012B800  38 84 1E 18 */	addi r4, r4, localFootOffset@l
/* 8012B804  38 A1 00 B4 */	addi r5, r1, 0xb4
/* 8012B808  48 21 B5 65 */	bl PSMTXMultVec
/* 8012B80C  38 A0 00 00 */	li r5, 0
/* 8012B810  80 0F 19 9C */	lwz r0, 0x199c(r15)
/* 8012B814  54 06 06 B5 */	rlwinm. r6, r0, 0, 0x1a, 0x1a
/* 8012B818  41 82 00 18 */	beq lbl_8012B830
/* 8012B81C  80 8F 31 A0 */	lwz r4, 0x31a0(r15)
/* 8012B820  3C 60 00 08 */	lis r3, 0x0008 /* 0x00078C52@ha */
/* 8012B824  38 03 8C 52 */	addi r0, r3, 0x8C52 /* 0x00078C52@l */
/* 8012B828  7C 80 00 39 */	and. r0, r4, r0
/* 8012B82C  41 82 00 08 */	beq lbl_8012B834
lbl_8012B830:
/* 8012B830  38 A0 00 01 */	li r5, 1
lbl_8012B834:
/* 8012B834  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 8012B838  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 8012B83C  38 60 00 00 */	li r3, 0
/* 8012B840  40 82 00 1C */	bne lbl_8012B85C
/* 8012B844  28 06 00 00 */	cmplwi r6, 0
/* 8012B848  41 82 00 18 */	beq lbl_8012B860
/* 8012B84C  C0 2F 2B A8 */	lfs f1, 0x2ba8(r15)
/* 8012B850  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8012B854  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012B858  40 80 00 08 */	bge lbl_8012B860
lbl_8012B85C:
/* 8012B85C  38 60 00 01 */	li r3, 1
lbl_8012B860:
/* 8012B860  54 71 06 3E */	clrlwi r17, r3, 0x18
/* 8012B864  3A C1 00 68 */	addi r22, r1, 0x68
/* 8012B868  3A E1 00 90 */	addi r23, r1, 0x90
/* 8012B86C  A8 0F 2F F0 */	lha r0, 0x2ff0(r15)
/* 8012B870  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8012B874  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8012B878  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8012B87C  7C 03 04 2E */	lfsx f0, r3, r0
/* 8012B880  FC 00 02 10 */	fabs f0, f0
/* 8012B884  FC 20 00 18 */	frsp f1, f0
/* 8012B888  C0 02 93 00 */	lfs f0, lit_6895(r2)
/* 8012B88C  EF C0 00 72 */	fmuls f30, f0, f1
/* 8012B890  C0 02 92 E0 */	lfs f0, lit_6845(r2)
/* 8012B894  EF A0 F0 2A */	fadds f29, f0, f30
/* 8012B898  FF 80 E8 50 */	fneg f28, f29
/* 8012B89C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8012B8A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8012B8A4  A8 0F 04 E4 */	lha r0, 0x4e4(r15)
/* 8012B8A8  7C 00 00 D0 */	neg r0, r0
/* 8012B8AC  7C 04 07 34 */	extsh r4, r0
/* 8012B8B0  4B EE 0A 95 */	bl mDoMtx_XrotS__FPA4_fs
/* 8012B8B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8012B8B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8012B8BC  A8 0F 04 E6 */	lha r0, 0x4e6(r15)
/* 8012B8C0  7C 00 00 D0 */	neg r0, r0
/* 8012B8C4  7C 04 07 34 */	extsh r4, r0
/* 8012B8C8  4B EE 0B 6D */	bl mDoMtx_YrotM__FPA4_fs
/* 8012B8CC  3A 60 00 00 */	li r19, 0
/* 8012B8D0  3B 00 00 00 */	li r24, 0
/* 8012B8D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8012B8D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8012B8DC  3A A3 0F 38 */	addi r21, r3, 0xf38
/* 8012B8E0  C3 E2 93 00 */	lfs f31, lit_6895(r2)
/* 8012B8E4  C3 62 93 A4 */	lfs f27, lit_9138(r2)
lbl_8012B8E8:
/* 8012B8E8  2C 13 00 00 */	cmpwi r19, 0
/* 8012B8EC  40 82 00 0C */	bne lbl_8012B8F8
/* 8012B8F0  3A 8F 29 04 */	addi r20, r15, 0x2904
/* 8012B8F4  48 00 00 08 */	b lbl_8012B8FC
lbl_8012B8F8:
/* 8012B8F8  3A 8F 2A 4C */	addi r20, r15, 0x2a4c
lbl_8012B8FC:
/* 8012B8FC  3A 40 00 00 */	li r18, 0
/* 8012B900  3B 20 00 00 */	li r25, 0
/* 8012B904  39 C1 00 08 */	addi r14, r1, 8
/* 8012B908  7D CE C2 14 */	add r14, r14, r24
lbl_8012B90C:
/* 8012B90C  2C 11 00 00 */	cmpwi r17, 0
/* 8012B910  41 82 00 10 */	beq lbl_8012B920
/* 8012B914  38 00 00 0F */	li r0, 0xf
/* 8012B918  98 14 00 01 */	stb r0, 1(r20)
/* 8012B91C  48 00 00 A0 */	b lbl_8012B9BC
lbl_8012B920:
/* 8012B920  38 61 00 44 */	addi r3, r1, 0x44
/* 8012B924  7E E4 BB 78 */	mr r4, r23
/* 8012B928  38 B4 00 08 */	addi r5, r20, 8
/* 8012B92C  48 13 B2 09 */	bl __mi__4cXyzCFRC3Vec
/* 8012B930  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 8012B934  D0 41 00 78 */	stfs f2, 0x78(r1)
/* 8012B938  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8012B93C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8012B940  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 8012B944  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 8012B948  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8012B94C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8012B950  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8012B954  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8012B958  38 61 00 20 */	addi r3, r1, 0x20
/* 8012B95C  48 21 B7 DD */	bl PSVECSquareMag
/* 8012B960  C0 02 93 50 */	lfs f0, lit_8247(r2)
/* 8012B964  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012B968  40 80 00 4C */	bge lbl_8012B9B4
/* 8012B96C  28 1B 00 00 */	cmplwi r27, 0
/* 8012B970  41 82 00 44 */	beq lbl_8012B9B4
/* 8012B974  88 14 00 00 */	lbz r0, 0(r20)
/* 8012B978  28 00 00 00 */	cmplwi r0, 0
/* 8012B97C  41 82 00 38 */	beq lbl_8012B9B4
/* 8012B980  88 74 00 01 */	lbz r3, 1(r20)
/* 8012B984  28 03 00 00 */	cmplwi r3, 0
/* 8012B988  41 82 00 10 */	beq lbl_8012B998
/* 8012B98C  38 03 FF FF */	addi r0, r3, -1
/* 8012B990  98 14 00 01 */	stb r0, 1(r20)
/* 8012B994  48 00 00 28 */	b lbl_8012B9BC
lbl_8012B998:
/* 8012B998  C0 14 00 08 */	lfs f0, 8(r20)
/* 8012B99C  D0 17 00 00 */	stfs f0, 0(r23)
/* 8012B9A0  C0 14 00 0C */	lfs f0, 0xc(r20)
/* 8012B9A4  D0 17 00 04 */	stfs f0, 4(r23)
/* 8012B9A8  C0 14 00 10 */	lfs f0, 0x10(r20)
/* 8012B9AC  D0 17 00 08 */	stfs f0, 8(r23)
/* 8012B9B0  48 00 00 0C */	b lbl_8012B9BC
lbl_8012B9B4:
/* 8012B9B4  38 00 00 0F */	li r0, 0xf
/* 8012B9B8  98 14 00 01 */	stb r0, 1(r20)
lbl_8012B9BC:
/* 8012B9BC  C0 17 00 00 */	lfs f0, 0(r23)
/* 8012B9C0  D0 14 00 08 */	stfs f0, 8(r20)
/* 8012B9C4  C0 17 00 04 */	lfs f0, 4(r23)
/* 8012B9C8  D0 14 00 0C */	stfs f0, 0xc(r20)
/* 8012B9CC  C0 17 00 08 */	lfs f0, 8(r23)
/* 8012B9D0  D0 14 00 10 */	stfs f0, 0x10(r20)
/* 8012B9D4  C0 57 00 08 */	lfs f2, 8(r23)
/* 8012B9D8  C0 2F 04 D4 */	lfs f1, 0x4d4(r15)
/* 8012B9DC  C0 0D 81 10 */	lfs f0, l_autoUpHeight(r13)
/* 8012B9E0  EC 01 00 2A */	fadds f0, f1, f0
/* 8012B9E4  EC 1F 00 2A */	fadds f0, f31, f0
/* 8012B9E8  EC 3E 00 2A */	fadds f1, f30, f0
/* 8012B9EC  C0 17 00 00 */	lfs f0, 0(r23)
/* 8012B9F0  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8012B9F4  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 8012B9F8  D0 41 00 8C */	stfs f2, 0x8c(r1)
/* 8012B9FC  38 6F 1D 08 */	addi r3, r15, 0x1d08
/* 8012BA00  38 81 00 84 */	addi r4, r1, 0x84
/* 8012BA04  48 13 C3 25 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8012BA08  7E A3 AB 78 */	mr r3, r21
/* 8012BA0C  38 8F 1D 08 */	addi r4, r15, 0x1d08
/* 8012BA10  4B F4 8A 91 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8012BA14  FF 40 08 90 */	fmr f26, f1
/* 8012BA18  C0 17 00 04 */	lfs f0, 4(r23)
/* 8012BA1C  EC 00 D0 28 */	fsubs f0, f0, f26
/* 8012BA20  FC 1B D0 00 */	fcmpu cr0, f27, f26
/* 8012BA24  41 82 00 88 */	beq lbl_8012BAAC
/* 8012BA28  FC 00 E8 40 */	fcmpo cr0, f0, f29
/* 8012BA2C  40 80 00 80 */	bge lbl_8012BAAC
/* 8012BA30  FC 00 E0 40 */	fcmpo cr0, f0, f28
/* 8012BA34  40 81 00 78 */	ble lbl_8012BAAC
/* 8012BA38  D3 56 00 00 */	stfs f26, 0(r22)
/* 8012BA3C  38 00 00 01 */	li r0, 1
/* 8012BA40  98 14 00 00 */	stb r0, 0(r20)
/* 8012BA44  7D E3 7B 78 */	mr r3, r15
/* 8012BA48  38 8F 1D 1C */	addi r4, r15, 0x1d1c
/* 8012BA4C  A8 AF 04 E6 */	lha r5, 0x4e6(r15)
/* 8012BA50  4B F8 46 49 */	bl getGroundAngle__9daAlink_cFP13cBgS_PolyInfos
/* 8012BA54  7C 6E CB 2E */	sthx r3, r14, r25
/* 8012BA58  C0 37 00 08 */	lfs f1, 8(r23)
/* 8012BA5C  C0 0F 04 D8 */	lfs f0, 0x4d8(r15)
/* 8012BA60  EC 61 00 28 */	fsubs f3, f1, f0
/* 8012BA64  C0 0F 04 D4 */	lfs f0, 0x4d4(r15)
/* 8012BA68  EC 5A 00 28 */	fsubs f2, f26, f0
/* 8012BA6C  C0 37 00 00 */	lfs f1, 0(r23)
/* 8012BA70  C0 0F 04 D0 */	lfs f0, 0x4d0(r15)
/* 8012BA74  EC 01 00 28 */	fsubs f0, f1, f0
/* 8012BA78  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8012BA7C  D0 41 00 88 */	stfs f2, 0x88(r1)
/* 8012BA80  D0 61 00 8C */	stfs f3, 0x8c(r1)
/* 8012BA84  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8012BA88  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8012BA8C  38 81 00 84 */	addi r4, r1, 0x84
/* 8012BA90  38 A1 00 78 */	addi r5, r1, 0x78
/* 8012BA94  48 21 B2 D9 */	bl PSMTXMultVec
/* 8012BA98  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 8012BA9C  C0 0F 04 D4 */	lfs f0, 0x4d4(r15)
/* 8012BAA0  EC 01 00 2A */	fadds f0, f1, f0
/* 8012BAA4  D0 16 00 00 */	stfs f0, 0(r22)
/* 8012BAA8  48 00 00 14 */	b lbl_8012BABC
lbl_8012BAAC:
/* 8012BAAC  C0 0F 04 D4 */	lfs f0, 0x4d4(r15)
/* 8012BAB0  D0 16 00 00 */	stfs f0, 0(r22)
/* 8012BAB4  38 00 00 00 */	li r0, 0
/* 8012BAB8  98 14 00 00 */	stb r0, 0(r20)
lbl_8012BABC:
/* 8012BABC  3A 52 00 01 */	addi r18, r18, 1
/* 8012BAC0  2C 12 00 02 */	cmpwi r18, 2
/* 8012BAC4  3B 39 00 02 */	addi r25, r25, 2
/* 8012BAC8  3A 94 00 A4 */	addi r20, r20, 0xa4
/* 8012BACC  3A D6 00 04 */	addi r22, r22, 4
/* 8012BAD0  3A F7 00 0C */	addi r23, r23, 0xc
/* 8012BAD4  41 80 FE 38 */	blt lbl_8012B90C
/* 8012BAD8  3A 73 00 01 */	addi r19, r19, 1
/* 8012BADC  2C 13 00 02 */	cmpwi r19, 2
/* 8012BAE0  3B 18 00 04 */	addi r24, r24, 4
/* 8012BAE4  41 80 FE 04 */	blt lbl_8012B8E8
/* 8012BAE8  2C 11 00 00 */	cmpwi r17, 0
/* 8012BAEC  40 82 00 10 */	bne lbl_8012BAFC
/* 8012BAF0  38 00 00 02 */	li r0, 2
/* 8012BAF4  7C 09 03 A6 */	mtctr r0
lbl_8012BAF8:
/* 8012BAF8  42 00 00 00 */	bdnz lbl_8012BAF8
lbl_8012BAFC:
/* 8012BAFC  7D E3 7B 78 */	mr r3, r15
/* 8012BB00  4B F8 60 AD */	bl setSandShapeOffset__9daAlink_cFv
/* 8012BB04  7D E3 7B 78 */	mr r3, r15
/* 8012BB08  38 8F 2B A8 */	addi r4, r15, 0x2ba8
/* 8012BB0C  C0 2F 2B A8 */	lfs f1, 0x2ba8(r15)
/* 8012BB10  4B F7 71 15 */	bl setMatrixOffset__9daAlink_cFPff
/* 8012BB14  7D E3 7B 78 */	mr r3, r15
/* 8012BB18  4B F8 5C 15 */	bl setSandDownBgCheckWallH__9daAlink_cFv
/* 8012BB1C  7D E3 7B 78 */	mr r3, r15
/* 8012BB20  38 8F 2B 94 */	addi r4, r15, 0x2b94
/* 8012BB24  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8012BB28  4B F7 70 FD */	bl setMatrixOffset__9daAlink_cFPff
/* 8012BB2C  3A 80 00 00 */	li r20, 0
/* 8012BB30  3B E0 00 00 */	li r31, 0
/* 8012BB34  3B C0 00 00 */	li r30, 0
lbl_8012BB38:
/* 8012BB38  2C 14 00 00 */	cmpwi r20, 0
/* 8012BB3C  40 82 00 0C */	bne lbl_8012BB48
/* 8012BB40  3A 6F 29 04 */	addi r19, r15, 0x2904
/* 8012BB44  48 00 00 08 */	b lbl_8012BB4C
lbl_8012BB48:
/* 8012BB48  3A 6F 2A 4C */	addi r19, r15, 0x2a4c
lbl_8012BB4C:
/* 8012BB4C  3A 40 00 00 */	li r18, 0
/* 8012BB50  3B A0 00 00 */	li r29, 0
/* 8012BB54  3B 80 00 00 */	li r28, 0
/* 8012BB58  3B 41 00 18 */	addi r26, r1, 0x18
/* 8012BB5C  7F 5A F2 14 */	add r26, r26, r30
/* 8012BB60  3B 21 00 10 */	addi r25, r1, 0x10
/* 8012BB64  7F 39 F2 14 */	add r25, r25, r30
/* 8012BB68  3B 01 00 68 */	addi r24, r1, 0x68
/* 8012BB6C  7F 18 FA 14 */	add r24, r24, r31
/* 8012BB70  3A E1 00 08 */	addi r23, r1, 8
/* 8012BB74  7E F7 F2 14 */	add r23, r23, r30
lbl_8012BB78:
/* 8012BB78  2C 11 00 00 */	cmpwi r17, 0
/* 8012BB7C  40 82 00 20 */	bne lbl_8012BB9C
/* 8012BB80  2C 14 00 00 */	cmpwi r20, 0
/* 8012BB84  40 82 00 28 */	bne lbl_8012BBAC
/* 8012BB88  7D E3 7B 78 */	mr r3, r15
/* 8012BB8C  38 80 00 72 */	li r4, 0x72
/* 8012BB90  4B FF CC 7D */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 8012BB94  2C 03 00 00 */	cmpwi r3, 0
/* 8012BB98  41 82 00 14 */	beq lbl_8012BBAC
lbl_8012BB9C:
/* 8012BB9C  38 00 00 00 */	li r0, 0
/* 8012BBA0  7C 1A E3 2E */	sthx r0, r26, r28
/* 8012BBA4  7C 19 E3 2E */	sthx r0, r25, r28
/* 8012BBA8  48 00 00 80 */	b lbl_8012BC28
lbl_8012BBAC:
/* 8012BBAC  7C 38 EC 2E */	lfsx f1, r24, r29
/* 8012BBB0  80 61 00 C4 */	lwz r3, 0xc4(r1)
/* 8012BBB4  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 8012BBB8  EC 21 00 28 */	fsubs f1, f1, f0
/* 8012BBBC  C0 02 93 BC */	lfs f0, lit_10042(r2)
/* 8012BBC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012BBC4  4C 41 13 82 */	cror 2, 1, 2
/* 8012BBC8  40 82 00 08 */	bne lbl_8012BBD0
/* 8012BBCC  FC 20 00 90 */	fmr f1, f0
lbl_8012BBD0:
/* 8012BBD0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8012BBD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012BBD8  41 81 00 0C */	bgt lbl_8012BBE4
/* 8012BBDC  28 1B 00 00 */	cmplwi r27, 0
/* 8012BBE0  41 82 00 3C */	beq lbl_8012BC1C
lbl_8012BBE4:
/* 8012BBE4  7D E3 7B 78 */	mr r3, r15
/* 8012BBE8  7E 64 9B 78 */	mr r4, r19
/* 8012BBEC  7D DA E2 14 */	add r14, r26, r28
/* 8012BBF0  7D C5 73 78 */	mr r5, r14
/* 8012BBF4  7E D9 E2 14 */	add r22, r25, r28
/* 8012BBF8  7E C6 B3 78 */	mr r6, r22
/* 8012BBFC  38 E0 00 01 */	li r7, 1
/* 8012BC00  4B F7 70 E1 */	bl setLegAngle__9daAlink_cFfP18daAlink_footData_cPsPsi
/* 8012BC04  2C 03 00 00 */	cmpwi r3, 0
/* 8012BC08  40 82 00 20 */	bne lbl_8012BC28
/* 8012BC0C  38 00 00 00 */	li r0, 0
/* 8012BC10  B0 0E 00 00 */	sth r0, 0(r14)
/* 8012BC14  B0 16 00 00 */	sth r0, 0(r22)
/* 8012BC18  48 00 00 10 */	b lbl_8012BC28
lbl_8012BC1C:
/* 8012BC1C  38 00 00 00 */	li r0, 0
/* 8012BC20  7C 1A E3 2E */	sthx r0, r26, r28
/* 8012BC24  7C 19 E3 2E */	sthx r0, r25, r28
lbl_8012BC28:
/* 8012BC28  38 73 00 06 */	addi r3, r19, 6
/* 8012BC2C  7C 9A E2 AE */	lhax r4, r26, r28
/* 8012BC30  38 A0 00 02 */	li r5, 2
/* 8012BC34  38 C0 18 00 */	li r6, 0x1800
/* 8012BC38  38 E0 00 10 */	li r7, 0x10
/* 8012BC3C  48 14 49 05 */	bl cLib_addCalcAngleS__FPsssss
/* 8012BC40  38 73 00 04 */	addi r3, r19, 4
/* 8012BC44  7C 99 E2 AE */	lhax r4, r25, r28
/* 8012BC48  38 A0 00 02 */	li r5, 2
/* 8012BC4C  38 C0 18 00 */	li r6, 0x1800
/* 8012BC50  38 E0 00 10 */	li r7, 0x10
/* 8012BC54  48 14 48 ED */	bl cLib_addCalcAngleS__FPsssss
/* 8012BC58  A0 0F 2F E8 */	lhz r0, 0x2fe8(r15)
/* 8012BC5C  28 00 01 0E */	cmplwi r0, 0x10e
/* 8012BC60  40 82 00 0C */	bne lbl_8012BC6C
/* 8012BC64  A8 8F 04 E4 */	lha r4, 0x4e4(r15)
/* 8012BC68  48 00 00 10 */	b lbl_8012BC78
lbl_8012BC6C:
/* 8012BC6C  A8 0F 04 E4 */	lha r0, 0x4e4(r15)
/* 8012BC70  7C 00 00 D0 */	neg r0, r0
/* 8012BC74  7C 04 07 34 */	extsh r4, r0
lbl_8012BC78:
/* 8012BC78  2C 11 00 00 */	cmpwi r17, 0
/* 8012BC7C  40 82 00 2C */	bne lbl_8012BCA8
/* 8012BC80  88 13 00 00 */	lbz r0, 0(r19)
/* 8012BC84  28 00 00 00 */	cmplwi r0, 0
/* 8012BC88  41 82 00 20 */	beq lbl_8012BCA8
/* 8012BC8C  80 0F 31 74 */	lwz r0, 0x3174(r15)
/* 8012BC90  2C 00 00 08 */	cmpwi r0, 8
/* 8012BC94  41 82 00 14 */	beq lbl_8012BCA8
/* 8012BC98  28 1B 00 00 */	cmplwi r27, 0
/* 8012BC9C  41 82 00 0C */	beq lbl_8012BCA8
/* 8012BCA0  7C 17 E2 AE */	lhax r0, r23, r28
/* 8012BCA4  7C 84 02 14 */	add r4, r4, r0
lbl_8012BCA8:
/* 8012BCA8  38 73 00 02 */	addi r3, r19, 2
/* 8012BCAC  38 A0 00 02 */	li r5, 2
/* 8012BCB0  38 C0 18 00 */	li r6, 0x1800
/* 8012BCB4  38 E0 00 10 */	li r7, 0x10
/* 8012BCB8  48 14 48 89 */	bl cLib_addCalcAngleS__FPsssss
/* 8012BCBC  3A 52 00 01 */	addi r18, r18, 1
/* 8012BCC0  2C 12 00 02 */	cmpwi r18, 2
/* 8012BCC4  3B BD 00 04 */	addi r29, r29, 4
/* 8012BCC8  3B 9C 00 02 */	addi r28, r28, 2
/* 8012BCCC  3A 73 00 A4 */	addi r19, r19, 0xa4
/* 8012BCD0  41 80 FE A8 */	blt lbl_8012BB78
/* 8012BCD4  3A 94 00 01 */	addi r20, r20, 1
/* 8012BCD8  2C 14 00 02 */	cmpwi r20, 2
/* 8012BCDC  3B FF 00 08 */	addi r31, r31, 8
/* 8012BCE0  3B DE 00 04 */	addi r30, r30, 4
/* 8012BCE4  41 80 FE 54 */	blt lbl_8012BB38
/* 8012BCE8  80 01 00 C0 */	lwz r0, 0xc0(r1)
/* 8012BCEC  2C 00 00 00 */	cmpwi r0, 0
/* 8012BCF0  40 82 01 C8 */	bne lbl_8012BEB8
/* 8012BCF4  38 6F 04 D0 */	addi r3, r15, 0x4d0
/* 8012BCF8  4B EE 10 6D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8012BCFC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8012BD00  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8012BD04  A8 8F 04 E6 */	lha r4, 0x4e6(r15)
/* 8012BD08  A8 0F 30 8C */	lha r0, 0x308c(r15)
/* 8012BD0C  7C 04 02 14 */	add r0, r4, r0
/* 8012BD10  7C 04 07 34 */	extsh r4, r0
/* 8012BD14  4B EE 07 21 */	bl mDoMtx_YrotM__FPA4_fs
/* 8012BD18  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8012BD1C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8012BD20  3C 80 80 39 */	lis r4, frontOffset@ha
/* 8012BD24  38 84 1E 24 */	addi r4, r4, frontOffset@l
/* 8012BD28  38 A1 00 5C */	addi r5, r1, 0x5c
/* 8012BD2C  48 21 B0 41 */	bl PSMTXMultVec
/* 8012BD30  38 61 00 38 */	addi r3, r1, 0x38
/* 8012BD34  38 8F 04 D0 */	addi r4, r15, 0x4d0
/* 8012BD38  C0 22 93 14 */	lfs f1, lit_7307(r2)
/* 8012BD3C  48 13 AE 49 */	bl __ml__4cXyzCFf
/* 8012BD40  38 61 00 2C */	addi r3, r1, 0x2c
/* 8012BD44  38 81 00 38 */	addi r4, r1, 0x38
/* 8012BD48  38 A1 00 5C */	addi r5, r1, 0x5c
/* 8012BD4C  48 13 AD E9 */	bl __mi__4cXyzCFRC3Vec
/* 8012BD50  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8012BD54  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8012BD58  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 8012BD5C  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 8012BD60  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8012BD64  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8012BD68  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8012BD6C  C0 22 97 54 */	lfs f1, lit_45401(r2)
/* 8012BD70  EC 00 08 2A */	fadds f0, f0, f1
/* 8012BD74  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8012BD78  EC 02 08 2A */	fadds f0, f2, f1
/* 8012BD7C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8012BD80  38 6F 1D 08 */	addi r3, r15, 0x1d08
/* 8012BD84  38 81 00 5C */	addi r4, r1, 0x5c
/* 8012BD88  48 13 BF A1 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8012BD8C  7E A3 AB 78 */	mr r3, r21
/* 8012BD90  38 8F 1D 08 */	addi r4, r15, 0x1d08
/* 8012BD94  4B F4 87 0D */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8012BD98  FF 80 08 90 */	fmr f28, f1
/* 8012BD9C  C0 2F 04 D4 */	lfs f1, 0x4d4(r15)
/* 8012BDA0  EC 1C 08 28 */	fsubs f0, f28, f1
/* 8012BDA4  FC 00 02 10 */	fabs f0, f0
/* 8012BDA8  FC 40 00 18 */	frsp f2, f0
/* 8012BDAC  C0 02 95 1C */	lfs f0, lit_20991(r2)
/* 8012BDB0  EF 40 F0 2A */	fadds f26, f0, f30
/* 8012BDB4  FC 02 D0 40 */	fcmpo cr0, f2, f26
/* 8012BDB8  40 80 00 0C */	bge lbl_8012BDC4
/* 8012BDBC  D3 81 00 60 */	stfs f28, 0x60(r1)
/* 8012BDC0  48 00 00 08 */	b lbl_8012BDC8
lbl_8012BDC4:
/* 8012BDC4  D0 21 00 60 */	stfs f1, 0x60(r1)
lbl_8012BDC8:
/* 8012BDC8  C0 02 93 A4 */	lfs f0, lit_9138(r2)
/* 8012BDCC  FC 00 E0 00 */	fcmpu cr0, f0, f28
/* 8012BDD0  41 82 00 14 */	beq lbl_8012BDE4
/* 8012BDD4  7E A3 AB 78 */	mr r3, r21
/* 8012BDD8  38 8F 1D 1C */	addi r4, r15, 0x1d1c
/* 8012BDDC  4B F4 90 75 */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 8012BDE0  7C 70 1B 78 */	mr r16, r3
lbl_8012BDE4:
/* 8012BDE4  C0 02 93 A4 */	lfs f0, lit_9138(r2)
/* 8012BDE8  FC 00 E0 00 */	fcmpu cr0, f0, f28
/* 8012BDEC  41 82 00 14 */	beq lbl_8012BE00
/* 8012BDF0  2C 10 00 03 */	cmpwi r16, 3
/* 8012BDF4  41 82 00 0C */	beq lbl_8012BE00
/* 8012BDF8  2C 10 00 0D */	cmpwi r16, 0xd
/* 8012BDFC  40 82 00 14 */	bne lbl_8012BE10
lbl_8012BE00:
/* 8012BE00  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 8012BE04  C0 0F 2B A8 */	lfs f0, 0x2ba8(r15)
/* 8012BE08  EC 01 00 2A */	fadds f0, f1, f0
/* 8012BE0C  D0 01 00 60 */	stfs f0, 0x60(r1)
lbl_8012BE10:
/* 8012BE10  38 6F 1D 08 */	addi r3, r15, 0x1d08
/* 8012BE14  38 81 00 50 */	addi r4, r1, 0x50
/* 8012BE18  48 13 BF 11 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8012BE1C  7E A3 AB 78 */	mr r3, r21
/* 8012BE20  38 8F 1D 08 */	addi r4, r15, 0x1d08
/* 8012BE24  4B F4 86 7D */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8012BE28  FF 80 08 90 */	fmr f28, f1
/* 8012BE2C  C0 2F 04 D4 */	lfs f1, 0x4d4(r15)
/* 8012BE30  EC 1C 08 28 */	fsubs f0, f28, f1
/* 8012BE34  FC 00 02 10 */	fabs f0, f0
/* 8012BE38  FC 00 00 18 */	frsp f0, f0
/* 8012BE3C  FC 00 D0 40 */	fcmpo cr0, f0, f26
/* 8012BE40  40 80 00 0C */	bge lbl_8012BE4C
/* 8012BE44  D3 81 00 54 */	stfs f28, 0x54(r1)
/* 8012BE48  48 00 00 08 */	b lbl_8012BE50
lbl_8012BE4C:
/* 8012BE4C  D0 21 00 54 */	stfs f1, 0x54(r1)
lbl_8012BE50:
/* 8012BE50  C0 02 93 A4 */	lfs f0, lit_9138(r2)
/* 8012BE54  FC 00 E0 00 */	fcmpu cr0, f0, f28
/* 8012BE58  41 82 00 14 */	beq lbl_8012BE6C
/* 8012BE5C  7E A3 AB 78 */	mr r3, r21
/* 8012BE60  38 8F 1D 1C */	addi r4, r15, 0x1d1c
/* 8012BE64  4B F4 8F ED */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 8012BE68  7C 70 1B 78 */	mr r16, r3
lbl_8012BE6C:
/* 8012BE6C  C0 02 93 A4 */	lfs f0, lit_9138(r2)
/* 8012BE70  FC 00 E0 00 */	fcmpu cr0, f0, f28
/* 8012BE74  41 82 00 14 */	beq lbl_8012BE88
/* 8012BE78  2C 10 00 03 */	cmpwi r16, 3
/* 8012BE7C  41 82 00 0C */	beq lbl_8012BE88
/* 8012BE80  2C 10 00 0D */	cmpwi r16, 0xd
/* 8012BE84  40 82 00 14 */	bne lbl_8012BE98
lbl_8012BE88:
/* 8012BE88  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 8012BE8C  C0 0F 2B A8 */	lfs f0, 0x2ba8(r15)
/* 8012BE90  EC 01 00 2A */	fadds f0, f1, f0
/* 8012BE94  D0 01 00 54 */	stfs f0, 0x54(r1)
lbl_8012BE98:
/* 8012BE98  38 61 00 5C */	addi r3, r1, 0x5c
/* 8012BE9C  38 81 00 50 */	addi r4, r1, 0x50
/* 8012BEA0  7C 65 1B 78 */	mr r5, r3
/* 8012BEA4  48 21 B2 11 */	bl PSVECSubtract
/* 8012BEA8  38 61 00 5C */	addi r3, r1, 0x5c
/* 8012BEAC  48 13 B2 A5 */	bl atan2sY_XZ__4cXyzCFv
/* 8012BEB0  7C 64 1B 78 */	mr r4, r3
/* 8012BEB4  48 00 00 58 */	b lbl_8012BF0C
lbl_8012BEB8:
/* 8012BEB8  80 0F 31 A0 */	lwz r0, 0x31a0(r15)
/* 8012BEBC  54 00 03 9D */	rlwinm. r0, r0, 0, 0xe, 0xe
/* 8012BEC0  40 82 00 18 */	bne lbl_8012BED8
/* 8012BEC4  A0 0F 2F E8 */	lhz r0, 0x2fe8(r15)
/* 8012BEC8  28 00 01 4D */	cmplwi r0, 0x14d
/* 8012BECC  41 82 00 0C */	beq lbl_8012BED8
/* 8012BED0  28 00 01 18 */	cmplwi r0, 0x118
/* 8012BED4  40 82 00 0C */	bne lbl_8012BEE0
lbl_8012BED8:
/* 8012BED8  A8 8F 30 0C */	lha r4, 0x300c(r15)
/* 8012BEDC  48 00 00 30 */	b lbl_8012BF0C
lbl_8012BEE0:
/* 8012BEE0  28 00 01 0C */	cmplwi r0, 0x10c
/* 8012BEE4  41 82 00 1C */	beq lbl_8012BF00
/* 8012BEE8  28 00 01 0E */	cmplwi r0, 0x10e
/* 8012BEEC  41 82 00 14 */	beq lbl_8012BF00
/* 8012BEF0  28 00 01 32 */	cmplwi r0, 0x132
/* 8012BEF4  41 82 00 0C */	beq lbl_8012BF00
/* 8012BEF8  28 00 01 0D */	cmplwi r0, 0x10d
/* 8012BEFC  40 82 00 0C */	bne lbl_8012BF08
lbl_8012BF00:
/* 8012BF00  A8 8F 2F F0 */	lha r4, 0x2ff0(r15)
/* 8012BF04  48 00 00 08 */	b lbl_8012BF0C
lbl_8012BF08:
/* 8012BF08  38 80 00 00 */	li r4, 0
lbl_8012BF0C:
/* 8012BF0C  A0 0F 2F E8 */	lhz r0, 0x2fe8(r15)
/* 8012BF10  28 00 01 38 */	cmplwi r0, 0x138
/* 8012BF14  41 82 00 18 */	beq lbl_8012BF2C
/* 8012BF18  38 6F 04 E4 */	addi r3, r15, 0x4e4
/* 8012BF1C  38 A0 00 03 */	li r5, 3
/* 8012BF20  38 C0 10 00 */	li r6, 0x1000
/* 8012BF24  38 E0 03 E8 */	li r7, 0x3e8
/* 8012BF28  48 14 46 19 */	bl cLib_addCalcAngleS__FPsssss
lbl_8012BF2C:
/* 8012BF2C  38 6F 30 D6 */	addi r3, r15, 0x30d6
/* 8012BF30  80 0F 31 A0 */	lwz r0, 0x31a0(r15)
/* 8012BF34  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8012BF38  41 82 00 14 */	beq lbl_8012BF4C
/* 8012BF3C  A8 0F 04 E4 */	lha r0, 0x4e4(r15)
/* 8012BF40  7C 00 00 D0 */	neg r0, r0
/* 8012BF44  7C 04 07 34 */	extsh r4, r0
/* 8012BF48  48 00 00 08 */	b lbl_8012BF50
lbl_8012BF4C:
/* 8012BF4C  38 80 00 00 */	li r4, 0
lbl_8012BF50:
/* 8012BF50  38 A0 00 03 */	li r5, 3
/* 8012BF54  38 C0 10 00 */	li r6, 0x1000
/* 8012BF58  38 E0 01 00 */	li r7, 0x100
/* 8012BF5C  48 14 45 E5 */	bl cLib_addCalcAngleS__FPsssss
lbl_8012BF60:
/* 8012BF60  E3 E1 01 68 */	psq_l f31, 360(r1), 0, 0 /* qr0 */
/* 8012BF64  CB E1 01 60 */	lfd f31, 0x160(r1)
/* 8012BF68  E3 C1 01 58 */	psq_l f30, 344(r1), 0, 0 /* qr0 */
/* 8012BF6C  CB C1 01 50 */	lfd f30, 0x150(r1)
/* 8012BF70  E3 A1 01 48 */	psq_l f29, 328(r1), 0, 0 /* qr0 */
/* 8012BF74  CB A1 01 40 */	lfd f29, 0x140(r1)
/* 8012BF78  E3 81 01 38 */	psq_l f28, 312(r1), 0, 0 /* qr0 */
/* 8012BF7C  CB 81 01 30 */	lfd f28, 0x130(r1)
/* 8012BF80  E3 61 01 28 */	psq_l f27, 296(r1), 0, 0 /* qr0 */
/* 8012BF84  CB 61 01 20 */	lfd f27, 0x120(r1)
/* 8012BF88  E3 41 01 18 */	psq_l f26, 280(r1), 0, 0 /* qr0 */
/* 8012BF8C  CB 41 01 10 */	lfd f26, 0x110(r1)
/* 8012BF90  39 61 01 10 */	addi r11, r1, 0x110
/* 8012BF94  48 23 62 59 */	bl __restore_gpr
/* 8012BF98  80 01 01 74 */	lwz r0, 0x174(r1)
/* 8012BF9C  7C 08 03 A6 */	mtlr r0
/* 8012BFA0  38 21 01 70 */	addi r1, r1, 0x170
/* 8012BFA4  4E 80 00 20 */	blr 
