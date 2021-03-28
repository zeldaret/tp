lbl_804B1D14:
/* 804B1D14  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 804B1D18  7C 08 02 A6 */	mflr r0
/* 804B1D1C  90 01 01 14 */	stw r0, 0x114(r1)
/* 804B1D20  39 61 01 10 */	addi r11, r1, 0x110
/* 804B1D24  4B EB 04 A0 */	b _savegpr_23
/* 804B1D28  7C 7E 1B 78 */	mr r30, r3
/* 804B1D2C  3C 60 80 4C */	lis r3, lit_3879@ha
/* 804B1D30  3B E3 B5 34 */	addi r31, r3, lit_3879@l
/* 804B1D34  80 1E 10 AC */	lwz r0, 0x10ac(r30)
/* 804B1D38  90 01 00 0C */	stw r0, 0xc(r1)
/* 804B1D3C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 804B1D40  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 804B1D44  38 81 00 0C */	addi r4, r1, 0xc
/* 804B1D48  4B B6 7A B0 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 804B1D4C  7C 64 1B 78 */	mr r4, r3
/* 804B1D50  3B A0 00 00 */	li r29, 0
/* 804B1D54  3B 80 00 01 */	li r28, 1
/* 804B1D58  3B 60 00 00 */	li r27, 0
/* 804B1D5C  3B 40 00 01 */	li r26, 1
/* 804B1D60  A8 1E 0F 7E */	lha r0, 0xf7e(r30)
/* 804B1D64  28 00 00 08 */	cmplwi r0, 8
/* 804B1D68  41 81 01 60 */	bgt lbl_804B1EC8
/* 804B1D6C  3C 60 80 4C */	lis r3, lit_7881@ha
/* 804B1D70  38 63 B9 EC */	addi r3, r3, lit_7881@l
/* 804B1D74  54 00 10 3A */	slwi r0, r0, 2
/* 804B1D78  7C 03 00 2E */	lwzx r0, r3, r0
/* 804B1D7C  7C 09 03 A6 */	mtctr r0
/* 804B1D80  4E 80 04 20 */	bctr 
lbl_804B1D84:
/* 804B1D84  7F C3 F3 78 */	mr r3, r30
/* 804B1D88  4B FF A4 A1 */	bl lure_onboat__FP13dmg_rod_class
/* 804B1D8C  3B 80 00 00 */	li r28, 0
/* 804B1D90  3B 40 00 00 */	li r26, 0
/* 804B1D94  48 00 01 34 */	b lbl_804B1EC8
lbl_804B1D98:
/* 804B1D98  7F C3 F3 78 */	mr r3, r30
/* 804B1D9C  4B FF A6 81 */	bl lure_standby__FP13dmg_rod_class
/* 804B1DA0  7C 7A 1B 78 */	mr r26, r3
/* 804B1DA4  3B 80 00 00 */	li r28, 0
/* 804B1DA8  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 804B1DAC  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 804B1DB0  A0 03 00 B0 */	lhz r0, 0xb0(r3)
/* 804B1DB4  60 00 00 01 */	ori r0, r0, 1
/* 804B1DB8  B0 03 00 B0 */	sth r0, 0xb0(r3)
/* 804B1DBC  48 00 01 0C */	b lbl_804B1EC8
lbl_804B1DC0:
/* 804B1DC0  7F C3 F3 78 */	mr r3, r30
/* 804B1DC4  4B FF AE 59 */	bl lure_cast__FP13dmg_rod_class
/* 804B1DC8  3B A0 00 01 */	li r29, 1
/* 804B1DCC  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 804B1DD0  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 804B1DD4  A0 03 00 B0 */	lhz r0, 0xb0(r3)
/* 804B1DD8  60 00 00 01 */	ori r0, r0, 1
/* 804B1DDC  B0 03 00 B0 */	sth r0, 0xb0(r3)
/* 804B1DE0  48 00 00 E8 */	b lbl_804B1EC8
lbl_804B1DE4:
/* 804B1DE4  7F C3 F3 78 */	mr r3, r30
/* 804B1DE8  4B FF D0 31 */	bl lure_action__FP13dmg_rod_class
/* 804B1DEC  3B A0 00 01 */	li r29, 1
/* 804B1DF0  38 00 00 5B */	li r0, 0x5b
/* 804B1DF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B1DF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B1DFC  98 03 5E 3F */	stb r0, 0x5e3f(r3)
/* 804B1E00  38 00 00 02 */	li r0, 2
/* 804B1E04  98 03 5E 31 */	stb r0, 0x5e31(r3)
/* 804B1E08  38 00 00 00 */	li r0, 0
/* 804B1E0C  98 03 5E 59 */	stb r0, 0x5e59(r3)
/* 804B1E10  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 804B1E14  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 804B1E18  A0 03 00 B0 */	lhz r0, 0xb0(r3)
/* 804B1E1C  60 00 00 01 */	ori r0, r0, 1
/* 804B1E20  B0 03 00 B0 */	sth r0, 0xb0(r3)
/* 804B1E24  3B 60 00 01 */	li r27, 1
/* 804B1E28  48 00 00 A0 */	b lbl_804B1EC8
lbl_804B1E2C:
/* 804B1E2C  7F C3 F3 78 */	mr r3, r30
/* 804B1E30  4B FF DC 41 */	bl lure_hit__FP13dmg_rod_classP13mg_fish_class
/* 804B1E34  3B A0 00 01 */	li r29, 1
/* 804B1E38  3B 80 00 00 */	li r28, 0
/* 804B1E3C  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 804B1E40  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 804B1E44  A0 03 00 B0 */	lhz r0, 0xb0(r3)
/* 804B1E48  60 00 00 01 */	ori r0, r0, 1
/* 804B1E4C  B0 03 00 B0 */	sth r0, 0xb0(r3)
/* 804B1E50  3B 60 00 01 */	li r27, 1
/* 804B1E54  48 00 00 74 */	b lbl_804B1EC8
lbl_804B1E58:
/* 804B1E58  7F C3 F3 78 */	mr r3, r30
/* 804B1E5C  4B FF E4 69 */	bl lure_catch__FP13dmg_rod_class
/* 804B1E60  3B A0 00 01 */	li r29, 1
/* 804B1E64  3B 80 00 00 */	li r28, 0
/* 804B1E68  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 804B1E6C  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 804B1E70  A0 03 00 B0 */	lhz r0, 0xb0(r3)
/* 804B1E74  60 00 00 01 */	ori r0, r0, 1
/* 804B1E78  B0 03 00 B0 */	sth r0, 0xb0(r3)
/* 804B1E7C  48 00 00 4C */	b lbl_804B1EC8
lbl_804B1E80:
/* 804B1E80  7F C3 F3 78 */	mr r3, r30
/* 804B1E84  4B FF EC 0D */	bl lure_bare__FP13dmg_rod_class
/* 804B1E88  3B 80 00 00 */	li r28, 0
/* 804B1E8C  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 804B1E90  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 804B1E94  A0 03 00 B0 */	lhz r0, 0xb0(r3)
/* 804B1E98  60 00 00 01 */	ori r0, r0, 1
/* 804B1E9C  B0 03 00 B0 */	sth r0, 0xb0(r3)
/* 804B1EA0  48 00 00 28 */	b lbl_804B1EC8
lbl_804B1EA4:
/* 804B1EA4  7F C3 F3 78 */	mr r3, r30
/* 804B1EA8  4B FF EF CD */	bl lure_heart__FP13dmg_rod_class
/* 804B1EAC  3B A0 00 01 */	li r29, 1
/* 804B1EB0  3B 80 00 00 */	li r28, 0
/* 804B1EB4  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 804B1EB8  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 804B1EBC  A0 03 00 B0 */	lhz r0, 0xb0(r3)
/* 804B1EC0  60 00 00 01 */	ori r0, r0, 1
/* 804B1EC4  B0 03 00 B0 */	sth r0, 0xb0(r3)
lbl_804B1EC8:
/* 804B1EC8  2C 1B 00 00 */	cmpwi r27, 0
/* 804B1ECC  41 82 00 20 */	beq lbl_804B1EEC
/* 804B1ED0  C0 3E 14 C8 */	lfs f1, 0x14c8(r30)
/* 804B1ED4  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B1ED8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B1EDC  40 81 00 10 */	ble lbl_804B1EEC
/* 804B1EE0  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 804B1EE4  EC 01 00 32 */	fmuls f0, f1, f0
/* 804B1EE8  D0 1E 14 C8 */	stfs f0, 0x14c8(r30)
lbl_804B1EEC:
/* 804B1EEC  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 804B1EF0  2C 00 00 03 */	cmpwi r0, 3
/* 804B1EF4  40 82 00 FC */	bne lbl_804B1FF0
/* 804B1EF8  A8 7E 10 1C */	lha r3, 0x101c(r30)
/* 804B1EFC  A8 1E 10 20 */	lha r0, 0x1020(r30)
/* 804B1F00  7C 03 02 14 */	add r0, r3, r0
/* 804B1F04  B0 1E 10 1C */	sth r0, 0x101c(r30)
/* 804B1F08  A8 7E 10 1E */	lha r3, 0x101e(r30)
/* 804B1F0C  A8 1E 10 22 */	lha r0, 0x1022(r30)
/* 804B1F10  7C 03 02 14 */	add r0, r3, r0
/* 804B1F14  B0 1E 10 1E */	sth r0, 0x101e(r30)
/* 804B1F18  A8 1E 0F 7E */	lha r0, 0xf7e(r30)
/* 804B1F1C  2C 00 00 03 */	cmpwi r0, 3
/* 804B1F20  40 82 00 18 */	bne lbl_804B1F38
/* 804B1F24  38 00 1F 40 */	li r0, 0x1f40
/* 804B1F28  B0 1E 10 20 */	sth r0, 0x1020(r30)
/* 804B1F2C  38 00 E0 C0 */	li r0, -8000
/* 804B1F30  B0 1E 10 22 */	sth r0, 0x1022(r30)
/* 804B1F34  48 00 00 94 */	b lbl_804B1FC8
lbl_804B1F38:
/* 804B1F38  2C 00 00 05 */	cmpwi r0, 5
/* 804B1F3C  40 82 00 8C */	bne lbl_804B1FC8
/* 804B1F40  A8 1E 05 78 */	lha r0, 0x578(r30)
/* 804B1F44  54 00 07 7F */	clrlwi. r0, r0, 0x1d
/* 804B1F48  40 82 00 3C */	bne lbl_804B1F84
/* 804B1F4C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 804B1F50  4B DB 5A 04 */	b cM_rndF__Ff
/* 804B1F54  C0 1F 01 F0 */	lfs f0, 0x1f0(r31)
/* 804B1F58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B1F5C  40 80 00 28 */	bge lbl_804B1F84
/* 804B1F60  C0 3F 01 30 */	lfs f1, 0x130(r31)
/* 804B1F64  4B DB 59 F0 */	b cM_rndF__Ff
/* 804B1F68  C0 1F 01 30 */	lfs f0, 0x130(r31)
/* 804B1F6C  EC 00 08 2A */	fadds f0, f0, f1
/* 804B1F70  FC 00 00 50 */	fneg f0, f0
/* 804B1F74  FC 00 00 1E */	fctiwz f0, f0
/* 804B1F78  D8 01 00 E0 */	stfd f0, 0xe0(r1)
/* 804B1F7C  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 804B1F80  B0 1E 10 20 */	sth r0, 0x1020(r30)
lbl_804B1F84:
/* 804B1F84  A8 1E 05 78 */	lha r0, 0x578(r30)
/* 804B1F88  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 804B1F8C  2C 00 00 07 */	cmpwi r0, 7
/* 804B1F90  40 82 00 38 */	bne lbl_804B1FC8
/* 804B1F94  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 804B1F98  4B DB 59 BC */	b cM_rndF__Ff
/* 804B1F9C  C0 1F 01 F0 */	lfs f0, 0x1f0(r31)
/* 804B1FA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B1FA4  40 80 00 24 */	bge lbl_804B1FC8
/* 804B1FA8  C0 3F 01 30 */	lfs f1, 0x130(r31)
/* 804B1FAC  4B DB 59 A8 */	b cM_rndF__Ff
/* 804B1FB0  C0 1F 01 30 */	lfs f0, 0x130(r31)
/* 804B1FB4  EC 00 08 2A */	fadds f0, f0, f1
/* 804B1FB8  FC 00 00 1E */	fctiwz f0, f0
/* 804B1FBC  D8 01 00 E0 */	stfd f0, 0xe0(r1)
/* 804B1FC0  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 804B1FC4  B0 1E 10 22 */	sth r0, 0x1022(r30)
lbl_804B1FC8:
/* 804B1FC8  38 7E 10 20 */	addi r3, r30, 0x1020
/* 804B1FCC  38 80 00 00 */	li r4, 0
/* 804B1FD0  38 A0 00 01 */	li r5, 1
/* 804B1FD4  38 C0 01 F4 */	li r6, 0x1f4
/* 804B1FD8  4B DB E6 30 */	b cLib_addCalcAngleS2__FPssss
/* 804B1FDC  38 7E 10 22 */	addi r3, r30, 0x1022
/* 804B1FE0  38 80 00 00 */	li r4, 0
/* 804B1FE4  38 A0 00 01 */	li r5, 1
/* 804B1FE8  38 C0 01 F4 */	li r6, 0x1f4
/* 804B1FEC  4B DB E6 1C */	b cLib_addCalcAngleS2__FPssss
lbl_804B1FF0:
/* 804B1FF0  2C 1D 00 00 */	cmpwi r29, 0
/* 804B1FF4  41 82 00 2C */	beq lbl_804B2020
/* 804B1FF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B1FFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B2000  38 63 5B 6C */	addi r3, r3, 0x5b6c
/* 804B2004  7F C4 F3 78 */	mr r4, r30
/* 804B2008  C0 3F 01 58 */	lfs f1, 0x158(r31)
/* 804B200C  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 804B2010  C0 7F 01 D8 */	lfs f3, 0x1d8(r31)
/* 804B2014  38 A0 60 00 */	li r5, 0x6000
/* 804B2018  38 C0 00 01 */	li r6, 1
/* 804B201C  4B BC 1C EC */	b request__10dAttLook_cFP10fopAc_ac_cfffsi
lbl_804B2020:
/* 804B2020  88 7E 10 A5 */	lbz r3, 0x10a5(r30)
/* 804B2024  7C 60 07 75 */	extsb. r0, r3
/* 804B2028  41 82 00 28 */	beq lbl_804B2050
/* 804B202C  38 03 FF FF */	addi r0, r3, -1
/* 804B2030  98 1E 10 A5 */	stb r0, 0x10a5(r30)
/* 804B2034  88 1E 10 A5 */	lbz r0, 0x10a5(r30)
/* 804B2038  7C 00 07 75 */	extsb. r0, r0
/* 804B203C  40 82 00 14 */	bne lbl_804B2050
/* 804B2040  38 00 00 04 */	li r0, 4
/* 804B2044  B0 1E 0F 7E */	sth r0, 0xf7e(r30)
/* 804B2048  38 00 00 00 */	li r0, 0
/* 804B204C  B0 1E 10 06 */	sth r0, 0x1006(r30)
lbl_804B2050:
/* 804B2050  A8 1E 0F 7E */	lha r0, 0xf7e(r30)
/* 804B2054  2C 00 00 04 */	cmpwi r0, 4
/* 804B2058  41 82 00 0C */	beq lbl_804B2064
/* 804B205C  2C 00 00 03 */	cmpwi r0, 3
/* 804B2060  40 82 03 64 */	bne lbl_804B23C4
lbl_804B2064:
/* 804B2064  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 804B2068  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 804B206C  EC 00 08 28 */	fsubs f0, f0, f1
/* 804B2070  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 804B2074  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 804B2078  EC 00 08 28 */	fsubs f0, f0, f1
/* 804B207C  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 804B2080  38 7E 11 D0 */	addi r3, r30, 0x11d0
/* 804B2084  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 804B2088  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 804B208C  3B 04 0F 38 */	addi r24, r4, 0xf38
/* 804B2090  7F 04 C3 78 */	mr r4, r24
/* 804B2094  4B BC 4A 18 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 804B2098  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 804B209C  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 804B20A0  EC 00 08 2A */	fadds f0, f0, f1
/* 804B20A4  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 804B20A8  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 804B20AC  EC 00 08 2A */	fadds f0, f0, f1
/* 804B20B0  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 804B20B4  80 1E 11 FC */	lwz r0, 0x11fc(r30)
/* 804B20B8  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 804B20BC  41 82 00 D8 */	beq lbl_804B2194
/* 804B20C0  88 7E 13 A8 */	lbz r3, 0x13a8(r30)
/* 804B20C4  38 03 00 01 */	addi r0, r3, 1
/* 804B20C8  98 1E 13 A8 */	stb r0, 0x13a8(r30)
/* 804B20CC  38 61 00 6C */	addi r3, r1, 0x6c
/* 804B20D0  4B BC 5B 98 */	b __ct__11dBgS_LinChkFv
/* 804B20D4  38 61 00 C4 */	addi r3, r1, 0xc4
/* 804B20D8  4B BC 6E 08 */	b SetRope__16dBgS_PolyPassChkFv
/* 804B20DC  3A E0 00 00 */	li r23, 0
/* 804B20E0  3B 60 00 00 */	li r27, 0
/* 804B20E4  3C 60 80 4C */	lis r3, ax@ha
/* 804B20E8  3B 23 B9 CC */	addi r25, r3, ax@l
/* 804B20EC  3C 60 80 4C */	lis r3, az@ha
/* 804B20F0  3B A3 B9 DC */	addi r29, r3, az@l
lbl_804B20F4:
/* 804B20F4  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 804B20F8  7C 19 DC 2E */	lfsx f0, r25, r27
/* 804B20FC  EC 01 00 2A */	fadds f0, f1, f0
/* 804B2100  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 804B2104  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 804B2108  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 804B210C  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 804B2110  7C 1D DC 2E */	lfsx f0, r29, r27
/* 804B2114  EC 01 00 2A */	fadds f0, f1, f0
/* 804B2118  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 804B211C  38 61 00 6C */	addi r3, r1, 0x6c
/* 804B2120  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804B2124  38 A1 00 54 */	addi r5, r1, 0x54
/* 804B2128  7F C6 F3 78 */	mr r6, r30
/* 804B212C  4B BC 5C 38 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 804B2130  7F 03 C3 78 */	mr r3, r24
/* 804B2134  38 81 00 6C */	addi r4, r1, 0x6c
/* 804B2138  4B BC 22 7C */	b LineCross__4cBgSFP11cBgS_LinChk
/* 804B213C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804B2140  41 82 00 34 */	beq lbl_804B2174
/* 804B2144  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 804B2148  C0 5F 00 C4 */	lfs f2, 0xc4(r31)
/* 804B214C  7C 19 DC 2E */	lfsx f0, r25, r27
/* 804B2150  EC 02 00 32 */	fmuls f0, f2, f0
/* 804B2154  EC 01 00 28 */	fsubs f0, f1, f0
/* 804B2158  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 804B215C  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 804B2160  7C 1D DC 2E */	lfsx f0, r29, r27
/* 804B2164  EC 02 00 32 */	fmuls f0, f2, f0
/* 804B2168  EC 01 00 28 */	fsubs f0, f1, f0
/* 804B216C  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 804B2170  48 00 00 14 */	b lbl_804B2184
lbl_804B2174:
/* 804B2174  3A F7 00 01 */	addi r23, r23, 1
/* 804B2178  2C 17 00 04 */	cmpwi r23, 4
/* 804B217C  3B 7B 00 04 */	addi r27, r27, 4
/* 804B2180  41 80 FF 74 */	blt lbl_804B20F4
lbl_804B2184:
/* 804B2184  38 61 00 6C */	addi r3, r1, 0x6c
/* 804B2188  38 80 FF FF */	li r4, -1
/* 804B218C  4B BC 5B 50 */	b __dt__11dBgS_LinChkFv
/* 804B2190  48 00 00 0C */	b lbl_804B219C
lbl_804B2194:
/* 804B2194  38 00 00 00 */	li r0, 0
/* 804B2198  98 1E 13 A8 */	stb r0, 0x13a8(r30)
lbl_804B219C:
/* 804B219C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 804B21A0  C0 1E 05 90 */	lfs f0, 0x590(r30)
/* 804B21A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B21A8  4C 40 13 82 */	cror 2, 0, 2
/* 804B21AC  40 82 01 58 */	bne lbl_804B2304
/* 804B21B0  88 1E 10 0D */	lbz r0, 0x100d(r30)
/* 804B21B4  7C 00 07 75 */	extsb. r0, r0
/* 804B21B8  40 82 01 90 */	bne lbl_804B2348
/* 804B21BC  38 00 00 01 */	li r0, 1
/* 804B21C0  98 1E 10 0D */	stb r0, 0x100d(r30)
/* 804B21C4  38 00 00 1E */	li r0, 0x1e
/* 804B21C8  98 1E 10 09 */	stb r0, 0x1009(r30)
/* 804B21CC  38 00 00 32 */	li r0, 0x32
/* 804B21D0  98 1E 10 A4 */	stb r0, 0x10a4(r30)
/* 804B21D4  2C 1C 00 00 */	cmpwi r28, 0
/* 804B21D8  41 82 01 70 */	beq lbl_804B2348
/* 804B21DC  88 1E 10 A9 */	lbz r0, 0x10a9(r30)
/* 804B21E0  7C 00 07 75 */	extsb. r0, r0
/* 804B21E4  41 82 00 64 */	beq lbl_804B2248
/* 804B21E8  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020084@ha */
/* 804B21EC  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x00020084@l */
/* 804B21F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804B21F4  38 7E 10 B4 */	addi r3, r30, 0x10b4
/* 804B21F8  38 81 00 14 */	addi r4, r1, 0x14
/* 804B21FC  38 A0 00 00 */	li r5, 0
/* 804B2200  38 C0 FF FF */	li r6, -1
/* 804B2204  81 9E 10 B4 */	lwz r12, 0x10b4(r30)
/* 804B2208  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804B220C  7D 89 03 A6 */	mtctr r12
/* 804B2210  4E 80 04 21 */	bctrl 
/* 804B2214  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 804B2218  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 804B221C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 804B2220  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 804B2224  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 804B2228  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 804B222C  C0 1E 05 90 */	lfs f0, 0x590(r30)
/* 804B2230  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 804B2234  38 61 00 60 */	addi r3, r1, 0x60
/* 804B2238  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 804B223C  38 80 00 00 */	li r4, 0
/* 804B2240  4B B6 D6 3C */	b fopKyM_createWpillar__FPC4cXyzfi
/* 804B2244  48 00 00 44 */	b lbl_804B2288
lbl_804B2248:
/* 804B2248  7F C3 F3 78 */	mr r3, r30
/* 804B224C  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 804B2250  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804B2254  38 A0 00 01 */	li r5, 1
/* 804B2258  4B FF 9D F5 */	bl sibuki_set__FP13dmg_rod_classfP4cXyzi
/* 804B225C  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020087@ha */
/* 804B2260  38 03 00 87 */	addi r0, r3, 0x0087 /* 0x00020087@l */
/* 804B2264  90 01 00 10 */	stw r0, 0x10(r1)
/* 804B2268  38 7E 10 B4 */	addi r3, r30, 0x10b4
/* 804B226C  38 81 00 10 */	addi r4, r1, 0x10
/* 804B2270  38 A0 00 00 */	li r5, 0
/* 804B2274  38 C0 FF FF */	li r6, -1
/* 804B2278  81 9E 10 B4 */	lwz r12, 0x10b4(r30)
/* 804B227C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804B2280  7D 89 03 A6 */	mtctr r12
/* 804B2284  4E 80 04 21 */	bctrl 
lbl_804B2288:
/* 804B2288  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 804B228C  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 804B2290  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B2294  4C 40 13 82 */	cror 2, 0, 2
/* 804B2298  40 82 00 10 */	bne lbl_804B22A8
/* 804B229C  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 804B22A0  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 804B22A4  48 00 00 0C */	b lbl_804B22B0
lbl_804B22A8:
/* 804B22A8  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B22AC  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_804B22B0:
/* 804B22B0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 804B22B4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804B22B8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 804B22BC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804B22C0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 804B22C4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804B22C8  38 61 00 30 */	addi r3, r1, 0x30
/* 804B22CC  38 80 00 05 */	li r4, 5
/* 804B22D0  28 1E 00 00 */	cmplwi r30, 0
/* 804B22D4  41 82 00 0C */	beq lbl_804B22E0
/* 804B22D8  80 BE 00 04 */	lwz r5, 4(r30)
/* 804B22DC  48 00 00 08 */	b lbl_804B22E4
lbl_804B22E0:
/* 804B22E0  38 A0 FF FF */	li r5, -1
lbl_804B22E4:
/* 804B22E4  38 C0 00 05 */	li r6, 5
/* 804B22E8  4B CF 5E D8 */	b dKy_Sound_set__F4cXyziUii
/* 804B22EC  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 804B22F0  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 804B22F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B22F8  40 81 00 50 */	ble lbl_804B2348
/* 804B22FC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 804B2300  48 00 00 48 */	b lbl_804B2348
lbl_804B2304:
/* 804B2304  88 1E 10 0D */	lbz r0, 0x100d(r30)
/* 804B2308  7C 00 07 75 */	extsb. r0, r0
/* 804B230C  41 82 00 3C */	beq lbl_804B2348
/* 804B2310  38 00 00 00 */	li r0, 0
/* 804B2314  98 1E 10 0D */	stb r0, 0x100d(r30)
/* 804B2318  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 804B231C  4B DB 56 38 */	b cM_rndF__Ff
/* 804B2320  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 804B2324  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B2328  40 80 00 14 */	bge lbl_804B233C
/* 804B232C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000B000@ha */
/* 804B2330  38 03 B0 00 */	addi r0, r3, 0xB000 /* 0x0000B000@l */
/* 804B2334  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
/* 804B2338  48 00 00 10 */	b lbl_804B2348
lbl_804B233C:
/* 804B233C  3C 60 FF FF */	lis r3, 0xFFFF /* 0xFFFF5000@ha */
/* 804B2340  38 03 50 00 */	addi r0, r3, 0x5000 /* 0xFFFF5000@l */
/* 804B2344  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
lbl_804B2348:
/* 804B2348  88 1E 10 0D */	lbz r0, 0x100d(r30)
/* 804B234C  7C 00 07 75 */	extsb. r0, r0
/* 804B2350  41 82 01 1C */	beq lbl_804B246C
/* 804B2354  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 804B2358  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 804B235C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 804B2360  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 804B2364  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 804B2368  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 804B236C  C0 1E 05 90 */	lfs f0, 0x590(r30)
/* 804B2370  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 804B2374  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 804B2378  FC 00 02 10 */	fabs f0, f0
/* 804B237C  FC 20 00 18 */	frsp f1, f0
/* 804B2380  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 804B2384  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B2388  4C 41 13 82 */	cror 2, 1, 2
/* 804B238C  40 82 00 0C */	bne lbl_804B2398
/* 804B2390  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 804B2394  48 00 00 08 */	b lbl_804B239C
lbl_804B2398:
/* 804B2398  C0 5F 00 C4 */	lfs f2, 0xc4(r31)
lbl_804B239C:
/* 804B239C  38 7E 11 78 */	addi r3, r30, 0x1178
/* 804B23A0  38 81 00 48 */	addi r4, r1, 0x48
/* 804B23A4  88 1E 10 A9 */	lbz r0, 0x10a9(r30)
/* 804B23A8  7C 00 07 75 */	extsb. r0, r0
/* 804B23AC  41 82 00 0C */	beq lbl_804B23B8
/* 804B23B0  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 804B23B4  48 00 00 08 */	b lbl_804B23BC
lbl_804B23B8:
/* 804B23B8  C0 3F 00 10 */	lfs f1, 0x10(r31)
lbl_804B23BC:
/* 804B23BC  4B B6 AD 50 */	b fopAcM_effHamonSet__FPUlPC4cXyzff
/* 804B23C0  48 00 00 AC */	b lbl_804B246C
lbl_804B23C4:
/* 804B23C4  2C 00 00 05 */	cmpwi r0, 5
/* 804B23C8  40 82 00 A4 */	bne lbl_804B246C
/* 804B23CC  38 00 00 01 */	li r0, 1
/* 804B23D0  98 1E 10 0D */	stb r0, 0x100d(r30)
/* 804B23D4  38 61 00 24 */	addi r3, r1, 0x24
/* 804B23D8  38 9E 06 AC */	addi r4, r30, 0x6ac
/* 804B23DC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 804B23E0  4B DB 47 54 */	b __mi__4cXyzCFRC3Vec
/* 804B23E4  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 804B23E8  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 804B23EC  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 804B23F0  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 804B23F4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 804B23F8  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 804B23FC  4B DB 54 18 */	b cM_atan2f__Fff
/* 804B2400  4B EB A2 68 */	b tan
/* 804B2404  FC 60 08 18 */	frsp f3, f1
/* 804B2408  C0 5E 04 D0 */	lfs f2, 0x4d0(r30)
/* 804B240C  C0 3E 05 90 */	lfs f1, 0x590(r30)
/* 804B2410  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 804B2414  EC 01 00 28 */	fsubs f0, f1, f0
/* 804B2418  EC 00 18 24 */	fdivs f0, f0, f3
/* 804B241C  EC 02 00 2A */	fadds f0, f2, f0
/* 804B2420  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 804B2424  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 804B2428  C0 41 00 68 */	lfs f2, 0x68(r1)
/* 804B242C  4B DB 53 E8 */	b cM_atan2f__Fff
/* 804B2430  4B EB A2 38 */	b tan
/* 804B2434  FC 60 08 18 */	frsp f3, f1
/* 804B2438  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 804B243C  C0 3E 05 90 */	lfs f1, 0x590(r30)
/* 804B2440  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 804B2444  EC 01 00 28 */	fsubs f0, f1, f0
/* 804B2448  EC 00 18 24 */	fdivs f0, f0, f3
/* 804B244C  EC 02 00 2A */	fadds f0, f2, f0
/* 804B2450  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 804B2454  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 804B2458  38 7E 11 78 */	addi r3, r30, 0x1178
/* 804B245C  38 81 00 48 */	addi r4, r1, 0x48
/* 804B2460  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 804B2464  FC 40 08 90 */	fmr f2, f1
/* 804B2468  4B B6 AC A4 */	b fopAcM_effHamonSet__FPUlPC4cXyzff
lbl_804B246C:
/* 804B246C  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 804B2470  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 804B2474  A8 1E 0F FC */	lha r0, 0xffc(r30)
/* 804B2478  7C 04 02 14 */	add r0, r4, r0
/* 804B247C  7C 04 07 34 */	extsh r4, r0
/* 804B2480  38 A0 00 02 */	li r5, 2
/* 804B2484  38 C0 20 00 */	li r6, 0x2000
/* 804B2488  4B DB E1 80 */	b cLib_addCalcAngleS2__FPssss
/* 804B248C  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 804B2490  A8 9E 04 DC */	lha r4, 0x4dc(r30)
/* 804B2494  A8 1E 10 00 */	lha r0, 0x1000(r30)
/* 804B2498  7C 04 02 14 */	add r0, r4, r0
/* 804B249C  7C 04 07 34 */	extsh r4, r0
/* 804B24A0  38 A0 00 02 */	li r5, 2
/* 804B24A4  38 C0 20 00 */	li r6, 0x2000
/* 804B24A8  4B DB E1 60 */	b cLib_addCalcAngleS2__FPssss
/* 804B24AC  38 7E 04 E8 */	addi r3, r30, 0x4e8
/* 804B24B0  A8 9E 04 E0 */	lha r4, 0x4e0(r30)
/* 804B24B4  38 A0 00 02 */	li r5, 2
/* 804B24B8  38 C0 10 00 */	li r6, 0x1000
/* 804B24BC  4B DB E1 4C */	b cLib_addCalcAngleS2__FPssss
/* 804B24C0  A8 1E 05 78 */	lha r0, 0x578(r30)
/* 804B24C4  1C 00 13 88 */	mulli r0, r0, 0x1388
/* 804B24C8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804B24CC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 804B24D0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 804B24D4  7C 63 04 2E */	lfsx f3, r3, r0
/* 804B24D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804B24DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804B24E0  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 804B24E4  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 804B24E8  C0 1E 05 9C */	lfs f0, 0x59c(r30)
/* 804B24EC  EC 42 00 2A */	fadds f2, f2, f0
/* 804B24F0  C0 1E 05 98 */	lfs f0, 0x598(r30)
/* 804B24F4  EC 00 00 F2 */	fmuls f0, f0, f3
/* 804B24F8  EC 42 00 2A */	fadds f2, f2, f0
/* 804B24FC  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 804B2500  4B E9 43 E8 */	b PSMTXTrans
/* 804B2504  38 7E 05 98 */	addi r3, r30, 0x598
/* 804B2508  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 804B250C  C0 5F 00 C4 */	lfs f2, 0xc4(r31)
/* 804B2510  4B DB D5 70 */	b cLib_addCalc0__FPfff
/* 804B2514  7F C3 F3 78 */	mr r3, r30
/* 804B2518  4B FF F1 A1 */	bl lure_disp__FP13dmg_rod_class
/* 804B251C  2C 1A 00 00 */	cmpwi r26, 0
/* 804B2520  41 82 01 24 */	beq lbl_804B2644
/* 804B2524  7F C3 F3 78 */	mr r3, r30
/* 804B2528  4B FF 8B 3D */	bl line_control2__FP13dmg_rod_class
/* 804B252C  38 61 00 18 */	addi r3, r1, 0x18
/* 804B2530  38 9E 07 70 */	addi r4, r30, 0x770
/* 804B2534  38 BE 07 7C */	addi r5, r30, 0x77c
/* 804B2538  4B DB 45 FC */	b __mi__4cXyzCFRC3Vec
/* 804B253C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 804B2540  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804B2544  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804B2548  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 804B254C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 804B2550  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 804B2554  38 61 00 3C */	addi r3, r1, 0x3c
/* 804B2558  4B E9 4B E0 */	b PSVECSquareMag
/* 804B255C  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B2560  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B2564  40 81 00 58 */	ble lbl_804B25BC
/* 804B2568  FC 00 08 34 */	frsqrte f0, f1
/* 804B256C  C8 9F 00 80 */	lfd f4, 0x80(r31)
/* 804B2570  FC 44 00 32 */	fmul f2, f4, f0
/* 804B2574  C8 7F 00 88 */	lfd f3, 0x88(r31)
/* 804B2578  FC 00 00 32 */	fmul f0, f0, f0
/* 804B257C  FC 01 00 32 */	fmul f0, f1, f0
/* 804B2580  FC 03 00 28 */	fsub f0, f3, f0
/* 804B2584  FC 02 00 32 */	fmul f0, f2, f0
/* 804B2588  FC 44 00 32 */	fmul f2, f4, f0
/* 804B258C  FC 00 00 32 */	fmul f0, f0, f0
/* 804B2590  FC 01 00 32 */	fmul f0, f1, f0
/* 804B2594  FC 03 00 28 */	fsub f0, f3, f0
/* 804B2598  FC 02 00 32 */	fmul f0, f2, f0
/* 804B259C  FC 44 00 32 */	fmul f2, f4, f0
/* 804B25A0  FC 00 00 32 */	fmul f0, f0, f0
/* 804B25A4  FC 01 00 32 */	fmul f0, f1, f0
/* 804B25A8  FC 03 00 28 */	fsub f0, f3, f0
/* 804B25AC  FC 02 00 32 */	fmul f0, f2, f0
/* 804B25B0  FC 21 00 32 */	fmul f1, f1, f0
/* 804B25B4  FC 20 08 18 */	frsp f1, f1
/* 804B25B8  48 00 00 88 */	b lbl_804B2640
lbl_804B25BC:
/* 804B25BC  C8 1F 00 90 */	lfd f0, 0x90(r31)
/* 804B25C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B25C4  40 80 00 10 */	bge lbl_804B25D4
/* 804B25C8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804B25CC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 804B25D0  48 00 00 70 */	b lbl_804B2640
lbl_804B25D4:
/* 804B25D4  D0 21 00 08 */	stfs f1, 8(r1)
/* 804B25D8  80 81 00 08 */	lwz r4, 8(r1)
/* 804B25DC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804B25E0  3C 00 7F 80 */	lis r0, 0x7f80
/* 804B25E4  7C 03 00 00 */	cmpw r3, r0
/* 804B25E8  41 82 00 14 */	beq lbl_804B25FC
/* 804B25EC  40 80 00 40 */	bge lbl_804B262C
/* 804B25F0  2C 03 00 00 */	cmpwi r3, 0
/* 804B25F4  41 82 00 20 */	beq lbl_804B2614
/* 804B25F8  48 00 00 34 */	b lbl_804B262C
lbl_804B25FC:
/* 804B25FC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804B2600  41 82 00 0C */	beq lbl_804B260C
/* 804B2604  38 00 00 01 */	li r0, 1
/* 804B2608  48 00 00 28 */	b lbl_804B2630
lbl_804B260C:
/* 804B260C  38 00 00 02 */	li r0, 2
/* 804B2610  48 00 00 20 */	b lbl_804B2630
lbl_804B2614:
/* 804B2614  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804B2618  41 82 00 0C */	beq lbl_804B2624
/* 804B261C  38 00 00 05 */	li r0, 5
/* 804B2620  48 00 00 10 */	b lbl_804B2630
lbl_804B2624:
/* 804B2624  38 00 00 03 */	li r0, 3
/* 804B2628  48 00 00 08 */	b lbl_804B2630
lbl_804B262C:
/* 804B262C  38 00 00 04 */	li r0, 4
lbl_804B2630:
/* 804B2630  2C 00 00 01 */	cmpwi r0, 1
/* 804B2634  40 82 00 0C */	bne lbl_804B2640
/* 804B2638  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804B263C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_804B2640:
/* 804B2640  D0 3E 0F 60 */	stfs f1, 0xf60(r30)
lbl_804B2644:
/* 804B2644  39 61 01 10 */	addi r11, r1, 0x110
/* 804B2648  4B EA FB C8 */	b _restgpr_23
/* 804B264C  80 01 01 14 */	lwz r0, 0x114(r1)
/* 804B2650  7C 08 03 A6 */	mtlr r0
/* 804B2654  38 21 01 10 */	addi r1, r1, 0x110
/* 804B2658  4E 80 00 20 */	blr 
