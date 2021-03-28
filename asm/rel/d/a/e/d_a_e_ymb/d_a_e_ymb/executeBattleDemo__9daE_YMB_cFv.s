lbl_8081F2E0:
/* 8081F2E0  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8081F2E4  7C 08 02 A6 */	mflr r0
/* 8081F2E8  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8081F2EC  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8081F2F0  4B B4 2E E0 */	b _savegpr_26
/* 8081F2F4  7C 7C 1B 78 */	mr r28, r3
/* 8081F2F8  3C 60 80 82 */	lis r3, lit_3791@ha
/* 8081F2FC  3B E3 18 AC */	addi r31, r3, lit_3791@l
/* 8081F300  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8081F304  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 8081F308  88 1B 5D B0 */	lbz r0, 0x5db0(r27)
/* 8081F30C  7C 00 07 74 */	extsb r0, r0
/* 8081F310  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8081F314  7C 7B 02 14 */	add r3, r27, r0
/* 8081F318  83 C3 5D 74 */	lwz r30, 0x5d74(r3)
/* 8081F31C  83 5B 5D AC */	lwz r26, 0x5dac(r27)
/* 8081F320  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 8081F324  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 8081F328  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 8081F32C  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8081F330  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 8081F334  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8081F338  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007029B@ha */
/* 8081F33C  38 03 02 9B */	addi r0, r3, 0x029B /* 0x0007029B@l */
/* 8081F340  90 01 00 10 */	stw r0, 0x10(r1)
/* 8081F344  38 7C 05 C4 */	addi r3, r28, 0x5c4
/* 8081F348  38 81 00 10 */	addi r4, r1, 0x10
/* 8081F34C  38 A0 00 00 */	li r5, 0
/* 8081F350  38 C0 FF FF */	li r6, -1
/* 8081F354  81 9C 05 C4 */	lwz r12, 0x5c4(r28)
/* 8081F358  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8081F35C  7D 89 03 A6 */	mtctr r12
/* 8081F360  4E 80 04 21 */	bctrl 
/* 8081F364  7F 83 E3 78 */	mr r3, r28
/* 8081F368  4B FF 7E 99 */	bl setFlyWaitVoice__9daE_YMB_cFv
/* 8081F36C  80 1C 06 B8 */	lwz r0, 0x6b8(r28)
/* 8081F370  2C 00 00 02 */	cmpwi r0, 2
/* 8081F374  41 82 01 F0 */	beq lbl_8081F564
/* 8081F378  40 80 00 14 */	bge lbl_8081F38C
/* 8081F37C  2C 00 00 00 */	cmpwi r0, 0
/* 8081F380  41 82 00 20 */	beq lbl_8081F3A0
/* 8081F384  40 80 00 30 */	bge lbl_8081F3B4
/* 8081F388  48 00 06 E0 */	b lbl_8081FA68
lbl_8081F38C:
/* 8081F38C  2C 00 00 06 */	cmpwi r0, 6
/* 8081F390  40 80 06 D8 */	bge lbl_8081FA68
/* 8081F394  2C 00 00 04 */	cmpwi r0, 4
/* 8081F398  40 80 03 88 */	bge lbl_8081F720
/* 8081F39C  48 00 03 14 */	b lbl_8081F6B0
lbl_8081F3A0:
/* 8081F3A0  38 00 00 01 */	li r0, 1
/* 8081F3A4  90 1C 06 B8 */	stw r0, 0x6b8(r28)
/* 8081F3A8  80 1C 05 5C */	lwz r0, 0x55c(r28)
/* 8081F3AC  64 00 00 40 */	oris r0, r0, 0x40
/* 8081F3B0  90 1C 05 5C */	stw r0, 0x55c(r28)
lbl_8081F3B4:
/* 8081F3B4  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 8081F3B8  28 00 00 02 */	cmplwi r0, 2
/* 8081F3BC  41 82 00 2C */	beq lbl_8081F3E8
/* 8081F3C0  7F 83 E3 78 */	mr r3, r28
/* 8081F3C4  38 80 00 02 */	li r4, 2
/* 8081F3C8  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8081F3CC  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8081F3D0  38 C0 00 00 */	li r6, 0
/* 8081F3D4  4B 7F C5 34 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 8081F3D8  A0 1C 00 FA */	lhz r0, 0xfa(r28)
/* 8081F3DC  60 00 00 02 */	ori r0, r0, 2
/* 8081F3E0  B0 1C 00 FA */	sth r0, 0xfa(r28)
/* 8081F3E4  48 00 06 CC */	b lbl_8081FAB0
lbl_8081F3E8:
/* 8081F3E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8081F3EC  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 8081F3F0  38 7D 4E C8 */	addi r3, r29, 0x4ec8
/* 8081F3F4  7F 84 E3 78 */	mr r4, r28
/* 8081F3F8  4B 82 42 94 */	b setPtT__14dEvt_control_cFPv
/* 8081F3FC  38 7E 02 48 */	addi r3, r30, 0x248
/* 8081F400  4B 94 20 D0 */	b Stop__9dCamera_cFv
/* 8081F404  38 7E 02 48 */	addi r3, r30, 0x248
/* 8081F408  38 80 00 03 */	li r4, 3
/* 8081F40C  4B 94 3C 00 */	b SetTrimSize__9dCamera_cFl
/* 8081F410  38 61 00 74 */	addi r3, r1, 0x74
/* 8081F414  38 9E 02 48 */	addi r4, r30, 0x248
/* 8081F418  4B 96 2A 80 */	b Center__9dCamera_cFv
/* 8081F41C  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8081F420  D0 1C 07 34 */	stfs f0, 0x734(r28)
/* 8081F424  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 8081F428  D0 1C 07 38 */	stfs f0, 0x738(r28)
/* 8081F42C  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 8081F430  D0 1C 07 3C */	stfs f0, 0x73c(r28)
/* 8081F434  38 61 00 68 */	addi r3, r1, 0x68
/* 8081F438  38 9E 02 48 */	addi r4, r30, 0x248
/* 8081F43C  4B 96 2A 28 */	b Eye__9dCamera_cFv
/* 8081F440  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 8081F444  D0 1C 07 28 */	stfs f0, 0x728(r28)
/* 8081F448  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 8081F44C  D0 1C 07 2C */	stfs f0, 0x72c(r28)
/* 8081F450  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8081F454  D0 1C 07 30 */	stfs f0, 0x730(r28)
/* 8081F458  C0 3E 02 A0 */	lfs f1, 0x2a0(r30)
/* 8081F45C  C0 1E 09 3C */	lfs f0, 0x93c(r30)
/* 8081F460  EC 01 00 2A */	fadds f0, f1, f0
/* 8081F464  D0 1C 07 58 */	stfs f0, 0x758(r28)
/* 8081F468  7F 43 D3 78 */	mr r3, r26
/* 8081F46C  38 81 00 98 */	addi r4, r1, 0x98
/* 8081F470  A8 BE 02 32 */	lha r5, 0x232(r30)
/* 8081F474  38 C0 00 00 */	li r6, 0
/* 8081F478  81 9A 06 28 */	lwz r12, 0x628(r26)
/* 8081F47C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8081F480  7D 89 03 A6 */	mtctr r12
/* 8081F484  4E 80 04 21 */	bctrl 
/* 8081F488  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8081F48C  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8081F490  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 8081F494  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8081F498  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 8081F49C  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8081F4A0  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 8081F4A4  38 81 00 98 */	addi r4, r1, 0x98
/* 8081F4A8  A8 BE 02 32 */	lha r5, 0x232(r30)
/* 8081F4AC  38 C1 00 8C */	addi r6, r1, 0x8c
/* 8081F4B0  4B A5 19 10 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 8081F4B4  7F 83 E3 78 */	mr r3, r28
/* 8081F4B8  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 8081F4BC  4B 7F B2 54 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8081F4C0  B0 7C 04 E6 */	sth r3, 0x4e6(r28)
/* 8081F4C4  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8081F4C8  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 8081F4CC  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 8081F4D0  7F 83 E3 78 */	mr r3, r28
/* 8081F4D4  38 80 00 09 */	li r4, 9
/* 8081F4D8  38 A0 00 00 */	li r5, 0
/* 8081F4DC  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8081F4E0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8081F4E4  4B FF 74 99 */	bl setBck__9daE_YMB_cFiUcff
/* 8081F4E8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007029A@ha */
/* 8081F4EC  38 03 02 9A */	addi r0, r3, 0x029A /* 0x0007029A@l */
/* 8081F4F0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8081F4F4  38 7C 05 C4 */	addi r3, r28, 0x5c4
/* 8081F4F8  38 81 00 0C */	addi r4, r1, 0xc
/* 8081F4FC  38 A0 00 00 */	li r5, 0
/* 8081F500  38 C0 FF FF */	li r6, -1
/* 8081F504  81 9C 05 C4 */	lwz r12, 0x5c4(r28)
/* 8081F508  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8081F50C  7D 89 03 A6 */	mtctr r12
/* 8081F510  4E 80 04 21 */	bctrl 
/* 8081F514  38 00 00 02 */	li r0, 2
/* 8081F518  90 1C 06 B8 */	stw r0, 0x6b8(r28)
/* 8081F51C  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8081F520  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 8081F524  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8081F528  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8081F52C  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 8081F530  38 7D 5B D4 */	addi r3, r29, 0x5bd4
/* 8081F534  38 80 00 08 */	li r4, 8
/* 8081F538  38 A0 00 1F */	li r5, 0x1f
/* 8081F53C  38 C1 00 5C */	addi r6, r1, 0x5c
/* 8081F540  4B 85 05 D0 */	b StartQuake__12dVibration_cFii4cXyz
/* 8081F544  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8081F548  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8081F54C  38 63 09 58 */	addi r3, r3, 0x958
/* 8081F550  38 80 00 11 */	li r4, 0x11
/* 8081F554  4B 81 52 BC */	b onSwitch__12dSv_memBit_cFi
/* 8081F558  38 00 00 01 */	li r0, 1
/* 8081F55C  98 1C 07 65 */	stb r0, 0x765(r28)
/* 8081F560  48 00 05 08 */	b lbl_8081FA68
lbl_8081F564:
/* 8081F564  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8081F568  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 8081F56C  38 7D 4E C8 */	addi r3, r29, 0x4ec8
/* 8081F570  7F 84 E3 78 */	mr r4, r28
/* 8081F574  3C A0 80 82 */	lis r5, DemoSkipCallBack__9daE_YMB_cFPvi@ha
/* 8081F578  38 A5 DD E0 */	addi r5, r5, DemoSkipCallBack__9daE_YMB_cFPvi@l
/* 8081F57C  38 C0 00 03 */	li r6, 3
/* 8081F580  4B 82 33 94 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 8081F584  80 7C 05 BC */	lwz r3, 0x5bc(r28)
/* 8081F588  38 63 00 0C */	addi r3, r3, 0xc
/* 8081F58C  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 8081F590  4B B0 8E 9C */	b checkPass__12J3DFrameCtrlFf
/* 8081F594  2C 03 00 00 */	cmpwi r3, 0
/* 8081F598  41 82 00 10 */	beq lbl_8081F5A8
/* 8081F59C  38 7D 5B D4 */	addi r3, r29, 0x5bd4
/* 8081F5A0  38 80 00 1F */	li r4, 0x1f
/* 8081F5A4  4B 85 07 F0 */	b StopQuake__12dVibration_cFi
lbl_8081F5A8:
/* 8081F5A8  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 8081F5AC  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 8081F5B0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8081F5B4  EC 21 00 28 */	fsubs f1, f1, f0
/* 8081F5B8  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8081F5BC  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8081F5C0  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 8081F5C4  D0 41 00 88 */	stfs f2, 0x88(r1)
/* 8081F5C8  38 7C 07 34 */	addi r3, r28, 0x734
/* 8081F5CC  38 81 00 80 */	addi r4, r1, 0x80
/* 8081F5D0  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 8081F5D4  4B A5 11 D8 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 8081F5D8  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8081F5DC  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8081F5E0  C0 1F 01 AC */	lfs f0, 0x1ac(r31)
/* 8081F5E4  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8081F5E8  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 8081F5EC  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8081F5F0  38 61 00 80 */	addi r3, r1, 0x80
/* 8081F5F4  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 8081F5F8  A8 BC 04 E6 */	lha r5, 0x4e6(r28)
/* 8081F5FC  38 C1 00 8C */	addi r6, r1, 0x8c
/* 8081F600  4B A5 17 C0 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 8081F604  38 7C 07 28 */	addi r3, r28, 0x728
/* 8081F608  38 81 00 80 */	addi r4, r1, 0x80
/* 8081F60C  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 8081F610  4B A5 11 9C */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 8081F614  38 7C 07 58 */	addi r3, r28, 0x758
/* 8081F618  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 8081F61C  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 8081F620  4B A5 11 20 */	b cLib_chaseF__FPfff
/* 8081F624  80 7C 05 BC */	lwz r3, 0x5bc(r28)
/* 8081F628  38 80 00 01 */	li r4, 1
/* 8081F62C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8081F630  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8081F634  40 82 00 18 */	bne lbl_8081F64C
/* 8081F638  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8081F63C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8081F640  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8081F644  41 82 00 08 */	beq lbl_8081F64C
/* 8081F648  38 80 00 00 */	li r4, 0
lbl_8081F64C:
/* 8081F64C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8081F650  41 82 04 18 */	beq lbl_8081FA68
/* 8081F654  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8081F658  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 8081F65C  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 8081F660  D0 1C 06 C8 */	stfs f0, 0x6c8(r28)
/* 8081F664  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 8081F668  C0 3C 06 A0 */	lfs f1, 0x6a0(r28)
/* 8081F66C  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8081F670  D0 1C 07 4C */	stfs f0, 0x74c(r28)
/* 8081F674  D0 3C 07 50 */	stfs f1, 0x750(r28)
/* 8081F678  D0 5C 07 54 */	stfs f2, 0x754(r28)
/* 8081F67C  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 8081F680  B0 1C 07 60 */	sth r0, 0x760(r28)
/* 8081F684  38 00 00 00 */	li r0, 0
/* 8081F688  90 1C 06 F0 */	stw r0, 0x6f0(r28)
/* 8081F68C  7F 83 E3 78 */	mr r3, r28
/* 8081F690  38 80 00 11 */	li r4, 0x11
/* 8081F694  38 A0 00 02 */	li r5, 2
/* 8081F698  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 8081F69C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8081F6A0  4B FF 72 DD */	bl setBck__9daE_YMB_cFiUcff
/* 8081F6A4  38 00 00 03 */	li r0, 3
/* 8081F6A8  90 1C 06 B8 */	stw r0, 0x6b8(r28)
/* 8081F6AC  48 00 03 BC */	b lbl_8081FA68
lbl_8081F6B0:
/* 8081F6B0  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8081F6B4  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8081F6B8  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8081F6BC  C0 1F 01 B0 */	lfs f0, 0x1b0(r31)
/* 8081F6C0  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8081F6C4  38 7C 06 A8 */	addi r3, r28, 0x6a8
/* 8081F6C8  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 8081F6CC  80 1C 06 F0 */	lwz r0, 0x6f0(r28)
/* 8081F6D0  2C 00 00 01 */	cmpwi r0, 1
/* 8081F6D4  41 82 00 14 */	beq lbl_8081F6E8
/* 8081F6D8  A8 BC 07 60 */	lha r5, 0x760(r28)
/* 8081F6DC  38 05 58 00 */	addi r0, r5, 0x5800
/* 8081F6E0  7C 05 07 34 */	extsh r5, r0
/* 8081F6E4  48 00 00 10 */	b lbl_8081F6F4
lbl_8081F6E8:
/* 8081F6E8  A8 BC 07 60 */	lha r5, 0x760(r28)
/* 8081F6EC  38 05 A8 00 */	addi r0, r5, -22528
/* 8081F6F0  7C 05 07 34 */	extsh r5, r0
lbl_8081F6F4:
/* 8081F6F4  38 C1 00 8C */	addi r6, r1, 0x8c
/* 8081F6F8  4B A5 16 C8 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 8081F6FC  C0 1C 06 A0 */	lfs f0, 0x6a0(r28)
/* 8081F700  D0 1C 06 AC */	stfs f0, 0x6ac(r28)
/* 8081F704  38 00 00 04 */	li r0, 4
/* 8081F708  90 1C 06 B8 */	stw r0, 0x6b8(r28)
/* 8081F70C  80 7C 06 F0 */	lwz r3, 0x6f0(r28)
/* 8081F710  38 03 00 01 */	addi r0, r3, 1
/* 8081F714  90 1C 06 F0 */	stw r0, 0x6f0(r28)
/* 8081F718  38 00 00 6E */	li r0, 0x6e
/* 8081F71C  90 1C 06 FC */	stw r0, 0x6fc(r28)
lbl_8081F720:
/* 8081F720  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8081F724  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8081F728  3B A3 4E C8 */	addi r29, r3, 0x4ec8
/* 8081F72C  7F A3 EB 78 */	mr r3, r29
/* 8081F730  7F 84 E3 78 */	mr r4, r28
/* 8081F734  3C A0 80 82 */	lis r5, DemoSkipCallBack__9daE_YMB_cFPvi@ha
/* 8081F738  38 A5 DD E0 */	addi r5, r5, DemoSkipCallBack__9daE_YMB_cFPvi@l
/* 8081F73C  38 C0 00 02 */	li r6, 2
/* 8081F740  4B 82 31 D4 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 8081F744  38 7C 07 38 */	addi r3, r28, 0x738
/* 8081F748  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 8081F74C  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 8081F750  EC 21 00 28 */	fsubs f1, f1, f0
/* 8081F754  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 8081F758  4B A5 0F E8 */	b cLib_chaseF__FPfff
/* 8081F75C  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 8081F760  C0 3C 07 38 */	lfs f1, 0x738(r28)
/* 8081F764  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8081F768  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8081F76C  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 8081F770  D0 41 00 88 */	stfs f2, 0x88(r1)
/* 8081F774  38 7C 07 34 */	addi r3, r28, 0x734
/* 8081F778  38 81 00 80 */	addi r4, r1, 0x80
/* 8081F77C  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 8081F780  4B A5 12 10 */	b cLib_chasePosXZ__FP4cXyzRC4cXyzf
/* 8081F784  38 7C 07 2C */	addi r3, r28, 0x72c
/* 8081F788  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 8081F78C  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 8081F790  EC 21 00 28 */	fsubs f1, f1, f0
/* 8081F794  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8081F798  4B A5 0F A8 */	b cLib_chaseF__FPfff
/* 8081F79C  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 8081F7A0  38 9C 06 A8 */	addi r4, r28, 0x6a8
/* 8081F7A4  4B A5 14 60 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8081F7A8  B0 7C 04 DE */	sth r3, 0x4de(r28)
/* 8081F7AC  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 8081F7B0  38 9C 06 A8 */	addi r4, r28, 0x6a8
/* 8081F7B4  4B A5 14 C0 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 8081F7B8  B0 7C 04 DC */	sth r3, 0x4dc(r28)
/* 8081F7BC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8081F7C0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8081F7C4  A8 1C 04 DC */	lha r0, 0x4dc(r28)
/* 8081F7C8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8081F7CC  7C 63 02 14 */	add r3, r3, r0
/* 8081F7D0  C0 03 00 04 */	lfs f0, 4(r3)
/* 8081F7D4  FC 00 02 10 */	fabs f0, f0
/* 8081F7D8  FC 20 00 18 */	frsp f1, f0
/* 8081F7DC  38 7C 05 2C */	addi r3, r28, 0x52c
/* 8081F7E0  C0 1C 06 C8 */	lfs f0, 0x6c8(r28)
/* 8081F7E4  EC 20 00 72 */	fmuls f1, f0, f1
/* 8081F7E8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8081F7EC  4B A5 0F 54 */	b cLib_chaseF__FPfff
/* 8081F7F0  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 8081F7F4  38 81 00 98 */	addi r4, r1, 0x98
/* 8081F7F8  4B A5 14 0C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8081F7FC  7C 64 1B 78 */	mr r4, r3
/* 8081F800  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 8081F804  38 A0 04 00 */	li r5, 0x400
/* 8081F808  4B A5 13 88 */	b cLib_chaseAngleS__FPsss
/* 8081F80C  A8 1C 04 DC */	lha r0, 0x4dc(r28)
/* 8081F810  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8081F814  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8081F818  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8081F81C  7C 23 04 2E */	lfsx f1, r3, r0
/* 8081F820  38 7C 04 FC */	addi r3, r28, 0x4fc
/* 8081F824  C0 1C 06 C8 */	lfs f0, 0x6c8(r28)
/* 8081F828  EC 20 00 72 */	fmuls f1, f0, f1
/* 8081F82C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8081F830  4B A5 0F 10 */	b cLib_chaseF__FPfff
/* 8081F834  80 1C 06 B8 */	lwz r0, 0x6b8(r28)
/* 8081F838  2C 00 00 04 */	cmpwi r0, 4
/* 8081F83C  40 82 00 20 */	bne lbl_8081F85C
/* 8081F840  38 7C 06 C8 */	addi r3, r28, 0x6c8
/* 8081F844  3C 80 80 82 */	lis r4, l_HIO@ha
/* 8081F848  38 84 1E 64 */	addi r4, r4, l_HIO@l
/* 8081F84C  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 8081F850  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8081F854  4B A5 0E EC */	b cLib_chaseF__FPfff
/* 8081F858  48 00 00 14 */	b lbl_8081F86C
lbl_8081F85C:
/* 8081F85C  38 7C 06 C8 */	addi r3, r28, 0x6c8
/* 8081F860  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8081F864  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8081F868  4B A5 0E D8 */	b cLib_chaseF__FPfff
lbl_8081F86C:
/* 8081F86C  7F 83 E3 78 */	mr r3, r28
/* 8081F870  4B FF 8C A9 */	bl setBodyAngle__9daE_YMB_cFv
/* 8081F874  80 1C 06 B8 */	lwz r0, 0x6b8(r28)
/* 8081F878  2C 00 00 04 */	cmpwi r0, 4
/* 8081F87C  40 82 01 38 */	bne lbl_8081F9B4
/* 8081F880  C0 5C 06 B0 */	lfs f2, 0x6b0(r28)
/* 8081F884  C0 1C 06 A8 */	lfs f0, 0x6a8(r28)
/* 8081F888  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8081F88C  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8081F890  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8081F894  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8081F898  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 8081F89C  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8081F8A0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8081F8A4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8081F8A8  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8081F8AC  38 61 00 14 */	addi r3, r1, 0x14
/* 8081F8B0  38 81 00 20 */	addi r4, r1, 0x20
/* 8081F8B4  4B B2 7A E8 */	b PSVECSquareDistance
/* 8081F8B8  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8081F8BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081F8C0  40 81 00 58 */	ble lbl_8081F918
/* 8081F8C4  FC 00 08 34 */	frsqrte f0, f1
/* 8081F8C8  C8 9F 00 40 */	lfd f4, 0x40(r31)
/* 8081F8CC  FC 44 00 32 */	fmul f2, f4, f0
/* 8081F8D0  C8 7F 00 48 */	lfd f3, 0x48(r31)
/* 8081F8D4  FC 00 00 32 */	fmul f0, f0, f0
/* 8081F8D8  FC 01 00 32 */	fmul f0, f1, f0
/* 8081F8DC  FC 03 00 28 */	fsub f0, f3, f0
/* 8081F8E0  FC 02 00 32 */	fmul f0, f2, f0
/* 8081F8E4  FC 44 00 32 */	fmul f2, f4, f0
/* 8081F8E8  FC 00 00 32 */	fmul f0, f0, f0
/* 8081F8EC  FC 01 00 32 */	fmul f0, f1, f0
/* 8081F8F0  FC 03 00 28 */	fsub f0, f3, f0
/* 8081F8F4  FC 02 00 32 */	fmul f0, f2, f0
/* 8081F8F8  FC 44 00 32 */	fmul f2, f4, f0
/* 8081F8FC  FC 00 00 32 */	fmul f0, f0, f0
/* 8081F900  FC 01 00 32 */	fmul f0, f1, f0
/* 8081F904  FC 03 00 28 */	fsub f0, f3, f0
/* 8081F908  FC 02 00 32 */	fmul f0, f2, f0
/* 8081F90C  FC 21 00 32 */	fmul f1, f1, f0
/* 8081F910  FC 20 08 18 */	frsp f1, f1
/* 8081F914  48 00 00 88 */	b lbl_8081F99C
lbl_8081F918:
/* 8081F918  C8 1F 00 50 */	lfd f0, 0x50(r31)
/* 8081F91C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081F920  40 80 00 10 */	bge lbl_8081F930
/* 8081F924  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8081F928  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8081F92C  48 00 00 70 */	b lbl_8081F99C
lbl_8081F930:
/* 8081F930  D0 21 00 08 */	stfs f1, 8(r1)
/* 8081F934  80 81 00 08 */	lwz r4, 8(r1)
/* 8081F938  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8081F93C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8081F940  7C 03 00 00 */	cmpw r3, r0
/* 8081F944  41 82 00 14 */	beq lbl_8081F958
/* 8081F948  40 80 00 40 */	bge lbl_8081F988
/* 8081F94C  2C 03 00 00 */	cmpwi r3, 0
/* 8081F950  41 82 00 20 */	beq lbl_8081F970
/* 8081F954  48 00 00 34 */	b lbl_8081F988
lbl_8081F958:
/* 8081F958  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8081F95C  41 82 00 0C */	beq lbl_8081F968
/* 8081F960  38 00 00 01 */	li r0, 1
/* 8081F964  48 00 00 28 */	b lbl_8081F98C
lbl_8081F968:
/* 8081F968  38 00 00 02 */	li r0, 2
/* 8081F96C  48 00 00 20 */	b lbl_8081F98C
lbl_8081F970:
/* 8081F970  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8081F974  41 82 00 0C */	beq lbl_8081F980
/* 8081F978  38 00 00 05 */	li r0, 5
/* 8081F97C  48 00 00 10 */	b lbl_8081F98C
lbl_8081F980:
/* 8081F980  38 00 00 03 */	li r0, 3
/* 8081F984  48 00 00 08 */	b lbl_8081F98C
lbl_8081F988:
/* 8081F988  38 00 00 04 */	li r0, 4
lbl_8081F98C:
/* 8081F98C  2C 00 00 01 */	cmpwi r0, 1
/* 8081F990  40 82 00 0C */	bne lbl_8081F99C
/* 8081F994  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8081F998  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8081F99C:
/* 8081F99C  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 8081F9A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081F9A4  40 80 00 C4 */	bge lbl_8081FA68
/* 8081F9A8  38 00 00 05 */	li r0, 5
/* 8081F9AC  90 1C 06 B8 */	stw r0, 0x6b8(r28)
/* 8081F9B0  48 00 00 B8 */	b lbl_8081FA68
lbl_8081F9B4:
/* 8081F9B4  C0 3C 06 C8 */	lfs f1, 0x6c8(r28)
/* 8081F9B8  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8081F9BC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8081F9C0  40 82 00 A8 */	bne lbl_8081FA68
/* 8081F9C4  80 1C 06 F0 */	lwz r0, 0x6f0(r28)
/* 8081F9C8  2C 00 00 02 */	cmpwi r0, 2
/* 8081F9CC  40 80 00 10 */	bge lbl_8081F9DC
/* 8081F9D0  38 00 00 03 */	li r0, 3
/* 8081F9D4  90 1C 06 B8 */	stw r0, 0x6b8(r28)
/* 8081F9D8  48 00 00 90 */	b lbl_8081FA68
lbl_8081F9DC:
/* 8081F9DC  80 1C 06 FC */	lwz r0, 0x6fc(r28)
/* 8081F9E0  2C 00 00 00 */	cmpwi r0, 0
/* 8081F9E4  40 82 00 84 */	bne lbl_8081FA68
/* 8081F9E8  C0 1C 07 34 */	lfs f0, 0x734(r28)
/* 8081F9EC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8081F9F0  C0 1C 07 38 */	lfs f0, 0x738(r28)
/* 8081F9F4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8081F9F8  C0 1C 07 3C */	lfs f0, 0x73c(r28)
/* 8081F9FC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8081FA00  C0 1C 07 28 */	lfs f0, 0x728(r28)
/* 8081FA04  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8081FA08  C0 1C 07 2C */	lfs f0, 0x72c(r28)
/* 8081FA0C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8081FA10  C0 1C 07 30 */	lfs f0, 0x730(r28)
/* 8081FA14  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8081FA18  38 7E 02 48 */	addi r3, r30, 0x248
/* 8081FA1C  38 81 00 50 */	addi r4, r1, 0x50
/* 8081FA20  38 A1 00 44 */	addi r5, r1, 0x44
/* 8081FA24  4B 96 11 F4 */	b Reset__9dCamera_cF4cXyz4cXyz
/* 8081FA28  38 7E 02 48 */	addi r3, r30, 0x248
/* 8081FA2C  4B 94 1A 80 */	b Start__9dCamera_cFv
/* 8081FA30  38 7E 02 48 */	addi r3, r30, 0x248
/* 8081FA34  38 80 00 00 */	li r4, 0
/* 8081FA38  4B 94 35 D4 */	b SetTrimSize__9dCamera_cFl
/* 8081FA3C  7F A3 EB 78 */	mr r3, r29
/* 8081FA40  4B 82 2A 28 */	b reset__14dEvt_control_cFv
/* 8081FA44  80 1C 05 5C */	lwz r0, 0x55c(r28)
/* 8081FA48  54 00 02 90 */	rlwinm r0, r0, 0, 0xa, 8
/* 8081FA4C  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 8081FA50  7F 83 E3 78 */	mr r3, r28
/* 8081FA54  38 80 00 01 */	li r4, 1
/* 8081FA58  38 A0 00 01 */	li r5, 1
/* 8081FA5C  4B FF 70 21 */	bl setActionMode__9daE_YMB_cFii
/* 8081FA60  38 00 00 01 */	li r0, 1
/* 8081FA64  98 1C 07 64 */	stb r0, 0x764(r28)
lbl_8081FA68:
/* 8081FA68  C0 1C 07 34 */	lfs f0, 0x734(r28)
/* 8081FA6C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8081FA70  C0 1C 07 38 */	lfs f0, 0x738(r28)
/* 8081FA74  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8081FA78  C0 1C 07 3C */	lfs f0, 0x73c(r28)
/* 8081FA7C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8081FA80  C0 1C 07 28 */	lfs f0, 0x728(r28)
/* 8081FA84  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8081FA88  C0 1C 07 2C */	lfs f0, 0x72c(r28)
/* 8081FA8C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8081FA90  C0 1C 07 30 */	lfs f0, 0x730(r28)
/* 8081FA94  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8081FA98  38 7E 02 48 */	addi r3, r30, 0x248
/* 8081FA9C  38 81 00 38 */	addi r4, r1, 0x38
/* 8081FAA0  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8081FAA4  C0 3C 07 58 */	lfs f1, 0x758(r28)
/* 8081FAA8  38 C0 00 00 */	li r6, 0
/* 8081FAAC  4B 96 10 34 */	b Set__9dCamera_cF4cXyz4cXyzfs
lbl_8081FAB0:
/* 8081FAB0  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8081FAB4  4B B4 27 68 */	b _restgpr_26
/* 8081FAB8  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8081FABC  7C 08 03 A6 */	mtlr r0
/* 8081FAC0  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8081FAC4  4E 80 00 20 */	blr 
