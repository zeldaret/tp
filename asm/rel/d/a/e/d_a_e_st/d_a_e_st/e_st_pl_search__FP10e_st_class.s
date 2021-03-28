lbl_8079F6A0:
/* 8079F6A0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8079F6A4  7C 08 02 A6 */	mflr r0
/* 8079F6A8  90 01 00 54 */	stw r0, 0x54(r1)
/* 8079F6AC  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8079F6B0  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8079F6B4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8079F6B8  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8079F6BC  7C 7E 1B 78 */	mr r30, r3
/* 8079F6C0  3C 80 80 7A */	lis r4, lit_3903@ha
/* 8079F6C4  3B E4 68 24 */	addi r31, r4, lit_3903@l
/* 8079F6C8  80 83 05 CC */	lwz r4, 0x5cc(r3)
/* 8079F6CC  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 8079F6D0  FC 00 00 1E */	fctiwz f0, f0
/* 8079F6D4  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8079F6D8  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 8079F6DC  C3 FF 00 04 */	lfs f31, 4(r31)
/* 8079F6E0  A8 03 06 80 */	lha r0, 0x680(r3)
/* 8079F6E4  2C 00 00 03 */	cmpwi r0, 3
/* 8079F6E8  41 82 02 00 */	beq lbl_8079F8E8
/* 8079F6EC  40 80 00 1C */	bge lbl_8079F708
/* 8079F6F0  2C 00 00 01 */	cmpwi r0, 1
/* 8079F6F4  41 82 00 AC */	beq lbl_8079F7A0
/* 8079F6F8  40 80 00 DC */	bge lbl_8079F7D4
/* 8079F6FC  2C 00 00 00 */	cmpwi r0, 0
/* 8079F700  40 80 00 14 */	bge lbl_8079F714
/* 8079F704  48 00 02 A0 */	b lbl_8079F9A4
lbl_8079F708:
/* 8079F708  2C 00 00 05 */	cmpwi r0, 5
/* 8079F70C  41 82 02 68 */	beq lbl_8079F974
/* 8079F710  48 00 02 94 */	b lbl_8079F9A4
lbl_8079F714:
/* 8079F714  A8 1E 06 82 */	lha r0, 0x682(r30)
/* 8079F718  2C 00 00 00 */	cmpwi r0, 0
/* 8079F71C  40 82 02 88 */	bne lbl_8079F9A4
/* 8079F720  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 8079F724  4B FF EE 2D */	bl pl_check__FP10e_st_classf
/* 8079F728  2C 03 00 00 */	cmpwi r3, 0
/* 8079F72C  40 82 00 48 */	bne lbl_8079F774
/* 8079F730  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8079F734  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8079F738  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8079F73C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8079F740  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 8079F744  41 82 00 30 */	beq lbl_8079F774
/* 8079F748  7F C3 F3 78 */	mr r3, r30
/* 8079F74C  38 80 00 23 */	li r4, 0x23
/* 8079F750  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 8079F754  38 A0 00 02 */	li r5, 2
/* 8079F758  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8079F75C  4B FF E6 F1 */	bl anm_init__FP10e_st_classifUcf
/* 8079F760  FC 00 F8 90 */	fmr f0, f31
/* 8079F764  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8079F768  38 00 00 05 */	li r0, 5
/* 8079F76C  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 8079F770  48 00 00 24 */	b lbl_8079F794
lbl_8079F774:
/* 8079F774  7F C3 F3 78 */	mr r3, r30
/* 8079F778  38 80 00 1F */	li r4, 0x1f
/* 8079F77C  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 8079F780  38 A0 00 02 */	li r5, 2
/* 8079F784  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 8079F788  4B FF E6 C5 */	bl anm_init__FP10e_st_classifUcf
/* 8079F78C  38 00 00 01 */	li r0, 1
/* 8079F790  B0 1E 06 80 */	sth r0, 0x680(r30)
lbl_8079F794:
/* 8079F794  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8079F798  D0 1E 06 B4 */	stfs f0, 0x6b4(r30)
/* 8079F79C  48 00 02 08 */	b lbl_8079F9A4
lbl_8079F7A0:
/* 8079F7A0  38 00 00 02 */	li r0, 2
/* 8079F7A4  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 8079F7A8  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8079F7AC  4B AC 81 A8 */	b cM_rndF__Ff
/* 8079F7B0  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 8079F7B4  EC 00 08 2A */	fadds f0, f0, f1
/* 8079F7B8  FC 00 00 1E */	fctiwz f0, f0
/* 8079F7BC  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8079F7C0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8079F7C4  B0 1E 06 82 */	sth r0, 0x682(r30)
/* 8079F7C8  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8079F7CC  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 8079F7D0  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_8079F7D4:
/* 8079F7D4  C3 FF 00 A4 */	lfs f31, 0xa4(r31)
/* 8079F7D8  7F C3 F3 78 */	mr r3, r30
/* 8079F7DC  4B FF FC 51 */	bl pl_angle_get__FP10e_st_class
/* 8079F7E0  B0 7E 05 C8 */	sth r3, 0x5c8(r30)
/* 8079F7E4  38 61 00 0C */	addi r3, r1, 0xc
/* 8079F7E8  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 8079F7EC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8079F7F0  4B AC 73 44 */	b __mi__4cXyzCFRC3Vec
/* 8079F7F4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8079F7F8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8079F7FC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8079F800  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8079F804  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8079F808  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8079F80C  7F C3 F3 78 */	mr r3, r30
/* 8079F810  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 8079F814  4B FF ED 3D */	bl pl_check__FP10e_st_classf
/* 8079F818  2C 03 00 00 */	cmpwi r3, 0
/* 8079F81C  41 82 00 54 */	beq lbl_8079F870
/* 8079F820  7F C3 F3 78 */	mr r3, r30
/* 8079F824  38 80 00 05 */	li r4, 5
/* 8079F828  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 8079F82C  38 A0 00 00 */	li r5, 0
/* 8079F830  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8079F834  4B FF E6 19 */	bl anm_init__FP10e_st_classifUcf
/* 8079F838  38 00 00 03 */	li r0, 3
/* 8079F83C  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 8079F840  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700B7@ha */
/* 8079F844  38 03 00 B7 */	addi r0, r3, 0x00B7 /* 0x000700B7@l */
/* 8079F848  90 01 00 08 */	stw r0, 8(r1)
/* 8079F84C  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 8079F850  38 81 00 08 */	addi r4, r1, 8
/* 8079F854  38 A0 00 00 */	li r5, 0
/* 8079F858  38 C0 FF FF */	li r6, -1
/* 8079F85C  81 9E 05 D0 */	lwz r12, 0x5d0(r30)
/* 8079F860  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8079F864  7D 89 03 A6 */	mtctr r12
/* 8079F868  4E 80 04 21 */	bctrl 
/* 8079F86C  48 00 01 38 */	b lbl_8079F9A4
lbl_8079F870:
/* 8079F870  88 1E 05 B5 */	lbz r0, 0x5b5(r30)
/* 8079F874  28 00 00 00 */	cmplwi r0, 0
/* 8079F878  40 82 00 38 */	bne lbl_8079F8B0
/* 8079F87C  7F C3 F3 78 */	mr r3, r30
/* 8079F880  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 8079F884  4B FF EC CD */	bl pl_check__FP10e_st_classf
/* 8079F888  2C 03 00 00 */	cmpwi r3, 0
/* 8079F88C  40 82 01 18 */	bne lbl_8079F9A4
/* 8079F890  A8 1E 06 82 */	lha r0, 0x682(r30)
/* 8079F894  2C 00 00 00 */	cmpwi r0, 0
/* 8079F898  40 82 01 0C */	bne lbl_8079F9A4
/* 8079F89C  38 00 00 03 */	li r0, 3
/* 8079F8A0  B0 1E 06 7E */	sth r0, 0x67e(r30)
/* 8079F8A4  38 00 00 00 */	li r0, 0
/* 8079F8A8  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 8079F8AC  48 00 01 4C */	b lbl_8079F9F8
lbl_8079F8B0:
/* 8079F8B0  7F C3 F3 78 */	mr r3, r30
/* 8079F8B4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8079F8B8  3C 80 80 7A */	lis r4, l_HIO@ha
/* 8079F8BC  38 84 6D F4 */	addi r4, r4, l_HIO@l
/* 8079F8C0  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8079F8C4  EC 21 00 2A */	fadds f1, f1, f0
/* 8079F8C8  4B FF EC 89 */	bl pl_check__FP10e_st_classf
/* 8079F8CC  2C 03 00 00 */	cmpwi r3, 0
/* 8079F8D0  40 82 00 D4 */	bne lbl_8079F9A4
/* 8079F8D4  38 00 00 01 */	li r0, 1
/* 8079F8D8  B0 1E 06 7E */	sth r0, 0x67e(r30)
/* 8079F8DC  38 00 00 00 */	li r0, 0
/* 8079F8E0  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 8079F8E4  48 00 00 C0 */	b lbl_8079F9A4
lbl_8079F8E8:
/* 8079F8E8  2C 04 00 0B */	cmpwi r4, 0xb
/* 8079F8EC  41 80 00 14 */	blt lbl_8079F900
/* 8079F8F0  2C 04 00 17 */	cmpwi r4, 0x17
/* 8079F8F4  41 81 00 0C */	bgt lbl_8079F900
/* 8079F8F8  38 00 00 01 */	li r0, 1
/* 8079F8FC  98 1E 0B 94 */	stb r0, 0xb94(r30)
lbl_8079F900:
/* 8079F900  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 8079F904  38 80 00 01 */	li r4, 1
/* 8079F908  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8079F90C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8079F910  40 82 00 18 */	bne lbl_8079F928
/* 8079F914  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8079F918  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8079F91C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8079F920  41 82 00 08 */	beq lbl_8079F928
/* 8079F924  38 80 00 00 */	li r4, 0
lbl_8079F928:
/* 8079F928  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8079F92C  41 82 00 78 */	beq lbl_8079F9A4
/* 8079F930  7F C3 F3 78 */	mr r3, r30
/* 8079F934  38 80 00 23 */	li r4, 0x23
/* 8079F938  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 8079F93C  38 A0 00 02 */	li r5, 2
/* 8079F940  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8079F944  4B FF E5 09 */	bl anm_init__FP10e_st_classifUcf
/* 8079F948  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 8079F94C  4B AC 80 08 */	b cM_rndF__Ff
/* 8079F950  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 8079F954  EC 00 08 2A */	fadds f0, f0, f1
/* 8079F958  FC 00 00 1E */	fctiwz f0, f0
/* 8079F95C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8079F960  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8079F964  B0 1E 06 82 */	sth r0, 0x682(r30)
/* 8079F968  38 00 00 00 */	li r0, 0
/* 8079F96C  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 8079F970  48 00 00 34 */	b lbl_8079F9A4
lbl_8079F974:
/* 8079F974  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 8079F978  4B FF EB D9 */	bl pl_check__FP10e_st_classf
/* 8079F97C  2C 03 00 00 */	cmpwi r3, 0
/* 8079F980  40 82 00 1C */	bne lbl_8079F99C
/* 8079F984  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8079F988  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8079F98C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8079F990  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8079F994  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 8079F998  40 82 00 0C */	bne lbl_8079F9A4
lbl_8079F99C:
/* 8079F99C  38 00 00 00 */	li r0, 0
/* 8079F9A0  B0 1E 06 80 */	sth r0, 0x680(r30)
lbl_8079F9A4:
/* 8079F9A4  7F C3 F3 78 */	mr r3, r30
/* 8079F9A8  4B FF F1 01 */	bl move_bg_check__FP10e_st_class
/* 8079F9AC  2C 03 00 00 */	cmpwi r3, 0
/* 8079F9B0  41 82 00 18 */	beq lbl_8079F9C8
/* 8079F9B4  C3 FF 00 04 */	lfs f31, 4(r31)
/* 8079F9B8  D3 FE 05 2C */	stfs f31, 0x52c(r30)
/* 8079F9BC  38 00 00 00 */	li r0, 0
/* 8079F9C0  B0 1E 06 7E */	sth r0, 0x67e(r30)
/* 8079F9C4  B0 1E 06 80 */	sth r0, 0x680(r30)
lbl_8079F9C8:
/* 8079F9C8  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8079F9CC  FC 20 F8 90 */	fmr f1, f31
/* 8079F9D0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8079F9D4  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 8079F9D8  4B AD 00 64 */	b cLib_addCalc2__FPffff
/* 8079F9DC  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8079F9E0  A8 9E 05 C8 */	lha r4, 0x5c8(r30)
/* 8079F9E4  38 A0 00 04 */	li r5, 4
/* 8079F9E8  38 C0 08 00 */	li r6, 0x800
/* 8079F9EC  4B AD 0C 1C */	b cLib_addCalcAngleS2__FPssss
/* 8079F9F0  7F C3 F3 78 */	mr r3, r30
/* 8079F9F4  4B FF F7 39 */	bl move_calc__FP10e_st_class
lbl_8079F9F8:
/* 8079F9F8  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8079F9FC  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8079FA00  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8079FA04  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8079FA08  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8079FA0C  7C 08 03 A6 */	mtlr r0
/* 8079FA10  38 21 00 50 */	addi r1, r1, 0x50
/* 8079FA14  4E 80 00 20 */	blr 
