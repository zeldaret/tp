lbl_801A37C4:
/* 801A37C4  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 801A37C8  7C 08 02 A6 */	mflr r0
/* 801A37CC  90 01 01 14 */	stw r0, 0x114(r1)
/* 801A37D0  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 801A37D4  F3 E1 01 08 */	psq_st f31, 264(r1), 0, 0 /* qr0 */
/* 801A37D8  39 61 01 00 */	addi r11, r1, 0x100
/* 801A37DC  48 1B E9 F1 */	bl _savegpr_25
/* 801A37E0  7C 7A 1B 78 */	mr r26, r3
/* 801A37E4  7C 9B 23 78 */	mr r27, r4
/* 801A37E8  7C BD 2B 78 */	mr r29, r5
/* 801A37EC  7C DC 33 78 */	mr r28, r6
/* 801A37F0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A37F4  3B E3 CA 54 */	addi r31, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A37F8  8B C6 03 7B */	lbz r30, 0x37b(r6)
/* 801A37FC  88 06 03 80 */	lbz r0, 0x380(r6)
/* 801A3800  7C 00 07 75 */	extsb. r0, r0
/* 801A3804  40 80 00 0C */	bge lbl_801A3810
/* 801A3808  88 0D 87 E4 */	lbz r0, struct_80450D64+0x0(r13)
/* 801A380C  98 1C 03 80 */	stb r0, 0x380(r28)
lbl_801A3810:
/* 801A3810  28 1D 00 00 */	cmplwi r29, 0
/* 801A3814  41 82 00 20 */	beq lbl_801A3834
/* 801A3818  C0 1D 00 00 */	lfs f0, 0(r29)
/* 801A381C  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 801A3820  C0 1D 00 04 */	lfs f0, 4(r29)
/* 801A3824  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 801A3828  C0 1D 00 08 */	lfs f0, 8(r29)
/* 801A382C  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 801A3830  48 00 00 14 */	b lbl_801A3844
lbl_801A3834:
/* 801A3834  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A3838  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 801A383C  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 801A3840  D0 01 00 AC */	stfs f0, 0xac(r1)
lbl_801A3844:
/* 801A3844  28 1C 00 00 */	cmplwi r28, 0
/* 801A3848  41 82 00 40 */	beq lbl_801A3888
/* 801A384C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A3850  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A3854  A8 03 12 C0 */	lha r0, 0x12c0(r3)
/* 801A3858  2C 00 00 64 */	cmpwi r0, 0x64
/* 801A385C  41 82 00 2C */	beq lbl_801A3888
/* 801A3860  C8 22 A2 30 */	lfd f1, lit_4444(r2)
/* 801A3864  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A3868  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 801A386C  3C 00 43 30 */	lis r0, 0x4330
/* 801A3870  90 01 00 D0 */	stw r0, 0xd0(r1)
/* 801A3874  C8 01 00 D0 */	lfd f0, 0xd0(r1)
/* 801A3878  EC 20 08 28 */	fsubs f1, f0, f1
/* 801A387C  C0 02 A2 94 */	lfs f0, lit_5192(r2)
/* 801A3880  EC 01 00 24 */	fdivs f0, f1, f0
/* 801A3884  D0 1C 03 74 */	stfs f0, 0x374(r28)
lbl_801A3888:
/* 801A3888  9B 7C 03 7A */	stb r27, 0x37a(r28)
/* 801A388C  88 1C 03 83 */	lbz r0, 0x383(r28)
/* 801A3890  28 00 00 7B */	cmplwi r0, 0x7b
/* 801A3894  41 82 00 20 */	beq lbl_801A38B4
/* 801A3898  28 00 00 7C */	cmplwi r0, 0x7c
/* 801A389C  41 82 00 18 */	beq lbl_801A38B4
/* 801A38A0  7F 83 E3 78 */	mr r3, r28
/* 801A38A4  88 0D 87 E4 */	lbz r0, struct_80450D64+0x0(r13)
/* 801A38A8  7C 04 07 74 */	extsb r4, r0
/* 801A38AC  38 A0 00 FF */	li r5, 0xff
/* 801A38B0  48 00 50 3D */	bl dKy_tevstr_init__FP12dKy_tevstr_cScUc
lbl_801A38B4:
/* 801A38B4  38 00 00 7C */	li r0, 0x7c
/* 801A38B8  98 1C 03 83 */	stb r0, 0x383(r28)
/* 801A38BC  38 00 00 FF */	li r0, 0xff
/* 801A38C0  B0 1A 11 06 */	sth r0, 0x1106(r26)
/* 801A38C4  2C 1B 00 0E */	cmpwi r27, 0xe
/* 801A38C8  40 82 02 B0 */	bne lbl_801A3B78
/* 801A38CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801A38D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801A38D4  83 C3 5D 74 */	lwz r30, 0x5d74(r3)
/* 801A38D8  38 60 00 00 */	li r3, 0
/* 801A38DC  98 7C 03 82 */	stb r3, 0x382(r28)
/* 801A38E0  88 9C 03 80 */	lbz r4, 0x380(r28)
/* 801A38E4  7C 80 07 74 */	extsb r0, r4
/* 801A38E8  2C 00 00 80 */	cmpwi r0, 0x80
/* 801A38EC  41 80 00 0C */	blt lbl_801A38F8
/* 801A38F0  98 7C 03 7C */	stb r3, 0x37c(r28)
/* 801A38F4  48 00 00 08 */	b lbl_801A38FC
lbl_801A38F8:
/* 801A38F8  98 9C 03 7C */	stb r4, 0x37c(r28)
lbl_801A38FC:
/* 801A38FC  48 00 8C 81 */	bl dKy_darkworld_check__Fv
/* 801A3900  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A3904  40 82 00 20 */	bne lbl_801A3924
/* 801A3908  38 00 00 18 */	li r0, 0x18
/* 801A390C  B0 1A 10 F0 */	sth r0, 0x10f0(r26)
/* 801A3910  B0 1A 10 F2 */	sth r0, 0x10f2(r26)
/* 801A3914  B0 1A 10 F4 */	sth r0, 0x10f4(r26)
/* 801A3918  38 00 00 FF */	li r0, 0xff
/* 801A391C  B0 1A 10 F6 */	sth r0, 0x10f6(r26)
/* 801A3920  48 00 00 18 */	b lbl_801A3938
lbl_801A3924:
/* 801A3924  38 00 00 37 */	li r0, 0x37
/* 801A3928  B0 1A 10 F0 */	sth r0, 0x10f0(r26)
/* 801A392C  B0 1A 10 F2 */	sth r0, 0x10f2(r26)
/* 801A3930  38 00 00 4D */	li r0, 0x4d
/* 801A3934  B0 1A 10 F4 */	sth r0, 0x10f4(r26)
lbl_801A3938:
/* 801A3938  38 00 00 FF */	li r0, 0xff
/* 801A393C  B0 01 00 28 */	sth r0, 0x28(r1)
/* 801A3940  B0 01 00 2A */	sth r0, 0x2a(r1)
/* 801A3944  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 801A3948  C0 02 A3 4C */	lfs f0, lit_7011(r2)
/* 801A394C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 801A3950  D0 01 00 08 */	stfs f0, 8(r1)
/* 801A3954  38 61 00 A4 */	addi r3, r1, 0xa4
/* 801A3958  38 9E 00 D8 */	addi r4, r30, 0xd8
/* 801A395C  38 A1 00 98 */	addi r5, r1, 0x98
/* 801A3960  4B EB 7E 01 */	bl dKyr_get_vectle_calc__FP4cXyzP4cXyzP4cXyz
/* 801A3964  3B A0 00 00 */	li r29, 0
/* 801A3968  3B 20 00 00 */	li r25, 0
/* 801A396C  C3 E2 A2 0C */	lfs f31, lit_4409(r2)
lbl_801A3970:
/* 801A3970  3B 79 00 74 */	addi r27, r25, 0x74
/* 801A3974  7F 7C DA 14 */	add r27, r28, r27
/* 801A3978  2C 1D 00 00 */	cmpwi r29, 0
/* 801A397C  40 82 00 40 */	bne lbl_801A39BC
/* 801A3980  48 00 8B FD */	bl dKy_darkworld_check__Fv
/* 801A3984  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A3988  40 82 00 20 */	bne lbl_801A39A8
/* 801A398C  38 00 00 7E */	li r0, 0x7e
/* 801A3990  98 1B 00 18 */	stb r0, 0x18(r27)
/* 801A3994  38 00 00 6E */	li r0, 0x6e
/* 801A3998  98 1B 00 19 */	stb r0, 0x19(r27)
/* 801A399C  38 00 00 59 */	li r0, 0x59
/* 801A39A0  98 1B 00 1A */	stb r0, 0x1a(r27)
/* 801A39A4  48 00 00 6C */	b lbl_801A3A10
lbl_801A39A8:
/* 801A39A8  38 00 00 00 */	li r0, 0
/* 801A39AC  98 1B 00 18 */	stb r0, 0x18(r27)
/* 801A39B0  98 1B 00 19 */	stb r0, 0x19(r27)
/* 801A39B4  98 1B 00 1A */	stb r0, 0x1a(r27)
/* 801A39B8  48 00 00 58 */	b lbl_801A3A10
lbl_801A39BC:
/* 801A39BC  2C 1D 00 01 */	cmpwi r29, 1
/* 801A39C0  40 82 00 40 */	bne lbl_801A3A00
/* 801A39C4  48 00 8B B9 */	bl dKy_darkworld_check__Fv
/* 801A39C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A39CC  40 82 00 20 */	bne lbl_801A39EC
/* 801A39D0  38 00 00 18 */	li r0, 0x18
/* 801A39D4  98 1B 00 18 */	stb r0, 0x18(r27)
/* 801A39D8  38 00 00 29 */	li r0, 0x29
/* 801A39DC  98 1B 00 19 */	stb r0, 0x19(r27)
/* 801A39E0  38 00 00 32 */	li r0, 0x32
/* 801A39E4  98 1B 00 1A */	stb r0, 0x1a(r27)
/* 801A39E8  48 00 00 28 */	b lbl_801A3A10
lbl_801A39EC:
/* 801A39EC  38 00 00 00 */	li r0, 0
/* 801A39F0  98 1B 00 18 */	stb r0, 0x18(r27)
/* 801A39F4  98 1B 00 19 */	stb r0, 0x19(r27)
/* 801A39F8  98 1B 00 1A */	stb r0, 0x1a(r27)
/* 801A39FC  48 00 00 14 */	b lbl_801A3A10
lbl_801A3A00:
/* 801A3A00  38 00 00 00 */	li r0, 0
/* 801A3A04  98 1B 00 18 */	stb r0, 0x18(r27)
/* 801A3A08  98 1B 00 19 */	stb r0, 0x19(r27)
/* 801A3A0C  98 1B 00 1A */	stb r0, 0x1a(r27)
lbl_801A3A10:
/* 801A3A10  7F 63 DB 78 */	mr r3, r27
/* 801A3A14  C0 22 A2 2C */	lfs f1, lit_4442(r2)
/* 801A3A18  38 80 00 00 */	li r4, 0
/* 801A3A1C  4B FF 98 A9 */	bl dKy_GXInitLightSpot__FP12J3DLightInfofUc
/* 801A3A20  7F 63 DB 78 */	mr r3, r27
/* 801A3A24  C0 22 A2 E8 */	lfs f1, lit_6032(r2)
/* 801A3A28  C0 42 A3 50 */	lfs f2, lit_7012(r2)
/* 801A3A2C  38 80 00 03 */	li r4, 3
/* 801A3A30  4B FF 9A 1D */	bl dKy_GXInitLightDistAttn__FP12J3DLightInfoffUc
/* 801A3A34  D3 FB 00 00 */	stfs f31, 0(r27)
/* 801A3A38  D3 FB 00 04 */	stfs f31, 4(r27)
/* 801A3A3C  D3 FB 00 08 */	stfs f31, 8(r27)
/* 801A3A40  2C 1D 00 00 */	cmpwi r29, 0
/* 801A3A44  40 82 00 18 */	bne lbl_801A3A5C
/* 801A3A48  C0 02 A1 D8 */	lfs f0, lit_4351(r2)
/* 801A3A4C  D0 1B 00 00 */	stfs f0, 0(r27)
/* 801A3A50  D0 1B 00 04 */	stfs f0, 4(r27)
/* 801A3A54  D0 1B 00 08 */	stfs f0, 8(r27)
/* 801A3A58  48 00 00 14 */	b lbl_801A3A6C
lbl_801A3A5C:
/* 801A3A5C  C0 02 A3 54 */	lfs f0, lit_7013(r2)
/* 801A3A60  D0 1B 00 00 */	stfs f0, 0(r27)
/* 801A3A64  D0 1B 00 04 */	stfs f0, 4(r27)
/* 801A3A68  D0 1B 00 08 */	stfs f0, 8(r27)
lbl_801A3A6C:
/* 801A3A6C  C0 22 A2 0C */	lfs f1, lit_4409(r2)
/* 801A3A70  FC 40 08 90 */	fmr f2, f1
/* 801A3A74  38 7B 00 0C */	addi r3, r27, 0xc
/* 801A3A78  4B FF 97 29 */	bl dKy_lightdir_set__FffP3Vec
/* 801A3A7C  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 801A3A80  FC 00 00 50 */	fneg f0, f0
/* 801A3A84  D0 1B 00 0C */	stfs f0, 0xc(r27)
/* 801A3A88  C0 1B 00 10 */	lfs f0, 0x10(r27)
/* 801A3A8C  FC 00 00 50 */	fneg f0, f0
/* 801A3A90  D0 1B 00 10 */	stfs f0, 0x10(r27)
/* 801A3A94  C0 1B 00 14 */	lfs f0, 0x14(r27)
/* 801A3A98  FC 00 00 50 */	fneg f0, f0
/* 801A3A9C  D0 1B 00 14 */	stfs f0, 0x14(r27)
/* 801A3AA0  3B BD 00 01 */	addi r29, r29, 1
/* 801A3AA4  2C 1D 00 06 */	cmpwi r29, 6
/* 801A3AA8  3B 39 00 74 */	addi r25, r25, 0x74
/* 801A3AAC  41 80 FE C4 */	blt lbl_801A3970
/* 801A3AB0  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 801A3AB4  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 801A3AB8  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 801A3ABC  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 801A3AC0  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 801A3AC4  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 801A3AC8  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 801A3ACC  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 801A3AD0  38 81 00 80 */	addi r4, r1, 0x80
/* 801A3AD4  38 A1 00 8C */	addi r5, r1, 0x8c
/* 801A3AD8  48 1A 32 95 */	bl PSMTXMultVec
/* 801A3ADC  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 801A3AE0  D0 1C 00 00 */	stfs f0, 0(r28)
/* 801A3AE4  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 801A3AE8  D0 1C 00 04 */	stfs f0, 4(r28)
/* 801A3AEC  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 801A3AF0  D0 1C 00 08 */	stfs f0, 8(r28)
/* 801A3AF4  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 801A3AF8  D0 1C 03 2C */	stfs f0, 0x32c(r28)
/* 801A3AFC  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 801A3B00  D0 1C 03 30 */	stfs f0, 0x330(r28)
/* 801A3B04  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 801A3B08  D0 1C 03 34 */	stfs f0, 0x334(r28)
/* 801A3B0C  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 801A3B10  D0 1C 03 38 */	stfs f0, 0x338(r28)
/* 801A3B14  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 801A3B18  D0 1C 03 3C */	stfs f0, 0x33c(r28)
/* 801A3B1C  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 801A3B20  D0 1C 03 40 */	stfs f0, 0x340(r28)
/* 801A3B24  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A3B28  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A3B2C  C0 03 10 64 */	lfs f0, 0x1064(r3)
/* 801A3B30  D0 1C 00 0C */	stfs f0, 0xc(r28)
/* 801A3B34  C0 03 10 68 */	lfs f0, 0x1068(r3)
/* 801A3B38  D0 1C 00 10 */	stfs f0, 0x10(r28)
/* 801A3B3C  C0 03 10 6C */	lfs f0, 0x106c(r3)
/* 801A3B40  D0 1C 00 14 */	stfs f0, 0x14(r28)
/* 801A3B44  38 00 00 00 */	li r0, 0
/* 801A3B48  98 1C 00 18 */	stb r0, 0x18(r28)
/* 801A3B4C  98 1C 00 19 */	stb r0, 0x19(r28)
/* 801A3B50  98 1C 00 1A */	stb r0, 0x1a(r28)
/* 801A3B54  C0 22 A2 48 */	lfs f1, lit_4505(r2)
/* 801A3B58  D0 3C 00 1C */	stfs f1, 0x1c(r28)
/* 801A3B5C  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A3B60  D0 1C 00 20 */	stfs f0, 0x20(r28)
/* 801A3B64  D0 1C 00 24 */	stfs f0, 0x24(r28)
/* 801A3B68  D0 3C 00 28 */	stfs f1, 0x28(r28)
/* 801A3B6C  D0 1C 00 2C */	stfs f0, 0x2c(r28)
/* 801A3B70  D0 1C 00 30 */	stfs f0, 0x30(r28)
/* 801A3B74  48 00 08 30 */	b lbl_801A43A4
lbl_801A3B78:
/* 801A3B78  2C 1B 00 0C */	cmpwi r27, 0xc
/* 801A3B7C  41 82 00 0C */	beq lbl_801A3B88
/* 801A3B80  2C 1B 00 0D */	cmpwi r27, 0xd
/* 801A3B84  40 82 02 F0 */	bne lbl_801A3E74
lbl_801A3B88:
/* 801A3B88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801A3B8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801A3B90  83 C3 5D 74 */	lwz r30, 0x5d74(r3)
/* 801A3B94  38 60 00 00 */	li r3, 0
/* 801A3B98  B0 7C 03 58 */	sth r3, 0x358(r28)
/* 801A3B9C  B0 7C 03 5A */	sth r3, 0x35a(r28)
/* 801A3BA0  B0 7C 03 5C */	sth r3, 0x35c(r28)
/* 801A3BA4  B0 7C 03 5E */	sth r3, 0x35e(r28)
/* 801A3BA8  98 7C 03 60 */	stb r3, 0x360(r28)
/* 801A3BAC  98 7C 03 61 */	stb r3, 0x361(r28)
/* 801A3BB0  98 7C 03 62 */	stb r3, 0x362(r28)
/* 801A3BB4  98 7C 03 63 */	stb r3, 0x363(r28)
/* 801A3BB8  98 7C 03 82 */	stb r3, 0x382(r28)
/* 801A3BBC  88 9C 03 80 */	lbz r4, 0x380(r28)
/* 801A3BC0  7C 80 07 74 */	extsb r0, r4
/* 801A3BC4  2C 00 00 80 */	cmpwi r0, 0x80
/* 801A3BC8  41 80 00 0C */	blt lbl_801A3BD4
/* 801A3BCC  98 7C 03 7C */	stb r3, 0x37c(r28)
/* 801A3BD0  48 00 00 08 */	b lbl_801A3BD8
lbl_801A3BD4:
/* 801A3BD4  98 9C 03 7C */	stb r4, 0x37c(r28)
lbl_801A3BD8:
/* 801A3BD8  2C 1B 00 0C */	cmpwi r27, 0xc
/* 801A3BDC  40 82 00 1C */	bne lbl_801A3BF8
/* 801A3BE0  38 60 00 19 */	li r3, 0x19
/* 801A3BE4  B0 7A 10 F0 */	sth r3, 0x10f0(r26)
/* 801A3BE8  38 00 00 14 */	li r0, 0x14
/* 801A3BEC  B0 1A 10 F2 */	sth r0, 0x10f2(r26)
/* 801A3BF0  B0 7A 10 F4 */	sth r3, 0x10f4(r26)
/* 801A3BF4  48 00 00 1C */	b lbl_801A3C10
lbl_801A3BF8:
/* 801A3BF8  38 00 00 28 */	li r0, 0x28
/* 801A3BFC  B0 1A 10 F0 */	sth r0, 0x10f0(r26)
/* 801A3C00  38 00 00 23 */	li r0, 0x23
/* 801A3C04  B0 1A 10 F2 */	sth r0, 0x10f2(r26)
/* 801A3C08  38 00 00 1E */	li r0, 0x1e
/* 801A3C0C  B0 1A 10 F4 */	sth r0, 0x10f4(r26)
lbl_801A3C10:
/* 801A3C10  38 00 00 FF */	li r0, 0xff
/* 801A3C14  B0 1A 10 F6 */	sth r0, 0x10f6(r26)
/* 801A3C18  B0 01 00 28 */	sth r0, 0x28(r1)
/* 801A3C1C  B0 01 00 2A */	sth r0, 0x2a(r1)
/* 801A3C20  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 801A3C24  C0 02 A3 4C */	lfs f0, lit_7011(r2)
/* 801A3C28  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 801A3C2C  D0 01 00 08 */	stfs f0, 8(r1)
/* 801A3C30  3B A0 00 00 */	li r29, 0
/* 801A3C34  3B 20 00 00 */	li r25, 0
lbl_801A3C38:
/* 801A3C38  3B F9 00 74 */	addi r31, r25, 0x74
/* 801A3C3C  7F FC FA 14 */	add r31, r28, r31
/* 801A3C40  2C 1D 00 00 */	cmpwi r29, 0
/* 801A3C44  40 82 00 74 */	bne lbl_801A3CB8
/* 801A3C48  2C 1B 00 0C */	cmpwi r27, 0xc
/* 801A3C4C  40 82 00 38 */	bne lbl_801A3C84
/* 801A3C50  C0 02 A3 58 */	lfs f0, lit_7014(r2)
/* 801A3C54  D0 1F 00 00 */	stfs f0, 0(r31)
/* 801A3C58  C0 02 A3 5C */	lfs f0, lit_7015(r2)
/* 801A3C5C  D0 1F 00 04 */	stfs f0, 4(r31)
/* 801A3C60  C0 02 A3 60 */	lfs f0, lit_7016(r2)
/* 801A3C64  D0 1F 00 08 */	stfs f0, 8(r31)
/* 801A3C68  38 00 00 78 */	li r0, 0x78
/* 801A3C6C  98 1F 00 18 */	stb r0, 0x18(r31)
/* 801A3C70  38 00 00 6E */	li r0, 0x6e
/* 801A3C74  98 1F 00 19 */	stb r0, 0x19(r31)
/* 801A3C78  38 00 00 64 */	li r0, 0x64
/* 801A3C7C  98 1F 00 1A */	stb r0, 0x1a(r31)
/* 801A3C80  48 00 00 BC */	b lbl_801A3D3C
lbl_801A3C84:
/* 801A3C84  C0 02 A3 64 */	lfs f0, lit_7017(r2)
/* 801A3C88  D0 1F 00 00 */	stfs f0, 0(r31)
/* 801A3C8C  C0 02 A3 5C */	lfs f0, lit_7015(r2)
/* 801A3C90  D0 1F 00 04 */	stfs f0, 4(r31)
/* 801A3C94  C0 02 A1 D8 */	lfs f0, lit_4351(r2)
/* 801A3C98  D0 1F 00 08 */	stfs f0, 8(r31)
/* 801A3C9C  38 00 00 55 */	li r0, 0x55
/* 801A3CA0  98 1F 00 18 */	stb r0, 0x18(r31)
/* 801A3CA4  38 00 00 5A */	li r0, 0x5a
/* 801A3CA8  98 1F 00 19 */	stb r0, 0x19(r31)
/* 801A3CAC  38 00 00 64 */	li r0, 0x64
/* 801A3CB0  98 1F 00 1A */	stb r0, 0x1a(r31)
/* 801A3CB4  48 00 00 88 */	b lbl_801A3D3C
lbl_801A3CB8:
/* 801A3CB8  2C 1D 00 01 */	cmpwi r29, 1
/* 801A3CBC  40 82 00 70 */	bne lbl_801A3D2C
/* 801A3CC0  2C 1B 00 0C */	cmpwi r27, 0xc
/* 801A3CC4  40 82 00 34 */	bne lbl_801A3CF8
/* 801A3CC8  C0 02 A3 68 */	lfs f0, lit_7018(r2)
/* 801A3CCC  D0 1F 00 00 */	stfs f0, 0(r31)
/* 801A3CD0  C0 02 A3 6C */	lfs f0, lit_7019(r2)
/* 801A3CD4  D0 1F 00 04 */	stfs f0, 4(r31)
/* 801A3CD8  C0 02 A3 70 */	lfs f0, lit_7020(r2)
/* 801A3CDC  D0 1F 00 08 */	stfs f0, 8(r31)
/* 801A3CE0  38 60 00 1E */	li r3, 0x1e
/* 801A3CE4  98 7F 00 18 */	stb r3, 0x18(r31)
/* 801A3CE8  38 00 00 2D */	li r0, 0x2d
/* 801A3CEC  98 1F 00 19 */	stb r0, 0x19(r31)
/* 801A3CF0  98 7F 00 1A */	stb r3, 0x1a(r31)
/* 801A3CF4  48 00 00 48 */	b lbl_801A3D3C
lbl_801A3CF8:
/* 801A3CF8  C0 02 A3 74 */	lfs f0, lit_7021(r2)
/* 801A3CFC  D0 1F 00 00 */	stfs f0, 0(r31)
/* 801A3D00  C0 02 A3 78 */	lfs f0, lit_7022(r2)
/* 801A3D04  D0 1F 00 04 */	stfs f0, 4(r31)
/* 801A3D08  C0 02 A3 7C */	lfs f0, lit_7023(r2)
/* 801A3D0C  D0 1F 00 08 */	stfs f0, 8(r31)
/* 801A3D10  38 00 00 64 */	li r0, 0x64
/* 801A3D14  98 1F 00 18 */	stb r0, 0x18(r31)
/* 801A3D18  38 00 00 41 */	li r0, 0x41
/* 801A3D1C  98 1F 00 19 */	stb r0, 0x19(r31)
/* 801A3D20  38 00 00 28 */	li r0, 0x28
/* 801A3D24  98 1F 00 1A */	stb r0, 0x1a(r31)
/* 801A3D28  48 00 00 14 */	b lbl_801A3D3C
lbl_801A3D2C:
/* 801A3D2C  38 00 00 00 */	li r0, 0
/* 801A3D30  98 1F 00 18 */	stb r0, 0x18(r31)
/* 801A3D34  98 1F 00 19 */	stb r0, 0x19(r31)
/* 801A3D38  98 1F 00 1A */	stb r0, 0x1a(r31)
lbl_801A3D3C:
/* 801A3D3C  7F E3 FB 78 */	mr r3, r31
/* 801A3D40  C0 22 A2 2C */	lfs f1, lit_4442(r2)
/* 801A3D44  38 80 00 00 */	li r4, 0
/* 801A3D48  4B FF 95 7D */	bl dKy_GXInitLightSpot__FP12J3DLightInfofUc
/* 801A3D4C  7F E3 FB 78 */	mr r3, r31
/* 801A3D50  C0 22 A2 E8 */	lfs f1, lit_6032(r2)
/* 801A3D54  C0 42 A3 50 */	lfs f2, lit_7012(r2)
/* 801A3D58  38 80 00 03 */	li r4, 3
/* 801A3D5C  4B FF 96 F1 */	bl dKy_GXInitLightDistAttn__FP12J3DLightInfoffUc
/* 801A3D60  C0 22 A2 0C */	lfs f1, lit_4409(r2)
/* 801A3D64  FC 40 08 90 */	fmr f2, f1
/* 801A3D68  38 7F 00 0C */	addi r3, r31, 0xc
/* 801A3D6C  4B FF 94 35 */	bl dKy_lightdir_set__FffP3Vec
/* 801A3D70  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 801A3D74  FC 00 00 50 */	fneg f0, f0
/* 801A3D78  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 801A3D7C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 801A3D80  FC 00 00 50 */	fneg f0, f0
/* 801A3D84  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 801A3D88  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 801A3D8C  FC 00 00 50 */	fneg f0, f0
/* 801A3D90  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 801A3D94  3B BD 00 01 */	addi r29, r29, 1
/* 801A3D98  2C 1D 00 06 */	cmpwi r29, 6
/* 801A3D9C  3B 39 00 74 */	addi r25, r25, 0x74
/* 801A3DA0  41 80 FE 98 */	blt lbl_801A3C38
/* 801A3DA4  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 801A3DA8  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 801A3DAC  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 801A3DB0  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 801A3DB4  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 801A3DB8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 801A3DBC  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 801A3DC0  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 801A3DC4  38 81 00 68 */	addi r4, r1, 0x68
/* 801A3DC8  38 A1 00 74 */	addi r5, r1, 0x74
/* 801A3DCC  48 1A 2F A1 */	bl PSMTXMultVec
/* 801A3DD0  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 801A3DD4  D0 1C 00 00 */	stfs f0, 0(r28)
/* 801A3DD8  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 801A3DDC  D0 1C 00 04 */	stfs f0, 4(r28)
/* 801A3DE0  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 801A3DE4  D0 1C 00 08 */	stfs f0, 8(r28)
/* 801A3DE8  2C 1B 00 0D */	cmpwi r27, 0xd
/* 801A3DEC  40 82 00 34 */	bne lbl_801A3E20
/* 801A3DF0  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 801A3DF4  D0 1C 03 2C */	stfs f0, 0x32c(r28)
/* 801A3DF8  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 801A3DFC  D0 1C 03 30 */	stfs f0, 0x330(r28)
/* 801A3E00  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 801A3E04  D0 1C 03 34 */	stfs f0, 0x334(r28)
/* 801A3E08  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 801A3E0C  D0 1C 03 38 */	stfs f0, 0x338(r28)
/* 801A3E10  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 801A3E14  D0 1C 03 3C */	stfs f0, 0x33c(r28)
/* 801A3E18  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 801A3E1C  D0 1C 03 40 */	stfs f0, 0x340(r28)
lbl_801A3E20:
/* 801A3E20  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A3E24  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A3E28  C0 03 10 64 */	lfs f0, 0x1064(r3)
/* 801A3E2C  D0 1C 00 0C */	stfs f0, 0xc(r28)
/* 801A3E30  C0 03 10 68 */	lfs f0, 0x1068(r3)
/* 801A3E34  D0 1C 00 10 */	stfs f0, 0x10(r28)
/* 801A3E38  C0 03 10 6C */	lfs f0, 0x106c(r3)
/* 801A3E3C  D0 1C 00 14 */	stfs f0, 0x14(r28)
/* 801A3E40  38 00 00 00 */	li r0, 0
/* 801A3E44  98 1C 00 18 */	stb r0, 0x18(r28)
/* 801A3E48  98 1C 00 19 */	stb r0, 0x19(r28)
/* 801A3E4C  98 1C 00 1A */	stb r0, 0x1a(r28)
/* 801A3E50  C0 22 A2 48 */	lfs f1, lit_4505(r2)
/* 801A3E54  D0 3C 00 1C */	stfs f1, 0x1c(r28)
/* 801A3E58  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A3E5C  D0 1C 00 20 */	stfs f0, 0x20(r28)
/* 801A3E60  D0 1C 00 24 */	stfs f0, 0x24(r28)
/* 801A3E64  D0 3C 00 28 */	stfs f1, 0x28(r28)
/* 801A3E68  D0 1C 00 2C */	stfs f0, 0x2c(r28)
/* 801A3E6C  D0 1C 00 30 */	stfs f0, 0x30(r28)
/* 801A3E70  48 00 05 34 */	b lbl_801A43A4
lbl_801A3E74:
/* 801A3E74  57 60 06 37 */	rlwinm. r0, r27, 0, 0x18, 0x1b
/* 801A3E78  40 82 01 F8 */	bne lbl_801A4070
/* 801A3E7C  38 00 00 01 */	li r0, 1
/* 801A3E80  98 1C 03 82 */	stb r0, 0x382(r28)
/* 801A3E84  A8 1A 11 00 */	lha r0, 0x1100(r26)
/* 801A3E88  B0 01 00 30 */	sth r0, 0x30(r1)
/* 801A3E8C  A8 1A 11 02 */	lha r0, 0x1102(r26)
/* 801A3E90  B0 01 00 32 */	sth r0, 0x32(r1)
/* 801A3E94  A8 1A 11 04 */	lha r0, 0x1104(r26)
/* 801A3E98  B0 01 00 34 */	sth r0, 0x34(r1)
/* 801A3E9C  A8 1A 11 06 */	lha r0, 0x1106(r26)
/* 801A3EA0  B0 01 00 36 */	sth r0, 0x36(r1)
/* 801A3EA4  A8 1A 11 58 */	lha r0, 0x1158(r26)
/* 801A3EA8  B0 01 00 28 */	sth r0, 0x28(r1)
/* 801A3EAC  A8 1A 11 5A */	lha r0, 0x115a(r26)
/* 801A3EB0  B0 01 00 2A */	sth r0, 0x2a(r1)
/* 801A3EB4  A8 1A 11 5C */	lha r0, 0x115c(r26)
/* 801A3EB8  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 801A3EBC  A8 1A 11 5E */	lha r0, 0x115e(r26)
/* 801A3EC0  B0 01 00 2E */	sth r0, 0x2e(r1)
/* 801A3EC4  C0 1A 11 E4 */	lfs f0, 0x11e4(r26)
/* 801A3EC8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 801A3ECC  C0 1A 11 E8 */	lfs f0, 0x11e8(r26)
/* 801A3ED0  D0 01 00 08 */	stfs f0, 8(r1)
/* 801A3ED4  38 1B FF F9 */	addi r0, r27, -7
/* 801A3ED8  28 00 00 01 */	cmplwi r0, 1
/* 801A3EDC  40 81 00 14 */	ble lbl_801A3EF0
/* 801A3EE0  28 1B 00 05 */	cmplwi r27, 5
/* 801A3EE4  40 81 00 0C */	ble lbl_801A3EF0
/* 801A3EE8  2C 1B 00 0B */	cmpwi r27, 0xb
/* 801A3EEC  40 82 00 28 */	bne lbl_801A3F14
lbl_801A3EF0:
/* 801A3EF0  7F 43 D3 78 */	mr r3, r26
/* 801A3EF4  7F A4 EB 78 */	mr r4, r29
/* 801A3EF8  7F 85 E3 78 */	mr r5, r28
/* 801A3EFC  38 C1 00 30 */	addi r6, r1, 0x30
/* 801A3F00  38 E1 00 28 */	addi r7, r1, 0x28
/* 801A3F04  39 01 00 0C */	addi r8, r1, 0xc
/* 801A3F08  39 21 00 08 */	addi r9, r1, 8
/* 801A3F0C  4B FF DE 59 */	bl settingTevStruct_colget_actor__18dScnKy_env_light_cFP4cXyzP12dKy_tevstr_cP11_GXColorS10P11_GXColorS10PfPf
/* 801A3F10  48 00 00 C8 */	b lbl_801A3FD8
lbl_801A3F14:
/* 801A3F14  2C 1B 00 0A */	cmpwi r27, 0xa
/* 801A3F18  41 82 00 0C */	beq lbl_801A3F24
/* 801A3F1C  2C 1B 00 09 */	cmpwi r27, 9
/* 801A3F20  40 82 00 B8 */	bne lbl_801A3FD8
lbl_801A3F24:
/* 801A3F24  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A3F28  38 83 CA 54 */	addi r4, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A3F2C  88 64 09 8C */	lbz r3, 0x98c(r4)
/* 801A3F30  8B 2D 87 E4 */	lbz r25, struct_80450D64+0x0(r13)
/* 801A3F34  7F 39 07 74 */	extsb r25, r25
/* 801A3F38  57 20 06 3E */	clrlwi r0, r25, 0x18
/* 801A3F3C  7C 03 00 40 */	cmplw r3, r0
/* 801A3F40  41 82 00 60 */	beq lbl_801A3FA0
/* 801A3F44  9B 24 09 8C */	stb r25, 0x98c(r4)
/* 801A3F48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801A3F4C  38 A3 61 C0 */	addi r5, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801A3F50  3B C5 4E 00 */	addi r30, r5, 0x4e00
/* 801A3F54  7F C3 F3 78 */	mr r3, r30
/* 801A3F58  7F 24 CB 78 */	mr r4, r25
/* 801A3F5C  88 05 4E 0B */	lbz r0, 0x4e0b(r5)
/* 801A3F60  7C 05 07 74 */	extsb r5, r0
/* 801A3F64  4B E8 89 ED */	bl getLayerNo_common__14dComIfG_play_cFPCcii
/* 801A3F68  7C 65 1B 78 */	mr r5, r3
/* 801A3F6C  7F C3 F3 78 */	mr r3, r30
/* 801A3F70  7F 24 CB 78 */	mr r4, r25
/* 801A3F74  4B E6 32 49 */	bl mDoAud_setSceneName__FPCcll
/* 801A3F78  7F C3 F3 78 */	mr r3, r30
/* 801A3F7C  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 801A3F80  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 801A3F84  38 84 01 92 */	addi r4, r4, 0x192
/* 801A3F88  48 1C 4A 0D */	bl strcmp
/* 801A3F8C  2C 03 00 00 */	cmpwi r3, 0
/* 801A3F90  40 82 00 10 */	bne lbl_801A3FA0
/* 801A3F94  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801A3F98  38 63 04 A4 */	addi r3, r3, 0x4a4
/* 801A3F9C  48 11 61 85 */	bl load2ndDynamicWave__10Z2SceneMgrFv
lbl_801A3FA0:
/* 801A3FA0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A3FA4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A3FA8  8B C3 12 D2 */	lbz r30, 0x12d2(r3)
/* 801A3FAC  7F 43 D3 78 */	mr r3, r26
/* 801A3FB0  7F 84 E3 78 */	mr r4, r28
/* 801A3FB4  4B FF DF A5 */	bl settingTevStruct_colget_player__18dScnKy_env_light_cFP12dKy_tevstr_c
/* 801A3FB8  7F 43 D3 78 */	mr r3, r26
/* 801A3FBC  7F A4 EB 78 */	mr r4, r29
/* 801A3FC0  7F 85 E3 78 */	mr r5, r28
/* 801A3FC4  38 C1 00 30 */	addi r6, r1, 0x30
/* 801A3FC8  38 E1 00 28 */	addi r7, r1, 0x28
/* 801A3FCC  39 01 00 0C */	addi r8, r1, 0xc
/* 801A3FD0  39 21 00 08 */	addi r9, r1, 8
/* 801A3FD4  4B FF DD 91 */	bl settingTevStruct_colget_actor__18dScnKy_env_light_cFP4cXyzP12dKy_tevstr_cP11_GXColorS10P11_GXColorS10PfPf
lbl_801A3FD8:
/* 801A3FD8  A8 01 00 30 */	lha r0, 0x30(r1)
/* 801A3FDC  B0 1A 10 F0 */	sth r0, 0x10f0(r26)
/* 801A3FE0  A8 01 00 32 */	lha r0, 0x32(r1)
/* 801A3FE4  B0 1A 10 F2 */	sth r0, 0x10f2(r26)
/* 801A3FE8  A8 01 00 34 */	lha r0, 0x34(r1)
/* 801A3FEC  B0 1A 10 F4 */	sth r0, 0x10f4(r26)
/* 801A3FF0  38 00 00 FF */	li r0, 0xff
/* 801A3FF4  B0 1A 10 F6 */	sth r0, 0x10f6(r26)
/* 801A3FF8  2C 1B 00 0B */	cmpwi r27, 0xb
/* 801A3FFC  41 82 00 40 */	beq lbl_801A403C
/* 801A4000  80 61 00 30 */	lwz r3, 0x30(r1)
/* 801A4004  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801A4008  90 61 00 10 */	stw r3, 0x10(r1)
/* 801A400C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A4010  90 61 00 18 */	stw r3, 0x18(r1)
/* 801A4014  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801A4018  90 61 00 20 */	stw r3, 0x20(r1)
/* 801A401C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801A4020  7F 43 D3 78 */	mr r3, r26
/* 801A4024  7F A4 EB 78 */	mr r4, r29
/* 801A4028  7F 85 E3 78 */	mr r5, r28
/* 801A402C  38 C1 00 20 */	addi r6, r1, 0x20
/* 801A4030  38 E1 00 18 */	addi r7, r1, 0x18
/* 801A4034  7F C8 F3 78 */	mr r8, r30
/* 801A4038  4B FF E0 F1 */	bl settingTevStruct_plightcol_plus__18dScnKy_env_light_cFP4cXyzP12dKy_tevstr_c11_GXColorS1011_GXColorS10Uc
lbl_801A403C:
/* 801A403C  2C 1B 00 0A */	cmpwi r27, 0xa
/* 801A4040  41 82 00 0C */	beq lbl_801A404C
/* 801A4044  2C 1B 00 09 */	cmpwi r27, 9
/* 801A4048  40 82 03 5C */	bne lbl_801A43A4
lbl_801A404C:
/* 801A404C  C0 1C 03 38 */	lfs f0, 0x338(r28)
/* 801A4050  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A4054  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A4058  D0 03 10 7C */	stfs f0, 0x107c(r3)
/* 801A405C  C0 1C 03 3C */	lfs f0, 0x33c(r28)
/* 801A4060  D0 03 10 80 */	stfs f0, 0x1080(r3)
/* 801A4064  C0 1C 03 40 */	lfs f0, 0x340(r28)
/* 801A4068  D0 03 10 84 */	stfs f0, 0x1084(r3)
/* 801A406C  48 00 03 38 */	b lbl_801A43A4
lbl_801A4070:
/* 801A4070  38 00 00 00 */	li r0, 0
/* 801A4074  98 1C 03 82 */	stb r0, 0x382(r28)
/* 801A4078  88 1C 03 7A */	lbz r0, 0x37a(r28)
/* 801A407C  28 00 00 14 */	cmplwi r0, 0x14
/* 801A4080  41 82 00 18 */	beq lbl_801A4098
/* 801A4084  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A4088  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A408C  C0 03 12 5C */	lfs f0, 0x125c(r3)
/* 801A4090  D0 1C 03 74 */	stfs f0, 0x374(r28)
/* 801A4094  48 00 00 90 */	b lbl_801A4124
lbl_801A4098:
/* 801A4098  88 1C 03 64 */	lbz r0, 0x364(r28)
/* 801A409C  28 00 00 07 */	cmplwi r0, 7
/* 801A40A0  41 81 00 7C */	bgt lbl_801A411C
/* 801A40A4  3C 60 80 3C */	lis r3, lit_7029@ha /* 0x803BC050@ha */
/* 801A40A8  38 63 C0 50 */	addi r3, r3, lit_7029@l /* 0x803BC050@l */
/* 801A40AC  54 00 10 3A */	slwi r0, r0, 2
/* 801A40B0  7C 03 00 2E */	lwzx r0, r3, r0
/* 801A40B4  7C 09 03 A6 */	mtctr r0
/* 801A40B8  4E 80 04 20 */	bctr 
/* 801A40BC  C0 02 A2 F4 */	lfs f0, lit_6035(r2)
/* 801A40C0  D0 1C 03 74 */	stfs f0, 0x374(r28)
/* 801A40C4  48 00 00 60 */	b lbl_801A4124
/* 801A40C8  C0 02 A3 80 */	lfs f0, lit_7024(r2)
/* 801A40CC  D0 1C 03 74 */	stfs f0, 0x374(r28)
/* 801A40D0  48 00 00 54 */	b lbl_801A4124
/* 801A40D4  C0 02 A2 FC */	lfs f0, lit_6037(r2)
/* 801A40D8  D0 1C 03 74 */	stfs f0, 0x374(r28)
/* 801A40DC  48 00 00 48 */	b lbl_801A4124
/* 801A40E0  C0 02 A3 84 */	lfs f0, lit_7025(r2)
/* 801A40E4  D0 1C 03 74 */	stfs f0, 0x374(r28)
/* 801A40E8  48 00 00 3C */	b lbl_801A4124
/* 801A40EC  C0 02 A2 F8 */	lfs f0, lit_6036(r2)
/* 801A40F0  D0 1C 03 74 */	stfs f0, 0x374(r28)
/* 801A40F4  48 00 00 30 */	b lbl_801A4124
/* 801A40F8  C0 02 A3 88 */	lfs f0, lit_7026(r2)
/* 801A40FC  D0 1C 03 74 */	stfs f0, 0x374(r28)
/* 801A4100  48 00 00 24 */	b lbl_801A4124
/* 801A4104  C0 02 A2 48 */	lfs f0, lit_4505(r2)
/* 801A4108  D0 1C 03 74 */	stfs f0, 0x374(r28)
/* 801A410C  48 00 00 18 */	b lbl_801A4124
/* 801A4110  C0 02 A3 8C */	lfs f0, lit_7027(r2)
/* 801A4114  D0 1C 03 74 */	stfs f0, 0x374(r28)
/* 801A4118  48 00 00 0C */	b lbl_801A4124
lbl_801A411C:
/* 801A411C  C0 02 A2 48 */	lfs f0, lit_4505(r2)
/* 801A4120  D0 1C 03 74 */	stfs f0, 0x374(r28)
lbl_801A4124:
/* 801A4124  88 7C 03 80 */	lbz r3, 0x380(r28)
/* 801A4128  7C 60 07 74 */	extsb r0, r3
/* 801A412C  2C 00 00 80 */	cmpwi r0, 0x80
/* 801A4130  41 80 00 10 */	blt lbl_801A4140
/* 801A4134  38 00 00 00 */	li r0, 0
/* 801A4138  98 1C 03 7C */	stb r0, 0x37c(r28)
/* 801A413C  48 00 00 08 */	b lbl_801A4144
lbl_801A4140:
/* 801A4140  98 7C 03 7C */	stb r3, 0x37c(r28)
lbl_801A4144:
/* 801A4144  7F 43 D3 78 */	mr r3, r26
/* 801A4148  7F 84 E3 78 */	mr r4, r28
/* 801A414C  38 A1 00 B0 */	addi r5, r1, 0xb0
/* 801A4150  38 C1 00 28 */	addi r6, r1, 0x28
/* 801A4154  38 E1 00 0C */	addi r7, r1, 0xc
/* 801A4158  39 01 00 08 */	addi r8, r1, 8
/* 801A415C  4B FF D1 E1 */	bl setLight_bg__18dScnKy_env_light_cFP12dKy_tevstr_cP11_GXColorS10P11_GXColorS10PfPf
/* 801A4160  57 64 1E F8 */	rlwinm r4, r27, 3, 0x1b, 0x1c
/* 801A4164  38 61 00 B0 */	addi r3, r1, 0xb0
/* 801A4168  7C 03 22 AE */	lhax r0, r3, r4
/* 801A416C  B0 1A 10 F0 */	sth r0, 0x10f0(r26)
/* 801A4170  38 61 00 B2 */	addi r3, r1, 0xb2
/* 801A4174  7C 03 22 AE */	lhax r0, r3, r4
/* 801A4178  B0 1A 10 F2 */	sth r0, 0x10f2(r26)
/* 801A417C  38 61 00 B4 */	addi r3, r1, 0xb4
/* 801A4180  7C 03 22 AE */	lhax r0, r3, r4
/* 801A4184  B0 1A 10 F4 */	sth r0, 0x10f4(r26)
/* 801A4188  38 61 00 B6 */	addi r3, r1, 0xb6
/* 801A418C  7C 03 22 AE */	lhax r0, r3, r4
/* 801A4190  B0 1A 10 F6 */	sth r0, 0x10f6(r26)
/* 801A4194  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 801A4198  38 03 4A C8 */	addi r0, r3, j3dSys@l /* 0x80434AC8@l */
/* 801A419C  7C 1B 03 78 */	mr r27, r0
/* 801A41A0  3B 20 00 00 */	li r25, 0
/* 801A41A4  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A41A8  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 801A41AC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 801A41B0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 801A41B4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 801A41B8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 801A41BC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 801A41C0  38 61 00 38 */	addi r3, r1, 0x38
/* 801A41C4  38 80 00 00 */	li r4, 0
/* 801A41C8  4B FF 9B A5 */	bl dKy_light_influence_id__F4cXyzi
/* 801A41CC  2C 03 00 00 */	cmpwi r3, 0
/* 801A41D0  41 80 00 28 */	blt lbl_801A41F8
/* 801A41D4  3C 80 80 43 */	lis r4, g_env_light@ha /* 0x8042CA54@ha */
/* 801A41D8  38 84 CA 54 */	addi r4, r4, g_env_light@l /* 0x8042CA54@l */
/* 801A41DC  54 60 10 3A */	slwi r0, r3, 2
/* 801A41E0  7C 84 02 14 */	add r4, r4, r0
/* 801A41E4  80 84 03 F8 */	lwz r4, 0x3f8(r4)
/* 801A41E8  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 801A41EC  2C 00 00 00 */	cmpwi r0, 0
/* 801A41F0  40 80 00 08 */	bge lbl_801A41F8
/* 801A41F4  3B 20 00 01 */	li r25, 1
lbl_801A41F8:
/* 801A41F8  57 20 06 3E */	clrlwi r0, r25, 0x18
/* 801A41FC  28 00 00 01 */	cmplwi r0, 1
/* 801A4200  40 82 00 F4 */	bne lbl_801A42F4
/* 801A4204  3C 80 80 43 */	lis r4, g_env_light@ha /* 0x8042CA54@ha */
/* 801A4208  38 84 CA 54 */	addi r4, r4, g_env_light@l /* 0x8042CA54@l */
/* 801A420C  54 60 10 3A */	slwi r0, r3, 2
/* 801A4210  7F 24 02 14 */	add r25, r4, r0
/* 801A4214  84 79 03 F8 */	lwzu r3, 0x3f8(r25)
/* 801A4218  C0 03 00 00 */	lfs f0, 0(r3)
/* 801A421C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 801A4220  C0 03 00 04 */	lfs f0, 4(r3)
/* 801A4224  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 801A4228  C0 03 00 08 */	lfs f0, 8(r3)
/* 801A422C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 801A4230  7F 63 DB 78 */	mr r3, r27
/* 801A4234  38 81 00 50 */	addi r4, r1, 0x50
/* 801A4238  38 A1 00 5C */	addi r5, r1, 0x5c
/* 801A423C  48 1A 2B 31 */	bl PSMTXMultVec
/* 801A4240  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 801A4244  D0 1C 00 00 */	stfs f0, 0(r28)
/* 801A4248  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 801A424C  D0 1C 00 04 */	stfs f0, 4(r28)
/* 801A4250  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 801A4254  D0 1C 00 08 */	stfs f0, 8(r28)
/* 801A4258  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 801A425C  D0 1C 03 2C */	stfs f0, 0x32c(r28)
/* 801A4260  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 801A4264  D0 1C 03 30 */	stfs f0, 0x330(r28)
/* 801A4268  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 801A426C  D0 1C 03 34 */	stfs f0, 0x334(r28)
/* 801A4270  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A4274  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A4278  C0 03 10 64 */	lfs f0, 0x1064(r3)
/* 801A427C  D0 1C 00 0C */	stfs f0, 0xc(r28)
/* 801A4280  C0 03 10 68 */	lfs f0, 0x1068(r3)
/* 801A4284  D0 1C 00 10 */	stfs f0, 0x10(r28)
/* 801A4288  C0 03 10 6C */	lfs f0, 0x106c(r3)
/* 801A428C  D0 1C 00 14 */	stfs f0, 0x14(r28)
/* 801A4290  80 79 00 00 */	lwz r3, 0(r25)
/* 801A4294  A8 03 00 12 */	lha r0, 0x12(r3)
/* 801A4298  98 1C 00 1B */	stb r0, 0x1b(r28)
/* 801A429C  80 79 00 00 */	lwz r3, 0(r25)
/* 801A42A0  A8 03 00 0C */	lha r0, 0xc(r3)
/* 801A42A4  98 1C 00 18 */	stb r0, 0x18(r28)
/* 801A42A8  80 79 00 00 */	lwz r3, 0(r25)
/* 801A42AC  A8 03 00 0E */	lha r0, 0xe(r3)
/* 801A42B0  98 1C 00 19 */	stb r0, 0x19(r28)
/* 801A42B4  80 79 00 00 */	lwz r3, 0(r25)
/* 801A42B8  A8 03 00 10 */	lha r0, 0x10(r3)
/* 801A42BC  98 1C 00 1A */	stb r0, 0x1a(r28)
/* 801A42C0  7F 83 E3 78 */	mr r3, r28
/* 801A42C4  C0 22 A2 2C */	lfs f1, lit_4442(r2)
/* 801A42C8  38 80 00 00 */	li r4, 0
/* 801A42CC  4B FF 8F F9 */	bl dKy_GXInitLightSpot__FP12J3DLightInfofUc
/* 801A42D0  7F 83 E3 78 */	mr r3, r28
/* 801A42D4  C0 22 A2 9C */	lfs f1, lit_5194(r2)
/* 801A42D8  80 99 00 00 */	lwz r4, 0(r25)
/* 801A42DC  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 801A42E0  EC 21 00 32 */	fmuls f1, f1, f0
/* 801A42E4  C0 42 A3 50 */	lfs f2, lit_7012(r2)
/* 801A42E8  38 80 00 03 */	li r4, 3
/* 801A42EC  4B FF 91 61 */	bl dKy_GXInitLightDistAttn__FP12J3DLightInfoffUc
/* 801A42F0  48 00 00 9C */	b lbl_801A438C
lbl_801A42F4:
/* 801A42F4  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 801A42F8  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 801A42FC  3C 80 80 43 */	lis r4, lightStatusData@ha /* 0x8042E07C@ha */
/* 801A4300  38 84 E0 7C */	addi r4, r4, lightStatusData@l /* 0x8042E07C@l */
/* 801A4304  38 A1 00 44 */	addi r5, r1, 0x44
/* 801A4308  48 1A 2A 65 */	bl PSMTXMultVec
/* 801A430C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 801A4310  D0 1C 00 00 */	stfs f0, 0(r28)
/* 801A4314  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 801A4318  D0 1C 00 04 */	stfs f0, 4(r28)
/* 801A431C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 801A4320  D0 1C 00 08 */	stfs f0, 8(r28)
/* 801A4324  3C 60 80 43 */	lis r3, lightStatusData@ha /* 0x8042E07C@ha */
/* 801A4328  C4 03 E0 7C */	lfsu f0, lightStatusData@l(r3)  /* 0x8042E07C@l */
/* 801A432C  D0 1C 03 2C */	stfs f0, 0x32c(r28)
/* 801A4330  C0 03 00 04 */	lfs f0, 4(r3)
/* 801A4334  D0 1C 03 30 */	stfs f0, 0x330(r28)
/* 801A4338  C0 03 00 08 */	lfs f0, 8(r3)
/* 801A433C  D0 1C 03 34 */	stfs f0, 0x334(r28)
/* 801A4340  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A4344  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A4348  C0 03 10 64 */	lfs f0, 0x1064(r3)
/* 801A434C  D0 1C 00 0C */	stfs f0, 0xc(r28)
/* 801A4350  C0 03 10 68 */	lfs f0, 0x1068(r3)
/* 801A4354  D0 1C 00 10 */	stfs f0, 0x10(r28)
/* 801A4358  C0 03 10 6C */	lfs f0, 0x106c(r3)
/* 801A435C  D0 1C 00 14 */	stfs f0, 0x14(r28)
/* 801A4360  38 00 00 00 */	li r0, 0
/* 801A4364  98 1C 00 18 */	stb r0, 0x18(r28)
/* 801A4368  98 1C 00 19 */	stb r0, 0x19(r28)
/* 801A436C  98 1C 00 1A */	stb r0, 0x1a(r28)
/* 801A4370  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A4374  D0 1C 00 1C */	stfs f0, 0x1c(r28)
/* 801A4378  D0 1C 00 20 */	stfs f0, 0x20(r28)
/* 801A437C  D0 1C 00 24 */	stfs f0, 0x24(r28)
/* 801A4380  D0 1C 00 28 */	stfs f0, 0x28(r28)
/* 801A4384  D0 1C 00 2C */	stfs f0, 0x2c(r28)
/* 801A4388  D0 1C 00 30 */	stfs f0, 0x30(r28)
lbl_801A438C:
/* 801A438C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 801A4390  D0 1C 03 38 */	stfs f0, 0x338(r28)
/* 801A4394  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 801A4398  D0 1C 03 3C */	stfs f0, 0x33c(r28)
/* 801A439C  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 801A43A0  D0 1C 03 40 */	stfs f0, 0x340(r28)
lbl_801A43A4:
/* 801A43A4  38 00 00 FF */	li r0, 0xff
/* 801A43A8  B0 1A 10 F6 */	sth r0, 0x10f6(r26)
/* 801A43AC  A8 1A 10 F0 */	lha r0, 0x10f0(r26)
/* 801A43B0  B0 1C 03 48 */	sth r0, 0x348(r28)
/* 801A43B4  A8 1A 10 F2 */	lha r0, 0x10f2(r26)
/* 801A43B8  B0 1C 03 4A */	sth r0, 0x34a(r28)
/* 801A43BC  A8 1A 10 F4 */	lha r0, 0x10f4(r26)
/* 801A43C0  B0 1C 03 4C */	sth r0, 0x34c(r28)
/* 801A43C4  A8 1A 10 F6 */	lha r0, 0x10f6(r26)
/* 801A43C8  B0 1C 03 4E */	sth r0, 0x34e(r28)
/* 801A43CC  A8 01 00 28 */	lha r0, 0x28(r1)
/* 801A43D0  B0 1C 03 50 */	sth r0, 0x350(r28)
/* 801A43D4  A8 01 00 2A */	lha r0, 0x2a(r1)
/* 801A43D8  B0 1C 03 52 */	sth r0, 0x352(r28)
/* 801A43DC  A8 01 00 2C */	lha r0, 0x2c(r1)
/* 801A43E0  B0 1C 03 54 */	sth r0, 0x354(r28)
/* 801A43E4  A8 01 00 2E */	lha r0, 0x2e(r1)
/* 801A43E8  B0 1C 03 56 */	sth r0, 0x356(r28)
/* 801A43EC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 801A43F0  D0 1C 03 68 */	stfs f0, 0x368(r28)
/* 801A43F4  C0 01 00 08 */	lfs f0, 8(r1)
/* 801A43F8  D0 1C 03 6C */	stfs f0, 0x36c(r28)
/* 801A43FC  E3 E1 01 08 */	psq_l f31, 264(r1), 0, 0 /* qr0 */
/* 801A4400  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 801A4404  39 61 01 00 */	addi r11, r1, 0x100
/* 801A4408  48 1B DE 11 */	bl _restgpr_25
/* 801A440C  80 01 01 14 */	lwz r0, 0x114(r1)
/* 801A4410  7C 08 03 A6 */	mtlr r0
/* 801A4414  38 21 01 10 */	addi r1, r1, 0x110
/* 801A4418  4E 80 00 20 */	blr 
