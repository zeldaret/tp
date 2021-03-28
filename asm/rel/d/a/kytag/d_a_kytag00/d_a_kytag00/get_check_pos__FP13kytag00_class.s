lbl_8046B718:
/* 8046B718  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8046B71C  7C 08 02 A6 */	mflr r0
/* 8046B720  90 01 00 54 */	stw r0, 0x54(r1)
/* 8046B724  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8046B728  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8046B72C  39 61 00 40 */	addi r11, r1, 0x40
/* 8046B730  4B EF 6A A4 */	b _savegpr_27
/* 8046B734  7C 7C 1B 78 */	mr r28, r3
/* 8046B738  7C 9D 23 78 */	mr r29, r4
/* 8046B73C  3C 60 80 47 */	lis r3, lit_3798@ha
/* 8046B740  3B 63 C9 80 */	addi r27, r3, lit_3798@l
/* 8046B744  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8046B748  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8046B74C  83 C3 5D 74 */	lwz r30, 0x5d74(r3)
/* 8046B750  83 E3 5D AC */	lwz r31, 0x5dac(r3)
/* 8046B754  28 1F 00 00 */	cmplwi r31, 0
/* 8046B758  41 82 02 3C */	beq lbl_8046B994
/* 8046B75C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8046B760  38 9E 00 D8 */	addi r4, r30, 0xd8
/* 8046B764  4B ED BC 38 */	b PSVECSquareDistance
/* 8046B768  C0 1B 00 00 */	lfs f0, 0(r27)
/* 8046B76C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046B770  40 81 00 58 */	ble lbl_8046B7C8
/* 8046B774  FC 00 08 34 */	frsqrte f0, f1
/* 8046B778  C8 9B 00 08 */	lfd f4, 8(r27)
/* 8046B77C  FC 44 00 32 */	fmul f2, f4, f0
/* 8046B780  C8 7B 00 10 */	lfd f3, 0x10(r27)
/* 8046B784  FC 00 00 32 */	fmul f0, f0, f0
/* 8046B788  FC 01 00 32 */	fmul f0, f1, f0
/* 8046B78C  FC 03 00 28 */	fsub f0, f3, f0
/* 8046B790  FC 02 00 32 */	fmul f0, f2, f0
/* 8046B794  FC 44 00 32 */	fmul f2, f4, f0
/* 8046B798  FC 00 00 32 */	fmul f0, f0, f0
/* 8046B79C  FC 01 00 32 */	fmul f0, f1, f0
/* 8046B7A0  FC 03 00 28 */	fsub f0, f3, f0
/* 8046B7A4  FC 02 00 32 */	fmul f0, f2, f0
/* 8046B7A8  FC 44 00 32 */	fmul f2, f4, f0
/* 8046B7AC  FC 00 00 32 */	fmul f0, f0, f0
/* 8046B7B0  FC 01 00 32 */	fmul f0, f1, f0
/* 8046B7B4  FC 03 00 28 */	fsub f0, f3, f0
/* 8046B7B8  FC 02 00 32 */	fmul f0, f2, f0
/* 8046B7BC  FF E1 00 32 */	fmul f31, f1, f0
/* 8046B7C0  FF E0 F8 18 */	frsp f31, f31
/* 8046B7C4  48 00 00 90 */	b lbl_8046B854
lbl_8046B7C8:
/* 8046B7C8  C8 1B 00 18 */	lfd f0, 0x18(r27)
/* 8046B7CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046B7D0  40 80 00 10 */	bge lbl_8046B7E0
/* 8046B7D4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8046B7D8  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 8046B7DC  48 00 00 78 */	b lbl_8046B854
lbl_8046B7E0:
/* 8046B7E0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8046B7E4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8046B7E8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8046B7EC  3C 00 7F 80 */	lis r0, 0x7f80
/* 8046B7F0  7C 03 00 00 */	cmpw r3, r0
/* 8046B7F4  41 82 00 14 */	beq lbl_8046B808
/* 8046B7F8  40 80 00 40 */	bge lbl_8046B838
/* 8046B7FC  2C 03 00 00 */	cmpwi r3, 0
/* 8046B800  41 82 00 20 */	beq lbl_8046B820
/* 8046B804  48 00 00 34 */	b lbl_8046B838
lbl_8046B808:
/* 8046B808  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8046B80C  41 82 00 0C */	beq lbl_8046B818
/* 8046B810  38 00 00 01 */	li r0, 1
/* 8046B814  48 00 00 28 */	b lbl_8046B83C
lbl_8046B818:
/* 8046B818  38 00 00 02 */	li r0, 2
/* 8046B81C  48 00 00 20 */	b lbl_8046B83C
lbl_8046B820:
/* 8046B820  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8046B824  41 82 00 0C */	beq lbl_8046B830
/* 8046B828  38 00 00 05 */	li r0, 5
/* 8046B82C  48 00 00 10 */	b lbl_8046B83C
lbl_8046B830:
/* 8046B830  38 00 00 03 */	li r0, 3
/* 8046B834  48 00 00 08 */	b lbl_8046B83C
lbl_8046B838:
/* 8046B838  38 00 00 04 */	li r0, 4
lbl_8046B83C:
/* 8046B83C  2C 00 00 01 */	cmpwi r0, 1
/* 8046B840  40 82 00 10 */	bne lbl_8046B850
/* 8046B844  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8046B848  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 8046B84C  48 00 00 08 */	b lbl_8046B854
lbl_8046B850:
/* 8046B850  FF E0 08 90 */	fmr f31, f1
lbl_8046B854:
/* 8046B854  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8046B858  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8046B85C  4B ED BB 40 */	b PSVECSquareDistance
/* 8046B860  C0 1B 00 00 */	lfs f0, 0(r27)
/* 8046B864  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046B868  40 81 00 58 */	ble lbl_8046B8C0
/* 8046B86C  FC 00 08 34 */	frsqrte f0, f1
/* 8046B870  C8 9B 00 08 */	lfd f4, 8(r27)
/* 8046B874  FC 44 00 32 */	fmul f2, f4, f0
/* 8046B878  C8 7B 00 10 */	lfd f3, 0x10(r27)
/* 8046B87C  FC 00 00 32 */	fmul f0, f0, f0
/* 8046B880  FC 01 00 32 */	fmul f0, f1, f0
/* 8046B884  FC 03 00 28 */	fsub f0, f3, f0
/* 8046B888  FC 02 00 32 */	fmul f0, f2, f0
/* 8046B88C  FC 44 00 32 */	fmul f2, f4, f0
/* 8046B890  FC 00 00 32 */	fmul f0, f0, f0
/* 8046B894  FC 01 00 32 */	fmul f0, f1, f0
/* 8046B898  FC 03 00 28 */	fsub f0, f3, f0
/* 8046B89C  FC 02 00 32 */	fmul f0, f2, f0
/* 8046B8A0  FC 44 00 32 */	fmul f2, f4, f0
/* 8046B8A4  FC 00 00 32 */	fmul f0, f0, f0
/* 8046B8A8  FC 01 00 32 */	fmul f0, f1, f0
/* 8046B8AC  FC 03 00 28 */	fsub f0, f3, f0
/* 8046B8B0  FC 02 00 32 */	fmul f0, f2, f0
/* 8046B8B4  FC 21 00 32 */	fmul f1, f1, f0
/* 8046B8B8  FC 20 08 18 */	frsp f1, f1
/* 8046B8BC  48 00 00 88 */	b lbl_8046B944
lbl_8046B8C0:
/* 8046B8C0  C8 1B 00 18 */	lfd f0, 0x18(r27)
/* 8046B8C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046B8C8  40 80 00 10 */	bge lbl_8046B8D8
/* 8046B8CC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8046B8D0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8046B8D4  48 00 00 70 */	b lbl_8046B944
lbl_8046B8D8:
/* 8046B8D8  D0 21 00 08 */	stfs f1, 8(r1)
/* 8046B8DC  80 81 00 08 */	lwz r4, 8(r1)
/* 8046B8E0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8046B8E4  3C 00 7F 80 */	lis r0, 0x7f80
/* 8046B8E8  7C 03 00 00 */	cmpw r3, r0
/* 8046B8EC  41 82 00 14 */	beq lbl_8046B900
/* 8046B8F0  40 80 00 40 */	bge lbl_8046B930
/* 8046B8F4  2C 03 00 00 */	cmpwi r3, 0
/* 8046B8F8  41 82 00 20 */	beq lbl_8046B918
/* 8046B8FC  48 00 00 34 */	b lbl_8046B930
lbl_8046B900:
/* 8046B900  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8046B904  41 82 00 0C */	beq lbl_8046B910
/* 8046B908  38 00 00 01 */	li r0, 1
/* 8046B90C  48 00 00 28 */	b lbl_8046B934
lbl_8046B910:
/* 8046B910  38 00 00 02 */	li r0, 2
/* 8046B914  48 00 00 20 */	b lbl_8046B934
lbl_8046B918:
/* 8046B918  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8046B91C  41 82 00 0C */	beq lbl_8046B928
/* 8046B920  38 00 00 05 */	li r0, 5
/* 8046B924  48 00 00 10 */	b lbl_8046B934
lbl_8046B928:
/* 8046B928  38 00 00 03 */	li r0, 3
/* 8046B92C  48 00 00 08 */	b lbl_8046B934
lbl_8046B930:
/* 8046B930  38 00 00 04 */	li r0, 4
lbl_8046B934:
/* 8046B934  2C 00 00 01 */	cmpwi r0, 1
/* 8046B938  40 82 00 0C */	bne lbl_8046B944
/* 8046B93C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8046B940  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8046B944:
/* 8046B944  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8046B948  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8046B94C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8046B950  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8046B954  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8046B958  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8046B95C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8046B960  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8046B964  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8046B968  28 00 00 00 */	cmplwi r0, 0
/* 8046B96C  41 82 00 38 */	beq lbl_8046B9A4
/* 8046B970  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 8046B974  40 80 00 30 */	bge lbl_8046B9A4
/* 8046B978  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 8046B97C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8046B980  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 8046B984  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8046B988  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 8046B98C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8046B990  48 00 00 14 */	b lbl_8046B9A4
lbl_8046B994:
/* 8046B994  C0 1B 00 00 */	lfs f0, 0(r27)
/* 8046B998  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8046B99C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8046B9A0  D0 01 00 18 */	stfs f0, 0x18(r1)
lbl_8046B9A4:
/* 8046B9A4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8046B9A8  D0 1C 00 00 */	stfs f0, 0(r28)
/* 8046B9AC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8046B9B0  D0 1C 00 04 */	stfs f0, 4(r28)
/* 8046B9B4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8046B9B8  D0 1C 00 08 */	stfs f0, 8(r28)
/* 8046B9BC  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8046B9C0  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8046B9C4  39 61 00 40 */	addi r11, r1, 0x40
/* 8046B9C8  4B EF 68 58 */	b _restgpr_27
/* 8046B9CC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8046B9D0  7C 08 03 A6 */	mtlr r0
/* 8046B9D4  38 21 00 50 */	addi r1, r1, 0x50
/* 8046B9D8  4E 80 00 20 */	blr 
