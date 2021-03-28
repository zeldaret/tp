lbl_8080B444:
/* 8080B444  94 21 FE 60 */	stwu r1, -0x1a0(r1)
/* 8080B448  7C 08 02 A6 */	mflr r0
/* 8080B44C  90 01 01 A4 */	stw r0, 0x1a4(r1)
/* 8080B450  DB E1 01 90 */	stfd f31, 0x190(r1)
/* 8080B454  F3 E1 01 98 */	psq_st f31, 408(r1), 0, 0 /* qr0 */
/* 8080B458  39 61 01 90 */	addi r11, r1, 0x190
/* 8080B45C  4B B5 6D 7C */	b _savegpr_28
/* 8080B460  7C 7D 1B 78 */	mr r29, r3
/* 8080B464  3C 60 80 81 */	lis r3, lit_3925@ha
/* 8080B468  3B E3 59 94 */	addi r31, r3, lit_3925@l
/* 8080B46C  38 00 00 0A */	li r0, 0xa
/* 8080B470  B0 1D 06 F4 */	sth r0, 0x6f4(r29)
/* 8080B474  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8080B478  D0 1D 06 DC */	stfs f0, 0x6dc(r29)
/* 8080B47C  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 8080B480  D0 1D 05 34 */	stfs f0, 0x534(r29)
/* 8080B484  80 7D 04 D0 */	lwz r3, 0x4d0(r29)
/* 8080B488  80 1D 04 D4 */	lwz r0, 0x4d4(r29)
/* 8080B48C  90 61 00 48 */	stw r3, 0x48(r1)
/* 8080B490  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8080B494  80 1D 04 D8 */	lwz r0, 0x4d8(r29)
/* 8080B498  90 01 00 50 */	stw r0, 0x50(r1)
/* 8080B49C  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 8080B4A0  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 8080B4A4  EC 01 00 2A */	fadds f0, f1, f0
/* 8080B4A8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8080B4AC  38 61 01 2C */	addi r3, r1, 0x12c
/* 8080B4B0  4B 86 C1 C8 */	b __ct__18dBgS_ObjGndChk_WtrFv
/* 8080B4B4  38 61 01 2C */	addi r3, r1, 0x12c
/* 8080B4B8  38 81 00 48 */	addi r4, r1, 0x48
/* 8080B4BC  4B A5 C8 50 */	b SetPos__11cBgS_GndChkFPC3Vec
/* 8080B4C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8080B4C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8080B4C8  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 8080B4CC  7F C3 F3 78 */	mr r3, r30
/* 8080B4D0  38 81 01 2C */	addi r4, r1, 0x12c
/* 8080B4D4  4B 86 8F CC */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 8080B4D8  FF E0 08 90 */	fmr f31, f1
/* 8080B4DC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8080B4E0  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8080B4E4  40 81 00 10 */	ble lbl_8080B4F4
/* 8080B4E8  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 8080B4EC  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 8080B4F0  48 00 00 0C */	b lbl_8080B4FC
lbl_8080B4F4:
/* 8080B4F4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8080B4F8  D0 1D 05 30 */	stfs f0, 0x530(r29)
lbl_8080B4FC:
/* 8080B4FC  38 60 00 00 */	li r3, 0
/* 8080B500  98 7D 06 CF */	stb r3, 0x6cf(r29)
/* 8080B504  80 1D 06 98 */	lwz r0, 0x698(r29)
/* 8080B508  2C 00 00 03 */	cmpwi r0, 3
/* 8080B50C  41 82 05 64 */	beq lbl_8080BA70
/* 8080B510  40 80 05 F0 */	bge lbl_8080BB00
/* 8080B514  2C 00 00 00 */	cmpwi r0, 0
/* 8080B518  41 82 00 0C */	beq lbl_8080B524
/* 8080B51C  40 80 02 78 */	bge lbl_8080B794
/* 8080B520  48 00 05 E0 */	b lbl_8080BB00
lbl_8080B524:
/* 8080B524  88 1D 06 CA */	lbz r0, 0x6ca(r29)
/* 8080B528  28 00 00 01 */	cmplwi r0, 1
/* 8080B52C  40 82 00 20 */	bne lbl_8080B54C
/* 8080B530  7F A3 EB 78 */	mr r3, r29
/* 8080B534  38 80 00 06 */	li r4, 6
/* 8080B538  38 A0 00 00 */	li r5, 0
/* 8080B53C  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8080B540  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8080B544  4B FF CC 9D */	bl bckSet__8daE_YM_cFiUcff
/* 8080B548  48 00 00 1C */	b lbl_8080B564
lbl_8080B54C:
/* 8080B54C  7F A3 EB 78 */	mr r3, r29
/* 8080B550  38 80 00 10 */	li r4, 0x10
/* 8080B554  38 A0 00 02 */	li r5, 2
/* 8080B558  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8080B55C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8080B560  4B FF CC 81 */	bl bckSet__8daE_YM_cFiUcff
lbl_8080B564:
/* 8080B564  38 00 00 01 */	li r0, 1
/* 8080B568  90 1D 06 98 */	stw r0, 0x698(r29)
/* 8080B56C  38 00 00 00 */	li r0, 0
/* 8080B570  B0 1D 06 68 */	sth r0, 0x668(r29)
/* 8080B574  B0 1D 06 6A */	sth r0, 0x66a(r29)
/* 8080B578  B0 1D 06 6C */	sth r0, 0x66c(r29)
/* 8080B57C  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8080B580  4B A5 C3 D4 */	b cM_rndF__Ff
/* 8080B584  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 8080B588  EC 00 08 2A */	fadds f0, f0, f1
/* 8080B58C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8080B590  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8080B594  4B A5 C3 C0 */	b cM_rndF__Ff
/* 8080B598  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 8080B59C  EC 02 08 2A */	fadds f0, f2, f1
/* 8080B5A0  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8080B5A4  A8 7D 0A BA */	lha r3, 0xaba(r29)
/* 8080B5A8  3C 63 00 01 */	addis r3, r3, 1
/* 8080B5AC  38 03 80 00 */	addi r0, r3, -32768
/* 8080B5B0  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 8080B5B4  38 00 00 00 */	li r0, 0
/* 8080B5B8  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 8080B5BC  80 1D 07 8C */	lwz r0, 0x78c(r29)
/* 8080B5C0  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 8080B5C4  90 1D 07 8C */	stw r0, 0x78c(r29)
/* 8080B5C8  38 7D 07 20 */	addi r3, r29, 0x720
/* 8080B5CC  FC 20 10 90 */	fmr f1, f2
/* 8080B5D0  C0 5F 00 B8 */	lfs f2, 0xb8(r31)
/* 8080B5D4  4B 86 A9 84 */	b SetWall__12dBgS_AcchCirFff
/* 8080B5D8  88 1D 06 A0 */	lbz r0, 0x6a0(r29)
/* 8080B5DC  28 00 00 01 */	cmplwi r0, 1
/* 8080B5E0  40 82 01 20 */	bne lbl_8080B700
/* 8080B5E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8080B5E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8080B5EC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8080B5F0  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8080B5F4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8080B5F8  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 8080B5FC  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8080B600  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8080B604  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8080B608  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 8080B60C  EC 01 00 2A */	fadds f0, f1, f0
/* 8080B610  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8080B614  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8080B618  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 8080B61C  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8080B620  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8080B624  7C 64 02 14 */	add r3, r4, r0
/* 8080B628  C0 03 00 04 */	lfs f0, 4(r3)
/* 8080B62C  C0 7D 05 2C */	lfs f3, 0x52c(r29)
/* 8080B630  EC 43 00 32 */	fmuls f2, f3, f0
/* 8080B634  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 8080B638  7C 04 04 2E */	lfsx f0, r4, r0
/* 8080B63C  EC 03 00 32 */	fmuls f0, f3, f0
/* 8080B640  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8080B644  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8080B648  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 8080B64C  38 61 00 30 */	addi r3, r1, 0x30
/* 8080B650  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8080B654  7C 65 1B 78 */	mr r5, r3
/* 8080B658  4B B3 BA 38 */	b PSVECAdd
/* 8080B65C  38 61 00 BC */	addi r3, r1, 0xbc
/* 8080B660  4B 86 C6 08 */	b __ct__11dBgS_LinChkFv
/* 8080B664  38 61 00 BC */	addi r3, r1, 0xbc
/* 8080B668  38 81 00 3C */	addi r4, r1, 0x3c
/* 8080B66C  38 A1 00 30 */	addi r5, r1, 0x30
/* 8080B670  38 C0 00 00 */	li r6, 0
/* 8080B674  4B 86 C6 F0 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8080B678  7F C3 F3 78 */	mr r3, r30
/* 8080B67C  38 81 00 BC */	addi r4, r1, 0xbc
/* 8080B680  4B 86 8D 34 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 8080B684  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8080B688  41 82 00 6C */	beq lbl_8080B6F4
/* 8080B68C  3C 60 80 81 */	lis r3, __vt__8cM3dGPla@ha
/* 8080B690  38 03 5D 04 */	addi r0, r3, __vt__8cM3dGPla@l
/* 8080B694  90 01 00 64 */	stw r0, 0x64(r1)
/* 8080B698  7F C3 F3 78 */	mr r3, r30
/* 8080B69C  38 81 00 D0 */	addi r4, r1, 0xd0
/* 8080B6A0  38 A1 00 54 */	addi r5, r1, 0x54
/* 8080B6A4  4B 86 90 A0 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 8080B6A8  38 61 00 24 */	addi r3, r1, 0x24
/* 8080B6AC  38 81 00 54 */	addi r4, r1, 0x54
/* 8080B6B0  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 8080B6B4  4B A5 B4 D0 */	b __ml__4cXyzCFf
/* 8080B6B8  38 61 00 18 */	addi r3, r1, 0x18
/* 8080B6BC  38 81 00 EC */	addi r4, r1, 0xec
/* 8080B6C0  38 A1 00 24 */	addi r5, r1, 0x24
/* 8080B6C4  4B A5 B4 20 */	b __pl__4cXyzCFRC3Vec
/* 8080B6C8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8080B6CC  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 8080B6D0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8080B6D4  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 8080B6D8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8080B6DC  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 8080B6E0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8080B6E4  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8080B6E8  3C 60 80 81 */	lis r3, __vt__8cM3dGPla@ha
/* 8080B6EC  38 03 5D 04 */	addi r0, r3, __vt__8cM3dGPla@l
/* 8080B6F0  90 01 00 64 */	stw r0, 0x64(r1)
lbl_8080B6F4:
/* 8080B6F4  38 61 00 BC */	addi r3, r1, 0xbc
/* 8080B6F8  38 80 FF FF */	li r4, -1
/* 8080B6FC  4B 86 C5 E0 */	b __dt__11dBgS_LinChkFv
lbl_8080B700:
/* 8080B700  7F A3 EB 78 */	mr r3, r29
/* 8080B704  4B FF E6 81 */	bl setAppear__8daE_YM_cFv
/* 8080B708  38 00 00 00 */	li r0, 0
/* 8080B70C  90 1D 07 14 */	stw r0, 0x714(r29)
/* 8080B710  3C 60 80 81 */	lis r3, stringBase0@ha
/* 8080B714  38 63 5A EC */	addi r3, r3, stringBase0@l
/* 8080B718  38 63 00 0A */	addi r3, r3, 0xa
/* 8080B71C  38 9E 3E C8 */	addi r4, r30, 0x3ec8
/* 8080B720  4B B5 D2 74 */	b strcmp
/* 8080B724  2C 03 00 00 */	cmpwi r3, 0
/* 8080B728  40 82 03 D8 */	bne lbl_8080BB00
/* 8080B72C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8080B730  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8080B734  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 8080B738  7C 00 07 75 */	extsb. r0, r0
/* 8080B73C  40 82 03 C4 */	bne lbl_8080BB00
/* 8080B740  38 60 00 00 */	li r3, 0
/* 8080B744  4B 82 12 38 */	b getLayerNo__14dComIfG_play_cFi
/* 8080B748  2C 03 00 0E */	cmpwi r3, 0xe
/* 8080B74C  40 82 03 B4 */	bne lbl_8080BB00
/* 8080B750  88 9D 06 A2 */	lbz r4, 0x6a2(r29)
/* 8080B754  28 04 00 FF */	cmplwi r4, 0xff
/* 8080B758  41 82 03 A8 */	beq lbl_8080BB00
/* 8080B75C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8080B760  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8080B764  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8080B768  7C 05 07 74 */	extsb r5, r0
/* 8080B76C  4B 82 9B F4 */	b isSwitch__10dSv_info_cCFii
/* 8080B770  2C 03 00 00 */	cmpwi r3, 0
/* 8080B774  40 82 03 8C */	bne lbl_8080BB00
/* 8080B778  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8080B77C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8080B780  88 9D 06 A2 */	lbz r4, 0x6a2(r29)
/* 8080B784  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8080B788  7C 05 07 74 */	extsb r5, r0
/* 8080B78C  4B 82 9A 74 */	b onSwitch__10dSv_info_cFii
/* 8080B790  48 00 03 70 */	b lbl_8080BB00
lbl_8080B794:
/* 8080B794  2C 00 00 01 */	cmpwi r0, 1
/* 8080B798  40 82 00 3C */	bne lbl_8080B7D4
/* 8080B79C  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 8080B7A0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8080B7A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080B7A8  40 80 00 10 */	bge lbl_8080B7B8
/* 8080B7AC  38 7D 07 60 */	addi r3, r29, 0x760
/* 8080B7B0  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8080B7B4  4B 86 B9 60 */	b SetGroundUpY__9dBgS_AcchFf
lbl_8080B7B8:
/* 8080B7B8  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 8080B7BC  38 80 78 00 */	li r4, 0x7800
/* 8080B7C0  38 A0 00 08 */	li r5, 8
/* 8080B7C4  38 C0 10 00 */	li r6, 0x1000
/* 8080B7C8  38 E0 00 10 */	li r7, 0x10
/* 8080B7CC  4B A6 4D 74 */	b cLib_addCalcAngleS__FPsssss
/* 8080B7D0  48 00 00 1C */	b lbl_8080B7EC
lbl_8080B7D4:
/* 8080B7D4  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 8080B7D8  38 80 80 00 */	li r4, -32768
/* 8080B7DC  38 A0 00 08 */	li r5, 8
/* 8080B7E0  38 C0 10 00 */	li r6, 0x1000
/* 8080B7E4  38 E0 00 10 */	li r7, 0x10
/* 8080B7E8  4B A6 4D 58 */	b cLib_addCalcAngleS__FPsssss
lbl_8080B7EC:
/* 8080B7EC  80 1D 07 8C */	lwz r0, 0x78c(r29)
/* 8080B7F0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8080B7F4  41 82 00 D8 */	beq lbl_8080B8CC
/* 8080B7F8  88 1D 06 CA */	lbz r0, 0x6ca(r29)
/* 8080B7FC  28 00 00 01 */	cmplwi r0, 1
/* 8080B800  41 82 00 1C */	beq lbl_8080B81C
/* 8080B804  7F A3 EB 78 */	mr r3, r29
/* 8080B808  38 80 00 06 */	li r4, 6
/* 8080B80C  38 A0 00 00 */	li r5, 0
/* 8080B810  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8080B814  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8080B818  4B FF C9 C9 */	bl bckSet__8daE_YM_cFiUcff
lbl_8080B81C:
/* 8080B81C  80 1D 06 98 */	lwz r0, 0x698(r29)
/* 8080B820  2C 00 00 01 */	cmpwi r0, 1
/* 8080B824  40 82 00 58 */	bne lbl_8080B87C
/* 8080B828  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007011E@ha */
/* 8080B82C  38 03 01 1E */	addi r0, r3, 0x011E /* 0x0007011E@l */
/* 8080B830  90 01 00 14 */	stw r0, 0x14(r1)
/* 8080B834  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 8080B838  38 81 00 14 */	addi r4, r1, 0x14
/* 8080B83C  38 A0 00 00 */	li r5, 0
/* 8080B840  38 C0 FF FF */	li r6, -1
/* 8080B844  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 8080B848  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8080B84C  7D 89 03 A6 */	mtctr r12
/* 8080B850  4E 80 04 21 */	bctrl 
/* 8080B854  38 00 00 02 */	li r0, 2
/* 8080B858  90 1D 06 98 */	stw r0, 0x698(r29)
/* 8080B85C  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8080B860  4B A5 C0 F4 */	b cM_rndF__Ff
/* 8080B864  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 8080B868  EC 00 08 2A */	fadds f0, f0, f1
/* 8080B86C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8080B870  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 8080B874  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8080B878  48 00 02 88 */	b lbl_8080BB00
lbl_8080B87C:
/* 8080B87C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700E8@ha */
/* 8080B880  38 03 00 E8 */	addi r0, r3, 0x00E8 /* 0x000700E8@l */
/* 8080B884  90 01 00 10 */	stw r0, 0x10(r1)
/* 8080B888  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 8080B88C  38 81 00 10 */	addi r4, r1, 0x10
/* 8080B890  38 A0 00 00 */	li r5, 0
/* 8080B894  38 C0 FF FF */	li r6, -1
/* 8080B898  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 8080B89C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8080B8A0  7D 89 03 A6 */	mtctr r12
/* 8080B8A4  4E 80 04 21 */	bctrl 
/* 8080B8A8  38 00 00 03 */	li r0, 3
/* 8080B8AC  90 1D 06 98 */	stw r0, 0x698(r29)
/* 8080B8B0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8080B8B4  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8080B8B8  38 00 80 00 */	li r0, -32768
/* 8080B8BC  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 8080B8C0  38 00 00 00 */	li r0, 0
/* 8080B8C4  B0 1D 06 F0 */	sth r0, 0x6f0(r29)
/* 8080B8C8  48 00 02 38 */	b lbl_8080BB00
lbl_8080B8CC:
/* 8080B8CC  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 8080B8D0  FC 02 F8 40 */	fcmpo cr0, f2, f31
/* 8080B8D4  40 80 00 A4 */	bge lbl_8080B978
/* 8080B8D8  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060032@ha */
/* 8080B8DC  38 03 00 32 */	addi r0, r3, 0x0032 /* 0x00060032@l */
/* 8080B8E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8080B8E4  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 8080B8E8  38 81 00 0C */	addi r4, r1, 0xc
/* 8080B8EC  38 A0 00 00 */	li r5, 0
/* 8080B8F0  38 C0 FF FF */	li r6, -1
/* 8080B8F4  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 8080B8F8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8080B8FC  7D 89 03 A6 */	mtctr r12
/* 8080B900  4E 80 04 21 */	bctrl 
/* 8080B904  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700E8@ha */
/* 8080B908  38 03 00 E8 */	addi r0, r3, 0x00E8 /* 0x000700E8@l */
/* 8080B90C  90 01 00 08 */	stw r0, 8(r1)
/* 8080B910  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 8080B914  38 81 00 08 */	addi r4, r1, 8
/* 8080B918  38 A0 00 00 */	li r5, 0
/* 8080B91C  38 C0 FF FF */	li r6, -1
/* 8080B920  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 8080B924  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8080B928  7D 89 03 A6 */	mtctr r12
/* 8080B92C  4E 80 04 21 */	bctrl 
/* 8080B930  7F A3 EB 78 */	mr r3, r29
/* 8080B934  38 80 00 06 */	li r4, 6
/* 8080B938  38 A0 00 00 */	li r5, 0
/* 8080B93C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8080B940  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8080B944  4B FF C8 9D */	bl bckSet__8daE_YM_cFiUcff
/* 8080B948  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8080B94C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8080B950  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 8080B954  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8080B958  D3 FD 04 D4 */	stfs f31, 0x4d4(r29)
/* 8080B95C  38 00 80 00 */	li r0, -32768
/* 8080B960  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 8080B964  38 00 00 00 */	li r0, 0
/* 8080B968  B0 1D 06 F0 */	sth r0, 0x6f0(r29)
/* 8080B96C  38 00 00 03 */	li r0, 3
/* 8080B970  90 1D 06 98 */	stw r0, 0x698(r29)
/* 8080B974  48 00 01 8C */	b lbl_8080BB00
lbl_8080B978:
/* 8080B978  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 8080B97C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8080B980  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080B984  40 80 01 7C */	bge lbl_8080BB00
/* 8080B988  EC 1F 10 28 */	fsubs f0, f31, f2
/* 8080B98C  FC 00 02 10 */	fabs f0, f0
/* 8080B990  FC 20 00 18 */	frsp f1, f0
/* 8080B994  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 8080B998  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080B99C  40 81 01 64 */	ble lbl_8080BB00
/* 8080B9A0  38 61 00 68 */	addi r3, r1, 0x68
/* 8080B9A4  4B 86 BB D8 */	b __ct__11dBgS_GndChkFv
/* 8080B9A8  38 61 00 68 */	addi r3, r1, 0x68
/* 8080B9AC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8080B9B0  4B A5 C3 78 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 8080B9B4  7F C3 F3 78 */	mr r3, r30
/* 8080B9B8  38 81 00 68 */	addi r4, r1, 0x68
/* 8080B9BC  4B 86 8A E4 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 8080B9C0  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 8080B9C4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8080B9C8  41 82 00 60 */	beq lbl_8080BA28
/* 8080B9CC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8080B9D0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8080B9D4  FC 00 02 10 */	fabs f0, f0
/* 8080B9D8  FC 20 00 18 */	frsp f1, f0
/* 8080B9DC  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 8080B9E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080B9E4  41 81 00 44 */	bgt lbl_8080BA28
/* 8080B9E8  7F C3 F3 78 */	mr r3, r30
/* 8080B9EC  3B 81 00 7C */	addi r28, r1, 0x7c
/* 8080B9F0  7F 84 E3 78 */	mr r4, r28
/* 8080B9F4  4B 86 94 FC */	b GetGroundCode__4dBgSFRC13cBgS_PolyInfo
/* 8080B9F8  2C 03 00 04 */	cmpwi r3, 4
/* 8080B9FC  41 82 00 2C */	beq lbl_8080BA28
/* 8080BA00  7F C3 F3 78 */	mr r3, r30
/* 8080BA04  7F 84 E3 78 */	mr r4, r28
/* 8080BA08  4B 86 94 E8 */	b GetGroundCode__4dBgSFRC13cBgS_PolyInfo
/* 8080BA0C  2C 03 00 0A */	cmpwi r3, 0xa
/* 8080BA10  41 82 00 18 */	beq lbl_8080BA28
/* 8080BA14  7F C3 F3 78 */	mr r3, r30
/* 8080BA18  7F 84 E3 78 */	mr r4, r28
/* 8080BA1C  4B 86 94 D4 */	b GetGroundCode__4dBgSFRC13cBgS_PolyInfo
/* 8080BA20  2C 03 00 05 */	cmpwi r3, 5
/* 8080BA24  40 82 00 3C */	bne lbl_8080BA60
lbl_8080BA28:
/* 8080BA28  7F A3 EB 78 */	mr r3, r29
/* 8080BA2C  38 80 00 06 */	li r4, 6
/* 8080BA30  38 A0 00 00 */	li r5, 0
/* 8080BA34  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8080BA38  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8080BA3C  4B FF C7 A5 */	bl bckSet__8daE_YM_cFiUcff
/* 8080BA40  38 00 00 03 */	li r0, 3
/* 8080BA44  90 1D 06 98 */	stw r0, 0x698(r29)
/* 8080BA48  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8080BA4C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8080BA50  38 00 80 00 */	li r0, -32768
/* 8080BA54  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 8080BA58  38 00 00 00 */	li r0, 0
/* 8080BA5C  B0 1D 06 F0 */	sth r0, 0x6f0(r29)
lbl_8080BA60:
/* 8080BA60  38 61 00 68 */	addi r3, r1, 0x68
/* 8080BA64  38 80 FF FF */	li r4, -1
/* 8080BA68  4B 86 BB 88 */	b __dt__11dBgS_GndChkFv
/* 8080BA6C  48 00 00 94 */	b lbl_8080BB00
lbl_8080BA70:
/* 8080BA70  80 9D 05 B4 */	lwz r4, 0x5b4(r29)
/* 8080BA74  38 A0 00 01 */	li r5, 1
/* 8080BA78  88 04 00 11 */	lbz r0, 0x11(r4)
/* 8080BA7C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8080BA80  40 82 00 18 */	bne lbl_8080BA98
/* 8080BA84  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8080BA88  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 8080BA8C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8080BA90  41 82 00 08 */	beq lbl_8080BA98
/* 8080BA94  7C 65 1B 78 */	mr r5, r3
lbl_8080BA98:
/* 8080BA98  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 8080BA9C  41 82 00 64 */	beq lbl_8080BB00
/* 8080BAA0  88 9D 06 A2 */	lbz r4, 0x6a2(r29)
/* 8080BAA4  28 04 00 FF */	cmplwi r4, 0xff
/* 8080BAA8  41 82 00 38 */	beq lbl_8080BAE0
/* 8080BAAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8080BAB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8080BAB4  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8080BAB8  7C 05 07 74 */	extsb r5, r0
/* 8080BABC  4B 82 98 A4 */	b isSwitch__10dSv_info_cCFii
/* 8080BAC0  2C 03 00 00 */	cmpwi r3, 0
/* 8080BAC4  40 82 00 1C */	bne lbl_8080BAE0
/* 8080BAC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8080BACC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8080BAD0  88 9D 06 A2 */	lbz r4, 0x6a2(r29)
/* 8080BAD4  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8080BAD8  7C 05 07 74 */	extsb r5, r0
/* 8080BADC  4B 82 97 24 */	b onSwitch__10dSv_info_cFii
lbl_8080BAE0:
/* 8080BAE0  7F A3 EB 78 */	mr r3, r29
/* 8080BAE4  4B 80 E1 98 */	b fopAcM_delete__FP10fopAc_ac_c
/* 8080BAE8  7F A3 EB 78 */	mr r3, r29
/* 8080BAEC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8080BAF0  38 A0 00 0A */	li r5, 0xa
/* 8080BAF4  38 C0 00 01 */	li r6, 1
/* 8080BAF8  38 E0 00 FF */	li r7, 0xff
/* 8080BAFC  4B 81 0F DC */	b fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
lbl_8080BB00:
/* 8080BB00  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8080BB04  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8080BB08  38 61 01 2C */	addi r3, r1, 0x12c
/* 8080BB0C  38 80 FF FF */	li r4, -1
/* 8080BB10  4B 86 BC 00 */	b __dt__18dBgS_ObjGndChk_WtrFv
/* 8080BB14  E3 E1 01 98 */	psq_l f31, 408(r1), 0, 0 /* qr0 */
/* 8080BB18  CB E1 01 90 */	lfd f31, 0x190(r1)
/* 8080BB1C  39 61 01 90 */	addi r11, r1, 0x190
/* 8080BB20  4B B5 67 04 */	b _restgpr_28
/* 8080BB24  80 01 01 A4 */	lwz r0, 0x1a4(r1)
/* 8080BB28  7C 08 03 A6 */	mtlr r0
/* 8080BB2C  38 21 01 A0 */	addi r1, r1, 0x1a0
/* 8080BB30  4E 80 00 20 */	blr 
