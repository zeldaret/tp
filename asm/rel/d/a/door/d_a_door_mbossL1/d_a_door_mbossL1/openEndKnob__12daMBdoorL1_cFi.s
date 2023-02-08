lbl_80675734:
/* 80675734  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80675738  7C 08 02 A6 */	mflr r0
/* 8067573C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80675740  39 61 00 50 */	addi r11, r1, 0x50
/* 80675744  4B CE CA 99 */	bl _savegpr_29
/* 80675748  7C 7F 1B 78 */	mr r31, r3
/* 8067574C  3C 60 80 67 */	lis r3, l_staff_name@ha /* 0x80677558@ha */
/* 80675750  3B C3 75 58 */	addi r30, r3, l_staff_name@l /* 0x80677558@l */
/* 80675754  80 7F 05 98 */	lwz r3, 0x598(r31)
/* 80675758  28 03 00 00 */	cmplwi r3, 0
/* 8067575C  41 82 00 28 */	beq lbl_80675784
/* 80675760  4B BF 2A 75 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80675764  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80675768  40 82 00 1C */	bne lbl_80675784
/* 8067576C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80675770  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80675774  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80675778  80 9F 05 98 */	lwz r4, 0x598(r31)
/* 8067577C  7F E5 FB 78 */	mr r5, r31
/* 80675780  4B 9F F2 89 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
lbl_80675784:
/* 80675784  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80675788  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8067578C  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80675790  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80675794  7C 64 02 14 */	add r3, r4, r0
/* 80675798  C0 23 00 04 */	lfs f1, 4(r3)
/* 8067579C  7C 04 04 2E */	lfsx f0, r4, r0
/* 806757A0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806757A4  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 806757A8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806757AC  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 806757B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806757B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806757B8  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 806757BC  38 61 00 08 */	addi r3, r1, 8
/* 806757C0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806757C4  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 806757C8  4B BF 13 6D */	bl __mi__4cXyzCFRC3Vec
/* 806757CC  C0 21 00 08 */	lfs f1, 8(r1)
/* 806757D0  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 806757D4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 806757D8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806757DC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 806757E0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806757E4  C0 C1 00 2C */	lfs f6, 0x2c(r1)
/* 806757E8  EC 21 01 B2 */	fmuls f1, f1, f6
/* 806757EC  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 806757F0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 806757F4  EC 81 00 2A */	fadds f4, f1, f0
/* 806757F8  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 806757FC  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80675800  40 80 00 0C */	bge lbl_8067580C
/* 80675804  C0 BE 00 B8 */	lfs f5, 0xb8(r30)
/* 80675808  48 00 00 08 */	b lbl_80675810
lbl_8067580C:
/* 8067580C  C0 BE 00 BC */	lfs f5, 0xbc(r30)
lbl_80675810:
/* 80675810  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 80675814  EC 05 00 B2 */	fmuls f0, f5, f2
/* 80675818  EC 61 00 28 */	fsubs f3, f1, f0
/* 8067581C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80675820  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80675824  EC 05 01 B2 */	fmuls f0, f5, f6
/* 80675828  EC 01 00 28 */	fsubs f0, f1, f0
/* 8067582C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80675830  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80675834  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 80675838  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8067583C  7C 06 07 74 */	extsb r6, r0
/* 80675840  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80675844  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80675848  38 63 0D B4 */	addi r3, r3, 0xdb4
/* 8067584C  38 81 00 14 */	addi r4, r1, 0x14
/* 80675850  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80675854  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80675858  40 81 00 0C */	ble lbl_80675864
/* 8067585C  A8 BF 04 DE */	lha r5, 0x4de(r31)
/* 80675860  48 00 00 14 */	b lbl_80675874
lbl_80675864:
/* 80675864  A8 BF 04 DE */	lha r5, 0x4de(r31)
/* 80675868  3C A5 00 01 */	addis r5, r5, 1
/* 8067586C  38 05 80 00 */	addi r0, r5, -32768
/* 80675870  7C 05 07 34 */	extsh r5, r0
lbl_80675874:
/* 80675874  4B 9B F7 0D */	bl setRoom__13dSv_restart_cFRC4cXyzsSc
/* 80675878  38 60 00 01 */	li r3, 1
/* 8067587C  39 61 00 50 */	addi r11, r1, 0x50
/* 80675880  4B CE C9 A9 */	bl _restgpr_29
/* 80675884  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80675888  7C 08 03 A6 */	mtlr r0
/* 8067588C  38 21 00 50 */	addi r1, r1, 0x50
/* 80675890  4E 80 00 20 */	blr 
