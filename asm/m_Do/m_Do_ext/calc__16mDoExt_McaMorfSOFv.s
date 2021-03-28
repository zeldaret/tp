lbl_80010B68:
/* 80010B68  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80010B6C  7C 08 02 A6 */	mflr r0
/* 80010B70  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80010B74  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 80010B78  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 80010B7C  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 80010B80  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, 0 /* qr0 */
/* 80010B84  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80010B88  48 35 16 51 */	bl _savegpr_28
/* 80010B8C  7C 7C 1B 78 */	mr r28, r3
/* 80010B90  80 03 00 04 */	lwz r0, 4(r3)
/* 80010B94  28 00 00 00 */	cmplwi r0, 0
/* 80010B98  41 82 02 B0 */	beq lbl_80010E48
/* 80010B9C  80 6D 90 74 */	lwz r3, mJoint__10J3DMtxCalc(r13)
/* 80010BA0  A3 E3 00 14 */	lhz r31, 0x14(r3)
/* 80010BA4  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80010BA8  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80010BAC  93 83 00 30 */	stw r28, 0x30(r3)
/* 80010BB0  80 7C 00 20 */	lwz r3, 0x20(r28)
/* 80010BB4  28 03 00 00 */	cmplwi r3, 0
/* 80010BB8  40 82 00 0C */	bne lbl_80010BC4
/* 80010BBC  3B C1 00 48 */	addi r30, r1, 0x48
/* 80010BC0  48 00 00 0C */	b lbl_80010BCC
lbl_80010BC4:
/* 80010BC4  57 E0 2A F4 */	rlwinm r0, r31, 5, 0xb, 0x1a
/* 80010BC8  7F C3 02 14 */	add r30, r3, r0
lbl_80010BCC:
/* 80010BCC  80 9C 00 24 */	lwz r4, 0x24(r28)
/* 80010BD0  28 04 00 00 */	cmplwi r4, 0
/* 80010BD4  40 82 00 0C */	bne lbl_80010BE0
/* 80010BD8  3B A1 00 18 */	addi r29, r1, 0x18
/* 80010BDC  48 00 00 0C */	b lbl_80010BE8
lbl_80010BE0:
/* 80010BE0  57 E0 23 36 */	rlwinm r0, r31, 4, 0xc, 0x1b
/* 80010BE4  7F A4 02 14 */	add r29, r4, r0
lbl_80010BE8:
/* 80010BE8  80 1C 00 08 */	lwz r0, 8(r28)
/* 80010BEC  28 00 00 00 */	cmplwi r0, 0
/* 80010BF0  40 82 00 8C */	bne lbl_80010C7C
/* 80010BF4  80 7C 00 04 */	lwz r3, 4(r28)
/* 80010BF8  80 63 00 04 */	lwz r3, 4(r3)
/* 80010BFC  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80010C00  57 E0 13 BA */	rlwinm r0, r31, 2, 0xe, 0x1d
/* 80010C04  7C 63 00 2E */	lwzx r3, r3, r0
/* 80010C08  E0 03 00 18 */	psq_l f0, 24(r3), 0, 0 /* qr0 */
/* 80010C0C  F0 1E 00 00 */	psq_st f0, 0(r30), 0, 0 /* qr0 */
/* 80010C10  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80010C14  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80010C18  80 03 00 24 */	lwz r0, 0x24(r3)
/* 80010C1C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80010C20  A8 03 00 28 */	lha r0, 0x28(r3)
/* 80010C24  B0 1E 00 10 */	sth r0, 0x10(r30)
/* 80010C28  E0 03 00 2C */	psq_l f0, 44(r3), 0, 0 /* qr0 */
/* 80010C2C  F0 1E 00 14 */	psq_st f0, 20(r30), 0, 0 /* qr0 */
/* 80010C30  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 80010C34  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 80010C38  80 7C 00 38 */	lwz r3, 0x38(r28)
/* 80010C3C  28 03 00 00 */	cmplwi r3, 0
/* 80010C40  41 82 00 1C */	beq lbl_80010C5C
/* 80010C44  7F E4 FB 78 */	mr r4, r31
/* 80010C48  7F C5 F3 78 */	mr r5, r30
/* 80010C4C  81 83 00 00 */	lwz r12, 0(r3)
/* 80010C50  81 8C 00 08 */	lwz r12, 8(r12)
/* 80010C54  7D 89 03 A6 */	mtctr r12
/* 80010C58  4E 80 04 21 */	bctrl 
lbl_80010C5C:
/* 80010C5C  A8 7E 00 0C */	lha r3, 0xc(r30)
/* 80010C60  A8 9E 00 0E */	lha r4, 0xe(r30)
/* 80010C64  A8 BE 00 10 */	lha r5, 0x10(r30)
/* 80010C68  7F A6 EB 78 */	mr r6, r29
/* 80010C6C  48 32 8C 0D */	bl JMAEulerToQuat__FsssP10Quaternion
/* 80010C70  7F C3 F3 78 */	mr r3, r30
/* 80010C74  48 31 E3 49 */	bl calcTransform__27J3DMtxCalcCalcTransformMayaFRC16J3DTransformInfo
/* 80010C78  48 00 01 B0 */	b lbl_80010E28
lbl_80010C7C:
/* 80010C7C  C0 3C 00 28 */	lfs f1, 0x28(r28)
/* 80010C80  C0 02 81 18 */	lfs f0, lit_3847(r2)
/* 80010C84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80010C88  4C 41 13 82 */	cror 2, 1, 2
/* 80010C8C  41 82 00 14 */	beq lbl_80010CA0
/* 80010C90  28 03 00 00 */	cmplwi r3, 0
/* 80010C94  41 82 00 0C */	beq lbl_80010CA0
/* 80010C98  28 04 00 00 */	cmplwi r4, 0
/* 80010C9C  40 82 00 58 */	bne lbl_80010CF4
lbl_80010CA0:
/* 80010CA0  7F 83 E3 78 */	mr r3, r28
/* 80010CA4  7F E4 FB 78 */	mr r4, r31
/* 80010CA8  7F C5 F3 78 */	mr r5, r30
/* 80010CAC  48 00 05 A5 */	bl getTransform__16mDoExt_McaMorfSOFUsP16J3DTransformInfo
/* 80010CB0  80 7C 00 38 */	lwz r3, 0x38(r28)
/* 80010CB4  28 03 00 00 */	cmplwi r3, 0
/* 80010CB8  41 82 00 1C */	beq lbl_80010CD4
/* 80010CBC  7F E4 FB 78 */	mr r4, r31
/* 80010CC0  7F C5 F3 78 */	mr r5, r30
/* 80010CC4  81 83 00 00 */	lwz r12, 0(r3)
/* 80010CC8  81 8C 00 08 */	lwz r12, 8(r12)
/* 80010CCC  7D 89 03 A6 */	mtctr r12
/* 80010CD0  4E 80 04 21 */	bctrl 
lbl_80010CD4:
/* 80010CD4  A8 7E 00 0C */	lha r3, 0xc(r30)
/* 80010CD8  A8 9E 00 0E */	lha r4, 0xe(r30)
/* 80010CDC  A8 BE 00 10 */	lha r5, 0x10(r30)
/* 80010CE0  7F A6 EB 78 */	mr r6, r29
/* 80010CE4  48 32 8B 95 */	bl JMAEulerToQuat__FsssP10Quaternion
/* 80010CE8  7F C3 F3 78 */	mr r3, r30
/* 80010CEC  48 31 E2 D1 */	bl calcTransform__27J3DMtxCalcCalcTransformMayaFRC16J3DTransformInfo
/* 80010CF0  48 00 01 38 */	b lbl_80010E28
lbl_80010CF4:
/* 80010CF4  88 1C 00 55 */	lbz r0, 0x55(r28)
/* 80010CF8  28 00 00 00 */	cmplwi r0, 0
/* 80010CFC  41 82 00 0C */	beq lbl_80010D08
/* 80010D00  FF E0 00 90 */	fmr f31, f0
/* 80010D04  48 00 00 14 */	b lbl_80010D18
lbl_80010D08:
/* 80010D08  C0 5C 00 2C */	lfs f2, 0x2c(r28)
/* 80010D0C  EC 21 10 28 */	fsubs f1, f1, f2
/* 80010D10  EC 00 10 28 */	fsubs f0, f0, f2
/* 80010D14  EF E1 00 24 */	fdivs f31, f1, f0
lbl_80010D18:
/* 80010D18  C0 02 81 18 */	lfs f0, lit_3847(r2)
/* 80010D1C  EF C0 F8 28 */	fsubs f30, f0, f31
/* 80010D20  7F 83 E3 78 */	mr r3, r28
/* 80010D24  7F E4 FB 78 */	mr r4, r31
/* 80010D28  38 A1 00 28 */	addi r5, r1, 0x28
/* 80010D2C  48 00 05 25 */	bl getTransform__16mDoExt_McaMorfSOFUsP16J3DTransformInfo
/* 80010D30  80 7C 00 38 */	lwz r3, 0x38(r28)
/* 80010D34  28 03 00 00 */	cmplwi r3, 0
/* 80010D38  41 82 00 1C */	beq lbl_80010D54
/* 80010D3C  7F E4 FB 78 */	mr r4, r31
/* 80010D40  38 A1 00 28 */	addi r5, r1, 0x28
/* 80010D44  81 83 00 00 */	lwz r12, 0(r3)
/* 80010D48  81 8C 00 08 */	lwz r12, 8(r12)
/* 80010D4C  7D 89 03 A6 */	mtctr r12
/* 80010D50  4E 80 04 21 */	bctrl 
lbl_80010D54:
/* 80010D54  A8 61 00 34 */	lha r3, 0x34(r1)
/* 80010D58  A8 81 00 36 */	lha r4, 0x36(r1)
/* 80010D5C  A8 A1 00 38 */	lha r5, 0x38(r1)
/* 80010D60  38 C1 00 08 */	addi r6, r1, 8
/* 80010D64  48 32 8B 15 */	bl JMAEulerToQuat__FsssP10Quaternion
/* 80010D68  7F A3 EB 78 */	mr r3, r29
/* 80010D6C  38 81 00 08 */	addi r4, r1, 8
/* 80010D70  FC 20 F8 90 */	fmr f1, f31
/* 80010D74  7F A5 EB 78 */	mr r5, r29
/* 80010D78  48 32 8B C1 */	bl JMAQuatLerp__FPC10QuaternionPC10QuaternionfP10Quaternion
/* 80010D7C  38 61 00 68 */	addi r3, r1, 0x68
/* 80010D80  7F A4 EB 78 */	mr r4, r29
/* 80010D84  48 33 5C 65 */	bl PSMTXQuat
/* 80010D88  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80010D8C  EC 20 07 B2 */	fmuls f1, f0, f30
/* 80010D90  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80010D94  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80010D98  EC 01 00 2A */	fadds f0, f1, f0
/* 80010D9C  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 80010DA0  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80010DA4  EC 20 07 B2 */	fmuls f1, f0, f30
/* 80010DA8  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80010DAC  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80010DB0  EC 01 00 2A */	fadds f0, f1, f0
/* 80010DB4  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 80010DB8  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80010DBC  EC 20 07 B2 */	fmuls f1, f0, f30
/* 80010DC0  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80010DC4  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80010DC8  EC 01 00 2A */	fadds f0, f1, f0
/* 80010DCC  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 80010DD0  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80010DD4  EC 20 07 B2 */	fmuls f1, f0, f30
/* 80010DD8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80010DDC  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80010DE0  EC 01 00 2A */	fadds f0, f1, f0
/* 80010DE4  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80010DE8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80010DEC  EC 20 07 B2 */	fmuls f1, f0, f30
/* 80010DF0  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80010DF4  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80010DF8  EC 01 00 2A */	fadds f0, f1, f0
/* 80010DFC  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80010E00  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80010E04  EC 20 07 B2 */	fmuls f1, f0, f30
/* 80010E08  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80010E0C  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80010E10  EC 01 00 2A */	fadds f0, f1, f0
/* 80010E14  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80010E18  38 61 00 68 */	addi r3, r1, 0x68
/* 80010E1C  7F C4 F3 78 */	mr r4, r30
/* 80010E20  7F E5 FB 78 */	mr r5, r31
/* 80010E24  4B FF C2 89 */	bl mDoExt_setJ3DData__FPA4_fPC16J3DTransformInfoUs
lbl_80010E28:
/* 80010E28  80 7C 00 3C */	lwz r3, 0x3c(r28)
/* 80010E2C  28 03 00 00 */	cmplwi r3, 0
/* 80010E30  41 82 00 18 */	beq lbl_80010E48
/* 80010E34  7F E4 FB 78 */	mr r4, r31
/* 80010E38  81 83 00 00 */	lwz r12, 0(r3)
/* 80010E3C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80010E40  7D 89 03 A6 */	mtctr r12
/* 80010E44  4E 80 04 21 */	bctrl 
lbl_80010E48:
/* 80010E48  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 80010E4C  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 80010E50  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, 0 /* qr0 */
/* 80010E54  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 80010E58  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80010E5C  48 35 13 C9 */	bl _restgpr_28
/* 80010E60  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80010E64  7C 08 03 A6 */	mtlr r0
/* 80010E68  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80010E6C  4E 80 00 20 */	blr 
