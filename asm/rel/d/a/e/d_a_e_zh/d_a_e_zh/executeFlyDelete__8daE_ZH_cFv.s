lbl_8082D154:
/* 8082D154  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8082D158  7C 08 02 A6 */	mflr r0
/* 8082D15C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8082D160  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8082D164  93 C1 00 08 */	stw r30, 8(r1)
/* 8082D168  7C 7E 1B 78 */	mr r30, r3
/* 8082D16C  3C 60 80 83 */	lis r3, lit_3778@ha /* 0x8082F208@ha */
/* 8082D170  3B E3 F2 08 */	addi r31, r3, lit_3778@l /* 0x8082F208@l */
/* 8082D174  80 1E 07 84 */	lwz r0, 0x784(r30)
/* 8082D178  2C 00 00 01 */	cmpwi r0, 1
/* 8082D17C  41 82 00 B0 */	beq lbl_8082D22C
/* 8082D180  40 80 01 58 */	bge lbl_8082D2D8
/* 8082D184  2C 00 00 00 */	cmpwi r0, 0
/* 8082D188  40 80 00 08 */	bge lbl_8082D190
/* 8082D18C  48 00 01 4C */	b lbl_8082D2D8
lbl_8082D190:
/* 8082D190  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 8082D194  54 00 00 3E */	slwi r0, r0, 0
/* 8082D198  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 8082D19C  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 8082D1A0  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8082D1A4  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 8082D1A8  38 00 00 00 */	li r0, 0
/* 8082D1AC  98 1E 05 46 */	stb r0, 0x546(r30)
/* 8082D1B0  88 9E 07 A9 */	lbz r4, 0x7a9(r30)
/* 8082D1B4  28 04 00 FF */	cmplwi r4, 0xff
/* 8082D1B8  41 82 00 38 */	beq lbl_8082D1F0
/* 8082D1BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8082D1C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8082D1C4  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 8082D1C8  7C 05 07 74 */	extsb r5, r0
/* 8082D1CC  4B 80 81 95 */	bl isSwitch__10dSv_info_cCFii
/* 8082D1D0  2C 03 00 00 */	cmpwi r3, 0
/* 8082D1D4  41 82 00 1C */	beq lbl_8082D1F0
/* 8082D1D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8082D1DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8082D1E0  88 9E 07 A9 */	lbz r4, 0x7a9(r30)
/* 8082D1E4  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 8082D1E8  7C 05 07 74 */	extsb r5, r0
/* 8082D1EC  4B 80 80 C5 */	bl offSwitch__10dSv_info_cFii
lbl_8082D1F0:
/* 8082D1F0  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8082D1F4  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 8082D1F8  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8082D1FC  80 1E 07 90 */	lwz r0, 0x790(r30)
/* 8082D200  2C 00 00 0D */	cmpwi r0, 0xd
/* 8082D204  41 82 00 1C */	beq lbl_8082D220
/* 8082D208  7F C3 F3 78 */	mr r3, r30
/* 8082D20C  38 80 00 0D */	li r4, 0xd
/* 8082D210  38 A0 00 02 */	li r5, 2
/* 8082D214  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8082D218  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8082D21C  4B FF C1 8D */	bl setBck__8daE_ZH_cFiUcff
lbl_8082D220:
/* 8082D220  38 00 00 01 */	li r0, 1
/* 8082D224  90 1E 07 84 */	stw r0, 0x784(r30)
/* 8082D228  48 00 00 B0 */	b lbl_8082D2D8
lbl_8082D22C:
/* 8082D22C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8082D230  4B 7F 0A ED */	bl roofCheck__11fopAcM_rc_cFPC4cXyz
/* 8082D234  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8082D238  41 82 00 A0 */	beq lbl_8082D2D8
/* 8082D23C  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 8082D240  C0 3F 01 48 */	lfs f1, 0x148(r31)
/* 8082D244  3C 80 80 45 */	lis r4, mRoofY__11fopAcM_rc_c@ha /* 0x80450CD4@ha */
/* 8082D248  C0 04 0C D4 */	lfs f0, mRoofY__11fopAcM_rc_c@l(r4)  /* 0x80450CD4@l */
/* 8082D24C  EC 21 00 2A */	fadds f1, f1, f0
/* 8082D250  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 8082D254  C0 7F 00 04 */	lfs f3, 4(r31)
/* 8082D258  4B A4 27 E5 */	bl cLib_addCalc2__FPffff
/* 8082D25C  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 8082D260  C0 3F 01 48 */	lfs f1, 0x148(r31)
/* 8082D264  3C 60 80 45 */	lis r3, mRoofY__11fopAcM_rc_c@ha /* 0x80450CD4@ha */
/* 8082D268  C0 03 0C D4 */	lfs f0, mRoofY__11fopAcM_rc_c@l(r3)  /* 0x80450CD4@l */
/* 8082D26C  EC 01 00 2A */	fadds f0, f1, f0
/* 8082D270  EC 02 00 28 */	fsubs f0, f2, f0
/* 8082D274  FC 00 02 10 */	fabs f0, f0
/* 8082D278  FC 20 00 18 */	frsp f1, f0
/* 8082D27C  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 8082D280  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8082D284  40 80 00 54 */	bge lbl_8082D2D8
/* 8082D288  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 8082D28C  54 00 00 3E */	slwi r0, r0, 0
/* 8082D290  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 8082D294  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 8082D298  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8082D29C  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 8082D2A0  38 00 00 00 */	li r0, 0
/* 8082D2A4  98 1E 05 46 */	stb r0, 0x546(r30)
/* 8082D2A8  88 1E 07 AB */	lbz r0, 0x7ab(r30)
/* 8082D2AC  28 00 00 00 */	cmplwi r0, 0
/* 8082D2B0  40 82 00 18 */	bne lbl_8082D2C8
/* 8082D2B4  7F C3 F3 78 */	mr r3, r30
/* 8082D2B8  38 80 00 01 */	li r4, 1
/* 8082D2BC  38 A0 00 00 */	li r5, 0
/* 8082D2C0  4B FF C1 95 */	bl setActionMode__8daE_ZH_cFii
/* 8082D2C4  48 00 00 14 */	b lbl_8082D2D8
lbl_8082D2C8:
/* 8082D2C8  7F C3 F3 78 */	mr r3, r30
/* 8082D2CC  38 80 00 02 */	li r4, 2
/* 8082D2D0  38 A0 00 00 */	li r5, 0
/* 8082D2D4  4B FF C1 81 */	bl setActionMode__8daE_ZH_cFii
lbl_8082D2D8:
/* 8082D2D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8082D2DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8082D2E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8082D2E4  7C 08 03 A6 */	mtlr r0
/* 8082D2E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8082D2EC  4E 80 00 20 */	blr 
