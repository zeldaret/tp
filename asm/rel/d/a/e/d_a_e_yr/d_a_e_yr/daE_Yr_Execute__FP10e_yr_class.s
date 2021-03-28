lbl_80826AFC:
/* 80826AFC  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80826B00  7C 08 02 A6 */	mflr r0
/* 80826B04  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80826B08  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 80826B0C  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 80826B10  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80826B14  4B B3 B6 A8 */	b _savegpr_21
/* 80826B18  7C 7E 1B 78 */	mr r30, r3
/* 80826B1C  3C 60 80 83 */	lis r3, cNullVec__6Z2Calc@ha
/* 80826B20  3B 83 89 B4 */	addi r28, r3, cNullVec__6Z2Calc@l
/* 80826B24  3C 60 80 83 */	lis r3, lit_3902@ha
/* 80826B28  3B E3 88 50 */	addi r31, r3, lit_3902@l
/* 80826B2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80826B30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80826B34  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 80826B38  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 80826B3C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80826B40  EC 21 00 28 */	fsubs f1, f1, f0
/* 80826B44  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80826B48  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80826B4C  EC 42 00 2A */	fadds f2, f2, f0
/* 80826B50  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80826B54  EF E2 00 28 */	fsubs f31, f2, f0
/* 80826B58  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80826B5C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80826B60  EC 42 00 28 */	fsubs f2, f2, f0
/* 80826B64  EC 61 00 72 */	fmuls f3, f1, f1
/* 80826B68  EC 02 00 B2 */	fmuls f0, f2, f2
/* 80826B6C  EC 63 00 2A */	fadds f3, f3, f0
/* 80826B70  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80826B74  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80826B78  40 81 00 0C */	ble lbl_80826B84
/* 80826B7C  FC 00 18 34 */	frsqrte f0, f3
/* 80826B80  EC 60 00 F2 */	fmuls f3, f0, f3
lbl_80826B84:
/* 80826B84  D0 7E 06 CC */	stfs f3, 0x6cc(r30)
/* 80826B88  4B A4 0A EC */	b cM_atan2s__Fff
/* 80826B8C  B0 7E 06 C8 */	sth r3, 0x6c8(r30)
/* 80826B90  FC 20 F8 90 */	fmr f1, f31
/* 80826B94  C0 5E 06 CC */	lfs f2, 0x6cc(r30)
/* 80826B98  4B A4 0A DC */	b cM_atan2s__Fff
/* 80826B9C  7C 03 00 D0 */	neg r0, r3
/* 80826BA0  B0 1E 06 CA */	sth r0, 0x6ca(r30)
/* 80826BA4  A8 7E 06 DE */	lha r3, 0x6de(r30)
/* 80826BA8  38 03 00 01 */	addi r0, r3, 1
/* 80826BAC  B0 1E 06 DE */	sth r0, 0x6de(r30)
/* 80826BB0  88 9E 06 7E */	lbz r4, 0x67e(r30)
/* 80826BB4  28 04 00 00 */	cmplwi r4, 0
/* 80826BB8  41 82 00 38 */	beq lbl_80826BF0
/* 80826BBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80826BC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80826BC4  38 84 FF FF */	addi r4, r4, -1
/* 80826BC8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80826BCC  7C 05 07 74 */	extsb r5, r0
/* 80826BD0  4B 80 E7 90 */	b isSwitch__10dSv_info_cCFii
/* 80826BD4  2C 03 00 00 */	cmpwi r3, 0
/* 80826BD8  41 82 00 10 */	beq lbl_80826BE8
/* 80826BDC  38 00 00 00 */	li r0, 0
/* 80826BE0  98 1E 06 7E */	stb r0, 0x67e(r30)
/* 80826BE4  48 00 00 0C */	b lbl_80826BF0
lbl_80826BE8:
/* 80826BE8  38 60 00 01 */	li r3, 1
/* 80826BEC  48 00 0C 90 */	b lbl_8082787C
lbl_80826BF0:
/* 80826BF0  38 00 00 04 */	li r0, 4
/* 80826BF4  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80826BF8  3B 20 00 01 */	li r25, 1
/* 80826BFC  3C 60 80 83 */	lis r3, l_e_yrHIO@ha
/* 80826C00  38 63 8D BC */	addi r3, r3, l_e_yrHIO@l
/* 80826C04  88 03 00 05 */	lbz r0, 5(r3)
/* 80826C08  28 00 00 00 */	cmplwi r0, 0
/* 80826C0C  40 82 03 08 */	bne lbl_80826F14
/* 80826C10  38 60 00 00 */	li r3, 0
/* 80826C14  38 00 00 06 */	li r0, 6
/* 80826C18  7C 09 03 A6 */	mtctr r0
lbl_80826C1C:
/* 80826C1C  38 A3 06 A4 */	addi r5, r3, 0x6a4
/* 80826C20  7C 9E 2A AE */	lhax r4, r30, r5
/* 80826C24  2C 04 00 00 */	cmpwi r4, 0
/* 80826C28  41 82 00 0C */	beq lbl_80826C34
/* 80826C2C  38 04 FF FF */	addi r0, r4, -1
/* 80826C30  7C 1E 2B 2E */	sthx r0, r30, r5
lbl_80826C34:
/* 80826C34  38 63 00 02 */	addi r3, r3, 2
/* 80826C38  42 00 FF E4 */	bdnz lbl_80826C1C
/* 80826C3C  A8 7E 06 B2 */	lha r3, 0x6b2(r30)
/* 80826C40  2C 03 00 00 */	cmpwi r3, 0
/* 80826C44  41 82 00 0C */	beq lbl_80826C50
/* 80826C48  38 03 FF FF */	addi r0, r3, -1
/* 80826C4C  B0 1E 06 B2 */	sth r0, 0x6b2(r30)
lbl_80826C50:
/* 80826C50  A8 7E 06 D0 */	lha r3, 0x6d0(r30)
/* 80826C54  2C 03 00 00 */	cmpwi r3, 0
/* 80826C58  41 82 00 0C */	beq lbl_80826C64
/* 80826C5C  38 03 FF FF */	addi r0, r3, -1
/* 80826C60  B0 1E 06 D0 */	sth r0, 0x6d0(r30)
lbl_80826C64:
/* 80826C64  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80826C68  7C 03 07 74 */	extsb r3, r0
/* 80826C6C  4B 80 64 00 */	b dComIfGp_getReverb__Fi
/* 80826C70  7C 65 1B 78 */	mr r5, r3
/* 80826C74  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80826C78  38 80 00 00 */	li r4, 0
/* 80826C7C  4B 7E A4 34 */	b play__16mDoExt_McaMorfSOFUlSc
/* 80826C80  80 1E 05 B8 */	lwz r0, 0x5b8(r30)
/* 80826C84  2C 00 00 0C */	cmpwi r0, 0xc
/* 80826C88  40 82 00 34 */	bne lbl_80826CBC
/* 80826C8C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701BD@ha */
/* 80826C90  38 03 01 BD */	addi r0, r3, 0x01BD /* 0x000701BD@l */
/* 80826C94  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80826C98  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 80826C9C  38 81 00 3C */	addi r4, r1, 0x3c
/* 80826CA0  38 A0 00 00 */	li r5, 0
/* 80826CA4  38 C0 FF FF */	li r6, -1
/* 80826CA8  81 9E 05 C0 */	lwz r12, 0x5c0(r30)
/* 80826CAC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80826CB0  7D 89 03 A6 */	mtctr r12
/* 80826CB4  4E 80 04 21 */	bctrl 
/* 80826CB8  48 00 01 78 */	b lbl_80826E30
lbl_80826CBC:
/* 80826CBC  2C 00 00 0F */	cmpwi r0, 0xf
/* 80826CC0  40 82 00 78 */	bne lbl_80826D38
/* 80826CC4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701C1@ha */
/* 80826CC8  38 03 01 C1 */	addi r0, r3, 0x01C1 /* 0x000701C1@l */
/* 80826CCC  90 01 00 38 */	stw r0, 0x38(r1)
/* 80826CD0  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 80826CD4  38 81 00 38 */	addi r4, r1, 0x38
/* 80826CD8  38 A0 00 00 */	li r5, 0
/* 80826CDC  38 C0 FF FF */	li r6, -1
/* 80826CE0  81 9E 05 C0 */	lwz r12, 0x5c0(r30)
/* 80826CE4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80826CE8  7D 89 03 A6 */	mtctr r12
/* 80826CEC  4E 80 04 21 */	bctrl 
/* 80826CF0  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80826CF4  38 63 00 0C */	addi r3, r3, 0xc
/* 80826CF8  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80826CFC  4B B0 17 30 */	b checkPass__12J3DFrameCtrlFf
/* 80826D00  2C 03 00 00 */	cmpwi r3, 0
/* 80826D04  41 82 01 2C */	beq lbl_80826E30
/* 80826D08  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701BA@ha */
/* 80826D0C  38 03 01 BA */	addi r0, r3, 0x01BA /* 0x000701BA@l */
/* 80826D10  90 01 00 34 */	stw r0, 0x34(r1)
/* 80826D14  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 80826D18  38 81 00 34 */	addi r4, r1, 0x34
/* 80826D1C  38 A0 00 00 */	li r5, 0
/* 80826D20  38 C0 FF FF */	li r6, -1
/* 80826D24  81 9E 05 C0 */	lwz r12, 0x5c0(r30)
/* 80826D28  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80826D2C  7D 89 03 A6 */	mtctr r12
/* 80826D30  4E 80 04 21 */	bctrl 
/* 80826D34  48 00 00 FC */	b lbl_80826E30
lbl_80826D38:
/* 80826D38  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80826D3C  38 63 00 0C */	addi r3, r3, 0xc
/* 80826D40  C0 3F 01 24 */	lfs f1, 0x124(r31)
/* 80826D44  4B B0 16 E8 */	b checkPass__12J3DFrameCtrlFf
/* 80826D48  2C 03 00 00 */	cmpwi r3, 0
/* 80826D4C  41 82 00 40 */	beq lbl_80826D8C
/* 80826D50  80 1E 05 B8 */	lwz r0, 0x5b8(r30)
/* 80826D54  2C 00 00 08 */	cmpwi r0, 8
/* 80826D58  40 82 00 34 */	bne lbl_80826D8C
/* 80826D5C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701BA@ha */
/* 80826D60  38 03 01 BA */	addi r0, r3, 0x01BA /* 0x000701BA@l */
/* 80826D64  90 01 00 30 */	stw r0, 0x30(r1)
/* 80826D68  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 80826D6C  38 81 00 30 */	addi r4, r1, 0x30
/* 80826D70  38 A0 00 00 */	li r5, 0
/* 80826D74  38 C0 FF FF */	li r6, -1
/* 80826D78  81 9E 05 C0 */	lwz r12, 0x5c0(r30)
/* 80826D7C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80826D80  7D 89 03 A6 */	mtctr r12
/* 80826D84  4E 80 04 21 */	bctrl 
/* 80826D88  48 00 00 A8 */	b lbl_80826E30
lbl_80826D8C:
/* 80826D8C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80826D90  38 63 00 0C */	addi r3, r3, 0xc
/* 80826D94  C0 3F 01 28 */	lfs f1, 0x128(r31)
/* 80826D98  4B B0 16 94 */	b checkPass__12J3DFrameCtrlFf
/* 80826D9C  2C 03 00 00 */	cmpwi r3, 0
/* 80826DA0  41 82 00 40 */	beq lbl_80826DE0
/* 80826DA4  80 1E 05 B8 */	lwz r0, 0x5b8(r30)
/* 80826DA8  2C 00 00 0D */	cmpwi r0, 0xd
/* 80826DAC  40 82 00 34 */	bne lbl_80826DE0
/* 80826DB0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701BA@ha */
/* 80826DB4  38 03 01 BA */	addi r0, r3, 0x01BA /* 0x000701BA@l */
/* 80826DB8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80826DBC  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 80826DC0  38 81 00 2C */	addi r4, r1, 0x2c
/* 80826DC4  38 A0 00 00 */	li r5, 0
/* 80826DC8  38 C0 FF FF */	li r6, -1
/* 80826DCC  81 9E 05 C0 */	lwz r12, 0x5c0(r30)
/* 80826DD0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80826DD4  7D 89 03 A6 */	mtctr r12
/* 80826DD8  4E 80 04 21 */	bctrl 
/* 80826DDC  48 00 00 54 */	b lbl_80826E30
lbl_80826DE0:
/* 80826DE0  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80826DE4  38 63 00 0C */	addi r3, r3, 0xc
/* 80826DE8  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80826DEC  4B B0 16 40 */	b checkPass__12J3DFrameCtrlFf
/* 80826DF0  2C 03 00 00 */	cmpwi r3, 0
/* 80826DF4  41 82 00 3C */	beq lbl_80826E30
/* 80826DF8  80 1E 05 B8 */	lwz r0, 0x5b8(r30)
/* 80826DFC  2C 00 00 0F */	cmpwi r0, 0xf
/* 80826E00  40 82 00 30 */	bne lbl_80826E30
/* 80826E04  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701BA@ha */
/* 80826E08  38 03 01 BA */	addi r0, r3, 0x01BA /* 0x000701BA@l */
/* 80826E0C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80826E10  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 80826E14  38 81 00 28 */	addi r4, r1, 0x28
/* 80826E18  38 A0 00 00 */	li r5, 0
/* 80826E1C  38 C0 FF FF */	li r6, -1
/* 80826E20  81 9E 05 C0 */	lwz r12, 0x5c0(r30)
/* 80826E24  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80826E28  7D 89 03 A6 */	mtctr r12
/* 80826E2C  4E 80 04 21 */	bctrl 
lbl_80826E30:
/* 80826E30  88 1E 06 69 */	lbz r0, 0x669(r30)
/* 80826E34  28 00 00 0A */	cmplwi r0, 0xa
/* 80826E38  40 82 00 14 */	bne lbl_80826E4C
/* 80826E3C  7F C3 F3 78 */	mr r3, r30
/* 80826E40  4B FF F2 A9 */	bl e_yr_damage__FP10e_yr_class
/* 80826E44  7C 79 1B 78 */	mr r25, r3
/* 80826E48  48 00 00 CC */	b lbl_80826F14
lbl_80826E4C:
/* 80826E4C  38 00 00 03 */	li r0, 3
/* 80826E50  98 1E 05 46 */	stb r0, 0x546(r30)
/* 80826E54  3A A0 00 00 */	li r21, 0
/* 80826E58  88 1E 06 E9 */	lbz r0, 0x6e9(r30)
/* 80826E5C  7C 00 07 75 */	extsb. r0, r0
/* 80826E60  41 82 00 10 */	beq lbl_80826E70
/* 80826E64  7F C3 F3 78 */	mr r3, r30
/* 80826E68  4B FF C4 1D */	bl e_yr_path_move__FP10e_yr_class
/* 80826E6C  48 00 00 70 */	b lbl_80826EDC
lbl_80826E70:
/* 80826E70  88 1E 06 69 */	lbz r0, 0x669(r30)
/* 80826E74  28 00 00 09 */	cmplwi r0, 9
/* 80826E78  40 82 00 1C */	bne lbl_80826E94
/* 80826E7C  38 00 00 16 */	li r0, 0x16
/* 80826E80  98 1E 05 46 */	stb r0, 0x546(r30)
/* 80826E84  7F C3 F3 78 */	mr r3, r30
/* 80826E88  4B FF DD 35 */	bl e_yr_horse_move__FP10e_yr_class
/* 80826E8C  3A A0 00 01 */	li r21, 1
/* 80826E90  48 00 00 4C */	b lbl_80826EDC
lbl_80826E94:
/* 80826E94  28 00 00 03 */	cmplwi r0, 3
/* 80826E98  40 82 00 14 */	bne lbl_80826EAC
/* 80826E9C  7F C3 F3 78 */	mr r3, r30
/* 80826EA0  4B FF CE 9D */	bl e_yr_atack_move__FP10e_yr_class
/* 80826EA4  3A A0 00 01 */	li r21, 1
/* 80826EA8  48 00 00 34 */	b lbl_80826EDC
lbl_80826EAC:
/* 80826EAC  28 00 00 04 */	cmplwi r0, 4
/* 80826EB0  40 82 00 10 */	bne lbl_80826EC0
/* 80826EB4  7F C3 F3 78 */	mr r3, r30
/* 80826EB8  4B FF E5 CD */	bl e_yr_wait_move__FP10e_yr_class
/* 80826EBC  48 00 00 20 */	b lbl_80826EDC
lbl_80826EC0:
/* 80826EC0  28 00 00 07 */	cmplwi r0, 7
/* 80826EC4  40 82 00 10 */	bne lbl_80826ED4
/* 80826EC8  7F C3 F3 78 */	mr r3, r30
/* 80826ECC  4B FF EC 11 */	bl e_yr_su_wait_move__FP10e_yr_class
/* 80826ED0  48 00 00 0C */	b lbl_80826EDC
lbl_80826ED4:
/* 80826ED4  7F C3 F3 78 */	mr r3, r30
/* 80826ED8  4B FF CB 21 */	bl e_yr_auto_move__FP10e_yr_class
lbl_80826EDC:
/* 80826EDC  7E A0 07 75 */	extsb. r0, r21
/* 80826EE0  41 82 00 14 */	beq lbl_80826EF4
/* 80826EE4  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 80826EE8  38 80 00 01 */	li r4, 1
/* 80826EEC  4B A9 AC 90 */	b setLinkSearch__15Z2CreatureEnemyFb
/* 80826EF0  48 00 00 10 */	b lbl_80826F00
lbl_80826EF4:
/* 80826EF4  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 80826EF8  38 80 00 00 */	li r4, 0
/* 80826EFC  4B A9 AC 80 */	b setLinkSearch__15Z2CreatureEnemyFb
lbl_80826F00:
/* 80826F00  38 7E 06 F2 */	addi r3, r30, 0x6f2
/* 80826F04  38 80 00 00 */	li r4, 0
/* 80826F08  38 A0 00 04 */	li r5, 4
/* 80826F0C  38 C0 08 00 */	li r6, 0x800
/* 80826F10  4B A4 96 F8 */	b cLib_addCalcAngleS2__FPssss
lbl_80826F14:
/* 80826F14  7F 20 07 75 */	extsb. r0, r25
/* 80826F18  40 82 00 18 */	bne lbl_80826F30
/* 80826F1C  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80826F20  54 00 00 3E */	slwi r0, r0, 0
/* 80826F24  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 80826F28  38 00 00 00 */	li r0, 0
/* 80826F2C  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80826F30:
/* 80826F30  38 61 00 40 */	addi r3, r1, 0x40
/* 80826F34  38 9E 04 DC */	addi r4, r30, 0x4dc
/* 80826F38  38 BE 06 F2 */	addi r5, r30, 0x6f2
/* 80826F3C  4B A4 04 C8 */	b __pl__5csXyzFR5csXyz
/* 80826F40  A8 01 00 40 */	lha r0, 0x40(r1)
/* 80826F44  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80826F48  A8 01 00 42 */	lha r0, 0x42(r1)
/* 80826F4C  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80826F50  A8 01 00 44 */	lha r0, 0x44(r1)
/* 80826F54  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 80826F58  7F C3 F3 78 */	mr r3, r30
/* 80826F5C  4B FF F8 65 */	bl ground_angle_set__FP10e_yr_class
/* 80826F60  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80826F64  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80826F68  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80826F6C  38 60 00 00 */	li r3, 0
/* 80826F70  4B A4 9E EC */	b MtxTrans__FfffUc
/* 80826F74  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80826F78  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80826F7C  80 63 00 00 */	lwz r3, 0(r3)
/* 80826F80  A8 9E 06 F8 */	lha r4, 0x6f8(r30)
/* 80826F84  4B 7E 54 18 */	b mDoMtx_XrotM__FPA4_fs
/* 80826F88  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80826F8C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80826F90  80 63 00 00 */	lwz r3, 0(r3)
/* 80826F94  A8 9E 06 FC */	lha r4, 0x6fc(r30)
/* 80826F98  4B 7E 55 34 */	b mDoMtx_ZrotM__FPA4_fs
/* 80826F9C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80826FA0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80826FA4  80 63 00 00 */	lwz r3, 0(r3)
/* 80826FA8  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80826FAC  4B 7E 54 88 */	b mDoMtx_YrotM__FPA4_fs
/* 80826FB0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80826FB4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80826FB8  80 63 00 00 */	lwz r3, 0(r3)
/* 80826FBC  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 80826FC0  4B 7E 53 DC */	b mDoMtx_XrotM__FPA4_fs
/* 80826FC4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80826FC8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80826FCC  80 63 00 00 */	lwz r3, 0(r3)
/* 80826FD0  A8 9E 04 E8 */	lha r4, 0x4e8(r30)
/* 80826FD4  4B 7E 54 F8 */	b mDoMtx_ZrotM__FPA4_fs
/* 80826FD8  3C 60 80 83 */	lis r3, l_e_yrHIO@ha
/* 80826FDC  38 63 8D BC */	addi r3, r3, l_e_yrHIO@l
/* 80826FE0  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 80826FE4  FC 40 08 90 */	fmr f2, f1
/* 80826FE8  FC 60 08 90 */	fmr f3, f1
/* 80826FEC  38 60 00 01 */	li r3, 1
/* 80826FF0  4B A4 9E B4 */	b MtxScale__FfffUc
/* 80826FF4  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80826FF8  83 23 00 04 */	lwz r25, 4(r3)
/* 80826FFC  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80827000  D0 19 00 18 */	stfs f0, 0x18(r25)
/* 80827004  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 80827008  D0 19 00 1C */	stfs f0, 0x1c(r25)
/* 8082700C  C0 1E 04 F4 */	lfs f0, 0x4f4(r30)
/* 80827010  D0 19 00 20 */	stfs f0, 0x20(r25)
/* 80827014  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80827018  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8082701C  80 63 00 00 */	lwz r3, 0(r3)
/* 80827020  38 99 00 24 */	addi r4, r25, 0x24
/* 80827024  4B B1 F4 8C */	b PSMTXCopy
/* 80827028  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8082702C  4B 7E A1 C0 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 80827030  88 1E 0F 1C */	lbz r0, 0xf1c(r30)
/* 80827034  7C 00 07 75 */	extsb. r0, r0
/* 80827038  40 82 00 C8 */	bne lbl_80827100
/* 8082703C  3B 00 00 00 */	li r24, 0
/* 80827040  3A C0 00 00 */	li r22, 0
/* 80827044  3A E0 00 00 */	li r23, 0
/* 80827048  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8082704C  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 80827050  3B 5C 01 F4 */	addi r26, r28, 0x1f4
lbl_80827054:
/* 80827054  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80827058  38 00 00 FF */	li r0, 0xff
/* 8082705C  90 01 00 08 */	stw r0, 8(r1)
/* 80827060  38 80 00 00 */	li r4, 0
/* 80827064  90 81 00 0C */	stw r4, 0xc(r1)
/* 80827068  38 00 FF FF */	li r0, -1
/* 8082706C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80827070  90 81 00 14 */	stw r4, 0x14(r1)
/* 80827074  90 81 00 18 */	stw r4, 0x18(r1)
/* 80827078  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8082707C  3A B7 0E F4 */	addi r21, r23, 0xef4
/* 80827080  7C 9E A8 2E */	lwzx r4, r30, r21
/* 80827084  38 A0 00 00 */	li r5, 0
/* 80827088  7C DA B2 2E */	lhzx r6, r26, r22
/* 8082708C  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 80827090  39 00 00 00 */	li r8, 0
/* 80827094  39 20 00 00 */	li r9, 0
/* 80827098  39 40 00 00 */	li r10, 0
/* 8082709C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 808270A0  4B 82 64 2C */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 808270A4  7C 7E A9 2E */	stwx r3, r30, r21
/* 808270A8  2C 18 00 04 */	cmpwi r24, 4
/* 808270AC  41 82 00 40 */	beq lbl_808270EC
/* 808270B0  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 808270B4  38 63 02 10 */	addi r3, r3, 0x210
/* 808270B8  7C 9E A8 2E */	lwzx r4, r30, r21
/* 808270BC  4B 82 48 5C */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 808270C0  7C 65 1B 79 */	or. r5, r3, r3
/* 808270C4  41 82 00 28 */	beq lbl_808270EC
/* 808270C8  80 79 00 84 */	lwz r3, 0x84(r25)
/* 808270CC  80 83 00 0C */	lwz r4, 0xc(r3)
/* 808270D0  38 7C 02 00 */	addi r3, r28, 0x200
/* 808270D4  7C 03 B8 2E */	lwzx r0, r3, r23
/* 808270D8  1C 00 00 30 */	mulli r0, r0, 0x30
/* 808270DC  7C 64 02 14 */	add r3, r4, r0
/* 808270E0  38 85 00 68 */	addi r4, r5, 0x68
/* 808270E4  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 808270E8  4B A5 96 F8 */	b func_802807E0
lbl_808270EC:
/* 808270EC  3B 18 00 01 */	addi r24, r24, 1
/* 808270F0  2C 18 00 05 */	cmpwi r24, 5
/* 808270F4  3A D6 00 02 */	addi r22, r22, 2
/* 808270F8  3A F7 00 04 */	addi r23, r23, 4
/* 808270FC  41 80 FF 58 */	blt lbl_80827054
lbl_80827100:
/* 80827100  80 1E 05 B8 */	lwz r0, 0x5b8(r30)
/* 80827104  2C 00 00 04 */	cmpwi r0, 4
/* 80827108  40 82 00 6C */	bne lbl_80827174
/* 8082710C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80827110  38 63 00 0C */	addi r3, r3, 0xc
/* 80827114  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80827118  4B B0 13 14 */	b checkPass__12J3DFrameCtrlFf
/* 8082711C  2C 03 00 00 */	cmpwi r3, 0
/* 80827120  41 82 00 54 */	beq lbl_80827174
/* 80827124  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80827128  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8082712C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80827130  38 80 00 00 */	li r4, 0
/* 80827134  90 81 00 08 */	stw r4, 8(r1)
/* 80827138  38 00 FF FF */	li r0, -1
/* 8082713C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80827140  90 81 00 10 */	stw r4, 0x10(r1)
/* 80827144  90 81 00 14 */	stw r4, 0x14(r1)
/* 80827148  90 81 00 18 */	stw r4, 0x18(r1)
/* 8082714C  38 80 00 00 */	li r4, 0
/* 80827150  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008435@ha */
/* 80827154  38 A5 84 35 */	addi r5, r5, 0x8435 /* 0x00008435@l */
/* 80827158  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 8082715C  38 E0 00 00 */	li r7, 0
/* 80827160  39 00 00 00 */	li r8, 0
/* 80827164  39 20 00 00 */	li r9, 0
/* 80827168  39 40 00 FF */	li r10, 0xff
/* 8082716C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80827170  4B 82 59 20 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_80827174:
/* 80827174  80 1E 05 B8 */	lwz r0, 0x5b8(r30)
/* 80827178  2C 00 00 06 */	cmpwi r0, 6
/* 8082717C  40 82 00 CC */	bne lbl_80827248
/* 80827180  38 00 00 01 */	li r0, 1
/* 80827184  98 1E 0F 1C */	stb r0, 0xf1c(r30)
/* 80827188  3B 00 00 00 */	li r24, 0
/* 8082718C  3A E0 00 00 */	li r23, 0
/* 80827190  3A C0 00 00 */	li r22, 0
/* 80827194  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80827198  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
/* 8082719C  3B 7C 02 10 */	addi r27, r28, 0x210
lbl_808271A0:
/* 808271A0  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 808271A4  38 00 00 FF */	li r0, 0xff
/* 808271A8  90 01 00 08 */	stw r0, 8(r1)
/* 808271AC  38 80 00 00 */	li r4, 0
/* 808271B0  90 81 00 0C */	stw r4, 0xc(r1)
/* 808271B4  38 00 FF FF */	li r0, -1
/* 808271B8  90 01 00 10 */	stw r0, 0x10(r1)
/* 808271BC  90 81 00 14 */	stw r4, 0x14(r1)
/* 808271C0  90 81 00 18 */	stw r4, 0x18(r1)
/* 808271C4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 808271C8  3A B6 0F 08 */	addi r21, r22, 0xf08
/* 808271CC  7C 9E A8 2E */	lwzx r4, r30, r21
/* 808271D0  38 A0 00 00 */	li r5, 0
/* 808271D4  7C DB BA 2E */	lhzx r6, r27, r23
/* 808271D8  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 808271DC  39 00 00 00 */	li r8, 0
/* 808271E0  39 20 00 00 */	li r9, 0
/* 808271E4  39 40 00 00 */	li r10, 0
/* 808271E8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 808271EC  4B 82 62 E0 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 808271F0  7C 7E A9 2E */	stwx r3, r30, r21
/* 808271F4  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 808271F8  38 63 02 10 */	addi r3, r3, 0x210
/* 808271FC  7C 9E A8 2E */	lwzx r4, r30, r21
/* 80827200  4B 82 47 18 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80827204  7C 65 1B 79 */	or. r5, r3, r3
/* 80827208  41 82 00 28 */	beq lbl_80827230
/* 8082720C  80 79 00 84 */	lwz r3, 0x84(r25)
/* 80827210  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80827214  38 7C 02 14 */	addi r3, r28, 0x214
/* 80827218  7C 03 B0 2E */	lwzx r0, r3, r22
/* 8082721C  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80827220  7C 64 02 14 */	add r3, r4, r0
/* 80827224  38 85 00 68 */	addi r4, r5, 0x68
/* 80827228  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 8082722C  4B A5 95 B4 */	b func_802807E0
lbl_80827230:
/* 80827230  3B 18 00 01 */	addi r24, r24, 1
/* 80827234  2C 18 00 02 */	cmpwi r24, 2
/* 80827238  3A F7 00 02 */	addi r23, r23, 2
/* 8082723C  3A D6 00 04 */	addi r22, r22, 4
/* 80827240  41 80 FF 60 */	blt lbl_808271A0
/* 80827244  48 00 00 0C */	b lbl_80827250
lbl_80827248:
/* 80827248  38 00 00 00 */	li r0, 0
/* 8082724C  98 1E 0F 1C */	stb r0, 0xf1c(r30)
lbl_80827250:
/* 80827250  80 79 00 84 */	lwz r3, 0x84(r25)
/* 80827254  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80827258  38 63 01 20 */	addi r3, r3, 0x120
/* 8082725C  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80827260  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80827264  80 84 00 00 */	lwz r4, 0(r4)
/* 80827268  4B B1 F2 48 */	b PSMTXCopy
/* 8082726C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80827270  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80827274  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80827278  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8082727C  38 61 00 6C */	addi r3, r1, 0x6c
/* 80827280  38 9E 05 38 */	addi r4, r30, 0x538
/* 80827284  4B A4 9C 68 */	b MtxPosition__FP4cXyzP4cXyz
/* 80827288  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 8082728C  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80827290  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80827294  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80827298  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 8082729C  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 808272A0  C0 3E 05 54 */	lfs f1, 0x554(r30)
/* 808272A4  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 808272A8  EC 01 00 2A */	fadds f0, f1, f0
/* 808272AC  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 808272B0  80 79 00 84 */	lwz r3, 0x84(r25)
/* 808272B4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 808272B8  38 63 04 20 */	addi r3, r3, 0x420
/* 808272BC  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 808272C0  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 808272C4  80 84 00 00 */	lwz r4, 0(r4)
/* 808272C8  4B B1 F1 E8 */	b PSMTXCopy
/* 808272CC  38 61 00 6C */	addi r3, r1, 0x6c
/* 808272D0  38 9E 0E 6C */	addi r4, r30, 0xe6c
/* 808272D4  4B A4 9C 18 */	b MtxPosition__FP4cXyzP4cXyz
/* 808272D8  80 79 00 84 */	lwz r3, 0x84(r25)
/* 808272DC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 808272E0  38 63 05 10 */	addi r3, r3, 0x510
/* 808272E4  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 808272E8  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 808272EC  80 84 00 00 */	lwz r4, 0(r4)
/* 808272F0  4B B1 F1 C0 */	b PSMTXCopy
/* 808272F4  38 61 00 6C */	addi r3, r1, 0x6c
/* 808272F8  38 9E 0E 78 */	addi r4, r30, 0xe78
/* 808272FC  4B A4 9B F0 */	b MtxPosition__FP4cXyzP4cXyz
/* 80827300  88 1E 06 6B */	lbz r0, 0x66b(r30)
/* 80827304  28 00 00 00 */	cmplwi r0, 0
/* 80827308  41 82 00 F0 */	beq lbl_808273F8
/* 8082730C  2C 00 00 02 */	cmpwi r0, 2
/* 80827310  41 82 00 2C */	beq lbl_8082733C
/* 80827314  40 80 00 10 */	bge lbl_80827324
/* 80827318  2C 00 00 01 */	cmpwi r0, 1
/* 8082731C  40 80 00 14 */	bge lbl_80827330
/* 80827320  48 00 00 D8 */	b lbl_808273F8
lbl_80827324:
/* 80827324  2C 00 00 04 */	cmpwi r0, 4
/* 80827328  40 80 00 D0 */	bge lbl_808273F8
/* 8082732C  48 00 00 40 */	b lbl_8082736C
lbl_80827330:
/* 80827330  38 00 00 02 */	li r0, 2
/* 80827334  98 1E 06 6B */	stb r0, 0x66b(r30)
/* 80827338  48 00 00 C0 */	b lbl_808273F8
lbl_8082733C:
/* 8082733C  80 1E 06 74 */	lwz r0, 0x674(r30)
/* 80827340  90 01 00 20 */	stw r0, 0x20(r1)
/* 80827344  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80827348  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 8082734C  38 81 00 20 */	addi r4, r1, 0x20
/* 80827350  4B 7F 24 A8 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80827354  28 03 00 00 */	cmplwi r3, 0
/* 80827358  41 82 00 A0 */	beq lbl_808273F8
/* 8082735C  90 7E 06 70 */	stw r3, 0x670(r30)
/* 80827360  38 00 00 03 */	li r0, 3
/* 80827364  98 1E 06 6B */	stb r0, 0x66b(r30)
/* 80827368  48 00 00 90 */	b lbl_808273F8
lbl_8082736C:
/* 8082736C  80 7E 06 70 */	lwz r3, 0x670(r30)
/* 80827370  C0 3E 0E 6C */	lfs f1, 0xe6c(r30)
/* 80827374  C0 1E 0E 78 */	lfs f0, 0xe78(r30)
/* 80827378  EC 00 08 28 */	fsubs f0, f0, f1
/* 8082737C  C0 7F 00 5C */	lfs f3, 0x5c(r31)
/* 80827380  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80827384  EC 41 00 2A */	fadds f2, f1, f0
/* 80827388  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 8082738C  C0 3E 0E 70 */	lfs f1, 0xe70(r30)
/* 80827390  C0 1E 0E 7C */	lfs f0, 0xe7c(r30)
/* 80827394  EC 00 08 28 */	fsubs f0, f0, f1
/* 80827398  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8082739C  EC 21 00 2A */	fadds f1, f1, f0
/* 808273A0  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 808273A4  C0 9E 0E 74 */	lfs f4, 0xe74(r30)
/* 808273A8  C0 1E 0E 80 */	lfs f0, 0xe80(r30)
/* 808273AC  EC 00 20 28 */	fsubs f0, f0, f4
/* 808273B0  EC 00 00 F2 */	fmuls f0, f0, f3
/* 808273B4  EC 04 00 2A */	fadds f0, f4, f0
/* 808273B8  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 808273BC  D0 43 04 D0 */	stfs f2, 0x4d0(r3)
/* 808273C0  D0 23 04 D4 */	stfs f1, 0x4d4(r3)
/* 808273C4  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
/* 808273C8  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 808273CC  B0 03 04 DC */	sth r0, 0x4dc(r3)
/* 808273D0  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 808273D4  B0 03 04 DE */	sth r0, 0x4de(r3)
/* 808273D8  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 808273DC  B0 03 04 E0 */	sth r0, 0x4e0(r3)
/* 808273E0  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 808273E4  B0 03 04 E4 */	sth r0, 0x4e4(r3)
/* 808273E8  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 808273EC  B0 03 04 E6 */	sth r0, 0x4e6(r3)
/* 808273F0  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 808273F4  B0 03 04 E8 */	sth r0, 0x4e8(r3)
lbl_808273F8:
/* 808273F8  A8 1E 06 D0 */	lha r0, 0x6d0(r30)
/* 808273FC  2C 00 00 00 */	cmpwi r0, 0
/* 80827400  41 82 00 48 */	beq lbl_80827448
/* 80827404  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80827408  C0 3F 01 2C */	lfs f1, 0x12c(r31)
/* 8082740C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80827410  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80827414  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80827418  C0 1F 01 30 */	lfs f0, 0x130(r31)
/* 8082741C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80827420  38 7E 0B C4 */	addi r3, r30, 0xbc4
/* 80827424  38 81 00 54 */	addi r4, r1, 0x54
/* 80827428  4B A4 82 20 */	b SetC__8cM3dGSphFRC4cXyz
/* 8082742C  38 7E 0C FC */	addi r3, r30, 0xcfc
/* 80827430  38 81 00 54 */	addi r4, r1, 0x54
/* 80827434  4B A4 82 14 */	b SetC__8cM3dGSphFRC4cXyz
/* 80827438  38 7E 0E 34 */	addi r3, r30, 0xe34
/* 8082743C  38 81 00 54 */	addi r4, r1, 0x54
/* 80827440  4B A4 82 08 */	b SetC__8cM3dGSphFRC4cXyz
/* 80827444  48 00 00 28 */	b lbl_8082746C
lbl_80827448:
/* 80827448  38 7E 0B C4 */	addi r3, r30, 0xbc4
/* 8082744C  38 9E 05 38 */	addi r4, r30, 0x538
/* 80827450  4B A4 81 F8 */	b SetC__8cM3dGSphFRC4cXyz
/* 80827454  38 7E 0C FC */	addi r3, r30, 0xcfc
/* 80827458  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8082745C  4B A4 81 EC */	b SetC__8cM3dGSphFRC4cXyz
/* 80827460  38 7E 0E 34 */	addi r3, r30, 0xe34
/* 80827464  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80827468  4B A4 81 E0 */	b SetC__8cM3dGSphFRC4cXyz
lbl_8082746C:
/* 8082746C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80827470  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80827474  3A A3 23 3C */	addi r21, r3, 0x233c
/* 80827478  7E A3 AB 78 */	mr r3, r21
/* 8082747C  38 9E 0A A0 */	addi r4, r30, 0xaa0
/* 80827480  4B A3 D7 28 */	b Set__4cCcSFP8cCcD_Obj
/* 80827484  7E A3 AB 78 */	mr r3, r21
/* 80827488  38 9E 0B D8 */	addi r4, r30, 0xbd8
/* 8082748C  4B A3 D7 1C */	b Set__4cCcSFP8cCcD_Obj
/* 80827490  7E A3 AB 78 */	mr r3, r21
/* 80827494  38 9E 0D 10 */	addi r4, r30, 0xd10
/* 80827498  4B A3 D7 10 */	b Set__4cCcSFP8cCcD_Obj
/* 8082749C  34 7E 09 2C */	addic. r3, r30, 0x92c
/* 808274A0  41 82 00 30 */	beq lbl_808274D0
/* 808274A4  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 808274A8  C0 03 00 00 */	lfs f0, 0(r3)
/* 808274AC  C0 5F 01 34 */	lfs f2, 0x134(r31)
/* 808274B0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 808274B4  EC 01 00 2A */	fadds f0, f1, f0
/* 808274B8  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 808274BC  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 808274C0  C0 03 00 08 */	lfs f0, 8(r3)
/* 808274C4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 808274C8  EC 01 00 2A */	fadds f0, f1, f0
/* 808274CC  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
lbl_808274D0:
/* 808274D0  88 1E 09 24 */	lbz r0, 0x924(r30)
/* 808274D4  28 00 00 00 */	cmplwi r0, 0
/* 808274D8  41 82 00 1C */	beq lbl_808274F4
/* 808274DC  C0 1E 06 D8 */	lfs f0, 0x6d8(r30)
/* 808274E0  FC 00 02 10 */	fabs f0, f0
/* 808274E4  FC 20 00 18 */	frsp f1, f0
/* 808274E8  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 808274EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 808274F0  40 81 00 7C */	ble lbl_8082756C
lbl_808274F4:
/* 808274F4  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 808274F8  88 1E 06 69 */	lbz r0, 0x669(r30)
/* 808274FC  28 00 00 0A */	cmplwi r0, 0xa
/* 80827500  40 82 00 08 */	bne lbl_80827508
/* 80827504  C0 3F 00 64 */	lfs f1, 0x64(r31)
lbl_80827508:
/* 80827508  38 7E 09 28 */	addi r3, r30, 0x928
/* 8082750C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80827510  C0 7F 00 7C */	lfs f3, 0x7c(r31)
/* 80827514  4B A4 85 28 */	b cLib_addCalc2__FPffff
/* 80827518  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8082751C  C0 1E 09 28 */	lfs f0, 0x928(r30)
/* 80827520  EC 01 00 28 */	fsubs f0, f1, f0
/* 80827524  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80827528  C0 3E 04 C0 */	lfs f1, 0x4c0(r30)
/* 8082752C  C0 1E 09 28 */	lfs f0, 0x928(r30)
/* 80827530  EC 01 00 28 */	fsubs f0, f1, f0
/* 80827534  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80827538  38 7E 07 4C */	addi r3, r30, 0x74c
/* 8082753C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80827540  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80827544  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80827548  4B 84 F5 64 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 8082754C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80827550  C0 1E 09 28 */	lfs f0, 0x928(r30)
/* 80827554  EC 01 00 2A */	fadds f0, f1, f0
/* 80827558  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8082755C  C0 3E 04 C0 */	lfs f1, 0x4c0(r30)
/* 80827560  C0 1E 09 28 */	lfs f0, 0x928(r30)
/* 80827564  EC 01 00 2A */	fadds f0, f1, f0
/* 80827568  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
lbl_8082756C:
/* 8082756C  38 00 00 00 */	li r0, 0
/* 80827570  98 1E 09 24 */	stb r0, 0x924(r30)
/* 80827574  7F C3 F3 78 */	mr r3, r30
/* 80827578  4B FF EF 7D */	bl damage_check__FP10e_yr_class
/* 8082757C  3B 00 08 00 */	li r24, 0x800
/* 80827580  88 1E 0E 94 */	lbz r0, 0xe94(r30)
/* 80827584  28 00 00 00 */	cmplwi r0, 0
/* 80827588  41 82 00 E4 */	beq lbl_8082766C
/* 8082758C  28 00 00 01 */	cmplwi r0, 1
/* 80827590  40 82 00 58 */	bne lbl_808275E8
/* 80827594  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 80827598  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8082759C  EC 21 00 28 */	fsubs f1, f1, f0
/* 808275A0  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 808275A4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 808275A8  EC 42 00 28 */	fsubs f2, f2, f0
/* 808275AC  4B A4 00 C8 */	b cM_atan2s__Fff
/* 808275B0  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 808275B4  7C 03 00 50 */	subf r0, r3, r0
/* 808275B8  B0 1E 0E 86 */	sth r0, 0xe86(r30)
/* 808275BC  A8 1E 0E 86 */	lha r0, 0xe86(r30)
/* 808275C0  2C 00 27 10 */	cmpwi r0, 0x2710
/* 808275C4  40 81 00 10 */	ble lbl_808275D4
/* 808275C8  38 00 27 10 */	li r0, 0x2710
/* 808275CC  B0 1E 0E 86 */	sth r0, 0xe86(r30)
/* 808275D0  48 00 00 90 */	b lbl_80827660
lbl_808275D4:
/* 808275D4  2C 00 D8 F0 */	cmpwi r0, -10000
/* 808275D8  40 80 00 88 */	bge lbl_80827660
/* 808275DC  38 00 D8 F0 */	li r0, -10000
/* 808275E0  B0 1E 0E 86 */	sth r0, 0xe86(r30)
/* 808275E4  48 00 00 7C */	b lbl_80827660
lbl_808275E8:
/* 808275E8  28 00 00 02 */	cmplwi r0, 2
/* 808275EC  40 82 00 74 */	bne lbl_80827660
/* 808275F0  3B 00 02 00 */	li r24, 0x200
/* 808275F4  A8 1E 06 DE */	lha r0, 0x6de(r30)
/* 808275F8  54 00 06 FF */	clrlwi. r0, r0, 0x1b
/* 808275FC  40 82 00 30 */	bne lbl_8082762C
/* 80827600  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80827604  4B A4 03 50 */	b cM_rndF__Ff
/* 80827608  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 8082760C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80827610  40 80 00 1C */	bge lbl_8082762C
/* 80827614  C0 3F 01 2C */	lfs f1, 0x12c(r31)
/* 80827618  4B A4 03 74 */	b cM_rndFX__Ff
/* 8082761C  FC 00 08 1E */	fctiwz f0, f1
/* 80827620  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 80827624  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 80827628  B0 1E 0E 86 */	sth r0, 0xe86(r30)
lbl_8082762C:
/* 8082762C  A8 1E 06 DE */	lha r0, 0x6de(r30)
/* 80827630  54 00 06 BF */	clrlwi. r0, r0, 0x1a
/* 80827634  40 82 00 2C */	bne lbl_80827660
/* 80827638  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8082763C  4B A4 03 18 */	b cM_rndF__Ff
/* 80827640  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80827644  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80827648  40 80 00 18 */	bge lbl_80827660
/* 8082764C  7F C3 F3 78 */	mr r3, r30
/* 80827650  38 80 00 19 */	li r4, 0x19
/* 80827654  3C A0 00 07 */	lis r5, 0x0007 /* 0x000701BB@ha */
/* 80827658  38 A5 01 BB */	addi r5, r5, 0x01BB /* 0x000701BB@l */
/* 8082765C  4B FF B1 ED */	bl kuti_open__FP10e_yr_classsUl
lbl_80827660:
/* 80827660  38 00 00 00 */	li r0, 0
/* 80827664  98 1E 0E 94 */	stb r0, 0xe94(r30)
/* 80827668  48 00 00 0C */	b lbl_80827674
lbl_8082766C:
/* 8082766C  38 00 00 00 */	li r0, 0
/* 80827670  B0 1E 0E 86 */	sth r0, 0xe86(r30)
lbl_80827674:
/* 80827674  38 7E 0E 84 */	addi r3, r30, 0xe84
/* 80827678  A8 1E 0E 86 */	lha r0, 0xe86(r30)
/* 8082767C  7C 00 0E 70 */	srawi r0, r0, 1
/* 80827680  7C 00 01 94 */	addze r0, r0
/* 80827684  7C 00 00 D0 */	neg r0, r0
/* 80827688  7C 04 07 34 */	extsh r4, r0
/* 8082768C  38 A0 00 02 */	li r5, 2
/* 80827690  7F 06 C3 78 */	mr r6, r24
/* 80827694  4B A4 8F 74 */	b cLib_addCalcAngleS2__FPssss
/* 80827698  3A A0 00 00 */	li r21, 0
/* 8082769C  A8 7E 0E 8A */	lha r3, 0xe8a(r30)
/* 808276A0  2C 03 00 00 */	cmpwi r3, 0
/* 808276A4  41 82 00 4C */	beq lbl_808276F0
/* 808276A8  38 03 FF FF */	addi r0, r3, -1
/* 808276AC  B0 1E 0E 8A */	sth r0, 0xe8a(r30)
/* 808276B0  3A A0 27 10 */	li r21, 0x2710
/* 808276B4  A8 7E 0E 8A */	lha r3, 0xe8a(r30)
/* 808276B8  A8 1E 0E 8C */	lha r0, 0xe8c(r30)
/* 808276BC  7C 03 00 00 */	cmpw r3, r0
/* 808276C0  40 82 00 30 */	bne lbl_808276F0
/* 808276C4  80 1E 0E 90 */	lwz r0, 0xe90(r30)
/* 808276C8  28 00 00 00 */	cmplwi r0, 0
/* 808276CC  41 82 00 24 */	beq lbl_808276F0
/* 808276D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 808276D4  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 808276D8  38 81 00 24 */	addi r4, r1, 0x24
/* 808276DC  38 A0 FF FF */	li r5, -1
/* 808276E0  81 9E 05 C0 */	lwz r12, 0x5c0(r30)
/* 808276E4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 808276E8  7D 89 03 A6 */	mtctr r12
/* 808276EC  4E 80 04 21 */	bctrl 
lbl_808276F0:
/* 808276F0  38 7E 0E 88 */	addi r3, r30, 0xe88
/* 808276F4  7E A4 AB 78 */	mr r4, r21
/* 808276F8  38 A0 00 02 */	li r5, 2
/* 808276FC  38 C0 07 D0 */	li r6, 0x7d0
/* 80827700  4B A4 8F 08 */	b cLib_addCalcAngleS2__FPssss
/* 80827704  38 60 00 00 */	li r3, 0
/* 80827708  38 80 00 00 */	li r4, 0
/* 8082770C  3C A0 80 44 */	lis r5, sincosTable___5JMath@ha
/* 80827710  38 C5 9A 20 */	addi r6, r5, sincosTable___5JMath@l
/* 80827714  38 00 00 09 */	li r0, 9
/* 80827718  7C 09 03 A6 */	mtctr r0
lbl_8082771C:
/* 8082771C  A8 1E 06 DE */	lha r0, 0x6de(r30)
/* 80827720  1C 00 1B 58 */	mulli r0, r0, 0x1b58
/* 80827724  7C 00 22 14 */	add r0, r0, r4
/* 80827728  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8082772C  7C 26 04 2E */	lfsx f1, r6, r0
/* 80827730  C0 1E 0E B0 */	lfs f0, 0xeb0(r30)
/* 80827734  EC 00 00 72 */	fmuls f0, f0, f1
/* 80827738  FC 00 00 1E */	fctiwz f0, f0
/* 8082773C  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 80827740  80 A1 00 7C */	lwz r5, 0x7c(r1)
/* 80827744  38 03 0E 96 */	addi r0, r3, 0xe96
/* 80827748  7C BE 03 2E */	sthx r5, r30, r0
/* 8082774C  38 63 00 02 */	addi r3, r3, 2
/* 80827750  38 84 2A F8 */	addi r4, r4, 0x2af8
/* 80827754  42 00 FF C8 */	bdnz lbl_8082771C
/* 80827758  38 7E 0E B0 */	addi r3, r30, 0xeb0
/* 8082775C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80827760  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 80827764  4B A4 83 1C */	b cLib_addCalc0__FPfff
/* 80827768  C0 3E 06 D8 */	lfs f1, 0x6d8(r30)
/* 8082776C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80827770  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80827774  40 81 00 74 */	ble lbl_808277E8
/* 80827778  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 8082777C  A8 1E 06 D2 */	lha r0, 0x6d2(r30)
/* 80827780  7C 03 00 50 */	subf r0, r3, r0
/* 80827784  7C 03 07 34 */	extsh r3, r0
/* 80827788  A8 1E 06 F2 */	lha r0, 0x6f2(r30)
/* 8082778C  2C 00 F0 00 */	cmpwi r0, -4096
/* 80827790  41 81 00 08 */	bgt lbl_80827798
/* 80827794  38 60 00 00 */	li r3, 0
lbl_80827798:
/* 80827798  7C 63 07 34 */	extsh r3, r3
/* 8082779C  20 03 40 00 */	subfic r0, r3, 0x4000
/* 808277A0  7C 04 07 34 */	extsh r4, r0
/* 808277A4  2C 04 3A 98 */	cmpwi r4, 0x3a98
/* 808277A8  40 81 00 0C */	ble lbl_808277B4
/* 808277AC  38 80 3A 98 */	li r4, 0x3a98
/* 808277B0  48 00 00 10 */	b lbl_808277C0
lbl_808277B4:
/* 808277B4  2C 04 C5 68 */	cmpwi r4, -15000
/* 808277B8  40 80 00 08 */	bge lbl_808277C0
/* 808277BC  38 80 C5 68 */	li r4, -15000
lbl_808277C0:
/* 808277C0  38 03 40 00 */	addi r0, r3, 0x4000
/* 808277C4  7C 15 07 34 */	extsh r21, r0
/* 808277C8  2C 15 3A 98 */	cmpwi r21, 0x3a98
/* 808277CC  40 81 00 0C */	ble lbl_808277D8
/* 808277D0  3A A0 3A 98 */	li r21, 0x3a98
/* 808277D4  48 00 00 1C */	b lbl_808277F0
lbl_808277D8:
/* 808277D8  2C 15 C5 68 */	cmpwi r21, -15000
/* 808277DC  40 80 00 14 */	bge lbl_808277F0
/* 808277E0  3A A0 C5 68 */	li r21, -15000
/* 808277E4  48 00 00 0C */	b lbl_808277F0
lbl_808277E8:
/* 808277E8  3A A0 00 00 */	li r21, 0
/* 808277EC  38 80 00 00 */	li r4, 0
lbl_808277F0:
/* 808277F0  38 7E 0E A8 */	addi r3, r30, 0xea8
/* 808277F4  38 A0 00 04 */	li r5, 4
/* 808277F8  38 C0 08 00 */	li r6, 0x800
/* 808277FC  4B A4 8E 0C */	b cLib_addCalcAngleS2__FPssss
/* 80827800  38 7E 0E AA */	addi r3, r30, 0xeaa
/* 80827804  7E A4 AB 78 */	mr r4, r21
/* 80827808  38 A0 00 04 */	li r5, 4
/* 8082780C  38 C0 08 00 */	li r6, 0x800
/* 80827810  4B A4 8D F8 */	b cLib_addCalcAngleS2__FPssss
/* 80827814  A8 1E 06 DE */	lha r0, 0x6de(r30)
/* 80827818  1C 00 1B 58 */	mulli r0, r0, 0x1b58
/* 8082781C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80827820  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80827824  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80827828  7C 23 04 2E */	lfsx f1, r3, r0
/* 8082782C  C0 1E 0E C0 */	lfs f0, 0xec0(r30)
/* 80827830  EC 00 00 72 */	fmuls f0, f0, f1
/* 80827834  FC 00 00 1E */	fctiwz f0, f0
/* 80827838  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 8082783C  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 80827840  B0 1E 0E B4 */	sth r0, 0xeb4(r30)
/* 80827844  38 7E 0E C0 */	addi r3, r30, 0xec0
/* 80827848  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8082784C  C0 5F 00 8C */	lfs f2, 0x8c(r31)
/* 80827850  4B A4 82 30 */	b cLib_addCalc0__FPfff
/* 80827854  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 80827858  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8082785C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80827860  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80827864  7F C3 F3 78 */	mr r3, r30
/* 80827868  38 9E 05 C0 */	addi r4, r30, 0x5c0
/* 8082786C  38 BE 05 38 */	addi r5, r30, 0x538
/* 80827870  38 C1 00 48 */	addi r6, r1, 0x48
/* 80827874  48 00 0B 79 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 80827878  38 60 00 01 */	li r3, 1
lbl_8082787C:
/* 8082787C  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 80827880  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 80827884  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80827888  4B B3 A9 80 */	b _restgpr_21
/* 8082788C  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80827890  7C 08 03 A6 */	mtlr r0
/* 80827894  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80827898  4E 80 00 20 */	blr 
