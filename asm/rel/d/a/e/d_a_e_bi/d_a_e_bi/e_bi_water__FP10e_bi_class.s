lbl_8068B764:
/* 8068B764  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8068B768  7C 08 02 A6 */	mflr r0
/* 8068B76C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8068B770  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8068B774  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8068B778  7C 7E 1B 78 */	mr r30, r3
/* 8068B77C  3C 60 80 69 */	lis r3, lit_3903@ha /* 0x8068D7EC@ha */
/* 8068B780  3B E3 D7 EC */	addi r31, r3, lit_3903@l /* 0x8068D7EC@l */
/* 8068B784  38 61 00 08 */	addi r3, r1, 8
/* 8068B788  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 8068B78C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8068B790  4B BD B3 A5 */	bl __mi__4cXyzCFRC3Vec
/* 8068B794  C0 01 00 08 */	lfs f0, 8(r1)
/* 8068B798  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8068B79C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8068B7A0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8068B7A4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8068B7A8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8068B7AC  A8 1E 06 70 */	lha r0, 0x670(r30)
/* 8068B7B0  2C 00 00 01 */	cmpwi r0, 1
/* 8068B7B4  41 82 00 44 */	beq lbl_8068B7F8
/* 8068B7B8  40 80 00 C8 */	bge lbl_8068B880
/* 8068B7BC  2C 00 00 00 */	cmpwi r0, 0
/* 8068B7C0  40 80 00 08 */	bge lbl_8068B7C8
/* 8068B7C4  48 00 00 BC */	b lbl_8068B880
lbl_8068B7C8:
/* 8068B7C8  7F C3 F3 78 */	mr r3, r30
/* 8068B7CC  38 80 00 07 */	li r4, 7
/* 8068B7D0  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8068B7D4  38 A0 00 02 */	li r5, 2
/* 8068B7D8  FC 40 08 90 */	fmr f2, f1
/* 8068B7DC  4B FF EE 59 */	bl anm_init__FP10e_bi_classifUcf
/* 8068B7E0  38 00 00 01 */	li r0, 1
/* 8068B7E4  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 8068B7E8  38 00 00 14 */	li r0, 0x14
/* 8068B7EC  B0 1E 06 8C */	sth r0, 0x68c(r30)
/* 8068B7F0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8068B7F4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_8068B7F8:
/* 8068B7F8  A8 1E 06 8C */	lha r0, 0x68c(r30)
/* 8068B7FC  2C 00 00 00 */	cmpwi r0, 0
/* 8068B800  40 82 00 80 */	bne lbl_8068B880
/* 8068B804  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8068B808  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 8068B80C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8068B810  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8068B814  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 8068B818  EC 01 00 2A */	fadds f0, f1, f0
/* 8068B81C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8068B820  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 8068B824  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 8068B828  EC 01 00 28 */	fsubs f0, f1, f0
/* 8068B82C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8068B830  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 8068B834  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 8068B838  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8068B83C  40 80 00 08 */	bge lbl_8068B844
/* 8068B840  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_8068B844:
/* 8068B844  38 7E 04 EC */	addi r3, r30, 0x4ec
/* 8068B848  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8068B84C  C0 5F 00 7C */	lfs f2, 0x7c(r31)
/* 8068B850  4B BE 42 31 */	bl cLib_addCalc0__FPfff
/* 8068B854  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 8068B858  38 80 7F FF */	li r4, 0x7fff
/* 8068B85C  38 A0 00 10 */	li r5, 0x10
/* 8068B860  38 C0 08 00 */	li r6, 0x800
/* 8068B864  4B BE 4D A5 */	bl cLib_addCalcAngleS2__FPssss
/* 8068B868  C0 3E 04 EC */	lfs f1, 0x4ec(r30)
/* 8068B86C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8068B870  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8068B874  40 80 00 0C */	bge lbl_8068B880
/* 8068B878  38 00 00 01 */	li r0, 1
/* 8068B87C  98 1E 06 B0 */	stb r0, 0x6b0(r30)
lbl_8068B880:
/* 8068B880  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 8068B884  C0 1E 04 F8 */	lfs f0, 0x4f8(r30)
/* 8068B888  EC 01 00 2A */	fadds f0, f1, f0
/* 8068B88C  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8068B890  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 8068B894  C0 1E 05 00 */	lfs f0, 0x500(r30)
/* 8068B898  EC 01 00 2A */	fadds f0, f1, f0
/* 8068B89C  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 8068B8A0  38 7E 09 CC */	addi r3, r30, 0x9cc
/* 8068B8A4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8068B8A8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8068B8AC  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8068B8B0  4B 9E B1 FD */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 8068B8B4  C0 1E 04 F8 */	lfs f0, 0x4f8(r30)
/* 8068B8B8  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8068B8BC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8068B8C0  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 8068B8C4  C0 1E 05 00 */	lfs f0, 0x500(r30)
/* 8068B8C8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8068B8CC  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 8068B8D0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8068B8D4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8068B8D8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8068B8DC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8068B8E0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8068B8E4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8068B8E8  C0 3E 06 AC */	lfs f1, 0x6ac(r30)
/* 8068B8EC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8068B8F0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8068B8F4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8068B8F8  FC 00 02 10 */	fabs f0, f0
/* 8068B8FC  FC 20 00 18 */	frsp f1, f0
/* 8068B900  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 8068B904  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8068B908  40 80 00 18 */	bge lbl_8068B920
/* 8068B90C  38 7E 0B E8 */	addi r3, r30, 0xbe8
/* 8068B910  38 81 00 14 */	addi r4, r1, 0x14
/* 8068B914  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8068B918  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 8068B91C  4B 99 17 F1 */	bl fopAcM_effHamonSet__FPUlPC4cXyzff
lbl_8068B920:
/* 8068B920  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8068B924  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8068B928  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8068B92C  7C 08 03 A6 */	mtlr r0
/* 8068B930  38 21 00 40 */	addi r1, r1, 0x40
/* 8068B934  4E 80 00 20 */	blr 
