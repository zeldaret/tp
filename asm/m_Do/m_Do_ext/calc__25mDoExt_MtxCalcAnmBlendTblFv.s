lbl_8000F26C:
/* 8000F26C  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 8000F270  7C 08 02 A6 */	mflr r0
/* 8000F274  90 01 01 04 */	stw r0, 0x104(r1)
/* 8000F278  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 8000F27C  F3 E1 00 F8 */	psq_st f31, 248(r1), 0, 0 /* qr0 */
/* 8000F280  DB C1 00 E0 */	stfd f30, 0xe0(r1)
/* 8000F284  F3 C1 00 E8 */	psq_st f30, 232(r1), 0, 0 /* qr0 */
/* 8000F288  39 61 00 E0 */	addi r11, r1, 0xe0
/* 8000F28C  48 35 2F 49 */	bl _savegpr_27
/* 8000F290  7C 7B 1B 78 */	mr r27, r3
/* 8000F294  80 6D 90 74 */	lwz r3, mJoint__10J3DMtxCalc(r13)
/* 8000F298  A3 C3 00 14 */	lhz r30, 0x14(r3)
/* 8000F29C  7F DD F3 78 */	mr r29, r30
/* 8000F2A0  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8000F2A4  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 8000F2A8  93 63 00 30 */	stw r27, 0x30(r3)
/* 8000F2AC  80 1B 00 04 */	lwz r0, 4(r27)
/* 8000F2B0  2C 00 00 01 */	cmpwi r0, 1
/* 8000F2B4  40 82 00 30 */	bne lbl_8000F2E4
/* 8000F2B8  80 7B 00 08 */	lwz r3, 8(r27)
/* 8000F2BC  80 63 00 04 */	lwz r3, 4(r3)
/* 8000F2C0  7F C4 F3 78 */	mr r4, r30
/* 8000F2C4  38 A1 00 78 */	addi r5, r1, 0x78
/* 8000F2C8  81 83 00 00 */	lwz r12, 0(r3)
/* 8000F2CC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8000F2D0  7D 89 03 A6 */	mtctr r12
/* 8000F2D4  4E 80 04 21 */	bctrl 
/* 8000F2D8  38 61 00 78 */	addi r3, r1, 0x78
/* 8000F2DC  48 31 FC E1 */	bl calcTransform__27J3DMtxCalcCalcTransformMayaFRC16J3DTransformInfo
/* 8000F2E0  48 00 01 A8 */	b lbl_8000F488
lbl_8000F2E4:
/* 8000F2E4  80 7B 00 08 */	lwz r3, 8(r27)
/* 8000F2E8  80 63 00 04 */	lwz r3, 4(r3)
/* 8000F2EC  7F C4 F3 78 */	mr r4, r30
/* 8000F2F0  38 A1 00 58 */	addi r5, r1, 0x58
/* 8000F2F4  81 83 00 00 */	lwz r12, 0(r3)
/* 8000F2F8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8000F2FC  7D 89 03 A6 */	mtctr r12
/* 8000F300  4E 80 04 21 */	bctrl 
/* 8000F304  A8 61 00 64 */	lha r3, 0x64(r1)
/* 8000F308  A8 81 00 66 */	lha r4, 0x66(r1)
/* 8000F30C  A8 A1 00 68 */	lha r5, 0x68(r1)
/* 8000F310  38 C1 00 28 */	addi r6, r1, 0x28
/* 8000F314  48 32 A5 65 */	bl JMAEulerToQuat__FsssP10Quaternion
/* 8000F318  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8000F31C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8000F320  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8000F324  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8000F328  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8000F32C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8000F330  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8000F334  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8000F338  3B 80 00 01 */	li r28, 1
/* 8000F33C  3B E0 00 08 */	li r31, 8
/* 8000F340  48 00 01 20 */	b lbl_8000F460
lbl_8000F344:
/* 8000F344  80 7B 00 08 */	lwz r3, 8(r27)
/* 8000F348  38 1F 00 04 */	addi r0, r31, 4
/* 8000F34C  7C 63 00 2E */	lwzx r3, r3, r0
/* 8000F350  28 03 00 00 */	cmplwi r3, 0
/* 8000F354  41 82 01 04 */	beq lbl_8000F458
/* 8000F358  7F A4 EB 78 */	mr r4, r29
/* 8000F35C  38 A1 00 38 */	addi r5, r1, 0x38
/* 8000F360  81 83 00 00 */	lwz r12, 0(r3)
/* 8000F364  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8000F368  7D 89 03 A6 */	mtctr r12
/* 8000F36C  4E 80 04 21 */	bctrl 
/* 8000F370  80 7B 00 08 */	lwz r3, 8(r27)
/* 8000F374  7F E3 FC 2E */	lfsx f31, r3, r31
/* 8000F378  C0 02 81 18 */	lfs f0, lit_3847(r2)
/* 8000F37C  EF C0 F8 28 */	fsubs f30, f0, f31
/* 8000F380  A8 61 00 44 */	lha r3, 0x44(r1)
/* 8000F384  A8 81 00 46 */	lha r4, 0x46(r1)
/* 8000F388  A8 A1 00 48 */	lha r5, 0x48(r1)
/* 8000F38C  38 C1 00 18 */	addi r6, r1, 0x18
/* 8000F390  48 32 A4 E9 */	bl JMAEulerToQuat__FsssP10Quaternion
/* 8000F394  38 61 00 28 */	addi r3, r1, 0x28
/* 8000F398  38 81 00 18 */	addi r4, r1, 0x18
/* 8000F39C  FC 20 F8 90 */	fmr f1, f31
/* 8000F3A0  38 A1 00 08 */	addi r5, r1, 8
/* 8000F3A4  48 32 A5 95 */	bl JMAQuatLerp__FPC10QuaternionPC10QuaternionfP10Quaternion
/* 8000F3A8  C0 01 00 08 */	lfs f0, 8(r1)
/* 8000F3AC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8000F3B0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8000F3B4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8000F3B8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8000F3BC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8000F3C0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8000F3C4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8000F3C8  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 8000F3CC  EC 20 07 B2 */	fmuls f1, f0, f30
/* 8000F3D0  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8000F3D4  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8000F3D8  EC 01 00 2A */	fadds f0, f1, f0
/* 8000F3DC  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8000F3E0  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8000F3E4  EC 20 07 B2 */	fmuls f1, f0, f30
/* 8000F3E8  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8000F3EC  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8000F3F0  EC 01 00 2A */	fadds f0, f1, f0
/* 8000F3F4  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8000F3F8  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8000F3FC  EC 20 07 B2 */	fmuls f1, f0, f30
/* 8000F400  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8000F404  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8000F408  EC 01 00 2A */	fadds f0, f1, f0
/* 8000F40C  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8000F410  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8000F414  EC 20 07 B2 */	fmuls f1, f0, f30
/* 8000F418  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8000F41C  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8000F420  EC 01 00 2A */	fadds f0, f1, f0
/* 8000F424  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8000F428  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8000F42C  EC 20 07 B2 */	fmuls f1, f0, f30
/* 8000F430  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8000F434  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8000F438  EC 01 00 2A */	fadds f0, f1, f0
/* 8000F43C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8000F440  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8000F444  EC 20 07 B2 */	fmuls f1, f0, f30
/* 8000F448  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8000F44C  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8000F450  EC 01 00 2A */	fadds f0, f1, f0
/* 8000F454  D0 01 00 60 */	stfs f0, 0x60(r1)
lbl_8000F458:
/* 8000F458  3B 9C 00 01 */	addi r28, r28, 1
/* 8000F45C  3B FF 00 08 */	addi r31, r31, 8
lbl_8000F460:
/* 8000F460  80 1B 00 04 */	lwz r0, 4(r27)
/* 8000F464  7C 1C 00 00 */	cmpw r28, r0
/* 8000F468  41 80 FE DC */	blt lbl_8000F344
/* 8000F46C  38 61 00 98 */	addi r3, r1, 0x98
/* 8000F470  38 81 00 08 */	addi r4, r1, 8
/* 8000F474  48 33 75 75 */	bl PSMTXQuat
/* 8000F478  38 61 00 98 */	addi r3, r1, 0x98
/* 8000F47C  38 81 00 58 */	addi r4, r1, 0x58
/* 8000F480  7F C5 F3 78 */	mr r5, r30
/* 8000F484  4B FF DC 29 */	bl mDoExt_setJ3DData__FPA4_fPC16J3DTransformInfoUs
lbl_8000F488:
/* 8000F488  E3 E1 00 F8 */	psq_l f31, 248(r1), 0, 0 /* qr0 */
/* 8000F48C  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 8000F490  E3 C1 00 E8 */	psq_l f30, 232(r1), 0, 0 /* qr0 */
/* 8000F494  CB C1 00 E0 */	lfd f30, 0xe0(r1)
/* 8000F498  39 61 00 E0 */	addi r11, r1, 0xe0
/* 8000F49C  48 35 2D 85 */	bl _restgpr_27
/* 8000F4A0  80 01 01 04 */	lwz r0, 0x104(r1)
/* 8000F4A4  7C 08 03 A6 */	mtlr r0
/* 8000F4A8  38 21 01 00 */	addi r1, r1, 0x100
/* 8000F4AC  4E 80 00 20 */	blr 
