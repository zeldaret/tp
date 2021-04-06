lbl_80B6B798:
/* 80B6B798  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80B6B79C  7C 08 02 A6 */	mflr r0
/* 80B6B7A0  90 01 00 74 */	stw r0, 0x74(r1)
/* 80B6B7A4  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80B6B7A8  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80B6B7AC  39 61 00 60 */	addi r11, r1, 0x60
/* 80B6B7B0  4B 7F 6A 2D */	bl _savegpr_29
/* 80B6B7B4  7C 7F 1B 78 */	mr r31, r3
/* 80B6B7B8  7C 80 23 78 */	mr r0, r4
/* 80B6B7BC  FF E0 08 90 */	fmr f31, f1
/* 80B6B7C0  7C BD 2B 78 */	mr r29, r5
/* 80B6B7C4  3C 60 80 B7 */	lis r3, m__18daNpc_zanB_Param_c@ha /* 0x80B6BCC4@ha */
/* 80B6B7C8  3B C3 BC C4 */	addi r30, r3, m__18daNpc_zanB_Param_c@l /* 0x80B6BCC4@l */
/* 80B6B7CC  38 A0 00 00 */	li r5, 0
/* 80B6B7D0  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80B6B7D4  28 04 00 00 */	cmplwi r4, 0
/* 80B6B7D8  41 82 01 40 */	beq lbl_80B6B918
/* 80B6B7DC  38 61 00 18 */	addi r3, r1, 0x18
/* 80B6B7E0  7C 05 03 78 */	mr r5, r0
/* 80B6B7E4  4B 6F B3 51 */	bl __mi__4cXyzCFRC3Vec
/* 80B6B7E8  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80B6B7EC  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80B6B7F0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80B6B7F4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B6B7F8  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80B6B7FC  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80B6B800  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80B6B804  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80B6B808  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B6B80C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80B6B810  38 61 00 0C */	addi r3, r1, 0xc
/* 80B6B814  4B 7D B9 25 */	bl PSVECSquareMag
/* 80B6B818  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80B6B81C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B6B820  40 81 00 58 */	ble lbl_80B6B878
/* 80B6B824  FC 00 08 34 */	frsqrte f0, f1
/* 80B6B828  C8 9E 00 D8 */	lfd f4, 0xd8(r30)
/* 80B6B82C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B6B830  C8 7E 00 E0 */	lfd f3, 0xe0(r30)
/* 80B6B834  FC 00 00 32 */	fmul f0, f0, f0
/* 80B6B838  FC 01 00 32 */	fmul f0, f1, f0
/* 80B6B83C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B6B840  FC 02 00 32 */	fmul f0, f2, f0
/* 80B6B844  FC 44 00 32 */	fmul f2, f4, f0
/* 80B6B848  FC 00 00 32 */	fmul f0, f0, f0
/* 80B6B84C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B6B850  FC 03 00 28 */	fsub f0, f3, f0
/* 80B6B854  FC 02 00 32 */	fmul f0, f2, f0
/* 80B6B858  FC 44 00 32 */	fmul f2, f4, f0
/* 80B6B85C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B6B860  FC 01 00 32 */	fmul f0, f1, f0
/* 80B6B864  FC 03 00 28 */	fsub f0, f3, f0
/* 80B6B868  FC 02 00 32 */	fmul f0, f2, f0
/* 80B6B86C  FC 41 00 32 */	fmul f2, f1, f0
/* 80B6B870  FC 40 10 18 */	frsp f2, f2
/* 80B6B874  48 00 00 90 */	b lbl_80B6B904
lbl_80B6B878:
/* 80B6B878  C8 1E 00 E8 */	lfd f0, 0xe8(r30)
/* 80B6B87C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B6B880  40 80 00 10 */	bge lbl_80B6B890
/* 80B6B884  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B6B888  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B6B88C  48 00 00 78 */	b lbl_80B6B904
lbl_80B6B890:
/* 80B6B890  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B6B894  80 81 00 08 */	lwz r4, 8(r1)
/* 80B6B898  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B6B89C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B6B8A0  7C 03 00 00 */	cmpw r3, r0
/* 80B6B8A4  41 82 00 14 */	beq lbl_80B6B8B8
/* 80B6B8A8  40 80 00 40 */	bge lbl_80B6B8E8
/* 80B6B8AC  2C 03 00 00 */	cmpwi r3, 0
/* 80B6B8B0  41 82 00 20 */	beq lbl_80B6B8D0
/* 80B6B8B4  48 00 00 34 */	b lbl_80B6B8E8
lbl_80B6B8B8:
/* 80B6B8B8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B6B8BC  41 82 00 0C */	beq lbl_80B6B8C8
/* 80B6B8C0  38 00 00 01 */	li r0, 1
/* 80B6B8C4  48 00 00 28 */	b lbl_80B6B8EC
lbl_80B6B8C8:
/* 80B6B8C8  38 00 00 02 */	li r0, 2
/* 80B6B8CC  48 00 00 20 */	b lbl_80B6B8EC
lbl_80B6B8D0:
/* 80B6B8D0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B6B8D4  41 82 00 0C */	beq lbl_80B6B8E0
/* 80B6B8D8  38 00 00 05 */	li r0, 5
/* 80B6B8DC  48 00 00 10 */	b lbl_80B6B8EC
lbl_80B6B8E0:
/* 80B6B8E0  38 00 00 03 */	li r0, 3
/* 80B6B8E4  48 00 00 08 */	b lbl_80B6B8EC
lbl_80B6B8E8:
/* 80B6B8E8  38 00 00 04 */	li r0, 4
lbl_80B6B8EC:
/* 80B6B8EC  2C 00 00 01 */	cmpwi r0, 1
/* 80B6B8F0  40 82 00 10 */	bne lbl_80B6B900
/* 80B6B8F4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B6B8F8  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B6B8FC  48 00 00 08 */	b lbl_80B6B904
lbl_80B6B900:
/* 80B6B900  FC 40 08 90 */	fmr f2, f1
lbl_80B6B904:
/* 80B6B904  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80B6B908  4B 6F BD 6D */	bl cM_atan2s__Fff
/* 80B6B90C  7C 03 00 D0 */	neg r0, r3
/* 80B6B910  7C 05 07 34 */	extsh r5, r0
/* 80B6B914  7C A5 EA 14 */	add r5, r5, r29
lbl_80B6B918:
/* 80B6B918  A8 1F 01 50 */	lha r0, 0x150(r31)
/* 80B6B91C  7C A5 02 14 */	add r5, r5, r0
/* 80B6B920  C0 7E 00 B4 */	lfs f3, 0xb4(r30)
/* 80B6B924  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80B6B928  A8 1F 01 32 */	lha r0, 0x132(r31)
/* 80B6B92C  C8 5E 00 D0 */	lfd f2, 0xd0(r30)
/* 80B6B930  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B6B934  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B6B938  3C 60 43 30 */	lis r3, 0x4330
/* 80B6B93C  90 61 00 30 */	stw r3, 0x30(r1)
/* 80B6B940  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80B6B944  EC 20 10 28 */	fsubs f1, f0, f2
/* 80B6B948  EC 03 20 28 */	fsubs f0, f3, f4
/* 80B6B94C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B6B950  7C A0 07 34 */	extsh r0, r5
/* 80B6B954  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B6B958  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80B6B95C  90 61 00 38 */	stw r3, 0x38(r1)
/* 80B6B960  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80B6B964  EC 00 10 28 */	fsubs f0, f0, f2
/* 80B6B968  EC 00 01 32 */	fmuls f0, f0, f4
/* 80B6B96C  EC 01 00 2A */	fadds f0, f1, f0
/* 80B6B970  FC 00 00 1E */	fctiwz f0, f0
/* 80B6B974  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80B6B978  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B6B97C  B0 1F 01 2C */	sth r0, 0x12c(r31)
/* 80B6B980  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80B6B984  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80B6B988  39 61 00 60 */	addi r11, r1, 0x60
/* 80B6B98C  4B 7F 68 9D */	bl _restgpr_29
/* 80B6B990  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80B6B994  7C 08 03 A6 */	mtlr r0
/* 80B6B998  38 21 00 70 */	addi r1, r1, 0x70
/* 80B6B99C  4E 80 00 20 */	blr 
