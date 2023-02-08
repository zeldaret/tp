lbl_800FE868:
/* 800FE868  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800FE86C  7C 08 02 A6 */	mflr r0
/* 800FE870  90 01 00 54 */	stw r0, 0x54(r1)
/* 800FE874  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 800FE878  93 C1 00 48 */	stw r30, 0x48(r1)
/* 800FE87C  7C 7F 1B 78 */	mr r31, r3
/* 800FE880  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800FE884  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800FE888  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 800FE88C  7F C3 F3 78 */	mr r3, r30
/* 800FE890  38 9F 1E 1C */	addi r4, r31, 0x1e1c
/* 800FE894  4B F7 5D CD */	bl ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 800FE898  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FE89C  41 82 00 34 */	beq lbl_800FE8D0
/* 800FE8A0  7F C3 F3 78 */	mr r3, r30
/* 800FE8A4  38 9F 1E 1C */	addi r4, r31, 0x1e1c
/* 800FE8A8  4B F7 62 15 */	bl ChkMoveBG__4dBgSFRC13cBgS_PolyInfo
/* 800FE8AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FE8B0  41 82 00 20 */	beq lbl_800FE8D0
/* 800FE8B4  7F C3 F3 78 */	mr r3, r30
/* 800FE8B8  38 9F 1E 1C */	addi r4, r31, 0x1e1c
/* 800FE8BC  38 A0 00 01 */	li r5, 1
/* 800FE8C0  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 800FE8C4  38 FF 04 DC */	addi r7, r31, 0x4dc
/* 800FE8C8  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 800FE8CC  4B F7 6F B5 */	bl MoveBgTransPos__4dBgSFRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz
lbl_800FE8D0:
/* 800FE8D0  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800FE8D4  28 00 00 81 */	cmplwi r0, 0x81
/* 800FE8D8  40 82 00 1C */	bne lbl_800FE8F4
/* 800FE8DC  38 7F 1F D0 */	addi r3, r31, 0x1fd0
/* 800FE8E0  48 05 FB ED */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800FE8E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FE8E8  40 82 00 0C */	bne lbl_800FE8F4
/* 800FE8EC  38 60 00 00 */	li r3, 0
/* 800FE8F0  48 00 02 88 */	b lbl_800FEB78
lbl_800FE8F4:
/* 800FE8F4  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 800FE8F8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800FE8FC  41 82 00 20 */	beq lbl_800FE91C
/* 800FE900  7F E3 FB 78 */	mr r3, r31
/* 800FE904  38 80 00 01 */	li r4, 1
/* 800FE908  3C A0 80 39 */	lis r5, m__22daAlinkHIO_autoJump_c0@ha /* 0x8038E068@ha */
/* 800FE90C  38 A5 E0 68 */	addi r5, r5, m__22daAlinkHIO_autoJump_c0@l /* 0x8038E068@l */
/* 800FE910  C0 25 00 70 */	lfs f1, 0x70(r5)
/* 800FE914  4B FC 81 35 */	bl procFallInit__9daAlink_cFif
/* 800FE918  48 00 02 60 */	b lbl_800FEB78
lbl_800FE91C:
/* 800FE91C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800FE920  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800FE924  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800FE928  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800FE92C  7D 03 04 2E */	lfsx f8, r3, r0
/* 800FE930  7C 63 02 14 */	add r3, r3, r0
/* 800FE934  C1 23 00 04 */	lfs f9, 4(r3)
/* 800FE938  C0 BF 04 D8 */	lfs f5, 0x4d8(r31)
/* 800FE93C  C0 42 92 E0 */	lfs f2, lit_6845(r2)
/* 800FE940  EC 02 02 72 */	fmuls f0, f2, f9
/* 800FE944  EC E5 00 28 */	fsubs f7, f5, f0
/* 800FE948  C0 9F 04 D4 */	lfs f4, 0x4d4(r31)
/* 800FE94C  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 800FE950  C0 1F 05 98 */	lfs f0, 0x598(r31)
/* 800FE954  EC 01 00 32 */	fmuls f0, f1, f0
/* 800FE958  EC C4 00 2A */	fadds f6, f4, f0
/* 800FE95C  C0 7F 04 D0 */	lfs f3, 0x4d0(r31)
/* 800FE960  EC 02 02 32 */	fmuls f0, f2, f8
/* 800FE964  EC 43 00 28 */	fsubs f2, f3, f0
/* 800FE968  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 800FE96C  D0 C1 00 24 */	stfs f6, 0x24(r1)
/* 800FE970  D0 E1 00 28 */	stfs f7, 0x28(r1)
/* 800FE974  C0 22 93 68 */	lfs f1, lit_8472(r2)
/* 800FE978  EC 01 02 72 */	fmuls f0, f1, f9
/* 800FE97C  EC A5 00 2A */	fadds f5, f5, f0
/* 800FE980  EC 01 02 32 */	fmuls f0, f1, f8
/* 800FE984  EC 03 00 2A */	fadds f0, f3, f0
/* 800FE988  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800FE98C  D0 C1 00 18 */	stfs f6, 0x18(r1)
/* 800FE990  D0 A1 00 1C */	stfs f5, 0x1c(r1)
/* 800FE994  D0 41 00 08 */	stfs f2, 8(r1)
/* 800FE998  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 800FE99C  D0 E1 00 10 */	stfs f7, 0x10(r1)
/* 800FE9A0  38 7F 1D 08 */	addi r3, r31, 0x1d08
/* 800FE9A4  38 81 00 08 */	addi r4, r1, 8
/* 800FE9A8  48 16 93 81 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 800FE9AC  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800FE9B0  28 00 00 82 */	cmplwi r0, 0x82
/* 800FE9B4  40 82 00 7C */	bne lbl_800FEA30
/* 800FE9B8  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 800FE9BC  C0 22 94 D0 */	lfs f1, lit_18847(r2)
/* 800FE9C0  C0 1F 05 98 */	lfs f0, 0x598(r31)
/* 800FE9C4  EC 01 00 32 */	fmuls f0, f1, f0
/* 800FE9C8  EC 02 00 2A */	fadds f0, f2, f0
/* 800FE9CC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800FE9D0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800FE9D4  7F E3 FB 78 */	mr r3, r31
/* 800FE9D8  38 81 00 20 */	addi r4, r1, 0x20
/* 800FE9DC  38 A1 00 14 */	addi r5, r1, 0x14
/* 800FE9E0  4B FA 37 B9 */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800FE9E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FE9E8  41 82 00 18 */	beq lbl_800FEA00
/* 800FE9EC  7F E3 FB 78 */	mr r3, r31
/* 800FE9F0  38 9F 1B 5C */	addi r4, r31, 0x1b5c
/* 800FE9F4  4B FF F6 65 */	bl checkClimbCode__9daAlink_cFR13cBgS_PolyInfo
/* 800FE9F8  2C 03 00 00 */	cmpwi r3, 0
/* 800FE9FC  40 82 00 18 */	bne lbl_800FEA14
lbl_800FEA00:
/* 800FEA00  7F E3 FB 78 */	mr r3, r31
/* 800FEA04  38 80 00 01 */	li r4, 1
/* 800FEA08  38 A0 00 00 */	li r5, 0
/* 800FEA0C  48 00 16 ED */	bl procClimbWaitInit__9daAlink_cFii
/* 800FEA10  48 00 01 68 */	b lbl_800FEB78
lbl_800FEA14:
/* 800FEA14  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 800FEA18  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 800FEA1C  C0 1F 05 98 */	lfs f0, 0x598(r31)
/* 800FEA20  EC 01 00 32 */	fmuls f0, f1, f0
/* 800FEA24  EC 02 00 2A */	fadds f0, f2, f0
/* 800FEA28  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800FEA2C  D0 01 00 18 */	stfs f0, 0x18(r1)
lbl_800FEA30:
/* 800FEA30  7F E3 FB 78 */	mr r3, r31
/* 800FEA34  38 81 00 20 */	addi r4, r1, 0x20
/* 800FEA38  38 A1 00 14 */	addi r5, r1, 0x14
/* 800FEA3C  4B FA 37 5D */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800FEA40  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FEA44  41 82 00 4C */	beq lbl_800FEA90
/* 800FEA48  7F E3 FB 78 */	mr r3, r31
/* 800FEA4C  38 9F 1B 5C */	addi r4, r31, 0x1b5c
/* 800FEA50  4B FF F6 09 */	bl checkClimbCode__9daAlink_cFR13cBgS_PolyInfo
/* 800FEA54  2C 03 00 00 */	cmpwi r3, 0
/* 800FEA58  41 82 00 38 */	beq lbl_800FEA90
/* 800FEA5C  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800FEA60  28 00 00 82 */	cmplwi r0, 0x82
/* 800FEA64  41 82 00 0C */	beq lbl_800FEA70
/* 800FEA68  28 00 00 83 */	cmplwi r0, 0x83
/* 800FEA6C  40 82 00 40 */	bne lbl_800FEAAC
lbl_800FEA70:
/* 800FEA70  7F C3 F3 78 */	mr r3, r30
/* 800FEA74  38 9F 1D 08 */	addi r4, r31, 0x1d08
/* 800FEA78  4B F7 5A 29 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 800FEA7C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 800FEA80  C0 02 94 64 */	lfs f0, lit_14954(r2)
/* 800FEA84  EC 02 00 28 */	fsubs f0, f2, f0
/* 800FEA88  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800FEA8C  40 80 00 20 */	bge lbl_800FEAAC
lbl_800FEA90:
/* 800FEA90  7F E3 FB 78 */	mr r3, r31
/* 800FEA94  38 80 00 01 */	li r4, 1
/* 800FEA98  3C A0 80 39 */	lis r5, m__22daAlinkHIO_autoJump_c0@ha /* 0x8038E068@ha */
/* 800FEA9C  38 A5 E0 68 */	addi r5, r5, m__22daAlinkHIO_autoJump_c0@l /* 0x8038E068@l */
/* 800FEAA0  C0 25 00 70 */	lfs f1, 0x70(r5)
/* 800FEAA4  4B FC 7F A5 */	bl procFallInit__9daAlink_cFif
/* 800FEAA8  48 00 00 D0 */	b lbl_800FEB78
lbl_800FEAAC:
/* 800FEAAC  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800FEAB0  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800FEAB4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 800FEAB8  7F C3 F3 78 */	mr r3, r30
/* 800FEABC  38 9F 1B 5C */	addi r4, r31, 0x1b5c
/* 800FEAC0  38 A1 00 2C */	addi r5, r1, 0x2c
/* 800FEAC4  4B F7 5C 81 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 800FEAC8  38 61 00 2C */	addi r3, r1, 0x2c
/* 800FEACC  48 16 86 5D */	bl atan2sX_Z__4cXyzCFv
/* 800FEAD0  7C 7E 1B 78 */	mr r30, r3
/* 800FEAD4  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 800FEAD8  48 17 23 4D */	bl cLib_distanceAngleS__Fss
/* 800FEADC  2C 03 54 9F */	cmpwi r3, 0x549f
/* 800FEAE0  41 81 00 2C */	bgt lbl_800FEB0C
/* 800FEAE4  7F E3 FB 78 */	mr r3, r31
/* 800FEAE8  38 80 00 01 */	li r4, 1
/* 800FEAEC  3C A0 80 39 */	lis r5, m__22daAlinkHIO_autoJump_c0@ha /* 0x8038E068@ha */
/* 800FEAF0  38 A5 E0 68 */	addi r5, r5, m__22daAlinkHIO_autoJump_c0@l /* 0x8038E068@l */
/* 800FEAF4  C0 25 00 70 */	lfs f1, 0x70(r5)
/* 800FEAF8  4B FC 7F 51 */	bl procFallInit__9daAlink_cFif
/* 800FEAFC  3C 80 80 3A */	lis r4, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800FEB00  38 04 37 C0 */	addi r0, r4, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800FEB04  90 01 00 3C */	stw r0, 0x3c(r1)
/* 800FEB08  48 00 00 70 */	b lbl_800FEB78
lbl_800FEB0C:
/* 800FEB0C  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 800FEB10  3C 7E 00 01 */	addis r3, r30, 1
/* 800FEB14  38 03 80 00 */	addi r0, r3, -32768
/* 800FEB18  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 800FEB1C  C0 1F 1B 78 */	lfs f0, 0x1b78(r31)
/* 800FEB20  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 800FEB24  C0 1F 1B 80 */	lfs f0, 0x1b80(r31)
/* 800FEB28  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 800FEB2C  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 800FEB30  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800FEB34  7C 04 00 50 */	subf r0, r4, r0
/* 800FEB38  7C 00 07 34 */	extsh r0, r0
/* 800FEB3C  7C 03 02 14 */	add r0, r3, r0
/* 800FEB40  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800FEB44  A8 7F 30 8C */	lha r3, 0x308c(r31)
/* 800FEB48  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800FEB4C  7C 00 20 50 */	subf r0, r0, r4
/* 800FEB50  7C 00 07 34 */	extsh r0, r0
/* 800FEB54  7C 03 02 14 */	add r0, r3, r0
/* 800FEB58  B0 1F 30 8C */	sth r0, 0x308c(r31)
/* 800FEB5C  38 7F 1E 1C */	addi r3, r31, 0x1e1c
/* 800FEB60  38 9F 1B 5C */	addi r4, r31, 0x1b5c
/* 800FEB64  48 16 95 E5 */	bl SetPolyInfo__13cBgS_PolyInfoFRC13cBgS_PolyInfo
/* 800FEB68  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800FEB6C  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800FEB70  90 01 00 3C */	stw r0, 0x3c(r1)
/* 800FEB74  38 60 00 00 */	li r3, 0
lbl_800FEB78:
/* 800FEB78  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 800FEB7C  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 800FEB80  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800FEB84  7C 08 03 A6 */	mtlr r0
/* 800FEB88  38 21 00 50 */	addi r1, r1, 0x50
/* 800FEB8C  4E 80 00 20 */	blr 
