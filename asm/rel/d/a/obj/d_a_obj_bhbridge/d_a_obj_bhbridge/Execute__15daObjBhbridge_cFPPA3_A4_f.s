lbl_80BB5A14:
/* 80BB5A14  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80BB5A18  7C 08 02 A6 */	mflr r0
/* 80BB5A1C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80BB5A20  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80BB5A24  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80BB5A28  39 61 00 60 */	addi r11, r1, 0x60
/* 80BB5A2C  4B 7A C7 B1 */	bl _savegpr_29
/* 80BB5A30  7C 7D 1B 78 */	mr r29, r3
/* 80BB5A34  7C 9E 23 78 */	mr r30, r4
/* 80BB5A38  3C 60 80 BB */	lis r3, lit_3655@ha /* 0x80BB5F00@ha */
/* 80BB5A3C  3B E3 5F 00 */	addi r31, r3, lit_3655@l /* 0x80BB5F00@l */
/* 80BB5A40  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80BB5A44  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80BB5A48  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80BB5A4C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BB5A50  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80BB5A54  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80BB5A58  FF E0 08 90 */	fmr f31, f1
/* 80BB5A5C  38 61 00 10 */	addi r3, r1, 0x10
/* 80BB5A60  4B 46 83 25 */	bl waterCheck__11fopAcM_wt_cFPC4cXyz
/* 80BB5A64  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BB5A68  41 82 00 58 */	beq lbl_80BB5AC0
/* 80BB5A6C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080289@ha */
/* 80BB5A70  38 03 02 89 */	addi r0, r3, 0x0289 /* 0x00080289@l */
/* 80BB5A74  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BB5A78  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BB5A7C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BB5A80  80 63 00 00 */	lwz r3, 0(r3)
/* 80BB5A84  38 81 00 0C */	addi r4, r1, 0xc
/* 80BB5A88  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80BB5A8C  38 C0 00 00 */	li r6, 0
/* 80BB5A90  38 E0 00 00 */	li r7, 0
/* 80BB5A94  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80BB5A98  FC 40 08 90 */	fmr f2, f1
/* 80BB5A9C  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 80BB5AA0  FC 80 18 90 */	fmr f4, f3
/* 80BB5AA4  39 00 00 00 */	li r8, 0
/* 80BB5AA8  4B 6F 6A 65 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BB5AAC  3C 60 80 45 */	lis r3, mWaterY__11fopAcM_wt_c@ha /* 0x80450CD8@ha */
/* 80BB5AB0  C3 E3 0C D8 */	lfs f31, mWaterY__11fopAcM_wt_c@l(r3)  /* 0x80450CD8@l */
/* 80BB5AB4  38 00 00 01 */	li r0, 1
/* 80BB5AB8  98 1D 05 A4 */	stb r0, 0x5a4(r29)
/* 80BB5ABC  48 00 00 0C */	b lbl_80BB5AC8
lbl_80BB5AC0:
/* 80BB5AC0  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 80BB5AC4  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
lbl_80BB5AC8:
/* 80BB5AC8  88 1D 05 A4 */	lbz r0, 0x5a4(r29)
/* 80BB5ACC  28 00 00 00 */	cmplwi r0, 0
/* 80BB5AD0  41 82 02 F8 */	beq lbl_80BB5DC8
/* 80BB5AD4  A8 1D 05 CA */	lha r0, 0x5ca(r29)
/* 80BB5AD8  C8 9F 00 00 */	lfd f4, 0(r31)
/* 80BB5ADC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BB5AE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BB5AE4  3C 60 43 30 */	lis r3, 0x4330
/* 80BB5AE8  90 61 00 20 */	stw r3, 0x20(r1)
/* 80BB5AEC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80BB5AF0  EC 20 20 28 */	fsubs f1, f0, f4
/* 80BB5AF4  C0 7F 00 5C */	lfs f3, 0x5c(r31)
/* 80BB5AF8  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80BB5AFC  C0 1D 05 A0 */	lfs f0, 0x5a0(r29)
/* 80BB5B00  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BB5B04  EC 03 00 2A */	fadds f0, f3, f0
/* 80BB5B08  EC 01 00 2A */	fadds f0, f1, f0
/* 80BB5B0C  FC 00 00 1E */	fctiwz f0, f0
/* 80BB5B10  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80BB5B14  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80BB5B18  B0 1D 05 CA */	sth r0, 0x5ca(r29)
/* 80BB5B1C  A8 1D 05 CC */	lha r0, 0x5cc(r29)
/* 80BB5B20  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BB5B24  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BB5B28  90 61 00 30 */	stw r3, 0x30(r1)
/* 80BB5B2C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80BB5B30  EC 20 20 28 */	fsubs f1, f0, f4
/* 80BB5B34  C0 1D 05 A0 */	lfs f0, 0x5a0(r29)
/* 80BB5B38  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BB5B3C  EC 03 00 2A */	fadds f0, f3, f0
/* 80BB5B40  EC 01 00 2A */	fadds f0, f1, f0
/* 80BB5B44  FC 00 00 1E */	fctiwz f0, f0
/* 80BB5B48  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80BB5B4C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80BB5B50  B0 1D 05 CC */	sth r0, 0x5cc(r29)
/* 80BB5B54  C0 3D 05 A0 */	lfs f1, 0x5a0(r29)
/* 80BB5B58  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80BB5B5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BB5B60  40 81 00 68 */	ble lbl_80BB5BC8
/* 80BB5B64  88 1D 05 C6 */	lbz r0, 0x5c6(r29)
/* 80BB5B68  28 00 00 00 */	cmplwi r0, 0
/* 80BB5B6C  40 82 00 5C */	bne lbl_80BB5BC8
/* 80BB5B70  38 00 00 01 */	li r0, 1
/* 80BB5B74  98 1D 05 C6 */	stb r0, 0x5c6(r29)
/* 80BB5B78  88 1D 05 A4 */	lbz r0, 0x5a4(r29)
/* 80BB5B7C  28 00 00 00 */	cmplwi r0, 0
/* 80BB5B80  41 82 00 5C */	beq lbl_80BB5BDC
/* 80BB5B84  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008028A@ha */
/* 80BB5B88  38 03 02 8A */	addi r0, r3, 0x028A /* 0x0008028A@l */
/* 80BB5B8C  90 01 00 08 */	stw r0, 8(r1)
/* 80BB5B90  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BB5B94  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BB5B98  80 63 00 00 */	lwz r3, 0(r3)
/* 80BB5B9C  38 81 00 08 */	addi r4, r1, 8
/* 80BB5BA0  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80BB5BA4  38 C0 00 00 */	li r6, 0
/* 80BB5BA8  38 E0 00 00 */	li r7, 0
/* 80BB5BAC  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80BB5BB0  FC 40 08 90 */	fmr f2, f1
/* 80BB5BB4  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 80BB5BB8  FC 80 18 90 */	fmr f4, f3
/* 80BB5BBC  39 00 00 00 */	li r8, 0
/* 80BB5BC0  4B 6F 5D C5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BB5BC4  48 00 00 18 */	b lbl_80BB5BDC
lbl_80BB5BC8:
/* 80BB5BC8  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80BB5BCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BB5BD0  40 80 00 0C */	bge lbl_80BB5BDC
/* 80BB5BD4  38 00 00 00 */	li r0, 0
/* 80BB5BD8  98 1D 05 C6 */	stb r0, 0x5c6(r29)
lbl_80BB5BDC:
/* 80BB5BDC  A8 7D 05 CC */	lha r3, 0x5cc(r29)
/* 80BB5BE0  A8 1D 05 DC */	lha r0, 0x5dc(r29)
/* 80BB5BE4  7C 03 02 14 */	add r0, r3, r0
/* 80BB5BE8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BB5BEC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80BB5BF0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80BB5BF4  7C 63 04 2E */	lfsx f3, r3, r0
/* 80BB5BF8  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 80BB5BFC  C0 5D 05 D4 */	lfs f2, 0x5d4(r29)
/* 80BB5C00  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80BB5C04  C0 1D 05 A8 */	lfs f0, 0x5a8(r29)
/* 80BB5C08  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BB5C0C  EC 3F 00 2A */	fadds f1, f31, f0
/* 80BB5C10  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80BB5C14  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80BB5C18  EC 01 00 2A */	fadds f0, f1, f0
/* 80BB5C1C  EC 22 00 2A */	fadds f1, f2, f0
/* 80BB5C20  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 80BB5C24  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 80BB5C28  FC 80 10 90 */	fmr f4, f2
/* 80BB5C2C  4B 6B 9D 51 */	bl cLib_addCalc__FPfffff
/* 80BB5C30  A8 7D 05 CA */	lha r3, 0x5ca(r29)
/* 80BB5C34  A8 1D 05 DC */	lha r0, 0x5dc(r29)
/* 80BB5C38  7C 63 02 14 */	add r3, r3, r0
/* 80BB5C3C  38 03 20 00 */	addi r0, r3, 0x2000
/* 80BB5C40  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BB5C44  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80BB5C48  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80BB5C4C  7C 83 04 2E */	lfsx f4, r3, r0
/* 80BB5C50  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 80BB5C54  A8 1D 05 CE */	lha r0, 0x5ce(r29)
/* 80BB5C58  C8 7F 00 00 */	lfd f3, 0(r31)
/* 80BB5C5C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BB5C60  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80BB5C64  3C 80 43 30 */	lis r4, 0x4330
/* 80BB5C68  90 81 00 38 */	stw r4, 0x38(r1)
/* 80BB5C6C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80BB5C70  EC 40 18 28 */	fsubs f2, f0, f3
/* 80BB5C74  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80BB5C78  A8 1D 05 B0 */	lha r0, 0x5b0(r29)
/* 80BB5C7C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BB5C80  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BB5C84  90 81 00 30 */	stw r4, 0x30(r1)
/* 80BB5C88  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80BB5C8C  EC 00 18 28 */	fsubs f0, f0, f3
/* 80BB5C90  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BB5C94  EC 00 01 32 */	fmuls f0, f0, f4
/* 80BB5C98  EC 02 00 2A */	fadds f0, f2, f0
/* 80BB5C9C  FC 00 00 1E */	fctiwz f0, f0
/* 80BB5CA0  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80BB5CA4  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 80BB5CA8  38 A0 00 02 */	li r5, 2
/* 80BB5CAC  38 C0 01 00 */	li r6, 0x100
/* 80BB5CB0  38 E0 00 01 */	li r7, 1
/* 80BB5CB4  4B 6B A8 8D */	bl cLib_addCalcAngleS__FPsssss
/* 80BB5CB8  A8 7D 05 CC */	lha r3, 0x5cc(r29)
/* 80BB5CBC  A8 1D 05 DC */	lha r0, 0x5dc(r29)
/* 80BB5CC0  7C 03 02 14 */	add r0, r3, r0
/* 80BB5CC4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BB5CC8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80BB5CCC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80BB5CD0  7C 63 04 2E */	lfsx f3, r3, r0
/* 80BB5CD4  38 7D 04 E8 */	addi r3, r29, 0x4e8
/* 80BB5CD8  A8 1D 05 D2 */	lha r0, 0x5d2(r29)
/* 80BB5CDC  C8 5F 00 00 */	lfd f2, 0(r31)
/* 80BB5CE0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BB5CE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BB5CE8  3C 80 43 30 */	lis r4, 0x4330
/* 80BB5CEC  90 81 00 20 */	stw r4, 0x20(r1)
/* 80BB5CF0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80BB5CF4  EC 20 10 28 */	fsubs f1, f0, f2
/* 80BB5CF8  A8 1D 05 B0 */	lha r0, 0x5b0(r29)
/* 80BB5CFC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BB5D00  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BB5D04  90 81 00 40 */	stw r4, 0x40(r1)
/* 80BB5D08  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80BB5D0C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80BB5D10  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80BB5D14  EC 01 00 2A */	fadds f0, f1, f0
/* 80BB5D18  FC 00 00 1E */	fctiwz f0, f0
/* 80BB5D1C  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80BB5D20  80 81 00 4C */	lwz r4, 0x4c(r1)
/* 80BB5D24  38 A0 00 02 */	li r5, 2
/* 80BB5D28  38 C0 01 00 */	li r6, 0x100
/* 80BB5D2C  38 E0 00 01 */	li r7, 1
/* 80BB5D30  4B 6B A8 11 */	bl cLib_addCalcAngleS__FPsssss
/* 80BB5D34  88 1D 05 DE */	lbz r0, 0x5de(r29)
/* 80BB5D38  28 00 00 00 */	cmplwi r0, 0
/* 80BB5D3C  40 82 00 64 */	bne lbl_80BB5DA0
/* 80BB5D40  38 7D 05 CE */	addi r3, r29, 0x5ce
/* 80BB5D44  38 80 00 00 */	li r4, 0
/* 80BB5D48  38 A0 00 02 */	li r5, 2
/* 80BB5D4C  38 C0 01 00 */	li r6, 0x100
/* 80BB5D50  38 E0 00 01 */	li r7, 1
/* 80BB5D54  4B 6B A7 ED */	bl cLib_addCalcAngleS__FPsssss
/* 80BB5D58  38 7D 05 D2 */	addi r3, r29, 0x5d2
/* 80BB5D5C  38 80 00 00 */	li r4, 0
/* 80BB5D60  38 A0 00 02 */	li r5, 2
/* 80BB5D64  38 C0 01 00 */	li r6, 0x100
/* 80BB5D68  38 E0 00 01 */	li r7, 1
/* 80BB5D6C  4B 6B A7 D5 */	bl cLib_addCalcAngleS__FPsssss
/* 80BB5D70  38 7D 05 D4 */	addi r3, r29, 0x5d4
/* 80BB5D74  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80BB5D78  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 80BB5D7C  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 80BB5D80  FC 80 08 90 */	fmr f4, f1
/* 80BB5D84  4B 6B 9B F9 */	bl cLib_addCalc__FPfffff
/* 80BB5D88  38 7D 05 A0 */	addi r3, r29, 0x5a0
/* 80BB5D8C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80BB5D90  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 80BB5D94  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 80BB5D98  FC 80 08 90 */	fmr f4, f1
/* 80BB5D9C  4B 6B 9B E1 */	bl cLib_addCalc__FPfffff
lbl_80BB5DA0:
/* 80BB5DA0  38 7D 05 A8 */	addi r3, r29, 0x5a8
/* 80BB5DA4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80BB5DA8  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 80BB5DAC  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 80BB5DB0  FC 80 08 90 */	fmr f4, f1
/* 80BB5DB4  4B 6B 9B C9 */	bl cLib_addCalc__FPfffff
/* 80BB5DB8  38 00 00 00 */	li r0, 0
/* 80BB5DBC  98 1D 05 DE */	stb r0, 0x5de(r29)
/* 80BB5DC0  38 00 01 20 */	li r0, 0x120
/* 80BB5DC4  B0 1D 05 B0 */	sth r0, 0x5b0(r29)
lbl_80BB5DC8:
/* 80BB5DC8  38 1D 05 6C */	addi r0, r29, 0x56c
/* 80BB5DCC  90 1E 00 00 */	stw r0, 0(r30)
/* 80BB5DD0  7F A3 EB 78 */	mr r3, r29
/* 80BB5DD4  4B FF F7 E5 */	bl setBaseMtx__15daObjBhbridge_cFv
/* 80BB5DD8  38 7D 05 F8 */	addi r3, r29, 0x5f8
/* 80BB5DDC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BB5DE0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BB5DE4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80BB5DE8  4B 4C 0C C5 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80BB5DEC  38 60 00 01 */	li r3, 1
/* 80BB5DF0  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80BB5DF4  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80BB5DF8  39 61 00 60 */	addi r11, r1, 0x60
/* 80BB5DFC  4B 7A C4 2D */	bl _restgpr_29
/* 80BB5E00  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80BB5E04  7C 08 03 A6 */	mtlr r0
/* 80BB5E08  38 21 00 70 */	addi r1, r1, 0x70
/* 80BB5E0C  4E 80 00 20 */	blr 
