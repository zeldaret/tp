lbl_806698D0:
/* 806698D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806698D4  7C 08 02 A6 */	mflr r0
/* 806698D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806698DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806698E0  93 C1 00 08 */	stw r30, 8(r1)
/* 806698E4  7C 7E 1B 78 */	mr r30, r3
/* 806698E8  3C 60 80 67 */	lis r3, lit_3662@ha
/* 806698EC  3B E3 ED E8 */	addi r31, r3, lit_3662@l
/* 806698F0  38 00 00 01 */	li r0, 1
/* 806698F4  98 1E 06 16 */	stb r0, 0x616(r30)
/* 806698F8  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 806698FC  D0 1E 06 48 */	stfs f0, 0x648(r30)
/* 80669900  A8 1E 05 F6 */	lha r0, 0x5f6(r30)
/* 80669904  2C 00 00 01 */	cmpwi r0, 1
/* 80669908  41 82 00 5C */	beq lbl_80669964
/* 8066990C  40 80 00 A0 */	bge lbl_806699AC
/* 80669910  2C 00 00 00 */	cmpwi r0, 0
/* 80669914  40 80 00 08 */	bge lbl_8066991C
/* 80669918  48 00 00 94 */	b lbl_806699AC
lbl_8066991C:
/* 8066991C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80669920  D0 1E 05 E8 */	stfs f0, 0x5e8(r30)
/* 80669924  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80669928  4B BF E0 2C */	b cM_rndF__Ff
/* 8066992C  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80669930  EC 00 08 2A */	fadds f0, f0, f1
/* 80669934  D0 1E 05 EC */	stfs f0, 0x5ec(r30)
/* 80669938  7F C3 F3 78 */	mr r3, r30
/* 8066993C  38 80 00 0E */	li r4, 0xe
/* 80669940  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80669944  38 A0 00 02 */	li r5, 2
/* 80669948  C0 5F 00 CC */	lfs f2, 0xcc(r31)
/* 8066994C  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 80669950  EC 42 00 32 */	fmuls f2, f2, f0
/* 80669954  4B FF E4 55 */	bl anm_init__FP8do_classifUcf
/* 80669958  A8 7E 05 F6 */	lha r3, 0x5f6(r30)
/* 8066995C  38 03 00 01 */	addi r0, r3, 1
/* 80669960  B0 1E 05 F6 */	sth r0, 0x5f6(r30)
lbl_80669964:
/* 80669964  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 80669968  C0 3E 05 EC */	lfs f1, 0x5ec(r30)
/* 8066996C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80669970  C0 7F 00 D0 */	lfs f3, 0xd0(r31)
/* 80669974  4B C0 60 C8 */	b cLib_addCalc2__FPffff
/* 80669978  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8066997C  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 80669980  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80669984  C0 5E 05 C8 */	lfs f2, 0x5c8(r30)
/* 80669988  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 8066998C  C0 1E 06 7C */	lfs f0, 0x67c(r30)
/* 80669990  EC 01 00 32 */	fmuls f0, f1, f0
/* 80669994  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80669998  40 80 00 14 */	bge lbl_806699AC
/* 8066999C  38 00 00 04 */	li r0, 4
/* 806699A0  B0 1E 05 F2 */	sth r0, 0x5f2(r30)
/* 806699A4  38 00 00 00 */	li r0, 0
/* 806699A8  B0 1E 05 F6 */	sth r0, 0x5f6(r30)
lbl_806699AC:
/* 806699AC  3C 60 80 67 */	lis r3, l_HIO@ha
/* 806699B0  38 63 F2 C4 */	addi r3, r3, l_HIO@l
/* 806699B4  C0 63 00 10 */	lfs f3, 0x10(r3)
/* 806699B8  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806699BC  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 806699C0  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 806699C4  EC 00 00 F2 */	fmuls f0, f0, f3
/* 806699C8  EC 21 00 32 */	fmuls f1, f1, f0
/* 806699CC  C0 5F 00 00 */	lfs f2, 0(r31)
/* 806699D0  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 806699D4  EC 60 00 F2 */	fmuls f3, f0, f3
/* 806699D8  4B C0 60 64 */	b cLib_addCalc2__FPffff
/* 806699DC  38 7E 04 DE */	addi r3, r30, 0x4de
/* 806699E0  A8 9E 05 CC */	lha r4, 0x5cc(r30)
/* 806699E4  38 A0 00 08 */	li r5, 8
/* 806699E8  38 C0 08 00 */	li r6, 0x800
/* 806699EC  4B C0 6C 1C */	b cLib_addCalcAngleS2__FPssss
/* 806699F0  7F C3 F3 78 */	mr r3, r30
/* 806699F4  4B FF F1 AD */	bl area_check__FP8do_class
/* 806699F8  7F C3 F3 78 */	mr r3, r30
/* 806699FC  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80669A00  4B FF F1 19 */	bl move_dansa_check__FP8do_classf
/* 80669A04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80669A08  83 C1 00 08 */	lwz r30, 8(r1)
/* 80669A0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80669A10  7C 08 03 A6 */	mtlr r0
/* 80669A14  38 21 00 10 */	addi r1, r1, 0x10
/* 80669A18  4E 80 00 20 */	blr 
