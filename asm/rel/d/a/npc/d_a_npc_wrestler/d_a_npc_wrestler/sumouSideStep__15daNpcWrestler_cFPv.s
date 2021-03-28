lbl_80B37270:
/* 80B37270  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80B37274  7C 08 02 A6 */	mflr r0
/* 80B37278  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80B3727C  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80B37280  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 80B37284  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80B37288  4B 82 AF 40 */	b _savegpr_24
/* 80B3728C  7C 7E 1B 78 */	mr r30, r3
/* 80B37290  3C 60 80 B4 */	lis r3, m__21daNpcWrestler_Param_c@ha
/* 80B37294  3B E3 16 DC */	addi r31, r3, m__21daNpcWrestler_Param_c@l
/* 80B37298  3C 60 80 B4 */	lis r3, cNullVec__6Z2Calc@ha
/* 80B3729C  3B 63 1D F8 */	addi r27, r3, cNullVec__6Z2Calc@l
/* 80B372A0  A0 1E 0E 96 */	lhz r0, 0xe96(r30)
/* 80B372A4  2C 00 00 02 */	cmpwi r0, 2
/* 80B372A8  41 82 01 BC */	beq lbl_80B37464
/* 80B372AC  40 80 00 10 */	bge lbl_80B372BC
/* 80B372B0  2C 00 00 00 */	cmpwi r0, 0
/* 80B372B4  41 82 00 14 */	beq lbl_80B372C8
/* 80B372B8  48 00 06 18 */	b lbl_80B378D0
lbl_80B372BC:
/* 80B372BC  2C 00 00 04 */	cmpwi r0, 4
/* 80B372C0  40 80 06 10 */	bge lbl_80B378D0
/* 80B372C4  48 00 06 04 */	b lbl_80B378C8
lbl_80B372C8:
/* 80B372C8  80 7E 0B DC */	lwz r3, 0xbdc(r30)
/* 80B372CC  A8 03 00 20 */	lha r0, 0x20(r3)
/* 80B372D0  90 1E 0E 80 */	stw r0, 0xe80(r30)
/* 80B372D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B372D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B372DC  83 23 5D AC */	lwz r25, 0x5dac(r3)
/* 80B372E0  38 79 05 F8 */	addi r3, r25, 0x5f8
/* 80B372E4  4B 4D 5A 80 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80B372E8  3B 60 00 00 */	li r27, 0
/* 80B372EC  7F 7D DB 78 */	mr r29, r27
/* 80B372F0  3B 99 05 F8 */	addi r28, r25, 0x5f8
/* 80B372F4  C3 FF 01 B8 */	lfs f31, 0x1b8(r31)
/* 80B372F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B372FC  3B 43 D4 70 */	addi r26, r3, now__14mDoMtx_stack_c@l
/* 80B37300  3B 21 00 08 */	addi r25, r1, 8
lbl_80B37304:
/* 80B37304  2C 1B 00 00 */	cmpwi r27, 0
/* 80B37308  40 82 00 14 */	bne lbl_80B3731C
/* 80B3730C  80 7E 0B DC */	lwz r3, 0xbdc(r30)
/* 80B37310  A8 03 00 22 */	lha r0, 0x22(r3)
/* 80B37314  B0 1E 0E 94 */	sth r0, 0xe94(r30)
/* 80B37318  48 00 00 14 */	b lbl_80B3732C
lbl_80B3731C:
/* 80B3731C  80 7E 0B DC */	lwz r3, 0xbdc(r30)
/* 80B37320  A8 03 00 22 */	lha r0, 0x22(r3)
/* 80B37324  7C 00 00 D0 */	neg r0, r0
/* 80B37328  B0 1E 0E 94 */	sth r0, 0xe94(r30)
lbl_80B3732C:
/* 80B3732C  7F 83 E3 78 */	mr r3, r28
/* 80B37330  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80B37334  4B 73 98 D0 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B37338  A8 9E 0E 94 */	lha r4, 0xe94(r30)
/* 80B3733C  80 BE 0B DC */	lwz r5, 0xbdc(r30)
/* 80B37340  A8 05 00 20 */	lha r0, 0x20(r5)
/* 80B37344  7C 04 01 D6 */	mullw r0, r4, r0
/* 80B37348  7C 03 02 14 */	add r0, r3, r0
/* 80B3734C  7C 18 07 34 */	extsh r24, r0
/* 80B37350  C0 05 00 18 */	lfs f0, 0x18(r5)
/* 80B37354  D3 E1 00 34 */	stfs f31, 0x34(r1)
/* 80B37358  D3 E1 00 38 */	stfs f31, 0x38(r1)
/* 80B3735C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B37360  4B 4D 59 68 */	b push__14mDoMtx_stack_cFv
/* 80B37364  7F 43 D3 78 */	mr r3, r26
/* 80B37368  7F 04 C3 78 */	mr r4, r24
/* 80B3736C  4B 4D 50 C8 */	b mDoMtx_YrotM__FPA4_fs
/* 80B37370  7F 43 D3 78 */	mr r3, r26
/* 80B37374  38 81 00 34 */	addi r4, r1, 0x34
/* 80B37378  7C 85 23 78 */	mr r5, r4
/* 80B3737C  4B 80 F9 F0 */	b PSMTXMultVec
/* 80B37380  4B 4D 59 94 */	b pop__14mDoMtx_stack_cFv
/* 80B37384  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80B37388  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B3738C  D3 E1 00 14 */	stfs f31, 0x14(r1)
/* 80B37390  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80B37394  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B37398  C0 3E 0D F8 */	lfs f1, 0xdf8(r30)
/* 80B3739C  C0 1E 0D F0 */	lfs f0, 0xdf0(r30)
/* 80B373A0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B373A4  D3 E1 00 20 */	stfs f31, 0x20(r1)
/* 80B373A8  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80B373AC  38 61 00 10 */	addi r3, r1, 0x10
/* 80B373B0  38 81 00 1C */	addi r4, r1, 0x1c
/* 80B373B4  4B 80 FF E8 */	b PSVECSquareDistance
/* 80B373B8  7C 39 ED 2E */	stfsx f1, r25, r29
/* 80B373BC  3B 7B 00 01 */	addi r27, r27, 1
/* 80B373C0  2C 1B 00 02 */	cmpwi r27, 2
/* 80B373C4  3B BD 00 04 */	addi r29, r29, 4
/* 80B373C8  41 80 FF 3C */	blt lbl_80B37304
/* 80B373CC  C0 21 00 08 */	lfs f1, 8(r1)
/* 80B373D0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80B373D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B373D8  40 81 00 18 */	ble lbl_80B373F0
/* 80B373DC  80 7E 0B DC */	lwz r3, 0xbdc(r30)
/* 80B373E0  A8 03 00 22 */	lha r0, 0x22(r3)
/* 80B373E4  7C 00 00 D0 */	neg r0, r0
/* 80B373E8  7C 00 07 34 */	extsh r0, r0
/* 80B373EC  48 00 00 0C */	b lbl_80B373F8
lbl_80B373F0:
/* 80B373F0  80 7E 0B DC */	lwz r3, 0xbdc(r30)
/* 80B373F4  A8 03 00 22 */	lha r0, 0x22(r3)
lbl_80B373F8:
/* 80B373F8  B0 1E 0E 94 */	sth r0, 0xe94(r30)
/* 80B373FC  A8 1E 0E 94 */	lha r0, 0xe94(r30)
/* 80B37400  2C 00 00 00 */	cmpwi r0, 0
/* 80B37404  40 81 00 28 */	ble lbl_80B3742C
/* 80B37408  7F C3 F3 78 */	mr r3, r30
/* 80B3740C  38 80 00 0B */	li r4, 0xb
/* 80B37410  C0 3F 01 C8 */	lfs f1, 0x1c8(r31)
/* 80B37414  38 A0 00 00 */	li r5, 0
/* 80B37418  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80B3741C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B37420  7D 89 03 A6 */	mtctr r12
/* 80B37424  4E 80 04 21 */	bctrl 
/* 80B37428  48 00 00 24 */	b lbl_80B3744C
lbl_80B3742C:
/* 80B3742C  7F C3 F3 78 */	mr r3, r30
/* 80B37430  38 80 00 0A */	li r4, 0xa
/* 80B37434  C0 3F 01 C8 */	lfs f1, 0x1c8(r31)
/* 80B37438  38 A0 00 00 */	li r5, 0
/* 80B3743C  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80B37440  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B37444  7D 89 03 A6 */	mtctr r12
/* 80B37448  4E 80 04 21 */	bctrl 
lbl_80B3744C:
/* 80B3744C  C0 1F 05 EC */	lfs f0, 0x5ec(r31)
/* 80B37450  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80B37454  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B37458  38 00 00 02 */	li r0, 2
/* 80B3745C  B0 1E 0E 96 */	sth r0, 0xe96(r30)
/* 80B37460  48 00 04 70 */	b lbl_80B378D0
lbl_80B37464:
/* 80B37464  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B37468  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 80B3746C  83 3C 5D AC */	lwz r25, 0x5dac(r28)
/* 80B37470  80 7E 0B DC */	lwz r3, 0xbdc(r30)
/* 80B37474  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 80B37478  C0 1F 01 B8 */	lfs f0, 0x1b8(r31)
/* 80B3747C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B37480  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B37484  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80B37488  38 79 05 F8 */	addi r3, r25, 0x5f8
/* 80B3748C  4B 4D 58 D8 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80B37490  38 79 05 F8 */	addi r3, r25, 0x5f8
/* 80B37494  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80B37498  4B 73 97 6C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B3749C  A8 1E 0E 94 */	lha r0, 0xe94(r30)
/* 80B374A0  7C 00 1A 14 */	add r0, r0, r3
/* 80B374A4  7C 04 07 34 */	extsh r4, r0
/* 80B374A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B374AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B374B0  4B 4D 4F 84 */	b mDoMtx_YrotM__FPA4_fs
/* 80B374B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B374B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B374BC  38 81 00 28 */	addi r4, r1, 0x28
/* 80B374C0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80B374C4  4B 80 F8 A8 */	b PSMTXMultVec
/* 80B374C8  7F C3 F3 78 */	mr r3, r30
/* 80B374CC  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80B374D0  4B 4E 32 40 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B374D4  7C 64 1B 78 */	mr r4, r3
/* 80B374D8  38 7E 08 F2 */	addi r3, r30, 0x8f2
/* 80B374DC  80 BE 0B D8 */	lwz r5, 0xbd8(r30)
/* 80B374E0  A8 A5 00 78 */	lha r5, 0x78(r5)
/* 80B374E4  38 C0 40 00 */	li r6, 0x4000
/* 80B374E8  38 E0 00 40 */	li r7, 0x40
/* 80B374EC  4B 73 90 54 */	b cLib_addCalcAngleS__FPsssss
/* 80B374F0  7F C3 F3 78 */	mr r3, r30
/* 80B374F4  A8 9E 08 F2 */	lha r4, 0x8f2(r30)
/* 80B374F8  4B 61 CD 58 */	b setAngle__8daNpcF_cFs
/* 80B374FC  88 7E 0E 9B */	lbz r3, 0xe9b(r30)
/* 80B37500  28 03 00 00 */	cmplwi r3, 0
/* 80B37504  38 00 00 18 */	li r0, 0x18
/* 80B37508  40 82 00 08 */	bne lbl_80B37510
/* 80B3750C  38 00 00 1A */	li r0, 0x1a
lbl_80B37510:
/* 80B37510  28 03 00 00 */	cmplwi r3, 0
/* 80B37514  3B A0 00 1B */	li r29, 0x1b
/* 80B37518  40 82 00 08 */	bne lbl_80B37520
/* 80B3751C  3B A0 00 1E */	li r29, 0x1e
lbl_80B37520:
/* 80B37520  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80B37524  80 63 00 04 */	lwz r3, 4(r3)
/* 80B37528  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B3752C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B37530  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80B37534  7C 63 02 14 */	add r3, r3, r0
/* 80B37538  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80B3753C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80B37540  4B 80 EF 70 */	b PSMTXCopy
/* 80B37544  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B37548  3B 23 D4 70 */	addi r25, r3, now__14mDoMtx_stack_c@l
/* 80B3754C  C0 19 00 0C */	lfs f0, 0xc(r25)
/* 80B37550  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80B37554  C0 19 00 1C */	lfs f0, 0x1c(r25)
/* 80B37558  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80B3755C  C0 19 00 2C */	lfs f0, 0x2c(r25)
/* 80B37560  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80B37564  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80B37568  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80B3756C  38 7E 0D E8 */	addi r3, r30, 0xde8
/* 80B37570  38 80 00 00 */	li r4, 0
/* 80B37574  38 A1 00 70 */	addi r5, r1, 0x70
/* 80B37578  38 DE 08 F0 */	addi r6, r30, 0x8f0
/* 80B3757C  C0 3F 05 F0 */	lfs f1, 0x5f0(r31)
/* 80B37580  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80B37584  39 00 00 00 */	li r8, 0
/* 80B37588  4B 4E 5A 98 */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 80B3758C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B37590  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
/* 80B37594  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 80B37598  38 63 02 10 */	addi r3, r3, 0x210
/* 80B3759C  80 9E 0D E8 */	lwz r4, 0xde8(r30)
/* 80B375A0  4B 51 43 78 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80B375A4  28 03 00 00 */	cmplwi r3, 0
/* 80B375A8  41 82 00 0C */	beq lbl_80B375B4
/* 80B375AC  38 00 00 01 */	li r0, 1
/* 80B375B0  98 03 00 56 */	stb r0, 0x56(r3)
lbl_80B375B4:
/* 80B375B4  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80B375B8  80 63 00 04 */	lwz r3, 4(r3)
/* 80B375BC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B375C0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B375C4  1C 1D 00 30 */	mulli r0, r29, 0x30
/* 80B375C8  7C 63 02 14 */	add r3, r3, r0
/* 80B375CC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80B375D0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80B375D4  4B 80 EE DC */	b PSMTXCopy
/* 80B375D8  C0 19 00 0C */	lfs f0, 0xc(r25)
/* 80B375DC  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80B375E0  C0 19 00 1C */	lfs f0, 0x1c(r25)
/* 80B375E4  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80B375E8  C0 19 00 2C */	lfs f0, 0x2c(r25)
/* 80B375EC  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80B375F0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80B375F4  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80B375F8  38 7E 0D EC */	addi r3, r30, 0xdec
/* 80B375FC  38 80 00 00 */	li r4, 0
/* 80B37600  38 A1 00 70 */	addi r5, r1, 0x70
/* 80B37604  38 DE 08 F0 */	addi r6, r30, 0x8f0
/* 80B37608  C0 3F 05 F0 */	lfs f1, 0x5f0(r31)
/* 80B3760C  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80B37610  39 00 00 00 */	li r8, 0
/* 80B37614  4B 4E 5A 0C */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 80B37618  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 80B3761C  38 63 02 10 */	addi r3, r3, 0x210
/* 80B37620  80 9E 0D EC */	lwz r4, 0xdec(r30)
/* 80B37624  4B 51 42 F4 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80B37628  28 03 00 00 */	cmplwi r3, 0
/* 80B3762C  41 82 00 0C */	beq lbl_80B37638
/* 80B37630  38 00 00 01 */	li r0, 1
/* 80B37634  98 03 00 56 */	stb r0, 0x56(r3)
lbl_80B37638:
/* 80B37638  80 7E 0E 80 */	lwz r3, 0xe80(r30)
/* 80B3763C  38 03 FF FF */	addi r0, r3, -1
/* 80B37640  90 1E 0E 80 */	stw r0, 0xe80(r30)
/* 80B37644  7F C3 F3 78 */	mr r3, r30
/* 80B37648  4B FF C3 A5 */	bl checkOutOfArenaP__15daNpcWrestler_cFv
/* 80B3764C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B37650  41 82 00 90 */	beq lbl_80B376E0
/* 80B37654  80 7B 0C 98 */	lwz r3, 0xc98(r27)
/* 80B37658  80 1B 0C 9C */	lwz r0, 0xc9c(r27)
/* 80B3765C  90 61 00 64 */	stw r3, 0x64(r1)
/* 80B37660  90 01 00 68 */	stw r0, 0x68(r1)
/* 80B37664  80 1B 0C A0 */	lwz r0, 0xca0(r27)
/* 80B37668  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80B3766C  38 00 00 03 */	li r0, 3
/* 80B37670  B0 1E 0E 96 */	sth r0, 0xe96(r30)
/* 80B37674  38 7E 0D CC */	addi r3, r30, 0xdcc
/* 80B37678  4B 82 A9 A0 */	b __ptmf_test
/* 80B3767C  2C 03 00 00 */	cmpwi r3, 0
/* 80B37680  41 82 00 18 */	beq lbl_80B37698
/* 80B37684  7F C3 F3 78 */	mr r3, r30
/* 80B37688  38 80 00 00 */	li r4, 0
/* 80B3768C  39 9E 0D CC */	addi r12, r30, 0xdcc
/* 80B37690  4B 82 A9 F4 */	b __ptmf_scall
/* 80B37694  60 00 00 00 */	nop 
lbl_80B37698:
/* 80B37698  38 00 00 00 */	li r0, 0
/* 80B3769C  B0 1E 0E 96 */	sth r0, 0xe96(r30)
/* 80B376A0  80 61 00 64 */	lwz r3, 0x64(r1)
/* 80B376A4  80 01 00 68 */	lwz r0, 0x68(r1)
/* 80B376A8  90 7E 0D CC */	stw r3, 0xdcc(r30)
/* 80B376AC  90 1E 0D D0 */	stw r0, 0xdd0(r30)
/* 80B376B0  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 80B376B4  90 1E 0D D4 */	stw r0, 0xdd4(r30)
/* 80B376B8  38 7E 0D CC */	addi r3, r30, 0xdcc
/* 80B376BC  4B 82 A9 5C */	b __ptmf_test
/* 80B376C0  2C 03 00 00 */	cmpwi r3, 0
/* 80B376C4  41 82 02 0C */	beq lbl_80B378D0
/* 80B376C8  7F C3 F3 78 */	mr r3, r30
/* 80B376CC  38 80 00 00 */	li r4, 0
/* 80B376D0  39 9E 0D CC */	addi r12, r30, 0xdcc
/* 80B376D4  4B 82 A9 B0 */	b __ptmf_scall
/* 80B376D8  60 00 00 00 */	nop 
/* 80B376DC  48 00 01 F4 */	b lbl_80B378D0
lbl_80B376E0:
/* 80B376E0  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 80B376E4  88 03 05 6A */	lbz r0, 0x56a(r3)
/* 80B376E8  28 00 00 13 */	cmplwi r0, 0x13
/* 80B376EC  40 82 00 90 */	bne lbl_80B3777C
/* 80B376F0  80 7B 0C A4 */	lwz r3, 0xca4(r27)
/* 80B376F4  80 1B 0C A8 */	lwz r0, 0xca8(r27)
/* 80B376F8  90 61 00 58 */	stw r3, 0x58(r1)
/* 80B376FC  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80B37700  80 1B 0C AC */	lwz r0, 0xcac(r27)
/* 80B37704  90 01 00 60 */	stw r0, 0x60(r1)
/* 80B37708  38 00 00 03 */	li r0, 3
/* 80B3770C  B0 1E 0E 96 */	sth r0, 0xe96(r30)
/* 80B37710  38 7E 0D CC */	addi r3, r30, 0xdcc
/* 80B37714  4B 82 A9 04 */	b __ptmf_test
/* 80B37718  2C 03 00 00 */	cmpwi r3, 0
/* 80B3771C  41 82 00 18 */	beq lbl_80B37734
/* 80B37720  7F C3 F3 78 */	mr r3, r30
/* 80B37724  38 80 00 00 */	li r4, 0
/* 80B37728  39 9E 0D CC */	addi r12, r30, 0xdcc
/* 80B3772C  4B 82 A9 58 */	b __ptmf_scall
/* 80B37730  60 00 00 00 */	nop 
lbl_80B37734:
/* 80B37734  38 00 00 00 */	li r0, 0
/* 80B37738  B0 1E 0E 96 */	sth r0, 0xe96(r30)
/* 80B3773C  80 61 00 58 */	lwz r3, 0x58(r1)
/* 80B37740  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80B37744  90 7E 0D CC */	stw r3, 0xdcc(r30)
/* 80B37748  90 1E 0D D0 */	stw r0, 0xdd0(r30)
/* 80B3774C  80 01 00 60 */	lwz r0, 0x60(r1)
/* 80B37750  90 1E 0D D4 */	stw r0, 0xdd4(r30)
/* 80B37754  38 7E 0D CC */	addi r3, r30, 0xdcc
/* 80B37758  4B 82 A8 C0 */	b __ptmf_test
/* 80B3775C  2C 03 00 00 */	cmpwi r3, 0
/* 80B37760  41 82 01 70 */	beq lbl_80B378D0
/* 80B37764  7F C3 F3 78 */	mr r3, r30
/* 80B37768  38 80 00 00 */	li r4, 0
/* 80B3776C  39 9E 0D CC */	addi r12, r30, 0xdcc
/* 80B37770  4B 82 A9 14 */	b __ptmf_scall
/* 80B37774  60 00 00 00 */	nop 
/* 80B37778  48 00 01 58 */	b lbl_80B378D0
lbl_80B3777C:
/* 80B3777C  80 1E 0E 80 */	lwz r0, 0xe80(r30)
/* 80B37780  2C 00 00 00 */	cmpwi r0, 0
/* 80B37784  40 80 01 4C */	bge lbl_80B378D0
/* 80B37788  80 7E 0B D8 */	lwz r3, 0xbd8(r30)
/* 80B3778C  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80B37790  D0 1E 0E 8C */	stfs f0, 0xe8c(r30)
/* 80B37794  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 80B37798  88 03 05 6A */	lbz r0, 0x56a(r3)
/* 80B3779C  28 00 00 11 */	cmplwi r0, 0x11
/* 80B377A0  40 82 00 9C */	bne lbl_80B3783C
/* 80B377A4  80 7B 0C B0 */	lwz r3, 0xcb0(r27)
/* 80B377A8  80 1B 0C B4 */	lwz r0, 0xcb4(r27)
/* 80B377AC  90 61 00 4C */	stw r3, 0x4c(r1)
/* 80B377B0  90 01 00 50 */	stw r0, 0x50(r1)
/* 80B377B4  80 1B 0C B8 */	lwz r0, 0xcb8(r27)
/* 80B377B8  90 01 00 54 */	stw r0, 0x54(r1)
/* 80B377BC  38 00 00 03 */	li r0, 3
/* 80B377C0  B0 1E 0E 96 */	sth r0, 0xe96(r30)
/* 80B377C4  38 7E 0D CC */	addi r3, r30, 0xdcc
/* 80B377C8  4B 82 A8 50 */	b __ptmf_test
/* 80B377CC  2C 03 00 00 */	cmpwi r3, 0
/* 80B377D0  41 82 00 18 */	beq lbl_80B377E8
/* 80B377D4  7F C3 F3 78 */	mr r3, r30
/* 80B377D8  38 80 00 00 */	li r4, 0
/* 80B377DC  39 9E 0D CC */	addi r12, r30, 0xdcc
/* 80B377E0  4B 82 A8 A4 */	b __ptmf_scall
/* 80B377E4  60 00 00 00 */	nop 
lbl_80B377E8:
/* 80B377E8  38 00 00 00 */	li r0, 0
/* 80B377EC  B0 1E 0E 96 */	sth r0, 0xe96(r30)
/* 80B377F0  80 61 00 4C */	lwz r3, 0x4c(r1)
/* 80B377F4  80 01 00 50 */	lwz r0, 0x50(r1)
/* 80B377F8  90 7E 0D CC */	stw r3, 0xdcc(r30)
/* 80B377FC  90 1E 0D D0 */	stw r0, 0xdd0(r30)
/* 80B37800  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80B37804  90 1E 0D D4 */	stw r0, 0xdd4(r30)
/* 80B37808  38 7E 0D CC */	addi r3, r30, 0xdcc
/* 80B3780C  4B 82 A8 0C */	b __ptmf_test
/* 80B37810  2C 03 00 00 */	cmpwi r3, 0
/* 80B37814  41 82 00 18 */	beq lbl_80B3782C
/* 80B37818  7F C3 F3 78 */	mr r3, r30
/* 80B3781C  38 80 00 00 */	li r4, 0
/* 80B37820  39 9E 0D CC */	addi r12, r30, 0xdcc
/* 80B37824  4B 82 A8 60 */	b __ptmf_scall
/* 80B37828  60 00 00 00 */	nop 
lbl_80B3782C:
/* 80B3782C  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 80B37830  38 00 00 1B */	li r0, 0x1b
/* 80B37834  98 03 05 6A */	stb r0, 0x56a(r3)
/* 80B37838  48 00 00 98 */	b lbl_80B378D0
lbl_80B3783C:
/* 80B3783C  80 7B 0C BC */	lwz r3, 0xcbc(r27)
/* 80B37840  80 1B 0C C0 */	lwz r0, 0xcc0(r27)
/* 80B37844  90 61 00 40 */	stw r3, 0x40(r1)
/* 80B37848  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B3784C  80 1B 0C C4 */	lwz r0, 0xcc4(r27)
/* 80B37850  90 01 00 48 */	stw r0, 0x48(r1)
/* 80B37854  38 00 00 03 */	li r0, 3
/* 80B37858  B0 1E 0E 96 */	sth r0, 0xe96(r30)
/* 80B3785C  38 7E 0D CC */	addi r3, r30, 0xdcc
/* 80B37860  4B 82 A7 B8 */	b __ptmf_test
/* 80B37864  2C 03 00 00 */	cmpwi r3, 0
/* 80B37868  41 82 00 18 */	beq lbl_80B37880
/* 80B3786C  7F C3 F3 78 */	mr r3, r30
/* 80B37870  38 80 00 00 */	li r4, 0
/* 80B37874  39 9E 0D CC */	addi r12, r30, 0xdcc
/* 80B37878  4B 82 A8 0C */	b __ptmf_scall
/* 80B3787C  60 00 00 00 */	nop 
lbl_80B37880:
/* 80B37880  38 00 00 00 */	li r0, 0
/* 80B37884  B0 1E 0E 96 */	sth r0, 0xe96(r30)
/* 80B37888  80 61 00 40 */	lwz r3, 0x40(r1)
/* 80B3788C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B37890  90 7E 0D CC */	stw r3, 0xdcc(r30)
/* 80B37894  90 1E 0D D0 */	stw r0, 0xdd0(r30)
/* 80B37898  80 01 00 48 */	lwz r0, 0x48(r1)
/* 80B3789C  90 1E 0D D4 */	stw r0, 0xdd4(r30)
/* 80B378A0  38 7E 0D CC */	addi r3, r30, 0xdcc
/* 80B378A4  4B 82 A7 74 */	b __ptmf_test
/* 80B378A8  2C 03 00 00 */	cmpwi r3, 0
/* 80B378AC  41 82 00 24 */	beq lbl_80B378D0
/* 80B378B0  7F C3 F3 78 */	mr r3, r30
/* 80B378B4  38 80 00 00 */	li r4, 0
/* 80B378B8  39 9E 0D CC */	addi r12, r30, 0xdcc
/* 80B378BC  4B 82 A7 C8 */	b __ptmf_scall
/* 80B378C0  60 00 00 00 */	nop 
/* 80B378C4  48 00 00 0C */	b lbl_80B378D0
lbl_80B378C8:
/* 80B378C8  38 00 00 00 */	li r0, 0
/* 80B378CC  B0 1E 0E 94 */	sth r0, 0xe94(r30)
lbl_80B378D0:
/* 80B378D0  38 60 00 01 */	li r3, 1
/* 80B378D4  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 80B378D8  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 80B378DC  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80B378E0  4B 82 A9 34 */	b _restgpr_24
/* 80B378E4  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80B378E8  7C 08 03 A6 */	mtlr r0
/* 80B378EC  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80B378F0  4E 80 00 20 */	blr 
