lbl_809A5424:
/* 809A5424  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 809A5428  7C 08 02 A6 */	mflr r0
/* 809A542C  90 01 00 54 */	stw r0, 0x54(r1)
/* 809A5430  39 61 00 50 */	addi r11, r1, 0x50
/* 809A5434  4B 9B CD 9D */	bl _savegpr_26
/* 809A5438  7C 9C 23 78 */	mr r28, r4
/* 809A543C  3C 80 80 9A */	lis r4, lit_1109@ha /* 0x809A6A10@ha */
/* 809A5440  3B C4 6A 10 */	addi r30, r4, lit_1109@l /* 0x809A6A10@l */
/* 809A5444  3C 80 80 9A */	lis r4, lit_3748@ha /* 0x809A68A4@ha */
/* 809A5448  3B E4 68 A4 */	addi r31, r4, lit_3748@l /* 0x809A68A4@l */
/* 809A544C  7C 7A 1B 78 */	mr r26, r3
/* 809A5450  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809A5454  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809A5458  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 809A545C  A8 7C 00 6C */	lha r3, 0x6c(r28)
/* 809A5460  88 1C 00 77 */	lbz r0, 0x77(r28)
/* 809A5464  7C 03 02 14 */	add r0, r3, r0
/* 809A5468  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 809A546C  40 82 01 54 */	bne lbl_809A55C0
/* 809A5470  C0 5C 00 10 */	lfs f2, 0x10(r28)
/* 809A5474  C0 3F 00 00 */	lfs f1, 0(r31)
/* 809A5478  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 809A547C  EC 21 00 2A */	fadds f1, f1, f0
/* 809A5480  C0 1C 00 08 */	lfs f0, 8(r28)
/* 809A5484  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809A5488  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 809A548C  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 809A5490  38 7E 00 CC */	addi r3, r30, 0xcc
/* 809A5494  38 81 00 14 */	addi r4, r1, 0x14
/* 809A5498  4B 8C 28 91 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 809A549C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809A54A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809A54A4  3B 63 0F 38 */	addi r27, r3, 0xf38
/* 809A54A8  7F 63 DB 78 */	mr r3, r27
/* 809A54AC  38 9E 00 CC */	addi r4, r30, 0xcc
/* 809A54B0  4B 6C EF F1 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 809A54B4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 809A54B8  FC 20 08 18 */	frsp f1, f1
/* 809A54BC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 809A54C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809A54C4  40 81 00 14 */	ble lbl_809A54D8
/* 809A54C8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 809A54CC  EC 00 08 2A */	fadds f0, f0, f1
/* 809A54D0  D0 1C 00 68 */	stfs f0, 0x68(r28)
/* 809A54D4  48 00 00 0C */	b lbl_809A54E0
lbl_809A54D8:
/* 809A54D8  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 809A54DC  D0 1C 00 68 */	stfs f0, 0x68(r28)
lbl_809A54E0:
/* 809A54E0  88 1C 00 7A */	lbz r0, 0x7a(r28)
/* 809A54E4  28 00 00 00 */	cmplwi r0, 0
/* 809A54E8  40 82 00 D8 */	bne lbl_809A55C0
/* 809A54EC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 809A54F0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 809A54F4  80 63 00 00 */	lwz r3, 0(r3)
/* 809A54F8  A8 9C 00 46 */	lha r4, 0x46(r28)
/* 809A54FC  4B 66 6E E1 */	bl mDoMtx_YrotS__FPA4_fs
/* 809A5500  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 809A5504  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809A5508  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809A550C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 809A5510  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 809A5514  38 61 00 14 */	addi r3, r1, 0x14
/* 809A5518  38 81 00 08 */	addi r4, r1, 8
/* 809A551C  4B 8C B9 D1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 809A5520  38 61 00 08 */	addi r3, r1, 8
/* 809A5524  38 9C 00 08 */	addi r4, r28, 8
/* 809A5528  7C 65 1B 78 */	mr r5, r3
/* 809A552C  4B 9A 1B 65 */	bl PSVECAdd
/* 809A5530  38 7E 00 50 */	addi r3, r30, 0x50
/* 809A5534  38 9C 00 08 */	addi r4, r28, 8
/* 809A5538  38 A1 00 08 */	addi r5, r1, 8
/* 809A553C  7F 46 D3 78 */	mr r6, r26
/* 809A5540  4B 6D 28 25 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 809A5544  7F 63 DB 78 */	mr r3, r27
/* 809A5548  38 9E 00 50 */	addi r4, r30, 0x50
/* 809A554C  4B 6C EE 69 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 809A5550  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809A5554  41 82 00 6C */	beq lbl_809A55C0
/* 809A5558  38 00 00 32 */	li r0, 0x32
/* 809A555C  98 1C 00 7A */	stb r0, 0x7a(r28)
/* 809A5560  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 809A5564  4B 8C 24 29 */	bl cM_rndFX__Ff
/* 809A5568  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 809A556C  EC 00 08 2A */	fadds f0, f0, f1
/* 809A5570  FC 00 00 1E */	fctiwz f0, f0
/* 809A5574  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 809A5578  80 61 00 24 */	lwz r3, 0x24(r1)
/* 809A557C  A8 1C 00 4C */	lha r0, 0x4c(r28)
/* 809A5580  7C 00 1A 14 */	add r0, r0, r3
/* 809A5584  B0 1C 00 4C */	sth r0, 0x4c(r28)
/* 809A5588  38 00 00 01 */	li r0, 1
/* 809A558C  98 1C 00 75 */	stb r0, 0x75(r28)
/* 809A5590  C0 3F 00 08 */	lfs f1, 8(r31)
/* 809A5594  4B 8C 23 C1 */	bl cM_rndF__Ff
/* 809A5598  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 809A559C  EC 00 08 2A */	fadds f0, f0, f1
/* 809A55A0  FC 00 00 1E */	fctiwz f0, f0
/* 809A55A4  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 809A55A8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 809A55AC  98 1C 00 78 */	stb r0, 0x78(r28)
/* 809A55B0  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 809A55B4  D0 1C 00 50 */	stfs f0, 0x50(r28)
/* 809A55B8  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 809A55BC  D0 1C 00 54 */	stfs f0, 0x54(r28)
lbl_809A55C0:
/* 809A55C0  88 1C 00 75 */	lbz r0, 0x75(r28)
/* 809A55C4  7C 00 07 75 */	extsb. r0, r0
/* 809A55C8  40 82 01 A4 */	bne lbl_809A576C
/* 809A55CC  88 1C 00 78 */	lbz r0, 0x78(r28)
/* 809A55D0  28 00 00 00 */	cmplwi r0, 0
/* 809A55D4  40 82 01 E0 */	bne lbl_809A57B4
/* 809A55D8  88 1C 00 77 */	lbz r0, 0x77(r28)
/* 809A55DC  28 00 00 00 */	cmplwi r0, 0
/* 809A55E0  40 82 00 58 */	bne lbl_809A5638
/* 809A55E4  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 809A55E8  4B 8C 23 A5 */	bl cM_rndFX__Ff
/* 809A55EC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 809A55F0  EC 20 08 2A */	fadds f1, f0, f1
/* 809A55F4  C0 1C 00 08 */	lfs f0, 8(r28)
/* 809A55F8  EC 01 00 28 */	fsubs f0, f1, f0
/* 809A55FC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809A5600  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 809A5604  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 809A5608  EC 21 00 2A */	fadds f1, f1, f0
/* 809A560C  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 809A5610  EC 01 00 28 */	fsubs f0, f1, f0
/* 809A5614  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809A5618  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 809A561C  4B 8C 23 71 */	bl cM_rndFX__Ff
/* 809A5620  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 809A5624  EC 20 08 2A */	fadds f1, f0, f1
/* 809A5628  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 809A562C  EC 01 00 28 */	fsubs f0, f1, f0
/* 809A5630  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 809A5634  48 00 00 60 */	b lbl_809A5694
lbl_809A5638:
/* 809A5638  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 809A563C  4B 8C 23 51 */	bl cM_rndFX__Ff
/* 809A5640  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 809A5644  EC 20 08 2A */	fadds f1, f0, f1
/* 809A5648  C0 1C 00 08 */	lfs f0, 8(r28)
/* 809A564C  EC 01 00 28 */	fsubs f0, f1, f0
/* 809A5650  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809A5654  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 809A5658  4B 8C 22 FD */	bl cM_rndF__Ff
/* 809A565C  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 809A5660  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 809A5664  EC 02 00 2A */	fadds f0, f2, f0
/* 809A5668  EC 20 08 2A */	fadds f1, f0, f1
/* 809A566C  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 809A5670  EC 01 00 28 */	fsubs f0, f1, f0
/* 809A5674  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809A5678  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 809A567C  4B 8C 23 11 */	bl cM_rndFX__Ff
/* 809A5680  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 809A5684  EC 20 08 2A */	fadds f1, f0, f1
/* 809A5688  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 809A568C  EC 01 00 28 */	fsubs f0, f1, f0
/* 809A5690  D0 01 00 1C */	stfs f0, 0x1c(r1)
lbl_809A5694:
/* 809A5694  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 809A5698  EC 20 00 32 */	fmuls f1, f0, f0
/* 809A569C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 809A56A0  EC 00 00 32 */	fmuls f0, f0, f0
/* 809A56A4  EC 41 00 2A */	fadds f2, f1, f0
/* 809A56A8  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 809A56AC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 809A56B0  40 81 00 0C */	ble lbl_809A56BC
/* 809A56B4  FC 00 10 34 */	frsqrte f0, f2
/* 809A56B8  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_809A56BC:
/* 809A56BC  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 809A56C0  4B 8C 1F B5 */	bl cM_atan2s__Fff
/* 809A56C4  7C 03 00 D0 */	neg r0, r3
/* 809A56C8  B0 1C 00 4A */	sth r0, 0x4a(r28)
/* 809A56CC  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 809A56D0  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 809A56D4  4B 8C 1F A1 */	bl cM_atan2s__Fff
/* 809A56D8  A8 1C 00 46 */	lha r0, 0x46(r28)
/* 809A56DC  7C 00 18 50 */	subf r0, r0, r3
/* 809A56E0  7C 1A 07 34 */	extsh r26, r0
/* 809A56E4  2C 1A 30 00 */	cmpwi r26, 0x3000
/* 809A56E8  40 81 00 0C */	ble lbl_809A56F4
/* 809A56EC  3B 40 30 00 */	li r26, 0x3000
/* 809A56F0  48 00 00 10 */	b lbl_809A5700
lbl_809A56F4:
/* 809A56F4  2C 1A D0 00 */	cmpwi r26, -12288
/* 809A56F8  40 80 00 08 */	bge lbl_809A5700
/* 809A56FC  3B 40 D0 00 */	li r26, -12288
lbl_809A5700:
/* 809A5700  C0 3F 00 04 */	lfs f1, 4(r31)
/* 809A5704  4B 8C 22 51 */	bl cM_rndF__Ff
/* 809A5708  C0 1F 00 04 */	lfs f0, 4(r31)
/* 809A570C  EC 00 08 2A */	fadds f0, f0, f1
/* 809A5710  FC 00 00 1E */	fctiwz f0, f0
/* 809A5714  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 809A5718  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 809A571C  B0 1C 00 72 */	sth r0, 0x72(r28)
/* 809A5720  A8 1C 00 4C */	lha r0, 0x4c(r28)
/* 809A5724  7C 00 D2 14 */	add r0, r0, r26
/* 809A5728  B0 1C 00 4C */	sth r0, 0x4c(r28)
/* 809A572C  38 00 00 01 */	li r0, 1
/* 809A5730  98 1C 00 75 */	stb r0, 0x75(r28)
/* 809A5734  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 809A5738  4B 8C 22 1D */	bl cM_rndF__Ff
/* 809A573C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 809A5740  EC 00 08 2A */	fadds f0, f0, f1
/* 809A5744  FC 00 00 1E */	fctiwz f0, f0
/* 809A5748  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 809A574C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809A5750  98 1C 00 78 */	stb r0, 0x78(r28)
/* 809A5754  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 809A5758  4B 8C 21 FD */	bl cM_rndF__Ff
/* 809A575C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 809A5760  EC 00 08 2A */	fadds f0, f0, f1
/* 809A5764  D0 1C 00 54 */	stfs f0, 0x54(r28)
/* 809A5768  48 00 00 4C */	b lbl_809A57B4
lbl_809A576C:
/* 809A576C  88 1C 00 78 */	lbz r0, 0x78(r28)
/* 809A5770  28 00 00 00 */	cmplwi r0, 0
/* 809A5774  40 82 00 40 */	bne lbl_809A57B4
/* 809A5778  38 00 00 00 */	li r0, 0
/* 809A577C  98 1C 00 75 */	stb r0, 0x75(r28)
/* 809A5780  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 809A5784  4B 8C 21 D1 */	bl cM_rndF__Ff
/* 809A5788  C0 1F 00 04 */	lfs f0, 4(r31)
/* 809A578C  EC 00 08 2A */	fadds f0, f0, f1
/* 809A5790  FC 00 00 1E */	fctiwz f0, f0
/* 809A5794  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 809A5798  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 809A579C  98 1C 00 78 */	stb r0, 0x78(r28)
/* 809A57A0  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 809A57A4  4B 8C 21 B1 */	bl cM_rndF__Ff
/* 809A57A8  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 809A57AC  EC 00 08 2A */	fadds f0, f0, f1
/* 809A57B0  D0 1C 00 54 */	stfs f0, 0x54(r28)
lbl_809A57B4:
/* 809A57B4  38 7C 00 46 */	addi r3, r28, 0x46
/* 809A57B8  A8 9C 00 4C */	lha r4, 0x4c(r28)
/* 809A57BC  38 A0 00 02 */	li r5, 2
/* 809A57C0  38 C0 08 00 */	li r6, 0x800
/* 809A57C4  4B 8C AE 45 */	bl cLib_addCalcAngleS2__FPssss
/* 809A57C8  38 7C 00 44 */	addi r3, r28, 0x44
/* 809A57CC  A8 9C 00 4A */	lha r4, 0x4a(r28)
/* 809A57D0  38 A0 00 02 */	li r5, 2
/* 809A57D4  38 C0 08 00 */	li r6, 0x800
/* 809A57D8  4B 8C AE 31 */	bl cLib_addCalcAngleS2__FPssss
/* 809A57DC  38 7C 00 2C */	addi r3, r28, 0x2c
/* 809A57E0  C0 3C 00 38 */	lfs f1, 0x38(r28)
/* 809A57E4  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 809A57E8  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 809A57EC  4B 8C A2 51 */	bl cLib_addCalc2__FPffff
/* 809A57F0  38 7C 00 30 */	addi r3, r28, 0x30
/* 809A57F4  C0 3C 00 3C */	lfs f1, 0x3c(r28)
/* 809A57F8  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 809A57FC  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 809A5800  4B 8C A2 3D */	bl cLib_addCalc2__FPffff
/* 809A5804  38 7C 00 34 */	addi r3, r28, 0x34
/* 809A5808  C0 3C 00 40 */	lfs f1, 0x40(r28)
/* 809A580C  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 809A5810  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 809A5814  4B 8C A2 29 */	bl cLib_addCalc2__FPffff
/* 809A5818  38 7C 00 50 */	addi r3, r28, 0x50
/* 809A581C  C0 3C 00 54 */	lfs f1, 0x54(r28)
/* 809A5820  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 809A5824  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 809A5828  4B 8C A2 15 */	bl cLib_addCalc2__FPffff
/* 809A582C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 809A5830  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809A5834  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809A5838  C0 1C 00 50 */	lfs f0, 0x50(r28)
/* 809A583C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 809A5840  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 809A5844  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 809A5848  80 63 00 00 */	lwz r3, 0(r3)
/* 809A584C  A8 9C 00 46 */	lha r4, 0x46(r28)
/* 809A5850  4B 66 6B 8D */	bl mDoMtx_YrotS__FPA4_fs
/* 809A5854  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 809A5858  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 809A585C  80 63 00 00 */	lwz r3, 0(r3)
/* 809A5860  A8 9C 00 44 */	lha r4, 0x44(r28)
/* 809A5864  4B 66 6B 39 */	bl mDoMtx_XrotM__FPA4_fs
/* 809A5868  38 61 00 14 */	addi r3, r1, 0x14
/* 809A586C  38 81 00 08 */	addi r4, r1, 8
/* 809A5870  4B 8C B6 7D */	bl MtxPosition__FP4cXyzP4cXyz
/* 809A5874  38 7C 00 08 */	addi r3, r28, 8
/* 809A5878  38 81 00 08 */	addi r4, r1, 8
/* 809A587C  7C 65 1B 78 */	mr r5, r3
/* 809A5880  4B 9A 18 11 */	bl PSVECAdd
/* 809A5884  C0 5C 00 0C */	lfs f2, 0xc(r28)
/* 809A5888  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 809A588C  C0 1C 00 68 */	lfs f0, 0x68(r28)
/* 809A5890  EC 01 00 2A */	fadds f0, f1, f0
/* 809A5894  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 809A5898  40 80 00 08 */	bge lbl_809A58A0
/* 809A589C  D0 1C 00 0C */	stfs f0, 0xc(r28)
lbl_809A58A0:
/* 809A58A0  38 00 00 00 */	li r0, 0
/* 809A58A4  B0 1C 00 70 */	sth r0, 0x70(r28)
/* 809A58A8  88 1C 00 79 */	lbz r0, 0x79(r28)
/* 809A58AC  28 00 00 00 */	cmplwi r0, 0
/* 809A58B0  40 82 00 D8 */	bne lbl_809A5988
/* 809A58B4  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 809A58B8  4B 8C 20 D5 */	bl cM_rndFX__Ff
/* 809A58BC  D0 3C 00 38 */	stfs f1, 0x38(r28)
/* 809A58C0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 809A58C4  4B 8C 20 91 */	bl cM_rndF__Ff
/* 809A58C8  D0 3C 00 3C */	stfs f1, 0x3c(r28)
/* 809A58CC  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 809A58D0  4B 8C 20 BD */	bl cM_rndFX__Ff
/* 809A58D4  D0 3C 00 40 */	stfs f1, 0x40(r28)
/* 809A58D8  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 809A58DC  4B 8C 20 79 */	bl cM_rndF__Ff
/* 809A58E0  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 809A58E4  EC 02 08 2A */	fadds f0, f2, f1
/* 809A58E8  FC 00 00 1E */	fctiwz f0, f0
/* 809A58EC  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 809A58F0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 809A58F4  98 1C 00 79 */	stb r0, 0x79(r28)
/* 809A58F8  FC 20 10 90 */	fmr f1, f2
/* 809A58FC  4B 8C 20 59 */	bl cM_rndF__Ff
/* 809A5900  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 809A5904  EC 00 08 2A */	fadds f0, f0, f1
/* 809A5908  FC 00 00 1E */	fctiwz f0, f0
/* 809A590C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 809A5910  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809A5914  B0 1C 00 72 */	sth r0, 0x72(r28)
/* 809A5918  88 1C 00 77 */	lbz r0, 0x77(r28)
/* 809A591C  28 00 00 00 */	cmplwi r0, 0
/* 809A5920  40 82 00 68 */	bne lbl_809A5988
/* 809A5924  A8 1C 00 6C */	lha r0, 0x6c(r28)
/* 809A5928  2C 00 07 D0 */	cmpwi r0, 0x7d0
/* 809A592C  40 81 00 5C */	ble lbl_809A5988
/* 809A5930  80 7E 00 40 */	lwz r3, 0x40(r30)
/* 809A5934  28 03 00 00 */	cmplwi r3, 0
/* 809A5938  41 82 00 50 */	beq lbl_809A5988
/* 809A593C  C0 43 06 B0 */	lfs f2, 0x6b0(r3)
/* 809A5940  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 809A5944  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 809A5948  EC 01 00 2A */	fadds f0, f1, f0
/* 809A594C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 809A5950  40 80 00 38 */	bge lbl_809A5988
/* 809A5954  A8 83 0F 7C */	lha r4, 0xf7c(r3)
/* 809A5958  7C 80 07 35 */	extsh. r0, r4
/* 809A595C  41 82 00 18 */	beq lbl_809A5974
/* 809A5960  7C 80 07 35 */	extsh. r0, r4
/* 809A5964  41 82 00 24 */	beq lbl_809A5988
/* 809A5968  A8 03 13 B4 */	lha r0, 0x13b4(r3)
/* 809A596C  2C 00 00 07 */	cmpwi r0, 7
/* 809A5970  40 82 00 18 */	bne lbl_809A5988
lbl_809A5974:
/* 809A5974  38 00 00 02 */	li r0, 2
/* 809A5978  98 1C 00 74 */	stb r0, 0x74(r28)
/* 809A597C  38 00 00 00 */	li r0, 0
/* 809A5980  98 1C 00 75 */	stb r0, 0x75(r28)
/* 809A5984  B0 1C 00 6C */	sth r0, 0x6c(r28)
lbl_809A5988:
/* 809A5988  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 809A598C  A8 1C 00 6C */	lha r0, 0x6c(r28)
/* 809A5990  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 809A5994  C8 3F 00 68 */	lfd f1, 0x68(r31)
/* 809A5998  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809A599C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 809A59A0  3C 00 43 30 */	lis r0, 0x4330
/* 809A59A4  90 01 00 28 */	stw r0, 0x28(r1)
/* 809A59A8  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 809A59AC  EC 20 08 28 */	fsubs f1, f0, f1
/* 809A59B0  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 809A59B4  EC 01 00 28 */	fsubs f0, f1, f0
/* 809A59B8  EC 02 00 32 */	fmuls f0, f2, f0
/* 809A59BC  EC 02 00 2A */	fadds f0, f2, f0
/* 809A59C0  D0 1C 00 5C */	stfs f0, 0x5c(r28)
/* 809A59C4  39 61 00 50 */	addi r11, r1, 0x50
/* 809A59C8  4B 9B C8 55 */	bl _restgpr_26
/* 809A59CC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 809A59D0  7C 08 03 A6 */	mtlr r0
/* 809A59D4  38 21 00 50 */	addi r1, r1, 0x50
/* 809A59D8  4E 80 00 20 */	blr 
