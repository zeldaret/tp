lbl_80BC4BB4:
/* 80BC4BB4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80BC4BB8  7C 08 02 A6 */	mflr r0
/* 80BC4BBC  90 01 00 74 */	stw r0, 0x74(r1)
/* 80BC4BC0  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80BC4BC4  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80BC4BC8  39 61 00 60 */	addi r11, r1, 0x60
/* 80BC4BCC  4B 79 D6 10 */	b _savegpr_29
/* 80BC4BD0  7C 7E 1B 78 */	mr r30, r3
/* 80BC4BD4  3C 80 80 BC */	lis r4, lit_3882@ha
/* 80BC4BD8  3B E4 57 E4 */	addi r31, r4, lit_3882@l
/* 80BC4BDC  3B A0 00 00 */	li r29, 0
/* 80BC4BE0  A8 03 05 96 */	lha r0, 0x596(r3)
/* 80BC4BE4  2C 00 00 05 */	cmpwi r0, 5
/* 80BC4BE8  41 82 02 90 */	beq lbl_80BC4E78
/* 80BC4BEC  40 80 00 10 */	bge lbl_80BC4BFC
/* 80BC4BF0  2C 00 00 00 */	cmpwi r0, 0
/* 80BC4BF4  41 82 00 14 */	beq lbl_80BC4C08
/* 80BC4BF8  48 00 04 FC */	b lbl_80BC50F4
lbl_80BC4BFC:
/* 80BC4BFC  2C 00 00 0A */	cmpwi r0, 0xa
/* 80BC4C00  41 82 03 24 */	beq lbl_80BC4F24
/* 80BC4C04  48 00 04 F0 */	b lbl_80BC50F4
lbl_80BC4C08:
/* 80BC4C08  A8 7E 05 9C */	lha r3, 0x59c(r30)
/* 80BC4C0C  2C 03 00 00 */	cmpwi r3, 0
/* 80BC4C10  41 82 02 48 */	beq lbl_80BC4E58
/* 80BC4C14  38 03 FF FF */	addi r0, r3, -1
/* 80BC4C18  B0 1E 05 9C */	sth r0, 0x59c(r30)
/* 80BC4C1C  A8 7E 05 9E */	lha r3, 0x59e(r30)
/* 80BC4C20  38 03 00 01 */	addi r0, r3, 1
/* 80BC4C24  B0 1E 05 9E */	sth r0, 0x59e(r30)
/* 80BC4C28  38 61 00 14 */	addi r3, r1, 0x14
/* 80BC4C2C  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 80BC4C30  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BC4C34  4B 6A 1F 00 */	b __mi__4cXyzCFRC3Vec
/* 80BC4C38  38 61 00 14 */	addi r3, r1, 0x14
/* 80BC4C3C  4B 78 24 FC */	b PSVECSquareMag
/* 80BC4C40  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80BC4C44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BC4C48  40 81 00 58 */	ble lbl_80BC4CA0
/* 80BC4C4C  FC 00 08 34 */	frsqrte f0, f1
/* 80BC4C50  C8 9F 00 08 */	lfd f4, 8(r31)
/* 80BC4C54  FC 44 00 32 */	fmul f2, f4, f0
/* 80BC4C58  C8 7F 00 10 */	lfd f3, 0x10(r31)
/* 80BC4C5C  FC 00 00 32 */	fmul f0, f0, f0
/* 80BC4C60  FC 01 00 32 */	fmul f0, f1, f0
/* 80BC4C64  FC 03 00 28 */	fsub f0, f3, f0
/* 80BC4C68  FC 02 00 32 */	fmul f0, f2, f0
/* 80BC4C6C  FC 44 00 32 */	fmul f2, f4, f0
/* 80BC4C70  FC 00 00 32 */	fmul f0, f0, f0
/* 80BC4C74  FC 01 00 32 */	fmul f0, f1, f0
/* 80BC4C78  FC 03 00 28 */	fsub f0, f3, f0
/* 80BC4C7C  FC 02 00 32 */	fmul f0, f2, f0
/* 80BC4C80  FC 44 00 32 */	fmul f2, f4, f0
/* 80BC4C84  FC 00 00 32 */	fmul f0, f0, f0
/* 80BC4C88  FC 01 00 32 */	fmul f0, f1, f0
/* 80BC4C8C  FC 03 00 28 */	fsub f0, f3, f0
/* 80BC4C90  FC 02 00 32 */	fmul f0, f2, f0
/* 80BC4C94  FF E1 00 32 */	fmul f31, f1, f0
/* 80BC4C98  FF E0 F8 18 */	frsp f31, f31
/* 80BC4C9C  48 00 00 90 */	b lbl_80BC4D2C
lbl_80BC4CA0:
/* 80BC4CA0  C8 1F 00 18 */	lfd f0, 0x18(r31)
/* 80BC4CA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BC4CA8  40 80 00 10 */	bge lbl_80BC4CB8
/* 80BC4CAC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BC4CB0  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80BC4CB4  48 00 00 78 */	b lbl_80BC4D2C
lbl_80BC4CB8:
/* 80BC4CB8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BC4CBC  80 81 00 08 */	lwz r4, 8(r1)
/* 80BC4CC0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BC4CC4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BC4CC8  7C 03 00 00 */	cmpw r3, r0
/* 80BC4CCC  41 82 00 14 */	beq lbl_80BC4CE0
/* 80BC4CD0  40 80 00 40 */	bge lbl_80BC4D10
/* 80BC4CD4  2C 03 00 00 */	cmpwi r3, 0
/* 80BC4CD8  41 82 00 20 */	beq lbl_80BC4CF8
/* 80BC4CDC  48 00 00 34 */	b lbl_80BC4D10
lbl_80BC4CE0:
/* 80BC4CE0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BC4CE4  41 82 00 0C */	beq lbl_80BC4CF0
/* 80BC4CE8  38 00 00 01 */	li r0, 1
/* 80BC4CEC  48 00 00 28 */	b lbl_80BC4D14
lbl_80BC4CF0:
/* 80BC4CF0  38 00 00 02 */	li r0, 2
/* 80BC4CF4  48 00 00 20 */	b lbl_80BC4D14
lbl_80BC4CF8:
/* 80BC4CF8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BC4CFC  41 82 00 0C */	beq lbl_80BC4D08
/* 80BC4D00  38 00 00 05 */	li r0, 5
/* 80BC4D04  48 00 00 10 */	b lbl_80BC4D14
lbl_80BC4D08:
/* 80BC4D08  38 00 00 03 */	li r0, 3
/* 80BC4D0C  48 00 00 08 */	b lbl_80BC4D14
lbl_80BC4D10:
/* 80BC4D10  38 00 00 04 */	li r0, 4
lbl_80BC4D14:
/* 80BC4D14  2C 00 00 01 */	cmpwi r0, 1
/* 80BC4D18  40 82 00 10 */	bne lbl_80BC4D28
/* 80BC4D1C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BC4D20  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80BC4D24  48 00 00 08 */	b lbl_80BC4D2C
lbl_80BC4D28:
/* 80BC4D28  FF E0 08 90 */	fmr f31, f1
lbl_80BC4D2C:
/* 80BC4D2C  A8 1E 05 9E */	lha r0, 0x59e(r30)
/* 80BC4D30  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80BC4D34  38 00 FF 00 */	li r0, -256
/* 80BC4D38  41 82 00 08 */	beq lbl_80BC4D40
/* 80BC4D3C  38 00 01 00 */	li r0, 0x100
lbl_80BC4D40:
/* 80BC4D40  7C 1D 03 78 */	mr r29, r0
/* 80BC4D44  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80BC4D48  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80BC4D4C  80 63 00 00 */	lwz r3, 0(r3)
/* 80BC4D50  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80BC4D54  4B 44 76 88 */	b mDoMtx_YrotS__FPA4_fs
/* 80BC4D58  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80BC4D5C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80BC4D60  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80BC4D64  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80BC4D68  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80BC4D6C  38 61 00 20 */	addi r3, r1, 0x20
/* 80BC4D70  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 80BC4D74  4B 6A C1 78 */	b MtxPosition__FP4cXyzP4cXyz
/* 80BC4D78  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80BC4D7C  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 80BC4D80  7C 65 1B 78 */	mr r5, r3
/* 80BC4D84  4B 78 23 0C */	b PSVECAdd
/* 80BC4D88  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80BC4D8C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80BC4D90  40 81 00 18 */	ble lbl_80BC4DA8
/* 80BC4D94  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80BC4D98  38 80 20 00 */	li r4, 0x2000
/* 80BC4D9C  38 A0 00 02 */	li r5, 2
/* 80BC4DA0  38 C0 02 00 */	li r6, 0x200
/* 80BC4DA4  4B 6A B8 64 */	b cLib_addCalcAngleS2__FPssss
lbl_80BC4DA8:
/* 80BC4DA8  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80BC4DAC  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80BC4DB0  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80BC4DB4  C0 7F 00 2C */	lfs f3, 0x2c(r31)
/* 80BC4DB8  4B 6A AC 84 */	b cLib_addCalc2__FPffff
/* 80BC4DBC  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80BC4DC0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80BC4DC4  40 81 03 30 */	ble lbl_80BC50F4
/* 80BC4DC8  38 00 00 0A */	li r0, 0xa
/* 80BC4DCC  B0 1E 05 96 */	sth r0, 0x596(r30)
/* 80BC4DD0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80BC4DD4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80BC4DD8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80BC4DDC  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80BC4DE0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80BC4DE4  38 61 00 20 */	addi r3, r1, 0x20
/* 80BC4DE8  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 80BC4DEC  4B 6A C1 00 */	b MtxPosition__FP4cXyzP4cXyz
/* 80BC4DF0  38 00 09 00 */	li r0, 0x900
/* 80BC4DF4  B0 1E 05 A0 */	sth r0, 0x5a0(r30)
/* 80BC4DF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BC4DFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BC4E00  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80BC4E04  80 9E 07 F8 */	lwz r4, 0x7f8(r30)
/* 80BC4E08  4B 4A F4 48 */	b Release__4cBgSFP9dBgW_Base
/* 80BC4E0C  38 00 00 00 */	li r0, 0
/* 80BC4E10  90 1E 07 F8 */	stw r0, 0x7f8(r30)
/* 80BC4E14  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008029D@ha */
/* 80BC4E18  38 03 02 9D */	addi r0, r3, 0x029D /* 0x0008029D@l */
/* 80BC4E1C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BC4E20  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BC4E24  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BC4E28  80 63 00 00 */	lwz r3, 0(r3)
/* 80BC4E2C  38 81 00 10 */	addi r4, r1, 0x10
/* 80BC4E30  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BC4E34  38 C0 00 00 */	li r6, 0
/* 80BC4E38  38 E0 00 00 */	li r7, 0
/* 80BC4E3C  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80BC4E40  FC 40 08 90 */	fmr f2, f1
/* 80BC4E44  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 80BC4E48  FC 80 18 90 */	fmr f4, f3
/* 80BC4E4C  39 00 00 00 */	li r8, 0
/* 80BC4E50  4B 6E 6B 34 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BC4E54  48 00 02 A0 */	b lbl_80BC50F4
lbl_80BC4E58:
/* 80BC4E58  38 00 00 00 */	li r0, 0
/* 80BC4E5C  B0 1E 05 9E */	sth r0, 0x59e(r30)
/* 80BC4E60  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80BC4E64  38 80 00 00 */	li r4, 0
/* 80BC4E68  38 A0 00 01 */	li r5, 1
/* 80BC4E6C  38 C0 10 00 */	li r6, 0x1000
/* 80BC4E70  4B 6A B7 98 */	b cLib_addCalcAngleS2__FPssss
/* 80BC4E74  48 00 02 80 */	b lbl_80BC50F4
lbl_80BC4E78:
/* 80BC4E78  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80BC4E7C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80BC4E80  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80BC4E84  4B 45 5A E0 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80BC4E88  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80BC4E8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BC4E90  40 80 02 64 */	bge lbl_80BC50F4
/* 80BC4E94  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80BC4E98  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80BC4E9C  80 63 00 00 */	lwz r3, 0(r3)
/* 80BC4EA0  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80BC4EA4  4B 44 75 38 */	b mDoMtx_YrotS__FPA4_fs
/* 80BC4EA8  38 00 00 0A */	li r0, 0xa
/* 80BC4EAC  B0 1E 05 96 */	sth r0, 0x596(r30)
/* 80BC4EB0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80BC4EB4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80BC4EB8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80BC4EBC  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80BC4EC0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80BC4EC4  38 61 00 20 */	addi r3, r1, 0x20
/* 80BC4EC8  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 80BC4ECC  4B 6A C0 20 */	b MtxPosition__FP4cXyzP4cXyz
/* 80BC4ED0  38 00 09 00 */	li r0, 0x900
/* 80BC4ED4  B0 1E 05 A0 */	sth r0, 0x5a0(r30)
/* 80BC4ED8  38 00 00 14 */	li r0, 0x14
/* 80BC4EDC  B0 1E 05 98 */	sth r0, 0x598(r30)
/* 80BC4EE0  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008029D@ha */
/* 80BC4EE4  38 03 02 9D */	addi r0, r3, 0x029D /* 0x0008029D@l */
/* 80BC4EE8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BC4EEC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BC4EF0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BC4EF4  80 63 00 00 */	lwz r3, 0(r3)
/* 80BC4EF8  38 81 00 0C */	addi r4, r1, 0xc
/* 80BC4EFC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BC4F00  38 C0 00 00 */	li r6, 0
/* 80BC4F04  38 E0 00 00 */	li r7, 0
/* 80BC4F08  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80BC4F0C  FC 40 08 90 */	fmr f2, f1
/* 80BC4F10  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 80BC4F14  FC 80 18 90 */	fmr f4, f3
/* 80BC4F18  39 00 00 00 */	li r8, 0
/* 80BC4F1C  4B 6E 6A 68 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BC4F20  48 00 01 D4 */	b lbl_80BC50F4
lbl_80BC4F24:
/* 80BC4F24  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80BC4F28  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 80BC4F2C  7C 65 1B 78 */	mr r5, r3
/* 80BC4F30  4B 78 21 60 */	b PSVECAdd
/* 80BC4F34  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80BC4F38  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80BC4F3C  EC 01 00 2A */	fadds f0, f1, f0
/* 80BC4F40  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80BC4F44  A8 7E 04 E4 */	lha r3, 0x4e4(r30)
/* 80BC4F48  A8 1E 05 A0 */	lha r0, 0x5a0(r30)
/* 80BC4F4C  7C 03 02 14 */	add r0, r3, r0
/* 80BC4F50  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80BC4F54  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80BC4F58  A8 1E 05 A2 */	lha r0, 0x5a2(r30)
/* 80BC4F5C  7C 03 02 14 */	add r0, r3, r0
/* 80BC4F60  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80BC4F64  C3 FE 04 FC */	lfs f31, 0x4fc(r30)
/* 80BC4F68  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 80BC4F6C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80BC4F70  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80BC4F74  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80BC4F78  4B 4B 1B 34 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80BC4F7C  A8 1E 05 98 */	lha r0, 0x598(r30)
/* 80BC4F80  2C 00 00 00 */	cmpwi r0, 0
/* 80BC4F84  40 82 01 5C */	bne lbl_80BC50E0
/* 80BC4F88  80 1E 06 18 */	lwz r0, 0x618(r30)
/* 80BC4F8C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80BC4F90  41 82 01 50 */	beq lbl_80BC50E0
/* 80BC4F94  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80BC4F98  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80BC4F9C  4C 40 13 82 */	cror 2, 0, 2
/* 80BC4FA0  40 82 00 C0 */	bne lbl_80BC5060
/* 80BC4FA4  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80BC4FA8  4B 6A 29 E4 */	b cM_rndFX__Ff
/* 80BC4FAC  FC 00 08 1E */	fctiwz f0, f1
/* 80BC4FB0  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80BC4FB4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BC4FB8  B0 1E 05 A2 */	sth r0, 0x5a2(r30)
/* 80BC4FBC  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80BC4FC0  4B 6A 29 CC */	b cM_rndFX__Ff
/* 80BC4FC4  FC 00 08 1E */	fctiwz f0, f1
/* 80BC4FC8  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80BC4FCC  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80BC4FD0  B0 1E 05 A0 */	sth r0, 0x5a0(r30)
/* 80BC4FD4  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80BC4FD8  4B 6A 29 B4 */	b cM_rndFX__Ff
/* 80BC4FDC  FC 00 08 1E */	fctiwz f0, f1
/* 80BC4FE0  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80BC4FE4  80 61 00 44 */	lwz r3, 0x44(r1)
/* 80BC4FE8  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80BC4FEC  7C 00 1A 14 */	add r0, r0, r3
/* 80BC4FF0  7C 04 07 34 */	extsh r4, r0
/* 80BC4FF4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80BC4FF8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80BC4FFC  80 63 00 00 */	lwz r3, 0(r3)
/* 80BC5000  4B 44 73 DC */	b mDoMtx_YrotS__FPA4_fs
/* 80BC5004  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80BC5008  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80BC500C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80BC5010  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80BC5014  4B 6A 29 40 */	b cM_rndF__Ff
/* 80BC5018  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80BC501C  EC 00 08 2A */	fadds f0, f0, f1
/* 80BC5020  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80BC5024  38 61 00 20 */	addi r3, r1, 0x20
/* 80BC5028  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 80BC502C  4B 6A BE C0 */	b MtxPosition__FP4cXyzP4cXyz
/* 80BC5030  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80BC5034  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80BC5038  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80BC503C  38 7E 09 70 */	addi r3, r30, 0x970
/* 80BC5040  38 9E 09 74 */	addi r4, r30, 0x974
/* 80BC5044  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BC5048  38 C0 00 00 */	li r6, 0
/* 80BC504C  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80BC5050  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80BC5054  39 00 00 01 */	li r8, 1
/* 80BC5058  4B 45 7F C8 */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 80BC505C  48 00 00 70 */	b lbl_80BC50CC
lbl_80BC5060:
/* 80BC5060  38 00 00 00 */	li r0, 0
/* 80BC5064  B0 1E 05 A0 */	sth r0, 0x5a0(r30)
/* 80BC5068  B0 1E 05 A2 */	sth r0, 0x5a2(r30)
/* 80BC506C  B0 1E 05 A4 */	sth r0, 0x5a4(r30)
/* 80BC5070  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 80BC5074  38 80 00 00 */	li r4, 0
/* 80BC5078  38 A0 00 01 */	li r5, 1
/* 80BC507C  38 C0 10 00 */	li r6, 0x1000
/* 80BC5080  4B 6A B5 88 */	b cLib_addCalcAngleS2__FPssss
/* 80BC5084  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80BC5088  38 80 00 00 */	li r4, 0
/* 80BC508C  38 A0 00 01 */	li r5, 1
/* 80BC5090  38 C0 10 00 */	li r6, 0x1000
/* 80BC5094  4B 6A B5 74 */	b cLib_addCalcAngleS2__FPssss
/* 80BC5098  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80BC509C  D0 3E 04 F8 */	stfs f1, 0x4f8(r30)
/* 80BC50A0  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80BC50A4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80BC50A8  D0 3E 05 00 */	stfs f1, 0x500(r30)
/* 80BC50AC  A8 7E 05 94 */	lha r3, 0x594(r30)
/* 80BC50B0  38 03 00 01 */	addi r0, r3, 1
/* 80BC50B4  B0 1E 05 94 */	sth r0, 0x594(r30)
/* 80BC50B8  A8 1E 05 94 */	lha r0, 0x594(r30)
/* 80BC50BC  2C 00 00 96 */	cmpwi r0, 0x96
/* 80BC50C0  40 81 00 0C */	ble lbl_80BC50CC
/* 80BC50C4  7F C3 F3 78 */	mr r3, r30
/* 80BC50C8  4B 45 4B B4 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80BC50CC:
/* 80BC50CC  38 7E 05 A8 */	addi r3, r30, 0x5a8
/* 80BC50D0  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80BC50D4  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 80BC50D8  4B 6A A9 A8 */	b cLib_addCalc0__FPfff
/* 80BC50DC  48 00 00 18 */	b lbl_80BC50F4
lbl_80BC50E0:
/* 80BC50E0  38 7E 05 A8 */	addi r3, r30, 0x5a8
/* 80BC50E4  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80BC50E8  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80BC50EC  FC 60 10 90 */	fmr f3, f2
/* 80BC50F0  4B 6A A9 4C */	b cLib_addCalc2__FPffff
lbl_80BC50F4:
/* 80BC50F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BC50F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BC50FC  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80BC5100  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80BC5104  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80BC5108  4B 78 17 E0 */	b PSMTXTrans
/* 80BC510C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BC5110  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BC5114  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80BC5118  4B 44 73 1C */	b mDoMtx_YrotM__FPA4_fs
/* 80BC511C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BC5120  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BC5124  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 80BC5128  4B 44 72 74 */	b mDoMtx_XrotM__FPA4_fs
/* 80BC512C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80BC5130  C0 5E 05 A8 */	lfs f2, 0x5a8(r30)
/* 80BC5134  FC 60 08 90 */	fmr f3, f1
/* 80BC5138  4B 44 7C 64 */	b transM__14mDoMtx_stack_cFfff
/* 80BC513C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BC5140  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BC5144  7F A4 07 34 */	extsh r4, r29
/* 80BC5148  4B 44 72 54 */	b mDoMtx_XrotM__FPA4_fs
/* 80BC514C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BC5150  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BC5154  80 9E 05 70 */	lwz r4, 0x570(r30)
/* 80BC5158  38 84 00 24 */	addi r4, r4, 0x24
/* 80BC515C  4B 78 13 54 */	b PSMTXCopy
/* 80BC5160  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BC5164  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BC5168  7C 1D 00 D0 */	neg r0, r29
/* 80BC516C  7C 04 07 34 */	extsh r4, r0
/* 80BC5170  4B 44 72 2C */	b mDoMtx_XrotM__FPA4_fs
/* 80BC5174  80 1E 07 F8 */	lwz r0, 0x7f8(r30)
/* 80BC5178  28 00 00 00 */	cmplwi r0, 0
/* 80BC517C  41 82 00 1C */	beq lbl_80BC5198
/* 80BC5180  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BC5184  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BC5188  38 9E 07 C8 */	addi r4, r30, 0x7c8
/* 80BC518C  4B 78 13 24 */	b PSMTXCopy
/* 80BC5190  80 7E 07 F8 */	lwz r3, 0x7f8(r30)
/* 80BC5194  4B 4B 68 2C */	b Move__4dBgWFv
lbl_80BC5198:
/* 80BC5198  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80BC519C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80BC51A0  39 61 00 60 */	addi r11, r1, 0x60
/* 80BC51A4  4B 79 D0 84 */	b _restgpr_29
/* 80BC51A8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80BC51AC  7C 08 03 A6 */	mtlr r0
/* 80BC51B0  38 21 00 70 */	addi r1, r1, 0x70
/* 80BC51B4  4E 80 00 20 */	blr 
