lbl_8084E2D4:
/* 8084E2D4  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 8084E2D8  7C 08 02 A6 */	mflr r0
/* 8084E2DC  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8084E2E0  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 8084E2E4  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 8084E2E8  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 8084E2EC  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, 0 /* qr0 */
/* 8084E2F0  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8084E2F4  4B B1 3E E4 */	b _savegpr_28
/* 8084E2F8  7C 7F 1B 78 */	mr r31, r3
/* 8084E2FC  3C 60 80 85 */	lis r3, lit_3929@ha
/* 8084E300  3B C3 4B 04 */	addi r30, r3, lit_3929@l
/* 8084E304  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8084E308  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8084E30C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8084E310  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8084E314  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8084E318  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8084E31C  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8084E320  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8084E324  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 8084E328  AB A3 04 E6 */	lha r29, 0x4e6(r3)
/* 8084E32C  48 00 67 B5 */	bl getMidnaActor__9daPy_py_cFv
/* 8084E330  28 03 00 00 */	cmplwi r3, 0
/* 8084E334  41 82 00 1C */	beq lbl_8084E350
/* 8084E338  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8084E33C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8084E340  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8084E344  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8084E348  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8084E34C  D0 01 00 80 */	stfs f0, 0x80(r1)
lbl_8084E350:
/* 8084E350  80 7F 07 50 */	lwz r3, 0x750(r31)
/* 8084E354  38 03 00 01 */	addi r0, r3, 1
/* 8084E358  90 1F 07 50 */	stw r0, 0x750(r31)
/* 8084E35C  80 1F 07 48 */	lwz r0, 0x748(r31)
/* 8084E360  28 00 00 06 */	cmplwi r0, 6
/* 8084E364  41 81 0D 0C */	bgt lbl_8084F070
/* 8084E368  3C 60 80 85 */	lis r3, lit_6166@ha
/* 8084E36C  38 63 4D F4 */	addi r3, r3, lit_6166@l
/* 8084E370  54 00 10 3A */	slwi r0, r0, 2
/* 8084E374  7C 03 00 2E */	lwzx r0, r3, r0
/* 8084E378  7C 09 03 A6 */	mtctr r0
/* 8084E37C  4E 80 04 20 */	bctr 
lbl_8084E380:
/* 8084E380  7F E3 FB 78 */	mr r3, r31
/* 8084E384  38 80 00 01 */	li r4, 1
/* 8084E388  4B FF F6 91 */	bl calcCircleCamera__8daKago_cFi
/* 8084E38C  80 1F 07 50 */	lwz r0, 0x750(r31)
/* 8084E390  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8084E394  41 82 00 18 */	beq lbl_8084E3AC
/* 8084E398  38 7F 06 FC */	addi r3, r31, 0x6fc
/* 8084E39C  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 8084E3A0  C0 5E 01 34 */	lfs f2, 0x134(r30)
/* 8084E3A4  4B A2 23 9C */	b cLib_chaseF__FPfff
/* 8084E3A8  48 00 00 14 */	b lbl_8084E3BC
lbl_8084E3AC:
/* 8084E3AC  38 7F 06 FC */	addi r3, r31, 0x6fc
/* 8084E3B0  C0 3E 01 38 */	lfs f1, 0x138(r30)
/* 8084E3B4  C0 5E 01 34 */	lfs f2, 0x134(r30)
/* 8084E3B8  4B A2 23 88 */	b cLib_chaseF__FPfff
lbl_8084E3BC:
/* 8084E3BC  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8084E3C0  C0 1F 06 FC */	lfs f0, 0x6fc(r31)
/* 8084E3C4  EC 01 00 2A */	fadds f0, f1, f0
/* 8084E3C8  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 8084E3CC  80 1F 07 2C */	lwz r0, 0x72c(r31)
/* 8084E3D0  2C 00 00 00 */	cmpwi r0, 0
/* 8084E3D4  41 82 01 94 */	beq lbl_8084E568
/* 8084E3D8  80 7F 07 6C */	lwz r3, 0x76c(r31)
/* 8084E3DC  88 9F 07 71 */	lbz r4, 0x771(r31)
/* 8084E3E0  7C 84 07 74 */	extsb r4, r4
/* 8084E3E4  4B 80 33 CC */	b dPath_GetPnt__FPC5dPathi
/* 8084E3E8  C0 03 00 04 */	lfs f0, 4(r3)
/* 8084E3EC  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8084E3F0  C0 03 00 08 */	lfs f0, 8(r3)
/* 8084E3F4  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8084E3F8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8084E3FC  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8084E400  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8084E404  38 81 00 6C */	addi r4, r1, 0x6c
/* 8084E408  4B A2 27 FC */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8084E40C  7C 64 1B 78 */	mr r4, r3
/* 8084E410  38 7F 04 DE */	addi r3, r31, 0x4de
/* 8084E414  38 A0 00 20 */	li r5, 0x20
/* 8084E418  38 C0 01 00 */	li r6, 0x100
/* 8084E41C  38 E0 00 40 */	li r7, 0x40
/* 8084E420  4B A2 21 20 */	b cLib_addCalcAngleS__FPsssss
/* 8084E424  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8084E428  38 81 00 6C */	addi r4, r1, 0x6c
/* 8084E42C  4B AF 8F 70 */	b PSVECSquareDistance
/* 8084E430  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 8084E434  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8084E438  40 81 00 58 */	ble lbl_8084E490
/* 8084E43C  FC 00 08 34 */	frsqrte f0, f1
/* 8084E440  C8 9E 00 48 */	lfd f4, 0x48(r30)
/* 8084E444  FC 44 00 32 */	fmul f2, f4, f0
/* 8084E448  C8 7E 00 50 */	lfd f3, 0x50(r30)
/* 8084E44C  FC 00 00 32 */	fmul f0, f0, f0
/* 8084E450  FC 01 00 32 */	fmul f0, f1, f0
/* 8084E454  FC 03 00 28 */	fsub f0, f3, f0
/* 8084E458  FC 02 00 32 */	fmul f0, f2, f0
/* 8084E45C  FC 44 00 32 */	fmul f2, f4, f0
/* 8084E460  FC 00 00 32 */	fmul f0, f0, f0
/* 8084E464  FC 01 00 32 */	fmul f0, f1, f0
/* 8084E468  FC 03 00 28 */	fsub f0, f3, f0
/* 8084E46C  FC 02 00 32 */	fmul f0, f2, f0
/* 8084E470  FC 44 00 32 */	fmul f2, f4, f0
/* 8084E474  FC 00 00 32 */	fmul f0, f0, f0
/* 8084E478  FC 01 00 32 */	fmul f0, f1, f0
/* 8084E47C  FC 03 00 28 */	fsub f0, f3, f0
/* 8084E480  FC 02 00 32 */	fmul f0, f2, f0
/* 8084E484  FC 21 00 32 */	fmul f1, f1, f0
/* 8084E488  FC 20 08 18 */	frsp f1, f1
/* 8084E48C  48 00 00 88 */	b lbl_8084E514
lbl_8084E490:
/* 8084E490  C8 1E 00 58 */	lfd f0, 0x58(r30)
/* 8084E494  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8084E498  40 80 00 10 */	bge lbl_8084E4A8
/* 8084E49C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8084E4A0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8084E4A4  48 00 00 70 */	b lbl_8084E514
lbl_8084E4A8:
/* 8084E4A8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8084E4AC  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8084E4B0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8084E4B4  3C 00 7F 80 */	lis r0, 0x7f80
/* 8084E4B8  7C 03 00 00 */	cmpw r3, r0
/* 8084E4BC  41 82 00 14 */	beq lbl_8084E4D0
/* 8084E4C0  40 80 00 40 */	bge lbl_8084E500
/* 8084E4C4  2C 03 00 00 */	cmpwi r3, 0
/* 8084E4C8  41 82 00 20 */	beq lbl_8084E4E8
/* 8084E4CC  48 00 00 34 */	b lbl_8084E500
lbl_8084E4D0:
/* 8084E4D0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8084E4D4  41 82 00 0C */	beq lbl_8084E4E0
/* 8084E4D8  38 00 00 01 */	li r0, 1
/* 8084E4DC  48 00 00 28 */	b lbl_8084E504
lbl_8084E4E0:
/* 8084E4E0  38 00 00 02 */	li r0, 2
/* 8084E4E4  48 00 00 20 */	b lbl_8084E504
lbl_8084E4E8:
/* 8084E4E8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8084E4EC  41 82 00 0C */	beq lbl_8084E4F8
/* 8084E4F0  38 00 00 05 */	li r0, 5
/* 8084E4F4  48 00 00 10 */	b lbl_8084E504
lbl_8084E4F8:
/* 8084E4F8  38 00 00 03 */	li r0, 3
/* 8084E4FC  48 00 00 08 */	b lbl_8084E504
lbl_8084E500:
/* 8084E500  38 00 00 04 */	li r0, 4
lbl_8084E504:
/* 8084E504  2C 00 00 01 */	cmpwi r0, 1
/* 8084E508  40 82 00 0C */	bne lbl_8084E514
/* 8084E50C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8084E510  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8084E514:
/* 8084E514  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 8084E518  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8084E51C  40 80 00 30 */	bge lbl_8084E54C
/* 8084E520  88 7F 07 71 */	lbz r3, 0x771(r31)
/* 8084E524  38 03 00 01 */	addi r0, r3, 1
/* 8084E528  98 1F 07 71 */	stb r0, 0x771(r31)
/* 8084E52C  88 1F 07 71 */	lbz r0, 0x771(r31)
/* 8084E530  7C 04 07 74 */	extsb r4, r0
/* 8084E534  80 7F 07 6C */	lwz r3, 0x76c(r31)
/* 8084E538  A0 03 00 00 */	lhz r0, 0(r3)
/* 8084E53C  7C 04 00 00 */	cmpw r4, r0
/* 8084E540  41 80 00 0C */	blt lbl_8084E54C
/* 8084E544  38 00 00 00 */	li r0, 0
/* 8084E548  98 1F 07 71 */	stb r0, 0x771(r31)
lbl_8084E54C:
/* 8084E54C  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 8084E550  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 8084E554  38 A0 00 20 */	li r5, 0x20
/* 8084E558  38 C0 01 00 */	li r6, 0x100
/* 8084E55C  38 E0 00 40 */	li r7, 0x40
/* 8084E560  4B A2 1F E0 */	b cLib_addCalcAngleS__FPsssss
/* 8084E564  48 00 00 E8 */	b lbl_8084E64C
lbl_8084E568:
/* 8084E568  80 1F 07 54 */	lwz r0, 0x754(r31)
/* 8084E56C  2C 00 00 00 */	cmpwi r0, 0
/* 8084E570  40 82 00 6C */	bne lbl_8084E5DC
/* 8084E574  88 1F 06 E7 */	lbz r0, 0x6e7(r31)
/* 8084E578  28 00 00 01 */	cmplwi r0, 1
/* 8084E57C  40 82 00 30 */	bne lbl_8084E5AC
/* 8084E580  3C 60 00 07 */	lis r3, 0x0007 /* 0x000705B9@ha */
/* 8084E584  38 03 05 B9 */	addi r0, r3, 0x05B9 /* 0x000705B9@l */
/* 8084E588  90 01 00 20 */	stw r0, 0x20(r1)
/* 8084E58C  38 7F 05 74 */	addi r3, r31, 0x574
/* 8084E590  38 81 00 20 */	addi r4, r1, 0x20
/* 8084E594  38 A0 FF FF */	li r5, -1
/* 8084E598  81 9F 05 74 */	lwz r12, 0x574(r31)
/* 8084E59C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8084E5A0  7D 89 03 A6 */	mtctr r12
/* 8084E5A4  4E 80 04 21 */	bctrl 
/* 8084E5A8  48 00 00 2C */	b lbl_8084E5D4
lbl_8084E5AC:
/* 8084E5AC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000705B8@ha */
/* 8084E5B0  38 03 05 B8 */	addi r0, r3, 0x05B8 /* 0x000705B8@l */
/* 8084E5B4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8084E5B8  38 7F 05 74 */	addi r3, r31, 0x574
/* 8084E5BC  38 81 00 1C */	addi r4, r1, 0x1c
/* 8084E5C0  38 A0 FF FF */	li r5, -1
/* 8084E5C4  81 9F 05 74 */	lwz r12, 0x574(r31)
/* 8084E5C8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8084E5CC  7D 89 03 A6 */	mtctr r12
/* 8084E5D0  4E 80 04 21 */	bctrl 
lbl_8084E5D4:
/* 8084E5D4  38 00 00 01 */	li r0, 1
/* 8084E5D8  90 1F 07 54 */	stw r0, 0x754(r31)
lbl_8084E5DC:
/* 8084E5DC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8084E5E0  38 81 00 90 */	addi r4, r1, 0x90
/* 8084E5E4  4B A2 26 20 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8084E5E8  7C 64 1B 78 */	mr r4, r3
/* 8084E5EC  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 8084E5F0  38 A0 00 08 */	li r5, 8
/* 8084E5F4  38 C0 02 00 */	li r6, 0x200
/* 8084E5F8  38 E0 00 40 */	li r7, 0x40
/* 8084E5FC  4B A2 1F 44 */	b cLib_addCalcAngleS__FPsssss
/* 8084E600  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8084E604  38 81 00 90 */	addi r4, r1, 0x90
/* 8084E608  4B A2 26 6C */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 8084E60C  7C 03 00 D0 */	neg r0, r3
/* 8084E610  7C 04 07 34 */	extsh r4, r0
/* 8084E614  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 8084E618  38 A0 00 04 */	li r5, 4
/* 8084E61C  38 C0 02 00 */	li r6, 0x200
/* 8084E620  38 E0 00 10 */	li r7, 0x10
/* 8084E624  4B A2 1F 1C */	b cLib_addCalcAngleS__FPsssss
/* 8084E628  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8084E62C  38 81 00 90 */	addi r4, r1, 0x90
/* 8084E630  4B A2 25 D4 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8084E634  7C 64 1B 78 */	mr r4, r3
/* 8084E638  38 7F 04 DE */	addi r3, r31, 0x4de
/* 8084E63C  38 A0 00 08 */	li r5, 8
/* 8084E640  38 C0 01 00 */	li r6, 0x100
/* 8084E644  38 E0 00 10 */	li r7, 0x10
/* 8084E648  4B A2 1E F8 */	b cLib_addCalcAngleS__FPsssss
lbl_8084E64C:
/* 8084E64C  80 1F 07 28 */	lwz r0, 0x728(r31)
/* 8084E650  2C 00 00 00 */	cmpwi r0, 0
/* 8084E654  40 82 00 14 */	bne lbl_8084E668
/* 8084E658  38 00 00 01 */	li r0, 1
/* 8084E65C  90 1F 07 48 */	stw r0, 0x748(r31)
/* 8084E660  38 60 00 01 */	li r3, 1
/* 8084E664  48 00 0A 10 */	b lbl_8084F074
lbl_8084E668:
/* 8084E668  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8084E66C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8084E670  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8084E674  7F E4 FB 78 */	mr r4, r31
/* 8084E678  3C A0 80 85 */	lis r5, DemoSkipCallBack__8daKago_cFPvi@ha
/* 8084E67C  38 A5 AA 64 */	addi r5, r5, DemoSkipCallBack__8daKago_cFPvi@l
/* 8084E680  38 C0 00 00 */	li r6, 0
/* 8084E684  4B 7F 42 90 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 8084E688  48 00 09 E8 */	b lbl_8084F070
lbl_8084E68C:
/* 8084E68C  7F E3 FB 78 */	mr r3, r31
/* 8084E690  38 80 00 02 */	li r4, 2
/* 8084E694  4B FF F3 85 */	bl calcCircleCamera__8daKago_cFi
/* 8084E698  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8084E69C  38 81 00 90 */	addi r4, r1, 0x90
/* 8084E6A0  4B A2 25 D4 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 8084E6A4  7C 03 00 D0 */	neg r0, r3
/* 8084E6A8  7C 04 07 34 */	extsh r4, r0
/* 8084E6AC  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 8084E6B0  38 A0 00 04 */	li r5, 4
/* 8084E6B4  38 C0 04 00 */	li r6, 0x400
/* 8084E6B8  38 E0 00 40 */	li r7, 0x40
/* 8084E6BC  4B A2 1E 84 */	b cLib_addCalcAngleS__FPsssss
/* 8084E6C0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8084E6C4  38 81 00 90 */	addi r4, r1, 0x90
/* 8084E6C8  4B A2 25 3C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8084E6CC  7C 64 1B 78 */	mr r4, r3
/* 8084E6D0  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 8084E6D4  38 A0 00 04 */	li r5, 4
/* 8084E6D8  38 C0 02 00 */	li r6, 0x200
/* 8084E6DC  38 E0 00 40 */	li r7, 0x40
/* 8084E6E0  4B A2 1E 60 */	b cLib_addCalcAngleS__FPsssss
/* 8084E6E4  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8084E6E8  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8084E6EC  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 8084E6F0  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 8084E6F4  38 7F 06 F8 */	addi r3, r31, 0x6f8
/* 8084E6F8  C0 3E 01 18 */	lfs f1, 0x118(r30)
/* 8084E6FC  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 8084E700  4B A2 20 40 */	b cLib_chaseF__FPfff
/* 8084E704  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8084E708  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 8084E70C  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 8084E710  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8084E714  7C 64 02 14 */	add r3, r4, r0
/* 8084E718  C0 03 00 04 */	lfs f0, 4(r3)
/* 8084E71C  FC 00 02 10 */	fabs f0, f0
/* 8084E720  FC 20 00 18 */	frsp f1, f0
/* 8084E724  C0 1F 06 F8 */	lfs f0, 0x6f8(r31)
/* 8084E728  EC 00 00 72 */	fmuls f0, f0, f1
/* 8084E72C  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8084E730  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 8084E734  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8084E738  7C 24 04 2E */	lfsx f1, r4, r0
/* 8084E73C  C0 1F 06 F8 */	lfs f0, 0x6f8(r31)
/* 8084E740  FC 00 00 50 */	fneg f0, f0
/* 8084E744  EC 00 00 72 */	fmuls f0, f0, f1
/* 8084E748  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8084E74C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8084E750  38 81 00 90 */	addi r4, r1, 0x90
/* 8084E754  4B AF 8C 48 */	b PSVECSquareDistance
/* 8084E758  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 8084E75C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8084E760  40 81 00 58 */	ble lbl_8084E7B8
/* 8084E764  FC 00 08 34 */	frsqrte f0, f1
/* 8084E768  C8 9E 00 48 */	lfd f4, 0x48(r30)
/* 8084E76C  FC 44 00 32 */	fmul f2, f4, f0
/* 8084E770  C8 7E 00 50 */	lfd f3, 0x50(r30)
/* 8084E774  FC 00 00 32 */	fmul f0, f0, f0
/* 8084E778  FC 01 00 32 */	fmul f0, f1, f0
/* 8084E77C  FC 03 00 28 */	fsub f0, f3, f0
/* 8084E780  FC 02 00 32 */	fmul f0, f2, f0
/* 8084E784  FC 44 00 32 */	fmul f2, f4, f0
/* 8084E788  FC 00 00 32 */	fmul f0, f0, f0
/* 8084E78C  FC 01 00 32 */	fmul f0, f1, f0
/* 8084E790  FC 03 00 28 */	fsub f0, f3, f0
/* 8084E794  FC 02 00 32 */	fmul f0, f2, f0
/* 8084E798  FC 44 00 32 */	fmul f2, f4, f0
/* 8084E79C  FC 00 00 32 */	fmul f0, f0, f0
/* 8084E7A0  FC 01 00 32 */	fmul f0, f1, f0
/* 8084E7A4  FC 03 00 28 */	fsub f0, f3, f0
/* 8084E7A8  FC 02 00 32 */	fmul f0, f2, f0
/* 8084E7AC  FC 21 00 32 */	fmul f1, f1, f0
/* 8084E7B0  FC 20 08 18 */	frsp f1, f1
/* 8084E7B4  48 00 00 88 */	b lbl_8084E83C
lbl_8084E7B8:
/* 8084E7B8  C8 1E 00 58 */	lfd f0, 0x58(r30)
/* 8084E7BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8084E7C0  40 80 00 10 */	bge lbl_8084E7D0
/* 8084E7C4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8084E7C8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8084E7CC  48 00 00 70 */	b lbl_8084E83C
lbl_8084E7D0:
/* 8084E7D0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8084E7D4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8084E7D8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8084E7DC  3C 00 7F 80 */	lis r0, 0x7f80
/* 8084E7E0  7C 03 00 00 */	cmpw r3, r0
/* 8084E7E4  41 82 00 14 */	beq lbl_8084E7F8
/* 8084E7E8  40 80 00 40 */	bge lbl_8084E828
/* 8084E7EC  2C 03 00 00 */	cmpwi r3, 0
/* 8084E7F0  41 82 00 20 */	beq lbl_8084E810
/* 8084E7F4  48 00 00 34 */	b lbl_8084E828
lbl_8084E7F8:
/* 8084E7F8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8084E7FC  41 82 00 0C */	beq lbl_8084E808
/* 8084E800  38 00 00 01 */	li r0, 1
/* 8084E804  48 00 00 28 */	b lbl_8084E82C
lbl_8084E808:
/* 8084E808  38 00 00 02 */	li r0, 2
/* 8084E80C  48 00 00 20 */	b lbl_8084E82C
lbl_8084E810:
/* 8084E810  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8084E814  41 82 00 0C */	beq lbl_8084E820
/* 8084E818  38 00 00 05 */	li r0, 5
/* 8084E81C  48 00 00 10 */	b lbl_8084E82C
lbl_8084E820:
/* 8084E820  38 00 00 03 */	li r0, 3
/* 8084E824  48 00 00 08 */	b lbl_8084E82C
lbl_8084E828:
/* 8084E828  38 00 00 04 */	li r0, 4
lbl_8084E82C:
/* 8084E82C  2C 00 00 01 */	cmpwi r0, 1
/* 8084E830  40 82 00 0C */	bne lbl_8084E83C
/* 8084E834  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8084E838  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8084E83C:
/* 8084E83C  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 8084E840  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8084E844  40 80 00 14 */	bge lbl_8084E858
/* 8084E848  38 00 00 02 */	li r0, 2
/* 8084E84C  90 1F 07 48 */	stw r0, 0x748(r31)
/* 8084E850  38 60 00 01 */	li r3, 1
/* 8084E854  48 00 08 20 */	b lbl_8084F074
lbl_8084E858:
/* 8084E858  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8084E85C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8084E860  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8084E864  7F E4 FB 78 */	mr r4, r31
/* 8084E868  3C A0 80 85 */	lis r5, DemoSkipCallBack__8daKago_cFPvi@ha
/* 8084E86C  38 A5 AA 64 */	addi r5, r5, DemoSkipCallBack__8daKago_cFPvi@l
/* 8084E870  38 C0 00 00 */	li r6, 0
/* 8084E874  4B 7F 40 A0 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 8084E878  48 00 07 F8 */	b lbl_8084F070
lbl_8084E87C:
/* 8084E87C  88 1F 06 E4 */	lbz r0, 0x6e4(r31)
/* 8084E880  28 00 00 00 */	cmplwi r0, 0
/* 8084E884  40 82 00 5C */	bne lbl_8084E8E0
/* 8084E888  80 1F 07 3C */	lwz r0, 0x73c(r31)
/* 8084E88C  2C 00 00 00 */	cmpwi r0, 0
/* 8084E890  40 82 00 28 */	bne lbl_8084E8B8
/* 8084E894  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8084E898  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8084E89C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8084E8A0  7F E4 FB 78 */	mr r4, r31
/* 8084E8A4  3C A0 80 85 */	lis r5, DemoSkipCallBack__8daKago_cFPvi@ha
/* 8084E8A8  38 A5 AA 64 */	addi r5, r5, DemoSkipCallBack__8daKago_cFPvi@l
/* 8084E8AC  38 C0 00 04 */	li r6, 4
/* 8084E8B0  4B 7F 40 64 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 8084E8B4  48 00 00 2C */	b lbl_8084E8E0
lbl_8084E8B8:
/* 8084E8B8  2C 00 00 02 */	cmpwi r0, 2
/* 8084E8BC  40 82 00 24 */	bne lbl_8084E8E0
/* 8084E8C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8084E8C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8084E8C8  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8084E8CC  7F E4 FB 78 */	mr r4, r31
/* 8084E8D0  3C A0 80 85 */	lis r5, DemoSkipCallBack__8daKago_cFPvi@ha
/* 8084E8D4  38 A5 AA 64 */	addi r5, r5, DemoSkipCallBack__8daKago_cFPvi@l
/* 8084E8D8  38 C0 00 05 */	li r6, 5
/* 8084E8DC  4B 7F 40 38 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
lbl_8084E8E0:
/* 8084E8E0  80 1F 07 44 */	lwz r0, 0x744(r31)
/* 8084E8E4  2C 00 00 00 */	cmpwi r0, 0
/* 8084E8E8  40 82 02 84 */	bne lbl_8084EB6C
/* 8084E8EC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8084E8F0  38 9F 06 A4 */	addi r4, r31, 0x6a4
/* 8084E8F4  4B A2 23 10 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8084E8F8  B0 7F 04 DE */	sth r3, 0x4de(r31)
/* 8084E8FC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8084E900  38 9F 06 A4 */	addi r4, r31, 0x6a4
/* 8084E904  4B A2 23 70 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 8084E908  7C 03 00 D0 */	neg r0, r3
/* 8084E90C  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 8084E910  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8084E914  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 8084E918  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 8084E91C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8084E920  7C 64 02 14 */	add r3, r4, r0
/* 8084E924  C0 03 00 04 */	lfs f0, 4(r3)
/* 8084E928  FC 00 02 10 */	fabs f0, f0
/* 8084E92C  FC 20 00 18 */	frsp f1, f0
/* 8084E930  C0 1F 06 F8 */	lfs f0, 0x6f8(r31)
/* 8084E934  EC 00 00 72 */	fmuls f0, f0, f1
/* 8084E938  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8084E93C  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 8084E940  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8084E944  7C 24 04 2E */	lfsx f1, r4, r0
/* 8084E948  C0 1F 06 F8 */	lfs f0, 0x6f8(r31)
/* 8084E94C  FC 00 00 50 */	fneg f0, f0
/* 8084E950  EC 00 00 72 */	fmuls f0, f0, f1
/* 8084E954  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8084E958  80 1F 07 28 */	lwz r0, 0x728(r31)
/* 8084E95C  2C 00 00 00 */	cmpwi r0, 0
/* 8084E960  41 82 00 7C */	beq lbl_8084E9DC
/* 8084E964  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 8084E968  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 8084E96C  80 1F 07 28 */	lwz r0, 0x728(r31)
/* 8084E970  2C 00 00 01 */	cmpwi r0, 1
/* 8084E974  40 82 00 80 */	bne lbl_8084E9F4
/* 8084E978  88 1F 06 E7 */	lbz r0, 0x6e7(r31)
/* 8084E97C  28 00 00 01 */	cmplwi r0, 1
/* 8084E980  40 82 00 30 */	bne lbl_8084E9B0
/* 8084E984  3C 60 00 07 */	lis r3, 0x0007 /* 0x000705B9@ha */
/* 8084E988  38 03 05 B9 */	addi r0, r3, 0x05B9 /* 0x000705B9@l */
/* 8084E98C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8084E990  38 7F 05 74 */	addi r3, r31, 0x574
/* 8084E994  38 81 00 18 */	addi r4, r1, 0x18
/* 8084E998  38 A0 FF FF */	li r5, -1
/* 8084E99C  81 9F 05 74 */	lwz r12, 0x574(r31)
/* 8084E9A0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8084E9A4  7D 89 03 A6 */	mtctr r12
/* 8084E9A8  4E 80 04 21 */	bctrl 
/* 8084E9AC  48 00 00 48 */	b lbl_8084E9F4
lbl_8084E9B0:
/* 8084E9B0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000705B8@ha */
/* 8084E9B4  38 03 05 B8 */	addi r0, r3, 0x05B8 /* 0x000705B8@l */
/* 8084E9B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8084E9BC  38 7F 05 74 */	addi r3, r31, 0x574
/* 8084E9C0  38 81 00 14 */	addi r4, r1, 0x14
/* 8084E9C4  38 A0 FF FF */	li r5, -1
/* 8084E9C8  81 9F 05 74 */	lwz r12, 0x574(r31)
/* 8084E9CC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8084E9D0  7D 89 03 A6 */	mtctr r12
/* 8084E9D4  4E 80 04 21 */	bctrl 
/* 8084E9D8  48 00 00 1C */	b lbl_8084E9F4
lbl_8084E9DC:
/* 8084E9DC  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 8084E9E0  38 80 00 00 */	li r4, 0
/* 8084E9E4  38 A0 00 04 */	li r5, 4
/* 8084E9E8  38 C0 01 00 */	li r6, 0x100
/* 8084E9EC  38 E0 00 80 */	li r7, 0x80
/* 8084E9F0  4B A2 1B 50 */	b cLib_addCalcAngleS__FPsssss
lbl_8084E9F4:
/* 8084E9F4  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 8084E9F8  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 8084E9FC  38 7F 06 A4 */	addi r3, r31, 0x6a4
/* 8084EA00  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8084EA04  4B AF 89 98 */	b PSVECSquareDistance
/* 8084EA08  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 8084EA0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8084EA10  40 81 00 58 */	ble lbl_8084EA68
/* 8084EA14  FC 00 08 34 */	frsqrte f0, f1
/* 8084EA18  C8 9E 00 48 */	lfd f4, 0x48(r30)
/* 8084EA1C  FC 44 00 32 */	fmul f2, f4, f0
/* 8084EA20  C8 7E 00 50 */	lfd f3, 0x50(r30)
/* 8084EA24  FC 00 00 32 */	fmul f0, f0, f0
/* 8084EA28  FC 01 00 32 */	fmul f0, f1, f0
/* 8084EA2C  FC 03 00 28 */	fsub f0, f3, f0
/* 8084EA30  FC 02 00 32 */	fmul f0, f2, f0
/* 8084EA34  FC 44 00 32 */	fmul f2, f4, f0
/* 8084EA38  FC 00 00 32 */	fmul f0, f0, f0
/* 8084EA3C  FC 01 00 32 */	fmul f0, f1, f0
/* 8084EA40  FC 03 00 28 */	fsub f0, f3, f0
/* 8084EA44  FC 02 00 32 */	fmul f0, f2, f0
/* 8084EA48  FC 44 00 32 */	fmul f2, f4, f0
/* 8084EA4C  FC 00 00 32 */	fmul f0, f0, f0
/* 8084EA50  FC 01 00 32 */	fmul f0, f1, f0
/* 8084EA54  FC 03 00 28 */	fsub f0, f3, f0
/* 8084EA58  FC 02 00 32 */	fmul f0, f2, f0
/* 8084EA5C  FC 21 00 32 */	fmul f1, f1, f0
/* 8084EA60  FC 20 08 18 */	frsp f1, f1
/* 8084EA64  48 00 00 88 */	b lbl_8084EAEC
lbl_8084EA68:
/* 8084EA68  C8 1E 00 58 */	lfd f0, 0x58(r30)
/* 8084EA6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8084EA70  40 80 00 10 */	bge lbl_8084EA80
/* 8084EA74  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8084EA78  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8084EA7C  48 00 00 70 */	b lbl_8084EAEC
lbl_8084EA80:
/* 8084EA80  D0 21 00 08 */	stfs f1, 8(r1)
/* 8084EA84  80 81 00 08 */	lwz r4, 8(r1)
/* 8084EA88  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8084EA8C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8084EA90  7C 03 00 00 */	cmpw r3, r0
/* 8084EA94  41 82 00 14 */	beq lbl_8084EAA8
/* 8084EA98  40 80 00 40 */	bge lbl_8084EAD8
/* 8084EA9C  2C 03 00 00 */	cmpwi r3, 0
/* 8084EAA0  41 82 00 20 */	beq lbl_8084EAC0
/* 8084EAA4  48 00 00 34 */	b lbl_8084EAD8
lbl_8084EAA8:
/* 8084EAA8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8084EAAC  41 82 00 0C */	beq lbl_8084EAB8
/* 8084EAB0  38 00 00 01 */	li r0, 1
/* 8084EAB4  48 00 00 28 */	b lbl_8084EADC
lbl_8084EAB8:
/* 8084EAB8  38 00 00 02 */	li r0, 2
/* 8084EABC  48 00 00 20 */	b lbl_8084EADC
lbl_8084EAC0:
/* 8084EAC0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8084EAC4  41 82 00 0C */	beq lbl_8084EAD0
/* 8084EAC8  38 00 00 05 */	li r0, 5
/* 8084EACC  48 00 00 10 */	b lbl_8084EADC
lbl_8084EAD0:
/* 8084EAD0  38 00 00 03 */	li r0, 3
/* 8084EAD4  48 00 00 08 */	b lbl_8084EADC
lbl_8084EAD8:
/* 8084EAD8  38 00 00 04 */	li r0, 4
lbl_8084EADC:
/* 8084EADC  2C 00 00 01 */	cmpwi r0, 1
/* 8084EAE0  40 82 00 0C */	bne lbl_8084EAEC
/* 8084EAE4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8084EAE8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8084EAEC:
/* 8084EAEC  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 8084EAF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8084EAF4  40 80 01 58 */	bge lbl_8084EC4C
/* 8084EAF8  38 00 00 01 */	li r0, 1
/* 8084EAFC  90 1F 07 44 */	stw r0, 0x744(r31)
/* 8084EB00  7F E3 FB 78 */	mr r3, r31
/* 8084EB04  38 80 00 15 */	li r4, 0x15
/* 8084EB08  38 A0 00 02 */	li r5, 2
/* 8084EB0C  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 8084EB10  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 8084EB14  4B FF AB DD */	bl setBck__8daKago_cFiUcff
/* 8084EB18  38 00 00 3C */	li r0, 0x3c
/* 8084EB1C  90 1F 07 28 */	stw r0, 0x728(r31)
/* 8084EB20  38 61 00 78 */	addi r3, r1, 0x78
/* 8084EB24  4B 7B E2 40 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8084EB28  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8084EB2C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8084EB30  7F A4 EB 78 */	mr r4, r29
/* 8084EB34  4B 7B D9 00 */	b mDoMtx_YrotM__FPA4_fs
/* 8084EB38  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8084EB3C  C0 5E 00 20 */	lfs f2, 0x20(r30)
/* 8084EB40  C0 7E 01 28 */	lfs f3, 0x128(r30)
/* 8084EB44  4B 7B E2 58 */	b transM__14mDoMtx_stack_cFfff
/* 8084EB48  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8084EB4C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8084EB50  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8084EB54  D0 1F 06 A4 */	stfs f0, 0x6a4(r31)
/* 8084EB58  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8084EB5C  D0 1F 06 A8 */	stfs f0, 0x6a8(r31)
/* 8084EB60  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8084EB64  D0 1F 06 AC */	stfs f0, 0x6ac(r31)
/* 8084EB68  48 00 00 E4 */	b lbl_8084EC4C
lbl_8084EB6C:
/* 8084EB6C  38 7F 06 F8 */	addi r3, r31, 0x6f8
/* 8084EB70  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8084EB74  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 8084EB78  4B A2 1B C8 */	b cLib_chaseF__FPfff
/* 8084EB7C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8084EB80  38 9F 06 A4 */	addi r4, r31, 0x6a4
/* 8084EB84  4B A2 20 80 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8084EB88  7C 64 1B 78 */	mr r4, r3
/* 8084EB8C  38 7F 04 DE */	addi r3, r31, 0x4de
/* 8084EB90  38 A0 00 04 */	li r5, 4
/* 8084EB94  38 C0 04 00 */	li r6, 0x400
/* 8084EB98  38 E0 01 00 */	li r7, 0x100
/* 8084EB9C  4B A2 19 A4 */	b cLib_addCalcAngleS__FPsssss
/* 8084EBA0  38 7F 04 DC */	addi r3, r31, 0x4dc
/* 8084EBA4  38 80 00 00 */	li r4, 0
/* 8084EBA8  38 A0 00 04 */	li r5, 4
/* 8084EBAC  38 C0 01 00 */	li r6, 0x100
/* 8084EBB0  38 E0 00 80 */	li r7, 0x80
/* 8084EBB4  4B A2 19 8C */	b cLib_addCalcAngleS__FPsssss
/* 8084EBB8  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 8084EBBC  38 80 00 00 */	li r4, 0
/* 8084EBC0  38 A0 00 04 */	li r5, 4
/* 8084EBC4  38 C0 01 00 */	li r6, 0x100
/* 8084EBC8  38 E0 00 80 */	li r7, 0x80
/* 8084EBCC  4B A2 19 74 */	b cLib_addCalcAngleS__FPsssss
/* 8084EBD0  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 8084EBD4  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 8084EBD8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8084EBDC  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 8084EBE0  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 8084EBE4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8084EBE8  7C 64 02 14 */	add r3, r4, r0
/* 8084EBEC  C0 03 00 04 */	lfs f0, 4(r3)
/* 8084EBF0  FC 00 02 10 */	fabs f0, f0
/* 8084EBF4  FC 20 00 18 */	frsp f1, f0
/* 8084EBF8  C0 1F 06 F8 */	lfs f0, 0x6f8(r31)
/* 8084EBFC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8084EC00  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8084EC04  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 8084EC08  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8084EC0C  7C 24 04 2E */	lfsx f1, r4, r0
/* 8084EC10  C0 1F 06 F8 */	lfs f0, 0x6f8(r31)
/* 8084EC14  FC 00 00 50 */	fneg f0, f0
/* 8084EC18  EC 00 00 72 */	fmuls f0, f0, f1
/* 8084EC1C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8084EC20  C0 3F 06 F8 */	lfs f1, 0x6f8(r31)
/* 8084EC24  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 8084EC28  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8084EC2C  40 82 00 20 */	bne lbl_8084EC4C
/* 8084EC30  80 1F 07 28 */	lwz r0, 0x728(r31)
/* 8084EC34  2C 00 00 00 */	cmpwi r0, 0
/* 8084EC38  40 82 00 14 */	bne lbl_8084EC4C
/* 8084EC3C  38 00 00 03 */	li r0, 3
/* 8084EC40  90 1F 07 48 */	stw r0, 0x748(r31)
/* 8084EC44  38 60 00 01 */	li r3, 1
/* 8084EC48  48 00 04 2C */	b lbl_8084F074
lbl_8084EC4C:
/* 8084EC4C  38 61 00 90 */	addi r3, r1, 0x90
/* 8084EC50  4B 7B E1 14 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8084EC54  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8084EC58  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8084EC5C  7F A4 EB 78 */	mr r4, r29
/* 8084EC60  4B 7B D7 D4 */	b mDoMtx_YrotM__FPA4_fs
/* 8084EC64  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8084EC68  C0 5E 01 40 */	lfs f2, 0x140(r30)
/* 8084EC6C  C0 7E 01 24 */	lfs f3, 0x124(r30)
/* 8084EC70  4B 7B E1 2C */	b transM__14mDoMtx_stack_cFfff
/* 8084EC74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8084EC78  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l
/* 8084EC7C  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 8084EC80  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8084EC84  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 8084EC88  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8084EC8C  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 8084EC90  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8084EC94  38 7F 06 8C */	addi r3, r31, 0x68c
/* 8084EC98  38 81 00 84 */	addi r4, r1, 0x84
/* 8084EC9C  C0 3E 00 F0 */	lfs f1, 0xf0(r30)
/* 8084ECA0  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 8084ECA4  FC 60 10 90 */	fmr f3, f2
/* 8084ECA8  4B A2 0E 10 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8084ECAC  38 61 00 90 */	addi r3, r1, 0x90
/* 8084ECB0  4B 7B E0 B4 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8084ECB4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8084ECB8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8084ECBC  7F A4 EB 78 */	mr r4, r29
/* 8084ECC0  4B 7B D7 74 */	b mDoMtx_YrotM__FPA4_fs
/* 8084ECC4  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 8084ECC8  C0 5E 00 74 */	lfs f2, 0x74(r30)
/* 8084ECCC  C0 7E 00 20 */	lfs f3, 0x20(r30)
/* 8084ECD0  4B 7B E0 CC */	b transM__14mDoMtx_stack_cFfff
/* 8084ECD4  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 8084ECD8  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8084ECDC  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 8084ECE0  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8084ECE4  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 8084ECE8  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8084ECEC  38 7F 06 98 */	addi r3, r31, 0x698
/* 8084ECF0  38 81 00 84 */	addi r4, r1, 0x84
/* 8084ECF4  C0 3E 00 F0 */	lfs f1, 0xf0(r30)
/* 8084ECF8  C0 5E 00 DC */	lfs f2, 0xdc(r30)
/* 8084ECFC  C0 7E 00 38 */	lfs f3, 0x38(r30)
/* 8084ED00  4B A2 0D B8 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8084ED04  C0 1F 06 8C */	lfs f0, 0x68c(r31)
/* 8084ED08  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8084ED0C  C0 1F 06 90 */	lfs f0, 0x690(r31)
/* 8084ED10  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8084ED14  C0 1F 06 94 */	lfs f0, 0x694(r31)
/* 8084ED18  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8084ED1C  C0 1F 06 98 */	lfs f0, 0x698(r31)
/* 8084ED20  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8084ED24  C0 1F 06 9C */	lfs f0, 0x69c(r31)
/* 8084ED28  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8084ED2C  C0 1F 06 A0 */	lfs f0, 0x6a0(r31)
/* 8084ED30  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8084ED34  4B 93 29 0C */	b dCam_getBody__Fv
/* 8084ED38  38 81 00 60 */	addi r4, r1, 0x60
/* 8084ED3C  38 A1 00 54 */	addi r5, r1, 0x54
/* 8084ED40  C0 3F 06 D4 */	lfs f1, 0x6d4(r31)
/* 8084ED44  38 C0 00 00 */	li r6, 0
/* 8084ED48  4B 93 1D 98 */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 8084ED4C  48 00 03 24 */	b lbl_8084F070
lbl_8084ED50:
/* 8084ED50  88 1F 06 E4 */	lbz r0, 0x6e4(r31)
/* 8084ED54  28 00 00 00 */	cmplwi r0, 0
/* 8084ED58  40 82 00 5C */	bne lbl_8084EDB4
/* 8084ED5C  80 1F 07 3C */	lwz r0, 0x73c(r31)
/* 8084ED60  2C 00 00 00 */	cmpwi r0, 0
/* 8084ED64  40 82 00 28 */	bne lbl_8084ED8C
/* 8084ED68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8084ED6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8084ED70  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8084ED74  7F E4 FB 78 */	mr r4, r31
/* 8084ED78  3C A0 80 85 */	lis r5, DemoSkipCallBack__8daKago_cFPvi@ha
/* 8084ED7C  38 A5 AA 64 */	addi r5, r5, DemoSkipCallBack__8daKago_cFPvi@l
/* 8084ED80  38 C0 00 04 */	li r6, 4
/* 8084ED84  4B 7F 3B 90 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 8084ED88  48 00 00 2C */	b lbl_8084EDB4
lbl_8084ED8C:
/* 8084ED8C  2C 00 00 02 */	cmpwi r0, 2
/* 8084ED90  40 82 00 24 */	bne lbl_8084EDB4
/* 8084ED94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8084ED98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8084ED9C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8084EDA0  7F E4 FB 78 */	mr r4, r31
/* 8084EDA4  3C A0 80 85 */	lis r5, DemoSkipCallBack__8daKago_cFPvi@ha
/* 8084EDA8  38 A5 AA 64 */	addi r5, r5, DemoSkipCallBack__8daKago_cFPvi@l
/* 8084EDAC  38 C0 00 05 */	li r6, 5
/* 8084EDB0  4B 7F 3B 64 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
lbl_8084EDB4:
/* 8084EDB4  38 61 00 78 */	addi r3, r1, 0x78
/* 8084EDB8  4B 7B DF AC */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8084EDBC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8084EDC0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8084EDC4  7F A4 EB 78 */	mr r4, r29
/* 8084EDC8  4B 7B D6 6C */	b mDoMtx_YrotM__FPA4_fs
/* 8084EDCC  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8084EDD0  C0 5E 00 40 */	lfs f2, 0x40(r30)
/* 8084EDD4  FC 60 08 90 */	fmr f3, f1
/* 8084EDD8  4B 7B DF C4 */	b transM__14mDoMtx_stack_cFfff
/* 8084EDDC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8084EDE0  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l
/* 8084EDE4  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 8084EDE8  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8084EDEC  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 8084EDF0  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8084EDF4  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 8084EDF8  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8084EDFC  38 7F 06 8C */	addi r3, r31, 0x68c
/* 8084EE00  38 81 00 84 */	addi r4, r1, 0x84
/* 8084EE04  C0 3E 00 F0 */	lfs f1, 0xf0(r30)
/* 8084EE08  C0 5E 00 DC */	lfs f2, 0xdc(r30)
/* 8084EE0C  C0 7E 00 38 */	lfs f3, 0x38(r30)
/* 8084EE10  4B A2 0C A8 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8084EE14  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8084EE18  4B 7B DF 4C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8084EE1C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8084EE20  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8084EE24  7F A4 EB 78 */	mr r4, r29
/* 8084EE28  4B 7B D6 0C */	b mDoMtx_YrotM__FPA4_fs
/* 8084EE2C  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 8084EE30  C0 5E 00 10 */	lfs f2, 0x10(r30)
/* 8084EE34  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 8084EE38  4B 7B DF 64 */	b transM__14mDoMtx_stack_cFfff
/* 8084EE3C  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 8084EE40  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8084EE44  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 8084EE48  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8084EE4C  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 8084EE50  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8084EE54  38 7F 06 98 */	addi r3, r31, 0x698
/* 8084EE58  38 81 00 84 */	addi r4, r1, 0x84
/* 8084EE5C  C0 3E 00 F0 */	lfs f1, 0xf0(r30)
/* 8084EE60  C0 5E 00 DC */	lfs f2, 0xdc(r30)
/* 8084EE64  C0 7E 00 38 */	lfs f3, 0x38(r30)
/* 8084EE68  4B A2 0C 50 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8084EE6C  38 7F 06 D4 */	addi r3, r31, 0x6d4
/* 8084EE70  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 8084EE74  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 8084EE78  4B A2 18 C8 */	b cLib_chaseF__FPfff
/* 8084EE7C  C0 1F 06 8C */	lfs f0, 0x68c(r31)
/* 8084EE80  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8084EE84  C0 1F 06 90 */	lfs f0, 0x690(r31)
/* 8084EE88  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8084EE8C  C0 1F 06 94 */	lfs f0, 0x694(r31)
/* 8084EE90  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8084EE94  C0 1F 06 98 */	lfs f0, 0x698(r31)
/* 8084EE98  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8084EE9C  C0 1F 06 9C */	lfs f0, 0x69c(r31)
/* 8084EEA0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8084EEA4  C0 1F 06 A0 */	lfs f0, 0x6a0(r31)
/* 8084EEA8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8084EEAC  4B 93 27 94 */	b dCam_getBody__Fv
/* 8084EEB0  38 81 00 48 */	addi r4, r1, 0x48
/* 8084EEB4  38 A1 00 3C */	addi r5, r1, 0x3c
/* 8084EEB8  C0 3F 06 D4 */	lfs f1, 0x6d4(r31)
/* 8084EEBC  38 C0 00 00 */	li r6, 0
/* 8084EEC0  4B 93 1C 20 */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 8084EEC4  38 7F 04 DC */	addi r3, r31, 0x4dc
/* 8084EEC8  38 80 00 00 */	li r4, 0
/* 8084EECC  38 A0 00 04 */	li r5, 4
/* 8084EED0  38 C0 04 00 */	li r6, 0x400
/* 8084EED4  38 E0 01 00 */	li r7, 0x100
/* 8084EED8  4B A2 16 68 */	b cLib_addCalcAngleS__FPsssss
/* 8084EEDC  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 8084EEE0  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 8084EEE4  80 1F 07 28 */	lwz r0, 0x728(r31)
/* 8084EEE8  2C 00 00 00 */	cmpwi r0, 0
/* 8084EEEC  40 82 01 84 */	bne lbl_8084F070
/* 8084EEF0  38 00 00 04 */	li r0, 4
/* 8084EEF4  90 1F 07 48 */	stw r0, 0x748(r31)
/* 8084EEF8  38 60 00 01 */	li r3, 1
/* 8084EEFC  48 00 01 78 */	b lbl_8084F074
lbl_8084EF00:
/* 8084EF00  88 1F 06 E4 */	lbz r0, 0x6e4(r31)
/* 8084EF04  28 00 00 00 */	cmplwi r0, 0
/* 8084EF08  40 82 00 5C */	bne lbl_8084EF64
/* 8084EF0C  80 1F 07 3C */	lwz r0, 0x73c(r31)
/* 8084EF10  2C 00 00 00 */	cmpwi r0, 0
/* 8084EF14  40 82 00 28 */	bne lbl_8084EF3C
/* 8084EF18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8084EF1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8084EF20  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8084EF24  7F E4 FB 78 */	mr r4, r31
/* 8084EF28  3C A0 80 85 */	lis r5, DemoSkipCallBack__8daKago_cFPvi@ha
/* 8084EF2C  38 A5 AA 64 */	addi r5, r5, DemoSkipCallBack__8daKago_cFPvi@l
/* 8084EF30  38 C0 00 04 */	li r6, 4
/* 8084EF34  4B 7F 39 E0 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 8084EF38  48 00 00 2C */	b lbl_8084EF64
lbl_8084EF3C:
/* 8084EF3C  2C 00 00 02 */	cmpwi r0, 2
/* 8084EF40  40 82 00 24 */	bne lbl_8084EF64
/* 8084EF44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8084EF48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8084EF4C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8084EF50  7F E4 FB 78 */	mr r4, r31
/* 8084EF54  3C A0 80 85 */	lis r5, DemoSkipCallBack__8daKago_cFPvi@ha
/* 8084EF58  38 A5 AA 64 */	addi r5, r5, DemoSkipCallBack__8daKago_cFPvi@l
/* 8084EF5C  38 C0 00 06 */	li r6, 6
/* 8084EF60  4B 7F 39 B4 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
lbl_8084EF64:
/* 8084EF64  7F E3 FB 78 */	mr r3, r31
/* 8084EF68  48 00 01 35 */	bl PerchDemoAwayForward__8daKago_cFv
/* 8084EF6C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8084EF70  41 82 01 00 */	beq lbl_8084F070
/* 8084EF74  38 60 00 01 */	li r3, 1
/* 8084EF78  48 00 00 FC */	b lbl_8084F074
lbl_8084EF7C:
/* 8084EF7C  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8084EF80  C0 3F 06 CC */	lfs f1, 0x6cc(r31)
/* 8084EF84  EF E0 00 72 */	fmuls f31, f0, f1
/* 8084EF88  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 8084EF8C  EF C0 00 72 */	fmuls f30, f0, f1
/* 8084EF90  38 7F 06 CC */	addi r3, r31, 0x6cc
/* 8084EF94  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8084EF98  C0 5E 01 44 */	lfs f2, 0x144(r30)
/* 8084EF9C  4B A2 17 A4 */	b cLib_chaseF__FPfff
/* 8084EFA0  38 7F 06 8C */	addi r3, r31, 0x68c
/* 8084EFA4  38 81 00 78 */	addi r4, r1, 0x78
/* 8084EFA8  C0 3E 00 F0 */	lfs f1, 0xf0(r30)
/* 8084EFAC  FC 40 F8 90 */	fmr f2, f31
/* 8084EFB0  FC 60 F0 90 */	fmr f3, f30
/* 8084EFB4  4B A2 0B 04 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8084EFB8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8084EFBC  4B 7B DD A8 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8084EFC0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8084EFC4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8084EFC8  7F A4 EB 78 */	mr r4, r29
/* 8084EFCC  4B 7B D4 68 */	b mDoMtx_YrotM__FPA4_fs
/* 8084EFD0  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8084EFD4  C0 5E 00 10 */	lfs f2, 0x10(r30)
/* 8084EFD8  C0 7E 01 48 */	lfs f3, 0x148(r30)
/* 8084EFDC  4B 7B DD C0 */	b transM__14mDoMtx_stack_cFfff
/* 8084EFE0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8084EFE4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8084EFE8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8084EFEC  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8084EFF0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8084EFF4  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8084EFF8  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8084EFFC  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8084F000  38 7F 06 98 */	addi r3, r31, 0x698
/* 8084F004  38 81 00 84 */	addi r4, r1, 0x84
/* 8084F008  C0 3E 00 F0 */	lfs f1, 0xf0(r30)
/* 8084F00C  FC 40 F8 90 */	fmr f2, f31
/* 8084F010  FC 60 F0 90 */	fmr f3, f30
/* 8084F014  4B A2 0A A4 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8084F018  38 7F 06 D4 */	addi r3, r31, 0x6d4
/* 8084F01C  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 8084F020  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 8084F024  4B A2 17 1C */	b cLib_chaseF__FPfff
/* 8084F028  C0 1F 06 8C */	lfs f0, 0x68c(r31)
/* 8084F02C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8084F030  C0 1F 06 90 */	lfs f0, 0x690(r31)
/* 8084F034  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8084F038  C0 1F 06 94 */	lfs f0, 0x694(r31)
/* 8084F03C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8084F040  C0 1F 06 98 */	lfs f0, 0x698(r31)
/* 8084F044  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8084F048  C0 1F 06 9C */	lfs f0, 0x69c(r31)
/* 8084F04C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8084F050  C0 1F 06 A0 */	lfs f0, 0x6a0(r31)
/* 8084F054  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8084F058  4B 93 25 E8 */	b dCam_getBody__Fv
/* 8084F05C  38 81 00 30 */	addi r4, r1, 0x30
/* 8084F060  38 A1 00 24 */	addi r5, r1, 0x24
/* 8084F064  C0 3F 06 D4 */	lfs f1, 0x6d4(r31)
/* 8084F068  38 C0 00 00 */	li r6, 0
/* 8084F06C  4B 93 1A 74 */	b Set__9dCamera_cF4cXyz4cXyzfs
lbl_8084F070:
/* 8084F070  38 60 00 00 */	li r3, 0
lbl_8084F074:
/* 8084F074  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 8084F078  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 8084F07C  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, 0 /* qr0 */
/* 8084F080  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 8084F084  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8084F088  4B B1 31 9C */	b _restgpr_28
/* 8084F08C  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 8084F090  7C 08 03 A6 */	mtlr r0
/* 8084F094  38 21 00 D0 */	addi r1, r1, 0xd0
/* 8084F098  4E 80 00 20 */	blr 
