lbl_807AD7C0:
/* 807AD7C0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 807AD7C4  7C 08 02 A6 */	mflr r0
/* 807AD7C8  90 01 00 54 */	stw r0, 0x54(r1)
/* 807AD7CC  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 807AD7D0  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 807AD7D4  39 61 00 40 */	addi r11, r1, 0x40
/* 807AD7D8  4B BB 4A 04 */	b _savegpr_29
/* 807AD7DC  7C 7F 1B 78 */	mr r31, r3
/* 807AD7E0  3C 60 80 7B */	lis r3, lit_3909@ha
/* 807AD7E4  3B C3 FD 2C */	addi r30, r3, lit_3909@l
/* 807AD7E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807AD7EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807AD7F0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807AD7F4  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 807AD7F8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 807AD7FC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807AD800  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807AD804  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 807AD808  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 807AD80C  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 807AD810  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 807AD814  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807AD818  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 807AD81C  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 807AD820  38 61 00 0C */	addi r3, r1, 0xc
/* 807AD824  38 81 00 18 */	addi r4, r1, 0x18
/* 807AD828  4B B9 9B 74 */	b PSVECSquareDistance
/* 807AD82C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807AD830  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807AD834  40 81 00 58 */	ble lbl_807AD88C
/* 807AD838  FC 00 08 34 */	frsqrte f0, f1
/* 807AD83C  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 807AD840  FC 44 00 32 */	fmul f2, f4, f0
/* 807AD844  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 807AD848  FC 00 00 32 */	fmul f0, f0, f0
/* 807AD84C  FC 01 00 32 */	fmul f0, f1, f0
/* 807AD850  FC 03 00 28 */	fsub f0, f3, f0
/* 807AD854  FC 02 00 32 */	fmul f0, f2, f0
/* 807AD858  FC 44 00 32 */	fmul f2, f4, f0
/* 807AD85C  FC 00 00 32 */	fmul f0, f0, f0
/* 807AD860  FC 01 00 32 */	fmul f0, f1, f0
/* 807AD864  FC 03 00 28 */	fsub f0, f3, f0
/* 807AD868  FC 02 00 32 */	fmul f0, f2, f0
/* 807AD86C  FC 44 00 32 */	fmul f2, f4, f0
/* 807AD870  FC 00 00 32 */	fmul f0, f0, f0
/* 807AD874  FC 01 00 32 */	fmul f0, f1, f0
/* 807AD878  FC 03 00 28 */	fsub f0, f3, f0
/* 807AD87C  FC 02 00 32 */	fmul f0, f2, f0
/* 807AD880  FF E1 00 32 */	fmul f31, f1, f0
/* 807AD884  FF E0 F8 18 */	frsp f31, f31
/* 807AD888  48 00 00 90 */	b lbl_807AD918
lbl_807AD88C:
/* 807AD88C  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 807AD890  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807AD894  40 80 00 10 */	bge lbl_807AD8A4
/* 807AD898  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807AD89C  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 807AD8A0  48 00 00 78 */	b lbl_807AD918
lbl_807AD8A4:
/* 807AD8A4  D0 21 00 08 */	stfs f1, 8(r1)
/* 807AD8A8  80 81 00 08 */	lwz r4, 8(r1)
/* 807AD8AC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807AD8B0  3C 00 7F 80 */	lis r0, 0x7f80
/* 807AD8B4  7C 03 00 00 */	cmpw r3, r0
/* 807AD8B8  41 82 00 14 */	beq lbl_807AD8CC
/* 807AD8BC  40 80 00 40 */	bge lbl_807AD8FC
/* 807AD8C0  2C 03 00 00 */	cmpwi r3, 0
/* 807AD8C4  41 82 00 20 */	beq lbl_807AD8E4
/* 807AD8C8  48 00 00 34 */	b lbl_807AD8FC
lbl_807AD8CC:
/* 807AD8CC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807AD8D0  41 82 00 0C */	beq lbl_807AD8DC
/* 807AD8D4  38 00 00 01 */	li r0, 1
/* 807AD8D8  48 00 00 28 */	b lbl_807AD900
lbl_807AD8DC:
/* 807AD8DC  38 00 00 02 */	li r0, 2
/* 807AD8E0  48 00 00 20 */	b lbl_807AD900
lbl_807AD8E4:
/* 807AD8E4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807AD8E8  41 82 00 0C */	beq lbl_807AD8F4
/* 807AD8EC  38 00 00 05 */	li r0, 5
/* 807AD8F0  48 00 00 10 */	b lbl_807AD900
lbl_807AD8F4:
/* 807AD8F4  38 00 00 03 */	li r0, 3
/* 807AD8F8  48 00 00 08 */	b lbl_807AD900
lbl_807AD8FC:
/* 807AD8FC  38 00 00 04 */	li r0, 4
lbl_807AD900:
/* 807AD900  2C 00 00 01 */	cmpwi r0, 1
/* 807AD904  40 82 00 10 */	bne lbl_807AD914
/* 807AD908  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807AD90C  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 807AD910  48 00 00 08 */	b lbl_807AD918
lbl_807AD914:
/* 807AD914  FF E0 08 90 */	fmr f31, f1
lbl_807AD918:
/* 807AD918  3B A0 00 00 */	li r29, 0
/* 807AD91C  3C 60 80 7B */	lis r3, l_HIO@ha
/* 807AD920  38 63 02 10 */	addi r3, r3, l_HIO@l
/* 807AD924  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807AD928  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807AD92C  4C 41 13 82 */	cror 2, 1, 2
/* 807AD930  40 82 00 0C */	bne lbl_807AD93C
/* 807AD934  38 60 00 00 */	li r3, 0
/* 807AD938  48 00 00 B0 */	b lbl_807AD9E8
lbl_807AD93C:
/* 807AD93C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807AD940  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807AD944  3B C3 56 B8 */	addi r30, r3, 0x56b8
/* 807AD948  7F C3 F3 78 */	mr r3, r30
/* 807AD94C  4B 8C 5E 98 */	b LockonTruth__12dAttention_cFv
/* 807AD950  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807AD954  41 82 00 1C */	beq lbl_807AD970
/* 807AD958  7F C3 F3 78 */	mr r3, r30
/* 807AD95C  38 80 00 00 */	li r4, 0
/* 807AD960  4B 8C 5B DC */	b LockonTarget__12dAttention_cFl
/* 807AD964  7C 03 F8 40 */	cmplw r3, r31
/* 807AD968  40 82 00 08 */	bne lbl_807AD970
/* 807AD96C  3B A0 00 01 */	li r29, 1
lbl_807AD970:
/* 807AD970  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807AD974  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807AD978  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 807AD97C  7C 00 07 74 */	extsb r0, r0
/* 807AD980  1C 00 00 38 */	mulli r0, r0, 0x38
/* 807AD984  7C 63 02 14 */	add r3, r3, r0
/* 807AD988  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 807AD98C  A8 63 02 32 */	lha r3, 0x232(r3)
/* 807AD990  A8 9F 06 CC */	lha r4, 0x6cc(r31)
/* 807AD994  4B AC 34 90 */	b cLib_distanceAngleS__Fss
/* 807AD998  7C 60 07 34 */	extsh r0, r3
/* 807AD99C  2C 1D 00 00 */	cmpwi r29, 0
/* 807AD9A0  40 82 00 3C */	bne lbl_807AD9DC
/* 807AD9A4  2C 00 60 00 */	cmpwi r0, 0x6000
/* 807AD9A8  40 81 00 3C */	ble lbl_807AD9E4
/* 807AD9AC  A8 7F 06 CC */	lha r3, 0x6cc(r31)
/* 807AD9B0  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 807AD9B4  7C 03 00 50 */	subf r0, r3, r0
/* 807AD9B8  7C 03 07 34 */	extsh r3, r0
/* 807AD9BC  4B BB 77 14 */	b abs
/* 807AD9C0  2C 03 20 00 */	cmpwi r3, 0x2000
/* 807AD9C4  41 80 00 18 */	blt lbl_807AD9DC
/* 807AD9C8  3C 60 80 7B */	lis r3, l_HIO@ha
/* 807AD9CC  38 63 02 10 */	addi r3, r3, l_HIO@l
/* 807AD9D0  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 807AD9D4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807AD9D8  40 80 00 0C */	bge lbl_807AD9E4
lbl_807AD9DC:
/* 807AD9DC  38 60 00 01 */	li r3, 1
/* 807AD9E0  48 00 00 08 */	b lbl_807AD9E8
lbl_807AD9E4:
/* 807AD9E4  38 60 00 00 */	li r3, 0
lbl_807AD9E8:
/* 807AD9E8  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 807AD9EC  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 807AD9F0  39 61 00 40 */	addi r11, r1, 0x40
/* 807AD9F4  4B BB 48 34 */	b _restgpr_29
/* 807AD9F8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807AD9FC  7C 08 03 A6 */	mtlr r0
/* 807ADA00  38 21 00 50 */	addi r1, r1, 0x50
/* 807ADA04  4E 80 00 20 */	blr 
