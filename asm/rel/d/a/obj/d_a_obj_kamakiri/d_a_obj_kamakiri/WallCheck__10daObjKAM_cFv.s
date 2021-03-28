lbl_80C35970:
/* 80C35970  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80C35974  7C 08 02 A6 */	mflr r0
/* 80C35978  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80C3597C  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80C35980  4B 72 C8 5C */	b _savegpr_29
/* 80C35984  7C 7F 1B 78 */	mr r31, r3
/* 80C35988  3C 60 80 C4 */	lis r3, lit_3775@ha
/* 80C3598C  3B C3 84 08 */	addi r30, r3, lit_3775@l
/* 80C35990  38 61 00 38 */	addi r3, r1, 0x38
/* 80C35994  4B 44 22 D4 */	b __ct__11dBgS_LinChkFv
/* 80C35998  38 61 00 90 */	addi r3, r1, 0x90
/* 80C3599C  4B 44 34 CC */	b SetObj__16dBgS_PolyPassChkFv
/* 80C359A0  38 61 00 38 */	addi r3, r1, 0x38
/* 80C359A4  38 9F 04 BC */	addi r4, r31, 0x4bc
/* 80C359A8  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C359AC  38 C0 00 00 */	li r6, 0
/* 80C359B0  4B 44 23 B4 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80C359B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C359B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C359BC  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80C359C0  7F A3 EB 78 */	mr r3, r29
/* 80C359C4  38 81 00 38 */	addi r4, r1, 0x38
/* 80C359C8  4B 43 E9 EC */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80C359CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C359D0  41 82 01 A4 */	beq lbl_80C35B74
/* 80C359D4  3C 60 80 C4 */	lis r3, __vt__8cM3dGPla@ha
/* 80C359D8  38 03 85 A4 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80C359DC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C359E0  7F A3 EB 78 */	mr r3, r29
/* 80C359E4  38 81 00 4C */	addi r4, r1, 0x4c
/* 80C359E8  38 A1 00 24 */	addi r5, r1, 0x24
/* 80C359EC  4B 43 ED 58 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80C359F0  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80C359F4  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80C359F8  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80C359FC  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80C35A00  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80C35A04  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80C35A08  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80C35A0C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C35A10  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C35A14  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C35A18  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C35A1C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80C35A20  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C35A24  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80C35A28  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C35A2C  38 61 00 18 */	addi r3, r1, 0x18
/* 80C35A30  38 81 00 0C */	addi r4, r1, 0xc
/* 80C35A34  4B 71 19 68 */	b PSVECSquareDistance
/* 80C35A38  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80C35A3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C35A40  40 81 00 58 */	ble lbl_80C35A98
/* 80C35A44  FC 00 08 34 */	frsqrte f0, f1
/* 80C35A48  C8 9E 00 68 */	lfd f4, 0x68(r30)
/* 80C35A4C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C35A50  C8 7E 00 70 */	lfd f3, 0x70(r30)
/* 80C35A54  FC 00 00 32 */	fmul f0, f0, f0
/* 80C35A58  FC 01 00 32 */	fmul f0, f1, f0
/* 80C35A5C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C35A60  FC 02 00 32 */	fmul f0, f2, f0
/* 80C35A64  FC 44 00 32 */	fmul f2, f4, f0
/* 80C35A68  FC 00 00 32 */	fmul f0, f0, f0
/* 80C35A6C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C35A70  FC 03 00 28 */	fsub f0, f3, f0
/* 80C35A74  FC 02 00 32 */	fmul f0, f2, f0
/* 80C35A78  FC 44 00 32 */	fmul f2, f4, f0
/* 80C35A7C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C35A80  FC 01 00 32 */	fmul f0, f1, f0
/* 80C35A84  FC 03 00 28 */	fsub f0, f3, f0
/* 80C35A88  FC 02 00 32 */	fmul f0, f2, f0
/* 80C35A8C  FC 41 00 32 */	fmul f2, f1, f0
/* 80C35A90  FC 40 10 18 */	frsp f2, f2
/* 80C35A94  48 00 00 90 */	b lbl_80C35B24
lbl_80C35A98:
/* 80C35A98  C8 1E 00 78 */	lfd f0, 0x78(r30)
/* 80C35A9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C35AA0  40 80 00 10 */	bge lbl_80C35AB0
/* 80C35AA4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C35AA8  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80C35AAC  48 00 00 78 */	b lbl_80C35B24
lbl_80C35AB0:
/* 80C35AB0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C35AB4  80 81 00 08 */	lwz r4, 8(r1)
/* 80C35AB8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C35ABC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C35AC0  7C 03 00 00 */	cmpw r3, r0
/* 80C35AC4  41 82 00 14 */	beq lbl_80C35AD8
/* 80C35AC8  40 80 00 40 */	bge lbl_80C35B08
/* 80C35ACC  2C 03 00 00 */	cmpwi r3, 0
/* 80C35AD0  41 82 00 20 */	beq lbl_80C35AF0
/* 80C35AD4  48 00 00 34 */	b lbl_80C35B08
lbl_80C35AD8:
/* 80C35AD8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C35ADC  41 82 00 0C */	beq lbl_80C35AE8
/* 80C35AE0  38 00 00 01 */	li r0, 1
/* 80C35AE4  48 00 00 28 */	b lbl_80C35B0C
lbl_80C35AE8:
/* 80C35AE8  38 00 00 02 */	li r0, 2
/* 80C35AEC  48 00 00 20 */	b lbl_80C35B0C
lbl_80C35AF0:
/* 80C35AF0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C35AF4  41 82 00 0C */	beq lbl_80C35B00
/* 80C35AF8  38 00 00 05 */	li r0, 5
/* 80C35AFC  48 00 00 10 */	b lbl_80C35B0C
lbl_80C35B00:
/* 80C35B00  38 00 00 03 */	li r0, 3
/* 80C35B04  48 00 00 08 */	b lbl_80C35B0C
lbl_80C35B08:
/* 80C35B08  38 00 00 04 */	li r0, 4
lbl_80C35B0C:
/* 80C35B0C  2C 00 00 01 */	cmpwi r0, 1
/* 80C35B10  40 82 00 10 */	bne lbl_80C35B20
/* 80C35B14  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C35B18  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80C35B1C  48 00 00 08 */	b lbl_80C35B24
lbl_80C35B20:
/* 80C35B20  FC 40 08 90 */	fmr f2, f1
lbl_80C35B24:
/* 80C35B24  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80C35B28  4B 63 1B 4C */	b cM_atan2s__Fff
/* 80C35B2C  7C 03 00 D0 */	neg r0, r3
/* 80C35B30  B0 1F 09 9E */	sth r0, 0x99e(r31)
/* 80C35B34  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80C35B38  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 80C35B3C  4B 63 1B 38 */	b cM_atan2s__Fff
/* 80C35B40  B0 7F 09 9A */	sth r3, 0x99a(r31)
/* 80C35B44  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80C35B48  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 80C35B4C  4B 63 1B 28 */	b cM_atan2s__Fff
/* 80C35B50  B0 7F 09 A2 */	sth r3, 0x9a2(r31)
/* 80C35B54  3C 60 80 C4 */	lis r3, __vt__8cM3dGPla@ha
/* 80C35B58  38 03 85 A4 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80C35B5C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C35B60  38 61 00 38 */	addi r3, r1, 0x38
/* 80C35B64  38 80 FF FF */	li r4, -1
/* 80C35B68  4B 44 21 74 */	b __dt__11dBgS_LinChkFv
/* 80C35B6C  38 60 00 01 */	li r3, 1
/* 80C35B70  48 00 00 14 */	b lbl_80C35B84
lbl_80C35B74:
/* 80C35B74  38 61 00 38 */	addi r3, r1, 0x38
/* 80C35B78  38 80 FF FF */	li r4, -1
/* 80C35B7C  4B 44 21 60 */	b __dt__11dBgS_LinChkFv
/* 80C35B80  38 60 00 00 */	li r3, 0
lbl_80C35B84:
/* 80C35B84  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80C35B88  4B 72 C6 A0 */	b _restgpr_29
/* 80C35B8C  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80C35B90  7C 08 03 A6 */	mtlr r0
/* 80C35B94  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80C35B98  4E 80 00 20 */	blr 
