lbl_80BA2CA4:
/* 80BA2CA4  94 21 FE 40 */	stwu r1, -0x1c0(r1)
/* 80BA2CA8  7C 08 02 A6 */	mflr r0
/* 80BA2CAC  90 01 01 C4 */	stw r0, 0x1c4(r1)
/* 80BA2CB0  39 61 01 C0 */	addi r11, r1, 0x1c0
/* 80BA2CB4  4B 7B F5 28 */	b _savegpr_29
/* 80BA2CB8  7C 7E 1B 78 */	mr r30, r3
/* 80BA2CBC  3C 60 80 BA */	lis r3, lit_3776@ha
/* 80BA2CC0  3B E3 54 08 */	addi r31, r3, lit_3776@l
/* 80BA2CC4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80BA2CC8  C0 7E 05 2C */	lfs f3, 0x52c(r30)
/* 80BA2CCC  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80BA2CD0  C0 5F 00 6C */	lfs f2, 0x6c(r31)
/* 80BA2CD4  D0 41 00 94 */	stfs f2, 0x94(r1)
/* 80BA2CD8  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80BA2CDC  D0 21 00 98 */	stfs f1, 0x98(r1)
/* 80BA2CE0  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80BA2CE4  D0 41 00 88 */	stfs f2, 0x88(r1)
/* 80BA2CE8  D0 41 00 8C */	stfs f2, 0x8c(r1)
/* 80BA2CEC  D0 41 00 90 */	stfs f2, 0x90(r1)
/* 80BA2CF0  D0 41 00 7C */	stfs f2, 0x7c(r1)
/* 80BA2CF4  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80BA2CF8  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80BA2CFC  D0 41 00 84 */	stfs f2, 0x84(r1)
/* 80BA2D00  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 80BA2D04  D0 41 00 74 */	stfs f2, 0x74(r1)
/* 80BA2D08  D0 41 00 78 */	stfs f2, 0x78(r1)
/* 80BA2D0C  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 80BA2D10  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80BA2D14  D0 61 00 6C */	stfs f3, 0x6c(r1)
/* 80BA2D18  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 80BA2D1C  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 80BA2D20  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 80BA2D24  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 80BA2D28  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80BA2D2C  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 80BA2D30  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80BA2D34  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 80BA2D38  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 80BA2D3C  38 61 01 38 */	addi r3, r1, 0x138
/* 80BA2D40  4B 4D 4F 28 */	b __ct__11dBgS_LinChkFv
/* 80BA2D44  38 61 00 C8 */	addi r3, r1, 0xc8
/* 80BA2D48  4B 4D 4F 20 */	b __ct__11dBgS_LinChkFv
/* 80BA2D4C  38 61 01 90 */	addi r3, r1, 0x190
/* 80BA2D50  4B 4D 61 18 */	b SetObj__16dBgS_PolyPassChkFv
/* 80BA2D54  38 61 01 20 */	addi r3, r1, 0x120
/* 80BA2D58  4B 4D 61 10 */	b SetObj__16dBgS_PolyPassChkFv
/* 80BA2D5C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80BA2D60  4B 46 A0 04 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80BA2D64  38 7E 05 FE */	addi r3, r30, 0x5fe
/* 80BA2D68  4B 46 A1 DC */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80BA2D6C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BA2D70  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BA2D74  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80BA2D78  4B 46 96 BC */	b mDoMtx_YrotM__FPA4_fs
/* 80BA2D7C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BA2D80  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BA2D84  38 81 00 94 */	addi r4, r1, 0x94
/* 80BA2D88  38 A1 00 88 */	addi r5, r1, 0x88
/* 80BA2D8C  4B 7A 3F E0 */	b PSMTXMultVec
/* 80BA2D90  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BA2D94  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BA2D98  38 81 00 7C */	addi r4, r1, 0x7c
/* 80BA2D9C  38 A1 00 70 */	addi r5, r1, 0x70
/* 80BA2DA0  4B 7A 3F CC */	b PSMTXMultVec
/* 80BA2DA4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BA2DA8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BA2DAC  38 81 00 64 */	addi r4, r1, 0x64
/* 80BA2DB0  38 A1 00 58 */	addi r5, r1, 0x58
/* 80BA2DB4  4B 7A 3F B8 */	b PSMTXMultVec
/* 80BA2DB8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BA2DBC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BA2DC0  38 81 00 4C */	addi r4, r1, 0x4c
/* 80BA2DC4  38 A1 00 40 */	addi r5, r1, 0x40
/* 80BA2DC8  4B 7A 3F A4 */	b PSMTXMultVec
/* 80BA2DCC  38 61 01 38 */	addi r3, r1, 0x138
/* 80BA2DD0  38 81 00 70 */	addi r4, r1, 0x70
/* 80BA2DD4  38 A1 00 88 */	addi r5, r1, 0x88
/* 80BA2DD8  38 C0 00 00 */	li r6, 0
/* 80BA2DDC  4B 4D 4F 88 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80BA2DE0  38 61 00 C8 */	addi r3, r1, 0xc8
/* 80BA2DE4  38 81 00 58 */	addi r4, r1, 0x58
/* 80BA2DE8  38 A1 00 40 */	addi r5, r1, 0x40
/* 80BA2DEC  38 C0 00 00 */	li r6, 0
/* 80BA2DF0  4B 4D 4F 74 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80BA2DF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BA2DF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BA2DFC  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80BA2E00  7F A3 EB 78 */	mr r3, r29
/* 80BA2E04  38 81 01 38 */	addi r4, r1, 0x138
/* 80BA2E08  4B 4D 15 AC */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80BA2E0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BA2E10  41 82 01 B0 */	beq lbl_80BA2FC0
/* 80BA2E14  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80BA2E18  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80BA2E1C  3C 60 80 BA */	lis r3, __vt__8cM3dGPla@ha
/* 80BA2E20  38 03 55 B4 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80BA2E24  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80BA2E28  7F A3 EB 78 */	mr r3, r29
/* 80BA2E2C  38 81 01 4C */	addi r4, r1, 0x14c
/* 80BA2E30  38 A1 00 B4 */	addi r5, r1, 0xb4
/* 80BA2E34  4B 4D 19 10 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80BA2E38  C0 21 00 B4 */	lfs f1, 0xb4(r1)
/* 80BA2E3C  C0 41 00 BC */	lfs f2, 0xbc(r1)
/* 80BA2E40  4B 6C 48 34 */	b cM_atan2s__Fff
/* 80BA2E44  7C 7D 1B 78 */	mr r29, r3
/* 80BA2E48  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80BA2E4C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80BA2E50  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80BA2E54  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80BA2E58  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80BA2E5C  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 80BA2E60  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80BA2E64  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 80BA2E68  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80BA2E6C  38 61 00 34 */	addi r3, r1, 0x34
/* 80BA2E70  38 81 00 28 */	addi r4, r1, 0x28
/* 80BA2E74  4B 7A 45 28 */	b PSVECSquareDistance
/* 80BA2E78  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80BA2E7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BA2E80  40 81 00 58 */	ble lbl_80BA2ED8
/* 80BA2E84  FC 00 08 34 */	frsqrte f0, f1
/* 80BA2E88  C8 9F 00 88 */	lfd f4, 0x88(r31)
/* 80BA2E8C  FC 44 00 32 */	fmul f2, f4, f0
/* 80BA2E90  C8 7F 00 90 */	lfd f3, 0x90(r31)
/* 80BA2E94  FC 00 00 32 */	fmul f0, f0, f0
/* 80BA2E98  FC 01 00 32 */	fmul f0, f1, f0
/* 80BA2E9C  FC 03 00 28 */	fsub f0, f3, f0
/* 80BA2EA0  FC 02 00 32 */	fmul f0, f2, f0
/* 80BA2EA4  FC 44 00 32 */	fmul f2, f4, f0
/* 80BA2EA8  FC 00 00 32 */	fmul f0, f0, f0
/* 80BA2EAC  FC 01 00 32 */	fmul f0, f1, f0
/* 80BA2EB0  FC 03 00 28 */	fsub f0, f3, f0
/* 80BA2EB4  FC 02 00 32 */	fmul f0, f2, f0
/* 80BA2EB8  FC 44 00 32 */	fmul f2, f4, f0
/* 80BA2EBC  FC 00 00 32 */	fmul f0, f0, f0
/* 80BA2EC0  FC 01 00 32 */	fmul f0, f1, f0
/* 80BA2EC4  FC 03 00 28 */	fsub f0, f3, f0
/* 80BA2EC8  FC 02 00 32 */	fmul f0, f2, f0
/* 80BA2ECC  FC 41 00 32 */	fmul f2, f1, f0
/* 80BA2ED0  FC 40 10 18 */	frsp f2, f2
/* 80BA2ED4  48 00 00 90 */	b lbl_80BA2F64
lbl_80BA2ED8:
/* 80BA2ED8  C8 1F 00 98 */	lfd f0, 0x98(r31)
/* 80BA2EDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BA2EE0  40 80 00 10 */	bge lbl_80BA2EF0
/* 80BA2EE4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BA2EE8  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80BA2EEC  48 00 00 78 */	b lbl_80BA2F64
lbl_80BA2EF0:
/* 80BA2EF0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80BA2EF4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80BA2EF8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BA2EFC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BA2F00  7C 03 00 00 */	cmpw r3, r0
/* 80BA2F04  41 82 00 14 */	beq lbl_80BA2F18
/* 80BA2F08  40 80 00 40 */	bge lbl_80BA2F48
/* 80BA2F0C  2C 03 00 00 */	cmpwi r3, 0
/* 80BA2F10  41 82 00 20 */	beq lbl_80BA2F30
/* 80BA2F14  48 00 00 34 */	b lbl_80BA2F48
lbl_80BA2F18:
/* 80BA2F18  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BA2F1C  41 82 00 0C */	beq lbl_80BA2F28
/* 80BA2F20  38 00 00 01 */	li r0, 1
/* 80BA2F24  48 00 00 28 */	b lbl_80BA2F4C
lbl_80BA2F28:
/* 80BA2F28  38 00 00 02 */	li r0, 2
/* 80BA2F2C  48 00 00 20 */	b lbl_80BA2F4C
lbl_80BA2F30:
/* 80BA2F30  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BA2F34  41 82 00 0C */	beq lbl_80BA2F40
/* 80BA2F38  38 00 00 05 */	li r0, 5
/* 80BA2F3C  48 00 00 10 */	b lbl_80BA2F4C
lbl_80BA2F40:
/* 80BA2F40  38 00 00 03 */	li r0, 3
/* 80BA2F44  48 00 00 08 */	b lbl_80BA2F4C
lbl_80BA2F48:
/* 80BA2F48  38 00 00 04 */	li r0, 4
lbl_80BA2F4C:
/* 80BA2F4C  2C 00 00 01 */	cmpwi r0, 1
/* 80BA2F50  40 82 00 10 */	bne lbl_80BA2F60
/* 80BA2F54  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BA2F58  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80BA2F5C  48 00 00 08 */	b lbl_80BA2F64
lbl_80BA2F60:
/* 80BA2F60  FC 40 08 90 */	fmr f2, f1
lbl_80BA2F64:
/* 80BA2F64  C0 01 01 68 */	lfs f0, 0x168(r1)
/* 80BA2F68  D0 1E 06 14 */	stfs f0, 0x614(r30)
/* 80BA2F6C  C0 01 01 6C */	lfs f0, 0x16c(r1)
/* 80BA2F70  D0 1E 06 18 */	stfs f0, 0x618(r30)
/* 80BA2F74  C0 01 01 70 */	lfs f0, 0x170(r1)
/* 80BA2F78  D0 1E 06 1C */	stfs f0, 0x61c(r30)
/* 80BA2F7C  B3 BE 06 0E */	sth r29, 0x60e(r30)
/* 80BA2F80  C0 21 00 B4 */	lfs f1, 0xb4(r1)
/* 80BA2F84  4B 6C 46 F0 */	b cM_atan2s__Fff
/* 80BA2F88  7C 03 00 D0 */	neg r0, r3
/* 80BA2F8C  B0 1E 06 08 */	sth r0, 0x608(r30)
/* 80BA2F90  C0 21 00 BC */	lfs f1, 0xbc(r1)
/* 80BA2F94  C0 41 00 B8 */	lfs f2, 0xb8(r1)
/* 80BA2F98  4B 6C 46 DC */	b cM_atan2s__Fff
/* 80BA2F9C  B0 7E 06 04 */	sth r3, 0x604(r30)
/* 80BA2FA0  C0 21 00 B4 */	lfs f1, 0xb4(r1)
/* 80BA2FA4  C0 41 00 BC */	lfs f2, 0xbc(r1)
/* 80BA2FA8  4B 6C 46 CC */	b cM_atan2s__Fff
/* 80BA2FAC  B0 7E 06 0E */	sth r3, 0x60e(r30)
/* 80BA2FB0  3C 60 80 BA */	lis r3, __vt__8cM3dGPla@ha
/* 80BA2FB4  38 03 55 B4 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80BA2FB8  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80BA2FBC  48 00 01 D0 */	b lbl_80BA318C
lbl_80BA2FC0:
/* 80BA2FC0  7F A3 EB 78 */	mr r3, r29
/* 80BA2FC4  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80BA2FC8  4B 4D 13 EC */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80BA2FCC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BA2FD0  41 82 01 B0 */	beq lbl_80BA3180
/* 80BA2FD4  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80BA2FD8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80BA2FDC  3C 60 80 BA */	lis r3, __vt__8cM3dGPla@ha
/* 80BA2FE0  38 03 55 B4 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80BA2FE4  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 80BA2FE8  7F A3 EB 78 */	mr r3, r29
/* 80BA2FEC  38 81 00 DC */	addi r4, r1, 0xdc
/* 80BA2FF0  38 A1 00 A0 */	addi r5, r1, 0xa0
/* 80BA2FF4  4B 4D 17 50 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80BA2FF8  C0 21 00 A0 */	lfs f1, 0xa0(r1)
/* 80BA2FFC  C0 41 00 A8 */	lfs f2, 0xa8(r1)
/* 80BA3000  4B 6C 46 74 */	b cM_atan2s__Fff
/* 80BA3004  7C 7D 1B 78 */	mr r29, r3
/* 80BA3008  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80BA300C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BA3010  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80BA3014  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80BA3018  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BA301C  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 80BA3020  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BA3024  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 80BA3028  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BA302C  38 61 00 1C */	addi r3, r1, 0x1c
/* 80BA3030  38 81 00 10 */	addi r4, r1, 0x10
/* 80BA3034  4B 7A 43 68 */	b PSVECSquareDistance
/* 80BA3038  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80BA303C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BA3040  40 81 00 58 */	ble lbl_80BA3098
/* 80BA3044  FC 00 08 34 */	frsqrte f0, f1
/* 80BA3048  C8 9F 00 88 */	lfd f4, 0x88(r31)
/* 80BA304C  FC 44 00 32 */	fmul f2, f4, f0
/* 80BA3050  C8 7F 00 90 */	lfd f3, 0x90(r31)
/* 80BA3054  FC 00 00 32 */	fmul f0, f0, f0
/* 80BA3058  FC 01 00 32 */	fmul f0, f1, f0
/* 80BA305C  FC 03 00 28 */	fsub f0, f3, f0
/* 80BA3060  FC 02 00 32 */	fmul f0, f2, f0
/* 80BA3064  FC 44 00 32 */	fmul f2, f4, f0
/* 80BA3068  FC 00 00 32 */	fmul f0, f0, f0
/* 80BA306C  FC 01 00 32 */	fmul f0, f1, f0
/* 80BA3070  FC 03 00 28 */	fsub f0, f3, f0
/* 80BA3074  FC 02 00 32 */	fmul f0, f2, f0
/* 80BA3078  FC 44 00 32 */	fmul f2, f4, f0
/* 80BA307C  FC 00 00 32 */	fmul f0, f0, f0
/* 80BA3080  FC 01 00 32 */	fmul f0, f1, f0
/* 80BA3084  FC 03 00 28 */	fsub f0, f3, f0
/* 80BA3088  FC 02 00 32 */	fmul f0, f2, f0
/* 80BA308C  FC 41 00 32 */	fmul f2, f1, f0
/* 80BA3090  FC 40 10 18 */	frsp f2, f2
/* 80BA3094  48 00 00 90 */	b lbl_80BA3124
lbl_80BA3098:
/* 80BA3098  C8 1F 00 98 */	lfd f0, 0x98(r31)
/* 80BA309C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BA30A0  40 80 00 10 */	bge lbl_80BA30B0
/* 80BA30A4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BA30A8  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80BA30AC  48 00 00 78 */	b lbl_80BA3124
lbl_80BA30B0:
/* 80BA30B0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BA30B4  80 81 00 08 */	lwz r4, 8(r1)
/* 80BA30B8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BA30BC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BA30C0  7C 03 00 00 */	cmpw r3, r0
/* 80BA30C4  41 82 00 14 */	beq lbl_80BA30D8
/* 80BA30C8  40 80 00 40 */	bge lbl_80BA3108
/* 80BA30CC  2C 03 00 00 */	cmpwi r3, 0
/* 80BA30D0  41 82 00 20 */	beq lbl_80BA30F0
/* 80BA30D4  48 00 00 34 */	b lbl_80BA3108
lbl_80BA30D8:
/* 80BA30D8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BA30DC  41 82 00 0C */	beq lbl_80BA30E8
/* 80BA30E0  38 00 00 01 */	li r0, 1
/* 80BA30E4  48 00 00 28 */	b lbl_80BA310C
lbl_80BA30E8:
/* 80BA30E8  38 00 00 02 */	li r0, 2
/* 80BA30EC  48 00 00 20 */	b lbl_80BA310C
lbl_80BA30F0:
/* 80BA30F0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BA30F4  41 82 00 0C */	beq lbl_80BA3100
/* 80BA30F8  38 00 00 05 */	li r0, 5
/* 80BA30FC  48 00 00 10 */	b lbl_80BA310C
lbl_80BA3100:
/* 80BA3100  38 00 00 03 */	li r0, 3
/* 80BA3104  48 00 00 08 */	b lbl_80BA310C
lbl_80BA3108:
/* 80BA3108  38 00 00 04 */	li r0, 4
lbl_80BA310C:
/* 80BA310C  2C 00 00 01 */	cmpwi r0, 1
/* 80BA3110  40 82 00 10 */	bne lbl_80BA3120
/* 80BA3114  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BA3118  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80BA311C  48 00 00 08 */	b lbl_80BA3124
lbl_80BA3120:
/* 80BA3120  FC 40 08 90 */	fmr f2, f1
lbl_80BA3124:
/* 80BA3124  C0 01 00 F8 */	lfs f0, 0xf8(r1)
/* 80BA3128  D0 1E 06 14 */	stfs f0, 0x614(r30)
/* 80BA312C  C0 01 00 FC */	lfs f0, 0xfc(r1)
/* 80BA3130  D0 1E 06 18 */	stfs f0, 0x618(r30)
/* 80BA3134  C0 01 01 00 */	lfs f0, 0x100(r1)
/* 80BA3138  D0 1E 06 1C */	stfs f0, 0x61c(r30)
/* 80BA313C  B3 BE 06 0E */	sth r29, 0x60e(r30)
/* 80BA3140  C0 21 00 A0 */	lfs f1, 0xa0(r1)
/* 80BA3144  4B 6C 45 30 */	b cM_atan2s__Fff
/* 80BA3148  7C 03 00 D0 */	neg r0, r3
/* 80BA314C  B0 1E 06 08 */	sth r0, 0x608(r30)
/* 80BA3150  C0 21 00 A8 */	lfs f1, 0xa8(r1)
/* 80BA3154  C0 41 00 A4 */	lfs f2, 0xa4(r1)
/* 80BA3158  4B 6C 45 1C */	b cM_atan2s__Fff
/* 80BA315C  B0 7E 06 04 */	sth r3, 0x604(r30)
/* 80BA3160  C0 21 00 A0 */	lfs f1, 0xa0(r1)
/* 80BA3164  C0 41 00 A8 */	lfs f2, 0xa8(r1)
/* 80BA3168  4B 6C 45 0C */	b cM_atan2s__Fff
/* 80BA316C  B0 7E 06 0E */	sth r3, 0x60e(r30)
/* 80BA3170  3C 60 80 BA */	lis r3, __vt__8cM3dGPla@ha
/* 80BA3174  38 03 55 B4 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80BA3178  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 80BA317C  48 00 00 10 */	b lbl_80BA318C
lbl_80BA3180:
/* 80BA3180  A8 7E 05 F4 */	lha r3, 0x5f4(r30)
/* 80BA3184  38 03 01 00 */	addi r0, r3, 0x100
/* 80BA3188  B0 1E 05 F4 */	sth r0, 0x5f4(r30)
lbl_80BA318C:
/* 80BA318C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80BA3190  38 9E 06 14 */	addi r4, r30, 0x614
/* 80BA3194  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80BA3198  4B 6C D6 14 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 80BA319C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BA31A0  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 80BA31A4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80BA31A8  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80BA31AC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80BA31B0  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 80BA31B4  38 7E 05 FE */	addi r3, r30, 0x5fe
/* 80BA31B8  A8 9E 06 04 */	lha r4, 0x604(r30)
/* 80BA31BC  38 A0 00 05 */	li r5, 5
/* 80BA31C0  38 C0 02 00 */	li r6, 0x200
/* 80BA31C4  4B 6C D4 44 */	b cLib_addCalcAngleS2__FPssss
/* 80BA31C8  38 7E 06 02 */	addi r3, r30, 0x602
/* 80BA31CC  A8 9E 06 08 */	lha r4, 0x608(r30)
/* 80BA31D0  38 A0 00 05 */	li r5, 5
/* 80BA31D4  38 C0 02 00 */	li r6, 0x200
/* 80BA31D8  4B 6C D4 30 */	b cLib_addCalcAngleS2__FPssss
/* 80BA31DC  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80BA31E0  A8 9E 05 F4 */	lha r4, 0x5f4(r30)
/* 80BA31E4  38 A0 00 10 */	li r5, 0x10
/* 80BA31E8  38 C0 01 00 */	li r6, 0x100
/* 80BA31EC  4B 6C D4 1C */	b cLib_addCalcAngleS2__FPssss
/* 80BA31F0  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80BA31F4  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80BA31F8  38 61 00 C8 */	addi r3, r1, 0xc8
/* 80BA31FC  38 80 FF FF */	li r4, -1
/* 80BA3200  4B 4D 4A DC */	b __dt__11dBgS_LinChkFv
/* 80BA3204  38 61 01 38 */	addi r3, r1, 0x138
/* 80BA3208  38 80 FF FF */	li r4, -1
/* 80BA320C  4B 4D 4A D0 */	b __dt__11dBgS_LinChkFv
/* 80BA3210  39 61 01 C0 */	addi r11, r1, 0x1c0
/* 80BA3214  4B 7B F0 14 */	b _restgpr_29
/* 80BA3218  80 01 01 C4 */	lwz r0, 0x1c4(r1)
/* 80BA321C  7C 08 03 A6 */	mtlr r0
/* 80BA3220  38 21 01 C0 */	addi r1, r1, 0x1c0
/* 80BA3224  4E 80 00 20 */	blr 
