lbl_80C28C70:
/* 80C28C70  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80C28C74  7C 08 02 A6 */	mflr r0
/* 80C28C78  90 01 00 74 */	stw r0, 0x74(r1)
/* 80C28C7C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80C28C80  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80C28C84  39 61 00 60 */	addi r11, r1, 0x60
/* 80C28C88  4B 73 95 50 */	b _savegpr_28
/* 80C28C8C  7C 7D 1B 78 */	mr r29, r3
/* 80C28C90  7C 9E 23 78 */	mr r30, r4
/* 80C28C94  3C 60 80 C3 */	lis r3, lit_3649@ha
/* 80C28C98  3B E3 92 38 */	addi r31, r3, lit_3649@l
/* 80C28C9C  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80C28CA0  7C 03 07 74 */	extsb r3, r0
/* 80C28CA4  4B 40 43 C8 */	b dComIfGp_getReverb__Fi
/* 80C28CA8  7C 67 1B 78 */	mr r7, r3
/* 80C28CAC  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008016B@ha */
/* 80C28CB0  38 03 01 6B */	addi r0, r3, 0x016B /* 0x0008016B@l */
/* 80C28CB4  90 01 00 08 */	stw r0, 8(r1)
/* 80C28CB8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C28CBC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C28CC0  80 63 00 00 */	lwz r3, 0(r3)
/* 80C28CC4  38 81 00 08 */	addi r4, r1, 8
/* 80C28CC8  38 BD 05 38 */	addi r5, r29, 0x538
/* 80C28CCC  38 C0 00 00 */	li r6, 0
/* 80C28CD0  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80C28CD4  FC 40 08 90 */	fmr f2, f1
/* 80C28CD8  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 80C28CDC  FC 80 18 90 */	fmr f4, f3
/* 80C28CE0  39 00 00 00 */	li r8, 0
/* 80C28CE4  4B 68 38 28 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C28CE8  A8 7D 05 E6 */	lha r3, 0x5e6(r29)
/* 80C28CEC  38 03 FF FF */	addi r0, r3, -1
/* 80C28CF0  B0 1D 05 E6 */	sth r0, 0x5e6(r29)
/* 80C28CF4  A8 1D 05 E6 */	lha r0, 0x5e6(r29)
/* 80C28CF8  2C 00 00 00 */	cmpwi r0, 0
/* 80C28CFC  40 80 00 0C */	bge lbl_80C28D08
/* 80C28D00  38 00 00 00 */	li r0, 0
/* 80C28D04  B0 1D 05 E6 */	sth r0, 0x5e6(r29)
lbl_80C28D08:
/* 80C28D08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C28D0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C28D10  83 83 5D AC */	lwz r28, 0x5dac(r3)
/* 80C28D14  38 60 01 F6 */	li r3, 0x1f6
/* 80C28D18  3C 80 80 C3 */	lis r4, data_80C293F4@ha
/* 80C28D1C  38 84 93 F4 */	addi r4, r4, data_80C293F4@l
/* 80C28D20  4B 3F 0D 0C */	b fopAcM_SearchByName__FsPP10fopAc_ac_c
/* 80C28D24  2C 03 00 00 */	cmpwi r3, 0
/* 80C28D28  41 82 00 24 */	beq lbl_80C28D4C
/* 80C28D2C  3C 60 80 C3 */	lis r3, data_80C293F4@ha
/* 80C28D30  38 63 93 F4 */	addi r3, r3, data_80C293F4@l
/* 80C28D34  80 63 00 00 */	lwz r3, 0(r3)
/* 80C28D38  28 03 00 00 */	cmplwi r3, 0
/* 80C28D3C  41 82 00 10 */	beq lbl_80C28D4C
/* 80C28D40  38 03 04 D0 */	addi r0, r3, 0x4d0
/* 80C28D44  3C 60 80 C3 */	lis r3, data_80C293F8@ha
/* 80C28D48  90 03 93 F8 */	stw r0, data_80C293F8@l(r3)
lbl_80C28D4C:
/* 80C28D4C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80C28D50  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 80C28D54  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80C28D58  41 82 00 08 */	beq lbl_80C28D60
/* 80C28D5C  D0 3D 05 AC */	stfs f1, 0x5ac(r29)
lbl_80C28D60:
/* 80C28D60  A8 1D 05 CA */	lha r0, 0x5ca(r29)
/* 80C28D64  C8 BF 00 18 */	lfd f5, 0x18(r31)
/* 80C28D68  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C28D6C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80C28D70  3C 60 43 30 */	lis r3, 0x4330
/* 80C28D74  90 61 00 18 */	stw r3, 0x18(r1)
/* 80C28D78  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80C28D7C  EC 40 28 28 */	fsubs f2, f0, f5
/* 80C28D80  C0 9F 00 84 */	lfs f4, 0x84(r31)
/* 80C28D84  C0 7F 00 88 */	lfs f3, 0x88(r31)
/* 80C28D88  C0 1D 05 A4 */	lfs f0, 0x5a4(r29)
/* 80C28D8C  EC 03 00 32 */	fmuls f0, f3, f0
/* 80C28D90  EC 24 00 2A */	fadds f1, f4, f0
/* 80C28D94  C0 1D 05 A0 */	lfs f0, 0x5a0(r29)
/* 80C28D98  EC 03 00 32 */	fmuls f0, f3, f0
/* 80C28D9C  EC 01 00 2A */	fadds f0, f1, f0
/* 80C28DA0  EC 02 00 2A */	fadds f0, f2, f0
/* 80C28DA4  FC 00 00 1E */	fctiwz f0, f0
/* 80C28DA8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80C28DAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C28DB0  B0 1D 05 CA */	sth r0, 0x5ca(r29)
/* 80C28DB4  A8 1D 05 CC */	lha r0, 0x5cc(r29)
/* 80C28DB8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C28DBC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80C28DC0  90 61 00 28 */	stw r3, 0x28(r1)
/* 80C28DC4  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80C28DC8  EC 40 28 28 */	fsubs f2, f0, f5
/* 80C28DCC  C0 1D 05 A4 */	lfs f0, 0x5a4(r29)
/* 80C28DD0  EC 03 00 32 */	fmuls f0, f3, f0
/* 80C28DD4  EC 24 00 2A */	fadds f1, f4, f0
/* 80C28DD8  C0 1D 05 A0 */	lfs f0, 0x5a0(r29)
/* 80C28DDC  EC 03 00 32 */	fmuls f0, f3, f0
/* 80C28DE0  EC 01 00 2A */	fadds f0, f1, f0
/* 80C28DE4  EC 02 00 2A */	fadds f0, f2, f0
/* 80C28DE8  FC 00 00 1E */	fctiwz f0, f0
/* 80C28DEC  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80C28DF0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C28DF4  B0 1D 05 CC */	sth r0, 0x5cc(r29)
/* 80C28DF8  3C 60 80 C3 */	lis r3, data_80C293F4@ha
/* 80C28DFC  80 03 93 F4 */	lwz r0, data_80C293F4@l(r3)
/* 80C28E00  28 00 00 00 */	cmplwi r0, 0
/* 80C28E04  41 82 00 0C */	beq lbl_80C28E10
/* 80C28E08  7F A3 EB 78 */	mr r3, r29
/* 80C28E0C  4B FF F5 A1 */	bl Search_Ymb__10daObjIta_cFv
lbl_80C28E10:
/* 80C28E10  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80C28E14  FF E0 08 90 */	fmr f31, f1
/* 80C28E18  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80C28E1C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80C28E20  EC 20 08 2A */	fadds f1, f0, f1
/* 80C28E24  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80C28E28  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C28E2C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80C28E30  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80C28E34  38 61 00 0C */	addi r3, r1, 0xc
/* 80C28E38  4B 3F 4F 4C */	b waterCheck__11fopAcM_wt_cFPC4cXyz
/* 80C28E3C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C28E40  41 82 00 14 */	beq lbl_80C28E54
/* 80C28E44  3C 60 80 45 */	lis r3, mWaterY__11fopAcM_wt_c@ha
/* 80C28E48  C0 23 0C D8 */	lfs f1, mWaterY__11fopAcM_wt_c@l(r3)
/* 80C28E4C  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80C28E50  EF E1 00 28 */	fsubs f31, f1, f0
lbl_80C28E54:
/* 80C28E54  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80C28E58  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80C28E5C  A8 9D 05 CC */	lha r4, 0x5cc(r29)
/* 80C28E60  48 00 03 6D */	bl func_80C291CC
/* 80C28E64  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 80C28E68  C0 9D 05 D4 */	lfs f4, 0x5d4(r29)
/* 80C28E6C  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80C28E70  EC 60 F8 2A */	fadds f3, f0, f31
/* 80C28E74  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 80C28E78  C0 1D 05 A8 */	lfs f0, 0x5a8(r29)
/* 80C28E7C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C28E80  EC 43 00 2A */	fadds f2, f3, f0
/* 80C28E84  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80C28E88  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C28E8C  EC 02 00 2A */	fadds f0, f2, f0
/* 80C28E90  EC 24 00 2A */	fadds f1, f4, f0
/* 80C28E94  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 80C28E98  C0 7F 00 A0 */	lfs f3, 0xa0(r31)
/* 80C28E9C  FC 80 10 90 */	fmr f4, f2
/* 80C28EA0  4B 64 6A DC */	b cLib_addCalc__FPfffff
/* 80C28EA4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80C28EA8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80C28EAC  A8 9D 05 CA */	lha r4, 0x5ca(r29)
/* 80C28EB0  38 04 20 00 */	addi r0, r4, 0x2000
/* 80C28EB4  7C 04 07 34 */	extsh r4, r0
/* 80C28EB8  48 00 03 15 */	bl func_80C291CC
/* 80C28EBC  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 80C28EC0  A8 1D 05 CE */	lha r0, 0x5ce(r29)
/* 80C28EC4  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80C28EC8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C28ECC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C28ED0  3C 80 43 30 */	lis r4, 0x4330
/* 80C28ED4  90 81 00 30 */	stw r4, 0x30(r1)
/* 80C28ED8  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80C28EDC  EC 40 18 28 */	fsubs f2, f0, f3
/* 80C28EE0  A8 1D 05 B0 */	lha r0, 0x5b0(r29)
/* 80C28EE4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C28EE8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80C28EEC  90 81 00 28 */	stw r4, 0x28(r1)
/* 80C28EF0  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80C28EF4  EC 00 18 28 */	fsubs f0, f0, f3
/* 80C28EF8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C28EFC  EC 02 00 2A */	fadds f0, f2, f0
/* 80C28F00  FC 00 00 1E */	fctiwz f0, f0
/* 80C28F04  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80C28F08  80 81 00 24 */	lwz r4, 0x24(r1)
/* 80C28F0C  38 A0 00 02 */	li r5, 2
/* 80C28F10  38 C0 10 00 */	li r6, 0x1000
/* 80C28F14  38 E0 00 01 */	li r7, 1
/* 80C28F18  4B 64 76 28 */	b cLib_addCalcAngleS__FPsssss
/* 80C28F1C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80C28F20  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80C28F24  A8 9D 05 CC */	lha r4, 0x5cc(r29)
/* 80C28F28  48 00 02 A5 */	bl func_80C291CC
/* 80C28F2C  38 7D 04 E8 */	addi r3, r29, 0x4e8
/* 80C28F30  A8 1D 05 D2 */	lha r0, 0x5d2(r29)
/* 80C28F34  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80C28F38  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C28F3C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80C28F40  3C 80 43 30 */	lis r4, 0x4330
/* 80C28F44  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C28F48  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80C28F4C  EC 40 18 28 */	fsubs f2, f0, f3
/* 80C28F50  A8 1D 05 B0 */	lha r0, 0x5b0(r29)
/* 80C28F54  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C28F58  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80C28F5C  90 81 00 38 */	stw r4, 0x38(r1)
/* 80C28F60  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80C28F64  EC 00 18 28 */	fsubs f0, f0, f3
/* 80C28F68  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C28F6C  EC 02 00 2A */	fadds f0, f2, f0
/* 80C28F70  FC 00 00 1E */	fctiwz f0, f0
/* 80C28F74  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80C28F78  80 81 00 44 */	lwz r4, 0x44(r1)
/* 80C28F7C  38 A0 00 02 */	li r5, 2
/* 80C28F80  38 C0 10 00 */	li r6, 0x1000
/* 80C28F84  38 E0 00 01 */	li r7, 1
/* 80C28F88  4B 64 75 B8 */	b cLib_addCalcAngleS__FPsssss
/* 80C28F8C  38 7D 05 A4 */	addi r3, r29, 0x5a4
/* 80C28F90  A8 1D 05 C8 */	lha r0, 0x5c8(r29)
/* 80C28F94  C8 3F 00 18 */	lfd f1, 0x18(r31)
/* 80C28F98  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C28F9C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80C28FA0  3C 00 43 30 */	lis r0, 0x4330
/* 80C28FA4  90 01 00 48 */	stw r0, 0x48(r1)
/* 80C28FA8  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80C28FAC  EC 20 08 28 */	fsubs f1, f0, f1
/* 80C28FB0  C0 5F 00 A4 */	lfs f2, 0xa4(r31)
/* 80C28FB4  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 80C28FB8  C0 9F 00 10 */	lfs f4, 0x10(r31)
/* 80C28FBC  4B 64 69 C0 */	b cLib_addCalc__FPfffff
/* 80C28FC0  38 7D 05 A8 */	addi r3, r29, 0x5a8
/* 80C28FC4  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80C28FC8  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 80C28FCC  C0 7F 00 A8 */	lfs f3, 0xa8(r31)
/* 80C28FD0  4B 64 6A 6C */	b cLib_addCalc2__FPffff
/* 80C28FD4  38 7D 05 A0 */	addi r3, r29, 0x5a0
/* 80C28FD8  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80C28FDC  C0 5F 00 AC */	lfs f2, 0xac(r31)
/* 80C28FE0  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 80C28FE4  FC 80 08 90 */	fmr f4, f1
/* 80C28FE8  4B 64 69 94 */	b cLib_addCalc__FPfffff
/* 80C28FEC  38 7D 05 D4 */	addi r3, r29, 0x5d4
/* 80C28FF0  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80C28FF4  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 80C28FF8  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 80C28FFC  FC 80 08 90 */	fmr f4, f1
/* 80C29000  4B 64 69 7C */	b cLib_addCalc__FPfffff
/* 80C29004  38 7D 05 B0 */	addi r3, r29, 0x5b0
/* 80C29008  38 80 01 00 */	li r4, 0x100
/* 80C2900C  38 A0 00 0B */	li r5, 0xb
/* 80C29010  38 C0 01 00 */	li r6, 0x100
/* 80C29014  38 E0 00 00 */	li r7, 0
/* 80C29018  4B 64 75 28 */	b cLib_addCalcAngleS__FPsssss
/* 80C2901C  38 7D 05 CE */	addi r3, r29, 0x5ce
/* 80C29020  38 80 00 00 */	li r4, 0
/* 80C29024  38 A0 00 02 */	li r5, 2
/* 80C29028  38 C0 01 00 */	li r6, 0x100
/* 80C2902C  38 E0 00 01 */	li r7, 1
/* 80C29030  4B 64 75 10 */	b cLib_addCalcAngleS__FPsssss
/* 80C29034  38 7D 05 D2 */	addi r3, r29, 0x5d2
/* 80C29038  38 80 00 00 */	li r4, 0
/* 80C2903C  38 A0 00 02 */	li r5, 2
/* 80C29040  38 C0 01 00 */	li r6, 0x100
/* 80C29044  38 E0 00 01 */	li r7, 1
/* 80C29048  4B 64 74 F8 */	b cLib_addCalcAngleS__FPsssss
/* 80C2904C  38 00 00 00 */	li r0, 0
/* 80C29050  B0 1D 05 C8 */	sth r0, 0x5c8(r29)
/* 80C29054  98 1D 06 C0 */	stb r0, 0x6c0(r29)
/* 80C29058  7F A3 EB 78 */	mr r3, r29
/* 80C2905C  38 9D 05 E8 */	addi r4, r29, 0x5e8
/* 80C29060  4B 3F 16 6C */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80C29064  38 1D 05 6C */	addi r0, r29, 0x56c
/* 80C29068  90 1E 00 00 */	stw r0, 0(r30)
/* 80C2906C  7F A3 EB 78 */	mr r3, r29
/* 80C29070  4B FF F7 45 */	bl setBaseMtx__10daObjIta_cFv
/* 80C29074  38 7D 07 04 */	addi r3, r29, 0x704
/* 80C29078  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80C2907C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80C29080  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80C29084  4B 44 DA 28 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80C29088  38 60 00 01 */	li r3, 1
/* 80C2908C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80C29090  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80C29094  39 61 00 60 */	addi r11, r1, 0x60
/* 80C29098  4B 73 91 8C */	b _restgpr_28
/* 80C2909C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80C290A0  7C 08 03 A6 */	mtlr r0
/* 80C290A4  38 21 00 70 */	addi r1, r1, 0x70
/* 80C290A8  4E 80 00 20 */	blr 
