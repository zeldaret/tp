lbl_8078C77C:
/* 8078C77C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8078C780  7C 08 02 A6 */	mflr r0
/* 8078C784  90 01 00 44 */	stw r0, 0x44(r1)
/* 8078C788  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8078C78C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8078C790  7C 7E 1B 78 */	mr r30, r3
/* 8078C794  3C 60 80 79 */	lis r3, lit_3767@ha
/* 8078C798  3B E3 DD A4 */	addi r31, r3, lit_3767@l
/* 8078C79C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8078C7A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8078C7A4  80 A3 5D AC */	lwz r5, 0x5dac(r3)
/* 8078C7A8  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 8078C7AC  D0 5E 06 98 */	stfs f2, 0x698(r30)
/* 8078C7B0  A8 1E 06 6E */	lha r0, 0x66e(r30)
/* 8078C7B4  2C 00 00 01 */	cmpwi r0, 1
/* 8078C7B8  41 82 01 00 */	beq lbl_8078C8B8
/* 8078C7BC  40 80 00 10 */	bge lbl_8078C7CC
/* 8078C7C0  2C 00 00 00 */	cmpwi r0, 0
/* 8078C7C4  40 80 00 14 */	bge lbl_8078C7D8
/* 8078C7C8  48 00 01 78 */	b lbl_8078C940
lbl_8078C7CC:
/* 8078C7CC  2C 00 00 05 */	cmpwi r0, 5
/* 8078C7D0  41 82 01 60 */	beq lbl_8078C930
/* 8078C7D4  48 00 01 6C */	b lbl_8078C940
lbl_8078C7D8:
/* 8078C7D8  38 61 00 08 */	addi r3, r1, 8
/* 8078C7DC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8078C7E0  38 A5 05 38 */	addi r5, r5, 0x538
/* 8078C7E4  4B AD A3 50 */	b __mi__4cXyzCFRC3Vec
/* 8078C7E8  C0 21 00 08 */	lfs f1, 8(r1)
/* 8078C7EC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8078C7F0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8078C7F4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8078C7F8  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8078C7FC  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8078C800  4B AD AE 74 */	b cM_atan2s__Fff
/* 8078C804  B0 7E 04 DE */	sth r3, 0x4de(r30)
/* 8078C808  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8078C80C  C0 1E 06 B8 */	lfs f0, 0x6b8(r30)
/* 8078C810  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078C814  40 80 00 5C */	bge lbl_8078C870
/* 8078C818  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8078C81C  EC 20 00 32 */	fmuls f1, f0, f0
/* 8078C820  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8078C824  EC 00 00 32 */	fmuls f0, f0, f0
/* 8078C828  EC 41 00 2A */	fadds f2, f1, f0
/* 8078C82C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8078C830  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8078C834  40 81 00 0C */	ble lbl_8078C840
/* 8078C838  FC 00 10 34 */	frsqrte f0, f2
/* 8078C83C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8078C840:
/* 8078C840  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 8078C844  4B AD AE 30 */	b cM_atan2s__Fff
/* 8078C848  7C 03 00 D0 */	neg r0, r3
/* 8078C84C  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 8078C850  38 00 00 05 */	li r0, 5
/* 8078C854  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 8078C858  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 8078C85C  4B AD B0 F8 */	b cM_rndF__Ff
/* 8078C860  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8078C864  EC 00 08 2A */	fadds f0, f0, f1
/* 8078C868  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8078C86C  48 00 00 28 */	b lbl_8078C894
lbl_8078C870:
/* 8078C870  38 00 00 00 */	li r0, 0
/* 8078C874  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 8078C878  38 00 00 01 */	li r0, 1
/* 8078C87C  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 8078C880  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8078C884  4B AD B0 D0 */	b cM_rndF__Ff
/* 8078C888  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 8078C88C  EC 00 08 2A */	fadds f0, f0, f1
/* 8078C890  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_8078C894:
/* 8078C894  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 8078C898  4B AD B0 BC */	b cM_rndF__Ff
/* 8078C89C  FC 00 08 1E */	fctiwz f0, f1
/* 8078C8A0  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8078C8A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8078C8A8  B0 1E 06 C2 */	sth r0, 0x6c2(r30)
/* 8078C8AC  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8078C8B0  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8078C8B4  48 00 00 8C */	b lbl_8078C940
lbl_8078C8B8:
/* 8078C8B8  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 8078C8BC  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 8078C8C0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8078C8C4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8078C8C8  80 1E 07 4C */	lwz r0, 0x74c(r30)
/* 8078C8CC  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8078C8D0  41 82 00 08 */	beq lbl_8078C8D8
/* 8078C8D4  D0 5E 05 2C */	stfs f2, 0x52c(r30)
lbl_8078C8D8:
/* 8078C8D8  80 1E 07 4C */	lwz r0, 0x74c(r30)
/* 8078C8DC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8078C8E0  41 82 00 14 */	beq lbl_8078C8F4
/* 8078C8E4  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8078C8E8  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8078C8EC  C0 5F 00 C0 */	lfs f2, 0xc0(r31)
/* 8078C8F0  4B AE 31 90 */	b cLib_addCalc0__FPfff
lbl_8078C8F4:
/* 8078C8F4  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8078C8F8  C0 1E 06 B8 */	lfs f0, 0x6b8(r30)
/* 8078C8FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078C900  40 80 00 40 */	bge lbl_8078C940
/* 8078C904  38 00 00 05 */	li r0, 5
/* 8078C908  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 8078C90C  38 00 00 01 */	li r0, 1
/* 8078C910  98 1E 0A 93 */	stb r0, 0xa93(r30)
/* 8078C914  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 8078C918  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 8078C91C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8078C920  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8078C924  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8078C928  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8078C92C  48 00 00 14 */	b lbl_8078C940
lbl_8078C930:
/* 8078C930  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8078C934  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8078C938  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 8078C93C  4B AE 31 44 */	b cLib_addCalc0__FPfff
lbl_8078C940:
/* 8078C940  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8078C944  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8078C948  80 63 00 00 */	lwz r3, 0(r3)
/* 8078C94C  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 8078C950  4B 87 FA 8C */	b mDoMtx_YrotS__FPA4_fs
/* 8078C954  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8078C958  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8078C95C  80 63 00 00 */	lwz r3, 0(r3)
/* 8078C960  A8 9E 04 DC */	lha r4, 0x4dc(r30)
/* 8078C964  4B 87 FA 38 */	b mDoMtx_XrotM__FPA4_fs
/* 8078C968  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8078C96C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8078C970  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8078C974  C0 5E 04 EC */	lfs f2, 0x4ec(r30)
/* 8078C978  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 8078C97C  3C 60 80 79 */	lis r3, l_HIO@ha
/* 8078C980  38 63 E0 EC */	addi r3, r3, l_HIO@l
/* 8078C984  C0 03 00 08 */	lfs f0, 8(r3)
/* 8078C988  EC 01 00 32 */	fmuls f0, f1, f0
/* 8078C98C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8078C990  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8078C994  38 61 00 20 */	addi r3, r1, 0x20
/* 8078C998  38 81 00 14 */	addi r4, r1, 0x14
/* 8078C99C  4B AE 45 50 */	b MtxPosition__FP4cXyzP4cXyz
/* 8078C9A0  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8078C9A4  38 81 00 14 */	addi r4, r1, 0x14
/* 8078C9A8  7C 65 1B 78 */	mr r5, r3
/* 8078C9AC  4B BB A6 E4 */	b PSVECAdd
/* 8078C9B0  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8078C9B4  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 8078C9B8  EC 01 00 2A */	fadds f0, f1, f0
/* 8078C9BC  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8078C9C0  38 7E 07 20 */	addi r3, r30, 0x720
/* 8078C9C4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8078C9C8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8078C9CC  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8078C9D0  4B 8E A0 DC */	b CrrPos__9dBgS_AcchFR4dBgS
/* 8078C9D4  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8078C9D8  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 8078C9DC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8078C9E0  40 82 00 24 */	bne lbl_8078CA04
/* 8078C9E4  7F C3 F3 78 */	mr r3, r30
/* 8078C9E8  38 9E 05 38 */	addi r4, r30, 0x538
/* 8078C9EC  38 A0 00 05 */	li r5, 5
/* 8078C9F0  38 C0 00 00 */	li r6, 0
/* 8078C9F4  38 E0 00 10 */	li r7, 0x10
/* 8078C9F8  4B 89 00 E0 */	b fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 8078C9FC  7F C3 F3 78 */	mr r3, r30
/* 8078CA00  4B 88 D2 7C */	b fopAcM_delete__FP10fopAc_ac_c
lbl_8078CA04:
/* 8078CA04  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8078CA08  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8078CA0C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8078CA10  7C 08 03 A6 */	mtlr r0
/* 8078CA14  38 21 00 40 */	addi r1, r1, 0x40
/* 8078CA18  4E 80 00 20 */	blr 
