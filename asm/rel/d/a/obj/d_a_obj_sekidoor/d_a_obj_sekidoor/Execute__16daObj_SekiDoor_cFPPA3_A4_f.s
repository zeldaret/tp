lbl_80CCD290:
/* 80CCD290  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80CCD294  7C 08 02 A6 */	mflr r0
/* 80CCD298  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CCD29C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80CCD2A0  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80CCD2A4  7C 7E 1B 78 */	mr r30, r3
/* 80CCD2A8  3C A0 80 CD */	lis r5, m__22daObj_SekiDoor_Param_c@ha
/* 80CCD2AC  3B E5 DA 08 */	addi r31, r5, m__22daObj_SekiDoor_Param_c@l
/* 80CCD2B0  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80CCD2B4  90 04 00 00 */	stw r0, 0(r4)
/* 80CCD2B8  88 03 05 D5 */	lbz r0, 0x5d5(r3)
/* 80CCD2BC  28 00 00 00 */	cmplwi r0, 0
/* 80CCD2C0  41 82 02 0C */	beq lbl_80CCD4CC
/* 80CCD2C4  88 1E 05 D4 */	lbz r0, 0x5d4(r30)
/* 80CCD2C8  28 00 00 00 */	cmplwi r0, 0
/* 80CCD2CC  41 82 00 18 */	beq lbl_80CCD2E4
/* 80CCD2D0  3C 80 80 CD */	lis r4, 0x80cd
/* 80CCD2D4  34 04 D5 1C */	addic. r0, r4, -10980
/* 80CCD2D8  40 82 02 18 */	bne lbl_80CCD4F0
/* 80CCD2DC  4B 34 C9 A0 */	b fopAcM_delete__FP10fopAc_ac_c
/* 80CCD2E0  48 00 02 10 */	b lbl_80CCD4F0
lbl_80CCD2E4:
/* 80CCD2E4  C0 1E 05 BC */	lfs f0, 0x5bc(r30)
/* 80CCD2E8  FC 00 02 10 */	fabs f0, f0
/* 80CCD2EC  FC 20 00 18 */	frsp f1, f0
/* 80CCD2F0  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha
/* 80CCD2F4  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)
/* 80CCD2F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CCD2FC  40 80 00 28 */	bge lbl_80CCD324
/* 80CCD300  80 1E 05 B8 */	lwz r0, 0x5b8(r30)
/* 80CCD304  2C 00 00 00 */	cmpwi r0, 0
/* 80CCD308  40 82 00 1C */	bne lbl_80CCD324
/* 80CCD30C  38 00 00 00 */	li r0, 0
/* 80CCD310  B0 1E 05 C0 */	sth r0, 0x5c0(r30)
/* 80CCD314  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 80CCD318  38 03 00 01 */	addi r0, r3, 1
/* 80CCD31C  90 1E 05 B8 */	stw r0, 0x5b8(r30)
/* 80CCD320  48 00 01 D0 */	b lbl_80CCD4F0
lbl_80CCD324:
/* 80CCD324  A8 9E 05 C0 */	lha r4, 0x5c0(r30)
/* 80CCD328  7C 80 07 35 */	extsh. r0, r4
/* 80CCD32C  41 82 00 80 */	beq lbl_80CCD3AC
/* 80CCD330  80 1E 05 B8 */	lwz r0, 0x5b8(r30)
/* 80CCD334  54 00 74 22 */	rlwinm r0, r0, 0xe, 0x10, 0x11
/* 80CCD338  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80CCD33C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80CCD340  7C 43 04 2E */	lfsx f2, r3, r0
/* 80CCD344  C8 3F 00 18 */	lfd f1, 0x18(r31)
/* 80CCD348  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80CCD34C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80CCD350  3C 00 43 30 */	lis r0, 0x4330
/* 80CCD354  90 01 00 28 */	stw r0, 0x28(r1)
/* 80CCD358  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80CCD35C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CCD360  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80CCD364  FC 00 00 1E */	fctiwz f0, f0
/* 80CCD368  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80CCD36C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CCD370  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 80CCD374  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 80CCD378  38 80 00 00 */	li r4, 0
/* 80CCD37C  38 A0 00 10 */	li r5, 0x10
/* 80CCD380  4B 5A 33 50 */	b cLib_chaseS__FPsss
/* 80CCD384  2C 03 00 00 */	cmpwi r3, 0
/* 80CCD388  41 82 00 18 */	beq lbl_80CCD3A0
/* 80CCD38C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CCD390  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CCD394  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80CCD398  38 80 00 0F */	li r4, 0xf
/* 80CCD39C  4B 3A 29 F8 */	b StopQuake__12dVibration_cFi
lbl_80CCD3A0:
/* 80CCD3A0  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 80CCD3A4  38 03 00 01 */	addi r0, r3, 1
/* 80CCD3A8  90 1E 05 B8 */	stw r0, 0x5b8(r30)
lbl_80CCD3AC:
/* 80CCD3AC  A8 1E 05 C0 */	lha r0, 0x5c0(r30)
/* 80CCD3B0  2C 00 00 00 */	cmpwi r0, 0
/* 80CCD3B4  40 82 01 3C */	bne lbl_80CCD4F0
/* 80CCD3B8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80CCD3BC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CCD3C0  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80CCD3C4  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80CCD3C8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80CCD3CC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80CCD3D0  C0 1E 05 BC */	lfs f0, 0x5bc(r30)
/* 80CCD3D4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80CCD3D8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80CCD3DC  40 80 00 6C */	bge lbl_80CCD448
/* 80CCD3E0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80CCD3E4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80CCD3E8  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80CCD3EC  C0 5E 04 FC */	lfs f2, 0x4fc(r30)
/* 80CCD3F0  4B 5A 33 50 */	b cLib_chaseF__FPfff
/* 80CCD3F4  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80CCD3F8  C0 1E 05 BC */	lfs f0, 0x5bc(r30)
/* 80CCD3FC  EC 01 00 2A */	fadds f0, f1, f0
/* 80CCD400  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CCD404  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080291@ha */
/* 80CCD408  38 03 02 91 */	addi r0, r3, 0x0291 /* 0x00080291@l */
/* 80CCD40C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CCD410  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CCD414  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CCD418  80 63 00 00 */	lwz r3, 0(r3)
/* 80CCD41C  38 81 00 0C */	addi r4, r1, 0xc
/* 80CCD420  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80CCD424  38 C0 00 00 */	li r6, 0
/* 80CCD428  38 E0 00 00 */	li r7, 0
/* 80CCD42C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80CCD430  FC 40 08 90 */	fmr f2, f1
/* 80CCD434  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 80CCD438  FC 80 18 90 */	fmr f4, f3
/* 80CCD43C  39 00 00 00 */	li r8, 0
/* 80CCD440  4B 5D F0 CC */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CCD444  48 00 00 AC */	b lbl_80CCD4F0
lbl_80CCD448:
/* 80CCD448  EC 02 00 2A */	fadds f0, f2, f0
/* 80CCD44C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CCD450  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802A6@ha */
/* 80CCD454  38 03 02 A6 */	addi r0, r3, 0x02A6 /* 0x000802A6@l */
/* 80CCD458  90 01 00 08 */	stw r0, 8(r1)
/* 80CCD45C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CCD460  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CCD464  80 63 00 00 */	lwz r3, 0(r3)
/* 80CCD468  38 81 00 08 */	addi r4, r1, 8
/* 80CCD46C  38 A0 00 00 */	li r5, 0
/* 80CCD470  38 C0 00 00 */	li r6, 0
/* 80CCD474  38 E0 00 00 */	li r7, 0
/* 80CCD478  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80CCD47C  FC 40 08 90 */	fmr f2, f1
/* 80CCD480  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 80CCD484  FC 80 18 90 */	fmr f4, f3
/* 80CCD488  39 00 00 00 */	li r8, 0
/* 80CCD48C  4B 5D E4 F8 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CCD490  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80CCD494  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80CCD498  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80CCD49C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CCD4A0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80CCD4A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CCD4A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CCD4AC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80CCD4B0  38 80 00 05 */	li r4, 5
/* 80CCD4B4  38 A0 00 0F */	li r5, 0xf
/* 80CCD4B8  38 C1 00 10 */	addi r6, r1, 0x10
/* 80CCD4BC  4B 3A 25 68 */	b StartShock__12dVibration_cFii4cXyz
/* 80CCD4C0  38 00 00 01 */	li r0, 1
/* 80CCD4C4  98 1E 05 D4 */	stb r0, 0x5d4(r30)
/* 80CCD4C8  48 00 00 28 */	b lbl_80CCD4F0
lbl_80CCD4CC:
/* 80CCD4CC  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80CCD4D0  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80CCD4D4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80CCD4D8  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80CCD4DC  38 00 00 00 */	li r0, 0
/* 80CCD4E0  90 1E 05 B8 */	stw r0, 0x5b8(r30)
/* 80CCD4E4  B0 1E 05 C0 */	sth r0, 0x5c0(r30)
/* 80CCD4E8  D0 1E 05 BC */	stfs f0, 0x5bc(r30)
/* 80CCD4EC  98 1E 05 D4 */	stb r0, 0x5d4(r30)
lbl_80CCD4F0:
/* 80CCD4F0  7F C3 F3 78 */	mr r3, r30
/* 80CCD4F4  48 00 03 59 */	bl setBaseMtx__16daObj_SekiDoor_cFv
/* 80CCD4F8  7F C3 F3 78 */	mr r3, r30
/* 80CCD4FC  48 00 01 51 */	bl setPrtcls__16daObj_SekiDoor_cFv
/* 80CCD500  38 60 00 01 */	li r3, 1
/* 80CCD504  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80CCD508  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80CCD50C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CCD510  7C 08 03 A6 */	mtlr r0
/* 80CCD514  38 21 00 40 */	addi r1, r1, 0x40
/* 80CCD518  4E 80 00 20 */	blr 
