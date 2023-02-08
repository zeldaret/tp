lbl_806D398C:
/* 806D398C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 806D3990  7C 08 02 A6 */	mflr r0
/* 806D3994  90 01 00 94 */	stw r0, 0x94(r1)
/* 806D3998  39 61 00 90 */	addi r11, r1, 0x90
/* 806D399C  4B C8 E8 41 */	bl _savegpr_29
/* 806D39A0  7C 7D 1B 78 */	mr r29, r3
/* 806D39A4  3C 60 80 6D */	lis r3, cNullVec__6Z2Calc@ha /* 0x806D7AFC@ha */
/* 806D39A8  3B C3 7A FC */	addi r30, r3, cNullVec__6Z2Calc@l /* 0x806D7AFC@l */
/* 806D39AC  3C 60 80 6D */	lis r3, lit_3906@ha /* 0x806D79A0@ha */
/* 806D39B0  3B E3 79 A0 */	addi r31, r3, lit_3906@l /* 0x806D79A0@l */
/* 806D39B4  80 1D 0A 3C */	lwz r0, 0xa3c(r29)
/* 806D39B8  2C 00 00 00 */	cmpwi r0, 0
/* 806D39BC  40 82 01 0C */	bne lbl_806D3AC8
/* 806D39C0  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 806D39C4  D0 1D 0A 44 */	stfs f0, 0xa44(r29)
/* 806D39C8  38 00 73 00 */	li r0, 0x7300
/* 806D39CC  B0 1D 0A 1C */	sth r0, 0xa1c(r29)
/* 806D39D0  88 1D 0A 69 */	lbz r0, 0xa69(r29)
/* 806D39D4  28 00 00 01 */	cmplwi r0, 1
/* 806D39D8  40 82 00 4C */	bne lbl_806D3A24
/* 806D39DC  3C 60 80 6D */	lis r3, d_a_e_gm__stringBase0@ha /* 0x806D7AF0@ha */
/* 806D39E0  38 63 7A F0 */	addi r3, r3, d_a_e_gm__stringBase0@l /* 0x806D7AF0@l */
/* 806D39E4  38 80 00 06 */	li r4, 6
/* 806D39E8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806D39EC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806D39F0  3C A5 00 02 */	addis r5, r5, 2
/* 806D39F4  38 C0 00 80 */	li r6, 0x80
/* 806D39F8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806D39FC  4B 96 88 F1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806D3A00  7C 64 1B 78 */	mr r4, r3
/* 806D3A04  80 7D 09 64 */	lwz r3, 0x964(r29)
/* 806D3A08  38 A0 00 02 */	li r5, 2
/* 806D3A0C  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 806D3A10  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806D3A14  C0 7F 00 04 */	lfs f3, 4(r31)
/* 806D3A18  C0 9F 00 44 */	lfs f4, 0x44(r31)
/* 806D3A1C  4B 93 D4 55 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806D3A20  48 00 00 64 */	b lbl_806D3A84
lbl_806D3A24:
/* 806D3A24  28 00 00 02 */	cmplwi r0, 2
/* 806D3A28  40 82 00 5C */	bne lbl_806D3A84
/* 806D3A2C  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 806D3A30  D0 1D 0A 44 */	stfs f0, 0xa44(r29)
/* 806D3A34  38 00 60 00 */	li r0, 0x6000
/* 806D3A38  B0 1D 0A 1C */	sth r0, 0xa1c(r29)
/* 806D3A3C  3C 60 80 6D */	lis r3, d_a_e_gm__stringBase0@ha /* 0x806D7AF0@ha */
/* 806D3A40  38 63 7A F0 */	addi r3, r3, d_a_e_gm__stringBase0@l /* 0x806D7AF0@l */
/* 806D3A44  38 63 00 05 */	addi r3, r3, 5
/* 806D3A48  38 80 00 0A */	li r4, 0xa
/* 806D3A4C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806D3A50  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806D3A54  3C A5 00 02 */	addis r5, r5, 2
/* 806D3A58  38 C0 00 80 */	li r6, 0x80
/* 806D3A5C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806D3A60  4B 96 88 8D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806D3A64  7C 64 1B 78 */	mr r4, r3
/* 806D3A68  80 7D 09 64 */	lwz r3, 0x964(r29)
/* 806D3A6C  38 A0 00 02 */	li r5, 2
/* 806D3A70  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 806D3A74  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806D3A78  C0 7F 00 04 */	lfs f3, 4(r31)
/* 806D3A7C  C0 9F 00 44 */	lfs f4, 0x44(r31)
/* 806D3A80  4B 93 D3 F1 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
lbl_806D3A84:
/* 806D3A84  38 00 00 00 */	li r0, 0
/* 806D3A88  90 1D 08 18 */	stw r0, 0x818(r29)
/* 806D3A8C  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 806D3A90  4B B9 3E FD */	bl cM_rndFX__Ff
/* 806D3A94  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 806D3A98  EC 00 08 2A */	fadds f0, f0, f1
/* 806D3A9C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 806D3AA0  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 806D3AA4  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 806D3AA8  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 806D3AAC  D0 1D 05 34 */	stfs f0, 0x534(r29)
/* 806D3AB0  38 00 00 00 */	li r0, 0
/* 806D3AB4  B0 1D 0A 20 */	sth r0, 0xa20(r29)
/* 806D3AB8  80 7D 0A 3C */	lwz r3, 0xa3c(r29)
/* 806D3ABC  38 03 00 01 */	addi r0, r3, 1
/* 806D3AC0  90 1D 0A 3C */	stw r0, 0xa3c(r29)
/* 806D3AC4  48 00 03 E8 */	b lbl_806D3EAC
lbl_806D3AC8:
/* 806D3AC8  2C 00 FF FF */	cmpwi r0, -1
/* 806D3ACC  41 82 03 E0 */	beq lbl_806D3EAC
/* 806D3AD0  2C 00 00 01 */	cmpwi r0, 1
/* 806D3AD4  40 82 01 84 */	bne lbl_806D3C58
/* 806D3AD8  A8 1D 0A 1E */	lha r0, 0xa1e(r29)
/* 806D3ADC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806D3AE0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 806D3AE4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 806D3AE8  7C 23 04 2E */	lfsx f1, r3, r0
/* 806D3AEC  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 806D3AF0  EC 00 00 72 */	fmuls f0, f0, f1
/* 806D3AF4  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 806D3AF8  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 806D3AFC  C0 1D 05 30 */	lfs f0, 0x530(r29)
/* 806D3B00  EC 01 00 2A */	fadds f0, f1, f0
/* 806D3B04  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 806D3B08  C0 1D 04 FC */	lfs f0, 0x4fc(r29)
/* 806D3B0C  C0 3D 05 34 */	lfs f1, 0x534(r29)
/* 806D3B10  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 806D3B14  40 80 00 08 */	bge lbl_806D3B1C
/* 806D3B18  D0 3D 04 FC */	stfs f1, 0x4fc(r29)
lbl_806D3B1C:
/* 806D3B1C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 806D3B20  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 806D3B24  A8 1D 0A 1E */	lha r0, 0xa1e(r29)
/* 806D3B28  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806D3B2C  7C 63 02 14 */	add r3, r3, r0
/* 806D3B30  C0 23 00 04 */	lfs f1, 4(r3)
/* 806D3B34  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 806D3B38  EC 00 00 72 */	fmuls f0, f0, f1
/* 806D3B3C  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 806D3B40  7F A3 EB 78 */	mr r3, r29
/* 806D3B44  38 9D 07 CC */	addi r4, r29, 0x7cc
/* 806D3B48  4B 94 6B 19 */	bl fopAcM_posMove__FP10fopAc_ac_cPC4cXyz
/* 806D3B4C  38 7D 05 F4 */	addi r3, r29, 0x5f4
/* 806D3B50  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806D3B54  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806D3B58  38 84 0F 38 */	addi r4, r4, 0xf38
/* 806D3B5C  4B 9A 2F 51 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 806D3B60  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 806D3B64  A8 9D 0A 1C */	lha r4, 0xa1c(r29)
/* 806D3B68  38 A0 00 08 */	li r5, 8
/* 806D3B6C  38 C0 10 00 */	li r6, 0x1000
/* 806D3B70  38 E0 04 00 */	li r7, 0x400
/* 806D3B74  4B B9 C9 CD */	bl cLib_addCalcAngleS__FPsssss
/* 806D3B78  A8 7D 04 DE */	lha r3, 0x4de(r29)
/* 806D3B7C  38 03 10 00 */	addi r0, r3, 0x1000
/* 806D3B80  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 806D3B84  38 7D 04 E0 */	addi r3, r29, 0x4e0
/* 806D3B88  A8 9D 0A 20 */	lha r4, 0xa20(r29)
/* 806D3B8C  38 A0 00 08 */	li r5, 8
/* 806D3B90  38 C0 10 00 */	li r6, 0x1000
/* 806D3B94  38 E0 04 00 */	li r7, 0x400
/* 806D3B98  4B B9 C9 A9 */	bl cLib_addCalcAngleS__FPsssss
/* 806D3B9C  80 1D 06 20 */	lwz r0, 0x620(r29)
/* 806D3BA0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806D3BA4  41 82 03 08 */	beq lbl_806D3EAC
/* 806D3BA8  3C 60 80 6D */	lis r3, s_obj_sub2__FPvPv@ha /* 0x806D14E0@ha */
/* 806D3BAC  38 63 14 E0 */	addi r3, r3, s_obj_sub2__FPvPv@l /* 0x806D14E0@l */
/* 806D3BB0  7F A4 EB 78 */	mr r4, r29
/* 806D3BB4  4B 94 D7 85 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 806D3BB8  28 03 00 00 */	cmplwi r3, 0
/* 806D3BBC  41 82 00 48 */	beq lbl_806D3C04
/* 806D3BC0  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 806D3BC4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806D3BC8  4B B9 D0 3D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 806D3BCC  B0 7D 0A 1E */	sth r3, 0xa1e(r29)
/* 806D3BD0  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 806D3BD4  4B B9 3D B9 */	bl cM_rndFX__Ff
/* 806D3BD8  D0 3D 05 2C */	stfs f1, 0x52c(r29)
/* 806D3BDC  80 7E 01 74 */	lwz r3, 0x174(r30)
/* 806D3BE0  80 1E 01 78 */	lwz r0, 0x178(r30)
/* 806D3BE4  90 61 00 68 */	stw r3, 0x68(r1)
/* 806D3BE8  90 01 00 6C */	stw r0, 0x6c(r1)
/* 806D3BEC  80 1E 01 7C */	lwz r0, 0x17c(r30)
/* 806D3BF0  90 01 00 70 */	stw r0, 0x70(r1)
/* 806D3BF4  7F A3 EB 78 */	mr r3, r29
/* 806D3BF8  38 81 00 68 */	addi r4, r1, 0x68
/* 806D3BFC  4B FF D6 CD */	bl setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v
/* 806D3C00  48 00 02 AC */	b lbl_806D3EAC
lbl_806D3C04:
/* 806D3C04  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806D3C08  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 806D3C0C  88 1D 0A 69 */	lbz r0, 0xa69(r29)
/* 806D3C10  28 00 00 00 */	cmplwi r0, 0
/* 806D3C14  40 82 00 2C */	bne lbl_806D3C40
/* 806D3C18  80 7E 01 80 */	lwz r3, 0x180(r30)
/* 806D3C1C  80 1E 01 84 */	lwz r0, 0x184(r30)
/* 806D3C20  90 61 00 5C */	stw r3, 0x5c(r1)
/* 806D3C24  90 01 00 60 */	stw r0, 0x60(r1)
/* 806D3C28  80 1E 01 88 */	lwz r0, 0x188(r30)
/* 806D3C2C  90 01 00 64 */	stw r0, 0x64(r1)
/* 806D3C30  7F A3 EB 78 */	mr r3, r29
/* 806D3C34  38 81 00 5C */	addi r4, r1, 0x5c
/* 806D3C38  4B FF D6 91 */	bl setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v
/* 806D3C3C  48 00 02 70 */	b lbl_806D3EAC
lbl_806D3C40:
/* 806D3C40  38 00 00 28 */	li r0, 0x28
/* 806D3C44  98 1D 0A 6B */	stb r0, 0xa6b(r29)
/* 806D3C48  80 7D 0A 3C */	lwz r3, 0xa3c(r29)
/* 806D3C4C  38 03 00 01 */	addi r0, r3, 1
/* 806D3C50  90 1D 0A 3C */	stw r0, 0xa3c(r29)
/* 806D3C54  48 00 02 58 */	b lbl_806D3EAC
lbl_806D3C58:
/* 806D3C58  2C 00 00 02 */	cmpwi r0, 2
/* 806D3C5C  40 82 00 B8 */	bne lbl_806D3D14
/* 806D3C60  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 806D3C64  A8 9D 0A 1C */	lha r4, 0xa1c(r29)
/* 806D3C68  38 A0 00 08 */	li r5, 8
/* 806D3C6C  38 C0 10 00 */	li r6, 0x1000
/* 806D3C70  38 E0 04 00 */	li r7, 0x400
/* 806D3C74  4B B9 C8 CD */	bl cLib_addCalcAngleS__FPsssss
/* 806D3C78  38 7D 04 E0 */	addi r3, r29, 0x4e0
/* 806D3C7C  A8 9D 0A 20 */	lha r4, 0xa20(r29)
/* 806D3C80  38 A0 00 08 */	li r5, 8
/* 806D3C84  38 C0 10 00 */	li r6, 0x1000
/* 806D3C88  38 E0 04 00 */	li r7, 0x400
/* 806D3C8C  4B B9 C8 B5 */	bl cLib_addCalcAngleS__FPsssss
/* 806D3C90  3C 60 80 6D */	lis r3, s_obj_sub2__FPvPv@ha /* 0x806D14E0@ha */
/* 806D3C94  38 63 14 E0 */	addi r3, r3, s_obj_sub2__FPvPv@l /* 0x806D14E0@l */
/* 806D3C98  7F A4 EB 78 */	mr r4, r29
/* 806D3C9C  4B 94 D6 9D */	bl fpcEx_Search__FPFPvPv_PvPv
/* 806D3CA0  28 03 00 00 */	cmplwi r3, 0
/* 806D3CA4  41 82 00 48 */	beq lbl_806D3CEC
/* 806D3CA8  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 806D3CAC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806D3CB0  4B B9 CF 55 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 806D3CB4  B0 7D 0A 1E */	sth r3, 0xa1e(r29)
/* 806D3CB8  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 806D3CBC  4B B9 3C D1 */	bl cM_rndFX__Ff
/* 806D3CC0  D0 3D 05 2C */	stfs f1, 0x52c(r29)
/* 806D3CC4  80 7E 01 8C */	lwz r3, 0x18c(r30)
/* 806D3CC8  80 1E 01 90 */	lwz r0, 0x190(r30)
/* 806D3CCC  90 61 00 50 */	stw r3, 0x50(r1)
/* 806D3CD0  90 01 00 54 */	stw r0, 0x54(r1)
/* 806D3CD4  80 1E 01 94 */	lwz r0, 0x194(r30)
/* 806D3CD8  90 01 00 58 */	stw r0, 0x58(r1)
/* 806D3CDC  7F A3 EB 78 */	mr r3, r29
/* 806D3CE0  38 81 00 50 */	addi r4, r1, 0x50
/* 806D3CE4  4B FF D5 E5 */	bl setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v
/* 806D3CE8  48 00 01 C4 */	b lbl_806D3EAC
lbl_806D3CEC:
/* 806D3CEC  88 1D 0A 6B */	lbz r0, 0xa6b(r29)
/* 806D3CF0  28 00 00 00 */	cmplwi r0, 0
/* 806D3CF4  40 82 01 B8 */	bne lbl_806D3EAC
/* 806D3CF8  38 00 00 00 */	li r0, 0
/* 806D3CFC  B0 1D 0A 20 */	sth r0, 0xa20(r29)
/* 806D3D00  B0 1D 0A 1C */	sth r0, 0xa1c(r29)
/* 806D3D04  80 7D 0A 3C */	lwz r3, 0xa3c(r29)
/* 806D3D08  38 03 00 01 */	addi r0, r3, 1
/* 806D3D0C  90 1D 0A 3C */	stw r0, 0xa3c(r29)
/* 806D3D10  48 00 01 9C */	b lbl_806D3EAC
lbl_806D3D14:
/* 806D3D14  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 806D3D18  A8 9D 0A 1C */	lha r4, 0xa1c(r29)
/* 806D3D1C  38 A0 00 10 */	li r5, 0x10
/* 806D3D20  38 C0 20 00 */	li r6, 0x2000
/* 806D3D24  38 E0 04 00 */	li r7, 0x400
/* 806D3D28  4B B9 C8 19 */	bl cLib_addCalcAngleS__FPsssss
/* 806D3D2C  38 7D 04 E0 */	addi r3, r29, 0x4e0
/* 806D3D30  A8 9D 0A 20 */	lha r4, 0xa20(r29)
/* 806D3D34  38 A0 00 10 */	li r5, 0x10
/* 806D3D38  38 C0 20 00 */	li r6, 0x2000
/* 806D3D3C  38 E0 04 00 */	li r7, 0x400
/* 806D3D40  4B B9 C8 01 */	bl cLib_addCalcAngleS__FPsssss
/* 806D3D44  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 806D3D48  2C 00 00 00 */	cmpwi r0, 0
/* 806D3D4C  40 82 01 08 */	bne lbl_806D3E54
/* 806D3D50  A8 1D 04 E0 */	lha r0, 0x4e0(r29)
/* 806D3D54  2C 00 00 00 */	cmpwi r0, 0
/* 806D3D58  40 82 00 FC */	bne lbl_806D3E54
/* 806D3D5C  88 1D 0A 6F */	lbz r0, 0xa6f(r29)
/* 806D3D60  28 00 00 01 */	cmplwi r0, 1
/* 806D3D64  40 82 00 2C */	bne lbl_806D3D90
/* 806D3D68  80 7E 01 98 */	lwz r3, 0x198(r30)
/* 806D3D6C  80 1E 01 9C */	lwz r0, 0x19c(r30)
/* 806D3D70  90 61 00 44 */	stw r3, 0x44(r1)
/* 806D3D74  90 01 00 48 */	stw r0, 0x48(r1)
/* 806D3D78  80 1E 01 A0 */	lwz r0, 0x1a0(r30)
/* 806D3D7C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 806D3D80  7F A3 EB 78 */	mr r3, r29
/* 806D3D84  38 81 00 44 */	addi r4, r1, 0x44
/* 806D3D88  4B FF D5 41 */	bl setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v
/* 806D3D8C  48 00 01 20 */	b lbl_806D3EAC
lbl_806D3D90:
/* 806D3D90  28 00 00 03 */	cmplwi r0, 3
/* 806D3D94  40 82 00 2C */	bne lbl_806D3DC0
/* 806D3D98  80 7E 01 A4 */	lwz r3, 0x1a4(r30)
/* 806D3D9C  80 1E 01 A8 */	lwz r0, 0x1a8(r30)
/* 806D3DA0  90 61 00 38 */	stw r3, 0x38(r1)
/* 806D3DA4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 806D3DA8  80 1E 01 AC */	lwz r0, 0x1ac(r30)
/* 806D3DAC  90 01 00 40 */	stw r0, 0x40(r1)
/* 806D3DB0  7F A3 EB 78 */	mr r3, r29
/* 806D3DB4  38 81 00 38 */	addi r4, r1, 0x38
/* 806D3DB8  4B FF D5 11 */	bl setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v
/* 806D3DBC  48 00 00 F0 */	b lbl_806D3EAC
lbl_806D3DC0:
/* 806D3DC0  28 00 00 02 */	cmplwi r0, 2
/* 806D3DC4  40 82 00 2C */	bne lbl_806D3DF0
/* 806D3DC8  80 7E 01 B0 */	lwz r3, 0x1b0(r30)
/* 806D3DCC  80 1E 01 B4 */	lwz r0, 0x1b4(r30)
/* 806D3DD0  90 61 00 2C */	stw r3, 0x2c(r1)
/* 806D3DD4  90 01 00 30 */	stw r0, 0x30(r1)
/* 806D3DD8  80 1E 01 B8 */	lwz r0, 0x1b8(r30)
/* 806D3DDC  90 01 00 34 */	stw r0, 0x34(r1)
/* 806D3DE0  7F A3 EB 78 */	mr r3, r29
/* 806D3DE4  38 81 00 2C */	addi r4, r1, 0x2c
/* 806D3DE8  4B FF D4 E1 */	bl setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v
/* 806D3DEC  48 00 00 C0 */	b lbl_806D3EAC
lbl_806D3DF0:
/* 806D3DF0  28 00 00 00 */	cmplwi r0, 0
/* 806D3DF4  40 82 00 38 */	bne lbl_806D3E2C
/* 806D3DF8  88 1D 0A 76 */	lbz r0, 0xa76(r29)
/* 806D3DFC  28 00 00 00 */	cmplwi r0, 0
/* 806D3E00  41 82 00 2C */	beq lbl_806D3E2C
/* 806D3E04  80 7E 01 BC */	lwz r3, 0x1bc(r30)
/* 806D3E08  80 1E 01 C0 */	lwz r0, 0x1c0(r30)
/* 806D3E0C  90 61 00 20 */	stw r3, 0x20(r1)
/* 806D3E10  90 01 00 24 */	stw r0, 0x24(r1)
/* 806D3E14  80 1E 01 C4 */	lwz r0, 0x1c4(r30)
/* 806D3E18  90 01 00 28 */	stw r0, 0x28(r1)
/* 806D3E1C  7F A3 EB 78 */	mr r3, r29
/* 806D3E20  38 81 00 20 */	addi r4, r1, 0x20
/* 806D3E24  4B FF D4 A5 */	bl setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v
/* 806D3E28  48 00 00 84 */	b lbl_806D3EAC
lbl_806D3E2C:
/* 806D3E2C  80 7E 01 C8 */	lwz r3, 0x1c8(r30)
/* 806D3E30  80 1E 01 CC */	lwz r0, 0x1cc(r30)
/* 806D3E34  90 61 00 14 */	stw r3, 0x14(r1)
/* 806D3E38  90 01 00 18 */	stw r0, 0x18(r1)
/* 806D3E3C  80 1E 01 D0 */	lwz r0, 0x1d0(r30)
/* 806D3E40  90 01 00 1C */	stw r0, 0x1c(r1)
/* 806D3E44  7F A3 EB 78 */	mr r3, r29
/* 806D3E48  38 81 00 14 */	addi r4, r1, 0x14
/* 806D3E4C  4B FF D4 7D */	bl setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v
/* 806D3E50  48 00 00 5C */	b lbl_806D3EAC
lbl_806D3E54:
/* 806D3E54  3C 60 80 6D */	lis r3, s_obj_sub2__FPvPv@ha /* 0x806D14E0@ha */
/* 806D3E58  38 63 14 E0 */	addi r3, r3, s_obj_sub2__FPvPv@l /* 0x806D14E0@l */
/* 806D3E5C  7F A4 EB 78 */	mr r4, r29
/* 806D3E60  4B 94 D4 D9 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 806D3E64  28 03 00 00 */	cmplwi r3, 0
/* 806D3E68  41 82 00 44 */	beq lbl_806D3EAC
/* 806D3E6C  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 806D3E70  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806D3E74  4B B9 CD 91 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 806D3E78  B0 7D 0A 1E */	sth r3, 0xa1e(r29)
/* 806D3E7C  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 806D3E80  4B B9 3B 0D */	bl cM_rndFX__Ff
/* 806D3E84  D0 3D 05 2C */	stfs f1, 0x52c(r29)
/* 806D3E88  80 7E 01 D4 */	lwz r3, 0x1d4(r30)
/* 806D3E8C  80 1E 01 D8 */	lwz r0, 0x1d8(r30)
/* 806D3E90  90 61 00 08 */	stw r3, 8(r1)
/* 806D3E94  90 01 00 0C */	stw r0, 0xc(r1)
/* 806D3E98  80 1E 01 DC */	lwz r0, 0x1dc(r30)
/* 806D3E9C  90 01 00 10 */	stw r0, 0x10(r1)
/* 806D3EA0  7F A3 EB 78 */	mr r3, r29
/* 806D3EA4  38 81 00 08 */	addi r4, r1, 8
/* 806D3EA8  4B FF D4 21 */	bl setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v
lbl_806D3EAC:
/* 806D3EAC  39 61 00 90 */	addi r11, r1, 0x90
/* 806D3EB0  4B C8 E3 79 */	bl _restgpr_29
/* 806D3EB4  80 01 00 94 */	lwz r0, 0x94(r1)
/* 806D3EB8  7C 08 03 A6 */	mtlr r0
/* 806D3EBC  38 21 00 90 */	addi r1, r1, 0x90
/* 806D3EC0  4E 80 00 20 */	blr 
