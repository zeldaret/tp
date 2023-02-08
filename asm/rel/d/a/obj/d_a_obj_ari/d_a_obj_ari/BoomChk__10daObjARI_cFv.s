lbl_80BA3824:
/* 80BA3824  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80BA3828  7C 08 02 A6 */	mflr r0
/* 80BA382C  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80BA3830  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80BA3834  4B 7B E9 A5 */	bl _savegpr_28
/* 80BA3838  7C 7F 1B 78 */	mr r31, r3
/* 80BA383C  3C 80 80 BA */	lis r4, lit_3776@ha /* 0x80BA5408@ha */
/* 80BA3840  3B C4 54 08 */	addi r30, r4, lit_3776@l /* 0x80BA5408@l */
/* 80BA3844  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA3848  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA384C  83 A4 5D AC */	lwz r29, 0x5dac(r4)
/* 80BA3850  7F A4 EB 78 */	mr r4, r29
/* 80BA3854  4B 47 71 11 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80BA3858  88 1F 07 BC */	lbz r0, 0x7bc(r31)
/* 80BA385C  28 00 00 00 */	cmplwi r0, 0
/* 80BA3860  41 82 02 C0 */	beq lbl_80BA3B20
/* 80BA3864  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80BA3868  D0 1F 04 A8 */	stfs f0, 0x4a8(r31)
/* 80BA386C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80BA3870  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
/* 80BA3874  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80BA3878  D0 1F 04 B0 */	stfs f0, 0x4b0(r31)
/* 80BA387C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80BA3880  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80BA3884  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80BA3888  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80BA388C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80BA3890  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80BA3894  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80BA3898  EC 01 00 2A */	fadds f0, f1, f0
/* 80BA389C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80BA38A0  38 7F 07 B0 */	addi r3, r31, 0x7b0
/* 80BA38A4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80BA38A8  38 BF 04 E6 */	addi r5, r31, 0x4e6
/* 80BA38AC  38 C0 00 00 */	li r6, 0
/* 80BA38B0  38 E0 1C 00 */	li r7, 0x1c00
/* 80BA38B4  4B 5B AD A1 */	bl posMove__20daPy_boomerangMove_cFP4cXyzPsP10fopAc_ac_cs
/* 80BA38B8  2C 03 00 00 */	cmpwi r3, 0
/* 80BA38BC  41 82 00 24 */	beq lbl_80BA38E0
/* 80BA38C0  38 7F 07 B0 */	addi r3, r31, 0x7b0
/* 80BA38C4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80BA38C8  4B 5B AF B5 */	bl bgCheckAfterOffset__20daPy_boomerangMove_cFPC4cXyz
/* 80BA38CC  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80BA38D0  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80BA38D4  EC 01 00 2A */	fadds f0, f1, f0
/* 80BA38D8  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80BA38DC  48 00 02 44 */	b lbl_80BA3B20
lbl_80BA38E0:
/* 80BA38E0  38 61 00 44 */	addi r3, r1, 0x44
/* 80BA38E4  4B 4D 43 85 */	bl __ct__11dBgS_LinChkFv
/* 80BA38E8  38 61 00 9C */	addi r3, r1, 0x9c
/* 80BA38EC  4B 4D 55 7D */	bl SetObj__16dBgS_PolyPassChkFv
/* 80BA38F0  38 61 00 44 */	addi r3, r1, 0x44
/* 80BA38F4  38 81 00 24 */	addi r4, r1, 0x24
/* 80BA38F8  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80BA38FC  38 C0 00 00 */	li r6, 0
/* 80BA3900  4B 4D 44 65 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80BA3904  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA3908  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA390C  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 80BA3910  7F 83 E3 78 */	mr r3, r28
/* 80BA3914  38 81 00 44 */	addi r4, r1, 0x44
/* 80BA3918  4B 4D 0A 9D */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80BA391C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BA3920  41 82 01 C0 */	beq lbl_80BA3AE0
/* 80BA3924  3C 60 80 BA */	lis r3, __vt__8cM3dGPla@ha /* 0x80BA55B4@ha */
/* 80BA3928  38 03 55 B4 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80BA55B4@l */
/* 80BA392C  90 01 00 40 */	stw r0, 0x40(r1)
/* 80BA3930  7F 83 E3 78 */	mr r3, r28
/* 80BA3934  38 81 00 58 */	addi r4, r1, 0x58
/* 80BA3938  38 A1 00 30 */	addi r5, r1, 0x30
/* 80BA393C  4B 4D 0E 09 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80BA3940  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80BA3944  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80BA3948  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80BA394C  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80BA3950  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80BA3954  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80BA3958  C0 1F 04 BC */	lfs f0, 0x4bc(r31)
/* 80BA395C  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80BA3960  C0 1F 04 C0 */	lfs f0, 0x4c0(r31)
/* 80BA3964  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80BA3968  C0 1F 04 C4 */	lfs f0, 0x4c4(r31)
/* 80BA396C  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80BA3970  38 00 00 00 */	li r0, 0
/* 80BA3974  98 1F 05 E8 */	stb r0, 0x5e8(r31)
/* 80BA3978  98 1F 05 E9 */	stb r0, 0x5e9(r31)
/* 80BA397C  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80BA3980  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BA3984  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BA3988  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80BA398C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BA3990  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80BA3994  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BA3998  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80BA399C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BA39A0  38 61 00 18 */	addi r3, r1, 0x18
/* 80BA39A4  38 81 00 0C */	addi r4, r1, 0xc
/* 80BA39A8  4B 7A 39 F5 */	bl PSVECSquareDistance
/* 80BA39AC  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80BA39B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BA39B4  40 81 00 58 */	ble lbl_80BA3A0C
/* 80BA39B8  FC 00 08 34 */	frsqrte f0, f1
/* 80BA39BC  C8 9E 00 88 */	lfd f4, 0x88(r30)
/* 80BA39C0  FC 44 00 32 */	fmul f2, f4, f0
/* 80BA39C4  C8 7E 00 90 */	lfd f3, 0x90(r30)
/* 80BA39C8  FC 00 00 32 */	fmul f0, f0, f0
/* 80BA39CC  FC 01 00 32 */	fmul f0, f1, f0
/* 80BA39D0  FC 03 00 28 */	fsub f0, f3, f0
/* 80BA39D4  FC 02 00 32 */	fmul f0, f2, f0
/* 80BA39D8  FC 44 00 32 */	fmul f2, f4, f0
/* 80BA39DC  FC 00 00 32 */	fmul f0, f0, f0
/* 80BA39E0  FC 01 00 32 */	fmul f0, f1, f0
/* 80BA39E4  FC 03 00 28 */	fsub f0, f3, f0
/* 80BA39E8  FC 02 00 32 */	fmul f0, f2, f0
/* 80BA39EC  FC 44 00 32 */	fmul f2, f4, f0
/* 80BA39F0  FC 00 00 32 */	fmul f0, f0, f0
/* 80BA39F4  FC 01 00 32 */	fmul f0, f1, f0
/* 80BA39F8  FC 03 00 28 */	fsub f0, f3, f0
/* 80BA39FC  FC 02 00 32 */	fmul f0, f2, f0
/* 80BA3A00  FC 41 00 32 */	fmul f2, f1, f0
/* 80BA3A04  FC 40 10 18 */	frsp f2, f2
/* 80BA3A08  48 00 00 90 */	b lbl_80BA3A98
lbl_80BA3A0C:
/* 80BA3A0C  C8 1E 00 98 */	lfd f0, 0x98(r30)
/* 80BA3A10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BA3A14  40 80 00 10 */	bge lbl_80BA3A24
/* 80BA3A18  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BA3A1C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BA3A20  48 00 00 78 */	b lbl_80BA3A98
lbl_80BA3A24:
/* 80BA3A24  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BA3A28  80 81 00 08 */	lwz r4, 8(r1)
/* 80BA3A2C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BA3A30  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BA3A34  7C 03 00 00 */	cmpw r3, r0
/* 80BA3A38  41 82 00 14 */	beq lbl_80BA3A4C
/* 80BA3A3C  40 80 00 40 */	bge lbl_80BA3A7C
/* 80BA3A40  2C 03 00 00 */	cmpwi r3, 0
/* 80BA3A44  41 82 00 20 */	beq lbl_80BA3A64
/* 80BA3A48  48 00 00 34 */	b lbl_80BA3A7C
lbl_80BA3A4C:
/* 80BA3A4C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BA3A50  41 82 00 0C */	beq lbl_80BA3A5C
/* 80BA3A54  38 00 00 01 */	li r0, 1
/* 80BA3A58  48 00 00 28 */	b lbl_80BA3A80
lbl_80BA3A5C:
/* 80BA3A5C  38 00 00 02 */	li r0, 2
/* 80BA3A60  48 00 00 20 */	b lbl_80BA3A80
lbl_80BA3A64:
/* 80BA3A64  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BA3A68  41 82 00 0C */	beq lbl_80BA3A74
/* 80BA3A6C  38 00 00 05 */	li r0, 5
/* 80BA3A70  48 00 00 10 */	b lbl_80BA3A80
lbl_80BA3A74:
/* 80BA3A74  38 00 00 03 */	li r0, 3
/* 80BA3A78  48 00 00 08 */	b lbl_80BA3A80
lbl_80BA3A7C:
/* 80BA3A7C  38 00 00 04 */	li r0, 4
lbl_80BA3A80:
/* 80BA3A80  2C 00 00 01 */	cmpwi r0, 1
/* 80BA3A84  40 82 00 10 */	bne lbl_80BA3A94
/* 80BA3A88  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BA3A8C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BA3A90  48 00 00 08 */	b lbl_80BA3A98
lbl_80BA3A94:
/* 80BA3A94  FC 40 08 90 */	fmr f2, f1
lbl_80BA3A98:
/* 80BA3A98  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80BA3A9C  4B 6C 3B D9 */	bl cM_atan2s__Fff
/* 80BA3AA0  7C 03 00 D0 */	neg r0, r3
/* 80BA3AA4  B0 1F 06 02 */	sth r0, 0x602(r31)
/* 80BA3AA8  B0 1F 06 08 */	sth r0, 0x608(r31)
/* 80BA3AAC  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80BA3AB0  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 80BA3AB4  4B 6C 3B C1 */	bl cM_atan2s__Fff
/* 80BA3AB8  B0 7F 05 FE */	sth r3, 0x5fe(r31)
/* 80BA3ABC  B0 7F 06 04 */	sth r3, 0x604(r31)
/* 80BA3AC0  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80BA3AC4  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 80BA3AC8  4B 6C 3B AD */	bl cM_atan2s__Fff
/* 80BA3ACC  B0 7F 06 0E */	sth r3, 0x60e(r31)
/* 80BA3AD0  3C 60 80 BA */	lis r3, __vt__8cM3dGPla@ha /* 0x80BA55B4@ha */
/* 80BA3AD4  38 03 55 B4 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80BA55B4@l */
/* 80BA3AD8  90 01 00 40 */	stw r0, 0x40(r1)
/* 80BA3ADC  48 00 00 30 */	b lbl_80BA3B0C
lbl_80BA3AE0:
/* 80BA3AE0  C0 3E 00 C4 */	lfs f1, 0xc4(r30)
/* 80BA3AE4  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80BA3AE8  EC 01 00 2A */	fadds f0, f1, f0
/* 80BA3AEC  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80BA3AF0  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80BA3AF4  38 00 00 03 */	li r0, 3
/* 80BA3AF8  98 1F 06 31 */	stb r0, 0x631(r31)
/* 80BA3AFC  38 00 00 01 */	li r0, 1
/* 80BA3B00  98 1F 05 E8 */	stb r0, 0x5e8(r31)
/* 80BA3B04  38 00 00 00 */	li r0, 0
/* 80BA3B08  98 1F 05 E9 */	stb r0, 0x5e9(r31)
lbl_80BA3B0C:
/* 80BA3B0C  38 00 00 00 */	li r0, 0
/* 80BA3B10  98 1F 07 BC */	stb r0, 0x7bc(r31)
/* 80BA3B14  38 61 00 44 */	addi r3, r1, 0x44
/* 80BA3B18  38 80 FF FF */	li r4, -1
/* 80BA3B1C  4B 4D 41 C1 */	bl __dt__11dBgS_LinChkFv
lbl_80BA3B20:
/* 80BA3B20  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80BA3B24  4B 7B E7 01 */	bl _restgpr_28
/* 80BA3B28  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80BA3B2C  7C 08 03 A6 */	mtlr r0
/* 80BA3B30  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80BA3B34  4E 80 00 20 */	blr 
