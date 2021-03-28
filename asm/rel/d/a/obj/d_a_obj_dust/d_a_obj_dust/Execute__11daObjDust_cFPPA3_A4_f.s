lbl_80BE2B30:
/* 80BE2B30  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80BE2B34  7C 08 02 A6 */	mflr r0
/* 80BE2B38  90 01 00 74 */	stw r0, 0x74(r1)
/* 80BE2B3C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80BE2B40  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80BE2B44  39 61 00 60 */	addi r11, r1, 0x60
/* 80BE2B48  4B 77 F6 94 */	b _savegpr_29
/* 80BE2B4C  7C 7D 1B 78 */	mr r29, r3
/* 80BE2B50  7C 9E 23 78 */	mr r30, r4
/* 80BE2B54  3C 60 80 BE */	lis r3, lit_3673@ha
/* 80BE2B58  3B E3 2F 98 */	addi r31, r3, lit_3673@l
/* 80BE2B5C  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80BE2B60  7C 03 07 74 */	extsb r3, r0
/* 80BE2B64  4B 44 A5 08 */	b dComIfGp_getReverb__Fi
/* 80BE2B68  7C 67 1B 78 */	mr r7, r3
/* 80BE2B6C  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008016B@ha */
/* 80BE2B70  38 03 01 6B */	addi r0, r3, 0x016B /* 0x0008016B@l */
/* 80BE2B74  90 01 00 08 */	stw r0, 8(r1)
/* 80BE2B78  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BE2B7C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BE2B80  80 63 00 00 */	lwz r3, 0(r3)
/* 80BE2B84  38 81 00 08 */	addi r4, r1, 8
/* 80BE2B88  38 BD 05 38 */	addi r5, r29, 0x538
/* 80BE2B8C  38 C0 00 00 */	li r6, 0
/* 80BE2B90  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80BE2B94  FC 40 08 90 */	fmr f2, f1
/* 80BE2B98  C0 7F 00 48 */	lfs f3, 0x48(r31)
/* 80BE2B9C  FC 80 18 90 */	fmr f4, f3
/* 80BE2BA0  39 00 00 00 */	li r8, 0
/* 80BE2BA4  4B 6C 99 68 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BE2BA8  38 60 01 F6 */	li r3, 0x1f6
/* 80BE2BAC  3C 80 80 BE */	lis r4, data_80BE30F8@ha
/* 80BE2BB0  38 84 30 F8 */	addi r4, r4, data_80BE30F8@l
/* 80BE2BB4  4B 43 6E 78 */	b fopAcM_SearchByName__FsPP10fopAc_ac_c
/* 80BE2BB8  2C 03 00 00 */	cmpwi r3, 0
/* 80BE2BBC  41 82 00 24 */	beq lbl_80BE2BE0
/* 80BE2BC0  3C 60 80 BE */	lis r3, data_80BE30F8@ha
/* 80BE2BC4  38 63 30 F8 */	addi r3, r3, data_80BE30F8@l
/* 80BE2BC8  80 63 00 00 */	lwz r3, 0(r3)
/* 80BE2BCC  28 03 00 00 */	cmplwi r3, 0
/* 80BE2BD0  41 82 00 10 */	beq lbl_80BE2BE0
/* 80BE2BD4  38 03 04 D0 */	addi r0, r3, 0x4d0
/* 80BE2BD8  3C 60 80 BE */	lis r3, data_80BE30FC@ha
/* 80BE2BDC  90 03 30 FC */	stw r0, data_80BE30FC@l(r3)
lbl_80BE2BE0:
/* 80BE2BE0  A8 1D 05 C4 */	lha r0, 0x5c4(r29)
/* 80BE2BE4  C8 BF 00 08 */	lfd f5, 8(r31)
/* 80BE2BE8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BE2BEC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80BE2BF0  3C 60 43 30 */	lis r3, 0x4330
/* 80BE2BF4  90 61 00 18 */	stw r3, 0x18(r1)
/* 80BE2BF8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80BE2BFC  EC 40 28 28 */	fsubs f2, f0, f5
/* 80BE2C00  C0 9F 00 68 */	lfs f4, 0x68(r31)
/* 80BE2C04  C0 7F 00 6C */	lfs f3, 0x6c(r31)
/* 80BE2C08  C0 1D 05 A4 */	lfs f0, 0x5a4(r29)
/* 80BE2C0C  EC 03 00 32 */	fmuls f0, f3, f0
/* 80BE2C10  EC 24 00 2A */	fadds f1, f4, f0
/* 80BE2C14  C0 1D 05 A0 */	lfs f0, 0x5a0(r29)
/* 80BE2C18  EC 03 00 32 */	fmuls f0, f3, f0
/* 80BE2C1C  EC 01 00 2A */	fadds f0, f1, f0
/* 80BE2C20  EC 02 00 2A */	fadds f0, f2, f0
/* 80BE2C24  FC 00 00 1E */	fctiwz f0, f0
/* 80BE2C28  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80BE2C2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BE2C30  B0 1D 05 C4 */	sth r0, 0x5c4(r29)
/* 80BE2C34  A8 1D 05 C6 */	lha r0, 0x5c6(r29)
/* 80BE2C38  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BE2C3C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80BE2C40  90 61 00 28 */	stw r3, 0x28(r1)
/* 80BE2C44  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80BE2C48  EC 40 28 28 */	fsubs f2, f0, f5
/* 80BE2C4C  C0 1D 05 A4 */	lfs f0, 0x5a4(r29)
/* 80BE2C50  EC 03 00 32 */	fmuls f0, f3, f0
/* 80BE2C54  EC 24 00 2A */	fadds f1, f4, f0
/* 80BE2C58  C0 1D 05 A0 */	lfs f0, 0x5a0(r29)
/* 80BE2C5C  EC 03 00 32 */	fmuls f0, f3, f0
/* 80BE2C60  EC 01 00 2A */	fadds f0, f1, f0
/* 80BE2C64  EC 02 00 2A */	fadds f0, f2, f0
/* 80BE2C68  FC 00 00 1E */	fctiwz f0, f0
/* 80BE2C6C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80BE2C70  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BE2C74  B0 1D 05 C6 */	sth r0, 0x5c6(r29)
/* 80BE2C78  7F A3 EB 78 */	mr r3, r29
/* 80BE2C7C  4B FF F8 7D */	bl Check_RideOn__11daObjDust_cFv
/* 80BE2C80  3C 60 80 BE */	lis r3, data_80BE30F8@ha
/* 80BE2C84  80 03 30 F8 */	lwz r0, data_80BE30F8@l(r3)
/* 80BE2C88  28 00 00 00 */	cmplwi r0, 0
/* 80BE2C8C  41 82 00 0C */	beq lbl_80BE2C98
/* 80BE2C90  7F A3 EB 78 */	mr r3, r29
/* 80BE2C94  4B FF F6 25 */	bl Search_Ymb__11daObjDust_cFv
lbl_80BE2C98:
/* 80BE2C98  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80BE2C9C  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80BE2CA0  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80BE2CA4  EC 21 00 2A */	fadds f1, f1, f0
/* 80BE2CA8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80BE2CAC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BE2CB0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80BE2CB4  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80BE2CB8  38 61 00 0C */	addi r3, r1, 0xc
/* 80BE2CBC  4B 43 B0 C8 */	b waterCheck__11fopAcM_wt_cFPC4cXyz
/* 80BE2CC0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BE2CC4  41 82 00 14 */	beq lbl_80BE2CD8
/* 80BE2CC8  3C 60 80 45 */	lis r3, mWaterY__11fopAcM_wt_c@ha
/* 80BE2CCC  C0 23 0C D8 */	lfs f1, mWaterY__11fopAcM_wt_c@l(r3)
/* 80BE2CD0  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80BE2CD4  EF E1 00 28 */	fsubs f31, f1, f0
lbl_80BE2CD8:
/* 80BE2CD8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80BE2CDC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80BE2CE0  A8 9D 05 C6 */	lha r4, 0x5c6(r29)
/* 80BE2CE4  48 00 02 91 */	bl func_80BE2F74
/* 80BE2CE8  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 80BE2CEC  C0 7D 05 D0 */	lfs f3, 0x5d0(r29)
/* 80BE2CF0  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80BE2CF4  EC 40 F8 2A */	fadds f2, f0, f31
/* 80BE2CF8  C0 1D 05 A8 */	lfs f0, 0x5a8(r29)
/* 80BE2CFC  EC 42 00 2A */	fadds f2, f2, f0
/* 80BE2D00  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 80BE2D04  EC 00 00 72 */	fmuls f0, f0, f1
/* 80BE2D08  EC 02 00 2A */	fadds f0, f2, f0
/* 80BE2D0C  EC 23 00 2A */	fadds f1, f3, f0
/* 80BE2D10  C0 5F 00 7C */	lfs f2, 0x7c(r31)
/* 80BE2D14  C0 7F 00 80 */	lfs f3, 0x80(r31)
/* 80BE2D18  FC 80 10 90 */	fmr f4, f2
/* 80BE2D1C  4B 68 CC 60 */	b cLib_addCalc__FPfffff
/* 80BE2D20  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80BE2D24  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80BE2D28  A8 9D 05 C4 */	lha r4, 0x5c4(r29)
/* 80BE2D2C  38 04 20 00 */	addi r0, r4, 0x2000
/* 80BE2D30  7C 04 07 34 */	extsh r4, r0
/* 80BE2D34  48 00 02 41 */	bl func_80BE2F74
/* 80BE2D38  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 80BE2D3C  A8 1D 05 C8 */	lha r0, 0x5c8(r29)
/* 80BE2D40  C8 7F 00 08 */	lfd f3, 8(r31)
/* 80BE2D44  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BE2D48  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BE2D4C  3C 80 43 30 */	lis r4, 0x4330
/* 80BE2D50  90 81 00 30 */	stw r4, 0x30(r1)
/* 80BE2D54  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80BE2D58  EC 40 18 28 */	fsubs f2, f0, f3
/* 80BE2D5C  A8 1D 05 AC */	lha r0, 0x5ac(r29)
/* 80BE2D60  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BE2D64  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80BE2D68  90 81 00 28 */	stw r4, 0x28(r1)
/* 80BE2D6C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80BE2D70  EC 00 18 28 */	fsubs f0, f0, f3
/* 80BE2D74  EC 00 00 72 */	fmuls f0, f0, f1
/* 80BE2D78  EC 02 00 2A */	fadds f0, f2, f0
/* 80BE2D7C  FC 00 00 1E */	fctiwz f0, f0
/* 80BE2D80  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80BE2D84  80 81 00 24 */	lwz r4, 0x24(r1)
/* 80BE2D88  38 A0 00 02 */	li r5, 2
/* 80BE2D8C  38 C0 10 00 */	li r6, 0x1000
/* 80BE2D90  38 E0 00 01 */	li r7, 1
/* 80BE2D94  4B 68 D7 AC */	b cLib_addCalcAngleS__FPsssss
/* 80BE2D98  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80BE2D9C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80BE2DA0  A8 9D 05 C6 */	lha r4, 0x5c6(r29)
/* 80BE2DA4  48 00 01 D1 */	bl func_80BE2F74
/* 80BE2DA8  38 7D 04 E8 */	addi r3, r29, 0x4e8
/* 80BE2DAC  A8 1D 05 CC */	lha r0, 0x5cc(r29)
/* 80BE2DB0  C8 7F 00 08 */	lfd f3, 8(r31)
/* 80BE2DB4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BE2DB8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80BE2DBC  3C 80 43 30 */	lis r4, 0x4330
/* 80BE2DC0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BE2DC4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80BE2DC8  EC 40 18 28 */	fsubs f2, f0, f3
/* 80BE2DCC  A8 1D 05 AC */	lha r0, 0x5ac(r29)
/* 80BE2DD0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BE2DD4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80BE2DD8  90 81 00 38 */	stw r4, 0x38(r1)
/* 80BE2DDC  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80BE2DE0  EC 00 18 28 */	fsubs f0, f0, f3
/* 80BE2DE4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80BE2DE8  EC 02 00 2A */	fadds f0, f2, f0
/* 80BE2DEC  FC 00 00 1E */	fctiwz f0, f0
/* 80BE2DF0  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80BE2DF4  80 81 00 44 */	lwz r4, 0x44(r1)
/* 80BE2DF8  38 A0 00 02 */	li r5, 2
/* 80BE2DFC  38 C0 10 00 */	li r6, 0x1000
/* 80BE2E00  38 E0 00 01 */	li r7, 1
/* 80BE2E04  4B 68 D7 3C */	b cLib_addCalcAngleS__FPsssss
/* 80BE2E08  38 7D 05 A8 */	addi r3, r29, 0x5a8
/* 80BE2E0C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80BE2E10  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 80BE2E14  4B 68 D9 2C */	b cLib_chaseF__FPfff
/* 80BE2E18  38 7D 05 A0 */	addi r3, r29, 0x5a0
/* 80BE2E1C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80BE2E20  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 80BE2E24  C0 7F 00 38 */	lfs f3, 0x38(r31)
/* 80BE2E28  FC 80 08 90 */	fmr f4, f1
/* 80BE2E2C  4B 68 CB 50 */	b cLib_addCalc__FPfffff
/* 80BE2E30  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 80BE2E34  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80BE2E38  C0 5F 00 7C */	lfs f2, 0x7c(r31)
/* 80BE2E3C  C0 7F 00 38 */	lfs f3, 0x38(r31)
/* 80BE2E40  FC 80 08 90 */	fmr f4, f1
/* 80BE2E44  4B 68 CB 38 */	b cLib_addCalc__FPfffff
/* 80BE2E48  7F A3 EB 78 */	mr r3, r29
/* 80BE2E4C  38 9D 05 E4 */	addi r4, r29, 0x5e4
/* 80BE2E50  4B 43 78 7C */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80BE2E54  38 1D 05 6C */	addi r0, r29, 0x56c
/* 80BE2E58  90 1E 00 00 */	stw r0, 0(r30)
/* 80BE2E5C  7F A3 EB 78 */	mr r3, r29
/* 80BE2E60  4B FF F8 D5 */	bl setBaseMtx__11daObjDust_cFv
/* 80BE2E64  38 7D 06 74 */	addi r3, r29, 0x674
/* 80BE2E68  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80BE2E6C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80BE2E70  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80BE2E74  4B 49 3C 38 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80BE2E78  38 60 00 01 */	li r3, 1
/* 80BE2E7C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80BE2E80  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80BE2E84  39 61 00 60 */	addi r11, r1, 0x60
/* 80BE2E88  4B 77 F3 A0 */	b _restgpr_29
/* 80BE2E8C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80BE2E90  7C 08 03 A6 */	mtlr r0
/* 80BE2E94  38 21 00 70 */	addi r1, r1, 0x70
/* 80BE2E98  4E 80 00 20 */	blr 
