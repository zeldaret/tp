lbl_80858D2C:
/* 80858D2C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80858D30  7C 08 02 A6 */	mflr r0
/* 80858D34  90 01 00 44 */	stw r0, 0x44(r1)
/* 80858D38  39 61 00 40 */	addi r11, r1, 0x40
/* 80858D3C  4B B0 94 9D */	bl _savegpr_28
/* 80858D40  7C 7D 1B 78 */	mr r29, r3
/* 80858D44  3C 60 80 86 */	lis r3, lit_3740@ha /* 0x80859E78@ha */
/* 80858D48  3B E3 9E 78 */	addi r31, r3, lit_3740@l /* 0x80859E78@l */
/* 80858D4C  3B 80 00 00 */	li r28, 0
/* 80858D50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80858D54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80858D58  3B C3 07 F0 */	addi r30, r3, 0x7f0
/* 80858D5C  7F C3 F3 78 */	mr r3, r30
/* 80858D60  38 80 20 08 */	li r4, 0x2008
/* 80858D64  4B 7D BC 59 */	bl isEventBit__11dSv_event_cCFUs
/* 80858D68  2C 03 00 00 */	cmpwi r3, 0
/* 80858D6C  41 82 00 0C */	beq lbl_80858D78
/* 80858D70  3B 80 00 00 */	li r28, 0
/* 80858D74  48 00 00 38 */	b lbl_80858DAC
lbl_80858D78:
/* 80858D78  7F C3 F3 78 */	mr r3, r30
/* 80858D7C  38 80 14 20 */	li r4, 0x1420
/* 80858D80  4B 7D BC 3D */	bl isEventBit__11dSv_event_cCFUs
/* 80858D84  2C 03 00 00 */	cmpwi r3, 0
/* 80858D88  41 82 00 0C */	beq lbl_80858D94
/* 80858D8C  3B 80 00 02 */	li r28, 2
/* 80858D90  48 00 00 1C */	b lbl_80858DAC
lbl_80858D94:
/* 80858D94  7F C3 F3 78 */	mr r3, r30
/* 80858D98  38 80 14 40 */	li r4, 0x1440
/* 80858D9C  4B 7D BC 21 */	bl isEventBit__11dSv_event_cCFUs
/* 80858DA0  2C 03 00 00 */	cmpwi r3, 0
/* 80858DA4  41 82 00 08 */	beq lbl_80858DAC
/* 80858DA8  3B 80 00 01 */	li r28, 1
lbl_80858DAC:
/* 80858DAC  57 9E 06 3E */	clrlwi r30, r28, 0x18
/* 80858DB0  2C 1E 00 01 */	cmpwi r30, 1
/* 80858DB4  41 82 00 2C */	beq lbl_80858DE0
/* 80858DB8  40 80 00 10 */	bge lbl_80858DC8
/* 80858DBC  2C 1E 00 00 */	cmpwi r30, 0
/* 80858DC0  40 80 00 14 */	bge lbl_80858DD4
/* 80858DC4  48 00 00 34 */	b lbl_80858DF8
lbl_80858DC8:
/* 80858DC8  2C 1E 00 03 */	cmpwi r30, 3
/* 80858DCC  40 80 00 2C */	bge lbl_80858DF8
/* 80858DD0  48 00 00 1C */	b lbl_80858DEC
lbl_80858DD4:
/* 80858DD4  38 60 00 00 */	li r3, 0
/* 80858DD8  4B 94 FA 0D */	bl dKy_change_colpat__FUc
/* 80858DDC  48 00 00 24 */	b lbl_80858E00
lbl_80858DE0:
/* 80858DE0  38 60 00 01 */	li r3, 1
/* 80858DE4  4B 94 FA 01 */	bl dKy_change_colpat__FUc
/* 80858DE8  48 00 00 18 */	b lbl_80858E00
lbl_80858DEC:
/* 80858DEC  38 60 00 02 */	li r3, 2
/* 80858DF0  4B 94 F9 F5 */	bl dKy_change_colpat__FUc
/* 80858DF4  48 00 00 0C */	b lbl_80858E00
lbl_80858DF8:
/* 80858DF8  38 60 00 00 */	li r3, 0
/* 80858DFC  4B 94 F9 E9 */	bl dKy_change_colpat__FUc
lbl_80858E00:
/* 80858E00  3C 60 80 45 */	lis r3, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 80858E04  88 03 0D 64 */	lbz r0, mStayNo__20dStage_roomControl_c+0x0@l(r3)  /* 0x80450D64@l */
/* 80858E08  2C 00 00 04 */	cmpwi r0, 4
/* 80858E0C  40 82 02 0C */	bne lbl_80859018
/* 80858E10  38 C0 00 00 */	li r6, 0
/* 80858E14  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80858E18  38 A3 CA 54 */	addi r5, r3, g_env_light@l /* 0x8042CA54@l */
/* 80858E1C  98 C5 0E 90 */	stb r6, 0xe90(r5)
/* 80858E20  80 05 0E 8C */	lwz r0, 0xe8c(r5)
/* 80858E24  2C 00 00 00 */	cmpwi r0, 0
/* 80858E28  40 82 00 40 */	bne lbl_80858E68
/* 80858E2C  88 05 0E 88 */	lbz r0, 0xe88(r5)
/* 80858E30  28 00 00 00 */	cmplwi r0, 0
/* 80858E34  41 82 00 34 */	beq lbl_80858E68
/* 80858E38  80 65 0E 94 */	lwz r3, 0xe94(r5)
/* 80858E3C  28 03 00 00 */	cmplwi r3, 0
/* 80858E40  41 82 00 28 */	beq lbl_80858E68
/* 80858E44  B0 C3 6D 88 */	sth r6, 0x6d88(r3)
/* 80858E48  7C C3 33 78 */	mr r3, r6
/* 80858E4C  38 00 01 F4 */	li r0, 0x1f4
/* 80858E50  7C 09 03 A6 */	mtctr r0
lbl_80858E54:
/* 80858E54  80 85 0E 94 */	lwz r4, 0xe94(r5)
/* 80858E58  38 03 00 14 */	addi r0, r3, 0x14
/* 80858E5C  7C C4 01 AE */	stbx r6, r4, r0
/* 80858E60  38 63 00 38 */	addi r3, r3, 0x38
/* 80858E64  42 00 FF F0 */	bdnz lbl_80858E54
lbl_80858E68:
/* 80858E68  4B 80 27 D1 */	bl dKyw_evt_wind_set_go__Fv
/* 80858E6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80858E70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80858E74  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 80858E78  C0 63 00 D8 */	lfs f3, 0xd8(r3)
/* 80858E7C  D0 61 00 08 */	stfs f3, 8(r1)
/* 80858E80  C0 43 00 DC */	lfs f2, 0xdc(r3)
/* 80858E84  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80858E88  C0 23 00 E0 */	lfs f1, 0xe0(r3)
/* 80858E8C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80858E90  28 03 00 00 */	cmplwi r3, 0
/* 80858E94  41 82 01 A8 */	beq lbl_8085903C
/* 80858E98  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 80858E9C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80858EA0  40 81 00 34 */	ble lbl_80858ED4
/* 80858EA4  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 80858EA8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80858EAC  40 80 00 28 */	bge lbl_80858ED4
/* 80858EB0  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80858EB4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80858EB8  40 80 00 1C */	bge lbl_80858ED4
/* 80858EBC  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80858EC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80858EC4  40 81 00 10 */	ble lbl_80858ED4
/* 80858EC8  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80858ECC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80858ED0  41 80 00 54 */	blt lbl_80858F24
lbl_80858ED4:
/* 80858ED4  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80858ED8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80858EDC  41 80 00 48 */	blt lbl_80858F24
/* 80858EE0  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80858EE4  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80858EE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80858EEC  41 81 00 38 */	bgt lbl_80858F24
/* 80858EF0  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80858EF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80858EF8  41 80 00 2C */	blt lbl_80858F24
/* 80858EFC  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 80858F00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80858F04  40 80 00 3C */	bge lbl_80858F40
/* 80858F08  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80858F0C  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80858F10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80858F14  40 80 00 2C */	bge lbl_80858F40
/* 80858F18  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80858F1C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80858F20  40 80 00 20 */	bge lbl_80858F40
lbl_80858F24:
/* 80858F24  38 7D 05 70 */	addi r3, r29, 0x570
/* 80858F28  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80858F2C  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 80858F30  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 80858F34  C0 9F 00 40 */	lfs f4, 0x40(r31)
/* 80858F38  4B A1 6A 45 */	bl cLib_addCalc__FPfffff
/* 80858F3C  48 00 00 1C */	b lbl_80858F58
lbl_80858F40:
/* 80858F40  38 7D 05 70 */	addi r3, r29, 0x570
/* 80858F44  C0 3D 05 6C */	lfs f1, 0x56c(r29)
/* 80858F48  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 80858F4C  FC 60 10 90 */	fmr f3, f2
/* 80858F50  C0 9F 00 DC */	lfs f4, 0xdc(r31)
/* 80858F54  4B A1 6A 29 */	bl cLib_addCalc__FPfffff
lbl_80858F58:
/* 80858F58  2C 1E 00 01 */	cmpwi r30, 1
/* 80858F5C  41 82 00 54 */	beq lbl_80858FB0
/* 80858F60  40 80 00 10 */	bge lbl_80858F70
/* 80858F64  2C 1E 00 00 */	cmpwi r30, 0
/* 80858F68  40 80 00 14 */	bge lbl_80858F7C
/* 80858F6C  48 00 00 D0 */	b lbl_8085903C
lbl_80858F70:
/* 80858F70  2C 1E 00 03 */	cmpwi r30, 3
/* 80858F74  40 80 00 C8 */	bge lbl_8085903C
/* 80858F78  48 00 00 6C */	b lbl_80858FE4
lbl_80858F7C:
/* 80858F7C  38 00 00 00 */	li r0, 0
/* 80858F80  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80858F84  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80858F88  98 03 0E 92 */	stb r0, 0xe92(r3)
/* 80858F8C  38 7D 05 6C */	addi r3, r29, 0x56c
/* 80858F90  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80858F94  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 80858F98  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 80858F9C  C0 9F 00 DC */	lfs f4, 0xdc(r31)
/* 80858FA0  4B A1 69 DD */	bl cLib_addCalc__FPfffff
/* 80858FA4  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 80858FA8  4B 80 26 65 */	bl dKyw_custom_windpower__Ff
/* 80858FAC  48 00 00 90 */	b lbl_8085903C
lbl_80858FB0:
/* 80858FB0  38 00 00 00 */	li r0, 0
/* 80858FB4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80858FB8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80858FBC  98 03 0E 92 */	stb r0, 0xe92(r3)
/* 80858FC0  38 7D 05 6C */	addi r3, r29, 0x56c
/* 80858FC4  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80858FC8  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 80858FCC  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 80858FD0  C0 9F 00 DC */	lfs f4, 0xdc(r31)
/* 80858FD4  4B A1 69 A9 */	bl cLib_addCalc__FPfffff
/* 80858FD8  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 80858FDC  4B 80 26 31 */	bl dKyw_custom_windpower__Ff
/* 80858FE0  48 00 00 5C */	b lbl_8085903C
lbl_80858FE4:
/* 80858FE4  38 00 00 01 */	li r0, 1
/* 80858FE8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80858FEC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80858FF0  98 03 0E 92 */	stb r0, 0xe92(r3)
/* 80858FF4  38 7D 05 6C */	addi r3, r29, 0x56c
/* 80858FF8  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80858FFC  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 80859000  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 80859004  C0 9F 00 DC */	lfs f4, 0xdc(r31)
/* 80859008  4B A1 69 75 */	bl cLib_addCalc__FPfffff
/* 8085900C  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80859010  4B 80 25 FD */	bl dKyw_custom_windpower__Ff
/* 80859014  48 00 00 28 */	b lbl_8085903C
lbl_80859018:
/* 80859018  38 00 00 00 */	li r0, 0
/* 8085901C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80859020  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80859024  98 03 0E 92 */	stb r0, 0xe92(r3)
/* 80859028  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8085902C  D0 1D 05 6C */	stfs f0, 0x56c(r29)
/* 80859030  D0 1D 05 70 */	stfs f0, 0x570(r29)
/* 80859034  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80859038  4B 80 25 D5 */	bl dKyw_custom_windpower__Ff
lbl_8085903C:
/* 8085903C  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80859040  C0 5D 05 6C */	lfs f2, 0x56c(r29)
/* 80859044  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80859048  FC 00 00 1E */	fctiwz f0, f0
/* 8085904C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80859050  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80859054  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80859058  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8085905C  90 03 0E 8C */	stw r0, 0xe8c(r3)
/* 80859060  C0 3F 00 EC */	lfs f1, 0xec(r31)
/* 80859064  C0 1D 05 70 */	lfs f0, 0x570(r29)
/* 80859068  EC 01 00 32 */	fmuls f0, f1, f0
/* 8085906C  FC 00 00 1E */	fctiwz f0, f0
/* 80859070  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80859074  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80859078  90 03 0E B8 */	stw r0, 0xeb8(r3)
/* 8085907C  88 03 0E 92 */	lbz r0, 0xe92(r3)
/* 80859080  28 00 00 00 */	cmplwi r0, 0
/* 80859084  40 82 00 28 */	bne lbl_808590AC
/* 80859088  3C 60 80 43 */	lis r3, g_mEnvSeMgr@ha /* 0x8042DD70@ha */
/* 8085908C  38 63 DD 70 */	addi r3, r3, g_mEnvSeMgr@l /* 0x8042DD70@l */
/* 80859090  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80859094  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80859098  FC 00 00 1E */	fctiwz f0, f0
/* 8085909C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 808590A0  80 81 00 24 */	lwz r4, 0x24(r1)
/* 808590A4  4B A6 EF 11 */	bl setSnowPower__10Z2EnvSeMgrFSc
/* 808590A8  48 00 00 24 */	b lbl_808590CC
lbl_808590AC:
/* 808590AC  3C 60 80 43 */	lis r3, g_mEnvSeMgr@ha /* 0x8042DD70@ha */
/* 808590B0  38 63 DD 70 */	addi r3, r3, g_mEnvSeMgr@l /* 0x8042DD70@l */
/* 808590B4  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 808590B8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 808590BC  FC 00 00 1E */	fctiwz f0, f0
/* 808590C0  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 808590C4  80 81 00 24 */	lwz r4, 0x24(r1)
/* 808590C8  4B A6 EE ED */	bl setSnowPower__10Z2EnvSeMgrFSc
lbl_808590CC:
/* 808590CC  3C 60 80 45 */	lis r3, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 808590D0  88 03 0D 64 */	lbz r0, mStayNo__20dStage_roomControl_c+0x0@l(r3)  /* 0x80450D64@l */
/* 808590D4  7C 00 07 75 */	extsb. r0, r0
/* 808590D8  41 82 00 3C */	beq lbl_80859114
/* 808590DC  2C 00 00 03 */	cmpwi r0, 3
/* 808590E0  41 82 00 34 */	beq lbl_80859114
/* 808590E4  2C 00 00 05 */	cmpwi r0, 5
/* 808590E8  41 80 00 0C */	blt lbl_808590F4
/* 808590EC  2C 00 00 09 */	cmpwi r0, 9
/* 808590F0  40 81 00 24 */	ble lbl_80859114
lbl_808590F4:
/* 808590F4  2C 00 00 0B */	cmpwi r0, 0xb
/* 808590F8  41 82 00 1C */	beq lbl_80859114
/* 808590FC  2C 00 00 0D */	cmpwi r0, 0xd
/* 80859100  41 82 00 14 */	beq lbl_80859114
/* 80859104  38 00 00 00 */	li r0, 0
/* 80859108  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8085910C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80859110  98 03 0E 90 */	stb r0, 0xe90(r3)
lbl_80859114:
/* 80859114  39 61 00 40 */	addi r11, r1, 0x40
/* 80859118  4B B0 91 0D */	bl _restgpr_28
/* 8085911C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80859120  7C 08 03 A6 */	mtlr r0
/* 80859124  38 21 00 40 */	addi r1, r1, 0x40
/* 80859128  4E 80 00 20 */	blr 
