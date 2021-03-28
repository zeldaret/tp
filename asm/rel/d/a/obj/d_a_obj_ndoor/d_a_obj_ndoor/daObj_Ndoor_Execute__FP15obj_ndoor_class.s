lbl_80CA359C:
/* 80CA359C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CA35A0  7C 08 02 A6 */	mflr r0
/* 80CA35A4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CA35A8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80CA35AC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80CA35B0  7C 7E 1B 78 */	mr r30, r3
/* 80CA35B4  3C 80 80 CA */	lis r4, lit_3831@ha
/* 80CA35B8  3B E4 3A 44 */	addi r31, r4, lit_3831@l
/* 80CA35BC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80CA35C0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80CA35C4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80CA35C8  80 04 05 80 */	lwz r0, 0x580(r4)
/* 80CA35CC  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80CA35D0  41 82 00 1C */	beq lbl_80CA35EC
/* 80CA35D4  4B 37 73 90 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80CA35D8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80CA35DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CA35E0  40 80 00 0C */	bge lbl_80CA35EC
/* 80CA35E4  38 00 00 01 */	li r0, 1
/* 80CA35E8  98 1E 05 67 */	stb r0, 0x567(r30)
lbl_80CA35EC:
/* 80CA35EC  A8 1E 05 76 */	lha r0, 0x576(r30)
/* 80CA35F0  2C 00 00 00 */	cmpwi r0, 0
/* 80CA35F4  40 82 00 48 */	bne lbl_80CA363C
/* 80CA35F8  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80CA35FC  4B 3E 0E 64 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80CA3600  28 03 00 00 */	cmplwi r3, 0
/* 80CA3604  41 82 00 38 */	beq lbl_80CA363C
/* 80CA3608  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80CA360C  4B 3E 0E EC */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80CA3610  90 7E 06 F4 */	stw r3, 0x6f4(r30)
/* 80CA3614  38 7E 06 F4 */	addi r3, r30, 0x6f4
/* 80CA3618  4B 3E 44 40 */	b at_power_check__FP11dCcU_AtInfo
/* 80CA361C  A0 1E 07 10 */	lhz r0, 0x710(r30)
/* 80CA3620  28 00 00 01 */	cmplwi r0, 1
/* 80CA3624  41 81 00 10 */	bgt lbl_80CA3634
/* 80CA3628  38 00 00 01 */	li r0, 1
/* 80CA362C  98 1E 05 67 */	stb r0, 0x567(r30)
/* 80CA3630  48 00 00 0C */	b lbl_80CA363C
lbl_80CA3634:
/* 80CA3634  38 00 00 02 */	li r0, 2
/* 80CA3638  98 1E 05 67 */	stb r0, 0x567(r30)
lbl_80CA363C:
/* 80CA363C  88 7E 05 67 */	lbz r3, 0x567(r30)
/* 80CA3640  7C 60 07 75 */	extsb. r0, r3
/* 80CA3644  41 82 00 3C */	beq lbl_80CA3680
/* 80CA3648  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80CA364C  7C 60 07 74 */	extsb r0, r3
/* 80CA3650  C8 3F 00 20 */	lfd f1, 0x20(r31)
/* 80CA3654  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CA3658  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80CA365C  3C 00 43 30 */	lis r0, 0x4330
/* 80CA3660  90 01 00 18 */	stw r0, 0x18(r1)
/* 80CA3664  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80CA3668  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CA366C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80CA3670  D0 1E 05 7C */	stfs f0, 0x57c(r30)
/* 80CA3674  38 00 00 00 */	li r0, 0
/* 80CA3678  B0 1E 05 78 */	sth r0, 0x578(r30)
/* 80CA367C  98 1E 05 67 */	stb r0, 0x567(r30)
lbl_80CA3680:
/* 80CA3680  A8 1E 05 78 */	lha r0, 0x578(r30)
/* 80CA3684  54 00 64 26 */	rlwinm r0, r0, 0xc, 0x10, 0x13
/* 80CA3688  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80CA368C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80CA3690  7C 23 04 2E */	lfsx f1, r3, r0
/* 80CA3694  C0 1E 05 7C */	lfs f0, 0x57c(r30)
/* 80CA3698  EC 00 00 72 */	fmuls f0, f0, f1
/* 80CA369C  FC 00 00 1E */	fctiwz f0, f0
/* 80CA36A0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80CA36A4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80CA36A8  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80CA36AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CA36B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CA36B4  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80CA36B8  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80CA36BC  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80CA36C0  4B 6A 32 28 */	b PSMTXTrans
/* 80CA36C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CA36C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CA36CC  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80CA36D0  4B 36 8D 64 */	b mDoMtx_YrotM__FPA4_fs
/* 80CA36D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CA36D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CA36DC  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 80CA36E0  4B 36 8C BC */	b mDoMtx_XrotM__FPA4_fs
/* 80CA36E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CA36E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CA36EC  80 9E 05 70 */	lwz r4, 0x570(r30)
/* 80CA36F0  38 84 00 24 */	addi r4, r4, 0x24
/* 80CA36F4  4B 6A 2D BC */	b PSMTXCopy
/* 80CA36F8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80CA36FC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CA3700  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80CA3704  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80CA3708  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80CA370C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CA3710  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80CA3714  EC 01 00 28 */	fsubs f0, f1, f0
/* 80CA3718  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CA371C  A8 7E 05 76 */	lha r3, 0x576(r30)
/* 80CA3720  2C 03 00 00 */	cmpwi r3, 0
/* 80CA3724  41 82 00 1C */	beq lbl_80CA3740
/* 80CA3728  38 03 FF FF */	addi r0, r3, -1
/* 80CA372C  B0 1E 05 76 */	sth r0, 0x576(r30)
/* 80CA3730  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80CA3734  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80CA3738  EC 01 00 28 */	fsubs f0, f1, f0
/* 80CA373C  D0 01 00 0C */	stfs f0, 0xc(r1)
lbl_80CA3740:
/* 80CA3740  38 7E 06 E0 */	addi r3, r30, 0x6e0
/* 80CA3744  38 81 00 08 */	addi r4, r1, 8
/* 80CA3748  4B 5C BF 00 */	b SetC__8cM3dGSphFRC4cXyz
/* 80CA374C  38 7E 06 E0 */	addi r3, r30, 0x6e0
/* 80CA3750  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80CA3754  4B 5C BF B4 */	b SetR__8cM3dGSphFf
/* 80CA3758  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CA375C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CA3760  38 63 23 3C */	addi r3, r3, 0x233c
/* 80CA3764  38 9E 05 BC */	addi r4, r30, 0x5bc
/* 80CA3768  4B 5C 14 40 */	b Set__4cCcSFP8cCcD_Obj
/* 80CA376C  A8 7E 05 78 */	lha r3, 0x578(r30)
/* 80CA3770  38 03 00 01 */	addi r0, r3, 1
/* 80CA3774  B0 1E 05 78 */	sth r0, 0x578(r30)
/* 80CA3778  38 7E 05 7C */	addi r3, r30, 0x57c
/* 80CA377C  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80CA3780  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 80CA3784  4B 5C C2 FC */	b cLib_addCalc0__FPfff
/* 80CA3788  38 60 00 01 */	li r3, 1
/* 80CA378C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80CA3790  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80CA3794  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CA3798  7C 08 03 A6 */	mtlr r0
/* 80CA379C  38 21 00 30 */	addi r1, r1, 0x30
/* 80CA37A0  4E 80 00 20 */	blr 
