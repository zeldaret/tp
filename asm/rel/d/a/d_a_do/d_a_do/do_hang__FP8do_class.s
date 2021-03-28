lbl_8066A80C:
/* 8066A80C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8066A810  7C 08 02 A6 */	mflr r0
/* 8066A814  90 01 00 34 */	stw r0, 0x34(r1)
/* 8066A818  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8066A81C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8066A820  7C 7E 1B 78 */	mr r30, r3
/* 8066A824  3C 80 80 67 */	lis r4, lit_3662@ha
/* 8066A828  3B E4 ED E8 */	addi r31, r4, lit_3662@l
/* 8066A82C  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 8066A830  D0 03 06 48 */	stfs f0, 0x648(r3)
/* 8066A834  38 00 00 02 */	li r0, 2
/* 8066A838  98 03 06 16 */	stb r0, 0x616(r3)
/* 8066A83C  A8 03 05 F6 */	lha r0, 0x5f6(r3)
/* 8066A840  2C 00 00 02 */	cmpwi r0, 2
/* 8066A844  41 82 01 AC */	beq lbl_8066A9F0
/* 8066A848  40 80 00 14 */	bge lbl_8066A85C
/* 8066A84C  2C 00 00 00 */	cmpwi r0, 0
/* 8066A850  41 82 00 24 */	beq lbl_8066A874
/* 8066A854  40 80 00 6C */	bge lbl_8066A8C0
/* 8066A858  48 00 03 08 */	b lbl_8066AB60
lbl_8066A85C:
/* 8066A85C  2C 00 00 06 */	cmpwi r0, 6
/* 8066A860  41 82 02 C0 */	beq lbl_8066AB20
/* 8066A864  40 80 02 FC */	bge lbl_8066AB60
/* 8066A868  2C 00 00 05 */	cmpwi r0, 5
/* 8066A86C  40 80 01 C8 */	bge lbl_8066AA34
/* 8066A870  48 00 02 F0 */	b lbl_8066AB60
lbl_8066A874:
/* 8066A874  38 80 00 09 */	li r4, 9
/* 8066A878  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 8066A87C  38 A0 00 02 */	li r5, 2
/* 8066A880  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8066A884  4B FF D5 25 */	bl anm_init__FP8do_classifUcf
/* 8066A888  A8 7E 05 F6 */	lha r3, 0x5f6(r30)
/* 8066A88C  38 03 00 01 */	addi r0, r3, 1
/* 8066A890  B0 1E 05 F6 */	sth r0, 0x5f6(r30)
/* 8066A894  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8066A898  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8066A89C  D0 1E 06 70 */	stfs f0, 0x670(r30)
/* 8066A8A0  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8066A8A4  4B BF D0 B0 */	b cM_rndF__Ff
/* 8066A8A8  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8066A8AC  EC 00 08 2A */	fadds f0, f0, f1
/* 8066A8B0  FC 00 00 1E */	fctiwz f0, f0
/* 8066A8B4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8066A8B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8066A8BC  B0 1E 05 FC */	sth r0, 0x5fc(r30)
lbl_8066A8C0:
/* 8066A8C0  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8066A8C4  A8 9E 06 60 */	lha r4, 0x660(r30)
/* 8066A8C8  38 A0 00 01 */	li r5, 1
/* 8066A8CC  38 C0 10 00 */	li r6, 0x1000
/* 8066A8D0  4B C0 5D 38 */	b cLib_addCalcAngleS2__FPssss
/* 8066A8D4  A8 1E 05 FC */	lha r0, 0x5fc(r30)
/* 8066A8D8  2C 00 00 00 */	cmpwi r0, 0
/* 8066A8DC  40 82 00 6C */	bne lbl_8066A948
/* 8066A8E0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8066A8E4  4B BF D0 70 */	b cM_rndF__Ff
/* 8066A8E8  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 8066A8EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066A8F0  40 80 00 38 */	bge lbl_8066A928
/* 8066A8F4  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8066A8F8  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8066A8FC  38 00 00 05 */	li r0, 5
/* 8066A900  B0 1E 05 F6 */	sth r0, 0x5f6(r30)
/* 8066A904  38 00 00 03 */	li r0, 3
/* 8066A908  B0 1E 05 FC */	sth r0, 0x5fc(r30)
/* 8066A90C  7F C3 F3 78 */	mr r3, r30
/* 8066A910  38 80 00 0E */	li r4, 0xe
/* 8066A914  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8066A918  38 A0 00 02 */	li r5, 2
/* 8066A91C  C0 5F 00 8C */	lfs f2, 0x8c(r31)
/* 8066A920  4B FF D4 89 */	bl anm_init__FP8do_classifUcf
/* 8066A924  48 00 00 24 */	b lbl_8066A948
lbl_8066A928:
/* 8066A928  7F C3 F3 78 */	mr r3, r30
/* 8066A92C  38 80 00 08 */	li r4, 8
/* 8066A930  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8066A934  38 A0 00 00 */	li r5, 0
/* 8066A938  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8066A93C  4B FF D4 6D */	bl anm_init__FP8do_classifUcf
/* 8066A940  38 00 00 02 */	li r0, 2
/* 8066A944  B0 1E 05 F6 */	sth r0, 0x5f6(r30)
lbl_8066A948:
/* 8066A948  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8066A94C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8066A950  80 63 00 00 */	lwz r3, 0(r3)
/* 8066A954  A8 9E 06 60 */	lha r4, 0x660(r30)
/* 8066A958  4B 9A 1A 84 */	b mDoMtx_YrotS__FPA4_fs
/* 8066A95C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8066A960  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8066A964  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8066A968  C0 3F 01 20 */	lfs f1, 0x120(r31)
/* 8066A96C  C0 1E 06 7C */	lfs f0, 0x67c(r30)
/* 8066A970  EC 01 00 32 */	fmuls f0, f1, f0
/* 8066A974  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8066A978  38 61 00 14 */	addi r3, r1, 0x14
/* 8066A97C  38 81 00 08 */	addi r4, r1, 8
/* 8066A980  4B C0 65 6C */	b MtxPosition__FP4cXyzP4cXyz
/* 8066A984  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8066A988  C0 3E 06 64 */	lfs f1, 0x664(r30)
/* 8066A98C  C0 01 00 08 */	lfs f0, 8(r1)
/* 8066A990  EC 21 00 2A */	fadds f1, f1, f0
/* 8066A994  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8066A998  C0 7E 06 70 */	lfs f3, 0x670(r30)
/* 8066A99C  4B C0 50 A0 */	b cLib_addCalc2__FPffff
/* 8066A9A0  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 8066A9A4  C0 3E 06 68 */	lfs f1, 0x668(r30)
/* 8066A9A8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8066A9AC  EC 21 00 2A */	fadds f1, f1, f0
/* 8066A9B0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8066A9B4  C0 7E 06 70 */	lfs f3, 0x670(r30)
/* 8066A9B8  4B C0 50 84 */	b cLib_addCalc2__FPffff
/* 8066A9BC  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 8066A9C0  C0 3E 06 6C */	lfs f1, 0x66c(r30)
/* 8066A9C4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8066A9C8  EC 21 00 2A */	fadds f1, f1, f0
/* 8066A9CC  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8066A9D0  C0 7E 06 70 */	lfs f3, 0x670(r30)
/* 8066A9D4  4B C0 50 68 */	b cLib_addCalc2__FPffff
/* 8066A9D8  38 7E 06 70 */	addi r3, r30, 0x670
/* 8066A9DC  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8066A9E0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8066A9E4  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 8066A9E8  4B C0 50 54 */	b cLib_addCalc2__FPffff
/* 8066A9EC  48 00 01 74 */	b lbl_8066AB60
lbl_8066A9F0:
/* 8066A9F0  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 8066A9F4  38 80 00 01 */	li r4, 1
/* 8066A9F8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8066A9FC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8066AA00  40 82 00 18 */	bne lbl_8066AA18
/* 8066AA04  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8066AA08  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8066AA0C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8066AA10  41 82 00 08 */	beq lbl_8066AA18
/* 8066AA14  38 80 00 00 */	li r4, 0
lbl_8066AA18:
/* 8066AA18  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8066AA1C  41 82 01 44 */	beq lbl_8066AB60
/* 8066AA20  38 00 00 00 */	li r0, 0
/* 8066AA24  B0 1E 05 F2 */	sth r0, 0x5f2(r30)
/* 8066AA28  38 00 00 0D */	li r0, 0xd
/* 8066AA2C  B0 1E 05 F6 */	sth r0, 0x5f6(r30)
/* 8066AA30  48 00 01 30 */	b lbl_8066AB60
lbl_8066AA34:
/* 8066AA34  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8066AA38  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8066AA3C  80 63 00 00 */	lwz r3, 0(r3)
/* 8066AA40  A8 9E 06 60 */	lha r4, 0x660(r30)
/* 8066AA44  4B 9A 19 98 */	b mDoMtx_YrotS__FPA4_fs
/* 8066AA48  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8066AA4C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8066AA50  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8066AA54  C0 3F 01 24 */	lfs f1, 0x124(r31)
/* 8066AA58  C0 1E 06 7C */	lfs f0, 0x67c(r30)
/* 8066AA5C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8066AA60  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8066AA64  38 61 00 14 */	addi r3, r1, 0x14
/* 8066AA68  38 81 00 08 */	addi r4, r1, 8
/* 8066AA6C  4B C0 64 80 */	b MtxPosition__FP4cXyzP4cXyz
/* 8066AA70  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8066AA74  C0 3E 06 64 */	lfs f1, 0x664(r30)
/* 8066AA78  C0 01 00 08 */	lfs f0, 8(r1)
/* 8066AA7C  EC 21 00 2A */	fadds f1, f1, f0
/* 8066AA80  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8066AA84  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 8066AA88  4B C0 4F B4 */	b cLib_addCalc2__FPffff
/* 8066AA8C  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 8066AA90  C0 3E 06 6C */	lfs f1, 0x66c(r30)
/* 8066AA94  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8066AA98  EC 21 00 2A */	fadds f1, f1, f0
/* 8066AA9C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8066AAA0  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 8066AAA4  4B C0 4F 98 */	b cLib_addCalc2__FPffff
/* 8066AAA8  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8066AAAC  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 8066AAB0  EC 01 00 2A */	fadds f0, f1, f0
/* 8066AAB4  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8066AAB8  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 8066AABC  C0 1E 05 30 */	lfs f0, 0x530(r30)
/* 8066AAC0  EC 01 00 2A */	fadds f0, f1, f0
/* 8066AAC4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8066AAC8  A8 1E 05 FC */	lha r0, 0x5fc(r30)
/* 8066AACC  2C 00 00 00 */	cmpwi r0, 0
/* 8066AAD0  40 82 00 90 */	bne lbl_8066AB60
/* 8066AAD4  38 7E 06 FC */	addi r3, r30, 0x6fc
/* 8066AAD8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8066AADC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8066AAE0  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8066AAE4  4B A0 BF C8 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 8066AAE8  80 1E 07 28 */	lwz r0, 0x728(r30)
/* 8066AAEC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8066AAF0  41 82 00 70 */	beq lbl_8066AB60
/* 8066AAF4  38 00 00 00 */	li r0, 0
/* 8066AAF8  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 8066AAFC  7F C3 F3 78 */	mr r3, r30
/* 8066AB00  38 80 00 0B */	li r4, 0xb
/* 8066AB04  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8066AB08  38 A0 00 00 */	li r5, 0
/* 8066AB0C  FC 40 08 90 */	fmr f2, f1
/* 8066AB10  4B FF D2 99 */	bl anm_init__FP8do_classifUcf
/* 8066AB14  38 00 00 06 */	li r0, 6
/* 8066AB18  B0 1E 05 F6 */	sth r0, 0x5f6(r30)
/* 8066AB1C  48 00 00 44 */	b lbl_8066AB60
lbl_8066AB20:
/* 8066AB20  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 8066AB24  38 80 00 01 */	li r4, 1
/* 8066AB28  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8066AB2C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8066AB30  40 82 00 18 */	bne lbl_8066AB48
/* 8066AB34  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8066AB38  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8066AB3C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8066AB40  41 82 00 08 */	beq lbl_8066AB48
/* 8066AB44  38 80 00 00 */	li r4, 0
lbl_8066AB48:
/* 8066AB48  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8066AB4C  41 82 00 14 */	beq lbl_8066AB60
/* 8066AB50  38 00 00 06 */	li r0, 6
/* 8066AB54  B0 1E 05 F2 */	sth r0, 0x5f2(r30)
/* 8066AB58  38 00 00 00 */	li r0, 0
/* 8066AB5C  B0 1E 05 F6 */	sth r0, 0x5f6(r30)
lbl_8066AB60:
/* 8066AB60  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8066AB64  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8066AB68  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8066AB6C  7C 08 03 A6 */	mtlr r0
/* 8066AB70  38 21 00 30 */	addi r1, r1, 0x30
/* 8066AB74  4E 80 00 20 */	blr 
