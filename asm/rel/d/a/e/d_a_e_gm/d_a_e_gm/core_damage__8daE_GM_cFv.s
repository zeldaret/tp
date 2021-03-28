lbl_806D2DD4:
/* 806D2DD4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806D2DD8  7C 08 02 A6 */	mflr r0
/* 806D2DDC  90 01 00 44 */	stw r0, 0x44(r1)
/* 806D2DE0  39 61 00 40 */	addi r11, r1, 0x40
/* 806D2DE4  4B C8 F3 F8 */	b _savegpr_29
/* 806D2DE8  7C 7D 1B 78 */	mr r29, r3
/* 806D2DEC  3C 60 80 6D */	lis r3, lit_3906@ha
/* 806D2DF0  3B E3 79 A0 */	addi r31, r3, lit_3906@l
/* 806D2DF4  80 1D 0A 3C */	lwz r0, 0xa3c(r29)
/* 806D2DF8  2C 00 00 00 */	cmpwi r0, 0
/* 806D2DFC  40 82 01 9C */	bne lbl_806D2F98
/* 806D2E00  3B C0 00 00 */	li r30, 0
/* 806D2E04  38 00 00 02 */	li r0, 2
/* 806D2E08  98 1D 0A 69 */	stb r0, 0xa69(r29)
/* 806D2E0C  3C 60 80 6D */	lis r3, stringBase0@ha
/* 806D2E10  38 63 7A F0 */	addi r3, r3, stringBase0@l
/* 806D2E14  38 63 00 05 */	addi r3, r3, 5
/* 806D2E18  38 80 00 04 */	li r4, 4
/* 806D2E1C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806D2E20  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806D2E24  3C A5 00 02 */	addis r5, r5, 2
/* 806D2E28  38 C0 00 80 */	li r6, 0x80
/* 806D2E2C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806D2E30  4B 96 94 BC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806D2E34  7C 64 1B 78 */	mr r4, r3
/* 806D2E38  80 7D 09 64 */	lwz r3, 0x964(r29)
/* 806D2E3C  38 A0 00 00 */	li r5, 0
/* 806D2E40  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 806D2E44  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806D2E48  C0 7F 00 04 */	lfs f3, 4(r31)
/* 806D2E4C  C0 9F 00 44 */	lfs f4, 0x44(r31)
/* 806D2E50  4B 93 E0 20 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806D2E54  88 7D 0A 74 */	lbz r3, 0xa74(r29)
/* 806D2E58  38 03 FF FF */	addi r0, r3, -1
/* 806D2E5C  98 1D 0A 74 */	stb r0, 0xa74(r29)
/* 806D2E60  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 806D2E64  2C 00 00 00 */	cmpwi r0, 0
/* 806D2E68  40 82 00 10 */	bne lbl_806D2E78
/* 806D2E6C  A8 1D 04 E0 */	lha r0, 0x4e0(r29)
/* 806D2E70  2C 00 00 00 */	cmpwi r0, 0
/* 806D2E74  41 82 00 14 */	beq lbl_806D2E88
lbl_806D2E78:
/* 806D2E78  3B C0 00 01 */	li r30, 1
/* 806D2E7C  38 00 00 00 */	li r0, 0
/* 806D2E80  B0 1D 0A 20 */	sth r0, 0xa20(r29)
/* 806D2E84  B0 1D 0A 1C */	sth r0, 0xa1c(r29)
lbl_806D2E88:
/* 806D2E88  88 1D 0A 74 */	lbz r0, 0xa74(r29)
/* 806D2E8C  28 00 00 00 */	cmplwi r0, 0
/* 806D2E90  41 82 00 9C */	beq lbl_806D2F2C
/* 806D2E94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806D2E98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806D2E9C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806D2EA0  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 806D2EA4  41 82 00 2C */	beq lbl_806D2ED0
/* 806D2EA8  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 806D2EAC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806D2EB0  4B B9 DD 54 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 806D2EB4  B0 7D 0A 1E */	sth r3, 0xa1e(r29)
/* 806D2EB8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806D2EBC  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 806D2EC0  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 806D2EC4  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 806D2EC8  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 806D2ECC  48 00 00 1C */	b lbl_806D2EE8
lbl_806D2ED0:
/* 806D2ED0  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 806D2ED4  B0 1D 0A 1E */	sth r0, 0xa1e(r29)
/* 806D2ED8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806D2EDC  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 806D2EE0  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 806D2EE4  D0 1D 05 00 */	stfs f0, 0x500(r29)
lbl_806D2EE8:
/* 806D2EE8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704AE@ha */
/* 806D2EEC  38 03 04 AE */	addi r0, r3, 0x04AE /* 0x000704AE@l */
/* 806D2EF0  90 01 00 0C */	stw r0, 0xc(r1)
/* 806D2EF4  38 7D 09 6C */	addi r3, r29, 0x96c
/* 806D2EF8  38 81 00 0C */	addi r4, r1, 0xc
/* 806D2EFC  38 A0 FF FF */	li r5, -1
/* 806D2F00  81 9D 09 6C */	lwz r12, 0x96c(r29)
/* 806D2F04  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806D2F08  7D 89 03 A6 */	mtctr r12
/* 806D2F0C  4E 80 04 21 */	bctrl 
/* 806D2F10  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 806D2F14  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 806D2F18  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 806D2F1C  D0 1D 05 34 */	stfs f0, 0x534(r29)
/* 806D2F20  38 00 00 03 */	li r0, 3
/* 806D2F24  90 1D 0A 3C */	stw r0, 0xa3c(r29)
/* 806D2F28  48 00 03 C8 */	b lbl_806D32F0
lbl_806D2F2C:
/* 806D2F2C  38 00 00 01 */	li r0, 1
/* 806D2F30  98 1D 0A 68 */	stb r0, 0xa68(r29)
/* 806D2F34  3C 60 80 6D */	lis r3, struct_806D7F1C+0x3@ha
/* 806D2F38  98 03 7F 1F */	stb r0, struct_806D7F1C+0x3@l(r3)
/* 806D2F3C  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 806D2F40  41 82 00 1C */	beq lbl_806D2F5C
/* 806D2F44  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806D2F48  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 806D2F4C  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 806D2F50  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 806D2F54  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 806D2F58  48 00 00 14 */	b lbl_806D2F6C
lbl_806D2F5C:
/* 806D2F5C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806D2F60  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 806D2F64  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 806D2F68  D0 1D 05 00 */	stfs f0, 0x500(r29)
lbl_806D2F6C:
/* 806D2F6C  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 806D2F70  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 806D2F74  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 806D2F78  D0 1D 05 34 */	stfs f0, 0x534(r29)
/* 806D2F7C  38 00 00 00 */	li r0, 0
/* 806D2F80  90 1D 08 30 */	stw r0, 0x830(r29)
/* 806D2F84  90 1D 08 18 */	stw r0, 0x818(r29)
/* 806D2F88  80 7D 0A 3C */	lwz r3, 0xa3c(r29)
/* 806D2F8C  38 03 00 01 */	addi r0, r3, 1
/* 806D2F90  90 1D 0A 3C */	stw r0, 0xa3c(r29)
/* 806D2F94  48 00 03 5C */	b lbl_806D32F0
lbl_806D2F98:
/* 806D2F98  2C 00 FF FF */	cmpwi r0, -1
/* 806D2F9C  41 82 03 54 */	beq lbl_806D32F0
/* 806D2FA0  2C 00 00 01 */	cmpwi r0, 1
/* 806D2FA4  40 82 01 4C */	bne lbl_806D30F0
/* 806D2FA8  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 806D2FAC  A8 9D 0A 1C */	lha r4, 0xa1c(r29)
/* 806D2FB0  38 A0 00 04 */	li r5, 4
/* 806D2FB4  38 C0 20 00 */	li r6, 0x2000
/* 806D2FB8  38 E0 04 00 */	li r7, 0x400
/* 806D2FBC  4B B9 D5 84 */	b cLib_addCalcAngleS__FPsssss
/* 806D2FC0  38 7D 04 E0 */	addi r3, r29, 0x4e0
/* 806D2FC4  A8 9D 0A 20 */	lha r4, 0xa20(r29)
/* 806D2FC8  38 A0 00 04 */	li r5, 4
/* 806D2FCC  38 C0 20 00 */	li r6, 0x2000
/* 806D2FD0  38 E0 04 00 */	li r7, 0x400
/* 806D2FD4  4B B9 D5 6C */	b cLib_addCalcAngleS__FPsssss
/* 806D2FD8  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 806D2FDC  C0 1D 05 30 */	lfs f0, 0x530(r29)
/* 806D2FE0  EC 01 00 2A */	fadds f0, f1, f0
/* 806D2FE4  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 806D2FE8  C0 3D 05 34 */	lfs f1, 0x534(r29)
/* 806D2FEC  C0 1D 04 FC */	lfs f0, 0x4fc(r29)
/* 806D2FF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806D2FF4  40 81 00 08 */	ble lbl_806D2FFC
/* 806D2FF8  D0 3D 04 FC */	stfs f1, 0x4fc(r29)
lbl_806D2FFC:
/* 806D2FFC  7F A3 EB 78 */	mr r3, r29
/* 806D3000  38 9D 07 CC */	addi r4, r29, 0x7cc
/* 806D3004  4B 94 76 5C */	b fopAcM_posMove__FP10fopAc_ac_cPC4cXyz
/* 806D3008  38 7D 05 F4 */	addi r3, r29, 0x5f4
/* 806D300C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806D3010  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806D3014  38 84 0F 38 */	addi r4, r4, 0xf38
/* 806D3018  4B 9A 3A 94 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 806D301C  80 1D 06 20 */	lwz r0, 0x620(r29)
/* 806D3020  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806D3024  41 82 02 CC */	beq lbl_806D32F0
/* 806D3028  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 806D302C  2C 00 00 00 */	cmpwi r0, 0
/* 806D3030  40 82 02 C0 */	bne lbl_806D32F0
/* 806D3034  A8 1D 04 E0 */	lha r0, 0x4e0(r29)
/* 806D3038  2C 00 00 00 */	cmpwi r0, 0
/* 806D303C  40 82 02 B4 */	bne lbl_806D32F0
/* 806D3040  80 7D 09 64 */	lwz r3, 0x964(r29)
/* 806D3044  38 80 00 01 */	li r4, 1
/* 806D3048  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806D304C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806D3050  40 82 00 18 */	bne lbl_806D3068
/* 806D3054  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806D3058  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806D305C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806D3060  41 82 00 08 */	beq lbl_806D3068
/* 806D3064  38 80 00 00 */	li r4, 0
lbl_806D3068:
/* 806D3068  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806D306C  41 82 02 84 */	beq lbl_806D32F0
/* 806D3070  3C 60 80 6D */	lis r3, stringBase0@ha
/* 806D3074  38 63 7A F0 */	addi r3, r3, stringBase0@l
/* 806D3078  38 63 00 05 */	addi r3, r3, 5
/* 806D307C  38 80 00 05 */	li r4, 5
/* 806D3080  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806D3084  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806D3088  3C A5 00 02 */	addis r5, r5, 2
/* 806D308C  38 C0 00 80 */	li r6, 0x80
/* 806D3090  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806D3094  4B 96 92 58 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806D3098  7C 64 1B 78 */	mr r4, r3
/* 806D309C  80 7D 09 64 */	lwz r3, 0x964(r29)
/* 806D30A0  38 A0 00 00 */	li r5, 0
/* 806D30A4  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 806D30A8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806D30AC  C0 7F 00 04 */	lfs f3, 4(r31)
/* 806D30B0  C0 9F 00 44 */	lfs f4, 0x44(r31)
/* 806D30B4  4B 93 DD BC */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806D30B8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704AF@ha */
/* 806D30BC  38 03 04 AF */	addi r0, r3, 0x04AF /* 0x000704AF@l */
/* 806D30C0  90 01 00 08 */	stw r0, 8(r1)
/* 806D30C4  38 7D 09 6C */	addi r3, r29, 0x96c
/* 806D30C8  38 81 00 08 */	addi r4, r1, 8
/* 806D30CC  38 A0 FF FF */	li r5, -1
/* 806D30D0  81 9D 09 6C */	lwz r12, 0x96c(r29)
/* 806D30D4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806D30D8  7D 89 03 A6 */	mtctr r12
/* 806D30DC  4E 80 04 21 */	bctrl 
/* 806D30E0  80 7D 0A 3C */	lwz r3, 0xa3c(r29)
/* 806D30E4  38 03 00 01 */	addi r0, r3, 1
/* 806D30E8  90 1D 0A 3C */	stw r0, 0xa3c(r29)
/* 806D30EC  48 00 02 04 */	b lbl_806D32F0
lbl_806D30F0:
/* 806D30F0  2C 00 00 02 */	cmpwi r0, 2
/* 806D30F4  40 82 00 D0 */	bne lbl_806D31C4
/* 806D30F8  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 806D30FC  C0 1D 05 30 */	lfs f0, 0x530(r29)
/* 806D3100  EC 01 00 2A */	fadds f0, f1, f0
/* 806D3104  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 806D3108  C0 3D 05 34 */	lfs f1, 0x534(r29)
/* 806D310C  C0 1D 04 FC */	lfs f0, 0x4fc(r29)
/* 806D3110  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806D3114  40 81 00 08 */	ble lbl_806D311C
/* 806D3118  D0 3D 04 FC */	stfs f1, 0x4fc(r29)
lbl_806D311C:
/* 806D311C  7F A3 EB 78 */	mr r3, r29
/* 806D3120  38 9D 07 CC */	addi r4, r29, 0x7cc
/* 806D3124  4B 94 75 3C */	b fopAcM_posMove__FP10fopAc_ac_cPC4cXyz
/* 806D3128  38 7D 05 F4 */	addi r3, r29, 0x5f4
/* 806D312C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806D3130  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806D3134  38 84 0F 38 */	addi r4, r4, 0xf38
/* 806D3138  4B 9A 39 74 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 806D313C  80 7D 09 64 */	lwz r3, 0x964(r29)
/* 806D3140  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 806D3144  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 806D3148  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806D314C  40 81 00 18 */	ble lbl_806D3164
/* 806D3150  38 7D 0A 48 */	addi r3, r29, 0xa48
/* 806D3154  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 806D3158  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806D315C  C0 7F 00 A0 */	lfs f3, 0xa0(r31)
/* 806D3160  4B B9 C8 DC */	b cLib_addCalc2__FPffff
lbl_806D3164:
/* 806D3164  80 7D 09 64 */	lwz r3, 0x964(r29)
/* 806D3168  38 80 00 01 */	li r4, 1
/* 806D316C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806D3170  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806D3174  40 82 00 18 */	bne lbl_806D318C
/* 806D3178  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806D317C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806D3180  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806D3184  41 82 00 08 */	beq lbl_806D318C
/* 806D3188  38 80 00 00 */	li r4, 0
lbl_806D318C:
/* 806D318C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806D3190  41 82 01 60 */	beq lbl_806D32F0
/* 806D3194  3C 60 80 6D */	lis r3, lit_4706@ha
/* 806D3198  38 83 7C 28 */	addi r4, r3, lit_4706@l
/* 806D319C  80 64 00 00 */	lwz r3, 0(r4)
/* 806D31A0  80 04 00 04 */	lwz r0, 4(r4)
/* 806D31A4  90 61 00 1C */	stw r3, 0x1c(r1)
/* 806D31A8  90 01 00 20 */	stw r0, 0x20(r1)
/* 806D31AC  80 04 00 08 */	lwz r0, 8(r4)
/* 806D31B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 806D31B4  7F A3 EB 78 */	mr r3, r29
/* 806D31B8  38 81 00 1C */	addi r4, r1, 0x1c
/* 806D31BC  4B FF E1 0D */	bl setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v
/* 806D31C0  48 00 01 30 */	b lbl_806D32F0
lbl_806D31C4:
/* 806D31C4  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 806D31C8  A8 9D 0A 1C */	lha r4, 0xa1c(r29)
/* 806D31CC  38 A0 00 04 */	li r5, 4
/* 806D31D0  38 C0 10 00 */	li r6, 0x1000
/* 806D31D4  38 E0 04 00 */	li r7, 0x400
/* 806D31D8  4B B9 D3 68 */	b cLib_addCalcAngleS__FPsssss
/* 806D31DC  38 7D 04 DE */	addi r3, r29, 0x4de
/* 806D31E0  A8 9D 0A 1E */	lha r4, 0xa1e(r29)
/* 806D31E4  38 A0 00 04 */	li r5, 4
/* 806D31E8  38 C0 10 00 */	li r6, 0x1000
/* 806D31EC  38 E0 04 00 */	li r7, 0x400
/* 806D31F0  4B B9 D3 50 */	b cLib_addCalcAngleS__FPsssss
/* 806D31F4  38 7D 04 E0 */	addi r3, r29, 0x4e0
/* 806D31F8  A8 9D 0A 20 */	lha r4, 0xa20(r29)
/* 806D31FC  38 A0 00 04 */	li r5, 4
/* 806D3200  38 C0 10 00 */	li r6, 0x1000
/* 806D3204  38 E0 04 00 */	li r7, 0x400
/* 806D3208  4B B9 D3 38 */	b cLib_addCalcAngleS__FPsssss
/* 806D320C  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 806D3210  C0 1D 05 30 */	lfs f0, 0x530(r29)
/* 806D3214  EC 01 00 2A */	fadds f0, f1, f0
/* 806D3218  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 806D321C  C0 3D 05 34 */	lfs f1, 0x534(r29)
/* 806D3220  C0 1D 04 FC */	lfs f0, 0x4fc(r29)
/* 806D3224  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806D3228  40 81 00 08 */	ble lbl_806D3230
/* 806D322C  D0 3D 04 FC */	stfs f1, 0x4fc(r29)
lbl_806D3230:
/* 806D3230  7F A3 EB 78 */	mr r3, r29
/* 806D3234  38 9D 07 CC */	addi r4, r29, 0x7cc
/* 806D3238  4B 94 74 28 */	b fopAcM_posMove__FP10fopAc_ac_cPC4cXyz
/* 806D323C  38 7D 05 F4 */	addi r3, r29, 0x5f4
/* 806D3240  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806D3244  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806D3248  38 84 0F 38 */	addi r4, r4, 0xf38
/* 806D324C  4B 9A 38 60 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 806D3250  80 1D 06 20 */	lwz r0, 0x620(r29)
/* 806D3254  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806D3258  41 82 00 20 */	beq lbl_806D3278
/* 806D325C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806D3260  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 806D3264  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 806D3268  C0 1F 00 08 */	lfs f0, 8(r31)
/* 806D326C  80 7D 09 64 */	lwz r3, 0x964(r29)
/* 806D3270  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 806D3274  48 00 00 20 */	b lbl_806D3294
lbl_806D3278:
/* 806D3278  80 7D 09 64 */	lwz r3, 0x964(r29)
/* 806D327C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 806D3280  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 806D3284  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806D3288  40 81 00 0C */	ble lbl_806D3294
/* 806D328C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806D3290  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_806D3294:
/* 806D3294  80 7D 09 64 */	lwz r3, 0x964(r29)
/* 806D3298  38 80 00 01 */	li r4, 1
/* 806D329C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806D32A0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806D32A4  40 82 00 18 */	bne lbl_806D32BC
/* 806D32A8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806D32AC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806D32B0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806D32B4  41 82 00 08 */	beq lbl_806D32BC
/* 806D32B8  38 80 00 00 */	li r4, 0
lbl_806D32BC:
/* 806D32BC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806D32C0  41 82 00 30 */	beq lbl_806D32F0
/* 806D32C4  3C 60 80 6D */	lis r3, lit_4718@ha
/* 806D32C8  38 83 7C 34 */	addi r4, r3, lit_4718@l
/* 806D32CC  80 64 00 00 */	lwz r3, 0(r4)
/* 806D32D0  80 04 00 04 */	lwz r0, 4(r4)
/* 806D32D4  90 61 00 10 */	stw r3, 0x10(r1)
/* 806D32D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D32DC  80 04 00 08 */	lwz r0, 8(r4)
/* 806D32E0  90 01 00 18 */	stw r0, 0x18(r1)
/* 806D32E4  7F A3 EB 78 */	mr r3, r29
/* 806D32E8  38 81 00 10 */	addi r4, r1, 0x10
/* 806D32EC  4B FF DF DD */	bl setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v
lbl_806D32F0:
/* 806D32F0  39 61 00 40 */	addi r11, r1, 0x40
/* 806D32F4  4B C8 EF 34 */	b _restgpr_29
/* 806D32F8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806D32FC  7C 08 03 A6 */	mtlr r0
/* 806D3300  38 21 00 40 */	addi r1, r1, 0x40
/* 806D3304  4E 80 00 20 */	blr 
