lbl_806D1CC0:
/* 806D1CC0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 806D1CC4  7C 08 02 A6 */	mflr r0
/* 806D1CC8  90 01 00 74 */	stw r0, 0x74(r1)
/* 806D1CCC  39 61 00 70 */	addi r11, r1, 0x70
/* 806D1CD0  4B C9 05 08 */	b _savegpr_28
/* 806D1CD4  7C 7C 1B 78 */	mr r28, r3
/* 806D1CD8  3C 80 80 6D */	lis r4, cNullVec__6Z2Calc@ha
/* 806D1CDC  3B C4 7A FC */	addi r30, r4, cNullVec__6Z2Calc@l
/* 806D1CE0  3C 80 80 6D */	lis r4, lit_3906@ha
/* 806D1CE4  3B E4 79 A0 */	addi r31, r4, lit_3906@l
/* 806D1CE8  80 03 0A 3C */	lwz r0, 0xa3c(r3)
/* 806D1CEC  2C 00 00 00 */	cmpwi r0, 0
/* 806D1CF0  40 82 00 A0 */	bne lbl_806D1D90
/* 806D1CF4  38 00 00 01 */	li r0, 1
/* 806D1CF8  98 1C 0A 69 */	stb r0, 0xa69(r28)
/* 806D1CFC  3C 60 80 6D */	lis r3, stringBase0@ha
/* 806D1D00  38 63 7A F0 */	addi r3, r3, stringBase0@l
/* 806D1D04  38 80 00 08 */	li r4, 8
/* 806D1D08  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806D1D0C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806D1D10  3C A5 00 02 */	addis r5, r5, 2
/* 806D1D14  38 C0 00 80 */	li r6, 0x80
/* 806D1D18  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806D1D1C  4B 96 A5 D0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806D1D20  7C 64 1B 78 */	mr r4, r3
/* 806D1D24  80 7C 09 64 */	lwz r3, 0x964(r28)
/* 806D1D28  38 A0 00 02 */	li r5, 2
/* 806D1D2C  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 806D1D30  C0 5F 00 A0 */	lfs f2, 0xa0(r31)
/* 806D1D34  C0 7F 00 04 */	lfs f3, 4(r31)
/* 806D1D38  C0 9F 00 44 */	lfs f4, 0x44(r31)
/* 806D1D3C  4B 93 F1 34 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806D1D40  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806D1D44  D0 1C 0A 44 */	stfs f0, 0xa44(r28)
/* 806D1D48  38 7C 05 B4 */	addi r3, r28, 0x5b4
/* 806D1D4C  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 806D1D50  C0 1C 04 F0 */	lfs f0, 0x4f0(r28)
/* 806D1D54  EC 21 00 32 */	fmuls f1, f1, f0
/* 806D1D58  C0 5F 00 7C */	lfs f2, 0x7c(r31)
/* 806D1D5C  C0 1C 04 EC */	lfs f0, 0x4ec(r28)
/* 806D1D60  EC 42 00 32 */	fmuls f2, f2, f0
/* 806D1D64  4B 9A 41 F4 */	b SetWall__12dBgS_AcchCirFff
/* 806D1D68  38 00 00 00 */	li r0, 0
/* 806D1D6C  98 1C 0A 6B */	stb r0, 0xa6b(r28)
/* 806D1D70  98 1C 0A 6C */	stb r0, 0xa6c(r28)
/* 806D1D74  B0 1C 0A 5E */	sth r0, 0xa5e(r28)
/* 806D1D78  38 00 04 00 */	li r0, 0x400
/* 806D1D7C  90 1C 08 18 */	stw r0, 0x818(r28)
/* 806D1D80  80 7C 0A 3C */	lwz r3, 0xa3c(r28)
/* 806D1D84  38 03 00 01 */	addi r0, r3, 1
/* 806D1D88  90 1C 0A 3C */	stw r0, 0xa3c(r28)
/* 806D1D8C  48 00 04 00 */	b lbl_806D218C
lbl_806D1D90:
/* 806D1D90  2C 00 FF FF */	cmpwi r0, -1
/* 806D1D94  41 82 03 F8 */	beq lbl_806D218C
/* 806D1D98  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806D1D9C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806D1DA0  83 A4 5D AC */	lwz r29, 0x5dac(r4)
/* 806D1DA4  88 1C 0A 76 */	lbz r0, 0xa76(r28)
/* 806D1DA8  28 00 00 00 */	cmplwi r0, 0
/* 806D1DAC  41 82 00 28 */	beq lbl_806D1DD4
/* 806D1DB0  80 9E 00 F8 */	lwz r4, 0xf8(r30)
/* 806D1DB4  80 1E 00 FC */	lwz r0, 0xfc(r30)
/* 806D1DB8  90 81 00 44 */	stw r4, 0x44(r1)
/* 806D1DBC  90 01 00 48 */	stw r0, 0x48(r1)
/* 806D1DC0  80 1E 01 00 */	lwz r0, 0x100(r30)
/* 806D1DC4  90 01 00 4C */	stw r0, 0x4c(r1)
/* 806D1DC8  38 81 00 44 */	addi r4, r1, 0x44
/* 806D1DCC  4B FF F4 FD */	bl setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v
/* 806D1DD0  48 00 03 BC */	b lbl_806D218C
lbl_806D1DD4:
/* 806D1DD4  80 7C 04 A4 */	lwz r3, 0x4a4(r28)
/* 806D1DD8  38 81 00 10 */	addi r4, r1, 0x10
/* 806D1DDC  4B 94 7B E0 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 806D1DE0  2C 03 00 00 */	cmpwi r3, 0
/* 806D1DE4  41 82 00 44 */	beq lbl_806D1E28
/* 806D1DE8  80 61 00 10 */	lwz r3, 0x10(r1)
/* 806D1DEC  28 03 00 00 */	cmplwi r3, 0
/* 806D1DF0  41 82 00 38 */	beq lbl_806D1E28
/* 806D1DF4  A8 03 1C 8C */	lha r0, 0x1c8c(r3)
/* 806D1DF8  2C 00 00 15 */	cmpwi r0, 0x15
/* 806D1DFC  40 82 00 2C */	bne lbl_806D1E28
/* 806D1E00  80 7E 01 04 */	lwz r3, 0x104(r30)
/* 806D1E04  80 1E 01 08 */	lwz r0, 0x108(r30)
/* 806D1E08  90 61 00 38 */	stw r3, 0x38(r1)
/* 806D1E0C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 806D1E10  80 1E 01 0C */	lwz r0, 0x10c(r30)
/* 806D1E14  90 01 00 40 */	stw r0, 0x40(r1)
/* 806D1E18  7F 83 E3 78 */	mr r3, r28
/* 806D1E1C  38 81 00 38 */	addi r4, r1, 0x38
/* 806D1E20  4B FF F4 A9 */	bl setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v
/* 806D1E24  48 00 03 68 */	b lbl_806D218C
lbl_806D1E28:
/* 806D1E28  A8 1C 0A 5E */	lha r0, 0xa5e(r28)
/* 806D1E2C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806D1E30  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 806D1E34  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 806D1E38  7C 43 04 2E */	lfsx f2, r3, r0
/* 806D1E3C  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 806D1E40  3C 60 80 6D */	lis r3, l_HIO@ha
/* 806D1E44  38 83 7E C4 */	addi r4, r3, l_HIO@l
/* 806D1E48  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 806D1E4C  EC 61 00 32 */	fmuls f3, f1, f0
/* 806D1E50  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 806D1E54  EC 20 18 2A */	fadds f1, f0, f3
/* 806D1E58  EC 03 00 B2 */	fmuls f0, f3, f2
/* 806D1E5C  EC 01 00 2A */	fadds f0, f1, f0
/* 806D1E60  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 806D1E64  A8 7C 0A 5E */	lha r3, 0xa5e(r28)
/* 806D1E68  A8 04 00 24 */	lha r0, 0x24(r4)
/* 806D1E6C  7C 03 02 14 */	add r0, r3, r0
/* 806D1E70  B0 1C 0A 5E */	sth r0, 0xa5e(r28)
/* 806D1E74  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 806D1E78  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 806D1E7C  EC 01 00 24 */	fdivs f0, f1, f0
/* 806D1E80  80 7C 09 64 */	lwz r3, 0x964(r28)
/* 806D1E84  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 806D1E88  7F 83 E3 78 */	mr r3, r28
/* 806D1E8C  38 9C 07 CC */	addi r4, r28, 0x7cc
/* 806D1E90  4B 94 88 3C */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 806D1E94  38 7C 05 F4 */	addi r3, r28, 0x5f4
/* 806D1E98  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806D1E9C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806D1EA0  38 84 0F 38 */	addi r4, r4, 0xf38
/* 806D1EA4  4B 9A 4C 08 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 806D1EA8  3C 60 80 6D */	lis r3, s_obj_sub2__FPvPv@ha
/* 806D1EAC  38 63 14 E0 */	addi r3, r3, s_obj_sub2__FPvPv@l
/* 806D1EB0  7F 84 E3 78 */	mr r4, r28
/* 806D1EB4  4B 94 F4 84 */	b fpcEx_Search__FPFPvPv_PvPv
/* 806D1EB8  28 03 00 00 */	cmplwi r3, 0
/* 806D1EBC  41 82 00 48 */	beq lbl_806D1F04
/* 806D1EC0  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 806D1EC4  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 806D1EC8  4B B9 ED 3C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 806D1ECC  B0 7C 0A 1E */	sth r3, 0xa1e(r28)
/* 806D1ED0  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 806D1ED4  4B B9 5A B8 */	b cM_rndFX__Ff
/* 806D1ED8  D0 3C 05 2C */	stfs f1, 0x52c(r28)
/* 806D1EDC  80 7E 01 10 */	lwz r3, 0x110(r30)
/* 806D1EE0  80 1E 01 14 */	lwz r0, 0x114(r30)
/* 806D1EE4  90 61 00 2C */	stw r3, 0x2c(r1)
/* 806D1EE8  90 01 00 30 */	stw r0, 0x30(r1)
/* 806D1EEC  80 1E 01 18 */	lwz r0, 0x118(r30)
/* 806D1EF0  90 01 00 34 */	stw r0, 0x34(r1)
/* 806D1EF4  7F 83 E3 78 */	mr r3, r28
/* 806D1EF8  38 81 00 2C */	addi r4, r1, 0x2c
/* 806D1EFC  4B FF F3 CD */	bl setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v
/* 806D1F00  48 00 02 8C */	b lbl_806D218C
lbl_806D1F04:
/* 806D1F04  88 1C 0A 6C */	lbz r0, 0xa6c(r28)
/* 806D1F08  28 00 00 00 */	cmplwi r0, 0
/* 806D1F0C  40 82 01 A0 */	bne lbl_806D20AC
/* 806D1F10  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 806D1F14  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 806D1F18  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806D1F1C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806D1F20  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 806D1F24  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 806D1F28  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 806D1F2C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 806D1F30  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806D1F34  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 806D1F38  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 806D1F3C  38 61 00 14 */	addi r3, r1, 0x14
/* 806D1F40  38 81 00 20 */	addi r4, r1, 0x20
/* 806D1F44  4B C7 54 58 */	b PSVECSquareDistance
/* 806D1F48  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806D1F4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806D1F50  40 81 00 58 */	ble lbl_806D1FA8
/* 806D1F54  FC 00 08 34 */	frsqrte f0, f1
/* 806D1F58  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806D1F5C  FC 44 00 32 */	fmul f2, f4, f0
/* 806D1F60  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806D1F64  FC 00 00 32 */	fmul f0, f0, f0
/* 806D1F68  FC 01 00 32 */	fmul f0, f1, f0
/* 806D1F6C  FC 03 00 28 */	fsub f0, f3, f0
/* 806D1F70  FC 02 00 32 */	fmul f0, f2, f0
/* 806D1F74  FC 44 00 32 */	fmul f2, f4, f0
/* 806D1F78  FC 00 00 32 */	fmul f0, f0, f0
/* 806D1F7C  FC 01 00 32 */	fmul f0, f1, f0
/* 806D1F80  FC 03 00 28 */	fsub f0, f3, f0
/* 806D1F84  FC 02 00 32 */	fmul f0, f2, f0
/* 806D1F88  FC 44 00 32 */	fmul f2, f4, f0
/* 806D1F8C  FC 00 00 32 */	fmul f0, f0, f0
/* 806D1F90  FC 01 00 32 */	fmul f0, f1, f0
/* 806D1F94  FC 03 00 28 */	fsub f0, f3, f0
/* 806D1F98  FC 02 00 32 */	fmul f0, f2, f0
/* 806D1F9C  FC 21 00 32 */	fmul f1, f1, f0
/* 806D1FA0  FC 20 08 18 */	frsp f1, f1
/* 806D1FA4  48 00 00 88 */	b lbl_806D202C
lbl_806D1FA8:
/* 806D1FA8  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806D1FAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806D1FB0  40 80 00 10 */	bge lbl_806D1FC0
/* 806D1FB4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806D1FB8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 806D1FBC  48 00 00 70 */	b lbl_806D202C
lbl_806D1FC0:
/* 806D1FC0  D0 21 00 08 */	stfs f1, 8(r1)
/* 806D1FC4  80 81 00 08 */	lwz r4, 8(r1)
/* 806D1FC8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806D1FCC  3C 00 7F 80 */	lis r0, 0x7f80
/* 806D1FD0  7C 03 00 00 */	cmpw r3, r0
/* 806D1FD4  41 82 00 14 */	beq lbl_806D1FE8
/* 806D1FD8  40 80 00 40 */	bge lbl_806D2018
/* 806D1FDC  2C 03 00 00 */	cmpwi r3, 0
/* 806D1FE0  41 82 00 20 */	beq lbl_806D2000
/* 806D1FE4  48 00 00 34 */	b lbl_806D2018
lbl_806D1FE8:
/* 806D1FE8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806D1FEC  41 82 00 0C */	beq lbl_806D1FF8
/* 806D1FF0  38 00 00 01 */	li r0, 1
/* 806D1FF4  48 00 00 28 */	b lbl_806D201C
lbl_806D1FF8:
/* 806D1FF8  38 00 00 02 */	li r0, 2
/* 806D1FFC  48 00 00 20 */	b lbl_806D201C
lbl_806D2000:
/* 806D2000  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806D2004  41 82 00 0C */	beq lbl_806D2010
/* 806D2008  38 00 00 05 */	li r0, 5
/* 806D200C  48 00 00 10 */	b lbl_806D201C
lbl_806D2010:
/* 806D2010  38 00 00 03 */	li r0, 3
/* 806D2014  48 00 00 08 */	b lbl_806D201C
lbl_806D2018:
/* 806D2018  38 00 00 04 */	li r0, 4
lbl_806D201C:
/* 806D201C  2C 00 00 01 */	cmpwi r0, 1
/* 806D2020  40 82 00 0C */	bne lbl_806D202C
/* 806D2024  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806D2028  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_806D202C:
/* 806D202C  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 806D2030  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806D2034  41 81 00 2C */	bgt lbl_806D2060
/* 806D2038  A8 1D 05 6C */	lha r0, 0x56c(r29)
/* 806D203C  7C 00 07 35 */	extsh. r0, r0
/* 806D2040  40 82 00 48 */	bne lbl_806D2088
/* 806D2044  88 1C 0A 72 */	lbz r0, 0xa72(r28)
/* 806D2048  28 00 00 00 */	cmplwi r0, 0
/* 806D204C  40 82 00 3C */	bne lbl_806D2088
/* 806D2050  3C 60 80 6D */	lis r3, struct_806D7F1C+0x0@ha
/* 806D2054  88 03 7F 1C */	lbz r0, struct_806D7F1C+0x0@l(r3)
/* 806D2058  28 00 00 00 */	cmplwi r0, 0
/* 806D205C  40 82 00 2C */	bne lbl_806D2088
lbl_806D2060:
/* 806D2060  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 806D2064  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806D2068  4B B9 EB 9C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 806D206C  88 1C 0A 73 */	lbz r0, 0xa73(r28)
/* 806D2070  54 00 FF 7C */	rlwinm r0, r0, 0x1f, 0x1d, 0x1e
/* 806D2074  38 9F 00 80 */	addi r4, r31, 0x80
/* 806D2078  7C 04 02 AE */	lhax r0, r4, r0
/* 806D207C  7C 00 1A 14 */	add r0, r0, r3
/* 806D2080  B0 1C 0A 1E */	sth r0, 0xa1e(r28)
/* 806D2084  48 00 00 28 */	b lbl_806D20AC
lbl_806D2088:
/* 806D2088  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 806D208C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806D2090  4B B9 EB 74 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 806D2094  88 1C 0A 73 */	lbz r0, 0xa73(r28)
/* 806D2098  54 00 FF 7C */	rlwinm r0, r0, 0x1f, 0x1d, 0x1e
/* 806D209C  38 9F 00 88 */	addi r4, r31, 0x88
/* 806D20A0  7C 04 02 AE */	lhax r0, r4, r0
/* 806D20A4  7C 00 1A 14 */	add r0, r0, r3
/* 806D20A8  B0 1C 0A 1E */	sth r0, 0xa1e(r28)
lbl_806D20AC:
/* 806D20AC  80 1C 05 C4 */	lwz r0, 0x5c4(r28)
/* 806D20B0  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 806D20B4  41 82 00 2C */	beq lbl_806D20E0
/* 806D20B8  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 806D20BC  4B B9 58 98 */	b cM_rndF__Ff
/* 806D20C0  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 806D20C4  EC 00 08 2A */	fadds f0, f0, f1
/* 806D20C8  FC 00 00 1E */	fctiwz f0, f0
/* 806D20CC  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 806D20D0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 806D20D4  98 1C 0A 6C */	stb r0, 0xa6c(r28)
/* 806D20D8  A8 1C 05 F0 */	lha r0, 0x5f0(r28)
/* 806D20DC  B0 1C 0A 1E */	sth r0, 0xa1e(r28)
lbl_806D20E0:
/* 806D20E0  38 7C 04 DE */	addi r3, r28, 0x4de
/* 806D20E4  A8 9C 0A 1E */	lha r4, 0xa1e(r28)
/* 806D20E8  38 A0 00 20 */	li r5, 0x20
/* 806D20EC  38 C0 04 00 */	li r6, 0x400
/* 806D20F0  38 E0 01 00 */	li r7, 0x100
/* 806D20F4  4B B9 E4 4C */	b cLib_addCalcAngleS__FPsssss
/* 806D20F8  38 7C 04 DC */	addi r3, r28, 0x4dc
/* 806D20FC  38 80 00 00 */	li r4, 0
/* 806D2100  38 A0 00 04 */	li r5, 4
/* 806D2104  38 C0 40 00 */	li r6, 0x4000
/* 806D2108  38 E0 10 00 */	li r7, 0x1000
/* 806D210C  4B B9 E4 34 */	b cLib_addCalcAngleS__FPsssss
/* 806D2110  38 7C 04 E0 */	addi r3, r28, 0x4e0
/* 806D2114  38 80 00 00 */	li r4, 0
/* 806D2118  38 A0 00 04 */	li r5, 4
/* 806D211C  38 C0 40 00 */	li r6, 0x4000
/* 806D2120  38 E0 10 00 */	li r7, 0x1000
/* 806D2124  4B B9 E4 1C */	b cLib_addCalcAngleS__FPsssss
/* 806D2128  88 7C 0A 6E */	lbz r3, 0xa6e(r28)
/* 806D212C  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 806D2130  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 806D2134  EC 01 00 24 */	fdivs f0, f1, f0
/* 806D2138  FC 00 00 1E */	fctiwz f0, f0
/* 806D213C  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 806D2140  80 01 00 54 */	lwz r0, 0x54(r1)
/* 806D2144  7C 03 02 14 */	add r0, r3, r0
/* 806D2148  98 1C 0A 6E */	stb r0, 0xa6e(r28)
/* 806D214C  88 1C 0A 6E */	lbz r0, 0xa6e(r28)
/* 806D2150  28 00 00 04 */	cmplwi r0, 4
/* 806D2154  41 80 00 38 */	blt lbl_806D218C
/* 806D2158  38 00 00 00 */	li r0, 0
/* 806D215C  98 1C 0A 6E */	stb r0, 0xa6e(r28)
/* 806D2160  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007044D@ha */
/* 806D2164  38 03 04 4D */	addi r0, r3, 0x044D /* 0x0007044D@l */
/* 806D2168  90 01 00 0C */	stw r0, 0xc(r1)
/* 806D216C  38 7C 09 6C */	addi r3, r28, 0x96c
/* 806D2170  38 81 00 0C */	addi r4, r1, 0xc
/* 806D2174  38 A0 00 00 */	li r5, 0
/* 806D2178  38 C0 FF FF */	li r6, -1
/* 806D217C  81 9C 09 6C */	lwz r12, 0x96c(r28)
/* 806D2180  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806D2184  7D 89 03 A6 */	mtctr r12
/* 806D2188  4E 80 04 21 */	bctrl 
lbl_806D218C:
/* 806D218C  39 61 00 70 */	addi r11, r1, 0x70
/* 806D2190  4B C9 00 94 */	b _restgpr_28
/* 806D2194  80 01 00 74 */	lwz r0, 0x74(r1)
/* 806D2198  7C 08 03 A6 */	mtlr r0
/* 806D219C  38 21 00 70 */	addi r1, r1, 0x70
/* 806D21A0  4E 80 00 20 */	blr 
