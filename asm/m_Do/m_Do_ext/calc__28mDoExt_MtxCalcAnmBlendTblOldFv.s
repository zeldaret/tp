lbl_8000F4B0:
/* 8000F4B0  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 8000F4B4  7C 08 02 A6 */	mflr r0
/* 8000F4B8  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8000F4BC  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 8000F4C0  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 8000F4C4  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 8000F4C8  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, 0 /* qr0 */
/* 8000F4CC  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8000F4D0  48 35 2D 01 */	bl _savegpr_26
/* 8000F4D4  7C 7C 1B 78 */	mr r28, r3
/* 8000F4D8  80 6D 90 74 */	lwz r3, mJoint__10J3DMtxCalc(r13)
/* 8000F4DC  A3 E3 00 14 */	lhz r31, 0x14(r3)
/* 8000F4E0  7F FB FB 78 */	mr r27, r31
/* 8000F4E4  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8000F4E8  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 8000F4EC  93 83 00 30 */	stw r28, 0x30(r3)
/* 8000F4F0  80 63 00 38 */	lwz r3, 0x38(r3)
/* 8000F4F4  83 C3 00 04 */	lwz r30, 4(r3)
/* 8000F4F8  80 7C 00 08 */	lwz r3, 8(r28)
/* 8000F4FC  80 63 00 04 */	lwz r3, 4(r3)
/* 8000F500  7F E4 FB 78 */	mr r4, r31
/* 8000F504  38 A1 00 58 */	addi r5, r1, 0x58
/* 8000F508  81 83 00 00 */	lwz r12, 0(r3)
/* 8000F50C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8000F510  7D 89 03 A6 */	mtctr r12
/* 8000F514  4E 80 04 21 */	bctrl 
/* 8000F518  A8 61 00 64 */	lha r3, 0x64(r1)
/* 8000F51C  A8 81 00 66 */	lha r4, 0x66(r1)
/* 8000F520  A8 A1 00 68 */	lha r5, 0x68(r1)
/* 8000F524  38 C1 00 28 */	addi r6, r1, 0x28
/* 8000F528  48 32 A3 51 */	bl JMAEulerToQuat__FsssP10Quaternion
/* 8000F52C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8000F530  D0 01 00 08 */	stfs f0, 8(r1)
/* 8000F534  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8000F538  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8000F53C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8000F540  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8000F544  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8000F548  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8000F54C  3B 40 00 01 */	li r26, 1
/* 8000F550  3B A0 00 08 */	li r29, 8
/* 8000F554  48 00 01 20 */	b lbl_8000F674
lbl_8000F558:
/* 8000F558  80 7C 00 08 */	lwz r3, 8(r28)
/* 8000F55C  38 1D 00 04 */	addi r0, r29, 4
/* 8000F560  7C 63 00 2E */	lwzx r3, r3, r0
/* 8000F564  28 03 00 00 */	cmplwi r3, 0
/* 8000F568  41 82 01 04 */	beq lbl_8000F66C
/* 8000F56C  7F 64 DB 78 */	mr r4, r27
/* 8000F570  38 A1 00 38 */	addi r5, r1, 0x38
/* 8000F574  81 83 00 00 */	lwz r12, 0(r3)
/* 8000F578  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8000F57C  7D 89 03 A6 */	mtctr r12
/* 8000F580  4E 80 04 21 */	bctrl 
/* 8000F584  80 7C 00 08 */	lwz r3, 8(r28)
/* 8000F588  7F E3 EC 2E */	lfsx f31, r3, r29
/* 8000F58C  C0 02 81 18 */	lfs f0, lit_3847(r2)
/* 8000F590  EF C0 F8 28 */	fsubs f30, f0, f31
/* 8000F594  A8 61 00 44 */	lha r3, 0x44(r1)
/* 8000F598  A8 81 00 46 */	lha r4, 0x46(r1)
/* 8000F59C  A8 A1 00 48 */	lha r5, 0x48(r1)
/* 8000F5A0  38 C1 00 18 */	addi r6, r1, 0x18
/* 8000F5A4  48 32 A2 D5 */	bl JMAEulerToQuat__FsssP10Quaternion
/* 8000F5A8  38 61 00 28 */	addi r3, r1, 0x28
/* 8000F5AC  38 81 00 18 */	addi r4, r1, 0x18
/* 8000F5B0  FC 20 F8 90 */	fmr f1, f31
/* 8000F5B4  38 A1 00 08 */	addi r5, r1, 8
/* 8000F5B8  48 32 A3 81 */	bl JMAQuatLerp__FPC10QuaternionPC10QuaternionfP10Quaternion
/* 8000F5BC  C0 01 00 08 */	lfs f0, 8(r1)
/* 8000F5C0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8000F5C4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8000F5C8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8000F5CC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8000F5D0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8000F5D4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8000F5D8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8000F5DC  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 8000F5E0  EC 20 07 B2 */	fmuls f1, f0, f30
/* 8000F5E4  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8000F5E8  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8000F5EC  EC 01 00 2A */	fadds f0, f1, f0
/* 8000F5F0  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8000F5F4  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8000F5F8  EC 20 07 B2 */	fmuls f1, f0, f30
/* 8000F5FC  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8000F600  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8000F604  EC 01 00 2A */	fadds f0, f1, f0
/* 8000F608  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8000F60C  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8000F610  EC 20 07 B2 */	fmuls f1, f0, f30
/* 8000F614  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8000F618  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8000F61C  EC 01 00 2A */	fadds f0, f1, f0
/* 8000F620  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8000F624  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8000F628  EC 20 07 B2 */	fmuls f1, f0, f30
/* 8000F62C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8000F630  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8000F634  EC 01 00 2A */	fadds f0, f1, f0
/* 8000F638  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8000F63C  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8000F640  EC 20 07 B2 */	fmuls f1, f0, f30
/* 8000F644  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8000F648  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8000F64C  EC 01 00 2A */	fadds f0, f1, f0
/* 8000F650  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8000F654  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8000F658  EC 20 07 B2 */	fmuls f1, f0, f30
/* 8000F65C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8000F660  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8000F664  EC 01 00 2A */	fadds f0, f1, f0
/* 8000F668  D0 01 00 60 */	stfs f0, 0x60(r1)
lbl_8000F66C:
/* 8000F66C  3B 5A 00 01 */	addi r26, r26, 1
/* 8000F670  3B BD 00 08 */	addi r29, r29, 8
lbl_8000F674:
/* 8000F674  80 1C 00 04 */	lwz r0, 4(r28)
/* 8000F678  7C 1A 00 00 */	cmpw r26, r0
/* 8000F67C  41 80 FE DC */	blt lbl_8000F558
/* 8000F680  80 9C 00 0C */	lwz r4, 0xc(r28)
/* 8000F684  80 64 00 1C */	lwz r3, 0x1c(r4)
/* 8000F688  57 FD 04 3E */	clrlwi r29, r31, 0x10
/* 8000F68C  57 E0 2A F4 */	rlwinm r0, r31, 5, 0xb, 0x1a
/* 8000F690  7F 63 02 14 */	add r27, r3, r0
/* 8000F694  80 64 00 20 */	lwz r3, 0x20(r4)
/* 8000F698  57 E0 23 36 */	rlwinm r0, r31, 4, 0xc, 0x1b
/* 8000F69C  7F 43 02 14 */	add r26, r3, r0
/* 8000F6A0  88 04 00 00 */	lbz r0, 0(r4)
/* 8000F6A4  28 00 00 00 */	cmplwi r0, 0
/* 8000F6A8  41 82 00 DC */	beq lbl_8000F784
/* 8000F6AC  C3 E4 00 0C */	lfs f31, 0xc(r4)
/* 8000F6B0  C0 02 81 1C */	lfs f0, lit_3876(r2)
/* 8000F6B4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8000F6B8  40 81 00 E4 */	ble lbl_8000F79C
/* 8000F6BC  A0 04 00 18 */	lhz r0, 0x18(r4)
/* 8000F6C0  7C 00 E8 40 */	cmplw r0, r29
/* 8000F6C4  41 81 00 D8 */	bgt lbl_8000F79C
/* 8000F6C8  A0 04 00 1A */	lhz r0, 0x1a(r4)
/* 8000F6CC  7C 00 E8 40 */	cmplw r0, r29
/* 8000F6D0  40 81 00 CC */	ble lbl_8000F79C
/* 8000F6D4  C0 02 81 18 */	lfs f0, lit_3847(r2)
/* 8000F6D8  EF C0 F8 28 */	fsubs f30, f0, f31
/* 8000F6DC  7F 43 D3 78 */	mr r3, r26
/* 8000F6E0  38 81 00 28 */	addi r4, r1, 0x28
/* 8000F6E4  FC 20 F0 90 */	fmr f1, f30
/* 8000F6E8  38 A1 00 08 */	addi r5, r1, 8
/* 8000F6EC  48 32 A2 4D */	bl JMAQuatLerp__FPC10QuaternionPC10QuaternionfP10Quaternion
/* 8000F6F0  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 8000F6F4  EC 20 07 B2 */	fmuls f1, f0, f30
/* 8000F6F8  C0 1B 00 14 */	lfs f0, 0x14(r27)
/* 8000F6FC  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8000F700  EC 01 00 2A */	fadds f0, f1, f0
/* 8000F704  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8000F708  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8000F70C  EC 20 07 B2 */	fmuls f1, f0, f30
/* 8000F710  C0 1B 00 18 */	lfs f0, 0x18(r27)
/* 8000F714  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8000F718  EC 01 00 2A */	fadds f0, f1, f0
/* 8000F71C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8000F720  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8000F724  EC 20 07 B2 */	fmuls f1, f0, f30
/* 8000F728  C0 1B 00 1C */	lfs f0, 0x1c(r27)
/* 8000F72C  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8000F730  EC 01 00 2A */	fadds f0, f1, f0
/* 8000F734  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8000F738  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8000F73C  EC 20 07 B2 */	fmuls f1, f0, f30
/* 8000F740  C0 1B 00 00 */	lfs f0, 0(r27)
/* 8000F744  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8000F748  EC 01 00 2A */	fadds f0, f1, f0
/* 8000F74C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8000F750  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8000F754  EC 20 07 B2 */	fmuls f1, f0, f30
/* 8000F758  C0 1B 00 04 */	lfs f0, 4(r27)
/* 8000F75C  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8000F760  EC 01 00 2A */	fadds f0, f1, f0
/* 8000F764  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8000F768  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8000F76C  EC 20 07 B2 */	fmuls f1, f0, f30
/* 8000F770  C0 1B 00 08 */	lfs f0, 8(r27)
/* 8000F774  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8000F778  EC 01 00 2A */	fadds f0, f1, f0
/* 8000F77C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8000F780  48 00 00 1C */	b lbl_8000F79C
lbl_8000F784:
/* 8000F784  A0 7E 00 2C */	lhz r3, 0x2c(r30)
/* 8000F788  38 03 FF FF */	addi r0, r3, -1
/* 8000F78C  7C 1D 00 00 */	cmpw r29, r0
/* 8000F790  40 82 00 0C */	bne lbl_8000F79C
/* 8000F794  38 00 00 01 */	li r0, 1
/* 8000F798  98 04 00 00 */	stb r0, 0(r4)
lbl_8000F79C:
/* 8000F79C  38 61 00 78 */	addi r3, r1, 0x78
/* 8000F7A0  38 81 00 08 */	addi r4, r1, 8
/* 8000F7A4  48 33 72 45 */	bl PSMTXQuat
/* 8000F7A8  38 61 00 78 */	addi r3, r1, 0x78
/* 8000F7AC  38 81 00 58 */	addi r4, r1, 0x58
/* 8000F7B0  7F E5 FB 78 */	mr r5, r31
/* 8000F7B4  4B FF D8 F9 */	bl mDoExt_setJ3DData__FPA4_fPC16J3DTransformInfoUs
/* 8000F7B8  C0 01 00 08 */	lfs f0, 8(r1)
/* 8000F7BC  D0 1A 00 00 */	stfs f0, 0(r26)
/* 8000F7C0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8000F7C4  D0 1A 00 04 */	stfs f0, 4(r26)
/* 8000F7C8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8000F7CC  D0 1A 00 08 */	stfs f0, 8(r26)
/* 8000F7D0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8000F7D4  D0 1A 00 0C */	stfs f0, 0xc(r26)
/* 8000F7D8  E0 01 00 58 */	psq_l f0, 88(r1), 0, 0 /* qr0 */
/* 8000F7DC  F0 1B 00 00 */	psq_st f0, 0(r27), 0, 0 /* qr0 */
/* 8000F7E0  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8000F7E4  D0 1B 00 08 */	stfs f0, 8(r27)
/* 8000F7E8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8000F7EC  90 1B 00 0C */	stw r0, 0xc(r27)
/* 8000F7F0  A8 01 00 68 */	lha r0, 0x68(r1)
/* 8000F7F4  B0 1B 00 10 */	sth r0, 0x10(r27)
/* 8000F7F8  E0 01 00 6C */	psq_l f0, 108(r1), 0, 0 /* qr0 */
/* 8000F7FC  F0 1B 00 14 */	psq_st f0, 20(r27), 0, 0 /* qr0 */
/* 8000F800  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8000F804  D0 1B 00 1C */	stfs f0, 0x1c(r27)
/* 8000F808  A0 7E 00 2C */	lhz r3, 0x2c(r30)
/* 8000F80C  38 03 FF FF */	addi r0, r3, -1
/* 8000F810  7C 1D 00 00 */	cmpw r29, r0
/* 8000F814  40 82 00 0C */	bne lbl_8000F820
/* 8000F818  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 8000F81C  48 00 00 B1 */	bl decOldFrameMorfCounter__22mDoExt_MtxCalcOldFrameFv
lbl_8000F820:
/* 8000F820  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 8000F824  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 8000F828  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, 0 /* qr0 */
/* 8000F82C  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 8000F830  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8000F834  48 35 29 E9 */	bl _restgpr_26
/* 8000F838  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8000F83C  7C 08 03 A6 */	mtlr r0
/* 8000F840  38 21 00 E0 */	addi r1, r1, 0xe0
/* 8000F844  4E 80 00 20 */	blr 
