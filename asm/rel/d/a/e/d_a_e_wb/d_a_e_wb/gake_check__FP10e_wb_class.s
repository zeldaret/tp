lbl_807D387C:
/* 807D387C  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 807D3880  7C 08 02 A6 */	mflr r0
/* 807D3884  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 807D3888  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 807D388C  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 807D3890  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 807D3894  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 807D3898  39 61 00 90 */	addi r11, r1, 0x90
/* 807D389C  4B B8 E9 34 */	b _savegpr_26
/* 807D38A0  3C 80 80 7E */	lis r4, lit_3882@ha
/* 807D38A4  3B E4 29 8C */	addi r31, r4, lit_3882@l
/* 807D38A8  7C 7E 1B 78 */	mr r30, r3
/* 807D38AC  38 61 00 20 */	addi r3, r1, 0x20
/* 807D38B0  4B 8A 3C CC */	b __ct__11dBgS_GndChkFv
/* 807D38B4  3C 60 80 7E */	lis r3, struct_807E35B4+0x2@ha
/* 807D38B8  88 03 35 B6 */	lbz r0, struct_807E35B4+0x2@l(r3)
/* 807D38BC  7C 00 07 75 */	extsb. r0, r0
/* 807D38C0  41 82 01 38 */	beq lbl_807D39F8
/* 807D38C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807D38C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807D38CC  83 83 5D B4 */	lwz r28, 0x5db4(r3)
/* 807D38D0  3B 60 00 00 */	li r27, 0
/* 807D38D4  7F 83 E3 78 */	mr r3, r28
/* 807D38D8  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 807D38DC  81 8C 01 8C */	lwz r12, 0x18c(r12)
/* 807D38E0  7D 89 03 A6 */	mtctr r12
/* 807D38E4  4E 80 04 21 */	bctrl 
/* 807D38E8  28 03 00 00 */	cmplwi r3, 0
/* 807D38EC  41 82 00 14 */	beq lbl_807D3900
/* 807D38F0  80 1C 28 18 */	lwz r0, 0x2818(r28)
/* 807D38F4  7C 00 F0 40 */	cmplw r0, r30
/* 807D38F8  40 82 00 08 */	bne lbl_807D3900
/* 807D38FC  3B 60 00 01 */	li r27, 1
lbl_807D3900:
/* 807D3900  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 807D3904  40 82 00 30 */	bne lbl_807D3934
/* 807D3908  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 807D390C  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 807D3910  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D3914  40 80 00 20 */	bge lbl_807D3934
/* 807D3918  7F C3 F3 78 */	mr r3, r30
/* 807D391C  4B 84 63 60 */	b fopAcM_delete__FP10fopAc_ac_c
/* 807D3920  38 61 00 20 */	addi r3, r1, 0x20
/* 807D3924  38 80 FF FF */	li r4, -1
/* 807D3928  4B 8A 3C C8 */	b __dt__11dBgS_GndChkFv
/* 807D392C  38 60 00 00 */	li r3, 0
/* 807D3930  48 00 02 3C */	b lbl_807D3B6C
lbl_807D3934:
/* 807D3934  3B 40 00 00 */	li r26, 0
/* 807D3938  3B A0 00 00 */	li r29, 0
/* 807D393C  3C 60 80 7E */	lis r3, chk_x@ha
/* 807D3940  3B 63 2F 7C */	addi r27, r3, chk_x@l
/* 807D3944  3C 60 80 7E */	lis r3, chk_z@ha
/* 807D3948  3B 83 2F 8C */	addi r28, r3, chk_z@l
/* 807D394C  C3 DF 00 48 */	lfs f30, 0x48(r31)
/* 807D3950  C3 FF 00 BC */	lfs f31, 0xbc(r31)
lbl_807D3954:
/* 807D3954  7C 3B EC 2E */	lfsx f1, r27, r29
/* 807D3958  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807D395C  EC 21 00 28 */	fsubs f1, f1, f0
/* 807D3960  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 807D3964  7C 5C EC 2E */	lfsx f2, r28, r29
/* 807D3968  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 807D396C  EC 42 00 28 */	fsubs f2, f2, f0
/* 807D3970  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 807D3974  4B A9 3D 00 */	b cM_atan2s__Fff
/* 807D3978  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 807D397C  7C 00 18 50 */	subf r0, r0, r3
/* 807D3980  7C 00 07 34 */	extsh r0, r0
/* 807D3984  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 807D3988  EC 20 00 32 */	fmuls f1, f0, f0
/* 807D398C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 807D3990  EC 00 00 32 */	fmuls f0, f0, f0
/* 807D3994  EC 21 00 2A */	fadds f1, f1, f0
/* 807D3998  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 807D399C  40 81 00 0C */	ble lbl_807D39A8
/* 807D39A0  FC 00 08 34 */	frsqrte f0, f1
/* 807D39A4  EC 20 00 72 */	fmuls f1, f0, f1
lbl_807D39A8:
/* 807D39A8  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 807D39AC  40 80 00 3C */	bge lbl_807D39E8
/* 807D39B0  2C 00 40 00 */	cmpwi r0, 0x4000
/* 807D39B4  40 80 00 20 */	bge lbl_807D39D4
/* 807D39B8  2C 00 C0 00 */	cmpwi r0, -16384
/* 807D39BC  40 81 00 18 */	ble lbl_807D39D4
/* 807D39C0  38 61 00 20 */	addi r3, r1, 0x20
/* 807D39C4  38 80 FF FF */	li r4, -1
/* 807D39C8  4B 8A 3C 28 */	b __dt__11dBgS_GndChkFv
/* 807D39CC  38 60 00 02 */	li r3, 2
/* 807D39D0  48 00 01 9C */	b lbl_807D3B6C
lbl_807D39D4:
/* 807D39D4  38 61 00 20 */	addi r3, r1, 0x20
/* 807D39D8  38 80 FF FF */	li r4, -1
/* 807D39DC  4B 8A 3C 14 */	b __dt__11dBgS_GndChkFv
/* 807D39E0  38 60 FF FF */	li r3, -1
/* 807D39E4  48 00 01 88 */	b lbl_807D3B6C
lbl_807D39E8:
/* 807D39E8  3B 5A 00 01 */	addi r26, r26, 1
/* 807D39EC  2C 1A 00 04 */	cmpwi r26, 4
/* 807D39F0  3B BD 00 04 */	addi r29, r29, 4
/* 807D39F4  41 80 FF 60 */	blt lbl_807D3954
lbl_807D39F8:
/* 807D39F8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807D39FC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807D3A00  80 63 00 00 */	lwz r3, 0(r3)
/* 807D3A04  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 807D3A08  4B 83 89 D4 */	b mDoMtx_YrotS__FPA4_fs
/* 807D3A0C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 807D3A10  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807D3A14  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 807D3A18  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807D3A1C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807D3A20  38 61 00 14 */	addi r3, r1, 0x14
/* 807D3A24  38 81 00 08 */	addi r4, r1, 8
/* 807D3A28  4B A9 D4 C4 */	b MtxPosition__FP4cXyzP4cXyz
/* 807D3A2C  38 61 00 08 */	addi r3, r1, 8
/* 807D3A30  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807D3A34  7C 65 1B 78 */	mr r5, r3
/* 807D3A38  4B B7 36 58 */	b PSVECAdd
/* 807D3A3C  38 61 00 20 */	addi r3, r1, 0x20
/* 807D3A40  38 81 00 08 */	addi r4, r1, 8
/* 807D3A44  4B A9 42 E4 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 807D3A48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807D3A4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807D3A50  3B 63 0F 38 */	addi r27, r3, 0xf38
/* 807D3A54  7F 63 DB 78 */	mr r3, r27
/* 807D3A58  38 81 00 20 */	addi r4, r1, 0x20
/* 807D3A5C  4B 8A 0A 44 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 807D3A60  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 807D3A64  EC 20 08 28 */	fsubs f1, f0, f1
/* 807D3A68  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 807D3A6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D3A70  40 81 00 18 */	ble lbl_807D3A88
/* 807D3A74  38 61 00 20 */	addi r3, r1, 0x20
/* 807D3A78  38 80 FF FF */	li r4, -1
/* 807D3A7C  4B 8A 3B 74 */	b __dt__11dBgS_GndChkFv
/* 807D3A80  38 60 00 01 */	li r3, 1
/* 807D3A84  48 00 00 E8 */	b lbl_807D3B6C
lbl_807D3A88:
/* 807D3A88  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 807D3A8C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807D3A90  38 61 00 14 */	addi r3, r1, 0x14
/* 807D3A94  38 81 00 08 */	addi r4, r1, 8
/* 807D3A98  4B A9 D4 54 */	b MtxPosition__FP4cXyzP4cXyz
/* 807D3A9C  38 61 00 08 */	addi r3, r1, 8
/* 807D3AA0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807D3AA4  7C 65 1B 78 */	mr r5, r3
/* 807D3AA8  4B B7 35 E8 */	b PSVECAdd
/* 807D3AAC  38 61 00 20 */	addi r3, r1, 0x20
/* 807D3AB0  38 81 00 08 */	addi r4, r1, 8
/* 807D3AB4  4B A9 42 74 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 807D3AB8  7F 63 DB 78 */	mr r3, r27
/* 807D3ABC  38 81 00 20 */	addi r4, r1, 0x20
/* 807D3AC0  4B 8A 09 E0 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 807D3AC4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 807D3AC8  EC 00 08 28 */	fsubs f0, f0, f1
/* 807D3ACC  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 807D3AD0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 807D3AD4  40 81 00 18 */	ble lbl_807D3AEC
/* 807D3AD8  38 61 00 20 */	addi r3, r1, 0x20
/* 807D3ADC  38 80 FF FF */	li r4, -1
/* 807D3AE0  4B 8A 3B 10 */	b __dt__11dBgS_GndChkFv
/* 807D3AE4  38 60 00 01 */	li r3, 1
/* 807D3AE8  48 00 00 84 */	b lbl_807D3B6C
lbl_807D3AEC:
/* 807D3AEC  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 807D3AF0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807D3AF4  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 807D3AF8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807D3AFC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 807D3B00  38 61 00 14 */	addi r3, r1, 0x14
/* 807D3B04  38 81 00 08 */	addi r4, r1, 8
/* 807D3B08  4B A9 D3 E4 */	b MtxPosition__FP4cXyzP4cXyz
/* 807D3B0C  38 61 00 08 */	addi r3, r1, 8
/* 807D3B10  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807D3B14  7C 65 1B 78 */	mr r5, r3
/* 807D3B18  4B B7 35 78 */	b PSVECAdd
/* 807D3B1C  38 61 00 20 */	addi r3, r1, 0x20
/* 807D3B20  38 81 00 08 */	addi r4, r1, 8
/* 807D3B24  4B A9 42 04 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 807D3B28  7F 63 DB 78 */	mr r3, r27
/* 807D3B2C  38 81 00 20 */	addi r4, r1, 0x20
/* 807D3B30  4B 8A 09 70 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 807D3B34  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 807D3B38  EC 20 08 28 */	fsubs f1, f0, f1
/* 807D3B3C  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 807D3B40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D3B44  40 81 00 18 */	ble lbl_807D3B5C
/* 807D3B48  38 61 00 20 */	addi r3, r1, 0x20
/* 807D3B4C  38 80 FF FF */	li r4, -1
/* 807D3B50  4B 8A 3A A0 */	b __dt__11dBgS_GndChkFv
/* 807D3B54  38 60 00 01 */	li r3, 1
/* 807D3B58  48 00 00 14 */	b lbl_807D3B6C
lbl_807D3B5C:
/* 807D3B5C  38 61 00 20 */	addi r3, r1, 0x20
/* 807D3B60  38 80 FF FF */	li r4, -1
/* 807D3B64  4B 8A 3A 8C */	b __dt__11dBgS_GndChkFv
/* 807D3B68  38 60 00 00 */	li r3, 0
lbl_807D3B6C:
/* 807D3B6C  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 807D3B70  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 807D3B74  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 807D3B78  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 807D3B7C  39 61 00 90 */	addi r11, r1, 0x90
/* 807D3B80  4B B8 E6 9C */	b _restgpr_26
/* 807D3B84  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 807D3B88  7C 08 03 A6 */	mtlr r0
/* 807D3B8C  38 21 00 B0 */	addi r1, r1, 0xb0
/* 807D3B90  4E 80 00 20 */	blr 
