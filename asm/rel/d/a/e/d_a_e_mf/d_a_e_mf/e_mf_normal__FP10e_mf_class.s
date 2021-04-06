lbl_8070C7C4:
/* 8070C7C4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8070C7C8  7C 08 02 A6 */	mflr r0
/* 8070C7CC  90 01 00 64 */	stw r0, 0x64(r1)
/* 8070C7D0  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8070C7D4  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8070C7D8  39 61 00 50 */	addi r11, r1, 0x50
/* 8070C7DC  4B C5 59 FD */	bl _savegpr_28
/* 8070C7E0  7C 7E 1B 78 */	mr r30, r3
/* 8070C7E4  3C 80 80 71 */	lis r4, lit_3828@ha /* 0x80713974@ha */
/* 8070C7E8  3B E4 39 74 */	addi r31, r4, lit_3828@l /* 0x80713974@l */
/* 8070C7EC  C3 FF 00 04 */	lfs f31, 4(r31)
/* 8070C7F0  3B A0 40 00 */	li r29, 0x4000
/* 8070C7F4  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 8070C7F8  2C 00 00 03 */	cmpwi r0, 3
/* 8070C7FC  41 82 01 50 */	beq lbl_8070C94C
/* 8070C800  40 80 02 58 */	bge lbl_8070CA58
/* 8070C804  2C 00 00 00 */	cmpwi r0, 0
/* 8070C808  40 80 00 08 */	bge lbl_8070C810
/* 8070C80C  48 00 02 4C */	b lbl_8070CA58
lbl_8070C810:
/* 8070C810  A8 1E 06 C0 */	lha r0, 0x6c0(r30)
/* 8070C814  2C 00 00 00 */	cmpwi r0, 0
/* 8070C818  40 82 01 2C */	bne lbl_8070C944
/* 8070C81C  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8070C820  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 8070C824  4B 91 06 AD */	bl fopAcM_wayBgCheck__FPC10fopAc_ac_cff
/* 8070C828  2C 03 00 00 */	cmpwi r3, 0
/* 8070C82C  40 82 00 1C */	bne lbl_8070C848
/* 8070C830  7F C3 F3 78 */	mr r3, r30
/* 8070C834  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8070C838  38 80 00 00 */	li r4, 0
/* 8070C83C  4B FF F0 0D */	bl move_gake_check__FP10e_mf_classfSc
/* 8070C840  2C 03 00 00 */	cmpwi r3, 0
/* 8070C844  41 82 00 2C */	beq lbl_8070C870
lbl_8070C848:
/* 8070C848  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 8070C84C  4B B5 B1 41 */	bl cM_rndFX__Ff
/* 8070C850  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 8070C854  EC 00 08 2A */	fadds f0, f0, f1
/* 8070C858  FC 00 00 1E */	fctiwz f0, f0
/* 8070C85C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8070C860  80 61 00 34 */	lwz r3, 0x34(r1)
/* 8070C864  38 00 00 28 */	li r0, 0x28
/* 8070C868  B0 1E 06 C2 */	sth r0, 0x6c2(r30)
/* 8070C86C  48 00 00 88 */	b lbl_8070C8F4
lbl_8070C870:
/* 8070C870  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 8070C874  4B B5 B1 19 */	bl cM_rndFX__Ff
/* 8070C878  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 8070C87C  EC 00 08 2A */	fadds f0, f0, f1
/* 8070C880  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8070C884  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 8070C888  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8070C88C  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 8070C890  4B B5 B0 FD */	bl cM_rndFX__Ff
/* 8070C894  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 8070C898  EC 00 08 2A */	fadds f0, f0, f1
/* 8070C89C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8070C8A0  38 61 00 08 */	addi r3, r1, 8
/* 8070C8A4  38 81 00 14 */	addi r4, r1, 0x14
/* 8070C8A8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8070C8AC  4B B5 A2 89 */	bl __mi__4cXyzCFRC3Vec
/* 8070C8B0  C0 21 00 08 */	lfs f1, 8(r1)
/* 8070C8B4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8070C8B8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8070C8BC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8070C8C0  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8070C8C4  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8070C8C8  4B B5 AD AD */	bl cM_atan2s__Fff
/* 8070C8CC  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8070C8D0  7C 00 18 50 */	subf r0, r0, r3
/* 8070C8D4  7C 03 07 34 */	extsh r3, r0
/* 8070C8D8  2C 03 30 00 */	cmpwi r3, 0x3000
/* 8070C8DC  40 81 00 0C */	ble lbl_8070C8E8
/* 8070C8E0  38 60 30 00 */	li r3, 0x3000
/* 8070C8E4  48 00 00 10 */	b lbl_8070C8F4
lbl_8070C8E8:
/* 8070C8E8  2C 03 D0 00 */	cmpwi r3, -12288
/* 8070C8EC  40 80 00 08 */	bge lbl_8070C8F4
/* 8070C8F0  38 60 D0 00 */	li r3, -12288
lbl_8070C8F4:
/* 8070C8F4  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8070C8F8  7C 00 1A 14 */	add r0, r0, r3
/* 8070C8FC  B0 1E 05 D4 */	sth r0, 0x5d4(r30)
/* 8070C900  7F C3 F3 78 */	mr r3, r30
/* 8070C904  38 80 00 23 */	li r4, 0x23
/* 8070C908  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 8070C90C  38 A0 00 02 */	li r5, 2
/* 8070C910  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8070C914  4B FF DF 19 */	bl anm_init__FP10e_mf_classifUcf
/* 8070C918  38 00 00 03 */	li r0, 3
/* 8070C91C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070C920  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8070C924  4B B5 B0 31 */	bl cM_rndF__Ff
/* 8070C928  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8070C92C  EC 00 08 2A */	fadds f0, f0, f1
/* 8070C930  FC 00 00 1E */	fctiwz f0, f0
/* 8070C934  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8070C938  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8070C93C  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 8070C940  48 00 01 18 */	b lbl_8070CA58
lbl_8070C944:
/* 8070C944  3B A0 70 00 */	li r29, 0x7000
/* 8070C948  48 00 01 10 */	b lbl_8070CA58
lbl_8070C94C:
/* 8070C94C  3C 60 80 71 */	lis r3, l_HIO@ha /* 0x80713F74@ha */
/* 8070C950  38 63 3F 74 */	addi r3, r3, l_HIO@l /* 0x80713F74@l */
/* 8070C954  C3 E3 00 0C */	lfs f31, 0xc(r3)
/* 8070C958  AB 9E 04 DE */	lha r28, 0x4de(r30)
/* 8070C95C  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8070C960  A8 9E 05 D4 */	lha r4, 0x5d4(r30)
/* 8070C964  38 A0 00 02 */	li r5, 2
/* 8070C968  38 C0 04 00 */	li r6, 0x400
/* 8070C96C  4B B6 3C 9D */	bl cLib_addCalcAngleS2__FPssss
/* 8070C970  A8 1E 05 D4 */	lha r0, 0x5d4(r30)
/* 8070C974  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 8070C978  7C 00 18 50 */	subf r0, r0, r3
/* 8070C97C  7C 00 07 34 */	extsh r0, r0
/* 8070C980  2C 00 10 00 */	cmpwi r0, 0x1000
/* 8070C984  41 81 00 0C */	bgt lbl_8070C990
/* 8070C988  2C 00 F0 00 */	cmpwi r0, -4096
/* 8070C98C  40 80 00 08 */	bge lbl_8070C994
lbl_8070C990:
/* 8070C990  C3 FF 00 04 */	lfs f31, 4(r31)
lbl_8070C994:
/* 8070C994  7F 83 E0 50 */	subf r28, r3, r28
/* 8070C998  57 80 08 3C */	slwi r0, r28, 1
/* 8070C99C  7C 1C 07 34 */	extsh r28, r0
/* 8070C9A0  2C 1C 10 00 */	cmpwi r28, 0x1000
/* 8070C9A4  40 81 00 0C */	ble lbl_8070C9B0
/* 8070C9A8  3B 80 10 00 */	li r28, 0x1000
/* 8070C9AC  48 00 00 10 */	b lbl_8070C9BC
lbl_8070C9B0:
/* 8070C9B0  2C 1C F0 00 */	cmpwi r28, -4096
/* 8070C9B4  40 80 00 08 */	bge lbl_8070C9BC
/* 8070C9B8  3B 80 F0 00 */	li r28, -4096
lbl_8070C9BC:
/* 8070C9BC  38 7E 08 06 */	addi r3, r30, 0x806
/* 8070C9C0  7F 84 E3 78 */	mr r4, r28
/* 8070C9C4  38 A0 00 02 */	li r5, 2
/* 8070C9C8  38 C0 04 00 */	li r6, 0x400
/* 8070C9CC  4B B6 3C 3D */	bl cLib_addCalcAngleS2__FPssss
/* 8070C9D0  A8 1E 06 C0 */	lha r0, 0x6c0(r30)
/* 8070C9D4  2C 00 00 00 */	cmpwi r0, 0
/* 8070C9D8  41 82 00 40 */	beq lbl_8070CA18
/* 8070C9DC  A8 1E 06 C2 */	lha r0, 0x6c2(r30)
/* 8070C9E0  2C 00 00 00 */	cmpwi r0, 0
/* 8070C9E4  40 82 00 74 */	bne lbl_8070CA58
/* 8070C9E8  7F C3 F3 78 */	mr r3, r30
/* 8070C9EC  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8070C9F0  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 8070C9F4  4B 91 04 DD */	bl fopAcM_wayBgCheck__FPC10fopAc_ac_cff
/* 8070C9F8  2C 03 00 00 */	cmpwi r3, 0
/* 8070C9FC  40 82 00 1C */	bne lbl_8070CA18
/* 8070CA00  7F C3 F3 78 */	mr r3, r30
/* 8070CA04  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8070CA08  38 80 00 00 */	li r4, 0
/* 8070CA0C  4B FF EE 3D */	bl move_gake_check__FP10e_mf_classfSc
/* 8070CA10  2C 03 00 00 */	cmpwi r3, 0
/* 8070CA14  41 82 00 44 */	beq lbl_8070CA58
lbl_8070CA18:
/* 8070CA18  38 00 00 02 */	li r0, 2
/* 8070CA1C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070CA20  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8070CA24  4B B5 AF 31 */	bl cM_rndF__Ff
/* 8070CA28  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 8070CA2C  EC 00 08 2A */	fadds f0, f0, f1
/* 8070CA30  FC 00 00 1E */	fctiwz f0, f0
/* 8070CA34  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8070CA38  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8070CA3C  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 8070CA40  7F C3 F3 78 */	mr r3, r30
/* 8070CA44  38 80 00 21 */	li r4, 0x21
/* 8070CA48  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 8070CA4C  38 A0 00 02 */	li r5, 2
/* 8070CA50  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8070CA54  4B FF DD D9 */	bl anm_init__FP10e_mf_classifUcf
lbl_8070CA58:
/* 8070CA58  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8070CA5C  FC 20 F8 90 */	fmr f1, f31
/* 8070CA60  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8070CA64  C0 7F 00 70 */	lfs f3, 0x70(r31)
/* 8070CA68  4B B6 2F D5 */	bl cLib_addCalc2__FPffff
/* 8070CA6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8070CA70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8070CA74  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8070CA78  80 03 05 80 */	lwz r0, 0x580(r3)
/* 8070CA7C  54 1C 00 00 */	rlwinm r28, r0, 0, 0, 0
/* 8070CA80  7F C3 F3 78 */	mr r3, r30
/* 8070CA84  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 8070CA88  4B 91 01 D5 */	bl fopAcM_otoCheck__FPC10fopAc_ac_cf
/* 8070CA8C  7C 63 E3 78 */	or r3, r3, r28
/* 8070CA90  A8 1E 06 AC */	lha r0, 0x6ac(r30)
/* 8070CA94  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 8070CA98  41 82 00 0C */	beq lbl_8070CAA4
/* 8070CA9C  2C 03 00 00 */	cmpwi r3, 0
/* 8070CAA0  41 82 00 5C */	beq lbl_8070CAFC
lbl_8070CAA4:
/* 8070CAA4  2C 03 00 00 */	cmpwi r3, 0
/* 8070CAA8  40 82 00 1C */	bne lbl_8070CAC4
/* 8070CAAC  7F C3 F3 78 */	mr r3, r30
/* 8070CAB0  C0 3E 06 B8 */	lfs f1, 0x6b8(r30)
/* 8070CAB4  7F A4 EB 78 */	mr r4, r29
/* 8070CAB8  4B FF EC B5 */	bl pl_check__FP10e_mf_classfs
/* 8070CABC  2C 03 00 00 */	cmpwi r3, 0
/* 8070CAC0  41 82 00 1C */	beq lbl_8070CADC
lbl_8070CAC4:
/* 8070CAC4  38 00 00 03 */	li r0, 3
/* 8070CAC8  B0 1E 06 AE */	sth r0, 0x6ae(r30)
/* 8070CACC  38 00 FF F6 */	li r0, -10
/* 8070CAD0  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070CAD4  38 00 00 3C */	li r0, 0x3c
/* 8070CAD8  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
lbl_8070CADC:
/* 8070CADC  7F C3 F3 78 */	mr r3, r30
/* 8070CAE0  4B FF EC 01 */	bl bomb_view_check__FP10e_mf_class
/* 8070CAE4  28 03 00 00 */	cmplwi r3, 0
/* 8070CAE8  41 82 00 14 */	beq lbl_8070CAFC
/* 8070CAEC  38 00 00 0B */	li r0, 0xb
/* 8070CAF0  B0 1E 06 AE */	sth r0, 0x6ae(r30)
/* 8070CAF4  38 00 00 00 */	li r0, 0
/* 8070CAF8  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_8070CAFC:
/* 8070CAFC  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8070CB00  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8070CB04  39 61 00 50 */	addi r11, r1, 0x50
/* 8070CB08  4B C5 57 1D */	bl _restgpr_28
/* 8070CB0C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8070CB10  7C 08 03 A6 */	mtlr r0
/* 8070CB14  38 21 00 60 */	addi r1, r1, 0x60
/* 8070CB18  4E 80 00 20 */	blr 
