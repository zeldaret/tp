lbl_80D338F4:
/* 80D338F4  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 80D338F8  7C 08 02 A6 */	mflr r0
/* 80D338FC  90 01 01 04 */	stw r0, 0x104(r1)
/* 80D33900  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 80D33904  F3 E1 00 F8 */	psq_st f31, 248(r1), 0, 0 /* qr0 */
/* 80D33908  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80D3390C  4B 62 E8 C1 */	bl _savegpr_25
/* 80D33910  7C 7A 1B 78 */	mr r26, r3
/* 80D33914  3C 80 80 D3 */	lis r4, mCcDObjInfo__11daWdStick_c@ha /* 0x80D34138@ha */
/* 80D33918  3B E4 41 38 */	addi r31, r4, mCcDObjInfo__11daWdStick_c@l /* 0x80D34138@l */
/* 80D3391C  38 9A 07 B8 */	addi r4, r26, 0x7b8
/* 80D33920  4B 2E 6D AD */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80D33924  3B 21 00 68 */	addi r25, r1, 0x68
/* 80D33928  7F 23 CB 78 */	mr r3, r25
/* 80D3392C  4B 34 3C 51 */	bl __ct__11dBgS_GndChkFv
/* 80D33930  3C 60 80 D3 */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x80D34344@ha */
/* 80D33934  38 63 43 44 */	addi r3, r3, __vt__14dBgS_ObjGndChk@l /* 0x80D34344@l */
/* 80D33938  90 61 00 78 */	stw r3, 0x78(r1)
/* 80D3393C  3B A3 00 0C */	addi r29, r3, 0xc
/* 80D33940  93 A1 00 88 */	stw r29, 0x88(r1)
/* 80D33944  3B 83 00 18 */	addi r28, r3, 0x18
/* 80D33948  93 81 00 A4 */	stw r28, 0xa4(r1)
/* 80D3394C  3B 63 00 24 */	addi r27, r3, 0x24
/* 80D33950  93 61 00 B4 */	stw r27, 0xb4(r1)
/* 80D33954  38 79 00 3C */	addi r3, r25, 0x3c
/* 80D33958  4B 34 55 11 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80D3395C  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80D33960  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80D33964  C0 3A 04 D4 */	lfs f1, 0x4d4(r26)
/* 80D33968  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80D3396C  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80D33970  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80D33974  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80D33978  EC 01 00 2A */	fadds f0, f1, f0
/* 80D3397C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80D33980  7F 23 CB 78 */	mr r3, r25
/* 80D33984  38 81 00 48 */	addi r4, r1, 0x48
/* 80D33988  4B 53 43 A1 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80D3398C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D33990  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D33994  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 80D33998  7F C3 F3 78 */	mr r3, r30
/* 80D3399C  7F 24 CB 78 */	mr r4, r25
/* 80D339A0  4B 34 0B 01 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80D339A4  FF E0 08 90 */	fmr f31, f1
/* 80D339A8  3C 60 80 D3 */	lis r3, __vt__8cM3dGPla@ha /* 0x80D34374@ha */
/* 80D339AC  38 03 43 74 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80D34374@l */
/* 80D339B0  90 01 00 64 */	stw r0, 0x64(r1)
/* 80D339B4  38 61 00 48 */	addi r3, r1, 0x48
/* 80D339B8  4B 2E A3 05 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80D339BC  7F C3 F3 78 */	mr r3, r30
/* 80D339C0  3C 80 80 3F */	lis r4, mGndCheck__11fopAcM_gc_c@ha /* 0x803F1CC4@ha */
/* 80D339C4  38 84 1C C4 */	addi r4, r4, mGndCheck__11fopAcM_gc_c@l /* 0x803F1CC4@l */
/* 80D339C8  38 84 00 14 */	addi r4, r4, 0x14
/* 80D339CC  38 A1 00 54 */	addi r5, r1, 0x54
/* 80D339D0  4B 34 0D 75 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80D339D4  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80D339D8  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80D339DC  41 82 02 0C */	beq lbl_80D33BE8
/* 80D339E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D339E4  41 82 02 04 */	beq lbl_80D33BE8
/* 80D339E8  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80D339EC  FC 00 00 1E */	fctiwz f0, f0
/* 80D339F0  D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 80D339F4  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80D339F8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80D339FC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80D33A00  3B 23 00 04 */	addi r25, r3, 4
/* 80D33A04  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80D33A08  7C 79 04 2E */	lfsx f3, r25, r0
/* 80D33A0C  C0 41 00 54 */	lfs f2, 0x54(r1)
/* 80D33A10  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 80D33A14  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 80D33A18  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80D33A1C  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80D33A20  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80D33A24  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 80D33A28  40 80 01 C0 */	bge lbl_80D33BE8
/* 80D33A2C  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80D33A30  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80D33A34  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80D33A38  FC 20 10 18 */	frsp f1, f2
/* 80D33A3C  FC 40 00 18 */	frsp f2, f0
/* 80D33A40  4B 53 3C 35 */	bl cM_atan2s__Fff
/* 80D33A44  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 80D33A48  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80D33A4C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80D33A50  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D33A54  EC 63 00 32 */	fmuls f3, f3, f0
/* 80D33A58  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80D33A5C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80D33A60  40 80 00 0C */	bge lbl_80D33A6C
/* 80D33A64  FC 60 00 90 */	fmr f3, f0
/* 80D33A68  48 00 00 10 */	b lbl_80D33A78
lbl_80D33A6C:
/* 80D33A6C  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 80D33A70  40 81 00 08 */	ble lbl_80D33A78
/* 80D33A74  FC 60 08 90 */	fmr f3, f1
lbl_80D33A78:
/* 80D33A78  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80D33A7C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80D33A80  7C 19 04 2E */	lfsx f0, r25, r0
/* 80D33A84  C0 3A 05 2C */	lfs f1, 0x52c(r26)
/* 80D33A88  EC 41 00 32 */	fmuls f2, f1, f0
/* 80D33A8C  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80D33A90  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80D33A94  7C 04 04 2E */	lfsx f0, r4, r0
/* 80D33A98  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D33A9C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D33AA0  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80D33AA4  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80D33AA8  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80D33AAC  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 80D33AB0  7C 04 04 2E */	lfsx f0, r4, r0
/* 80D33AB4  EC 03 00 32 */	fmuls f0, f3, f0
/* 80D33AB8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D33ABC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80D33AC0  7C 19 04 2E */	lfsx f0, r25, r0
/* 80D33AC4  EC 03 00 32 */	fmuls f0, f3, f0
/* 80D33AC8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D33ACC  38 61 00 24 */	addi r3, r1, 0x24
/* 80D33AD0  38 81 00 18 */	addi r4, r1, 0x18
/* 80D33AD4  7C 65 1B 78 */	mr r5, r3
/* 80D33AD8  4B 61 35 B9 */	bl PSVECAdd
/* 80D33ADC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80D33AE0  EC 20 00 32 */	fmuls f1, f0, f0
/* 80D33AE4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80D33AE8  EC 00 00 32 */	fmuls f0, f0, f0
/* 80D33AEC  EC 81 00 2A */	fadds f4, f1, f0
/* 80D33AF0  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80D33AF4  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80D33AF8  40 81 00 58 */	ble lbl_80D33B50
/* 80D33AFC  FC 00 20 34 */	frsqrte f0, f4
/* 80D33B00  C8 7F 00 70 */	lfd f3, 0x70(r31)
/* 80D33B04  FC 23 00 32 */	fmul f1, f3, f0
/* 80D33B08  C8 5F 00 78 */	lfd f2, 0x78(r31)
/* 80D33B0C  FC 00 00 32 */	fmul f0, f0, f0
/* 80D33B10  FC 04 00 32 */	fmul f0, f4, f0
/* 80D33B14  FC 02 00 28 */	fsub f0, f2, f0
/* 80D33B18  FC 01 00 32 */	fmul f0, f1, f0
/* 80D33B1C  FC 23 00 32 */	fmul f1, f3, f0
/* 80D33B20  FC 00 00 32 */	fmul f0, f0, f0
/* 80D33B24  FC 04 00 32 */	fmul f0, f4, f0
/* 80D33B28  FC 02 00 28 */	fsub f0, f2, f0
/* 80D33B2C  FC 01 00 32 */	fmul f0, f1, f0
/* 80D33B30  FC 23 00 32 */	fmul f1, f3, f0
/* 80D33B34  FC 00 00 32 */	fmul f0, f0, f0
/* 80D33B38  FC 04 00 32 */	fmul f0, f4, f0
/* 80D33B3C  FC 02 00 28 */	fsub f0, f2, f0
/* 80D33B40  FC 01 00 32 */	fmul f0, f1, f0
/* 80D33B44  FC 84 00 32 */	fmul f4, f4, f0
/* 80D33B48  FC 80 20 18 */	frsp f4, f4
/* 80D33B4C  48 00 00 88 */	b lbl_80D33BD4
lbl_80D33B50:
/* 80D33B50  C8 1F 00 80 */	lfd f0, 0x80(r31)
/* 80D33B54  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80D33B58  40 80 00 10 */	bge lbl_80D33B68
/* 80D33B5C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D33B60  C0 83 0A E0 */	lfs f4, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80D33B64  48 00 00 70 */	b lbl_80D33BD4
lbl_80D33B68:
/* 80D33B68  D0 81 00 08 */	stfs f4, 8(r1)
/* 80D33B6C  80 81 00 08 */	lwz r4, 8(r1)
/* 80D33B70  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D33B74  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D33B78  7C 03 00 00 */	cmpw r3, r0
/* 80D33B7C  41 82 00 14 */	beq lbl_80D33B90
/* 80D33B80  40 80 00 40 */	bge lbl_80D33BC0
/* 80D33B84  2C 03 00 00 */	cmpwi r3, 0
/* 80D33B88  41 82 00 20 */	beq lbl_80D33BA8
/* 80D33B8C  48 00 00 34 */	b lbl_80D33BC0
lbl_80D33B90:
/* 80D33B90  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D33B94  41 82 00 0C */	beq lbl_80D33BA0
/* 80D33B98  38 00 00 01 */	li r0, 1
/* 80D33B9C  48 00 00 28 */	b lbl_80D33BC4
lbl_80D33BA0:
/* 80D33BA0  38 00 00 02 */	li r0, 2
/* 80D33BA4  48 00 00 20 */	b lbl_80D33BC4
lbl_80D33BA8:
/* 80D33BA8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D33BAC  41 82 00 0C */	beq lbl_80D33BB8
/* 80D33BB0  38 00 00 05 */	li r0, 5
/* 80D33BB4  48 00 00 10 */	b lbl_80D33BC4
lbl_80D33BB8:
/* 80D33BB8  38 00 00 03 */	li r0, 3
/* 80D33BBC  48 00 00 08 */	b lbl_80D33BC4
lbl_80D33BC0:
/* 80D33BC0  38 00 00 04 */	li r0, 4
lbl_80D33BC4:
/* 80D33BC4  2C 00 00 01 */	cmpwi r0, 1
/* 80D33BC8  40 82 00 0C */	bne lbl_80D33BD4
/* 80D33BCC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D33BD0  C0 83 0A E0 */	lfs f4, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80D33BD4:
/* 80D33BD4  D0 9A 05 2C */	stfs f4, 0x52c(r26)
/* 80D33BD8  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80D33BDC  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 80D33BE0  4B 53 3A 95 */	bl cM_atan2s__Fff
/* 80D33BE4  B0 7A 04 DE */	sth r3, 0x4de(r26)
lbl_80D33BE8:
/* 80D33BE8  C0 3A 05 2C */	lfs f1, 0x52c(r26)
/* 80D33BEC  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80D33BF0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D33BF4  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 80D33BF8  C0 3A 07 C0 */	lfs f1, 0x7c0(r26)
/* 80D33BFC  C0 1A 07 B8 */	lfs f0, 0x7b8(r26)
/* 80D33C00  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D33C04  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80D33C08  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D33C0C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80D33C10  38 61 00 0C */	addi r3, r1, 0xc
/* 80D33C14  4B 61 35 25 */	bl PSVECSquareMag
/* 80D33C18  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80D33C1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D33C20  40 81 00 14 */	ble lbl_80D33C34
/* 80D33C24  C0 3A 05 2C */	lfs f1, 0x52c(r26)
/* 80D33C28  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 80D33C2C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D33C30  D0 1A 05 2C */	stfs f0, 0x52c(r26)
lbl_80D33C34:
/* 80D33C34  80 1A 05 CC */	lwz r0, 0x5cc(r26)
/* 80D33C38  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80D33C3C  41 82 00 20 */	beq lbl_80D33C5C
/* 80D33C40  C0 3A 05 2C */	lfs f1, 0x52c(r26)
/* 80D33C44  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 80D33C48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D33C4C  40 80 00 1C */	bge lbl_80D33C68
/* 80D33C50  7F 43 D3 78 */	mr r3, r26
/* 80D33C54  4B FF F8 B9 */	bl mode_init_wait__11daWdStick_cFv
/* 80D33C58  48 00 00 10 */	b lbl_80D33C68
lbl_80D33C5C:
/* 80D33C5C  80 1A 05 5C */	lwz r0, 0x55c(r26)
/* 80D33C60  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80D33C64  90 1A 05 5C */	stw r0, 0x55c(r26)
lbl_80D33C68:
/* 80D33C68  38 7A 05 A0 */	addi r3, r26, 0x5a0
/* 80D33C6C  7F C4 F3 78 */	mr r4, r30
/* 80D33C70  4B 34 2E 3D */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80D33C74  7F 43 D3 78 */	mr r3, r26
/* 80D33C78  4B FF F1 3D */	bl bgCheck__11daWdStick_cFv
/* 80D33C7C  3C 60 80 D3 */	lis r3, __vt__8cM3dGPla@ha /* 0x80D34374@ha */
/* 80D33C80  38 03 43 74 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80D34374@l */
/* 80D33C84  90 01 00 64 */	stw r0, 0x64(r1)
/* 80D33C88  3C 60 80 D3 */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x80D34344@ha */
/* 80D33C8C  38 03 43 44 */	addi r0, r3, __vt__14dBgS_ObjGndChk@l /* 0x80D34344@l */
/* 80D33C90  90 01 00 78 */	stw r0, 0x78(r1)
/* 80D33C94  93 A1 00 88 */	stw r29, 0x88(r1)
/* 80D33C98  93 81 00 A4 */	stw r28, 0xa4(r1)
/* 80D33C9C  93 61 00 B4 */	stw r27, 0xb4(r1)
/* 80D33CA0  38 61 00 68 */	addi r3, r1, 0x68
/* 80D33CA4  38 80 00 00 */	li r4, 0
/* 80D33CA8  4B 34 39 49 */	bl __dt__11dBgS_GndChkFv
/* 80D33CAC  E3 E1 00 F8 */	psq_l f31, 248(r1), 0, 0 /* qr0 */
/* 80D33CB0  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 80D33CB4  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80D33CB8  4B 62 E5 61 */	bl _restgpr_25
/* 80D33CBC  80 01 01 04 */	lwz r0, 0x104(r1)
/* 80D33CC0  7C 08 03 A6 */	mtlr r0
/* 80D33CC4  38 21 01 00 */	addi r1, r1, 0x100
/* 80D33CC8  4E 80 00 20 */	blr 
