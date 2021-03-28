lbl_80C35CF0:
/* 80C35CF0  94 21 FE 90 */	stwu r1, -0x170(r1)
/* 80C35CF4  7C 08 02 A6 */	mflr r0
/* 80C35CF8  90 01 01 74 */	stw r0, 0x174(r1)
/* 80C35CFC  DB E1 01 60 */	stfd f31, 0x160(r1)
/* 80C35D00  F3 E1 01 68 */	psq_st f31, 360(r1), 0, 0 /* qr0 */
/* 80C35D04  39 61 01 60 */	addi r11, r1, 0x160
/* 80C35D08  4B 72 C4 D4 */	b _savegpr_29
/* 80C35D0C  7C 7D 1B 78 */	mr r29, r3
/* 80C35D10  3C 60 80 C4 */	lis r3, lit_3775@ha
/* 80C35D14  3B C3 84 08 */	addi r30, r3, lit_3775@l
/* 80C35D18  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 80C35D1C  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80C35D20  EC 41 00 32 */	fmuls f2, f1, f0
/* 80C35D24  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80C35D28  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80C35D2C  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 80C35D30  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80C35D34  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 80C35D38  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80C35D3C  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 80C35D40  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80C35D44  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80C35D48  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80C35D4C  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80C35D50  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C35D54  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80C35D58  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C35D5C  38 61 00 DC */	addi r3, r1, 0xdc
/* 80C35D60  4B 44 1F 08 */	b __ct__11dBgS_LinChkFv
/* 80C35D64  38 61 00 6C */	addi r3, r1, 0x6c
/* 80C35D68  4B 44 1F 00 */	b __ct__11dBgS_LinChkFv
/* 80C35D6C  38 61 01 34 */	addi r3, r1, 0x134
/* 80C35D70  4B 44 30 F8 */	b SetObj__16dBgS_PolyPassChkFv
/* 80C35D74  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80C35D78  4B 3D 6F EC */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80C35D7C  38 7D 09 9A */	addi r3, r29, 0x99a
/* 80C35D80  4B 3D 71 C4 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C35D84  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C35D88  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C35D8C  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 80C35D90  4B 3D 66 A4 */	b mDoMtx_YrotM__FPA4_fs
/* 80C35D94  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C35D98  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C35D9C  38 81 00 4C */	addi r4, r1, 0x4c
/* 80C35DA0  7C 85 23 78 */	mr r5, r4
/* 80C35DA4  4B 71 0F C8 */	b PSMTXMultVec
/* 80C35DA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C35DAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C35DB0  38 81 00 40 */	addi r4, r1, 0x40
/* 80C35DB4  7C 85 23 78 */	mr r5, r4
/* 80C35DB8  4B 71 0F B4 */	b PSMTXMultVec
/* 80C35DBC  38 61 00 DC */	addi r3, r1, 0xdc
/* 80C35DC0  38 81 00 40 */	addi r4, r1, 0x40
/* 80C35DC4  38 A1 00 4C */	addi r5, r1, 0x4c
/* 80C35DC8  38 C0 00 00 */	li r6, 0
/* 80C35DCC  4B 44 1F 98 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80C35DD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C35DD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C35DD8  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80C35DDC  7F E3 FB 78 */	mr r3, r31
/* 80C35DE0  38 81 00 DC */	addi r4, r1, 0xdc
/* 80C35DE4  4B 43 E5 D0 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80C35DE8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C35DEC  41 82 02 EC */	beq lbl_80C360D8
/* 80C35DF0  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80C35DF4  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80C35DF8  3C 60 80 C4 */	lis r3, __vt__8cM3dGPla@ha
/* 80C35DFC  38 03 85 A4 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80C35E00  90 01 00 68 */	stw r0, 0x68(r1)
/* 80C35E04  7F E3 FB 78 */	mr r3, r31
/* 80C35E08  38 81 00 F0 */	addi r4, r1, 0xf0
/* 80C35E0C  38 A1 00 58 */	addi r5, r1, 0x58
/* 80C35E10  4B 43 E9 34 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80C35E14  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 80C35E18  C0 41 00 60 */	lfs f2, 0x60(r1)
/* 80C35E1C  4B 63 18 58 */	b cM_atan2s__Fff
/* 80C35E20  7C 7F 1B 78 */	mr r31, r3
/* 80C35E24  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80C35E28  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C35E2C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C35E30  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C35E34  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C35E38  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80C35E3C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C35E40  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80C35E44  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C35E48  38 61 00 1C */	addi r3, r1, 0x1c
/* 80C35E4C  38 81 00 10 */	addi r4, r1, 0x10
/* 80C35E50  4B 71 15 4C */	b PSVECSquareDistance
/* 80C35E54  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80C35E58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C35E5C  40 81 00 58 */	ble lbl_80C35EB4
/* 80C35E60  FC 00 08 34 */	frsqrte f0, f1
/* 80C35E64  C8 9E 00 68 */	lfd f4, 0x68(r30)
/* 80C35E68  FC 44 00 32 */	fmul f2, f4, f0
/* 80C35E6C  C8 7E 00 70 */	lfd f3, 0x70(r30)
/* 80C35E70  FC 00 00 32 */	fmul f0, f0, f0
/* 80C35E74  FC 01 00 32 */	fmul f0, f1, f0
/* 80C35E78  FC 03 00 28 */	fsub f0, f3, f0
/* 80C35E7C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C35E80  FC 44 00 32 */	fmul f2, f4, f0
/* 80C35E84  FC 00 00 32 */	fmul f0, f0, f0
/* 80C35E88  FC 01 00 32 */	fmul f0, f1, f0
/* 80C35E8C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C35E90  FC 02 00 32 */	fmul f0, f2, f0
/* 80C35E94  FC 44 00 32 */	fmul f2, f4, f0
/* 80C35E98  FC 00 00 32 */	fmul f0, f0, f0
/* 80C35E9C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C35EA0  FC 03 00 28 */	fsub f0, f3, f0
/* 80C35EA4  FC 02 00 32 */	fmul f0, f2, f0
/* 80C35EA8  FF E1 00 32 */	fmul f31, f1, f0
/* 80C35EAC  FF E0 F8 18 */	frsp f31, f31
/* 80C35EB0  48 00 00 90 */	b lbl_80C35F40
lbl_80C35EB4:
/* 80C35EB4  C8 1E 00 78 */	lfd f0, 0x78(r30)
/* 80C35EB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C35EBC  40 80 00 10 */	bge lbl_80C35ECC
/* 80C35EC0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C35EC4  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80C35EC8  48 00 00 78 */	b lbl_80C35F40
lbl_80C35ECC:
/* 80C35ECC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C35ED0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80C35ED4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C35ED8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C35EDC  7C 03 00 00 */	cmpw r3, r0
/* 80C35EE0  41 82 00 14 */	beq lbl_80C35EF4
/* 80C35EE4  40 80 00 40 */	bge lbl_80C35F24
/* 80C35EE8  2C 03 00 00 */	cmpwi r3, 0
/* 80C35EEC  41 82 00 20 */	beq lbl_80C35F0C
/* 80C35EF0  48 00 00 34 */	b lbl_80C35F24
lbl_80C35EF4:
/* 80C35EF4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C35EF8  41 82 00 0C */	beq lbl_80C35F04
/* 80C35EFC  38 00 00 01 */	li r0, 1
/* 80C35F00  48 00 00 28 */	b lbl_80C35F28
lbl_80C35F04:
/* 80C35F04  38 00 00 02 */	li r0, 2
/* 80C35F08  48 00 00 20 */	b lbl_80C35F28
lbl_80C35F0C:
/* 80C35F0C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C35F10  41 82 00 0C */	beq lbl_80C35F1C
/* 80C35F14  38 00 00 05 */	li r0, 5
/* 80C35F18  48 00 00 10 */	b lbl_80C35F28
lbl_80C35F1C:
/* 80C35F1C  38 00 00 03 */	li r0, 3
/* 80C35F20  48 00 00 08 */	b lbl_80C35F28
lbl_80C35F24:
/* 80C35F24  38 00 00 04 */	li r0, 4
lbl_80C35F28:
/* 80C35F28  2C 00 00 01 */	cmpwi r0, 1
/* 80C35F2C  40 82 00 10 */	bne lbl_80C35F3C
/* 80C35F30  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C35F34  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80C35F38  48 00 00 08 */	b lbl_80C35F40
lbl_80C35F3C:
/* 80C35F3C  FF E0 08 90 */	fmr f31, f1
lbl_80C35F40:
/* 80C35F40  C0 01 01 0C */	lfs f0, 0x10c(r1)
/* 80C35F44  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C35F48  C0 01 01 10 */	lfs f0, 0x110(r1)
/* 80C35F4C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C35F50  C0 01 01 14 */	lfs f0, 0x114(r1)
/* 80C35F54  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C35F58  A8 7D 09 A2 */	lha r3, 0x9a2(r29)
/* 80C35F5C  7F E0 07 34 */	extsh r0, r31
/* 80C35F60  7C 03 00 50 */	subf r0, r3, r0
/* 80C35F64  2C 00 10 00 */	cmpwi r0, 0x1000
/* 80C35F68  40 80 01 54 */	bge lbl_80C360BC
/* 80C35F6C  2C 00 F0 00 */	cmpwi r0, -4096
/* 80C35F70  40 81 01 4C */	ble lbl_80C360BC
/* 80C35F74  38 61 00 28 */	addi r3, r1, 0x28
/* 80C35F78  38 9D 04 BC */	addi r4, r29, 0x4bc
/* 80C35F7C  4B 71 14 20 */	b PSVECSquareDistance
/* 80C35F80  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80C35F84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C35F88  40 81 00 58 */	ble lbl_80C35FE0
/* 80C35F8C  FC 00 08 34 */	frsqrte f0, f1
/* 80C35F90  C8 9E 00 68 */	lfd f4, 0x68(r30)
/* 80C35F94  FC 44 00 32 */	fmul f2, f4, f0
/* 80C35F98  C8 7E 00 70 */	lfd f3, 0x70(r30)
/* 80C35F9C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C35FA0  FC 01 00 32 */	fmul f0, f1, f0
/* 80C35FA4  FC 03 00 28 */	fsub f0, f3, f0
/* 80C35FA8  FC 02 00 32 */	fmul f0, f2, f0
/* 80C35FAC  FC 44 00 32 */	fmul f2, f4, f0
/* 80C35FB0  FC 00 00 32 */	fmul f0, f0, f0
/* 80C35FB4  FC 01 00 32 */	fmul f0, f1, f0
/* 80C35FB8  FC 03 00 28 */	fsub f0, f3, f0
/* 80C35FBC  FC 02 00 32 */	fmul f0, f2, f0
/* 80C35FC0  FC 44 00 32 */	fmul f2, f4, f0
/* 80C35FC4  FC 00 00 32 */	fmul f0, f0, f0
/* 80C35FC8  FC 01 00 32 */	fmul f0, f1, f0
/* 80C35FCC  FC 03 00 28 */	fsub f0, f3, f0
/* 80C35FD0  FC 02 00 32 */	fmul f0, f2, f0
/* 80C35FD4  FC 21 00 32 */	fmul f1, f1, f0
/* 80C35FD8  FC 20 08 18 */	frsp f1, f1
/* 80C35FDC  48 00 00 88 */	b lbl_80C36064
lbl_80C35FE0:
/* 80C35FE0  C8 1E 00 78 */	lfd f0, 0x78(r30)
/* 80C35FE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C35FE8  40 80 00 10 */	bge lbl_80C35FF8
/* 80C35FEC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C35FF0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80C35FF4  48 00 00 70 */	b lbl_80C36064
lbl_80C35FF8:
/* 80C35FF8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C35FFC  80 81 00 08 */	lwz r4, 8(r1)
/* 80C36000  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C36004  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C36008  7C 03 00 00 */	cmpw r3, r0
/* 80C3600C  41 82 00 14 */	beq lbl_80C36020
/* 80C36010  40 80 00 40 */	bge lbl_80C36050
/* 80C36014  2C 03 00 00 */	cmpwi r3, 0
/* 80C36018  41 82 00 20 */	beq lbl_80C36038
/* 80C3601C  48 00 00 34 */	b lbl_80C36050
lbl_80C36020:
/* 80C36020  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C36024  41 82 00 0C */	beq lbl_80C36030
/* 80C36028  38 00 00 01 */	li r0, 1
/* 80C3602C  48 00 00 28 */	b lbl_80C36054
lbl_80C36030:
/* 80C36030  38 00 00 02 */	li r0, 2
/* 80C36034  48 00 00 20 */	b lbl_80C36054
lbl_80C36038:
/* 80C36038  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C3603C  41 82 00 0C */	beq lbl_80C36048
/* 80C36040  38 00 00 05 */	li r0, 5
/* 80C36044  48 00 00 10 */	b lbl_80C36054
lbl_80C36048:
/* 80C36048  38 00 00 03 */	li r0, 3
/* 80C3604C  48 00 00 08 */	b lbl_80C36054
lbl_80C36050:
/* 80C36050  38 00 00 04 */	li r0, 4
lbl_80C36054:
/* 80C36054  2C 00 00 01 */	cmpwi r0, 1
/* 80C36058  40 82 00 0C */	bne lbl_80C36064
/* 80C3605C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C36060  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80C36064:
/* 80C36064  C0 5E 00 90 */	lfs f2, 0x90(r30)
/* 80C36068  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80C3606C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C36070  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C36074  40 80 00 48 */	bge lbl_80C360BC
/* 80C36078  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80C3607C  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80C36080  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80C36084  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80C36088  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80C3608C  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80C36090  B3 FD 09 A2 */	sth r31, 0x9a2(r29)
/* 80C36094  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 80C36098  FC 40 F8 90 */	fmr f2, f31
/* 80C3609C  4B 63 15 D8 */	b cM_atan2s__Fff
/* 80C360A0  7C 03 00 D0 */	neg r0, r3
/* 80C360A4  B0 1D 09 9E */	sth r0, 0x99e(r29)
/* 80C360A8  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 80C360AC  C0 41 00 5C */	lfs f2, 0x5c(r1)
/* 80C360B0  4B 63 15 C4 */	b cM_atan2s__Fff
/* 80C360B4  B0 7D 09 9A */	sth r3, 0x99a(r29)
/* 80C360B8  48 00 00 10 */	b lbl_80C360C8
lbl_80C360BC:
/* 80C360BC  A8 7D 09 90 */	lha r3, 0x990(r29)
/* 80C360C0  38 03 01 00 */	addi r0, r3, 0x100
/* 80C360C4  B0 1D 09 90 */	sth r0, 0x990(r29)
lbl_80C360C8:
/* 80C360C8  3C 60 80 C4 */	lis r3, __vt__8cM3dGPla@ha
/* 80C360CC  38 03 85 A4 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80C360D0  90 01 00 68 */	stw r0, 0x68(r1)
/* 80C360D4  48 00 00 10 */	b lbl_80C360E4
lbl_80C360D8:
/* 80C360D8  A8 7D 09 90 */	lha r3, 0x990(r29)
/* 80C360DC  38 03 01 00 */	addi r0, r3, 0x100
/* 80C360E0  B0 1D 09 90 */	sth r0, 0x990(r29)
lbl_80C360E4:
/* 80C360E4  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80C360E8  A8 9D 09 90 */	lha r4, 0x990(r29)
/* 80C360EC  38 A0 00 10 */	li r5, 0x10
/* 80C360F0  38 C0 00 50 */	li r6, 0x50
/* 80C360F4  4B 63 A5 14 */	b cLib_addCalcAngleS2__FPssss
/* 80C360F8  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80C360FC  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80C36100  38 61 00 6C */	addi r3, r1, 0x6c
/* 80C36104  38 80 FF FF */	li r4, -1
/* 80C36108  4B 44 1B D4 */	b __dt__11dBgS_LinChkFv
/* 80C3610C  38 61 00 DC */	addi r3, r1, 0xdc
/* 80C36110  38 80 FF FF */	li r4, -1
/* 80C36114  4B 44 1B C8 */	b __dt__11dBgS_LinChkFv
/* 80C36118  E3 E1 01 68 */	psq_l f31, 360(r1), 0, 0 /* qr0 */
/* 80C3611C  CB E1 01 60 */	lfd f31, 0x160(r1)
/* 80C36120  39 61 01 60 */	addi r11, r1, 0x160
/* 80C36124  4B 72 C1 04 */	b _restgpr_29
/* 80C36128  80 01 01 74 */	lwz r0, 0x174(r1)
/* 80C3612C  7C 08 03 A6 */	mtlr r0
/* 80C36130  38 21 01 70 */	addi r1, r1, 0x170
/* 80C36134  4E 80 00 20 */	blr 
