lbl_806BC818:
/* 806BC818  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 806BC81C  7C 08 02 A6 */	mflr r0
/* 806BC820  90 01 01 34 */	stw r0, 0x134(r1)
/* 806BC824  DB E1 01 20 */	stfd f31, 0x120(r1)
/* 806BC828  F3 E1 01 28 */	psq_st f31, 296(r1), 0, 0 /* qr0 */
/* 806BC82C  39 61 01 20 */	addi r11, r1, 0x120
/* 806BC830  4B CA 59 94 */	b _savegpr_23
/* 806BC834  7C 7D 1B 78 */	mr r29, r3
/* 806BC838  3C 60 80 6C */	lis r3, lit_1109@ha
/* 806BC83C  3B C3 E7 60 */	addi r30, r3, lit_1109@l
/* 806BC840  3C 60 80 6C */	lis r3, lit_3917@ha
/* 806BC844  3B E3 E4 8C */	addi r31, r3, lit_3917@l
/* 806BC848  38 00 00 0A */	li r0, 0xa
/* 806BC84C  B0 1D 06 90 */	sth r0, 0x690(r29)
/* 806BC850  A8 1D 06 80 */	lha r0, 0x680(r29)
/* 806BC854  2C 00 00 01 */	cmpwi r0, 1
/* 806BC858  41 82 00 C4 */	beq lbl_806BC91C
/* 806BC85C  40 80 03 94 */	bge lbl_806BCBF0
/* 806BC860  2C 00 00 00 */	cmpwi r0, 0
/* 806BC864  40 80 00 08 */	bge lbl_806BC86C
/* 806BC868  48 00 03 88 */	b lbl_806BCBF0
lbl_806BC86C:
/* 806BC86C  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 806BC870  4B BA B0 E4 */	b cM_rndF__Ff
/* 806BC874  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 806BC878  EC 40 08 2A */	fadds f2, f0, f1
/* 806BC87C  7F A3 EB 78 */	mr r3, r29
/* 806BC880  38 80 00 07 */	li r4, 7
/* 806BC884  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 806BC888  38 A0 00 00 */	li r5, 0
/* 806BC88C  4B FF F2 85 */	bl anm_init__FP10e_fs_classifUcf
/* 806BC890  A8 7D 06 80 */	lha r3, 0x680(r29)
/* 806BC894  38 03 00 01 */	addi r0, r3, 1
/* 806BC898  B0 1D 06 80 */	sth r0, 0x680(r29)
/* 806BC89C  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 806BC8A0  54 00 00 3E */	slwi r0, r0, 0
/* 806BC8A4  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 806BC8A8  38 00 00 00 */	li r0, 0
/* 806BC8AC  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 806BC8B0  88 1D 0B 7C */	lbz r0, 0xb7c(r29)
/* 806BC8B4  28 00 00 01 */	cmplwi r0, 1
/* 806BC8B8  40 82 00 48 */	bne lbl_806BC900
/* 806BC8BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806BC8C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806BC8C4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806BC8C8  88 03 05 68 */	lbz r0, 0x568(r3)
/* 806BC8CC  28 00 00 08 */	cmplwi r0, 8
/* 806BC8D0  41 82 00 0C */	beq lbl_806BC8DC
/* 806BC8D4  28 00 00 09 */	cmplwi r0, 9
/* 806BC8D8  40 82 00 28 */	bne lbl_806BC900
lbl_806BC8DC:
/* 806BC8DC  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 806BC8E0  4B BA B0 74 */	b cM_rndF__Ff
/* 806BC8E4  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 806BC8E8  EC 00 08 2A */	fadds f0, f0, f1
/* 806BC8EC  FC 00 00 1E */	fctiwz f0, f0
/* 806BC8F0  D8 01 00 E8 */	stfd f0, 0xe8(r1)
/* 806BC8F4  80 01 00 EC */	lwz r0, 0xec(r1)
/* 806BC8F8  B0 1D 05 C4 */	sth r0, 0x5c4(r29)
/* 806BC8FC  48 00 02 F4 */	b lbl_806BCBF0
lbl_806BC900:
/* 806BC900  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 806BC904  4B BA B0 88 */	b cM_rndFX__Ff
/* 806BC908  FC 00 08 1E */	fctiwz f0, f1
/* 806BC90C  D8 01 00 E8 */	stfd f0, 0xe8(r1)
/* 806BC910  80 01 00 EC */	lwz r0, 0xec(r1)
/* 806BC914  B0 1D 05 C4 */	sth r0, 0x5c4(r29)
/* 806BC918  48 00 02 D8 */	b lbl_806BCBF0
lbl_806BC91C:
/* 806BC91C  80 7D 05 D0 */	lwz r3, 0x5d0(r29)
/* 806BC920  38 63 00 0C */	addi r3, r3, 0xc
/* 806BC924  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 806BC928  4B C6 BB 04 */	b checkPass__12J3DFrameCtrlFf
/* 806BC92C  2C 03 00 00 */	cmpwi r3, 0
/* 806BC930  41 82 00 0C */	beq lbl_806BC93C
/* 806BC934  38 00 00 00 */	li r0, 0
/* 806BC938  B0 1D 05 C4 */	sth r0, 0x5c4(r29)
lbl_806BC93C:
/* 806BC93C  80 7D 05 D0 */	lwz r3, 0x5d0(r29)
/* 806BC940  38 63 00 0C */	addi r3, r3, 0xc
/* 806BC944  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 806BC948  4B C6 BA E4 */	b checkPass__12J3DFrameCtrlFf
/* 806BC94C  2C 03 00 00 */	cmpwi r3, 0
/* 806BC950  41 82 01 E8 */	beq lbl_806BCB38
/* 806BC954  A8 1D 05 C4 */	lha r0, 0x5c4(r29)
/* 806BC958  7C 00 0E 70 */	srawi r0, r0, 1
/* 806BC95C  7C 00 01 94 */	addze r0, r0
/* 806BC960  B0 1D 05 C4 */	sth r0, 0x5c4(r29)
/* 806BC964  38 61 00 94 */	addi r3, r1, 0x94
/* 806BC968  4B 9B AC 14 */	b __ct__11dBgS_GndChkFv
/* 806BC96C  38 61 00 40 */	addi r3, r1, 0x40
/* 806BC970  4B 9B AE 40 */	b __ct__18dBgS_ObjGndChk_SplFv
/* 806BC974  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 806BC978  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806BC97C  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 806BC980  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 806BC984  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 806BC988  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806BC98C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806BC990  EC 01 00 2A */	fadds f0, f1, f0
/* 806BC994  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806BC998  38 61 00 94 */	addi r3, r1, 0x94
/* 806BC99C  38 81 00 34 */	addi r4, r1, 0x34
/* 806BC9A0  4B BA B3 88 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 806BC9A4  38 61 00 40 */	addi r3, r1, 0x40
/* 806BC9A8  38 81 00 34 */	addi r4, r1, 0x34
/* 806BC9AC  4B BA B3 7C */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 806BC9B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806BC9B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806BC9B8  3B 23 0F 38 */	addi r25, r3, 0xf38
/* 806BC9BC  7F 23 CB 78 */	mr r3, r25
/* 806BC9C0  38 81 00 94 */	addi r4, r1, 0x94
/* 806BC9C4  4B 9B 7A DC */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 806BC9C8  FF E0 08 90 */	fmr f31, f1
/* 806BC9CC  7F 23 CB 78 */	mr r3, r25
/* 806BC9D0  38 81 00 40 */	addi r4, r1, 0x40
/* 806BC9D4  4B 9B 7A CC */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 806BC9D8  EC 21 F8 28 */	fsubs f1, f1, f31
/* 806BC9DC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806BC9E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806BC9E4  40 81 00 F0 */	ble lbl_806BCAD4
/* 806BC9E8  88 1E 00 78 */	lbz r0, 0x78(r30)
/* 806BC9EC  7C 00 07 75 */	extsb. r0, r0
/* 806BC9F0  40 82 00 30 */	bne lbl_806BCA20
/* 806BC9F4  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 806BC9F8  D0 1E 00 7C */	stfs f0, 0x7c(r30)
/* 806BC9FC  38 7E 00 7C */	addi r3, r30, 0x7c
/* 806BCA00  D0 03 00 04 */	stfs f0, 4(r3)
/* 806BCA04  D0 03 00 08 */	stfs f0, 8(r3)
/* 806BCA08  3C 80 80 6C */	lis r4, __dt__4cXyzFv@ha
/* 806BCA0C  38 84 E4 3C */	addi r4, r4, __dt__4cXyzFv@l
/* 806BCA10  38 BE 00 6C */	addi r5, r30, 0x6c
/* 806BCA14  4B FF F0 45 */	bl __register_global_object
/* 806BCA18  38 00 00 01 */	li r0, 1
/* 806BCA1C  98 1E 00 78 */	stb r0, 0x78(r30)
lbl_806BCA20:
/* 806BCA20  3A E0 00 00 */	li r23, 0
/* 806BCA24  3B 80 00 00 */	li r28, 0
/* 806BCA28  3B 60 00 00 */	li r27, 0
/* 806BCA2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806BCA30  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 806BCA34  3C 60 80 6C */	lis r3, w_eff_id@ha
/* 806BCA38  3B 43 E5 B8 */	addi r26, r3, w_eff_id@l
lbl_806BCA3C:
/* 806BCA3C  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 806BCA40  38 00 00 FF */	li r0, 0xff
/* 806BCA44  90 01 00 08 */	stw r0, 8(r1)
/* 806BCA48  38 80 00 00 */	li r4, 0
/* 806BCA4C  90 81 00 0C */	stw r4, 0xc(r1)
/* 806BCA50  38 00 FF FF */	li r0, -1
/* 806BCA54  90 01 00 10 */	stw r0, 0x10(r1)
/* 806BCA58  90 81 00 14 */	stw r4, 0x14(r1)
/* 806BCA5C  90 81 00 18 */	stw r4, 0x18(r1)
/* 806BCA60  90 81 00 1C */	stw r4, 0x1c(r1)
/* 806BCA64  3B 1B 0B 88 */	addi r24, r27, 0xb88
/* 806BCA68  7C 9D C0 2E */	lwzx r4, r29, r24
/* 806BCA6C  38 A0 00 00 */	li r5, 0
/* 806BCA70  7C DA E2 2E */	lhzx r6, r26, r28
/* 806BCA74  38 FD 04 D0 */	addi r7, r29, 0x4d0
/* 806BCA78  39 1D 01 0C */	addi r8, r29, 0x10c
/* 806BCA7C  39 3D 04 E4 */	addi r9, r29, 0x4e4
/* 806BCA80  39 5E 00 7C */	addi r10, r30, 0x7c
/* 806BCA84  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806BCA88  4B 99 0A 44 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806BCA8C  7C 7D C1 2E */	stwx r3, r29, r24
/* 806BCA90  3A F7 00 01 */	addi r23, r23, 1
/* 806BCA94  2C 17 00 04 */	cmpwi r23, 4
/* 806BCA98  3B 9C 00 02 */	addi r28, r28, 2
/* 806BCA9C  3B 7B 00 04 */	addi r27, r27, 4
/* 806BCAA0  41 80 FF 9C */	blt lbl_806BCA3C
/* 806BCAA4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700DC@ha */
/* 806BCAA8  38 03 00 DC */	addi r0, r3, 0x00DC /* 0x000700DC@l */
/* 806BCAAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 806BCAB0  38 7D 05 D4 */	addi r3, r29, 0x5d4
/* 806BCAB4  38 81 00 24 */	addi r4, r1, 0x24
/* 806BCAB8  38 A0 00 00 */	li r5, 0
/* 806BCABC  38 C0 FF FF */	li r6, -1
/* 806BCAC0  81 9D 05 D4 */	lwz r12, 0x5d4(r29)
/* 806BCAC4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806BCAC8  7D 89 03 A6 */	mtctr r12
/* 806BCACC  4E 80 04 21 */	bctrl 
/* 806BCAD0  48 00 00 50 */	b lbl_806BCB20
lbl_806BCAD4:
/* 806BCAD4  38 7D 0B 80 */	addi r3, r29, 0xb80
/* 806BCAD8  38 9D 0B 84 */	addi r4, r29, 0xb84
/* 806BCADC  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 806BCAE0  38 C0 00 00 */	li r6, 0
/* 806BCAE4  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 806BCAE8  38 FD 01 0C */	addi r7, r29, 0x10c
/* 806BCAEC  39 00 00 01 */	li r8, 1
/* 806BCAF0  4B 96 05 30 */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 806BCAF4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700DB@ha */
/* 806BCAF8  38 03 00 DB */	addi r0, r3, 0x00DB /* 0x000700DB@l */
/* 806BCAFC  90 01 00 20 */	stw r0, 0x20(r1)
/* 806BCB00  38 7D 05 D4 */	addi r3, r29, 0x5d4
/* 806BCB04  38 81 00 20 */	addi r4, r1, 0x20
/* 806BCB08  38 A0 00 00 */	li r5, 0
/* 806BCB0C  38 C0 FF FF */	li r6, -1
/* 806BCB10  81 9D 05 D4 */	lwz r12, 0x5d4(r29)
/* 806BCB14  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806BCB18  7D 89 03 A6 */	mtctr r12
/* 806BCB1C  4E 80 04 21 */	bctrl 
lbl_806BCB20:
/* 806BCB20  38 61 00 40 */	addi r3, r1, 0x40
/* 806BCB24  38 80 FF FF */	li r4, -1
/* 806BCB28  4B 9B AD 20 */	b __dt__18dBgS_ObjGndChk_SplFv
/* 806BCB2C  38 61 00 94 */	addi r3, r1, 0x94
/* 806BCB30  38 80 FF FF */	li r4, -1
/* 806BCB34  4B 9B AA BC */	b __dt__11dBgS_GndChkFv
lbl_806BCB38:
/* 806BCB38  80 7D 05 D0 */	lwz r3, 0x5d0(r29)
/* 806BCB3C  38 80 00 01 */	li r4, 1
/* 806BCB40  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806BCB44  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806BCB48  40 82 00 18 */	bne lbl_806BCB60
/* 806BCB4C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806BCB50  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806BCB54  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806BCB58  41 82 00 08 */	beq lbl_806BCB60
/* 806BCB5C  38 80 00 00 */	li r4, 0
lbl_806BCB60:
/* 806BCB60  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806BCB64  41 82 00 8C */	beq lbl_806BCBF0
/* 806BCB68  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 806BCB6C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806BCB70  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 806BCB74  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806BCB78  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 806BCB7C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806BCB80  3C 60 80 6C */	lis r3, stringBase0@ha
/* 806BCB84  38 63 E5 64 */	addi r3, r3, stringBase0@l
/* 806BCB88  38 63 00 05 */	addi r3, r3, 5
/* 806BCB8C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806BCB90  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806BCB94  38 84 4E 00 */	addi r4, r4, 0x4e00
/* 806BCB98  4B CA BD FC */	b strcmp
/* 806BCB9C  2C 03 00 00 */	cmpwi r3, 0
/* 806BCBA0  40 82 00 30 */	bne lbl_806BCBD0
/* 806BCBA4  38 60 00 00 */	li r3, 0
/* 806BCBA8  4B 96 FD D4 */	b getLayerNo__14dComIfG_play_cFi
/* 806BCBAC  2C 03 00 02 */	cmpwi r3, 2
/* 806BCBB0  40 82 00 20 */	bne lbl_806BCBD0
/* 806BCBB4  7F A3 EB 78 */	mr r3, r29
/* 806BCBB8  38 81 00 28 */	addi r4, r1, 0x28
/* 806BCBBC  38 A0 00 0A */	li r5, 0xa
/* 806BCBC0  88 DD 05 65 */	lbz r6, 0x565(r29)
/* 806BCBC4  38 E0 00 32 */	li r7, 0x32
/* 806BCBC8  4B 95 FF 10 */	b fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 806BCBCC  48 00 00 1C */	b lbl_806BCBE8
lbl_806BCBD0:
/* 806BCBD0  7F A3 EB 78 */	mr r3, r29
/* 806BCBD4  38 81 00 28 */	addi r4, r1, 0x28
/* 806BCBD8  38 A0 00 0A */	li r5, 0xa
/* 806BCBDC  88 DD 05 65 */	lbz r6, 0x565(r29)
/* 806BCBE0  38 E0 00 0D */	li r7, 0xd
/* 806BCBE4  4B 95 FE F4 */	b fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
lbl_806BCBE8:
/* 806BCBE8  7F A3 EB 78 */	mr r3, r29
/* 806BCBEC  4B 95 D0 90 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_806BCBF0:
/* 806BCBF0  38 7D 05 2C */	addi r3, r29, 0x52c
/* 806BCBF4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806BCBF8  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 806BCBFC  4B BB 2E 84 */	b cLib_addCalc0__FPfff
/* 806BCC00  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 806BCC04  A8 1D 05 C4 */	lha r0, 0x5c4(r29)
/* 806BCC08  7C 03 02 14 */	add r0, r3, r0
/* 806BCC0C  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 806BCC10  E3 E1 01 28 */	psq_l f31, 296(r1), 0, 0 /* qr0 */
/* 806BCC14  CB E1 01 20 */	lfd f31, 0x120(r1)
/* 806BCC18  39 61 01 20 */	addi r11, r1, 0x120
/* 806BCC1C  4B CA 55 F4 */	b _restgpr_23
/* 806BCC20  80 01 01 34 */	lwz r0, 0x134(r1)
/* 806BCC24  7C 08 03 A6 */	mtlr r0
/* 806BCC28  38 21 01 30 */	addi r1, r1, 0x130
/* 806BCC2C  4E 80 00 20 */	blr 
