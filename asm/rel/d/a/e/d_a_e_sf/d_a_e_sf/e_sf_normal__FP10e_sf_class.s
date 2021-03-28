lbl_80785944:
/* 80785944  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80785948  7C 08 02 A6 */	mflr r0
/* 8078594C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80785950  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80785954  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80785958  39 61 00 50 */	addi r11, r1, 0x50
/* 8078595C  4B BD C8 80 */	b _savegpr_29
/* 80785960  7C 7E 1B 78 */	mr r30, r3
/* 80785964  3C 80 80 79 */	lis r4, lit_3908@ha
/* 80785968  3B E4 9C 38 */	addi r31, r4, lit_3908@l
/* 8078596C  C3 FF 00 04 */	lfs f31, 4(r31)
/* 80785970  3B A0 40 00 */	li r29, 0x4000
/* 80785974  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 80785978  2C 00 00 03 */	cmpwi r0, 3
/* 8078597C  41 82 01 38 */	beq lbl_80785AB4
/* 80785980  40 80 01 EC */	bge lbl_80785B6C
/* 80785984  2C 00 00 00 */	cmpwi r0, 0
/* 80785988  40 80 00 08 */	bge lbl_80785990
/* 8078598C  48 00 01 E0 */	b lbl_80785B6C
lbl_80785990:
/* 80785990  A8 1E 06 9C */	lha r0, 0x69c(r30)
/* 80785994  2C 00 00 00 */	cmpwi r0, 0
/* 80785998  40 82 01 14 */	bne lbl_80785AAC
/* 8078599C  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 807859A0  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 807859A4  4B FF FD CD */	bl way_bg_check__FP10e_sf_classff
/* 807859A8  2C 03 00 00 */	cmpwi r3, 0
/* 807859AC  41 82 00 2C */	beq lbl_807859D8
/* 807859B0  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 807859B4  4B AE 1F D8 */	b cM_rndFX__Ff
/* 807859B8  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 807859BC  EC 00 08 2A */	fadds f0, f0, f1
/* 807859C0  FC 00 00 1E */	fctiwz f0, f0
/* 807859C4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 807859C8  80 61 00 34 */	lwz r3, 0x34(r1)
/* 807859CC  38 00 00 28 */	li r0, 0x28
/* 807859D0  B0 1E 06 9E */	sth r0, 0x69e(r30)
/* 807859D4  48 00 00 88 */	b lbl_80785A5C
lbl_807859D8:
/* 807859D8  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 807859DC  4B AE 1F B0 */	b cM_rndFX__Ff
/* 807859E0  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 807859E4  EC 00 08 2A */	fadds f0, f0, f1
/* 807859E8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807859EC  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 807859F0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807859F4  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 807859F8  4B AE 1F 94 */	b cM_rndFX__Ff
/* 807859FC  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 80785A00  EC 00 08 2A */	fadds f0, f0, f1
/* 80785A04  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80785A08  38 61 00 08 */	addi r3, r1, 8
/* 80785A0C  38 81 00 14 */	addi r4, r1, 0x14
/* 80785A10  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80785A14  4B AE 11 20 */	b __mi__4cXyzCFRC3Vec
/* 80785A18  C0 21 00 08 */	lfs f1, 8(r1)
/* 80785A1C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80785A20  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80785A24  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80785A28  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80785A2C  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80785A30  4B AE 1C 44 */	b cM_atan2s__Fff
/* 80785A34  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80785A38  7C 00 18 50 */	subf r0, r0, r3
/* 80785A3C  7C 03 07 34 */	extsh r3, r0
/* 80785A40  2C 03 30 00 */	cmpwi r3, 0x3000
/* 80785A44  40 81 00 0C */	ble lbl_80785A50
/* 80785A48  38 60 30 00 */	li r3, 0x3000
/* 80785A4C  48 00 00 10 */	b lbl_80785A5C
lbl_80785A50:
/* 80785A50  2C 03 D0 00 */	cmpwi r3, -12288
/* 80785A54  40 80 00 08 */	bge lbl_80785A5C
/* 80785A58  38 60 D0 00 */	li r3, -12288
lbl_80785A5C:
/* 80785A5C  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80785A60  7C 00 1A 14 */	add r0, r0, r3
/* 80785A64  B0 1E 05 D0 */	sth r0, 0x5d0(r30)
/* 80785A68  7F C3 F3 78 */	mr r3, r30
/* 80785A6C  38 80 00 0E */	li r4, 0xe
/* 80785A70  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80785A74  38 A0 00 02 */	li r5, 2
/* 80785A78  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80785A7C  4B FF F7 0D */	bl anm_init__FP10e_sf_classifUcf
/* 80785A80  38 00 00 03 */	li r0, 3
/* 80785A84  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 80785A88  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80785A8C  4B AE 1E C8 */	b cM_rndF__Ff
/* 80785A90  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80785A94  EC 00 08 2A */	fadds f0, f0, f1
/* 80785A98  FC 00 00 1E */	fctiwz f0, f0
/* 80785A9C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80785AA0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80785AA4  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 80785AA8  48 00 00 C4 */	b lbl_80785B6C
lbl_80785AAC:
/* 80785AAC  3B A0 70 00 */	li r29, 0x7000
/* 80785AB0  48 00 00 BC */	b lbl_80785B6C
lbl_80785AB4:
/* 80785AB4  3C 60 80 79 */	lis r3, l_HIO@ha
/* 80785AB8  38 63 A0 7C */	addi r3, r3, l_HIO@l
/* 80785ABC  C3 E3 00 0C */	lfs f31, 0xc(r3)
/* 80785AC0  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80785AC4  A8 9E 05 D0 */	lha r4, 0x5d0(r30)
/* 80785AC8  38 A0 00 08 */	li r5, 8
/* 80785ACC  38 C0 04 00 */	li r6, 0x400
/* 80785AD0  4B AE AB 38 */	b cLib_addCalcAngleS2__FPssss
/* 80785AD4  A8 1E 06 9C */	lha r0, 0x69c(r30)
/* 80785AD8  2C 00 00 00 */	cmpwi r0, 0
/* 80785ADC  41 82 00 28 */	beq lbl_80785B04
/* 80785AE0  A8 1E 06 9E */	lha r0, 0x69e(r30)
/* 80785AE4  2C 00 00 00 */	cmpwi r0, 0
/* 80785AE8  40 82 00 84 */	bne lbl_80785B6C
/* 80785AEC  7F C3 F3 78 */	mr r3, r30
/* 80785AF0  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80785AF4  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 80785AF8  4B FF FC 79 */	bl way_bg_check__FP10e_sf_classff
/* 80785AFC  2C 03 00 00 */	cmpwi r3, 0
/* 80785B00  41 82 00 6C */	beq lbl_80785B6C
lbl_80785B04:
/* 80785B04  38 00 00 02 */	li r0, 2
/* 80785B08  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 80785B0C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80785B10  4B AE 1E 44 */	b cM_rndF__Ff
/* 80785B14  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80785B18  EC 00 08 2A */	fadds f0, f0, f1
/* 80785B1C  FC 00 00 1E */	fctiwz f0, f0
/* 80785B20  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80785B24  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80785B28  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 80785B2C  88 1E 05 B8 */	lbz r0, 0x5b8(r30)
/* 80785B30  28 00 00 00 */	cmplwi r0, 0
/* 80785B34  40 82 00 20 */	bne lbl_80785B54
/* 80785B38  7F C3 F3 78 */	mr r3, r30
/* 80785B3C  38 80 00 0C */	li r4, 0xc
/* 80785B40  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80785B44  38 A0 00 02 */	li r5, 2
/* 80785B48  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80785B4C  4B FF F6 3D */	bl anm_init__FP10e_sf_classifUcf
/* 80785B50  48 00 00 1C */	b lbl_80785B6C
lbl_80785B54:
/* 80785B54  7F C3 F3 78 */	mr r3, r30
/* 80785B58  38 80 00 0D */	li r4, 0xd
/* 80785B5C  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80785B60  38 A0 00 02 */	li r5, 2
/* 80785B64  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80785B68  4B FF F6 21 */	bl anm_init__FP10e_sf_classifUcf
lbl_80785B6C:
/* 80785B6C  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80785B70  FC 20 F8 90 */	fmr f1, f31
/* 80785B74  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80785B78  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 80785B7C  4B AE 9E C0 */	b cLib_addCalc2__FPffff
/* 80785B80  7F C3 F3 78 */	mr r3, r30
/* 80785B84  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80785B88  4B 89 70 D4 */	b fopAcM_otoCheck__FPC10fopAc_ac_cf
/* 80785B8C  A8 1E 06 88 */	lha r0, 0x688(r30)
/* 80785B90  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 80785B94  41 82 00 0C */	beq lbl_80785BA0
/* 80785B98  2C 03 00 00 */	cmpwi r3, 0
/* 80785B9C  41 82 00 3C */	beq lbl_80785BD8
lbl_80785BA0:
/* 80785BA0  2C 03 00 00 */	cmpwi r3, 0
/* 80785BA4  40 82 00 1C */	bne lbl_80785BC0
/* 80785BA8  7F C3 F3 78 */	mr r3, r30
/* 80785BAC  C0 3E 06 94 */	lfs f1, 0x694(r30)
/* 80785BB0  7F A4 EB 78 */	mr r4, r29
/* 80785BB4  4B FF FC CD */	bl pl_check__FP10e_sf_classfs
/* 80785BB8  2C 03 00 00 */	cmpwi r3, 0
/* 80785BBC  41 82 00 1C */	beq lbl_80785BD8
lbl_80785BC0:
/* 80785BC0  38 00 00 03 */	li r0, 3
/* 80785BC4  B0 1E 06 8A */	sth r0, 0x68a(r30)
/* 80785BC8  38 00 FF F6 */	li r0, -10
/* 80785BCC  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 80785BD0  38 00 00 3C */	li r0, 0x3c
/* 80785BD4  B0 1E 06 9C */	sth r0, 0x69c(r30)
lbl_80785BD8:
/* 80785BD8  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80785BDC  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80785BE0  39 61 00 50 */	addi r11, r1, 0x50
/* 80785BE4  4B BD C6 44 */	b _restgpr_29
/* 80785BE8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80785BEC  7C 08 03 A6 */	mtlr r0
/* 80785BF0  38 21 00 60 */	addi r1, r1, 0x60
/* 80785BF4  4E 80 00 20 */	blr 
