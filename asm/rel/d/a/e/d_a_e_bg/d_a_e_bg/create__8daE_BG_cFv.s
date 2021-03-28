lbl_80689C38:
/* 80689C38  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80689C3C  7C 08 02 A6 */	mflr r0
/* 80689C40  90 01 00 94 */	stw r0, 0x94(r1)
/* 80689C44  39 61 00 90 */	addi r11, r1, 0x90
/* 80689C48  4B CD 85 84 */	b _savegpr_25
/* 80689C4C  7C 7D 1B 78 */	mr r29, r3
/* 80689C50  3C 80 80 69 */	lis r4, lit_3768@ha
/* 80689C54  3B E4 A2 44 */	addi r31, r4, lit_3768@l
/* 80689C58  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80689C5C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80689C60  40 82 01 3C */	bne lbl_80689D9C
/* 80689C64  7F A0 EB 79 */	or. r0, r29, r29
/* 80689C68  41 82 01 28 */	beq lbl_80689D90
/* 80689C6C  7C 1E 03 78 */	mr r30, r0
/* 80689C70  4B 98 EE F4 */	b __ct__10fopAc_ac_cFv
/* 80689C74  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80689C78  4B C3 72 EC */	b __ct__15Z2CreatureEnemyFv
/* 80689C7C  38 7E 06 B4 */	addi r3, r30, 0x6b4
/* 80689C80  4B 9E C2 2C */	b __ct__12dBgS_AcchCirFv
/* 80689C84  3B 5E 06 F4 */	addi r26, r30, 0x6f4
/* 80689C88  7F 43 D3 78 */	mr r3, r26
/* 80689C8C  4B 9E C4 14 */	b __ct__9dBgS_AcchFv
/* 80689C90  3C 60 80 69 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80689C94  38 63 A4 74 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80689C98  90 7A 00 10 */	stw r3, 0x10(r26)
/* 80689C9C  38 03 00 0C */	addi r0, r3, 0xc
/* 80689CA0  90 1A 00 14 */	stw r0, 0x14(r26)
/* 80689CA4  38 03 00 18 */	addi r0, r3, 0x18
/* 80689CA8  90 1A 00 24 */	stw r0, 0x24(r26)
/* 80689CAC  38 7A 00 14 */	addi r3, r26, 0x14
/* 80689CB0  4B 9E F1 B8 */	b SetObj__16dBgS_PolyPassChkFv
/* 80689CB4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80689CB8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80689CBC  90 1E 08 E4 */	stw r0, 0x8e4(r30)
/* 80689CC0  38 7E 08 E8 */	addi r3, r30, 0x8e8
/* 80689CC4  4B 9F 9A 9C */	b __ct__10dCcD_GSttsFv
/* 80689CC8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80689CCC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80689CD0  90 7E 08 E4 */	stw r3, 0x8e4(r30)
/* 80689CD4  38 03 00 20 */	addi r0, r3, 0x20
/* 80689CD8  90 1E 08 E8 */	stw r0, 0x8e8(r30)
/* 80689CDC  3B 3E 09 08 */	addi r25, r30, 0x908
/* 80689CE0  7F 23 CB 78 */	mr r3, r25
/* 80689CE4  4B 9F 9D 44 */	b __ct__12dCcD_GObjInfFv
/* 80689CE8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80689CEC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80689CF0  90 19 01 20 */	stw r0, 0x120(r25)
/* 80689CF4  3C 60 80 69 */	lis r3, __vt__8cM3dGAab@ha
/* 80689CF8  38 03 A4 68 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80689CFC  90 19 01 1C */	stw r0, 0x11c(r25)
/* 80689D00  3C 60 80 69 */	lis r3, __vt__8cM3dGSph@ha
/* 80689D04  38 03 A4 5C */	addi r0, r3, __vt__8cM3dGSph@l
/* 80689D08  90 19 01 34 */	stw r0, 0x134(r25)
/* 80689D0C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80689D10  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80689D14  90 79 01 20 */	stw r3, 0x120(r25)
/* 80689D18  3B 83 00 58 */	addi r28, r3, 0x58
/* 80689D1C  93 99 01 34 */	stw r28, 0x134(r25)
/* 80689D20  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80689D24  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80689D28  90 79 00 3C */	stw r3, 0x3c(r25)
/* 80689D2C  3B 63 00 2C */	addi r27, r3, 0x2c
/* 80689D30  93 79 01 20 */	stw r27, 0x120(r25)
/* 80689D34  3B 43 00 84 */	addi r26, r3, 0x84
/* 80689D38  93 59 01 34 */	stw r26, 0x134(r25)
/* 80689D3C  3B 3E 0A 40 */	addi r25, r30, 0xa40
/* 80689D40  7F 23 CB 78 */	mr r3, r25
/* 80689D44  4B 9F 9C E4 */	b __ct__12dCcD_GObjInfFv
/* 80689D48  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80689D4C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80689D50  90 19 01 20 */	stw r0, 0x120(r25)
/* 80689D54  3C 60 80 69 */	lis r3, __vt__8cM3dGAab@ha
/* 80689D58  38 03 A4 68 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80689D5C  90 19 01 1C */	stw r0, 0x11c(r25)
/* 80689D60  3C 60 80 69 */	lis r3, __vt__8cM3dGSph@ha
/* 80689D64  38 03 A4 5C */	addi r0, r3, __vt__8cM3dGSph@l
/* 80689D68  90 19 01 34 */	stw r0, 0x134(r25)
/* 80689D6C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80689D70  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 80689D74  90 19 01 20 */	stw r0, 0x120(r25)
/* 80689D78  93 99 01 34 */	stw r28, 0x134(r25)
/* 80689D7C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80689D80  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 80689D84  90 19 00 3C */	stw r0, 0x3c(r25)
/* 80689D88  93 79 01 20 */	stw r27, 0x120(r25)
/* 80689D8C  93 59 01 34 */	stw r26, 0x134(r25)
lbl_80689D90:
/* 80689D90  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80689D94  60 00 00 08 */	ori r0, r0, 8
/* 80689D98  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80689D9C:
/* 80689D9C  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80689DA0  98 1D 06 8D */	stb r0, 0x68d(r29)
/* 80689DA4  88 1D 06 8D */	lbz r0, 0x68d(r29)
/* 80689DA8  28 00 00 FF */	cmplwi r0, 0xff
/* 80689DAC  40 82 00 0C */	bne lbl_80689DB8
/* 80689DB0  38 00 00 00 */	li r0, 0
/* 80689DB4  98 1D 06 8D */	stb r0, 0x68d(r29)
lbl_80689DB8:
/* 80689DB8  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80689DBC  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80689DC0  98 1D 06 8C */	stb r0, 0x68c(r29)
/* 80689DC4  88 9D 06 8C */	lbz r4, 0x68c(r29)
/* 80689DC8  28 04 00 FF */	cmplwi r4, 0xff
/* 80689DCC  41 82 00 28 */	beq lbl_80689DF4
/* 80689DD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80689DD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80689DD8  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80689DDC  7C 05 07 74 */	extsb r5, r0
/* 80689DE0  4B 9A B5 80 */	b isSwitch__10dSv_info_cCFii
/* 80689DE4  2C 03 00 00 */	cmpwi r3, 0
/* 80689DE8  41 82 00 0C */	beq lbl_80689DF4
/* 80689DEC  38 60 00 05 */	li r3, 5
/* 80689DF0  48 00 02 74 */	b lbl_8068A064
lbl_80689DF4:
/* 80689DF4  38 7D 05 AC */	addi r3, r29, 0x5ac
/* 80689DF8  3C 80 80 69 */	lis r4, stringBase0@ha
/* 80689DFC  38 84 A3 08 */	addi r4, r4, stringBase0@l
/* 80689E00  4B 9A 30 BC */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80689E04  7C 7E 1B 78 */	mr r30, r3
/* 80689E08  2C 1E 00 04 */	cmpwi r30, 4
/* 80689E0C  40 82 02 54 */	bne lbl_8068A060
/* 80689E10  7F A3 EB 78 */	mr r3, r29
/* 80689E14  3C 80 80 69 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 80689E18  38 84 9C 18 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 80689E1C  38 A0 11 00 */	li r5, 0x1100
/* 80689E20  4B 99 06 90 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80689E24  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80689E28  40 82 00 0C */	bne lbl_80689E34
/* 80689E2C  38 60 00 05 */	li r3, 5
/* 80689E30  48 00 02 34 */	b lbl_8068A064
lbl_80689E34:
/* 80689E34  3C 60 80 69 */	lis r3, data_8068A4B8@ha
/* 80689E38  8C 03 A4 B8 */	lbzu r0, data_8068A4B8@l(r3)
/* 80689E3C  28 00 00 00 */	cmplwi r0, 0
/* 80689E40  40 82 00 20 */	bne lbl_80689E60
/* 80689E44  38 00 00 01 */	li r0, 1
/* 80689E48  98 03 00 00 */	stb r0, 0(r3)
/* 80689E4C  98 1D 0B B8 */	stb r0, 0xbb8(r29)
/* 80689E50  38 00 FF FF */	li r0, -1
/* 80689E54  3C 60 80 69 */	lis r3, l_HIO@ha
/* 80689E58  38 63 A4 C8 */	addi r3, r3, l_HIO@l
/* 80689E5C  98 03 00 04 */	stb r0, 4(r3)
lbl_80689E60:
/* 80689E60  38 00 00 04 */	li r0, 4
/* 80689E64  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80689E68  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80689E6C  80 63 00 04 */	lwz r3, 4(r3)
/* 80689E70  38 03 00 24 */	addi r0, r3, 0x24
/* 80689E74  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80689E78  7F A3 EB 78 */	mr r3, r29
/* 80689E7C  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 80689E80  FC 40 08 90 */	fmr f2, f1
/* 80689E84  FC 60 08 90 */	fmr f3, f1
/* 80689E88  4B 99 06 A0 */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80689E8C  7F A3 EB 78 */	mr r3, r29
/* 80689E90  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80689E94  FC 40 08 90 */	fmr f2, f1
/* 80689E98  FC 60 08 90 */	fmr f3, f1
/* 80689E9C  4B 99 06 9C */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80689EA0  38 00 00 00 */	li r0, 0
/* 80689EA4  90 01 00 08 */	stw r0, 8(r1)
/* 80689EA8  38 7D 06 F4 */	addi r3, r29, 0x6f4
/* 80689EAC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80689EB0  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80689EB4  7F A6 EB 78 */	mr r6, r29
/* 80689EB8  38 E0 00 01 */	li r7, 1
/* 80689EBC  39 1D 06 B4 */	addi r8, r29, 0x6b4
/* 80689EC0  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80689EC4  39 40 00 00 */	li r10, 0
/* 80689EC8  4B 9E C3 80 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80689ECC  38 7D 06 B4 */	addi r3, r29, 0x6b4
/* 80689ED0  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80689ED4  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 80689ED8  4B 9E C0 80 */	b SetWall__12dBgS_AcchCirFff
/* 80689EDC  38 00 00 0A */	li r0, 0xa
/* 80689EE0  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 80689EE4  B0 1D 05 60 */	sth r0, 0x560(r29)
/* 80689EE8  38 7D 08 CC */	addi r3, r29, 0x8cc
/* 80689EEC  38 80 00 64 */	li r4, 0x64
/* 80689EF0  38 A0 00 00 */	li r5, 0
/* 80689EF4  7F A6 EB 78 */	mr r6, r29
/* 80689EF8  4B 9F 99 68 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80689EFC  38 7D 09 08 */	addi r3, r29, 0x908
/* 80689F00  3C 80 80 69 */	lis r4, data_8068A314@ha
/* 80689F04  38 84 A3 14 */	addi r4, r4, data_8068A314@l
/* 80689F08  4B 9F AB 2C */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80689F0C  38 1D 08 CC */	addi r0, r29, 0x8cc
/* 80689F10  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 80689F14  38 7D 0A 40 */	addi r3, r29, 0xa40
/* 80689F18  3C 80 80 69 */	lis r4, data_8068A354@ha
/* 80689F1C  38 84 A3 54 */	addi r4, r4, data_8068A354@l
/* 80689F20  4B 9F AB 14 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80689F24  38 1D 08 CC */	addi r0, r29, 0x8cc
/* 80689F28  90 1D 0A 84 */	stw r0, 0xa84(r29)
/* 80689F2C  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 80689F30  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80689F34  38 BD 05 38 */	addi r5, r29, 0x538
/* 80689F38  38 C0 00 03 */	li r6, 3
/* 80689F3C  38 E0 00 01 */	li r7, 1
/* 80689F40  4B C3 71 54 */	b init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 80689F44  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 80689F48  3C 80 80 69 */	lis r4, stringBase0@ha
/* 80689F4C  38 84 A3 08 */	addi r4, r4, stringBase0@l
/* 80689F50  38 84 00 05 */	addi r4, r4, 5
/* 80689F54  4B C3 7C 3C */	b setEnemyName__15Z2CreatureEnemyFPCc
/* 80689F58  38 1D 05 BC */	addi r0, r29, 0x5bc
/* 80689F5C  90 1D 0B 80 */	stw r0, 0xb80(r29)
/* 80689F60  38 00 00 01 */	li r0, 1
/* 80689F64  98 1D 0B 96 */	stb r0, 0xb96(r29)
/* 80689F68  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80689F6C  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80689F70  38 00 00 03 */	li r0, 3
/* 80689F74  98 1D 05 46 */	stb r0, 0x546(r29)
/* 80689F78  80 7D 04 D0 */	lwz r3, 0x4d0(r29)
/* 80689F7C  80 1D 04 D4 */	lwz r0, 0x4d4(r29)
/* 80689F80  90 61 00 10 */	stw r3, 0x10(r1)
/* 80689F84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80689F88  80 1D 04 D8 */	lwz r0, 0x4d8(r29)
/* 80689F8C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80689F90  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80689F94  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80689F98  EC 01 00 2A */	fadds f0, f1, f0
/* 80689F9C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80689FA0  38 61 00 1C */	addi r3, r1, 0x1c
/* 80689FA4  4B 9E D8 0C */	b __ct__18dBgS_ObjGndChk_SplFv
/* 80689FA8  38 61 00 1C */	addi r3, r1, 0x1c
/* 80689FAC  38 81 00 10 */	addi r4, r1, 0x10
/* 80689FB0  4B BD DD 5C */	b SetPos__11cBgS_GndChkFPC3Vec
/* 80689FB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80689FB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80689FBC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80689FC0  38 81 00 1C */	addi r4, r1, 0x1c
/* 80689FC4  4B 9E A4 DC */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80689FC8  D0 3D 06 84 */	stfs f1, 0x684(r29)
/* 80689FCC  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80689FD0  C0 5D 06 84 */	lfs f2, 0x684(r29)
/* 80689FD4  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 80689FD8  41 82 00 1C */	beq lbl_80689FF4
/* 80689FDC  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80689FE0  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80689FE4  EC 02 00 28 */	fsubs f0, f2, f0
/* 80689FE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80689FEC  40 81 00 08 */	ble lbl_80689FF4
/* 80689FF0  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
lbl_80689FF4:
/* 80689FF4  88 1D 06 8D */	lbz r0, 0x68d(r29)
/* 80689FF8  28 00 00 01 */	cmplwi r0, 1
/* 80689FFC  40 82 00 18 */	bne lbl_8068A014
/* 8068A000  7F A3 EB 78 */	mr r3, r29
/* 8068A004  38 80 00 00 */	li r4, 0
/* 8068A008  38 A0 00 00 */	li r5, 0
/* 8068A00C  4B FF BC 09 */	bl setActionMode__8daE_BG_cFii
/* 8068A010  48 00 00 30 */	b lbl_8068A040
lbl_8068A014:
/* 8068A014  28 00 00 02 */	cmplwi r0, 2
/* 8068A018  40 82 00 18 */	bne lbl_8068A030
/* 8068A01C  7F A3 EB 78 */	mr r3, r29
/* 8068A020  38 80 00 05 */	li r4, 5
/* 8068A024  38 A0 00 00 */	li r5, 0
/* 8068A028  4B FF BB ED */	bl setActionMode__8daE_BG_cFii
/* 8068A02C  48 00 00 14 */	b lbl_8068A040
lbl_8068A030:
/* 8068A030  7F A3 EB 78 */	mr r3, r29
/* 8068A034  38 80 00 01 */	li r4, 1
/* 8068A038  38 A0 00 00 */	li r5, 0
/* 8068A03C  4B FF BB D9 */	bl setActionMode__8daE_BG_cFii
lbl_8068A040:
/* 8068A040  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 8068A044  60 00 02 00 */	ori r0, r0, 0x200
/* 8068A048  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 8068A04C  7F A3 EB 78 */	mr r3, r29
/* 8068A050  4B FF F9 01 */	bl daE_BG_Execute__FP8daE_BG_c
/* 8068A054  38 61 00 1C */	addi r3, r1, 0x1c
/* 8068A058  38 80 FF FF */	li r4, -1
/* 8068A05C  4B 9E D7 EC */	b __dt__18dBgS_ObjGndChk_SplFv
lbl_8068A060:
/* 8068A060  7F C3 F3 78 */	mr r3, r30
lbl_8068A064:
/* 8068A064  39 61 00 90 */	addi r11, r1, 0x90
/* 8068A068  4B CD 81 B0 */	b _restgpr_25
/* 8068A06C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8068A070  7C 08 03 A6 */	mtlr r0
/* 8068A074  38 21 00 90 */	addi r1, r1, 0x90
/* 8068A078  4E 80 00 20 */	blr 
