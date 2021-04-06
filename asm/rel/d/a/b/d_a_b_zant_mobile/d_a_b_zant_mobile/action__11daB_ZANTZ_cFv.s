lbl_8065127C:
/* 8065127C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80651280  7C 08 02 A6 */	mflr r0
/* 80651284  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80651288  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 8065128C  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 80651290  39 61 00 90 */	addi r11, r1, 0x90
/* 80651294  4B D1 0F 45 */	bl _savegpr_28
/* 80651298  7C 7F 1B 78 */	mr r31, r3
/* 8065129C  3C 60 80 65 */	lis r3, lit_3649@ha /* 0x8065273C@ha */
/* 806512A0  3B C3 27 3C */	addi r30, r3, lit_3649@l /* 0x8065273C@l */
/* 806512A4  88 1F 06 6C */	lbz r0, 0x66c(r31)
/* 806512A8  28 00 00 00 */	cmplwi r0, 0
/* 806512AC  40 82 01 04 */	bne lbl_806513B0
/* 806512B0  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806512B4  38 63 00 0C */	addi r3, r3, 0xc
/* 806512B8  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 806512BC  4B CD 71 71 */	bl checkPass__12J3DFrameCtrlFf
/* 806512C0  2C 03 00 00 */	cmpwi r3, 0
/* 806512C4  40 82 00 34 */	bne lbl_806512F8
/* 806512C8  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806512CC  38 63 00 0C */	addi r3, r3, 0xc
/* 806512D0  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 806512D4  4B CD 71 59 */	bl checkPass__12J3DFrameCtrlFf
/* 806512D8  2C 03 00 00 */	cmpwi r3, 0
/* 806512DC  40 82 00 1C */	bne lbl_806512F8
/* 806512E0  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806512E4  38 63 00 0C */	addi r3, r3, 0xc
/* 806512E8  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 806512EC  4B CD 71 41 */	bl checkPass__12J3DFrameCtrlFf
/* 806512F0  2C 03 00 00 */	cmpwi r3, 0
/* 806512F4  41 82 00 34 */	beq lbl_80651328
lbl_806512F8:
/* 806512F8  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 806512FC  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80651300  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80651304  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80651308  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 8065130C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80651310  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80651314  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80651318  38 80 00 01 */	li r4, 1
/* 8065131C  38 A0 00 1F */	li r5, 0x1f
/* 80651320  38 C1 00 50 */	addi r6, r1, 0x50
/* 80651324  4B A1 E7 01 */	bl StartShock__12dVibration_cFii4cXyz
lbl_80651328:
/* 80651328  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8065132C  38 63 00 0C */	addi r3, r3, 0xc
/* 80651330  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80651334  4B CD 70 F9 */	bl checkPass__12J3DFrameCtrlFf
/* 80651338  2C 03 00 00 */	cmpwi r3, 0
/* 8065133C  41 82 00 34 */	beq lbl_80651370
/* 80651340  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80651344  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80651348  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8065134C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80651350  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80651354  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80651358  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8065135C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80651360  38 80 00 03 */	li r4, 3
/* 80651364  38 A0 00 1F */	li r5, 0x1f
/* 80651368  38 C1 00 44 */	addi r6, r1, 0x44
/* 8065136C  4B A1 E6 B9 */	bl StartShock__12dVibration_cFii4cXyz
lbl_80651370:
/* 80651370  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80651374  38 80 00 01 */	li r4, 1
/* 80651378  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8065137C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80651380  40 82 00 18 */	bne lbl_80651398
/* 80651384  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80651388  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8065138C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80651390  41 82 00 08 */	beq lbl_80651398
/* 80651394  38 80 00 00 */	li r4, 0
lbl_80651398:
/* 80651398  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8065139C  41 82 01 30 */	beq lbl_806514CC
/* 806513A0  88 7F 06 6C */	lbz r3, 0x66c(r31)
/* 806513A4  38 03 00 01 */	addi r0, r3, 1
/* 806513A8  98 1F 06 6C */	stb r0, 0x66c(r31)
/* 806513AC  48 00 01 20 */	b lbl_806514CC
lbl_806513B0:
/* 806513B0  28 00 00 02 */	cmplwi r0, 2
/* 806513B4  40 82 01 18 */	bne lbl_806514CC
/* 806513B8  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806513BC  38 63 00 0C */	addi r3, r3, 0xc
/* 806513C0  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 806513C4  4B CD 70 69 */	bl checkPass__12J3DFrameCtrlFf
/* 806513C8  2C 03 00 00 */	cmpwi r3, 0
/* 806513CC  40 82 00 4C */	bne lbl_80651418
/* 806513D0  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806513D4  38 63 00 0C */	addi r3, r3, 0xc
/* 806513D8  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 806513DC  4B CD 70 51 */	bl checkPass__12J3DFrameCtrlFf
/* 806513E0  2C 03 00 00 */	cmpwi r3, 0
/* 806513E4  40 82 00 34 */	bne lbl_80651418
/* 806513E8  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806513EC  38 63 00 0C */	addi r3, r3, 0xc
/* 806513F0  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 806513F4  4B CD 70 39 */	bl checkPass__12J3DFrameCtrlFf
/* 806513F8  2C 03 00 00 */	cmpwi r3, 0
/* 806513FC  40 82 00 1C */	bne lbl_80651418
/* 80651400  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80651404  38 63 00 0C */	addi r3, r3, 0xc
/* 80651408  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 8065140C  4B CD 70 21 */	bl checkPass__12J3DFrameCtrlFf
/* 80651410  2C 03 00 00 */	cmpwi r3, 0
/* 80651414  41 82 00 34 */	beq lbl_80651448
lbl_80651418:
/* 80651418  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 8065141C  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80651420  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80651424  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80651428  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8065142C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80651430  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80651434  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80651438  38 80 00 01 */	li r4, 1
/* 8065143C  38 A0 00 1F */	li r5, 0x1f
/* 80651440  38 C1 00 38 */	addi r6, r1, 0x38
/* 80651444  4B A1 E5 E1 */	bl StartShock__12dVibration_cFii4cXyz
lbl_80651448:
/* 80651448  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8065144C  38 63 00 0C */	addi r3, r3, 0xc
/* 80651450  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 80651454  4B CD 6F D9 */	bl checkPass__12J3DFrameCtrlFf
/* 80651458  2C 03 00 00 */	cmpwi r3, 0
/* 8065145C  41 82 00 34 */	beq lbl_80651490
/* 80651460  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80651464  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80651468  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8065146C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80651470  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80651474  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80651478  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8065147C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80651480  38 80 00 03 */	li r4, 3
/* 80651484  38 A0 00 1F */	li r5, 0x1f
/* 80651488  38 C1 00 2C */	addi r6, r1, 0x2c
/* 8065148C  4B A1 E5 99 */	bl StartShock__12dVibration_cFii4cXyz
lbl_80651490:
/* 80651490  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80651494  38 80 00 01 */	li r4, 1
/* 80651498  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8065149C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806514A0  40 82 00 18 */	bne lbl_806514B8
/* 806514A4  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 806514A8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806514AC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806514B0  41 82 00 08 */	beq lbl_806514B8
/* 806514B4  38 80 00 00 */	li r4, 0
lbl_806514B8:
/* 806514B8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806514BC  41 82 00 10 */	beq lbl_806514CC
/* 806514C0  88 7F 06 6C */	lbz r3, 0x66c(r31)
/* 806514C4  38 03 00 01 */	addi r0, r3, 1
/* 806514C8  98 1F 06 6C */	stb r0, 0x66c(r31)
lbl_806514CC:
/* 806514CC  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 806514D0  C0 3F 06 64 */	lfs f1, 0x664(r31)
/* 806514D4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 806514D8  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 806514DC  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 806514E0  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 806514E4  88 1F 06 6D */	lbz r0, 0x66d(r31)
/* 806514E8  2C 00 00 02 */	cmpwi r0, 2
/* 806514EC  41 82 01 E0 */	beq lbl_806516CC
/* 806514F0  40 80 00 10 */	bge lbl_80651500
/* 806514F4  2C 00 00 00 */	cmpwi r0, 0
/* 806514F8  41 82 00 1C */	beq lbl_80651514
/* 806514FC  48 00 05 D8 */	b lbl_80651AD4
lbl_80651500:
/* 80651500  2C 00 00 06 */	cmpwi r0, 6
/* 80651504  40 80 05 D0 */	bge lbl_80651AD4
/* 80651508  2C 00 00 04 */	cmpwi r0, 4
/* 8065150C  40 80 03 A4 */	bge lbl_806518B0
/* 80651510  48 00 03 80 */	b lbl_80651890
lbl_80651514:
/* 80651514  38 7F 04 D4 */	addi r3, r31, 0x4d4
/* 80651518  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 8065151C  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80651520  EC 21 00 2A */	fadds f1, f1, f0
/* 80651524  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 80651528  C0 7E 00 48 */	lfs f3, 0x48(r30)
/* 8065152C  C0 9E 00 00 */	lfs f4, 0(r30)
/* 80651530  4B C1 E4 4D */	bl cLib_addCalc__FPfffff
/* 80651534  FF E0 08 90 */	fmr f31, f1
/* 80651538  FC 00 FA 10 */	fabs f0, f31
/* 8065153C  FC 20 00 18 */	frsp f1, f0
/* 80651540  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80651544  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80651548  40 80 00 4C */	bge lbl_80651594
/* 8065154C  38 7F 06 60 */	addi r3, r31, 0x660
/* 80651550  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80651554  C0 5E 00 6C */	lfs f2, 0x6c(r30)
/* 80651558  4B C1 F1 E9 */	bl cLib_chaseF__FPfff
/* 8065155C  C0 1F 06 60 */	lfs f0, 0x660(r31)
/* 80651560  FC 00 00 1E */	fctiwz f0, f0
/* 80651564  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 80651568  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 8065156C  7C 00 07 34 */	extsh r0, r0
/* 80651570  C8 3E 00 78 */	lfd f1, 0x78(r30)
/* 80651574  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80651578  90 01 00 74 */	stw r0, 0x74(r1)
/* 8065157C  3C 00 43 30 */	lis r0, 0x4330
/* 80651580  90 01 00 70 */	stw r0, 0x70(r1)
/* 80651584  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 80651588  EC 00 08 28 */	fsubs f0, f0, f1
/* 8065158C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80651590  D0 03 00 1C */	stfs f0, 0x1c(r3)
lbl_80651594:
/* 80651594  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80651598  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 8065159C  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 806515A0  EC 01 00 2A */	fadds f0, f1, f0
/* 806515A4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806515A8  40 81 00 B0 */	ble lbl_80651658
/* 806515AC  38 7F 06 64 */	addi r3, r31, 0x664
/* 806515B0  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 806515B4  C0 5E 00 70 */	lfs f2, 0x70(r30)
/* 806515B8  4B C1 F1 89 */	bl cLib_chaseF__FPfff
/* 806515BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806515C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806515C4  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 806515C8  38 00 00 FF */	li r0, 0xff
/* 806515CC  90 01 00 08 */	stw r0, 8(r1)
/* 806515D0  38 80 00 00 */	li r4, 0
/* 806515D4  90 81 00 0C */	stw r4, 0xc(r1)
/* 806515D8  38 00 FF FF */	li r0, -1
/* 806515DC  90 01 00 10 */	stw r0, 0x10(r1)
/* 806515E0  90 81 00 14 */	stw r4, 0x14(r1)
/* 806515E4  90 81 00 18 */	stw r4, 0x18(r1)
/* 806515E8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 806515EC  80 9F 0D 0C */	lwz r4, 0xd0c(r31)
/* 806515F0  38 A0 00 00 */	li r5, 0
/* 806515F4  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008906@ha */
/* 806515F8  38 C6 89 06 */	addi r6, r6, 0x8906 /* 0x00008906@l */
/* 806515FC  38 E1 00 5C */	addi r7, r1, 0x5c
/* 80651600  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80651604  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 80651608  39 40 00 00 */	li r10, 0
/* 8065160C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80651610  4B 9F BE BD */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80651614  90 7F 0D 0C */	stw r3, 0xd0c(r31)
/* 80651618  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070426@ha */
/* 8065161C  38 03 04 26 */	addi r0, r3, 0x0426 /* 0x00070426@l */
/* 80651620  90 01 00 28 */	stw r0, 0x28(r1)
/* 80651624  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80651628  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8065162C  80 63 00 00 */	lwz r3, 0(r3)
/* 80651630  38 81 00 28 */	addi r4, r1, 0x28
/* 80651634  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80651638  38 C0 00 00 */	li r6, 0
/* 8065163C  38 E0 00 00 */	li r7, 0
/* 80651640  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80651644  FC 40 08 90 */	fmr f2, f1
/* 80651648  C0 7E 00 04 */	lfs f3, 4(r30)
/* 8065164C  FC 80 18 90 */	fmr f4, f3
/* 80651650  39 00 00 00 */	li r8, 0
/* 80651654  4B C5 AE B9 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80651658:
/* 80651658  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 8065165C  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 80651660  40 82 04 74 */	bne lbl_80651AD4
/* 80651664  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80651668  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8065166C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80651670  38 80 00 1F */	li r4, 0x1f
/* 80651674  4B A1 E7 21 */	bl StopQuake__12dVibration_cFi
/* 80651678  88 7F 06 6D */	lbz r3, 0x66d(r31)
/* 8065167C  38 03 00 01 */	addi r0, r3, 1
/* 80651680  98 1F 06 6D */	stb r0, 0x66d(r31)
/* 80651684  3C 60 80 65 */	lis r3, d_a_b_zant_mobile__stringBase0@ha /* 0x806527D0@ha */
/* 80651688  38 63 27 D0 */	addi r3, r3, d_a_b_zant_mobile__stringBase0@l /* 0x806527D0@l */
/* 8065168C  38 80 00 44 */	li r4, 0x44
/* 80651690  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80651694  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80651698  3C A5 00 02 */	addis r5, r5, 2
/* 8065169C  38 C0 00 80 */	li r6, 0x80
/* 806516A0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806516A4  4B 9E AC 49 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806516A8  7C 64 1B 78 */	mr r4, r3
/* 806516AC  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806516B0  38 A0 00 02 */	li r5, 2
/* 806516B4  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 806516B8  FC 40 08 90 */	fmr f2, f1
/* 806516BC  FC 60 08 90 */	fmr f3, f1
/* 806516C0  C0 9E 00 04 */	lfs f4, 4(r30)
/* 806516C4  4B 9B F7 AD */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806516C8  48 00 04 0C */	b lbl_80651AD4
lbl_806516CC:
/* 806516CC  38 7F 04 D4 */	addi r3, r31, 0x4d4
/* 806516D0  C0 3F 04 AC */	lfs f1, 0x4ac(r31)
/* 806516D4  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 806516D8  C0 7E 00 48 */	lfs f3, 0x48(r30)
/* 806516DC  C0 9E 00 00 */	lfs f4, 0(r30)
/* 806516E0  4B C1 E2 9D */	bl cLib_addCalc__FPfffff
/* 806516E4  FF E0 08 90 */	fmr f31, f1
/* 806516E8  FC 00 FA 10 */	fabs f0, f31
/* 806516EC  FC 20 00 18 */	frsp f1, f0
/* 806516F0  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 806516F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806516F8  40 80 00 4C */	bge lbl_80651744
/* 806516FC  38 7F 06 60 */	addi r3, r31, 0x660
/* 80651700  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80651704  C0 5E 00 6C */	lfs f2, 0x6c(r30)
/* 80651708  4B C1 F0 39 */	bl cLib_chaseF__FPfff
/* 8065170C  C0 1F 06 60 */	lfs f0, 0x660(r31)
/* 80651710  FC 00 00 1E */	fctiwz f0, f0
/* 80651714  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 80651718  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8065171C  7C 00 07 34 */	extsh r0, r0
/* 80651720  C8 3E 00 78 */	lfd f1, 0x78(r30)
/* 80651724  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80651728  90 01 00 6C */	stw r0, 0x6c(r1)
/* 8065172C  3C 00 43 30 */	lis r0, 0x4330
/* 80651730  90 01 00 68 */	stw r0, 0x68(r1)
/* 80651734  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 80651738  EC 00 08 28 */	fsubs f0, f0, f1
/* 8065173C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80651740  D0 03 00 1C */	stfs f0, 0x1c(r3)
lbl_80651744:
/* 80651744  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80651748  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 8065174C  C0 3F 04 AC */	lfs f1, 0x4ac(r31)
/* 80651750  EC 00 08 2A */	fadds f0, f0, f1
/* 80651754  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80651758  40 81 00 C4 */	ble lbl_8065181C
/* 8065175C  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 80651760  EC 00 08 2A */	fadds f0, f0, f1
/* 80651764  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80651768  40 80 00 18 */	bge lbl_80651780
/* 8065176C  7F E3 FB 78 */	mr r3, r31
/* 80651770  4B FF F9 51 */	bl getGroundPos__11daB_ZANTZ_cFv
/* 80651774  38 7F 06 64 */	addi r3, r31, 0x664
/* 80651778  C0 5E 00 70 */	lfs f2, 0x70(r30)
/* 8065177C  4B C1 EF C5 */	bl cLib_chaseF__FPfff
lbl_80651780:
/* 80651780  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80651784  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80651788  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8065178C  38 00 00 FF */	li r0, 0xff
/* 80651790  90 01 00 08 */	stw r0, 8(r1)
/* 80651794  38 80 00 00 */	li r4, 0
/* 80651798  90 81 00 0C */	stw r4, 0xc(r1)
/* 8065179C  38 00 FF FF */	li r0, -1
/* 806517A0  90 01 00 10 */	stw r0, 0x10(r1)
/* 806517A4  90 81 00 14 */	stw r4, 0x14(r1)
/* 806517A8  90 81 00 18 */	stw r4, 0x18(r1)
/* 806517AC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 806517B0  80 9F 0D 0C */	lwz r4, 0xd0c(r31)
/* 806517B4  38 A0 00 00 */	li r5, 0
/* 806517B8  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008907@ha */
/* 806517BC  38 C6 89 07 */	addi r6, r6, 0x8907 /* 0x00008907@l */
/* 806517C0  38 E1 00 5C */	addi r7, r1, 0x5c
/* 806517C4  39 1F 01 0C */	addi r8, r31, 0x10c
/* 806517C8  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 806517CC  39 40 00 00 */	li r10, 0
/* 806517D0  C0 3E 00 00 */	lfs f1, 0(r30)
/* 806517D4  4B 9F BC F9 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806517D8  90 7F 0D 0C */	stw r3, 0xd0c(r31)
/* 806517DC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070426@ha */
/* 806517E0  38 03 04 26 */	addi r0, r3, 0x0426 /* 0x00070426@l */
/* 806517E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 806517E8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 806517EC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 806517F0  80 63 00 00 */	lwz r3, 0(r3)
/* 806517F4  38 81 00 24 */	addi r4, r1, 0x24
/* 806517F8  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 806517FC  38 C0 00 00 */	li r6, 0
/* 80651800  38 E0 00 00 */	li r7, 0
/* 80651804  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80651808  FC 40 08 90 */	fmr f2, f1
/* 8065180C  C0 7E 00 04 */	lfs f3, 4(r30)
/* 80651810  FC 80 18 90 */	fmr f4, f3
/* 80651814  39 00 00 00 */	li r8, 0
/* 80651818  4B C5 AC F5 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8065181C:
/* 8065181C  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80651820  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 80651824  40 82 02 B0 */	bne lbl_80651AD4
/* 80651828  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8065182C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80651830  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80651834  38 80 00 1F */	li r4, 0x1f
/* 80651838  4B A1 E5 5D */	bl StopQuake__12dVibration_cFi
/* 8065183C  88 7F 06 6D */	lbz r3, 0x66d(r31)
/* 80651840  38 03 00 01 */	addi r0, r3, 1
/* 80651844  98 1F 06 6D */	stb r0, 0x66d(r31)
/* 80651848  3C 60 80 65 */	lis r3, d_a_b_zant_mobile__stringBase0@ha /* 0x806527D0@ha */
/* 8065184C  38 63 27 D0 */	addi r3, r3, d_a_b_zant_mobile__stringBase0@l /* 0x806527D0@l */
/* 80651850  38 80 00 44 */	li r4, 0x44
/* 80651854  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80651858  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8065185C  3C A5 00 02 */	addis r5, r5, 2
/* 80651860  38 C0 00 80 */	li r6, 0x80
/* 80651864  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80651868  4B 9E AA 85 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8065186C  7C 64 1B 78 */	mr r4, r3
/* 80651870  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80651874  38 A0 00 02 */	li r5, 2
/* 80651878  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 8065187C  FC 40 08 90 */	fmr f2, f1
/* 80651880  FC 60 08 90 */	fmr f3, f1
/* 80651884  C0 9E 00 04 */	lfs f4, 4(r30)
/* 80651888  4B 9B F5 E9 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 8065188C  48 00 02 48 */	b lbl_80651AD4
lbl_80651890:
/* 80651890  7F E3 FB 78 */	mr r3, r31
/* 80651894  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80651898  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8065189C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806518A0  4B 9C 8E 71 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806518A4  B0 7F 04 E6 */	sth r3, 0x4e6(r31)
/* 806518A8  B0 7F 04 DE */	sth r3, 0x4de(r31)
/* 806518AC  48 00 02 28 */	b lbl_80651AD4
lbl_806518B0:
/* 806518B0  7F E3 FB 78 */	mr r3, r31
/* 806518B4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806518B8  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806518BC  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 806518C0  4B 9C 8E 51 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806518C4  7C 64 1B 78 */	mr r4, r3
/* 806518C8  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 806518CC  38 A0 00 10 */	li r5, 0x10
/* 806518D0  38 C0 00 80 */	li r6, 0x80
/* 806518D4  4B C1 ED 35 */	bl cLib_addCalcAngleS2__FPssss
/* 806518D8  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 806518DC  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 806518E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806518E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806518E8  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 806518EC  38 00 00 FF */	li r0, 0xff
/* 806518F0  90 01 00 08 */	stw r0, 8(r1)
/* 806518F4  38 80 00 00 */	li r4, 0
/* 806518F8  90 81 00 0C */	stw r4, 0xc(r1)
/* 806518FC  38 00 FF FF */	li r0, -1
/* 80651900  90 01 00 10 */	stw r0, 0x10(r1)
/* 80651904  90 81 00 14 */	stw r4, 0x14(r1)
/* 80651908  90 81 00 18 */	stw r4, 0x18(r1)
/* 8065190C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80651910  80 9F 0D 0C */	lwz r4, 0xd0c(r31)
/* 80651914  38 A0 00 00 */	li r5, 0
/* 80651918  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000890A@ha */
/* 8065191C  38 C6 89 0A */	addi r6, r6, 0x890A /* 0x0000890A@l */
/* 80651920  38 E1 00 5C */	addi r7, r1, 0x5c
/* 80651924  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80651928  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 8065192C  39 40 00 00 */	li r10, 0
/* 80651930  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80651934  4B 9F BB 99 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80651938  90 7F 0D 0C */	stw r3, 0xd0c(r31)
/* 8065193C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070426@ha */
/* 80651940  38 03 04 26 */	addi r0, r3, 0x0426 /* 0x00070426@l */
/* 80651944  90 01 00 20 */	stw r0, 0x20(r1)
/* 80651948  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8065194C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80651950  80 63 00 00 */	lwz r3, 0(r3)
/* 80651954  38 81 00 20 */	addi r4, r1, 0x20
/* 80651958  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8065195C  38 C0 00 00 */	li r6, 0
/* 80651960  38 E0 00 00 */	li r7, 0
/* 80651964  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80651968  FC 40 08 90 */	fmr f2, f1
/* 8065196C  C0 7E 00 04 */	lfs f3, 4(r30)
/* 80651970  FC 80 18 90 */	fmr f4, f3
/* 80651974  39 00 00 00 */	li r8, 0
/* 80651978  4B C5 AB 95 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8065197C  3B 80 00 00 */	li r28, 0
/* 80651980  88 1F 06 6D */	lbz r0, 0x66d(r31)
/* 80651984  28 00 00 04 */	cmplwi r0, 4
/* 80651988  40 82 00 30 */	bne lbl_806519B8
/* 8065198C  7F E3 FB 78 */	mr r3, r31
/* 80651990  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80651994  4B 9C 8D 7D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80651998  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8065199C  7C 03 00 50 */	subf r0, r3, r0
/* 806519A0  7C 03 07 34 */	extsh r3, r0
/* 806519A4  4B D1 37 2D */	bl abs
/* 806519A8  2C 03 10 00 */	cmpwi r3, 0x1000
/* 806519AC  40 80 00 1C */	bge lbl_806519C8
/* 806519B0  3B 80 00 01 */	li r28, 1
/* 806519B4  48 00 00 14 */	b lbl_806519C8
lbl_806519B8:
/* 806519B8  88 1F 06 71 */	lbz r0, 0x671(r31)
/* 806519BC  28 00 00 00 */	cmplwi r0, 0
/* 806519C0  40 82 00 08 */	bne lbl_806519C8
/* 806519C4  3B 80 00 01 */	li r28, 1
lbl_806519C8:
/* 806519C8  2C 1C 00 00 */	cmpwi r28, 0
/* 806519CC  41 82 00 C0 */	beq lbl_80651A8C
/* 806519D0  38 7F 06 60 */	addi r3, r31, 0x660
/* 806519D4  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 806519D8  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 806519DC  4B C1 ED 65 */	bl cLib_chaseF__FPfff
/* 806519E0  C0 1F 06 60 */	lfs f0, 0x660(r31)
/* 806519E4  FC 00 00 1E */	fctiwz f0, f0
/* 806519E8  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 806519EC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 806519F0  7C 00 07 34 */	extsh r0, r0
/* 806519F4  C8 3E 00 78 */	lfd f1, 0x78(r30)
/* 806519F8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806519FC  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80651A00  3C 00 43 30 */	lis r0, 0x4330
/* 80651A04  90 01 00 68 */	stw r0, 0x68(r1)
/* 80651A08  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 80651A0C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80651A10  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80651A14  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80651A18  C0 3F 06 60 */	lfs f1, 0x660(r31)
/* 80651A1C  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80651A20  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80651A24  40 82 00 B0 */	bne lbl_80651AD4
/* 80651A28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80651A2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80651A30  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80651A34  38 80 00 1F */	li r4, 0x1f
/* 80651A38  4B A1 E3 5D */	bl StopQuake__12dVibration_cFi
/* 80651A3C  38 00 00 01 */	li r0, 1
/* 80651A40  98 1F 06 6D */	stb r0, 0x66d(r31)
/* 80651A44  3C 60 80 65 */	lis r3, d_a_b_zant_mobile__stringBase0@ha /* 0x806527D0@ha */
/* 80651A48  38 63 27 D0 */	addi r3, r3, d_a_b_zant_mobile__stringBase0@l /* 0x806527D0@l */
/* 80651A4C  38 80 00 44 */	li r4, 0x44
/* 80651A50  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80651A54  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80651A58  3C A5 00 02 */	addis r5, r5, 2
/* 80651A5C  38 C0 00 80 */	li r6, 0x80
/* 80651A60  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80651A64  4B 9E A8 89 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80651A68  7C 64 1B 78 */	mr r4, r3
/* 80651A6C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80651A70  38 A0 00 02 */	li r5, 2
/* 80651A74  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80651A78  FC 40 08 90 */	fmr f2, f1
/* 80651A7C  FC 60 08 90 */	fmr f3, f1
/* 80651A80  C0 9E 00 04 */	lfs f4, 4(r30)
/* 80651A84  4B 9B F3 ED */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80651A88  48 00 00 4C */	b lbl_80651AD4
lbl_80651A8C:
/* 80651A8C  38 7F 06 60 */	addi r3, r31, 0x660
/* 80651A90  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80651A94  C0 5E 00 6C */	lfs f2, 0x6c(r30)
/* 80651A98  4B C1 EC A9 */	bl cLib_chaseF__FPfff
/* 80651A9C  C0 1F 06 60 */	lfs f0, 0x660(r31)
/* 80651AA0  FC 00 00 1E */	fctiwz f0, f0
/* 80651AA4  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 80651AA8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80651AAC  7C 00 07 34 */	extsh r0, r0
/* 80651AB0  C8 3E 00 78 */	lfd f1, 0x78(r30)
/* 80651AB4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80651AB8  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80651ABC  3C 00 43 30 */	lis r0, 0x4330
/* 80651AC0  90 01 00 68 */	stw r0, 0x68(r1)
/* 80651AC4  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 80651AC8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80651ACC  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80651AD0  D0 03 00 1C */	stfs f0, 0x1c(r3)
lbl_80651AD4:
/* 80651AD4  7F E3 FB 78 */	mr r3, r31
/* 80651AD8  38 80 00 00 */	li r4, 0
/* 80651ADC  4B 9C 8B F1 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80651AE0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80651AE4  7C 03 07 74 */	extsb r3, r0
/* 80651AE8  4B 9D B5 85 */	bl dComIfGp_getReverb__Fi
/* 80651AEC  7C 65 1B 78 */	mr r5, r3
/* 80651AF0  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80651AF4  38 80 00 00 */	li r4, 0
/* 80651AF8  4B 9B F5 B9 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 80651AFC  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 80651B00  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 80651B04  39 61 00 90 */	addi r11, r1, 0x90
/* 80651B08  4B D1 07 1D */	bl _restgpr_28
/* 80651B0C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80651B10  7C 08 03 A6 */	mtlr r0
/* 80651B14  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80651B18  4E 80 00 20 */	blr 
