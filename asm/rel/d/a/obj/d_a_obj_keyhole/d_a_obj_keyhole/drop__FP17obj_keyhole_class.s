lbl_80C42518:
/* 80C42518  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C4251C  7C 08 02 A6 */	mflr r0
/* 80C42520  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C42524  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80C42528  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80C4252C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C42530  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80C42534  7C 7E 1B 78 */	mr r30, r3
/* 80C42538  3C 60 80 C4 */	lis r3, lit_3655@ha /* 0x80C439E4@ha */
/* 80C4253C  3B E3 39 E4 */	addi r31, r3, lit_3655@l /* 0x80C439E4@l */
/* 80C42540  38 00 00 0A */	li r0, 0xa
/* 80C42544  B0 1E 06 18 */	sth r0, 0x618(r30)
/* 80C42548  38 7E 2A F4 */	addi r3, r30, 0x2af4
/* 80C4254C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80C42550  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 80C42554  4B 62 D5 2D */	bl cLib_addCalc0__FPfff
/* 80C42558  38 7E 2A F8 */	addi r3, r30, 0x2af8
/* 80C4255C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80C42560  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 80C42564  4B 62 D5 1D */	bl cLib_addCalc0__FPfff
/* 80C42568  88 9E 05 84 */	lbz r4, 0x584(r30)
/* 80C4256C  28 04 00 00 */	cmplwi r4, 0
/* 80C42570  40 82 00 0C */	bne lbl_80C4257C
/* 80C42574  C3 FF 00 04 */	lfs f31, 4(r31)
/* 80C42578  48 00 00 18 */	b lbl_80C42590
lbl_80C4257C:
/* 80C4257C  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80C42580  3C 60 80 C4 */	lis r3, l_HIO@ha /* 0x80C43CF4@ha */
/* 80C42584  38 63 3C F4 */	addi r3, r3, l_HIO@l /* 0x80C43CF4@l */
/* 80C42588  C0 03 00 08 */	lfs f0, 8(r3)
/* 80C4258C  EF E1 00 32 */	fmuls f31, f1, f0
lbl_80C42590:
/* 80C42590  A8 1E 06 1E */	lha r0, 0x61e(r30)
/* 80C42594  2C 00 00 01 */	cmpwi r0, 1
/* 80C42598  41 82 01 84 */	beq lbl_80C4271C
/* 80C4259C  40 80 01 B4 */	bge lbl_80C42750
/* 80C425A0  2C 00 00 00 */	cmpwi r0, 0
/* 80C425A4  40 80 00 08 */	bge lbl_80C425AC
/* 80C425A8  48 00 01 A8 */	b lbl_80C42750
lbl_80C425AC:
/* 80C425AC  28 04 00 00 */	cmplwi r4, 0
/* 80C425B0  40 82 00 0C */	bne lbl_80C425BC
/* 80C425B4  C3 FF 00 80 */	lfs f31, 0x80(r31)
/* 80C425B8  48 00 00 18 */	b lbl_80C425D0
lbl_80C425BC:
/* 80C425BC  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80C425C0  3C 60 80 C4 */	lis r3, l_HIO@ha /* 0x80C43CF4@ha */
/* 80C425C4  38 63 3C F4 */	addi r3, r3, l_HIO@l /* 0x80C43CF4@l */
/* 80C425C8  C0 03 00 08 */	lfs f0, 8(r3)
/* 80C425CC  EF E1 00 32 */	fmuls f31, f1, f0
lbl_80C425D0:
/* 80C425D0  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80C425D4  C0 1E 2A E8 */	lfs f0, 0x2ae8(r30)
/* 80C425D8  EC 00 F8 2A */	fadds f0, f0, f31
/* 80C425DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C425E0  4C 40 13 82 */	cror 2, 0, 2
/* 80C425E4  40 82 01 6C */	bne lbl_80C42750
/* 80C425E8  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80C425EC  38 00 00 01 */	li r0, 1
/* 80C425F0  B0 1E 06 1E */	sth r0, 0x61e(r30)
/* 80C425F4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80C425F8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C425FC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80C42600  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C42604  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80C42608  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C4260C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C42610  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C42614  38 80 00 04 */	li r4, 4
/* 80C42618  38 A0 00 1F */	li r5, 0x1f
/* 80C4261C  38 C1 00 0C */	addi r6, r1, 0xc
/* 80C42620  4B 42 D4 05 */	bl StartShock__12dVibration_cFii4cXyz
/* 80C42624  88 1E 05 84 */	lbz r0, 0x584(r30)
/* 80C42628  28 00 00 00 */	cmplwi r0, 0
/* 80C4262C  40 82 00 38 */	bne lbl_80C42664
/* 80C42630  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800D8@ha */
/* 80C42634  38 03 00 D8 */	addi r0, r3, 0x00D8 /* 0x000800D8@l */
/* 80C42638  90 01 00 08 */	stw r0, 8(r1)
/* 80C4263C  38 7E 05 88 */	addi r3, r30, 0x588
/* 80C42640  38 81 00 08 */	addi r4, r1, 8
/* 80C42644  38 A0 00 00 */	li r5, 0
/* 80C42648  38 C0 FF FF */	li r6, -1
/* 80C4264C  81 9E 05 88 */	lwz r12, 0x588(r30)
/* 80C42650  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80C42654  7D 89 03 A6 */	mtctr r12
/* 80C42658  4E 80 04 21 */	bctrl 
/* 80C4265C  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80C42660  48 00 00 08 */	b lbl_80C42668
lbl_80C42664:
/* 80C42664  C0 3F 00 74 */	lfs f1, 0x74(r31)
lbl_80C42668:
/* 80C42668  38 7E 2C 9C */	addi r3, r30, 0x2c9c
/* 80C4266C  38 9E 2C A0 */	addi r4, r30, 0x2ca0
/* 80C42670  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C42674  38 C0 00 00 */	li r6, 0
/* 80C42678  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80C4267C  39 00 00 01 */	li r8, 1
/* 80C42680  4B 3D A9 A1 */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 80C42684  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80C42688  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80C4268C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C42690  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80C42694  4B 3C 9D 49 */	bl mDoMtx_YrotS__FPA4_fs
/* 80C42698  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80C4269C  4B 62 52 B9 */	bl cM_rndF__Ff
/* 80C426A0  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80C426A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C426A8  40 80 00 0C */	bge lbl_80C426B4
/* 80C426AC  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80C426B0  48 00 00 08 */	b lbl_80C426B8
lbl_80C426B4:
/* 80C426B4  C0 1F 00 6C */	lfs f0, 0x6c(r31)
lbl_80C426B8:
/* 80C426B8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C426BC  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80C426C0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C426C4  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80C426C8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C426CC  38 61 00 18 */	addi r3, r1, 0x18
/* 80C426D0  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 80C426D4  4B 62 E8 19 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80C426D8  38 00 00 0A */	li r0, 0xa
/* 80C426DC  B0 1E 06 20 */	sth r0, 0x620(r30)
/* 80C426E0  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80C426E4  D0 1E 2A E4 */	stfs f0, 0x2ae4(r30)
/* 80C426E8  88 1E 05 84 */	lbz r0, 0x584(r30)
/* 80C426EC  28 00 00 00 */	cmplwi r0, 0
/* 80C426F0  41 82 00 60 */	beq lbl_80C42750
/* 80C426F4  C0 1E 04 F8 */	lfs f0, 0x4f8(r30)
/* 80C426F8  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80C426FC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C42700  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80C42704  C0 1E 05 00 */	lfs f0, 0x500(r30)
/* 80C42708  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C4270C  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80C42710  38 00 00 01 */	li r0, 1
/* 80C42714  98 1E 2C A6 */	stb r0, 0x2ca6(r30)
/* 80C42718  48 00 00 38 */	b lbl_80C42750
lbl_80C4271C:
/* 80C4271C  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80C42720  38 80 00 00 */	li r4, 0
/* 80C42724  38 A0 00 01 */	li r5, 1
/* 80C42728  38 C0 04 00 */	li r6, 0x400
/* 80C4272C  4B 62 DE DD */	bl cLib_addCalcAngleS2__FPssss
/* 80C42730  A8 7E 2A EC */	lha r3, 0x2aec(r30)
/* 80C42734  38 03 17 B8 */	addi r0, r3, 0x17b8
/* 80C42738  B0 1E 2A EC */	sth r0, 0x2aec(r30)
/* 80C4273C  A8 1E 06 20 */	lha r0, 0x620(r30)
/* 80C42740  2C 00 00 01 */	cmpwi r0, 1
/* 80C42744  40 82 00 0C */	bne lbl_80C42750
/* 80C42748  38 00 00 03 */	li r0, 3
/* 80C4274C  98 1E 2C A4 */	stb r0, 0x2ca4(r30)
lbl_80C42750:
/* 80C42750  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C42754  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 80C42758  7C 65 1B 78 */	mr r5, r3
/* 80C4275C  4B 70 49 35 */	bl PSVECAdd
/* 80C42760  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80C42764  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80C42768  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C4276C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80C42770  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80C42774  C0 1E 2A E8 */	lfs f0, 0x2ae8(r30)
/* 80C42778  EC 00 F8 2A */	fadds f0, f0, f31
/* 80C4277C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C42780  4C 40 13 82 */	cror 2, 0, 2
/* 80C42784  40 82 00 2C */	bne lbl_80C427B0
/* 80C42788  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80C4278C  C0 1E 04 F8 */	lfs f0, 0x4f8(r30)
/* 80C42790  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80C42794  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C42798  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80C4279C  C0 1E 05 00 */	lfs f0, 0x500(r30)
/* 80C427A0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C427A4  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80C427A8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80C427AC  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_80C427B0:
/* 80C427B0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80C427B4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80C427B8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C427BC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80C427C0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C427C4  7C 08 03 A6 */	mtlr r0
/* 80C427C8  38 21 00 40 */	addi r1, r1, 0x40
/* 80C427CC  4E 80 00 20 */	blr 
