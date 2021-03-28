lbl_80D1C780:
/* 80D1C780  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80D1C784  7C 08 02 A6 */	mflr r0
/* 80D1C788  90 01 00 64 */	stw r0, 0x64(r1)
/* 80D1C78C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80D1C790  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80D1C794  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80D1C798  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80D1C79C  7C 7E 1B 78 */	mr r30, r3
/* 80D1C7A0  3C 60 80 D2 */	lis r3, l_R02_eff_id@ha
/* 80D1C7A4  3B E3 D3 D4 */	addi r31, r3, l_R02_eff_id@l
/* 80D1C7A8  38 7E 07 04 */	addi r3, r30, 0x704
/* 80D1C7AC  C0 3E 07 38 */	lfs f1, 0x738(r30)
/* 80D1C7B0  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 80D1C7B4  C0 5E 07 6C */	lfs f2, 0x76c(r30)
/* 80D1C7B8  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 80D1C7BC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80D1C7C0  EC 43 00 32 */	fmuls f2, f3, f0
/* 80D1C7C4  4B 55 3F 7C */	b cLib_chaseF__FPfff
/* 80D1C7C8  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80D1C7CC  D0 3E 06 F4 */	stfs f1, 0x6f4(r30)
/* 80D1C7D0  C0 1E 07 04 */	lfs f0, 0x704(r30)
/* 80D1C7D4  D0 1E 06 F8 */	stfs f0, 0x6f8(r30)
/* 80D1C7D8  D0 3E 06 FC */	stfs f1, 0x6fc(r30)
/* 80D1C7DC  C0 1E 06 E8 */	lfs f0, 0x6e8(r30)
/* 80D1C7E0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D1C7E4  C0 1E 06 EC */	lfs f0, 0x6ec(r30)
/* 80D1C7E8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D1C7EC  C0 1E 06 F0 */	lfs f0, 0x6f0(r30)
/* 80D1C7F0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D1C7F4  38 61 00 14 */	addi r3, r1, 0x14
/* 80D1C7F8  4B 2F 05 6C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80D1C7FC  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80D1C800  4B 2F 07 44 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80D1C804  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D1C808  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D1C80C  38 9E 06 F4 */	addi r4, r30, 0x6f4
/* 80D1C810  7C 85 23 78 */	mr r5, r4
/* 80D1C814  4B 62 A5 58 */	b PSMTXMultVec
/* 80D1C818  38 7E 06 C8 */	addi r3, r30, 0x6c8
/* 80D1C81C  38 9E 06 E8 */	addi r4, r30, 0x6e8
/* 80D1C820  4B 55 28 1C */	b Set__8cM3dGCpsFRC9cM3dGCpsS
/* 80D1C824  C3 FF 00 64 */	lfs f31, 0x64(r31)
/* 80D1C828  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D1C82C  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80D1C830  28 00 00 FF */	cmplwi r0, 0xff
/* 80D1C834  41 82 00 1C */	beq lbl_80D1C850
/* 80D1C838  C8 3F 00 68 */	lfd f1, 0x68(r31)
/* 80D1C83C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80D1C840  3C 00 43 30 */	lis r0, 0x4330
/* 80D1C844  90 01 00 38 */	stw r0, 0x38(r1)
/* 80D1C848  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80D1C84C  EF E0 08 28 */	fsubs f31, f0, f1
lbl_80D1C850:
/* 80D1C850  C0 3E 06 F4 */	lfs f1, 0x6f4(r30)
/* 80D1C854  C0 1E 06 E8 */	lfs f0, 0x6e8(r30)
/* 80D1C858  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D1C85C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80D1C860  C0 3E 06 F8 */	lfs f1, 0x6f8(r30)
/* 80D1C864  C0 1E 06 EC */	lfs f0, 0x6ec(r30)
/* 80D1C868  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D1C86C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80D1C870  C0 3E 06 FC */	lfs f1, 0x6fc(r30)
/* 80D1C874  C0 1E 06 F0 */	lfs f0, 0x6f0(r30)
/* 80D1C878  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D1C87C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80D1C880  38 61 00 2C */	addi r3, r1, 0x2c
/* 80D1C884  4B 54 A8 28 */	b isZero__4cXyzCFv
/* 80D1C888  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D1C88C  40 82 00 14 */	bne lbl_80D1C8A0
/* 80D1C890  38 61 00 08 */	addi r3, r1, 8
/* 80D1C894  38 81 00 2C */	addi r4, r1, 0x2c
/* 80D1C898  4B 54 A6 5C */	b normalize__4cXyzFv
/* 80D1C89C  48 00 00 20 */	b lbl_80D1C8BC
lbl_80D1C8A0:
/* 80D1C8A0  3C 60 80 43 */	lis r3, Zero__4cXyz@ha
/* 80D1C8A4  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)
/* 80D1C8A8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80D1C8AC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80D1C8B0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80D1C8B4  C0 03 00 08 */	lfs f0, 8(r3)
/* 80D1C8B8  D0 01 00 34 */	stfs f0, 0x34(r1)
lbl_80D1C8BC:
/* 80D1C8BC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80D1C8C0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D1C8C4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80D1C8C8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D1C8CC  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80D1C8D0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D1C8D4  38 61 00 2C */	addi r3, r1, 0x2c
/* 80D1C8D8  7C 64 1B 78 */	mr r4, r3
/* 80D1C8DC  FC 20 F8 90 */	fmr f1, f31
/* 80D1C8E0  4B 62 A7 F8 */	b PSVECScale
/* 80D1C8E4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80D1C8E8  D0 1E 06 28 */	stfs f0, 0x628(r30)
/* 80D1C8EC  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80D1C8F0  D0 1E 06 2C */	stfs f0, 0x62c(r30)
/* 80D1C8F4  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80D1C8F8  D0 1E 06 30 */	stfs f0, 0x630(r30)
/* 80D1C8FC  7F C3 F3 78 */	mr r3, r30
/* 80D1C900  4B FF FC 71 */	bl movePntWind__12daObjTrnd2_cFv
/* 80D1C904  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80D1C908  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80D1C90C  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80D1C910  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80D1C914  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80D1C918  7C 08 03 A6 */	mtlr r0
/* 80D1C91C  38 21 00 60 */	addi r1, r1, 0x60
/* 80D1C920  4E 80 00 20 */	blr 
