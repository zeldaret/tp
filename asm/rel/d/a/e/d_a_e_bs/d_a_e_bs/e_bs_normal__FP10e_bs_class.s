lbl_8068E8C4:
/* 8068E8C4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8068E8C8  7C 08 02 A6 */	mflr r0
/* 8068E8CC  90 01 00 64 */	stw r0, 0x64(r1)
/* 8068E8D0  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8068E8D4  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8068E8D8  39 61 00 50 */	addi r11, r1, 0x50
/* 8068E8DC  4B CD 39 00 */	b _savegpr_29
/* 8068E8E0  7C 7E 1B 78 */	mr r30, r3
/* 8068E8E4  3C 80 80 69 */	lis r4, lit_3788@ha
/* 8068E8E8  3B E4 0D D8 */	addi r31, r4, lit_3788@l
/* 8068E8EC  C3 FF 00 04 */	lfs f31, 4(r31)
/* 8068E8F0  3B A0 40 00 */	li r29, 0x4000
/* 8068E8F4  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 8068E8F8  2C 00 00 03 */	cmpwi r0, 3
/* 8068E8FC  41 82 01 38 */	beq lbl_8068EA34
/* 8068E900  40 80 01 C4 */	bge lbl_8068EAC4
/* 8068E904  2C 00 00 00 */	cmpwi r0, 0
/* 8068E908  40 80 00 08 */	bge lbl_8068E910
/* 8068E90C  48 00 01 B8 */	b lbl_8068EAC4
lbl_8068E910:
/* 8068E910  A8 1E 06 9C */	lha r0, 0x69c(r30)
/* 8068E914  2C 00 00 00 */	cmpwi r0, 0
/* 8068E918  40 82 01 14 */	bne lbl_8068EA2C
/* 8068E91C  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8068E920  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 8068E924  4B FF FC 11 */	bl way_bg_check__FP10e_bs_classff
/* 8068E928  2C 03 00 00 */	cmpwi r3, 0
/* 8068E92C  41 82 00 2C */	beq lbl_8068E958
/* 8068E930  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8068E934  4B BD 90 58 */	b cM_rndFX__Ff
/* 8068E938  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8068E93C  EC 00 08 2A */	fadds f0, f0, f1
/* 8068E940  FC 00 00 1E */	fctiwz f0, f0
/* 8068E944  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8068E948  80 61 00 34 */	lwz r3, 0x34(r1)
/* 8068E94C  38 00 00 28 */	li r0, 0x28
/* 8068E950  B0 1E 06 9E */	sth r0, 0x69e(r30)
/* 8068E954  48 00 00 88 */	b lbl_8068E9DC
lbl_8068E958:
/* 8068E958  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8068E95C  4B BD 90 30 */	b cM_rndFX__Ff
/* 8068E960  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 8068E964  EC 00 08 2A */	fadds f0, f0, f1
/* 8068E968  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8068E96C  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 8068E970  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8068E974  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8068E978  4B BD 90 14 */	b cM_rndFX__Ff
/* 8068E97C  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 8068E980  EC 00 08 2A */	fadds f0, f0, f1
/* 8068E984  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8068E988  38 61 00 08 */	addi r3, r1, 8
/* 8068E98C  38 81 00 14 */	addi r4, r1, 0x14
/* 8068E990  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8068E994  4B BD 81 A0 */	b __mi__4cXyzCFRC3Vec
/* 8068E998  C0 21 00 08 */	lfs f1, 8(r1)
/* 8068E99C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8068E9A0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8068E9A4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8068E9A8  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8068E9AC  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8068E9B0  4B BD 8C C4 */	b cM_atan2s__Fff
/* 8068E9B4  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8068E9B8  7C 00 18 50 */	subf r0, r0, r3
/* 8068E9BC  7C 03 07 34 */	extsh r3, r0
/* 8068E9C0  2C 03 30 00 */	cmpwi r3, 0x3000
/* 8068E9C4  40 81 00 0C */	ble lbl_8068E9D0
/* 8068E9C8  38 60 30 00 */	li r3, 0x3000
/* 8068E9CC  48 00 00 10 */	b lbl_8068E9DC
lbl_8068E9D0:
/* 8068E9D0  2C 03 D0 00 */	cmpwi r3, -12288
/* 8068E9D4  40 80 00 08 */	bge lbl_8068E9DC
/* 8068E9D8  38 60 D0 00 */	li r3, -12288
lbl_8068E9DC:
/* 8068E9DC  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8068E9E0  7C 00 1A 14 */	add r0, r0, r3
/* 8068E9E4  B0 1E 05 C8 */	sth r0, 0x5c8(r30)
/* 8068E9E8  7F C3 F3 78 */	mr r3, r30
/* 8068E9EC  38 80 00 09 */	li r4, 9
/* 8068E9F0  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 8068E9F4  38 A0 00 02 */	li r5, 2
/* 8068E9F8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8068E9FC  4B FF F7 F9 */	bl anm_init__FP10e_bs_classifUcf
/* 8068EA00  38 00 00 03 */	li r0, 3
/* 8068EA04  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8068EA08  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8068EA0C  4B BD 8F 48 */	b cM_rndF__Ff
/* 8068EA10  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8068EA14  EC 00 08 2A */	fadds f0, f0, f1
/* 8068EA18  FC 00 00 1E */	fctiwz f0, f0
/* 8068EA1C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8068EA20  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8068EA24  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 8068EA28  48 00 00 9C */	b lbl_8068EAC4
lbl_8068EA2C:
/* 8068EA2C  3B A0 70 00 */	li r29, 0x7000
/* 8068EA30  48 00 00 94 */	b lbl_8068EAC4
lbl_8068EA34:
/* 8068EA34  3C 60 80 69 */	lis r3, l_HIO@ha
/* 8068EA38  38 63 10 A0 */	addi r3, r3, l_HIO@l
/* 8068EA3C  C3 E3 00 0C */	lfs f31, 0xc(r3)
/* 8068EA40  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8068EA44  A8 9E 05 C8 */	lha r4, 0x5c8(r30)
/* 8068EA48  38 A0 00 08 */	li r5, 8
/* 8068EA4C  38 C0 04 00 */	li r6, 0x400
/* 8068EA50  4B BE 1B B8 */	b cLib_addCalcAngleS2__FPssss
/* 8068EA54  A8 1E 06 9C */	lha r0, 0x69c(r30)
/* 8068EA58  2C 00 00 00 */	cmpwi r0, 0
/* 8068EA5C  41 82 00 28 */	beq lbl_8068EA84
/* 8068EA60  A8 1E 06 9E */	lha r0, 0x69e(r30)
/* 8068EA64  2C 00 00 00 */	cmpwi r0, 0
/* 8068EA68  40 82 00 5C */	bne lbl_8068EAC4
/* 8068EA6C  7F C3 F3 78 */	mr r3, r30
/* 8068EA70  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8068EA74  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 8068EA78  4B FF FA BD */	bl way_bg_check__FP10e_bs_classff
/* 8068EA7C  2C 03 00 00 */	cmpwi r3, 0
/* 8068EA80  41 82 00 44 */	beq lbl_8068EAC4
lbl_8068EA84:
/* 8068EA84  38 00 00 02 */	li r0, 2
/* 8068EA88  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8068EA8C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8068EA90  4B BD 8E C4 */	b cM_rndF__Ff
/* 8068EA94  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 8068EA98  EC 00 08 2A */	fadds f0, f0, f1
/* 8068EA9C  FC 00 00 1E */	fctiwz f0, f0
/* 8068EAA0  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8068EAA4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8068EAA8  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 8068EAAC  7F C3 F3 78 */	mr r3, r30
/* 8068EAB0  38 80 00 07 */	li r4, 7
/* 8068EAB4  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8068EAB8  38 A0 00 02 */	li r5, 2
/* 8068EABC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8068EAC0  4B FF F7 35 */	bl anm_init__FP10e_bs_classifUcf
lbl_8068EAC4:
/* 8068EAC4  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8068EAC8  FC 20 F8 90 */	fmr f1, f31
/* 8068EACC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8068EAD0  C0 7F 00 2C */	lfs f3, 0x2c(r31)
/* 8068EAD4  4B BE 0F 68 */	b cLib_addCalc2__FPffff
/* 8068EAD8  7F C3 F3 78 */	mr r3, r30
/* 8068EADC  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8068EAE0  4B 98 E1 7C */	b fopAcM_otoCheck__FPC10fopAc_ac_cf
/* 8068EAE4  A8 1E 06 7C */	lha r0, 0x67c(r30)
/* 8068EAE8  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 8068EAEC  41 82 00 0C */	beq lbl_8068EAF8
/* 8068EAF0  2C 03 00 00 */	cmpwi r3, 0
/* 8068EAF4  41 82 00 3C */	beq lbl_8068EB30
lbl_8068EAF8:
/* 8068EAF8  2C 03 00 00 */	cmpwi r3, 0
/* 8068EAFC  40 82 00 1C */	bne lbl_8068EB18
/* 8068EB00  7F C3 F3 78 */	mr r3, r30
/* 8068EB04  C0 3E 06 88 */	lfs f1, 0x688(r30)
/* 8068EB08  7F A4 EB 78 */	mr r4, r29
/* 8068EB0C  4B FF FB 39 */	bl pl_check__FP10e_bs_classfs
/* 8068EB10  2C 03 00 00 */	cmpwi r3, 0
/* 8068EB14  41 82 00 1C */	beq lbl_8068EB30
lbl_8068EB18:
/* 8068EB18  38 00 00 02 */	li r0, 2
/* 8068EB1C  B0 1E 06 7E */	sth r0, 0x67e(r30)
/* 8068EB20  38 00 FF F6 */	li r0, -10
/* 8068EB24  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8068EB28  38 00 00 3C */	li r0, 0x3c
/* 8068EB2C  B0 1E 06 9C */	sth r0, 0x69c(r30)
lbl_8068EB30:
/* 8068EB30  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8068EB34  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8068EB38  39 61 00 50 */	addi r11, r1, 0x50
/* 8068EB3C  4B CD 36 EC */	b _restgpr_29
/* 8068EB40  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8068EB44  7C 08 03 A6 */	mtlr r0
/* 8068EB48  38 21 00 60 */	addi r1, r1, 0x60
/* 8068EB4C  4E 80 00 20 */	blr 
