lbl_80703D74:
/* 80703D74  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 80703D78  7C 08 02 A6 */	mflr r0
/* 80703D7C  90 01 01 54 */	stw r0, 0x154(r1)
/* 80703D80  39 61 01 50 */	addi r11, r1, 0x150
/* 80703D84  4B C5 E4 50 */	b _savegpr_27
/* 80703D88  7C 7E 1B 78 */	mr r30, r3
/* 80703D8C  3C 60 80 70 */	lis r3, lit_3903@ha
/* 80703D90  3B E3 5A F8 */	addi r31, r3, lit_3903@l
/* 80703D94  3B A0 00 00 */	li r29, 0
/* 80703D98  3B 80 00 00 */	li r28, 0
/* 80703D9C  A8 1E 06 EA */	lha r0, 0x6ea(r30)
/* 80703DA0  2C 00 F0 00 */	cmpwi r0, -4096
/* 80703DA4  41 81 02 CC */	bgt lbl_80704070
/* 80703DA8  38 61 00 D8 */	addi r3, r1, 0xd8
/* 80703DAC  4B 97 37 D0 */	b __ct__11dBgS_GndChkFv
/* 80703DB0  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80703DB4  80 63 00 04 */	lwz r3, 4(r3)
/* 80703DB8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80703DBC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80703DC0  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80703DC4  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80703DC8  80 84 00 00 */	lwz r4, 0(r4)
/* 80703DCC  4B C4 26 E4 */	b PSMTXCopy
/* 80703DD0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80703DD4  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80703DD8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80703DDC  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80703DE0  38 61 00 5C */	addi r3, r1, 0x5c
/* 80703DE4  38 81 00 38 */	addi r4, r1, 0x38
/* 80703DE8  4B B6 D1 04 */	b MtxPosition__FP4cXyzP4cXyz
/* 80703DEC  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80703DF0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80703DF4  EC 00 08 2A */	fadds f0, f0, f1
/* 80703DF8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80703DFC  EC 00 08 2A */	fadds f0, f0, f1
/* 80703E00  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80703E04  38 61 00 D8 */	addi r3, r1, 0xd8
/* 80703E08  38 81 00 38 */	addi r4, r1, 0x38
/* 80703E0C  4B B6 3F 1C */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 80703E10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80703E14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80703E18  3B 63 0F 38 */	addi r27, r3, 0xf38
/* 80703E1C  7F 63 DB 78 */	mr r3, r27
/* 80703E20  38 81 00 D8 */	addi r4, r1, 0xd8
/* 80703E24  4B 97 06 7C */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80703E28  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80703E2C  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 80703E30  FC 20 08 18 */	frsp f1, f1
/* 80703E34  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80703E38  41 82 01 0C */	beq lbl_80703F44
/* 80703E3C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80703E40  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80703E44  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80703E48  EC 00 08 2A */	fadds f0, f0, f1
/* 80703E4C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80703E50  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 80703E54  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80703E58  EC 01 00 2A */	fadds f0, f1, f0
/* 80703E5C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80703E60  38 61 00 D8 */	addi r3, r1, 0xd8
/* 80703E64  38 81 00 44 */	addi r4, r1, 0x44
/* 80703E68  4B B6 3E A4 */	b SetPos__11cBgS_GndChkFPC3Vec
/* 80703E6C  7F 63 DB 78 */	mr r3, r27
/* 80703E70  38 81 00 D8 */	addi r4, r1, 0xd8
/* 80703E74  4B 97 06 2C */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80703E78  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80703E7C  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 80703E80  FC 20 08 18 */	frsp f1, f1
/* 80703E84  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80703E88  41 82 00 38 */	beq lbl_80703EC0
/* 80703E8C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80703E90  EC 21 00 28 */	fsubs f1, f1, f0
/* 80703E94  C0 41 00 4C */	lfs f2, 0x4c(r1)
/* 80703E98  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80703E9C  EC 42 00 28 */	fsubs f2, f2, f0
/* 80703EA0  4B B6 37 D4 */	b cM_atan2s__Fff
/* 80703EA4  7C 03 00 D0 */	neg r0, r3
/* 80703EA8  7C 1C 07 34 */	extsh r28, r0
/* 80703EAC  2C 1C 30 00 */	cmpwi r28, 0x3000
/* 80703EB0  41 81 00 0C */	bgt lbl_80703EBC
/* 80703EB4  2C 1C D0 00 */	cmpwi r28, -12288
/* 80703EB8  40 80 00 08 */	bge lbl_80703EC0
lbl_80703EBC:
/* 80703EBC  3B 80 00 00 */	li r28, 0
lbl_80703EC0:
/* 80703EC0  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80703EC4  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80703EC8  EC 01 00 2A */	fadds f0, f1, f0
/* 80703ECC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80703ED0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80703ED4  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80703ED8  EC 01 00 2A */	fadds f0, f1, f0
/* 80703EDC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80703EE0  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80703EE4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80703EE8  38 61 00 D8 */	addi r3, r1, 0xd8
/* 80703EEC  38 81 00 44 */	addi r4, r1, 0x44
/* 80703EF0  4B B6 3E 1C */	b SetPos__11cBgS_GndChkFPC3Vec
/* 80703EF4  7F 63 DB 78 */	mr r3, r27
/* 80703EF8  38 81 00 D8 */	addi r4, r1, 0xd8
/* 80703EFC  4B 97 05 A4 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80703F00  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80703F04  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 80703F08  FC 20 08 18 */	frsp f1, f1
/* 80703F0C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80703F10  41 82 00 34 */	beq lbl_80703F44
/* 80703F14  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80703F18  EC 21 00 28 */	fsubs f1, f1, f0
/* 80703F1C  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 80703F20  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80703F24  EC 42 00 28 */	fsubs f2, f2, f0
/* 80703F28  4B B6 37 4C */	b cM_atan2s__Fff
/* 80703F2C  7C 7D 07 34 */	extsh r29, r3
/* 80703F30  2C 1D 30 00 */	cmpwi r29, 0x3000
/* 80703F34  41 81 00 0C */	bgt lbl_80703F40
/* 80703F38  2C 1D D0 00 */	cmpwi r29, -12288
/* 80703F3C  40 80 00 08 */	bge lbl_80703F44
lbl_80703F40:
/* 80703F40  3B A0 00 00 */	li r29, 0
lbl_80703F44:
/* 80703F44  38 61 00 68 */	addi r3, r1, 0x68
/* 80703F48  4B 97 3D 20 */	b __ct__11dBgS_LinChkFv
/* 80703F4C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80703F50  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80703F54  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80703F58  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80703F5C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80703F60  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80703F64  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80703F68  EC 01 00 2A */	fadds f0, f1, f0
/* 80703F6C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80703F70  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80703F74  80 63 00 04 */	lwz r3, 4(r3)
/* 80703F78  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80703F7C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80703F80  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80703F84  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80703F88  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80703F8C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80703F90  38 63 00 F0 */	addi r3, r3, 0xf0
/* 80703F94  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80703F98  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80703F9C  80 84 00 00 */	lwz r4, 0(r4)
/* 80703FA0  4B C4 25 10 */	b PSMTXCopy
/* 80703FA4  38 61 00 2C */	addi r3, r1, 0x2c
/* 80703FA8  38 81 00 14 */	addi r4, r1, 0x14
/* 80703FAC  4B B6 CF 40 */	b MtxPosition__FP4cXyzP4cXyz
/* 80703FB0  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80703FB4  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80703FB8  EC 01 00 2A */	fadds f0, f1, f0
/* 80703FBC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80703FC0  38 61 00 68 */	addi r3, r1, 0x68
/* 80703FC4  38 81 00 20 */	addi r4, r1, 0x20
/* 80703FC8  38 A1 00 14 */	addi r5, r1, 0x14
/* 80703FCC  7F C6 F3 78 */	mr r6, r30
/* 80703FD0  4B 97 3D 94 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80703FD4  7F 63 DB 78 */	mr r3, r27
/* 80703FD8  38 81 00 68 */	addi r4, r1, 0x68
/* 80703FDC  4B 97 03 D8 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80703FE0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80703FE4  41 82 00 74 */	beq lbl_80704058
/* 80703FE8  38 61 00 08 */	addi r3, r1, 8
/* 80703FEC  38 81 00 20 */	addi r4, r1, 0x20
/* 80703FF0  38 A1 00 14 */	addi r5, r1, 0x14
/* 80703FF4  4B B6 2B 40 */	b __mi__4cXyzCFRC3Vec
/* 80703FF8  C0 21 00 08 */	lfs f1, 8(r1)
/* 80703FFC  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80704000  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80704004  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80704008  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8070400C  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80704010  4B B6 36 64 */	b cM_atan2s__Fff
/* 80704014  7C 64 1B 78 */	mr r4, r3
/* 80704018  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8070401C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80704020  80 63 00 00 */	lwz r3, 0(r3)
/* 80704024  4B 90 83 B8 */	b mDoMtx_YrotS__FPA4_fs
/* 80704028  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8070402C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80704030  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80704034  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80704038  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8070403C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80704040  38 81 00 50 */	addi r4, r1, 0x50
/* 80704044  4B B6 CE A8 */	b MtxPosition__FP4cXyzP4cXyz
/* 80704048  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8070404C  38 81 00 50 */	addi r4, r1, 0x50
/* 80704050  7C 65 1B 78 */	mr r5, r3
/* 80704054  4B C4 30 3C */	b PSVECAdd
lbl_80704058:
/* 80704058  38 61 00 68 */	addi r3, r1, 0x68
/* 8070405C  38 80 FF FF */	li r4, -1
/* 80704060  4B 97 3C 7C */	b __dt__11dBgS_LinChkFv
/* 80704064  38 61 00 D8 */	addi r3, r1, 0xd8
/* 80704068  38 80 FF FF */	li r4, -1
/* 8070406C  4B 97 35 84 */	b __dt__11dBgS_GndChkFv
lbl_80704070:
/* 80704070  38 7E 06 F0 */	addi r3, r30, 0x6f0
/* 80704074  7F 84 E3 78 */	mr r4, r28
/* 80704078  38 A0 00 01 */	li r5, 1
/* 8070407C  38 C0 04 00 */	li r6, 0x400
/* 80704080  4B B6 C5 88 */	b cLib_addCalcAngleS2__FPssss
/* 80704084  38 7E 06 F4 */	addi r3, r30, 0x6f4
/* 80704088  7F A4 EB 78 */	mr r4, r29
/* 8070408C  38 A0 00 01 */	li r5, 1
/* 80704090  38 C0 04 00 */	li r6, 0x400
/* 80704094  4B B6 C5 74 */	b cLib_addCalcAngleS2__FPssss
/* 80704098  39 61 01 50 */	addi r11, r1, 0x150
/* 8070409C  4B C5 E1 84 */	b _restgpr_27
/* 807040A0  80 01 01 54 */	lwz r0, 0x154(r1)
/* 807040A4  7C 08 03 A6 */	mtlr r0
/* 807040A8  38 21 01 50 */	addi r1, r1, 0x150
/* 807040AC  4E 80 00 20 */	blr 
