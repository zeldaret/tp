lbl_807D4C84:
/* 807D4C84  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 807D4C88  7C 08 02 A6 */	mflr r0
/* 807D4C8C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 807D4C90  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 807D4C94  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 807D4C98  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 807D4C9C  F3 C1 00 88 */	psq_st f30, 136(r1), 0, 0 /* qr0 */
/* 807D4CA0  DB A1 00 70 */	stfd f29, 0x70(r1)
/* 807D4CA4  F3 A1 00 78 */	psq_st f29, 120(r1), 0, 0 /* qr0 */
/* 807D4CA8  39 61 00 70 */	addi r11, r1, 0x70
/* 807D4CAC  4B B8 D5 20 */	b _savegpr_25
/* 807D4CB0  7C 7B 1B 78 */	mr r27, r3
/* 807D4CB4  3C 80 80 7E */	lis r4, lit_3882@ha
/* 807D4CB8  3B A4 29 8C */	addi r29, r4, lit_3882@l
/* 807D4CBC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 807D4CC0  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l
/* 807D4CC4  83 9E 5D AC */	lwz r28, 0x5dac(r30)
/* 807D4CC8  7F 84 E3 78 */	mr r4, r28
/* 807D4CCC  4B 84 5C 98 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807D4CD0  FF A0 08 90 */	fmr f29, f1
/* 807D4CD4  C3 FD 00 48 */	lfs f31, 0x48(r29)
/* 807D4CD8  C3 DD 00 60 */	lfs f30, 0x60(r29)
/* 807D4CDC  A0 1B 06 BE */	lhz r0, 0x6be(r27)
/* 807D4CE0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807D4CE4  40 82 00 18 */	bne lbl_807D4CFC
/* 807D4CE8  38 00 00 07 */	li r0, 7
/* 807D4CEC  B0 1B 06 90 */	sth r0, 0x690(r27)
/* 807D4CF0  38 00 00 00 */	li r0, 0
/* 807D4CF4  B0 1B 05 B4 */	sth r0, 0x5b4(r27)
/* 807D4CF8  48 00 06 84 */	b lbl_807D537C
lbl_807D4CFC:
/* 807D4CFC  80 1B 14 34 */	lwz r0, 0x1434(r27)
/* 807D4D00  90 01 00 08 */	stw r0, 8(r1)
/* 807D4D04  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 807D4D08  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 807D4D0C  38 81 00 08 */	addi r4, r1, 8
/* 807D4D10  4B 84 4A E8 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 807D4D14  7C 7F 1B 78 */	mr r31, r3
/* 807D4D18  7F 63 DB 78 */	mr r3, r27
/* 807D4D1C  4B FF F2 11 */	bl e_wb_saku_check__FP10e_wb_class
/* 807D4D20  2C 03 00 00 */	cmpwi r3, 0
/* 807D4D24  41 82 00 28 */	beq lbl_807D4D4C
/* 807D4D28  38 00 00 3C */	li r0, 0x3c
/* 807D4D2C  B0 1B 06 D4 */	sth r0, 0x6d4(r27)
/* 807D4D30  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 807D4D34  41 82 00 10 */	beq lbl_807D4D44
/* 807D4D38  38 00 30 00 */	li r0, 0x3000
/* 807D4D3C  B0 1B 06 D6 */	sth r0, 0x6d6(r27)
/* 807D4D40  48 00 00 0C */	b lbl_807D4D4C
lbl_807D4D44:
/* 807D4D44  38 00 D0 00 */	li r0, -12288
/* 807D4D48  B0 1B 06 D6 */	sth r0, 0x6d6(r27)
lbl_807D4D4C:
/* 807D4D4C  38 7B 06 D6 */	addi r3, r27, 0x6d6
/* 807D4D50  38 80 00 00 */	li r4, 0
/* 807D4D54  38 A0 00 01 */	li r5, 1
/* 807D4D58  38 C0 00 64 */	li r6, 0x64
/* 807D4D5C  4B A9 B8 AC */	b cLib_addCalcAngleS2__FPssss
/* 807D4D60  3B 20 00 00 */	li r25, 0
/* 807D4D64  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 807D4D68  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807D4D6C  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 807D4D70  7D 89 03 A6 */	mtctr r12
/* 807D4D74  4E 80 04 21 */	bctrl 
/* 807D4D78  28 03 00 00 */	cmplwi r3, 0
/* 807D4D7C  41 82 00 28 */	beq lbl_807D4DA4
/* 807D4D80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807D4D84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807D4D88  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 807D4D8C  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 807D4D90  C0 1D 00 38 */	lfs f0, 0x38(r29)
/* 807D4D94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D4D98  4C 41 13 82 */	cror 2, 1, 2
/* 807D4D9C  40 82 00 08 */	bne lbl_807D4DA4
/* 807D4DA0  3B 20 00 01 */	li r25, 1
lbl_807D4DA4:
/* 807D4DA4  AB 5B 04 DE */	lha r26, 0x4de(r27)
/* 807D4DA8  A8 1B 05 B4 */	lha r0, 0x5b4(r27)
/* 807D4DAC  2C 00 00 02 */	cmpwi r0, 2
/* 807D4DB0  41 82 01 EC */	beq lbl_807D4F9C
/* 807D4DB4  40 80 00 14 */	bge lbl_807D4DC8
/* 807D4DB8  2C 00 00 00 */	cmpwi r0, 0
/* 807D4DBC  41 82 00 1C */	beq lbl_807D4DD8
/* 807D4DC0  40 80 00 FC */	bge lbl_807D4EBC
/* 807D4DC4  48 00 05 28 */	b lbl_807D52EC
lbl_807D4DC8:
/* 807D4DC8  2C 00 00 04 */	cmpwi r0, 4
/* 807D4DCC  41 82 04 B8 */	beq lbl_807D5284
/* 807D4DD0  40 80 05 1C */	bge lbl_807D52EC
/* 807D4DD4  48 00 04 48 */	b lbl_807D521C
lbl_807D4DD8:
/* 807D4DD8  88 1B 07 A6 */	lbz r0, 0x7a6(r27)
/* 807D4DDC  7C 00 07 75 */	extsb. r0, r0
/* 807D4DE0  40 82 00 3C */	bne lbl_807D4E1C
/* 807D4DE4  7F 63 DB 78 */	mr r3, r27
/* 807D4DE8  38 80 00 1B */	li r4, 0x1b
/* 807D4DEC  C0 3D 00 D8 */	lfs f1, 0xd8(r29)
/* 807D4DF0  38 A0 00 00 */	li r5, 0
/* 807D4DF4  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 807D4DF8  4B FF D7 51 */	bl anm_init__FP10e_wb_classifUcf
/* 807D4DFC  38 00 00 01 */	li r0, 1
/* 807D4E00  B0 1B 05 B4 */	sth r0, 0x5b4(r27)
/* 807D4E04  C0 1D 00 24 */	lfs f0, 0x24(r29)
/* 807D4E08  D0 1B 16 84 */	stfs f0, 0x1684(r27)
/* 807D4E0C  A0 1B 06 BE */	lhz r0, 0x6be(r27)
/* 807D4E10  60 00 00 08 */	ori r0, r0, 8
/* 807D4E14  B0 1B 06 BE */	sth r0, 0x6be(r27)
/* 807D4E18  48 00 04 D4 */	b lbl_807D52EC
lbl_807D4E1C:
/* 807D4E1C  38 00 00 00 */	li r0, 0
/* 807D4E20  98 1B 07 A6 */	stb r0, 0x7a6(r27)
/* 807D4E24  7F 63 DB 78 */	mr r3, r27
/* 807D4E28  38 80 00 20 */	li r4, 0x20
/* 807D4E2C  C0 3D 00 F8 */	lfs f1, 0xf8(r29)
/* 807D4E30  38 A0 00 02 */	li r5, 2
/* 807D4E34  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 807D4E38  4B FF D7 11 */	bl anm_init__FP10e_wb_classifUcf
/* 807D4E3C  C0 3D 00 20 */	lfs f1, 0x20(r29)
/* 807D4E40  4B A9 2B 14 */	b cM_rndF__Ff
/* 807D4E44  FC 00 08 1E */	fctiwz f0, f1
/* 807D4E48  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 807D4E4C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807D4E50  7C 00 07 34 */	extsh r0, r0
/* 807D4E54  C8 3D 00 D0 */	lfd f1, 0xd0(r29)
/* 807D4E58  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807D4E5C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 807D4E60  3C 00 43 30 */	lis r0, 0x4330
/* 807D4E64  90 01 00 48 */	stw r0, 0x48(r1)
/* 807D4E68  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 807D4E6C  EC 00 08 28 */	fsubs f0, f0, f1
/* 807D4E70  80 7B 05 E0 */	lwz r3, 0x5e0(r27)
/* 807D4E74  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 807D4E78  38 00 00 02 */	li r0, 2
/* 807D4E7C  B0 1B 05 B4 */	sth r0, 0x5b4(r27)
/* 807D4E80  A0 1B 06 BE */	lhz r0, 0x6be(r27)
/* 807D4E84  60 00 00 10 */	ori r0, r0, 0x10
/* 807D4E88  B0 1B 06 BE */	sth r0, 0x6be(r27)
/* 807D4E8C  3C 60 00 03 */	lis r3, 0x0003 /* 0x0003002A@ha */
/* 807D4E90  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0003002A@l */
/* 807D4E94  90 01 00 14 */	stw r0, 0x14(r1)
/* 807D4E98  38 7B 05 EC */	addi r3, r27, 0x5ec
/* 807D4E9C  38 81 00 14 */	addi r4, r1, 0x14
/* 807D4EA0  38 A0 00 00 */	li r5, 0
/* 807D4EA4  38 C0 FF FF */	li r6, -1
/* 807D4EA8  81 9B 05 EC */	lwz r12, 0x5ec(r27)
/* 807D4EAC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807D4EB0  7D 89 03 A6 */	mtctr r12
/* 807D4EB4  4E 80 04 21 */	bctrl 
/* 807D4EB8  48 00 04 34 */	b lbl_807D52EC
lbl_807D4EBC:
/* 807D4EBC  80 7B 05 E0 */	lwz r3, 0x5e0(r27)
/* 807D4EC0  38 63 00 0C */	addi r3, r3, 0xc
/* 807D4EC4  C0 3D 00 D8 */	lfs f1, 0xd8(r29)
/* 807D4EC8  4B B5 35 64 */	b checkPass__12J3DFrameCtrlFf
/* 807D4ECC  2C 03 00 00 */	cmpwi r3, 0
/* 807D4ED0  41 82 00 1C */	beq lbl_807D4EEC
/* 807D4ED4  88 1B 14 2D */	lbz r0, 0x142d(r27)
/* 807D4ED8  60 00 00 02 */	ori r0, r0, 2
/* 807D4EDC  98 1B 14 2D */	stb r0, 0x142d(r27)
/* 807D4EE0  38 00 00 0A */	li r0, 0xa
/* 807D4EE4  98 1B 14 2C */	stb r0, 0x142c(r27)
/* 807D4EE8  48 00 00 28 */	b lbl_807D4F10
lbl_807D4EEC:
/* 807D4EEC  80 7B 05 E0 */	lwz r3, 0x5e0(r27)
/* 807D4EF0  38 63 00 0C */	addi r3, r3, 0xc
/* 807D4EF4  C0 3D 00 5C */	lfs f1, 0x5c(r29)
/* 807D4EF8  4B B5 35 34 */	b checkPass__12J3DFrameCtrlFf
/* 807D4EFC  2C 03 00 00 */	cmpwi r3, 0
/* 807D4F00  41 82 00 10 */	beq lbl_807D4F10
/* 807D4F04  88 1B 14 2D */	lbz r0, 0x142d(r27)
/* 807D4F08  60 00 00 03 */	ori r0, r0, 3
/* 807D4F0C  98 1B 14 2D */	stb r0, 0x142d(r27)
lbl_807D4F10:
/* 807D4F10  80 7B 05 E0 */	lwz r3, 0x5e0(r27)
/* 807D4F14  38 80 00 01 */	li r4, 1
/* 807D4F18  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807D4F1C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807D4F20  40 82 00 18 */	bne lbl_807D4F38
/* 807D4F24  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 807D4F28  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807D4F2C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807D4F30  41 82 00 08 */	beq lbl_807D4F38
/* 807D4F34  38 80 00 00 */	li r4, 0
lbl_807D4F38:
/* 807D4F38  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807D4F3C  41 82 03 B0 */	beq lbl_807D52EC
/* 807D4F40  7F 63 DB 78 */	mr r3, r27
/* 807D4F44  38 80 00 20 */	li r4, 0x20
/* 807D4F48  C0 3D 00 F8 */	lfs f1, 0xf8(r29)
/* 807D4F4C  38 A0 00 02 */	li r5, 2
/* 807D4F50  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 807D4F54  4B FF D5 F5 */	bl anm_init__FP10e_wb_classifUcf
/* 807D4F58  38 00 00 02 */	li r0, 2
/* 807D4F5C  B0 1B 05 B4 */	sth r0, 0x5b4(r27)
/* 807D4F60  A0 1B 06 BE */	lhz r0, 0x6be(r27)
/* 807D4F64  60 00 00 10 */	ori r0, r0, 0x10
/* 807D4F68  B0 1B 06 BE */	sth r0, 0x6be(r27)
/* 807D4F6C  3C 60 00 03 */	lis r3, 0x0003 /* 0x0003002A@ha */
/* 807D4F70  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0003002A@l */
/* 807D4F74  90 01 00 10 */	stw r0, 0x10(r1)
/* 807D4F78  38 7B 05 EC */	addi r3, r27, 0x5ec
/* 807D4F7C  38 81 00 10 */	addi r4, r1, 0x10
/* 807D4F80  38 A0 00 00 */	li r5, 0
/* 807D4F84  38 C0 FF FF */	li r6, -1
/* 807D4F88  81 9B 05 EC */	lwz r12, 0x5ec(r27)
/* 807D4F8C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807D4F90  7D 89 03 A6 */	mtctr r12
/* 807D4F94  4E 80 04 21 */	bctrl 
/* 807D4F98  48 00 03 54 */	b lbl_807D52EC
lbl_807D4F9C:
/* 807D4F9C  38 00 00 01 */	li r0, 1
/* 807D4FA0  98 1B 06 BD */	stb r0, 0x6bd(r27)
/* 807D4FA4  7F 20 07 75 */	extsb. r0, r25
/* 807D4FA8  41 82 01 F8 */	beq lbl_807D51A0
/* 807D4FAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807D4FB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807D4FB4  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 807D4FB8  C3 E3 05 2C */	lfs f31, 0x52c(r3)
/* 807D4FBC  3C 60 80 7E */	lis r3, l_HIO@ha
/* 807D4FC0  38 63 35 C8 */	addi r3, r3, l_HIO@l
/* 807D4FC4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807D4FC8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807D4FCC  40 81 00 0C */	ble lbl_807D4FD8
/* 807D4FD0  FF E0 00 90 */	fmr f31, f0
/* 807D4FD4  48 00 00 14 */	b lbl_807D4FE8
lbl_807D4FD8:
/* 807D4FD8  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 807D4FDC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807D4FE0  40 80 00 08 */	bge lbl_807D4FE8
/* 807D4FE4  FF E0 00 90 */	fmr f31, f0
lbl_807D4FE8:
/* 807D4FE8  38 C0 00 80 */	li r6, 0x80
/* 807D4FEC  88 1B 06 C0 */	lbz r0, 0x6c0(r27)
/* 807D4FF0  7C 00 07 75 */	extsb. r0, r0
/* 807D4FF4  41 82 00 1C */	beq lbl_807D5010
/* 807D4FF8  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 807D4FFC  B0 1B 05 DC */	sth r0, 0x5dc(r27)
/* 807D5000  38 00 00 00 */	li r0, 0
/* 807D5004  B0 1B 05 DE */	sth r0, 0x5de(r27)
/* 807D5008  C3 DD 00 FC */	lfs f30, 0xfc(r29)
/* 807D500C  48 00 00 DC */	b lbl_807D50E8
lbl_807D5010:
/* 807D5010  A8 1B 06 9C */	lha r0, 0x69c(r27)
/* 807D5014  2C 00 00 00 */	cmpwi r0, 0
/* 807D5018  40 82 00 9C */	bne lbl_807D50B4
/* 807D501C  C0 3D 00 20 */	lfs f1, 0x20(r29)
/* 807D5020  4B A9 29 34 */	b cM_rndF__Ff
/* 807D5024  C0 1D 00 D8 */	lfs f0, 0xd8(r29)
/* 807D5028  EC 00 08 2A */	fadds f0, f0, f1
/* 807D502C  FC 00 00 1E */	fctiwz f0, f0
/* 807D5030  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 807D5034  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 807D5038  B0 1B 06 9C */	sth r0, 0x69c(r27)
/* 807D503C  C0 1B 06 C4 */	lfs f0, 0x6c4(r27)
/* 807D5040  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807D5044  C0 1D 00 48 */	lfs f0, 0x48(r29)
/* 807D5048  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807D504C  C0 1D 01 0C */	lfs f0, 0x10c(r29)
/* 807D5050  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807D5054  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807D5058  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807D505C  80 63 00 00 */	lwz r3, 0(r3)
/* 807D5060  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 807D5064  4B 83 73 78 */	b mDoMtx_YrotS__FPA4_fs
/* 807D5068  38 61 00 30 */	addi r3, r1, 0x30
/* 807D506C  38 81 00 24 */	addi r4, r1, 0x24
/* 807D5070  4B A9 BE 7C */	b MtxPosition__FP4cXyzP4cXyz
/* 807D5074  38 61 00 24 */	addi r3, r1, 0x24
/* 807D5078  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 807D507C  7C 65 1B 78 */	mr r5, r3
/* 807D5080  4B B7 20 10 */	b PSVECAdd
/* 807D5084  38 61 00 18 */	addi r3, r1, 0x18
/* 807D5088  38 81 00 24 */	addi r4, r1, 0x24
/* 807D508C  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 807D5090  4B A9 1A A4 */	b __mi__4cXyzCFRC3Vec
/* 807D5094  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 807D5098  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 807D509C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 807D50A0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807D50A4  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 807D50A8  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 807D50AC  4B A9 25 C8 */	b cM_atan2s__Fff
/* 807D50B0  B0 7B 05 DC */	sth r3, 0x5dc(r27)
lbl_807D50B4:
/* 807D50B4  7F 63 DB 78 */	mr r3, r27
/* 807D50B8  C0 3B 07 A8 */	lfs f1, 0x7a8(r27)
/* 807D50BC  4B FF FB 21 */	bl pl_pass_check__FP10e_wb_classf
/* 807D50C0  2C 03 00 00 */	cmpwi r3, 0
/* 807D50C4  41 82 00 14 */	beq lbl_807D50D8
/* 807D50C8  C0 1D 01 10 */	lfs f0, 0x110(r29)
/* 807D50CC  EF FF 00 32 */	fmuls f31, f31, f0
/* 807D50D0  C3 DD 00 FC */	lfs f30, 0xfc(r29)
/* 807D50D4  48 00 00 10 */	b lbl_807D50E4
lbl_807D50D8:
/* 807D50D8  C0 1D 01 14 */	lfs f0, 0x114(r29)
/* 807D50DC  EF FF 00 32 */	fmuls f31, f31, f0
/* 807D50E0  C3 DD 00 FC */	lfs f30, 0xfc(r29)
lbl_807D50E4:
/* 807D50E4  38 C0 02 00 */	li r6, 0x200
lbl_807D50E8:
/* 807D50E8  28 1F 00 00 */	cmplwi r31, 0
/* 807D50EC  41 82 00 44 */	beq lbl_807D5130
/* 807D50F0  80 1F 06 7C */	lwz r0, 0x67c(r31)
/* 807D50F4  2C 00 00 27 */	cmpwi r0, 0x27
/* 807D50F8  40 82 00 38 */	bne lbl_807D5130
/* 807D50FC  A8 1B 06 8E */	lha r0, 0x68e(r27)
/* 807D5100  1C 00 03 E8 */	mulli r0, r0, 0x3e8
/* 807D5104  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807D5108  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 807D510C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 807D5110  7C 23 04 2E */	lfsx f1, r3, r0
/* 807D5114  C0 1D 01 18 */	lfs f0, 0x118(r29)
/* 807D5118  EC 00 00 72 */	fmuls f0, f0, f1
/* 807D511C  FC 00 00 1E */	fctiwz f0, f0
/* 807D5120  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 807D5124  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 807D5128  B0 1B 06 D6 */	sth r0, 0x6d6(r27)
/* 807D512C  38 C0 04 00 */	li r6, 0x400
lbl_807D5130:
/* 807D5130  38 7B 04 DE */	addi r3, r27, 0x4de
/* 807D5134  A8 BB 06 D6 */	lha r5, 0x6d6(r27)
/* 807D5138  A8 9B 05 DC */	lha r4, 0x5dc(r27)
/* 807D513C  A8 1B 05 DE */	lha r0, 0x5de(r27)
/* 807D5140  7C 00 2A 14 */	add r0, r0, r5
/* 807D5144  7C 04 02 14 */	add r0, r4, r0
/* 807D5148  7C 04 07 34 */	extsh r4, r0
/* 807D514C  38 A0 00 08 */	li r5, 8
/* 807D5150  4B A9 B4 B8 */	b cLib_addCalcAngleS2__FPssss
/* 807D5154  38 7B 05 DE */	addi r3, r27, 0x5de
/* 807D5158  38 80 00 00 */	li r4, 0
/* 807D515C  38 A0 00 01 */	li r5, 1
/* 807D5160  38 C0 00 64 */	li r6, 0x64
/* 807D5164  4B A9 B4 A4 */	b cLib_addCalcAngleS2__FPssss
/* 807D5168  C0 3B 05 2C */	lfs f1, 0x52c(r27)
/* 807D516C  C0 1D 00 24 */	lfs f0, 0x24(r29)
/* 807D5170  EC 21 00 24 */	fdivs f1, f1, f0
/* 807D5174  C0 1D 00 60 */	lfs f0, 0x60(r29)
/* 807D5178  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D517C  40 80 00 08 */	bge lbl_807D5184
/* 807D5180  FC 20 00 90 */	fmr f1, f0
lbl_807D5184:
/* 807D5184  C0 1D 01 1C */	lfs f0, 0x11c(r29)
/* 807D5188  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D518C  40 81 00 08 */	ble lbl_807D5194
/* 807D5190  FC 20 00 90 */	fmr f1, f0
lbl_807D5194:
/* 807D5194  80 7B 05 E0 */	lwz r3, 0x5e0(r27)
/* 807D5198  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 807D519C  48 00 00 74 */	b lbl_807D5210
lbl_807D51A0:
/* 807D51A0  C0 1D 00 60 */	lfs f0, 0x60(r29)
/* 807D51A4  80 7B 05 E0 */	lwz r3, 0x5e0(r27)
/* 807D51A8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 807D51AC  C3 DD 00 D8 */	lfs f30, 0xd8(r29)
/* 807D51B0  3C 60 80 7E */	lis r3, l_HIO@ha
/* 807D51B4  38 63 35 C8 */	addi r3, r3, l_HIO@l
/* 807D51B8  C3 E3 00 14 */	lfs f31, 0x14(r3)
/* 807D51BC  C0 1D 01 20 */	lfs f0, 0x120(r29)
/* 807D51C0  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 807D51C4  40 81 00 30 */	ble lbl_807D51F4
/* 807D51C8  7F 63 DB 78 */	mr r3, r27
/* 807D51CC  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 807D51D0  4B 84 55 40 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807D51D4  7C 64 1B 78 */	mr r4, r3
/* 807D51D8  38 7B 04 DE */	addi r3, r27, 0x4de
/* 807D51DC  A8 1B 06 D6 */	lha r0, 0x6d6(r27)
/* 807D51E0  7C 00 22 14 */	add r0, r0, r4
/* 807D51E4  7C 04 07 34 */	extsh r4, r0
/* 807D51E8  38 A0 00 08 */	li r5, 8
/* 807D51EC  38 C0 02 00 */	li r6, 0x200
/* 807D51F0  4B A9 B4 18 */	b cLib_addCalcAngleS2__FPssss
lbl_807D51F4:
/* 807D51F4  C0 1D 00 6C */	lfs f0, 0x6c(r29)
/* 807D51F8  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 807D51FC  40 80 00 14 */	bge lbl_807D5210
/* 807D5200  38 00 00 03 */	li r0, 3
/* 807D5204  B0 1B 05 B4 */	sth r0, 0x5b4(r27)
/* 807D5208  38 00 00 28 */	li r0, 0x28
/* 807D520C  B0 1B 06 98 */	sth r0, 0x698(r27)
lbl_807D5210:
/* 807D5210  38 00 00 01 */	li r0, 1
/* 807D5214  98 1B 14 2C */	stb r0, 0x142c(r27)
/* 807D5218  48 00 00 D4 */	b lbl_807D52EC
lbl_807D521C:
/* 807D521C  38 00 00 01 */	li r0, 1
/* 807D5220  98 1B 06 BD */	stb r0, 0x6bd(r27)
/* 807D5224  3C 60 80 7E */	lis r3, l_HIO@ha
/* 807D5228  38 63 35 C8 */	addi r3, r3, l_HIO@l
/* 807D522C  C3 E3 00 14 */	lfs f31, 0x14(r3)
/* 807D5230  C3 DD 00 D8 */	lfs f30, 0xd8(r29)
/* 807D5234  A8 1B 06 98 */	lha r0, 0x698(r27)
/* 807D5238  2C 00 00 0F */	cmpwi r0, 0xf
/* 807D523C  40 82 00 10 */	bne lbl_807D524C
/* 807D5240  A0 1B 06 BE */	lhz r0, 0x6be(r27)
/* 807D5244  60 00 00 20 */	ori r0, r0, 0x20
/* 807D5248  B0 1B 06 BE */	sth r0, 0x6be(r27)
lbl_807D524C:
/* 807D524C  A8 1B 06 98 */	lha r0, 0x698(r27)
/* 807D5250  2C 00 00 00 */	cmpwi r0, 0
/* 807D5254  40 82 00 24 */	bne lbl_807D5278
/* 807D5258  38 00 00 04 */	li r0, 4
/* 807D525C  B0 1B 05 B4 */	sth r0, 0x5b4(r27)
/* 807D5260  7F 63 DB 78 */	mr r3, r27
/* 807D5264  38 80 00 25 */	li r4, 0x25
/* 807D5268  C0 3D 00 D8 */	lfs f1, 0xd8(r29)
/* 807D526C  38 A0 00 02 */	li r5, 2
/* 807D5270  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 807D5274  4B FF D2 D5 */	bl anm_init__FP10e_wb_classifUcf
lbl_807D5278:
/* 807D5278  38 00 00 01 */	li r0, 1
/* 807D527C  98 1B 14 2C */	stb r0, 0x142c(r27)
/* 807D5280  48 00 00 6C */	b lbl_807D52EC
lbl_807D5284:
/* 807D5284  C0 3B 05 2C */	lfs f1, 0x52c(r27)
/* 807D5288  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 807D528C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D5290  40 81 00 38 */	ble lbl_807D52C8
/* 807D5294  38 00 00 02 */	li r0, 2
/* 807D5298  98 1B 14 2C */	stb r0, 0x142c(r27)
/* 807D529C  3C 60 00 03 */	lis r3, 0x0003 /* 0x00030029@ha */
/* 807D52A0  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00030029@l */
/* 807D52A4  90 01 00 0C */	stw r0, 0xc(r1)
/* 807D52A8  38 7B 05 EC */	addi r3, r27, 0x5ec
/* 807D52AC  38 81 00 0C */	addi r4, r1, 0xc
/* 807D52B0  38 A0 00 00 */	li r5, 0
/* 807D52B4  38 C0 FF FF */	li r6, -1
/* 807D52B8  81 9B 05 EC */	lwz r12, 0x5ec(r27)
/* 807D52BC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 807D52C0  7D 89 03 A6 */	mtctr r12
/* 807D52C4  4E 80 04 21 */	bctrl 
lbl_807D52C8:
/* 807D52C8  C0 3B 05 2C */	lfs f1, 0x52c(r27)
/* 807D52CC  C0 1D 00 60 */	lfs f0, 0x60(r29)
/* 807D52D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D52D4  40 80 00 18 */	bge lbl_807D52EC
/* 807D52D8  38 00 00 05 */	li r0, 5
/* 807D52DC  B0 1B 06 90 */	sth r0, 0x690(r27)
/* 807D52E0  38 00 00 00 */	li r0, 0
/* 807D52E4  B0 1B 05 B4 */	sth r0, 0x5b4(r27)
/* 807D52E8  48 00 00 94 */	b lbl_807D537C
lbl_807D52EC:
/* 807D52EC  38 7B 05 2C */	addi r3, r27, 0x52c
/* 807D52F0  FC 20 F8 90 */	fmr f1, f31
/* 807D52F4  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 807D52F8  FC 60 F0 90 */	fmr f3, f30
/* 807D52FC  4B A9 A7 40 */	b cLib_addCalc2__FPffff
/* 807D5300  38 7B 07 9A */	addi r3, r27, 0x79a
/* 807D5304  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 807D5308  7C 1A 00 50 */	subf r0, r26, r0
/* 807D530C  54 00 18 38 */	slwi r0, r0, 3
/* 807D5310  7C 00 00 D0 */	neg r0, r0
/* 807D5314  7C 04 07 34 */	extsh r4, r0
/* 807D5318  38 A0 00 08 */	li r5, 8
/* 807D531C  38 C0 02 00 */	li r6, 0x200
/* 807D5320  4B A9 B2 E8 */	b cLib_addCalcAngleS2__FPssss
/* 807D5324  A8 1B 05 B4 */	lha r0, 0x5b4(r27)
/* 807D5328  2C 00 00 04 */	cmpwi r0, 4
/* 807D532C  40 80 00 50 */	bge lbl_807D537C
/* 807D5330  88 1B 14 2F */	lbz r0, 0x142f(r27)
/* 807D5334  7C 00 07 75 */	extsb. r0, r0
/* 807D5338  40 81 00 44 */	ble lbl_807D537C
/* 807D533C  A0 1B 06 BE */	lhz r0, 0x6be(r27)
/* 807D5340  60 00 00 20 */	ori r0, r0, 0x20
/* 807D5344  B0 1B 06 BE */	sth r0, 0x6be(r27)
/* 807D5348  7F 63 DB 78 */	mr r3, r27
/* 807D534C  38 80 00 25 */	li r4, 0x25
/* 807D5350  C0 3D 00 D8 */	lfs f1, 0xd8(r29)
/* 807D5354  38 A0 00 02 */	li r5, 2
/* 807D5358  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 807D535C  4B FF D1 ED */	bl anm_init__FP10e_wb_classifUcf
/* 807D5360  C0 3B 05 2C */	lfs f1, 0x52c(r27)
/* 807D5364  C0 1D 00 38 */	lfs f0, 0x38(r29)
/* 807D5368  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D536C  40 81 00 08 */	ble lbl_807D5374
/* 807D5370  D0 1B 05 2C */	stfs f0, 0x52c(r27)
lbl_807D5374:
/* 807D5374  38 00 00 04 */	li r0, 4
/* 807D5378  B0 1B 05 B4 */	sth r0, 0x5b4(r27)
lbl_807D537C:
/* 807D537C  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 807D5380  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 807D5384  E3 C1 00 88 */	psq_l f30, 136(r1), 0, 0 /* qr0 */
/* 807D5388  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 807D538C  E3 A1 00 78 */	psq_l f29, 120(r1), 0, 0 /* qr0 */
/* 807D5390  CB A1 00 70 */	lfd f29, 0x70(r1)
/* 807D5394  39 61 00 70 */	addi r11, r1, 0x70
/* 807D5398  4B B8 CE 80 */	b _restgpr_25
/* 807D539C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 807D53A0  7C 08 03 A6 */	mtlr r0
/* 807D53A4  38 21 00 A0 */	addi r1, r1, 0xa0
/* 807D53A8  4E 80 00 20 */	blr 
