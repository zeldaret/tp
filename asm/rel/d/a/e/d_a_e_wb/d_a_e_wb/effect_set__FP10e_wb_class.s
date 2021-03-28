lbl_807D9D44:
/* 807D9D44  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 807D9D48  7C 08 02 A6 */	mflr r0
/* 807D9D4C  90 01 01 34 */	stw r0, 0x134(r1)
/* 807D9D50  DB E1 01 20 */	stfd f31, 0x120(r1)
/* 807D9D54  F3 E1 01 28 */	psq_st f31, 296(r1), 0, 0 /* qr0 */
/* 807D9D58  39 61 01 20 */	addi r11, r1, 0x120
/* 807D9D5C  4B B8 84 64 */	b _savegpr_22
/* 807D9D60  7C 7F 1B 78 */	mr r31, r3
/* 807D9D64  3C 60 80 7E */	lis r3, cNullVec__6Z2Calc@ha
/* 807D9D68  3B 43 2F 58 */	addi r26, r3, cNullVec__6Z2Calc@l
/* 807D9D6C  3C 60 80 7E */	lis r3, lit_1109@ha
/* 807D9D70  3B 63 35 78 */	addi r27, r3, lit_1109@l
/* 807D9D74  3C 60 80 7E */	lis r3, lit_3882@ha
/* 807D9D78  3B C3 29 8C */	addi r30, r3, lit_3882@l
/* 807D9D7C  38 61 00 A0 */	addi r3, r1, 0xa0
/* 807D9D80  4B 89 D7 FC */	b __ct__11dBgS_GndChkFv
/* 807D9D84  38 61 00 4C */	addi r3, r1, 0x4c
/* 807D9D88  4B 89 DA 28 */	b __ct__18dBgS_ObjGndChk_SplFv
/* 807D9D8C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 807D9D90  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807D9D94  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 807D9D98  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 807D9D9C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 807D9DA0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807D9DA4  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 807D9DA8  EC 01 00 2A */	fadds f0, f1, f0
/* 807D9DAC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807D9DB0  38 61 00 A0 */	addi r3, r1, 0xa0
/* 807D9DB4  38 81 00 40 */	addi r4, r1, 0x40
/* 807D9DB8  4B A8 DF 70 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 807D9DBC  38 61 00 4C */	addi r3, r1, 0x4c
/* 807D9DC0  38 81 00 40 */	addi r4, r1, 0x40
/* 807D9DC4  4B A8 DF 64 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 807D9DC8  3B A0 00 00 */	li r29, 0
/* 807D9DCC  3B 80 00 00 */	li r28, 0
/* 807D9DD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807D9DD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807D9DD8  3A E3 0F 38 */	addi r23, r3, 0xf38
/* 807D9DDC  7E E3 BB 78 */	mr r3, r23
/* 807D9DE0  38 81 00 A0 */	addi r4, r1, 0xa0
/* 807D9DE4  4B 89 A6 BC */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 807D9DE8  FF E0 08 90 */	fmr f31, f1
/* 807D9DEC  7E E3 BB 78 */	mr r3, r23
/* 807D9DF0  38 81 00 4C */	addi r4, r1, 0x4c
/* 807D9DF4  4B 89 A6 AC */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 807D9DF8  EC 21 F8 28 */	fsubs f1, f1, f31
/* 807D9DFC  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807D9E00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D9E04  40 81 00 08 */	ble lbl_807D9E0C
/* 807D9E08  3B A0 00 01 */	li r29, 1
lbl_807D9E0C:
/* 807D9E0C  88 1F 14 2C */	lbz r0, 0x142c(r31)
/* 807D9E10  28 00 00 01 */	cmplwi r0, 1
/* 807D9E14  40 82 00 54 */	bne lbl_807D9E68
/* 807D9E18  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 807D9E1C  38 63 00 0C */	addi r3, r3, 0xc
/* 807D9E20  C0 3E 01 F4 */	lfs f1, 0x1f4(r30)
/* 807D9E24  4B B4 E6 08 */	b checkPass__12J3DFrameCtrlFf
/* 807D9E28  2C 03 00 00 */	cmpwi r3, 0
/* 807D9E2C  41 82 00 14 */	beq lbl_807D9E40
/* 807D9E30  88 1F 14 2D */	lbz r0, 0x142d(r31)
/* 807D9E34  60 00 00 04 */	ori r0, r0, 4
/* 807D9E38  98 1F 14 2D */	stb r0, 0x142d(r31)
/* 807D9E3C  48 00 01 14 */	b lbl_807D9F50
lbl_807D9E40:
/* 807D9E40  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 807D9E44  38 63 00 0C */	addi r3, r3, 0xc
/* 807D9E48  C0 3E 01 F8 */	lfs f1, 0x1f8(r30)
/* 807D9E4C  4B B4 E5 E0 */	b checkPass__12J3DFrameCtrlFf
/* 807D9E50  2C 03 00 00 */	cmpwi r3, 0
/* 807D9E54  41 82 00 FC */	beq lbl_807D9F50
/* 807D9E58  88 1F 14 2D */	lbz r0, 0x142d(r31)
/* 807D9E5C  60 00 00 08 */	ori r0, r0, 8
/* 807D9E60  98 1F 14 2D */	stb r0, 0x142d(r31)
/* 807D9E64  48 00 00 EC */	b lbl_807D9F50
lbl_807D9E68:
/* 807D9E68  28 00 00 02 */	cmplwi r0, 2
/* 807D9E6C  40 82 00 E4 */	bne lbl_807D9F50
/* 807D9E70  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807D9E74  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807D9E78  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807D9E7C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807D9E80  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 807D9E84  80 63 00 04 */	lwz r3, 4(r3)
/* 807D9E88  A8 1F 06 8E */	lha r0, 0x68e(r31)
/* 807D9E8C  54 19 FF FE */	rlwinm r25, r0, 0x1f, 0x1f, 0x1f
/* 807D9E90  88 1F 07 9D */	lbz r0, 0x79d(r31)
/* 807D9E94  7C 00 07 75 */	extsb. r0, r0
/* 807D9E98  41 82 00 34 */	beq lbl_807D9ECC
/* 807D9E9C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807D9EA0  80 83 00 0C */	lwz r4, 0xc(r3)
/* 807D9EA4  57 20 10 3A */	slwi r0, r25, 2
/* 807D9EA8  38 7A 00 B0 */	addi r3, r26, 0xb0
/* 807D9EAC  7C 03 00 2E */	lwzx r0, r3, r0
/* 807D9EB0  1C 00 00 30 */	mulli r0, r0, 0x30
/* 807D9EB4  7C 64 02 14 */	add r3, r4, r0
/* 807D9EB8  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 807D9EBC  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 807D9EC0  80 84 00 00 */	lwz r4, 0(r4)
/* 807D9EC4  4B B6 C5 EC */	b PSMTXCopy
/* 807D9EC8  48 00 00 30 */	b lbl_807D9EF8
lbl_807D9ECC:
/* 807D9ECC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807D9ED0  80 83 00 0C */	lwz r4, 0xc(r3)
/* 807D9ED4  57 20 10 3A */	slwi r0, r25, 2
/* 807D9ED8  38 7A 00 A8 */	addi r3, r26, 0xa8
/* 807D9EDC  7C 03 00 2E */	lwzx r0, r3, r0
/* 807D9EE0  1C 00 00 30 */	mulli r0, r0, 0x30
/* 807D9EE4  7C 64 02 14 */	add r3, r4, r0
/* 807D9EE8  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 807D9EEC  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 807D9EF0  80 84 00 00 */	lwz r4, 0(r4)
/* 807D9EF4  4B B6 C5 BC */	b PSMTXCopy
lbl_807D9EF8:
/* 807D9EF8  38 61 00 40 */	addi r3, r1, 0x40
/* 807D9EFC  38 81 00 34 */	addi r4, r1, 0x34
/* 807D9F00  4B A9 6F EC */	b MtxPosition__FP4cXyzP4cXyz
/* 807D9F04  7F A0 07 75 */	extsb. r0, r29
/* 807D9F08  41 82 00 0C */	beq lbl_807D9F14
/* 807D9F0C  3B 80 00 01 */	li r28, 1
/* 807D9F10  48 00 00 40 */	b lbl_807D9F50
lbl_807D9F14:
/* 807D9F14  A8 1F 06 8E */	lha r0, 0x68e(r31)
/* 807D9F18  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807D9F1C  40 82 00 34 */	bne lbl_807D9F50
/* 807D9F20  57 20 10 3A */	slwi r0, r25, 2
/* 807D9F24  7C 9F 02 14 */	add r4, r31, r0
/* 807D9F28  38 64 13 E8 */	addi r3, r4, 0x13e8
/* 807D9F2C  38 84 14 08 */	addi r4, r4, 0x1408
/* 807D9F30  38 A1 00 34 */	addi r5, r1, 0x34
/* 807D9F34  38 DF 04 E4 */	addi r6, r31, 0x4e4
/* 807D9F38  C0 3E 00 DC */	lfs f1, 0xdc(r30)
/* 807D9F3C  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 807D9F40  EC 21 00 32 */	fmuls f1, f1, f0
/* 807D9F44  38 FF 01 0C */	addi r7, r31, 0x10c
/* 807D9F48  39 00 00 00 */	li r8, 0
/* 807D9F4C  4B 84 30 D4 */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
lbl_807D9F50:
/* 807D9F50  88 1F 14 2D */	lbz r0, 0x142d(r31)
/* 807D9F54  28 00 00 00 */	cmplwi r0, 0
/* 807D9F58  41 82 03 C0 */	beq lbl_807DA318
/* 807D9F5C  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 807D9F60  83 23 00 04 */	lwz r25, 4(r3)
/* 807D9F64  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807D9F68  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807D9F6C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807D9F70  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807D9F74  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807D9F78  41 82 00 CC */	beq lbl_807DA044
/* 807D9F7C  80 79 00 84 */	lwz r3, 0x84(r25)
/* 807D9F80  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807D9F84  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 807D9F88  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 807D9F8C  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 807D9F90  80 84 00 00 */	lwz r4, 0(r4)
/* 807D9F94  4B B6 C5 1C */	b PSMTXCopy
/* 807D9F98  38 61 00 40 */	addi r3, r1, 0x40
/* 807D9F9C  38 81 00 34 */	addi r4, r1, 0x34
/* 807D9FA0  4B A9 6F 4C */	b MtxPosition__FP4cXyzP4cXyz
/* 807D9FA4  7F A0 07 75 */	extsb. r0, r29
/* 807D9FA8  41 82 00 0C */	beq lbl_807D9FB4
/* 807D9FAC  3B 80 00 01 */	li r28, 1
/* 807D9FB0  48 00 00 94 */	b lbl_807DA044
lbl_807D9FB4:
/* 807D9FB4  38 7F 13 EC */	addi r3, r31, 0x13ec
/* 807D9FB8  38 9F 14 0C */	addi r4, r31, 0x140c
/* 807D9FBC  38 A1 00 34 */	addi r5, r1, 0x34
/* 807D9FC0  38 DF 04 E4 */	addi r6, r31, 0x4e4
/* 807D9FC4  C0 3E 00 DC */	lfs f1, 0xdc(r30)
/* 807D9FC8  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 807D9FCC  EC 21 00 32 */	fmuls f1, f1, f0
/* 807D9FD0  38 FF 01 0C */	addi r7, r31, 0x10c
/* 807D9FD4  39 00 00 00 */	li r8, 0
/* 807D9FD8  4B 84 30 48 */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 807D9FDC  88 1F 14 2C */	lbz r0, 0x142c(r31)
/* 807D9FE0  28 00 00 00 */	cmplwi r0, 0
/* 807D9FE4  41 82 00 60 */	beq lbl_807DA044
/* 807D9FE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807D9FEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807D9FF0  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 807D9FF4  38 00 00 FF */	li r0, 0xff
/* 807D9FF8  90 01 00 08 */	stw r0, 8(r1)
/* 807D9FFC  38 80 00 00 */	li r4, 0
/* 807DA000  90 81 00 0C */	stw r4, 0xc(r1)
/* 807DA004  38 00 FF FF */	li r0, -1
/* 807DA008  90 01 00 10 */	stw r0, 0x10(r1)
/* 807DA00C  90 81 00 14 */	stw r4, 0x14(r1)
/* 807DA010  90 81 00 18 */	stw r4, 0x18(r1)
/* 807DA014  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807DA018  80 9F 13 FC */	lwz r4, 0x13fc(r31)
/* 807DA01C  38 A0 00 00 */	li r5, 0
/* 807DA020  3C C0 00 01 */	lis r6, 0x0001 /* 0x000080E3@ha */
/* 807DA024  38 C6 80 E3 */	addi r6, r6, 0x80E3 /* 0x000080E3@l */
/* 807DA028  38 E1 00 34 */	addi r7, r1, 0x34
/* 807DA02C  39 00 00 00 */	li r8, 0
/* 807DA030  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 807DA034  39 40 00 00 */	li r10, 0
/* 807DA038  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 807DA03C  4B 87 34 90 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807DA040  90 7F 13 FC */	stw r3, 0x13fc(r31)
lbl_807DA044:
/* 807DA044  88 1F 14 2D */	lbz r0, 0x142d(r31)
/* 807DA048  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 807DA04C  41 82 00 CC */	beq lbl_807DA118
/* 807DA050  80 79 00 84 */	lwz r3, 0x84(r25)
/* 807DA054  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807DA058  38 63 01 20 */	addi r3, r3, 0x120
/* 807DA05C  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 807DA060  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 807DA064  80 84 00 00 */	lwz r4, 0(r4)
/* 807DA068  4B B6 C4 48 */	b PSMTXCopy
/* 807DA06C  38 61 00 40 */	addi r3, r1, 0x40
/* 807DA070  38 81 00 34 */	addi r4, r1, 0x34
/* 807DA074  4B A9 6E 78 */	b MtxPosition__FP4cXyzP4cXyz
/* 807DA078  7F A0 07 75 */	extsb. r0, r29
/* 807DA07C  41 82 00 0C */	beq lbl_807DA088
/* 807DA080  3B 80 00 01 */	li r28, 1
/* 807DA084  48 00 00 94 */	b lbl_807DA118
lbl_807DA088:
/* 807DA088  38 7F 13 E8 */	addi r3, r31, 0x13e8
/* 807DA08C  38 9F 14 08 */	addi r4, r31, 0x1408
/* 807DA090  38 A1 00 34 */	addi r5, r1, 0x34
/* 807DA094  38 DF 04 E4 */	addi r6, r31, 0x4e4
/* 807DA098  C0 3E 00 DC */	lfs f1, 0xdc(r30)
/* 807DA09C  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 807DA0A0  EC 21 00 32 */	fmuls f1, f1, f0
/* 807DA0A4  38 FF 01 0C */	addi r7, r31, 0x10c
/* 807DA0A8  39 00 00 00 */	li r8, 0
/* 807DA0AC  4B 84 2F 74 */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 807DA0B0  88 1F 14 2C */	lbz r0, 0x142c(r31)
/* 807DA0B4  28 00 00 00 */	cmplwi r0, 0
/* 807DA0B8  41 82 00 60 */	beq lbl_807DA118
/* 807DA0BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807DA0C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807DA0C4  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 807DA0C8  38 00 00 FF */	li r0, 0xff
/* 807DA0CC  90 01 00 08 */	stw r0, 8(r1)
/* 807DA0D0  38 80 00 00 */	li r4, 0
/* 807DA0D4  90 81 00 0C */	stw r4, 0xc(r1)
/* 807DA0D8  38 00 FF FF */	li r0, -1
/* 807DA0DC  90 01 00 10 */	stw r0, 0x10(r1)
/* 807DA0E0  90 81 00 14 */	stw r4, 0x14(r1)
/* 807DA0E4  90 81 00 18 */	stw r4, 0x18(r1)
/* 807DA0E8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807DA0EC  80 9F 13 F8 */	lwz r4, 0x13f8(r31)
/* 807DA0F0  38 A0 00 00 */	li r5, 0
/* 807DA0F4  3C C0 00 01 */	lis r6, 0x0001 /* 0x000080E3@ha */
/* 807DA0F8  38 C6 80 E3 */	addi r6, r6, 0x80E3 /* 0x000080E3@l */
/* 807DA0FC  38 E1 00 34 */	addi r7, r1, 0x34
/* 807DA100  39 00 00 00 */	li r8, 0
/* 807DA104  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 807DA108  39 40 00 00 */	li r10, 0
/* 807DA10C  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 807DA110  4B 87 33 BC */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807DA114  90 7F 13 F8 */	stw r3, 0x13f8(r31)
lbl_807DA118:
/* 807DA118  88 1F 14 2D */	lbz r0, 0x142d(r31)
/* 807DA11C  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 807DA120  41 82 00 F8 */	beq lbl_807DA218
/* 807DA124  88 1F 07 9D */	lbz r0, 0x79d(r31)
/* 807DA128  7C 00 07 75 */	extsb. r0, r0
/* 807DA12C  41 82 00 24 */	beq lbl_807DA150
/* 807DA130  80 79 00 84 */	lwz r3, 0x84(r25)
/* 807DA134  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807DA138  38 63 05 70 */	addi r3, r3, 0x570
/* 807DA13C  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 807DA140  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 807DA144  80 84 00 00 */	lwz r4, 0(r4)
/* 807DA148  4B B6 C3 68 */	b PSMTXCopy
/* 807DA14C  48 00 00 20 */	b lbl_807DA16C
lbl_807DA150:
/* 807DA150  80 79 00 84 */	lwz r3, 0x84(r25)
/* 807DA154  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807DA158  38 63 04 B0 */	addi r3, r3, 0x4b0
/* 807DA15C  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 807DA160  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 807DA164  80 84 00 00 */	lwz r4, 0(r4)
/* 807DA168  4B B6 C3 48 */	b PSMTXCopy
lbl_807DA16C:
/* 807DA16C  38 61 00 40 */	addi r3, r1, 0x40
/* 807DA170  38 81 00 34 */	addi r4, r1, 0x34
/* 807DA174  4B A9 6D 78 */	b MtxPosition__FP4cXyzP4cXyz
/* 807DA178  7F A0 07 75 */	extsb. r0, r29
/* 807DA17C  41 82 00 0C */	beq lbl_807DA188
/* 807DA180  3B 80 00 01 */	li r28, 1
/* 807DA184  48 00 00 94 */	b lbl_807DA218
lbl_807DA188:
/* 807DA188  38 7F 13 F0 */	addi r3, r31, 0x13f0
/* 807DA18C  38 9F 14 10 */	addi r4, r31, 0x1410
/* 807DA190  38 A1 00 34 */	addi r5, r1, 0x34
/* 807DA194  38 DF 04 E4 */	addi r6, r31, 0x4e4
/* 807DA198  C0 3E 00 DC */	lfs f1, 0xdc(r30)
/* 807DA19C  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 807DA1A0  EC 21 00 32 */	fmuls f1, f1, f0
/* 807DA1A4  38 FF 01 0C */	addi r7, r31, 0x10c
/* 807DA1A8  39 00 00 00 */	li r8, 0
/* 807DA1AC  4B 84 2E 74 */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 807DA1B0  88 1F 14 2C */	lbz r0, 0x142c(r31)
/* 807DA1B4  28 00 00 00 */	cmplwi r0, 0
/* 807DA1B8  41 82 00 60 */	beq lbl_807DA218
/* 807DA1BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807DA1C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807DA1C4  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 807DA1C8  38 00 00 FF */	li r0, 0xff
/* 807DA1CC  90 01 00 08 */	stw r0, 8(r1)
/* 807DA1D0  38 80 00 00 */	li r4, 0
/* 807DA1D4  90 81 00 0C */	stw r4, 0xc(r1)
/* 807DA1D8  38 00 FF FF */	li r0, -1
/* 807DA1DC  90 01 00 10 */	stw r0, 0x10(r1)
/* 807DA1E0  90 81 00 14 */	stw r4, 0x14(r1)
/* 807DA1E4  90 81 00 18 */	stw r4, 0x18(r1)
/* 807DA1E8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807DA1EC  80 9F 14 00 */	lwz r4, 0x1400(r31)
/* 807DA1F0  38 A0 00 00 */	li r5, 0
/* 807DA1F4  3C C0 00 01 */	lis r6, 0x0001 /* 0x000080E3@ha */
/* 807DA1F8  38 C6 80 E3 */	addi r6, r6, 0x80E3 /* 0x000080E3@l */
/* 807DA1FC  38 E1 00 34 */	addi r7, r1, 0x34
/* 807DA200  39 00 00 00 */	li r8, 0
/* 807DA204  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 807DA208  39 40 00 00 */	li r10, 0
/* 807DA20C  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 807DA210  4B 87 32 BC */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807DA214  90 7F 14 00 */	stw r3, 0x1400(r31)
lbl_807DA218:
/* 807DA218  88 1F 14 2D */	lbz r0, 0x142d(r31)
/* 807DA21C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 807DA220  41 82 00 F8 */	beq lbl_807DA318
/* 807DA224  88 1F 07 9D */	lbz r0, 0x79d(r31)
/* 807DA228  7C 00 07 75 */	extsb. r0, r0
/* 807DA22C  41 82 00 24 */	beq lbl_807DA250
/* 807DA230  80 79 00 84 */	lwz r3, 0x84(r25)
/* 807DA234  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807DA238  38 63 04 80 */	addi r3, r3, 0x480
/* 807DA23C  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 807DA240  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 807DA244  80 84 00 00 */	lwz r4, 0(r4)
/* 807DA248  4B B6 C2 68 */	b PSMTXCopy
/* 807DA24C  48 00 00 20 */	b lbl_807DA26C
lbl_807DA250:
/* 807DA250  80 79 00 84 */	lwz r3, 0x84(r25)
/* 807DA254  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807DA258  38 63 03 F0 */	addi r3, r3, 0x3f0
/* 807DA25C  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 807DA260  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 807DA264  80 84 00 00 */	lwz r4, 0(r4)
/* 807DA268  4B B6 C2 48 */	b PSMTXCopy
lbl_807DA26C:
/* 807DA26C  38 61 00 40 */	addi r3, r1, 0x40
/* 807DA270  38 81 00 34 */	addi r4, r1, 0x34
/* 807DA274  4B A9 6C 78 */	b MtxPosition__FP4cXyzP4cXyz
/* 807DA278  7F A0 07 75 */	extsb. r0, r29
/* 807DA27C  41 82 00 0C */	beq lbl_807DA288
/* 807DA280  3B 80 00 01 */	li r28, 1
/* 807DA284  48 00 00 94 */	b lbl_807DA318
lbl_807DA288:
/* 807DA288  38 7F 13 F4 */	addi r3, r31, 0x13f4
/* 807DA28C  38 9F 14 14 */	addi r4, r31, 0x1414
/* 807DA290  38 A1 00 34 */	addi r5, r1, 0x34
/* 807DA294  38 DF 04 E4 */	addi r6, r31, 0x4e4
/* 807DA298  C0 3E 00 DC */	lfs f1, 0xdc(r30)
/* 807DA29C  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 807DA2A0  EC 21 00 32 */	fmuls f1, f1, f0
/* 807DA2A4  38 FF 01 0C */	addi r7, r31, 0x10c
/* 807DA2A8  39 00 00 00 */	li r8, 0
/* 807DA2AC  4B 84 2D 74 */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 807DA2B0  88 1F 14 2C */	lbz r0, 0x142c(r31)
/* 807DA2B4  28 00 00 00 */	cmplwi r0, 0
/* 807DA2B8  41 82 00 60 */	beq lbl_807DA318
/* 807DA2BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807DA2C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807DA2C4  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 807DA2C8  38 00 00 FF */	li r0, 0xff
/* 807DA2CC  90 01 00 08 */	stw r0, 8(r1)
/* 807DA2D0  38 80 00 00 */	li r4, 0
/* 807DA2D4  90 81 00 0C */	stw r4, 0xc(r1)
/* 807DA2D8  38 00 FF FF */	li r0, -1
/* 807DA2DC  90 01 00 10 */	stw r0, 0x10(r1)
/* 807DA2E0  90 81 00 14 */	stw r4, 0x14(r1)
/* 807DA2E4  90 81 00 18 */	stw r4, 0x18(r1)
/* 807DA2E8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807DA2EC  80 9F 14 04 */	lwz r4, 0x1404(r31)
/* 807DA2F0  38 A0 00 00 */	li r5, 0
/* 807DA2F4  3C C0 00 01 */	lis r6, 0x0001 /* 0x000080E3@ha */
/* 807DA2F8  38 C6 80 E3 */	addi r6, r6, 0x80E3 /* 0x000080E3@l */
/* 807DA2FC  38 E1 00 34 */	addi r7, r1, 0x34
/* 807DA300  39 00 00 00 */	li r8, 0
/* 807DA304  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 807DA308  39 40 00 00 */	li r10, 0
/* 807DA30C  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 807DA310  4B 87 31 BC */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807DA314  90 7F 14 04 */	stw r3, 0x1404(r31)
lbl_807DA318:
/* 807DA318  88 1F 14 2E */	lbz r0, 0x142e(r31)
/* 807DA31C  28 00 00 00 */	cmplwi r0, 0
/* 807DA320  41 82 00 88 */	beq lbl_807DA3A8
/* 807DA324  7F A0 07 75 */	extsb. r0, r29
/* 807DA328  41 82 00 0C */	beq lbl_807DA334
/* 807DA32C  3B 80 00 01 */	li r28, 1
/* 807DA330  48 00 00 78 */	b lbl_807DA3A8
lbl_807DA334:
/* 807DA334  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807DA338  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807DA33C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807DA340  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807DA344  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 807DA348  80 63 00 04 */	lwz r3, 4(r3)
/* 807DA34C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807DA350  80 83 00 0C */	lwz r4, 0xc(r3)
/* 807DA354  80 7F 06 88 */	lwz r3, 0x688(r31)
/* 807DA358  38 03 00 0B */	addi r0, r3, 0xb
/* 807DA35C  1C 00 00 30 */	mulli r0, r0, 0x30
/* 807DA360  7C 64 02 14 */	add r3, r4, r0
/* 807DA364  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 807DA368  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 807DA36C  80 84 00 00 */	lwz r4, 0(r4)
/* 807DA370  4B B6 C1 40 */	b PSMTXCopy
/* 807DA374  38 61 00 40 */	addi r3, r1, 0x40
/* 807DA378  38 81 00 34 */	addi r4, r1, 0x34
/* 807DA37C  4B A9 6B 70 */	b MtxPosition__FP4cXyzP4cXyz
/* 807DA380  38 7F 14 18 */	addi r3, r31, 0x1418
/* 807DA384  38 9F 14 1C */	addi r4, r31, 0x141c
/* 807DA388  38 A1 00 34 */	addi r5, r1, 0x34
/* 807DA38C  38 C0 00 00 */	li r6, 0
/* 807DA390  C0 3E 00 DC */	lfs f1, 0xdc(r30)
/* 807DA394  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 807DA398  EC 21 00 32 */	fmuls f1, f1, f0
/* 807DA39C  38 FF 01 0C */	addi r7, r31, 0x10c
/* 807DA3A0  39 00 00 01 */	li r8, 1
/* 807DA3A4  4B 84 2C 7C */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
lbl_807DA3A8:
/* 807DA3A8  7F 80 07 75 */	extsb. r0, r28
/* 807DA3AC  41 82 01 10 */	beq lbl_807DA4BC
/* 807DA3B0  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 807DA3B4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807DA3B8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807DA3BC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807DA3C0  38 61 00 20 */	addi r3, r1, 0x20
/* 807DA3C4  38 80 00 00 */	li r4, 0
/* 807DA3C8  38 A0 00 00 */	li r5, 0
/* 807DA3CC  38 C0 00 00 */	li r6, 0
/* 807DA3D0  4B A8 D0 24 */	b __ct__5csXyzFsss
/* 807DA3D4  3B 20 00 00 */	li r25, 0
/* 807DA3D8  3B 00 00 00 */	li r24, 0
/* 807DA3DC  3A E0 00 00 */	li r23, 0
/* 807DA3E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807DA3E4  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
lbl_807DA3E8:
/* 807DA3E8  88 1F 14 2C */	lbz r0, 0x142c(r31)
/* 807DA3EC  28 00 00 02 */	cmplwi r0, 2
/* 807DA3F0  40 82 00 60 */	bne lbl_807DA450
/* 807DA3F4  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 807DA3F8  38 00 00 FF */	li r0, 0xff
/* 807DA3FC  90 01 00 08 */	stw r0, 8(r1)
/* 807DA400  38 80 00 00 */	li r4, 0
/* 807DA404  90 81 00 0C */	stw r4, 0xc(r1)
/* 807DA408  38 00 FF FF */	li r0, -1
/* 807DA40C  90 01 00 10 */	stw r0, 0x10(r1)
/* 807DA410  90 81 00 14 */	stw r4, 0x14(r1)
/* 807DA414  90 81 00 18 */	stw r4, 0x18(r1)
/* 807DA418  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807DA41C  3A D7 14 20 */	addi r22, r23, 0x1420
/* 807DA420  7C 9F B0 2E */	lwzx r4, r31, r22
/* 807DA424  38 A0 00 00 */	li r5, 0
/* 807DA428  38 DA 00 C0 */	addi r6, r26, 0xc0
/* 807DA42C  7C C6 C2 2E */	lhzx r6, r6, r24
/* 807DA430  38 E1 00 34 */	addi r7, r1, 0x34
/* 807DA434  39 1F 01 0C */	addi r8, r31, 0x10c
/* 807DA438  39 21 00 20 */	addi r9, r1, 0x20
/* 807DA43C  39 41 00 28 */	addi r10, r1, 0x28
/* 807DA440  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 807DA444  4B 87 30 88 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807DA448  7C 7F B1 2E */	stwx r3, r31, r22
/* 807DA44C  48 00 00 5C */	b lbl_807DA4A8
lbl_807DA450:
/* 807DA450  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 807DA454  38 00 00 FF */	li r0, 0xff
/* 807DA458  90 01 00 08 */	stw r0, 8(r1)
/* 807DA45C  38 80 00 00 */	li r4, 0
/* 807DA460  90 81 00 0C */	stw r4, 0xc(r1)
/* 807DA464  38 00 FF FF */	li r0, -1
/* 807DA468  90 01 00 10 */	stw r0, 0x10(r1)
/* 807DA46C  90 81 00 14 */	stw r4, 0x14(r1)
/* 807DA470  90 81 00 18 */	stw r4, 0x18(r1)
/* 807DA474  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807DA478  3A D7 14 20 */	addi r22, r23, 0x1420
/* 807DA47C  7C 9F B0 2E */	lwzx r4, r31, r22
/* 807DA480  38 A0 00 00 */	li r5, 0
/* 807DA484  38 DA 00 B8 */	addi r6, r26, 0xb8
/* 807DA488  7C C6 C2 2E */	lhzx r6, r6, r24
/* 807DA48C  38 E1 00 34 */	addi r7, r1, 0x34
/* 807DA490  39 1F 01 0C */	addi r8, r31, 0x10c
/* 807DA494  39 21 00 20 */	addi r9, r1, 0x20
/* 807DA498  39 41 00 28 */	addi r10, r1, 0x28
/* 807DA49C  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 807DA4A0  4B 87 30 2C */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807DA4A4  7C 7F B1 2E */	stwx r3, r31, r22
lbl_807DA4A8:
/* 807DA4A8  3B 39 00 01 */	addi r25, r25, 1
/* 807DA4AC  2C 19 00 03 */	cmpwi r25, 3
/* 807DA4B0  3B 18 00 02 */	addi r24, r24, 2
/* 807DA4B4  3A F7 00 04 */	addi r23, r23, 4
/* 807DA4B8  41 80 FF 30 */	blt lbl_807DA3E8
lbl_807DA4BC:
/* 807DA4BC  7F A0 07 75 */	extsb. r0, r29
/* 807DA4C0  41 82 00 D0 */	beq lbl_807DA590
/* 807DA4C4  88 1F 17 21 */	lbz r0, 0x1721(r31)
/* 807DA4C8  7C 00 07 75 */	extsb. r0, r0
/* 807DA4CC  41 82 00 C4 */	beq lbl_807DA590
/* 807DA4D0  88 1B 02 78 */	lbz r0, 0x278(r27)
/* 807DA4D4  7C 00 07 75 */	extsb. r0, r0
/* 807DA4D8  40 82 00 30 */	bne lbl_807DA508
/* 807DA4DC  C0 1E 01 FC */	lfs f0, 0x1fc(r30)
/* 807DA4E0  D0 1B 02 7C */	stfs f0, 0x27c(r27)
/* 807DA4E4  38 7B 02 7C */	addi r3, r27, 0x27c
/* 807DA4E8  D0 03 00 04 */	stfs f0, 4(r3)
/* 807DA4EC  D0 03 00 08 */	stfs f0, 8(r3)
/* 807DA4F0  3C 80 80 7D */	lis r4, __dt__4cXyzFv@ha
/* 807DA4F4  38 84 2B 48 */	addi r4, r4, __dt__4cXyzFv@l
/* 807DA4F8  38 BB 02 6C */	addi r5, r27, 0x26c
/* 807DA4FC  4B FF 7F 1D */	bl __register_global_object
/* 807DA500  38 00 00 01 */	li r0, 1
/* 807DA504  98 1B 02 78 */	stb r0, 0x278(r27)
lbl_807DA508:
/* 807DA508  3B A0 00 00 */	li r29, 0
/* 807DA50C  3B 20 00 00 */	li r25, 0
/* 807DA510  3B 80 00 00 */	li r28, 0
/* 807DA514  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807DA518  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 807DA51C  3A FA 00 C8 */	addi r23, r26, 0xc8
lbl_807DA520:
/* 807DA520  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 807DA524  38 00 00 FF */	li r0, 0xff
/* 807DA528  90 01 00 08 */	stw r0, 8(r1)
/* 807DA52C  38 80 00 00 */	li r4, 0
/* 807DA530  90 81 00 0C */	stw r4, 0xc(r1)
/* 807DA534  38 00 FF FF */	li r0, -1
/* 807DA538  90 01 00 10 */	stw r0, 0x10(r1)
/* 807DA53C  90 81 00 14 */	stw r4, 0x14(r1)
/* 807DA540  90 81 00 18 */	stw r4, 0x18(r1)
/* 807DA544  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807DA548  3A DC 17 D0 */	addi r22, r28, 0x17d0
/* 807DA54C  7C 9F B0 2E */	lwzx r4, r31, r22
/* 807DA550  38 A0 00 00 */	li r5, 0
/* 807DA554  7C D7 CA 2E */	lhzx r6, r23, r25
/* 807DA558  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 807DA55C  39 1F 01 0C */	addi r8, r31, 0x10c
/* 807DA560  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 807DA564  39 5B 02 7C */	addi r10, r27, 0x27c
/* 807DA568  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 807DA56C  4B 87 2F 60 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807DA570  7C 7F B1 2E */	stwx r3, r31, r22
/* 807DA574  3B BD 00 01 */	addi r29, r29, 1
/* 807DA578  2C 1D 00 04 */	cmpwi r29, 4
/* 807DA57C  3B 39 00 02 */	addi r25, r25, 2
/* 807DA580  3B 9C 00 04 */	addi r28, r28, 4
/* 807DA584  41 80 FF 9C */	blt lbl_807DA520
/* 807DA588  38 00 00 00 */	li r0, 0
/* 807DA58C  98 1F 17 21 */	stb r0, 0x1721(r31)
lbl_807DA590:
/* 807DA590  38 00 00 00 */	li r0, 0
/* 807DA594  98 1F 14 2C */	stb r0, 0x142c(r31)
/* 807DA598  98 1F 14 2D */	stb r0, 0x142d(r31)
/* 807DA59C  98 1F 14 2E */	stb r0, 0x142e(r31)
/* 807DA5A0  38 61 00 4C */	addi r3, r1, 0x4c
/* 807DA5A4  38 80 FF FF */	li r4, -1
/* 807DA5A8  4B 89 D2 A0 */	b __dt__18dBgS_ObjGndChk_SplFv
/* 807DA5AC  38 61 00 A0 */	addi r3, r1, 0xa0
/* 807DA5B0  38 80 FF FF */	li r4, -1
/* 807DA5B4  4B 89 D0 3C */	b __dt__11dBgS_GndChkFv
/* 807DA5B8  E3 E1 01 28 */	psq_l f31, 296(r1), 0, 0 /* qr0 */
/* 807DA5BC  CB E1 01 20 */	lfd f31, 0x120(r1)
/* 807DA5C0  39 61 01 20 */	addi r11, r1, 0x120
/* 807DA5C4  4B B8 7C 48 */	b _restgpr_22
/* 807DA5C8  80 01 01 34 */	lwz r0, 0x134(r1)
/* 807DA5CC  7C 08 03 A6 */	mtlr r0
/* 807DA5D0  38 21 01 30 */	addi r1, r1, 0x130
/* 807DA5D4  4E 80 00 20 */	blr 
