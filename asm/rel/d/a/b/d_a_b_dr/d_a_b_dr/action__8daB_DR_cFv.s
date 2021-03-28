lbl_805C3CB0:
/* 805C3CB0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805C3CB4  7C 08 02 A6 */	mflr r0
/* 805C3CB8  90 01 00 44 */	stw r0, 0x44(r1)
/* 805C3CBC  39 61 00 40 */	addi r11, r1, 0x40
/* 805C3CC0  4B D9 E5 1C */	b _savegpr_29
/* 805C3CC4  7C 7E 1B 78 */	mr r30, r3
/* 805C3CC8  3C 80 80 5C */	lis r4, lit_3800@ha
/* 805C3CCC  3B E4 6C 74 */	addi r31, r4, lit_3800@l
/* 805C3CD0  4B FF 8D 41 */	bl tail_hit_check__8daB_DR_cFv
/* 805C3CD4  7F C3 F3 78 */	mr r3, r30
/* 805C3CD8  4B FF 8D FD */	bl week_hit_check__8daB_DR_cFv
/* 805C3CDC  38 00 00 00 */	li r0, 0
/* 805C3CE0  98 1E 07 D4 */	stb r0, 0x7d4(r30)
/* 805C3CE4  98 1E 07 D3 */	stb r0, 0x7d3(r30)
/* 805C3CE8  80 1E 07 08 */	lwz r0, 0x708(r30)
/* 805C3CEC  28 00 00 0D */	cmplwi r0, 0xd
/* 805C3CF0  41 81 00 F0 */	bgt lbl_805C3DE0
/* 805C3CF4  3C 60 80 5C */	lis r3, lit_7648@ha
/* 805C3CF8  38 63 77 6C */	addi r3, r3, lit_7648@l
/* 805C3CFC  54 00 10 3A */	slwi r0, r0, 2
/* 805C3D00  7C 03 00 2E */	lwzx r0, r3, r0
/* 805C3D04  7C 09 03 A6 */	mtctr r0
/* 805C3D08  4E 80 04 20 */	bctr 
lbl_805C3D0C:
/* 805C3D0C  7F C3 F3 78 */	mr r3, r30
/* 805C3D10  4B FF 98 ED */	bl executeWait__8daB_DR_cFv
/* 805C3D14  48 00 00 CC */	b lbl_805C3DE0
lbl_805C3D18:
/* 805C3D18  7F C3 F3 78 */	mr r3, r30
/* 805C3D1C  4B FF 9C 71 */	bl executeFlyWait__8daB_DR_cFv
/* 805C3D20  48 00 00 C0 */	b lbl_805C3DE0
lbl_805C3D24:
/* 805C3D24  38 00 00 01 */	li r0, 1
/* 805C3D28  98 1E 07 D4 */	stb r0, 0x7d4(r30)
/* 805C3D2C  7F C3 F3 78 */	mr r3, r30
/* 805C3D30  4B FF 9E 95 */	bl executeTailHit__8daB_DR_cFv
/* 805C3D34  48 00 00 AC */	b lbl_805C3DE0
lbl_805C3D38:
/* 805C3D38  38 00 00 01 */	li r0, 1
/* 805C3D3C  98 1E 07 D4 */	stb r0, 0x7d4(r30)
/* 805C3D40  7F C3 F3 78 */	mr r3, r30
/* 805C3D44  4B FF AC 71 */	bl executeWeekHit__8daB_DR_cFv
/* 805C3D48  48 00 00 98 */	b lbl_805C3DE0
lbl_805C3D4C:
/* 805C3D4C  38 00 00 02 */	li r0, 2
/* 805C3D50  98 1E 07 D3 */	stb r0, 0x7d3(r30)
/* 805C3D54  7F C3 F3 78 */	mr r3, r30
/* 805C3D58  4B FF C8 D5 */	bl executeWindAttack__8daB_DR_cFv
/* 805C3D5C  48 00 00 84 */	b lbl_805C3DE0
lbl_805C3D60:
/* 805C3D60  7F C3 F3 78 */	mr r3, r30
/* 805C3D64  4B FF C0 25 */	bl executeBreathAttack__8daB_DR_cFv
/* 805C3D68  48 00 00 78 */	b lbl_805C3DE0
lbl_805C3D6C:
/* 805C3D6C  38 00 00 01 */	li r0, 1
/* 805C3D70  98 1E 07 D4 */	stb r0, 0x7d4(r30)
/* 805C3D74  7F C3 F3 78 */	mr r3, r30
/* 805C3D78  4B FF D1 81 */	bl executeGliderAttack__8daB_DR_cFv
/* 805C3D7C  48 00 00 64 */	b lbl_805C3DE0
lbl_805C3D80:
/* 805C3D80  38 00 00 01 */	li r0, 1
/* 805C3D84  98 1E 07 D4 */	stb r0, 0x7d4(r30)
/* 805C3D88  7F C3 F3 78 */	mr r3, r30
/* 805C3D8C  4B FF E0 81 */	bl executePillarSearch__8daB_DR_cFv
/* 805C3D90  48 00 00 50 */	b lbl_805C3DE0
lbl_805C3D94:
/* 805C3D94  38 00 00 01 */	li r0, 1
/* 805C3D98  98 1E 07 D4 */	stb r0, 0x7d4(r30)
/* 805C3D9C  7F C3 F3 78 */	mr r3, r30
/* 805C3DA0  4B FF E7 1D */	bl executePillarWait__8daB_DR_cFv
/* 805C3DA4  48 00 00 3C */	b lbl_805C3DE0
lbl_805C3DA8:
/* 805C3DA8  38 00 00 01 */	li r0, 1
/* 805C3DAC  98 1E 07 D4 */	stb r0, 0x7d4(r30)
/* 805C3DB0  7F C3 F3 78 */	mr r3, r30
/* 805C3DB4  4B FF EF 1D */	bl executeDamageDemo__8daB_DR_cFv
/* 805C3DB8  48 00 00 28 */	b lbl_805C3DE0
lbl_805C3DBC:
/* 805C3DBC  38 00 00 01 */	li r0, 1
/* 805C3DC0  98 1E 07 D4 */	stb r0, 0x7d4(r30)
/* 805C3DC4  7F C3 F3 78 */	mr r3, r30
/* 805C3DC8  4B FF F7 91 */	bl executeMiddleDemo__8daB_DR_cFv
/* 805C3DCC  48 00 00 14 */	b lbl_805C3DE0
lbl_805C3DD0:
/* 805C3DD0  38 00 00 01 */	li r0, 1
/* 805C3DD4  98 1E 07 D4 */	stb r0, 0x7d4(r30)
/* 805C3DD8  7F C3 F3 78 */	mr r3, r30
/* 805C3DDC  4B FF F8 C9 */	bl executeDead__8daB_DR_cFv
lbl_805C3DE0:
/* 805C3DE0  80 1E 07 10 */	lwz r0, 0x710(r30)
/* 805C3DE4  2C 00 00 41 */	cmpwi r0, 0x41
/* 805C3DE8  40 82 00 28 */	bne lbl_805C3E10
/* 805C3DEC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805C3DF0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805C3DF4  FC 00 00 1E */	fctiwz f0, f0
/* 805C3DF8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805C3DFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805C3E00  2C 00 00 1E */	cmpwi r0, 0x1e
/* 805C3E04  41 80 00 0C */	blt lbl_805C3E10
/* 805C3E08  38 00 00 02 */	li r0, 2
/* 805C3E0C  98 1E 07 D3 */	stb r0, 0x7d3(r30)
lbl_805C3E10:
/* 805C3E10  80 1E 07 10 */	lwz r0, 0x710(r30)
/* 805C3E14  2C 00 00 11 */	cmpwi r0, 0x11
/* 805C3E18  40 82 00 A0 */	bne lbl_805C3EB8
/* 805C3E1C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805C3E20  38 63 00 0C */	addi r3, r3, 0xc
/* 805C3E24  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 805C3E28  4B D6 46 04 */	b checkPass__12J3DFrameCtrlFf
/* 805C3E2C  2C 03 00 00 */	cmpwi r3, 0
/* 805C3E30  41 82 00 34 */	beq lbl_805C3E64
/* 805C3E34  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 805C3E38  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 805C3E3C  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 805C3E40  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805C3E44  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 805C3E48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805C3E4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805C3E50  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805C3E54  38 80 00 05 */	li r4, 5
/* 805C3E58  38 A0 00 4F */	li r5, 0x4f
/* 805C3E5C  38 C1 00 14 */	addi r6, r1, 0x14
/* 805C3E60  4B AA BB C4 */	b StartShock__12dVibration_cFii4cXyz
lbl_805C3E64:
/* 805C3E64  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805C3E68  38 63 00 0C */	addi r3, r3, 0xc
/* 805C3E6C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805C3E70  4B D6 45 BC */	b checkPass__12J3DFrameCtrlFf
/* 805C3E74  2C 03 00 00 */	cmpwi r3, 0
/* 805C3E78  41 82 00 68 */	beq lbl_805C3EE0
/* 805C3E7C  38 00 00 01 */	li r0, 1
/* 805C3E80  98 1E 07 DB */	stb r0, 0x7db(r30)
/* 805C3E84  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 805C3E88  D0 21 00 08 */	stfs f1, 8(r1)
/* 805C3E8C  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 805C3E90  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805C3E94  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 805C3E98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805C3E9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805C3EA0  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805C3EA4  38 80 00 07 */	li r4, 7
/* 805C3EA8  38 A0 00 1F */	li r5, 0x1f
/* 805C3EAC  38 C1 00 08 */	addi r6, r1, 8
/* 805C3EB0  4B AA BC 60 */	b StartQuake__12dVibration_cFii4cXyz
/* 805C3EB4  48 00 00 2C */	b lbl_805C3EE0
lbl_805C3EB8:
/* 805C3EB8  88 1E 07 DB */	lbz r0, 0x7db(r30)
/* 805C3EBC  28 00 00 01 */	cmplwi r0, 1
/* 805C3EC0  40 82 00 20 */	bne lbl_805C3EE0
/* 805C3EC4  38 00 00 00 */	li r0, 0
/* 805C3EC8  98 1E 07 DB */	stb r0, 0x7db(r30)
/* 805C3ECC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805C3ED0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805C3ED4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805C3ED8  38 80 00 1F */	li r4, 0x1f
/* 805C3EDC  4B AA BE B8 */	b StopQuake__12dVibration_cFi
lbl_805C3EE0:
/* 805C3EE0  7F C3 F3 78 */	mr r3, r30
/* 805C3EE4  4B FF 78 05 */	bl setSe__8daB_DR_cFv
/* 805C3EE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805C3EEC  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 805C3EF0  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 805C3EF4  7F C4 F3 78 */	mr r4, r30
/* 805C3EF8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805C3EFC  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 805C3F00  7D 89 03 A6 */	mtctr r12
/* 805C3F04  4E 80 04 21 */	bctrl 
/* 805C3F08  2C 03 00 00 */	cmpwi r3, 0
/* 805C3F0C  41 82 00 1C */	beq lbl_805C3F28
/* 805C3F10  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 805C3F14  7F C4 F3 78 */	mr r4, r30
/* 805C3F18  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805C3F1C  81 8C 00 F0 */	lwz r12, 0xf0(r12)
/* 805C3F20  7D 89 03 A6 */	mtctr r12
/* 805C3F24  4E 80 04 21 */	bctrl 
lbl_805C3F28:
/* 805C3F28  80 1E 07 08 */	lwz r0, 0x708(r30)
/* 805C3F2C  2C 00 00 07 */	cmpwi r0, 7
/* 805C3F30  40 82 00 10 */	bne lbl_805C3F40
/* 805C3F34  80 1E 07 0C */	lwz r0, 0x70c(r30)
/* 805C3F38  2C 00 03 E8 */	cmpwi r0, 0x3e8
/* 805C3F3C  40 82 00 50 */	bne lbl_805C3F8C
lbl_805C3F40:
/* 805C3F40  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 805C3F44  2C 00 00 00 */	cmpwi r0, 0
/* 805C3F48  40 82 00 10 */	bne lbl_805C3F58
/* 805C3F4C  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 805C3F50  2C 00 00 00 */	cmpwi r0, 0
/* 805C3F54  41 82 00 2C */	beq lbl_805C3F80
lbl_805C3F58:
/* 805C3F58  38 7E 04 DC */	addi r3, r30, 0x4dc
/* 805C3F5C  38 80 00 00 */	li r4, 0
/* 805C3F60  38 A0 00 08 */	li r5, 8
/* 805C3F64  38 C0 04 00 */	li r6, 0x400
/* 805C3F68  4B CA C6 A0 */	b cLib_addCalcAngleS2__FPssss
/* 805C3F6C  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 805C3F70  A8 9E 04 DC */	lha r4, 0x4dc(r30)
/* 805C3F74  38 A0 00 08 */	li r5, 8
/* 805C3F78  38 C0 04 00 */	li r6, 0x400
/* 805C3F7C  4B CA C6 8C */	b cLib_addCalcAngleS2__FPssss
lbl_805C3F80:
/* 805C3F80  38 00 00 00 */	li r0, 0
/* 805C3F84  B0 1E 07 4E */	sth r0, 0x74e(r30)
/* 805C3F88  48 00 00 8C */	b lbl_805C4014
lbl_805C3F8C:
/* 805C3F8C  C0 5F 04 4C */	lfs f2, 0x44c(r31)
/* 805C3F90  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 805C3F94  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 805C3F98  7C 03 00 50 */	subf r0, r3, r0
/* 805C3F9C  C8 3F 03 58 */	lfd f1, 0x358(r31)
/* 805C3FA0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805C3FA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805C3FA8  3C 00 43 30 */	lis r0, 0x4330
/* 805C3FAC  90 01 00 20 */	stw r0, 0x20(r1)
/* 805C3FB0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 805C3FB4  EC 00 08 28 */	fsubs f0, f0, f1
/* 805C3FB8  EC 02 00 32 */	fmuls f0, f2, f0
/* 805C3FBC  FC 00 00 1E */	fctiwz f0, f0
/* 805C3FC0  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 805C3FC4  83 A1 00 2C */	lwz r29, 0x2c(r1)
/* 805C3FC8  7F A3 07 34 */	extsh r3, r29
/* 805C3FCC  4B DA 11 04 */	b abs
/* 805C3FD0  2C 03 20 00 */	cmpwi r3, 0x2000
/* 805C3FD4  40 80 00 08 */	bge lbl_805C3FDC
/* 805C3FD8  B3 BE 07 4E */	sth r29, 0x74e(r30)
lbl_805C3FDC:
/* 805C3FDC  80 1E 07 10 */	lwz r0, 0x710(r30)
/* 805C3FE0  2C 00 00 44 */	cmpwi r0, 0x44
/* 805C3FE4  41 82 00 28 */	beq lbl_805C400C
/* 805C3FE8  2C 00 00 45 */	cmpwi r0, 0x45
/* 805C3FEC  41 82 00 20 */	beq lbl_805C400C
/* 805C3FF0  C0 3F 03 68 */	lfs f1, 0x368(r31)
/* 805C3FF4  C0 1E 08 C8 */	lfs f0, 0x8c8(r30)
/* 805C3FF8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805C3FFC  40 82 00 10 */	bne lbl_805C400C
/* 805C4000  88 1E 07 E7 */	lbz r0, 0x7e7(r30)
/* 805C4004  28 00 00 00 */	cmplwi r0, 0
/* 805C4008  40 82 00 0C */	bne lbl_805C4014
lbl_805C400C:
/* 805C400C  38 00 00 00 */	li r0, 0
/* 805C4010  B0 1E 07 4E */	sth r0, 0x74e(r30)
lbl_805C4014:
/* 805C4014  38 7E 04 E8 */	addi r3, r30, 0x4e8
/* 805C4018  A8 9E 07 4E */	lha r4, 0x74e(r30)
/* 805C401C  38 A0 00 28 */	li r5, 0x28
/* 805C4020  38 C0 04 00 */	li r6, 0x400
/* 805C4024  4B CA C5 E4 */	b cLib_addCalcAngleS2__FPssss
/* 805C4028  7F C3 F3 78 */	mr r3, r30
/* 805C402C  38 9E 0A 08 */	addi r4, r30, 0xa08
/* 805C4030  4B A5 66 9C */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 805C4034  80 1E 07 08 */	lwz r0, 0x708(r30)
/* 805C4038  2C 00 00 05 */	cmpwi r0, 5
/* 805C403C  41 82 00 14 */	beq lbl_805C4050
/* 805C4040  2C 00 00 06 */	cmpwi r0, 6
/* 805C4044  41 82 00 0C */	beq lbl_805C4050
/* 805C4048  7F C3 F3 78 */	mr r3, r30
/* 805C404C  4B FF 8C 01 */	bl mHeadAngleSet__8daB_DR_cFv
lbl_805C4050:
/* 805C4050  80 1E 08 5C */	lwz r0, 0x85c(r30)
/* 805C4054  60 00 00 04 */	ori r0, r0, 4
/* 805C4058  90 1E 08 5C */	stw r0, 0x85c(r30)
/* 805C405C  38 7E 08 30 */	addi r3, r30, 0x830
/* 805C4060  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 805C4064  4B AB 30 B0 */	b SetGroundUpY__9dBgS_AcchFf
/* 805C4068  38 7E 08 30 */	addi r3, r30, 0x830
/* 805C406C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 805C4070  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 805C4074  38 84 0F 38 */	addi r4, r4, 0xf38
/* 805C4078  4B AB 2A 34 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 805C407C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 805C4080  7C 03 07 74 */	extsb r3, r0
/* 805C4084  4B A6 8F E8 */	b dComIfGp_getReverb__Fi
/* 805C4088  7C 65 1B 78 */	mr r5, r3
/* 805C408C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805C4090  38 80 00 00 */	li r4, 0
/* 805C4094  4B A4 D0 1C */	b play__16mDoExt_McaMorfSOFUlSc
/* 805C4098  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 805C409C  7C 03 07 74 */	extsb r3, r0
/* 805C40A0  4B A6 8F CC */	b dComIfGp_getReverb__Fi
/* 805C40A4  7C 65 1B 78 */	mr r5, r3
/* 805C40A8  38 7E 06 64 */	addi r3, r30, 0x664
/* 805C40AC  38 80 00 00 */	li r4, 0
/* 805C40B0  81 9E 06 64 */	lwz r12, 0x664(r30)
/* 805C40B4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 805C40B8  7D 89 03 A6 */	mtctr r12
/* 805C40BC  4E 80 04 21 */	bctrl 
/* 805C40C0  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 805C40C4  4B A4 93 64 */	b play__14mDoExt_baseAnmFv
/* 805C40C8  39 61 00 40 */	addi r11, r1, 0x40
/* 805C40CC  4B D9 E1 5C */	b _restgpr_29
/* 805C40D0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805C40D4  7C 08 03 A6 */	mtlr r0
/* 805C40D8  38 21 00 40 */	addi r1, r1, 0x40
/* 805C40DC  4E 80 00 20 */	blr 
