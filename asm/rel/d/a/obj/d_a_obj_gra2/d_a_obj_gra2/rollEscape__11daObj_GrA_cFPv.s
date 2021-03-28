lbl_80C09918:
/* 80C09918  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80C0991C  7C 08 02 A6 */	mflr r0
/* 80C09920  90 01 00 94 */	stw r0, 0x94(r1)
/* 80C09924  39 61 00 90 */	addi r11, r1, 0x90
/* 80C09928  4B 75 88 B0 */	b _savegpr_28
/* 80C0992C  7C 7C 1B 78 */	mr r28, r3
/* 80C09930  3C 60 80 C1 */	lis r3, m__17daObj_GrA_Param_c@ha
/* 80C09934  3B A3 FA 7C */	addi r29, r3, m__17daObj_GrA_Param_c@l
/* 80C09938  A0 1C 0A 7C */	lhz r0, 0xa7c(r28)
/* 80C0993C  2C 00 00 01 */	cmpwi r0, 1
/* 80C09940  41 82 00 68 */	beq lbl_80C099A8
/* 80C09944  40 80 00 10 */	bge lbl_80C09954
/* 80C09948  2C 00 00 00 */	cmpwi r0, 0
/* 80C0994C  40 80 00 14 */	bge lbl_80C09960
/* 80C09950  48 00 05 94 */	b lbl_80C09EE4
lbl_80C09954:
/* 80C09954  2C 00 00 03 */	cmpwi r0, 3
/* 80C09958  40 80 05 8C */	bge lbl_80C09EE4
/* 80C0995C  48 00 05 6C */	b lbl_80C09EC8
lbl_80C09960:
/* 80C09960  38 00 00 00 */	li r0, 0
/* 80C09964  98 1C 20 05 */	stb r0, 0x2005(r28)
/* 80C09968  80 7C 07 54 */	lwz r3, 0x754(r28)
/* 80C0996C  A8 03 00 14 */	lha r0, 0x14(r3)
/* 80C09970  C8 3D 01 30 */	lfd f1, 0x130(r29)
/* 80C09974  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C09978  90 01 00 74 */	stw r0, 0x74(r1)
/* 80C0997C  3C 00 43 30 */	lis r0, 0x4330
/* 80C09980  90 01 00 70 */	stw r0, 0x70(r1)
/* 80C09984  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 80C09988  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C0998C  FC 00 00 1E */	fctiwz f0, f0
/* 80C09990  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 80C09994  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 80C09998  B0 03 00 16 */	sth r0, 0x16(r3)
/* 80C0999C  38 00 00 01 */	li r0, 1
/* 80C099A0  90 1C 20 9C */	stw r0, 0x209c(r28)
/* 80C099A4  48 00 05 40 */	b lbl_80C09EE4
lbl_80C099A8:
/* 80C099A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C099AC  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80C099B0  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 80C099B4  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80C099B8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80C099BC  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80C099C0  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80C099C4  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80C099C8  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80C099CC  38 61 00 48 */	addi r3, r1, 0x48
/* 80C099D0  38 81 00 60 */	addi r4, r1, 0x60
/* 80C099D4  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80C099D8  4B 65 D1 5C */	b __mi__4cXyzCFRC3Vec
/* 80C099DC  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80C099E0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C099E4  C0 1D 01 1C */	lfs f0, 0x11c(r29)
/* 80C099E8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C099EC  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80C099F0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C099F4  38 61 00 0C */	addi r3, r1, 0xc
/* 80C099F8  4B 73 D7 40 */	b PSVECSquareMag
/* 80C099FC  C0 1D 01 1C */	lfs f0, 0x11c(r29)
/* 80C09A00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C09A04  40 81 00 58 */	ble lbl_80C09A5C
/* 80C09A08  FC 00 08 34 */	frsqrte f0, f1
/* 80C09A0C  C8 9D 01 50 */	lfd f4, 0x150(r29)
/* 80C09A10  FC 44 00 32 */	fmul f2, f4, f0
/* 80C09A14  C8 7D 01 58 */	lfd f3, 0x158(r29)
/* 80C09A18  FC 00 00 32 */	fmul f0, f0, f0
/* 80C09A1C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C09A20  FC 03 00 28 */	fsub f0, f3, f0
/* 80C09A24  FC 02 00 32 */	fmul f0, f2, f0
/* 80C09A28  FC 44 00 32 */	fmul f2, f4, f0
/* 80C09A2C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C09A30  FC 01 00 32 */	fmul f0, f1, f0
/* 80C09A34  FC 03 00 28 */	fsub f0, f3, f0
/* 80C09A38  FC 02 00 32 */	fmul f0, f2, f0
/* 80C09A3C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C09A40  FC 00 00 32 */	fmul f0, f0, f0
/* 80C09A44  FC 01 00 32 */	fmul f0, f1, f0
/* 80C09A48  FC 03 00 28 */	fsub f0, f3, f0
/* 80C09A4C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C09A50  FC 21 00 32 */	fmul f1, f1, f0
/* 80C09A54  FC 20 08 18 */	frsp f1, f1
/* 80C09A58  48 00 00 88 */	b lbl_80C09AE0
lbl_80C09A5C:
/* 80C09A5C  C8 1D 01 60 */	lfd f0, 0x160(r29)
/* 80C09A60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C09A64  40 80 00 10 */	bge lbl_80C09A74
/* 80C09A68  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C09A6C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80C09A70  48 00 00 70 */	b lbl_80C09AE0
lbl_80C09A74:
/* 80C09A74  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C09A78  80 81 00 08 */	lwz r4, 8(r1)
/* 80C09A7C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C09A80  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C09A84  7C 03 00 00 */	cmpw r3, r0
/* 80C09A88  41 82 00 14 */	beq lbl_80C09A9C
/* 80C09A8C  40 80 00 40 */	bge lbl_80C09ACC
/* 80C09A90  2C 03 00 00 */	cmpwi r3, 0
/* 80C09A94  41 82 00 20 */	beq lbl_80C09AB4
/* 80C09A98  48 00 00 34 */	b lbl_80C09ACC
lbl_80C09A9C:
/* 80C09A9C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C09AA0  41 82 00 0C */	beq lbl_80C09AAC
/* 80C09AA4  38 00 00 01 */	li r0, 1
/* 80C09AA8  48 00 00 28 */	b lbl_80C09AD0
lbl_80C09AAC:
/* 80C09AAC  38 00 00 02 */	li r0, 2
/* 80C09AB0  48 00 00 20 */	b lbl_80C09AD0
lbl_80C09AB4:
/* 80C09AB4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C09AB8  41 82 00 0C */	beq lbl_80C09AC4
/* 80C09ABC  38 00 00 05 */	li r0, 5
/* 80C09AC0  48 00 00 10 */	b lbl_80C09AD0
lbl_80C09AC4:
/* 80C09AC4  38 00 00 03 */	li r0, 3
/* 80C09AC8  48 00 00 08 */	b lbl_80C09AD0
lbl_80C09ACC:
/* 80C09ACC  38 00 00 04 */	li r0, 4
lbl_80C09AD0:
/* 80C09AD0  2C 00 00 01 */	cmpwi r0, 1
/* 80C09AD4  40 82 00 0C */	bne lbl_80C09AE0
/* 80C09AD8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C09ADC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80C09AE0:
/* 80C09AE0  C0 1D 02 BC */	lfs f0, 0x2bc(r29)
/* 80C09AE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C09AE8  4C 40 13 82 */	cror 2, 0, 2
/* 80C09AEC  40 82 00 4C */	bne lbl_80C09B38
/* 80C09AF0  88 1C 20 05 */	lbz r0, 0x2005(r28)
/* 80C09AF4  2C 00 00 02 */	cmpwi r0, 2
/* 80C09AF8  41 82 00 C8 */	beq lbl_80C09BC0
/* 80C09AFC  C0 3D 01 1C */	lfs f1, 0x11c(r29)
/* 80C09B00  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80C09B04  C0 1D 01 18 */	lfs f0, 0x118(r29)
/* 80C09B08  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80C09B0C  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80C09B10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C09B14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C09B18  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C09B1C  38 80 00 02 */	li r4, 2
/* 80C09B20  38 A0 00 0F */	li r5, 0xf
/* 80C09B24  38 C1 00 3C */	addi r6, r1, 0x3c
/* 80C09B28  4B 46 5F E8 */	b StartQuake__12dVibration_cFii4cXyz
/* 80C09B2C  38 00 00 02 */	li r0, 2
/* 80C09B30  98 1C 20 05 */	stb r0, 0x2005(r28)
/* 80C09B34  48 00 00 8C */	b lbl_80C09BC0
lbl_80C09B38:
/* 80C09B38  C0 1D 02 C0 */	lfs f0, 0x2c0(r29)
/* 80C09B3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C09B40  4C 40 13 82 */	cror 2, 0, 2
/* 80C09B44  40 82 00 4C */	bne lbl_80C09B90
/* 80C09B48  88 1C 20 05 */	lbz r0, 0x2005(r28)
/* 80C09B4C  2C 00 00 01 */	cmpwi r0, 1
/* 80C09B50  41 82 00 70 */	beq lbl_80C09BC0
/* 80C09B54  C0 3D 01 1C */	lfs f1, 0x11c(r29)
/* 80C09B58  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80C09B5C  C0 1D 01 18 */	lfs f0, 0x118(r29)
/* 80C09B60  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C09B64  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80C09B68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C09B6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C09B70  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C09B74  38 80 00 01 */	li r4, 1
/* 80C09B78  38 A0 00 0F */	li r5, 0xf
/* 80C09B7C  38 C1 00 30 */	addi r6, r1, 0x30
/* 80C09B80  4B 46 5F 90 */	b StartQuake__12dVibration_cFii4cXyz
/* 80C09B84  38 00 00 01 */	li r0, 1
/* 80C09B88  98 1C 20 05 */	stb r0, 0x2005(r28)
/* 80C09B8C  48 00 00 34 */	b lbl_80C09BC0
lbl_80C09B90:
/* 80C09B90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C09B94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C09B98  3B E3 5B D4 */	addi r31, r3, 0x5bd4
/* 80C09B9C  7F E3 FB 78 */	mr r3, r31
/* 80C09BA0  4B 46 62 BC */	b CheckQuake__12dVibration_cFv
/* 80C09BA4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C09BA8  41 82 00 10 */	beq lbl_80C09BB8
/* 80C09BAC  7F E3 FB 78 */	mr r3, r31
/* 80C09BB0  38 80 00 1F */	li r4, 0x1f
/* 80C09BB4  4B 46 61 E0 */	b StopQuake__12dVibration_cFi
lbl_80C09BB8:
/* 80C09BB8  38 00 00 00 */	li r0, 0
/* 80C09BBC  98 1C 20 05 */	stb r0, 0x2005(r28)
lbl_80C09BC0:
/* 80C09BC0  7F 83 E3 78 */	mr r3, r28
/* 80C09BC4  48 00 03 45 */	bl rollLanding__11daObj_GrA_cFv
/* 80C09BC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C09BCC  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80C09BD0  88 7F 4F AD */	lbz r3, 0x4fad(r31)
/* 80C09BD4  28 03 00 00 */	cmplwi r3, 0
/* 80C09BD8  41 82 00 20 */	beq lbl_80C09BF8
/* 80C09BDC  38 00 00 00 */	li r0, 0
/* 80C09BE0  41 82 00 0C */	beq lbl_80C09BEC
/* 80C09BE4  28 03 00 02 */	cmplwi r3, 2
/* 80C09BE8  40 82 00 08 */	bne lbl_80C09BF0
lbl_80C09BEC:
/* 80C09BEC  38 00 00 01 */	li r0, 1
lbl_80C09BF0:
/* 80C09BF0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80C09BF4  41 82 00 A8 */	beq lbl_80C09C9C
lbl_80C09BF8:
/* 80C09BF8  3C 60 80 45 */	lis r3, g_dComIfGoat_gameInfo@ha
/* 80C09BFC  84 03 06 18 */	lwzu r0, g_dComIfGoat_gameInfo@l(r3)
/* 80C09C00  7C 00 E0 40 */	cmplw r0, r28
/* 80C09C04  40 82 00 30 */	bne lbl_80C09C34
/* 80C09C08  38 00 00 00 */	li r0, 0
/* 80C09C0C  90 03 00 00 */	stw r0, 0(r3)
/* 80C09C10  88 1C 1F E8 */	lbz r0, 0x1fe8(r28)
/* 80C09C14  7C 00 07 75 */	extsb. r0, r0
/* 80C09C18  40 82 00 1C */	bne lbl_80C09C34
/* 80C09C1C  38 00 00 03 */	li r0, 3
/* 80C09C20  B0 1C 20 54 */	sth r0, 0x2054(r28)
/* 80C09C24  7F 83 E3 78 */	mr r3, r28
/* 80C09C28  48 00 1D 85 */	bl graThrowDemo__11daObj_GrA_cFv
/* 80C09C2C  38 60 00 52 */	li r3, 0x52
/* 80C09C30  4B 54 BA 44 */	b daNpcF_onEvtBit__FUl
lbl_80C09C34:
/* 80C09C34  88 1C 20 30 */	lbz r0, 0x2030(r28)
/* 80C09C38  28 00 00 01 */	cmplwi r0, 1
/* 80C09C3C  40 82 00 60 */	bne lbl_80C09C9C
/* 80C09C40  88 1C 20 05 */	lbz r0, 0x2005(r28)
/* 80C09C44  7C 00 07 75 */	extsb. r0, r0
/* 80C09C48  40 82 00 54 */	bne lbl_80C09C9C
/* 80C09C4C  7F 83 E3 78 */	mr r3, r28
/* 80C09C50  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80C09C54  4B 41 31 A8 */	b fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80C09C58  2C 03 00 00 */	cmpwi r3, 0
/* 80C09C5C  40 82 00 10 */	bne lbl_80C09C6C
/* 80C09C60  80 1C 04 A0 */	lwz r0, 0x4a0(r28)
/* 80C09C64  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80C09C68  41 82 00 34 */	beq lbl_80C09C9C
lbl_80C09C6C:
/* 80C09C6C  3B BF 5B D4 */	addi r29, r31, 0x5bd4
/* 80C09C70  7F A3 EB 78 */	mr r3, r29
/* 80C09C74  4B 46 61 E8 */	b CheckQuake__12dVibration_cFv
/* 80C09C78  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C09C7C  41 82 00 10 */	beq lbl_80C09C8C
/* 80C09C80  7F A3 EB 78 */	mr r3, r29
/* 80C09C84  38 80 00 1F */	li r4, 0x1f
/* 80C09C88  4B 46 61 0C */	b StopQuake__12dVibration_cFi
lbl_80C09C8C:
/* 80C09C8C  7F 83 E3 78 */	mr r3, r28
/* 80C09C90  4B 40 FF EC */	b fopAcM_delete__FP10fopAc_ac_c
/* 80C09C94  38 60 00 01 */	li r3, 1
/* 80C09C98  48 00 02 58 */	b lbl_80C09EF0
lbl_80C09C9C:
/* 80C09C9C  3B C0 00 00 */	li r30, 0
/* 80C09CA0  38 7C 15 28 */	addi r3, r28, 0x1528
/* 80C09CA4  4B 54 3D 04 */	b isPath__16daBaseNpc_path_cFv
/* 80C09CA8  2C 03 00 00 */	cmpwi r3, 0
/* 80C09CAC  41 82 00 58 */	beq lbl_80C09D04
/* 80C09CB0  48 00 00 48 */	b lbl_80C09CF8
lbl_80C09CB4:
/* 80C09CB4  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80C09CB8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C09CBC  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80C09CC0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C09CC4  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80C09CC8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C09CCC  38 7C 15 28 */	addi r3, r28, 0x1528
/* 80C09CD0  38 81 00 24 */	addi r4, r1, 0x24
/* 80C09CD4  4B 54 3D 90 */	b chkPnt__16daBaseNpc_path_cF4cXyz
/* 80C09CD8  7C 60 00 34 */	cntlzw r0, r3
/* 80C09CDC  54 00 DE 3F */	rlwinm. r0, r0, 0x1b, 0x18, 0x1f
/* 80C09CE0  40 82 00 28 */	bne lbl_80C09D08
/* 80C09CE4  38 7C 15 28 */	addi r3, r28, 0x1528
/* 80C09CE8  4B 54 3D DC */	b setNextPnt__16daBaseNpc_path_cFv
/* 80C09CEC  2C 03 00 00 */	cmpwi r3, 0
/* 80C09CF0  41 82 00 08 */	beq lbl_80C09CF8
/* 80C09CF4  3B C0 00 01 */	li r30, 1
lbl_80C09CF8:
/* 80C09CF8  2C 1E 00 00 */	cmpwi r30, 0
/* 80C09CFC  41 82 FF B8 */	beq lbl_80C09CB4
/* 80C09D00  48 00 00 08 */	b lbl_80C09D08
lbl_80C09D04:
/* 80C09D04  3B C0 00 01 */	li r30, 1
lbl_80C09D08:
/* 80C09D08  2C 1E 00 00 */	cmpwi r30, 0
/* 80C09D0C  40 82 00 C4 */	bne lbl_80C09DD0
/* 80C09D10  38 7C 15 28 */	addi r3, r28, 0x1528
/* 80C09D14  4B 54 3D F0 */	b getIdx__16daBaseNpc_path_cFv
/* 80C09D18  54 65 04 3E */	clrlwi r5, r3, 0x10
/* 80C09D1C  38 61 00 18 */	addi r3, r1, 0x18
/* 80C09D20  38 9C 15 28 */	addi r4, r28, 0x1528
/* 80C09D24  4B 54 3D F0 */	b getPntPos__16daBaseNpc_path_cFUs
/* 80C09D28  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80C09D2C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80C09D30  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80C09D34  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80C09D38  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80C09D3C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80C09D40  AB DC 04 DE */	lha r30, 0x4de(r28)
/* 80C09D44  7F 83 E3 78 */	mr r3, r28
/* 80C09D48  4B FF DF A9 */	bl getSpeed__11daObj_GrA_cFv
/* 80C09D4C  38 7C 05 2C */	addi r3, r28, 0x52c
/* 80C09D50  38 9D 00 00 */	addi r4, r29, 0
/* 80C09D54  C0 44 00 A8 */	lfs f2, 0xa8(r4)
/* 80C09D58  4B 66 69 E8 */	b cLib_chaseF__FPfff
/* 80C09D5C  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80C09D60  38 81 00 54 */	addi r4, r1, 0x54
/* 80C09D64  4B 66 6E A0 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80C09D68  7C 64 1B 78 */	mr r4, r3
/* 80C09D6C  38 7C 04 DE */	addi r3, r28, 0x4de
/* 80C09D70  38 A0 00 08 */	li r5, 8
/* 80C09D74  A8 DC 1F 3C */	lha r6, 0x1f3c(r28)
/* 80C09D78  4B 66 68 90 */	b cLib_addCalcAngleS2__FPssss
/* 80C09D7C  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80C09D80  7C 7E 00 50 */	subf r3, r30, r0
/* 80C09D84  4B 75 B3 4C */	b abs
/* 80C09D88  B0 7C 1F 3C */	sth r3, 0x1f3c(r28)
/* 80C09D8C  38 7C 1F 3C */	addi r3, r28, 0x1f3c
/* 80C09D90  38 9D 00 00 */	addi r4, r29, 0
/* 80C09D94  A8 84 00 88 */	lha r4, 0x88(r4)
/* 80C09D98  38 A0 00 08 */	li r5, 8
/* 80C09D9C  38 C0 00 40 */	li r6, 0x40
/* 80C09DA0  4B 66 68 68 */	b cLib_addCalcAngleS2__FPssss
/* 80C09DA4  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 80C09DA8  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 80C09DAC  3C 84 00 01 */	addis r4, r4, 1
/* 80C09DB0  38 04 80 00 */	addi r0, r4, -32768
/* 80C09DB4  7C 04 07 34 */	extsh r4, r0
/* 80C09DB8  38 A0 00 08 */	li r5, 8
/* 80C09DBC  38 C0 10 00 */	li r6, 0x1000
/* 80C09DC0  4B 66 68 48 */	b cLib_addCalcAngleS2__FPssss
/* 80C09DC4  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80C09DC8  B0 1C 09 1C */	sth r0, 0x91c(r28)
/* 80C09DCC  48 00 00 C4 */	b lbl_80C09E90
lbl_80C09DD0:
/* 80C09DD0  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 80C09DD4  FC 00 02 10 */	fabs f0, f0
/* 80C09DD8  FC 20 00 18 */	frsp f1, f0
/* 80C09DDC  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha
/* 80C09DE0  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)
/* 80C09DE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C09DE8  40 80 00 2C */	bge lbl_80C09E14
/* 80C09DEC  C0 1D 01 1C */	lfs f0, 0x11c(r29)
/* 80C09DF0  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80C09DF4  80 1C 05 98 */	lwz r0, 0x598(r28)
/* 80C09DF8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80C09DFC  41 82 00 94 */	beq lbl_80C09E90
/* 80C09E00  7F 83 E3 78 */	mr r3, r28
/* 80C09E04  48 00 2F B9 */	bl modeChangeCheck__11daObj_GrA_cFv
/* 80C09E08  2C 03 00 00 */	cmpwi r3, 0
/* 80C09E0C  40 82 00 D8 */	bne lbl_80C09EE4
/* 80C09E10  48 00 00 80 */	b lbl_80C09E90
lbl_80C09E14:
/* 80C09E14  38 7C 05 2C */	addi r3, r28, 0x52c
/* 80C09E18  C0 3D 01 1C */	lfs f1, 0x11c(r29)
/* 80C09E1C  C0 5D 02 4C */	lfs f2, 0x24c(r29)
/* 80C09E20  C0 7D 02 50 */	lfs f3, 0x250(r29)
/* 80C09E24  4B 66 5C 18 */	b cLib_addCalc2__FPffff
/* 80C09E28  80 7C 07 54 */	lwz r3, 0x754(r28)
/* 80C09E2C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80C09E30  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80C09E34  41 82 00 10 */	beq lbl_80C09E44
/* 80C09E38  C0 1D 01 1C */	lfs f0, 0x11c(r29)
/* 80C09E3C  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80C09E40  48 00 00 18 */	b lbl_80C09E58
lbl_80C09E44:
/* 80C09E44  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 80C09E48  C0 1D 01 18 */	lfs f0, 0x118(r29)
/* 80C09E4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C09E50  40 80 00 08 */	bge lbl_80C09E58
/* 80C09E54  D0 1C 05 2C */	stfs f0, 0x52c(r28)
lbl_80C09E58:
/* 80C09E58  80 7C 07 54 */	lwz r3, 0x754(r28)
/* 80C09E5C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80C09E60  C0 1D 02 60 */	lfs f0, 0x260(r29)
/* 80C09E64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C09E68  40 80 00 28 */	bge lbl_80C09E90
/* 80C09E6C  C0 1D 01 1C */	lfs f0, 0x11c(r29)
/* 80C09E70  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80C09E74  80 1C 05 98 */	lwz r0, 0x598(r28)
/* 80C09E78  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80C09E7C  41 82 00 14 */	beq lbl_80C09E90
/* 80C09E80  7F 83 E3 78 */	mr r3, r28
/* 80C09E84  48 00 2F 39 */	bl modeChangeCheck__11daObj_GrA_cFv
/* 80C09E88  2C 03 00 00 */	cmpwi r3, 0
/* 80C09E8C  40 82 00 58 */	bne lbl_80C09EE4
lbl_80C09E90:
/* 80C09E90  C0 1D 02 AC */	lfs f0, 0x2ac(r29)
/* 80C09E94  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 80C09E98  EC 40 00 72 */	fmuls f2, f0, f1
/* 80C09E9C  FC 00 0A 10 */	fabs f0, f1
/* 80C09EA0  FC 20 00 18 */	frsp f1, f0
/* 80C09EA4  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha
/* 80C09EA8  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)
/* 80C09EAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C09EB0  40 80 00 08 */	bge lbl_80C09EB8
/* 80C09EB4  C0 5D 01 1C */	lfs f2, 0x11c(r29)
lbl_80C09EB8:
/* 80C09EB8  FC 00 10 50 */	fneg f0, f2
/* 80C09EBC  80 7C 07 54 */	lwz r3, 0x754(r28)
/* 80C09EC0  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C09EC4  48 00 00 20 */	b lbl_80C09EE4
lbl_80C09EC8:
/* 80C09EC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C09ECC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C09ED0  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C09ED4  38 80 00 1F */	li r4, 0x1f
/* 80C09ED8  4B 46 5E BC */	b StopQuake__12dVibration_cFi
/* 80C09EDC  38 00 00 00 */	li r0, 0
/* 80C09EE0  90 1C 20 9C */	stw r0, 0x209c(r28)
lbl_80C09EE4:
/* 80C09EE4  7F 83 E3 78 */	mr r3, r28
/* 80C09EE8  48 00 1A C5 */	bl graThrowDemo__11daObj_GrA_cFv
/* 80C09EEC  38 60 00 01 */	li r3, 1
lbl_80C09EF0:
/* 80C09EF0  39 61 00 90 */	addi r11, r1, 0x90
/* 80C09EF4  4B 75 83 30 */	b _restgpr_28
/* 80C09EF8  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80C09EFC  7C 08 03 A6 */	mtlr r0
/* 80C09F00  38 21 00 90 */	addi r1, r1, 0x90
/* 80C09F04  4E 80 00 20 */	blr 
