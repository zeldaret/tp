lbl_8058B77C:
/* 8058B77C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8058B780  7C 08 02 A6 */	mflr r0
/* 8058B784  90 01 00 34 */	stw r0, 0x34(r1)
/* 8058B788  39 61 00 30 */	addi r11, r1, 0x30
/* 8058B78C  4B DD 6A 45 */	bl _savegpr_26
/* 8058B790  7C 7E 1B 78 */	mr r30, r3
/* 8058B794  3C 60 80 59 */	lis r3, l_bmdidx@ha /* 0x8058C380@ha */
/* 8058B798  3B E3 C3 80 */	addi r31, r3, l_bmdidx@l /* 0x8058C380@l */
/* 8058B79C  80 7E 06 08 */	lwz r3, 0x608(r30)
/* 8058B7A0  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 8058B7A4  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8058B7A8  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 8058B7AC  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8058B7B0  C0 1E 04 F4 */	lfs f0, 0x4f4(r30)
/* 8058B7B4  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8058B7B8  80 7E 06 18 */	lwz r3, 0x618(r30)
/* 8058B7BC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8058B7C0  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8058B7C4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8058B7C8  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8058B7CC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8058B7D0  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8058B7D4  80 9E 06 18 */	lwz r4, 0x618(r30)
/* 8058B7D8  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 8058B7DC  38 A3 0C F4 */	addi r5, r3, Zero__4cXyz@l /* 0x80430CF4@l */
/* 8058B7E0  C0 05 00 00 */	lfs f0, 0(r5)
/* 8058B7E4  D0 04 00 00 */	stfs f0, 0(r4)
/* 8058B7E8  C0 05 00 04 */	lfs f0, 4(r5)
/* 8058B7EC  D0 04 00 04 */	stfs f0, 4(r4)
/* 8058B7F0  C0 05 00 08 */	lfs f0, 8(r5)
/* 8058B7F4  D0 04 00 08 */	stfs f0, 8(r4)
/* 8058B7F8  38 C0 00 01 */	li r6, 1
/* 8058B7FC  38 60 00 24 */	li r3, 0x24
/* 8058B800  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 8058B804  48 00 00 60 */	b lbl_8058B864
lbl_8058B808:
/* 8058B808  80 1E 06 18 */	lwz r0, 0x618(r30)
/* 8058B80C  7C 80 1A 14 */	add r4, r0, r3
/* 8058B810  C0 05 00 00 */	lfs f0, 0(r5)
/* 8058B814  D0 04 00 00 */	stfs f0, 0(r4)
/* 8058B818  C0 05 00 04 */	lfs f0, 4(r5)
/* 8058B81C  D0 04 00 04 */	stfs f0, 4(r4)
/* 8058B820  C0 05 00 08 */	lfs f0, 8(r5)
/* 8058B824  D0 04 00 08 */	stfs f0, 8(r4)
/* 8058B828  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8058B82C  80 9E 06 18 */	lwz r4, 0x618(r30)
/* 8058B830  38 03 00 0C */	addi r0, r3, 0xc
/* 8058B834  7C 04 05 2E */	stfsx f0, r4, r0
/* 8058B838  80 1E 06 18 */	lwz r0, 0x618(r30)
/* 8058B83C  7C 80 1A 14 */	add r4, r0, r3
/* 8058B840  C0 04 FF EC */	lfs f0, -0x14(r4)
/* 8058B844  EC 00 08 28 */	fsubs f0, f0, f1
/* 8058B848  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 8058B84C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8058B850  80 9E 06 18 */	lwz r4, 0x618(r30)
/* 8058B854  38 03 00 14 */	addi r0, r3, 0x14
/* 8058B858  7C 04 05 2E */	stfsx f0, r4, r0
/* 8058B85C  38 C6 00 01 */	addi r6, r6, 1
/* 8058B860  38 63 00 24 */	addi r3, r3, 0x24
lbl_8058B864:
/* 8058B864  80 1E 06 14 */	lwz r0, 0x614(r30)
/* 8058B868  7C 06 00 00 */	cmpw r6, r0
/* 8058B86C  41 80 FF 9C */	blt lbl_8058B808
/* 8058B870  7F C3 F3 78 */	mr r3, r30
/* 8058B874  4B FF F8 5D */	bl setMtx__14daObjKLift00_cFv
/* 8058B878  38 1E 05 D8 */	addi r0, r30, 0x5d8
/* 8058B87C  90 1E 05 04 */	stw r0, 0x504(r30)
/* 8058B880  7F C3 F3 78 */	mr r3, r30
/* 8058B884  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8058B888  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 8058B88C  80 1E 06 1C */	lwz r0, 0x61c(r30)
/* 8058B890  7C 00 00 D0 */	neg r0, r0
/* 8058B894  C8 5F 00 48 */	lfd f2, 0x48(r31)
/* 8058B898  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8058B89C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8058B8A0  3C 00 43 30 */	lis r0, 0x4330
/* 8058B8A4  90 01 00 08 */	stw r0, 8(r1)
/* 8058B8A8  C8 01 00 08 */	lfd f0, 8(r1)
/* 8058B8AC  EC 00 10 28 */	fsubs f0, f0, f2
/* 8058B8B0  EC 43 00 32 */	fmuls f2, f3, f0
/* 8058B8B4  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 8058B8B8  EC 42 00 28 */	fsubs f2, f2, f0
/* 8058B8BC  FC 60 08 90 */	fmr f3, f1
/* 8058B8C0  C0 9F 00 3C */	lfs f4, 0x3c(r31)
/* 8058B8C4  C0 BF 00 40 */	lfs f5, 0x40(r31)
/* 8058B8C8  FC C0 20 90 */	fmr f6, f4
/* 8058B8CC  4B A8 EC 7D */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 8058B8D0  3C 60 80 59 */	lis r3, rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@ha /* 0x8058AF38@ha */
/* 8058B8D4  38 03 AF 38 */	addi r0, r3, rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@l /* 0x8058AF38@l */
/* 8058B8D8  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 8058B8DC  90 03 00 B4 */	stw r0, 0xb4(r3)
/* 8058B8E0  38 7E 06 24 */	addi r3, r30, 0x624
/* 8058B8E4  38 80 00 FF */	li r4, 0xff
/* 8058B8E8  38 A0 00 00 */	li r5, 0
/* 8058B8EC  7F C6 F3 78 */	mr r6, r30
/* 8058B8F0  4B AF 7F 71 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8058B8F4  3B 40 00 00 */	li r26, 0
/* 8058B8F8  3B E0 00 00 */	li r31, 0
/* 8058B8FC  3C 60 80 59 */	lis r3, l_cc_sph_src@ha /* 0x8058C3F8@ha */
/* 8058B900  3B 83 C3 F8 */	addi r28, r3, l_cc_sph_src@l /* 0x8058C3F8@l */
/* 8058B904  3B BE 06 24 */	addi r29, r30, 0x624
lbl_8058B908:
/* 8058B908  7F 7E FA 14 */	add r27, r30, r31
/* 8058B90C  38 7B 06 60 */	addi r3, r27, 0x660
/* 8058B910  7F 84 E3 78 */	mr r4, r28
/* 8058B914  4B AF 91 21 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8058B918  93 BB 06 A4 */	stw r29, 0x6a4(r27)
/* 8058B91C  3B 5A 00 01 */	addi r26, r26, 1
/* 8058B920  2C 1A 00 08 */	cmpwi r26, 8
/* 8058B924  3B FF 01 38 */	addi r31, r31, 0x138
/* 8058B928  41 80 FF E0 */	blt lbl_8058B908
/* 8058B92C  38 7E 10 20 */	addi r3, r30, 0x1020
/* 8058B930  3C 80 80 59 */	lis r4, l_cc_cyl_src@ha /* 0x8058C438@ha */
/* 8058B934  38 84 C4 38 */	addi r4, r4, l_cc_cyl_src@l /* 0x8058C438@l */
/* 8058B938  4B AF 8F 7D */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 8058B93C  38 1E 06 24 */	addi r0, r30, 0x624
/* 8058B940  90 1E 10 64 */	stw r0, 0x1064(r30)
/* 8058B944  38 00 00 00 */	li r0, 0
/* 8058B948  90 1E 11 5C */	stw r0, 0x115c(r30)
/* 8058B94C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8058B950  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8058B954  41 82 00 0C */	beq lbl_8058B960
/* 8058B958  38 00 00 05 */	li r0, 5
/* 8058B95C  90 1E 11 5C */	stw r0, 0x115c(r30)
lbl_8058B960:
/* 8058B960  38 60 00 01 */	li r3, 1
/* 8058B964  39 61 00 30 */	addi r11, r1, 0x30
/* 8058B968  4B DD 68 B5 */	bl _restgpr_26
/* 8058B96C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8058B970  7C 08 03 A6 */	mtlr r0
/* 8058B974  38 21 00 30 */	addi r1, r1, 0x30
/* 8058B978  4E 80 00 20 */	blr 
