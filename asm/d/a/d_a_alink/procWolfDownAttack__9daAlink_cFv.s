lbl_8013B808:
/* 8013B808  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8013B80C  7C 08 02 A6 */	mflr r0
/* 8013B810  90 01 00 34 */	stw r0, 0x34(r1)
/* 8013B814  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8013B818  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8013B81C  7C 7E 1B 78 */	mr r30, r3
/* 8013B820  80 03 19 9C */	lwz r0, 0x199c(r3)
/* 8013B824  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8013B828  41 82 00 AC */	beq lbl_8013B8D4
/* 8013B82C  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 8013B830  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8013B834  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8013B838  4C 40 13 82 */	cror 2, 0, 2
/* 8013B83C  40 82 00 98 */	bne lbl_8013B8D4
/* 8013B840  83 FE 28 10 */	lwz r31, 0x2810(r30)
/* 8013B844  28 1F 00 00 */	cmplwi r31, 0
/* 8013B848  41 82 00 80 */	beq lbl_8013B8C8
/* 8013B84C  A0 1F 05 8E */	lhz r0, 0x58e(r31)
/* 8013B850  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8013B854  41 82 00 74 */	beq lbl_8013B8C8
/* 8013B858  C0 5E 05 40 */	lfs f2, 0x540(r30)
/* 8013B85C  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 8013B860  D0 01 00 08 */	stfs f0, 8(r1)
/* 8013B864  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8013B868  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8013B86C  C0 5F 05 70 */	lfs f2, 0x570(r31)
/* 8013B870  C0 1F 05 68 */	lfs f0, 0x568(r31)
/* 8013B874  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8013B878  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8013B87C  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8013B880  38 61 00 08 */	addi r3, r1, 8
/* 8013B884  38 81 00 14 */	addi r4, r1, 0x14
/* 8013B888  48 20 BB 15 */	bl PSVECSquareDistance
/* 8013B88C  C0 02 93 5C */	lfs f0, lit_8322(r2)
/* 8013B890  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013B894  40 80 00 34 */	bge lbl_8013B8C8
/* 8013B898  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8013B89C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8013B8A0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8013B8A4  FC 00 02 10 */	fabs f0, f0
/* 8013B8A8  FC 20 00 18 */	frsp f1, f0
/* 8013B8AC  C0 02 93 00 */	lfs f0, lit_6895(r2)
/* 8013B8B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013B8B4  40 80 00 14 */	bge lbl_8013B8C8
/* 8013B8B8  7F C3 F3 78 */	mr r3, r30
/* 8013B8BC  7F E4 FB 78 */	mr r4, r31
/* 8013B8C0  48 00 00 A5 */	bl procWolfDownAtLandInit__9daAlink_cFP13fopEn_enemy_c
/* 8013B8C4  48 00 00 84 */	b lbl_8013B948
lbl_8013B8C8:
/* 8013B8C8  7F C3 F3 78 */	mr r3, r30
/* 8013B8CC  48 00 03 C9 */	bl procWolfDownAtMissLandInit__9daAlink_cFv
/* 8013B8D0  48 00 00 78 */	b lbl_8013B948
lbl_8013B8D4:
/* 8013B8D4  38 7E 1F D0 */	addi r3, r30, 0x1fd0
/* 8013B8D8  48 02 2B F5 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8013B8DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8013B8E0  41 82 00 3C */	beq lbl_8013B91C
/* 8013B8E4  7F C3 F3 78 */	mr r3, r30
/* 8013B8E8  38 80 00 62 */	li r4, 0x62
/* 8013B8EC  4B FE CF 21 */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 8013B8F0  2C 03 00 00 */	cmpwi r3, 0
/* 8013B8F4  41 82 00 54 */	beq lbl_8013B948
/* 8013B8F8  7F C3 F3 78 */	mr r3, r30
/* 8013B8FC  38 80 00 63 */	li r4, 0x63
/* 8013B900  3C A0 80 39 */	lis r5, m__22daAlinkHIO_wlAtDown_c0@ha /* 0x8038F658@ha */
/* 8013B904  38 A5 F6 58 */	addi r5, r5, m__22daAlinkHIO_wlAtDown_c0@l /* 0x8038F658@l */
/* 8013B908  38 A5 00 14 */	addi r5, r5, 0x14
/* 8013B90C  4B FE DF 3D */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8013B910  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8013B914  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8013B918  48 00 00 30 */	b lbl_8013B948
lbl_8013B91C:
/* 8013B91C  7F C3 F3 78 */	mr r3, r30
/* 8013B920  38 80 00 62 */	li r4, 0x62
/* 8013B924  4B FE CE E9 */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 8013B928  2C 03 00 00 */	cmpwi r3, 0
/* 8013B92C  41 82 00 1C */	beq lbl_8013B948
/* 8013B930  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 8013B934  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 8013B938  38 A0 00 02 */	li r5, 2
/* 8013B93C  38 C0 20 00 */	li r6, 0x2000
/* 8013B940  38 E0 08 00 */	li r7, 0x800
/* 8013B944  48 13 4B FD */	bl cLib_addCalcAngleS__FPsssss
lbl_8013B948:
/* 8013B948  38 60 00 01 */	li r3, 1
/* 8013B94C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8013B950  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8013B954  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8013B958  7C 08 03 A6 */	mtlr r0
/* 8013B95C  38 21 00 30 */	addi r1, r1, 0x30
/* 8013B960  4E 80 00 20 */	blr 
