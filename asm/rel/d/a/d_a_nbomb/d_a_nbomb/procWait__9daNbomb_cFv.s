lbl_804C9984:
/* 804C9984  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 804C9988  7C 08 02 A6 */	mflr r0
/* 804C998C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 804C9990  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 804C9994  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 804C9998  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 804C999C  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 804C99A0  39 61 00 90 */	addi r11, r1, 0x90
/* 804C99A4  4B E9 88 2C */	b _savegpr_26
/* 804C99A8  7C 7A 1B 78 */	mr r26, r3
/* 804C99AC  3C 80 80 4D */	lis r4, lit_3767@ha
/* 804C99B0  3B E4 C3 40 */	addi r31, r4, lit_3767@l
/* 804C99B4  4B FF E9 25 */	bl checkExplode__9daNbomb_cFv
/* 804C99B8  2C 03 00 00 */	cmpwi r3, 0
/* 804C99BC  41 82 00 0C */	beq lbl_804C99C8
/* 804C99C0  38 60 00 01 */	li r3, 1
/* 804C99C4  48 00 08 7C */	b lbl_804CA240
lbl_804C99C8:
/* 804C99C8  80 1A 04 9C */	lwz r0, 0x49c(r26)
/* 804C99CC  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 804C99D0  41 82 00 10 */	beq lbl_804C99E0
/* 804C99D4  7F 43 D3 78 */	mr r3, r26
/* 804C99D8  4B FF FA 09 */	bl procCarryInit__9daNbomb_cFv
/* 804C99DC  48 00 08 64 */	b lbl_804CA240
lbl_804C99E0:
/* 804C99E0  C3 FA 05 2C */	lfs f31, 0x52c(r26)
/* 804C99E4  80 7A 05 A4 */	lwz r3, 0x5a4(r26)
/* 804C99E8  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 804C99EC  41 82 00 5C */	beq lbl_804C9A48
/* 804C99F0  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 804C99F4  40 82 00 54 */	bne lbl_804C9A48
/* 804C99F8  38 7A 06 68 */	addi r3, r26, 0x668
/* 804C99FC  A8 9A 04 DE */	lha r4, 0x4de(r26)
/* 804C9A00  4B B5 40 E4 */	b fopAcM_getPolygonAngle__FRC13cBgS_PolyInfos
/* 804C9A04  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 804C9A08  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 804C9A0C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 804C9A10  7C 03 04 2E */	lfsx f0, r3, r0
/* 804C9A14  FC 00 02 10 */	fabs f0, f0
/* 804C9A18  FC 40 00 18 */	frsp f2, f0
/* 804C9A1C  C0 3A 04 FC */	lfs f1, 0x4fc(r26)
/* 804C9A20  C0 1A 05 2C */	lfs f0, 0x52c(r26)
/* 804C9A24  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804C9A28  EC 01 00 28 */	fsubs f0, f1, f0
/* 804C9A2C  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 804C9A30  C0 3A 05 2C */	lfs f1, 0x52c(r26)
/* 804C9A34  7C 63 02 14 */	add r3, r3, r0
/* 804C9A38  C0 03 00 04 */	lfs f0, 4(r3)
/* 804C9A3C  EC 01 00 32 */	fmuls f0, f1, f0
/* 804C9A40  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 804C9A44  48 00 00 14 */	b lbl_804C9A58
lbl_804C9A48:
/* 804C9A48  38 7A 0B B0 */	addi r3, r26, 0xbb0
/* 804C9A4C  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 804C9A50  C0 5F 00 3C */	lfs f2, 0x3c(r31)
/* 804C9A54  4B DA 6C EC */	b cLib_chaseF__FPfff
lbl_804C9A58:
/* 804C9A58  C3 DA 05 30 */	lfs f30, 0x530(r26)
/* 804C9A5C  C0 3A 0C 24 */	lfs f1, 0xc24(r26)
/* 804C9A60  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 804C9A64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C9A68  40 81 00 7C */	ble lbl_804C9AE4
/* 804C9A6C  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 804C9A70  D0 5A 05 30 */	stfs f2, 0x530(r26)
/* 804C9A74  C0 3A 04 FC */	lfs f1, 0x4fc(r26)
/* 804C9A78  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 804C9A7C  40 80 00 2C */	bge lbl_804C9AA8
/* 804C9A80  C0 1A 0C 24 */	lfs f0, 0xc24(r26)
/* 804C9A84  EC 01 00 2A */	fadds f0, f1, f0
/* 804C9A88  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 804C9A8C  C0 1A 04 FC */	lfs f0, 0x4fc(r26)
/* 804C9A90  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 804C9A94  40 81 00 10 */	ble lbl_804C9AA4
/* 804C9A98  D0 1A 0C 24 */	stfs f0, 0xc24(r26)
/* 804C9A9C  D0 5A 04 FC */	stfs f2, 0x4fc(r26)
/* 804C9AA0  48 00 00 08 */	b lbl_804C9AA8
lbl_804C9AA4:
/* 804C9AA4  D0 5A 0C 24 */	stfs f2, 0xc24(r26)
lbl_804C9AA8:
/* 804C9AA8  C0 3A 0C 28 */	lfs f1, 0xc28(r26)
/* 804C9AAC  C0 1A 0C 20 */	lfs f0, 0xc20(r26)
/* 804C9AB0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804C9AB4  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 804C9AB8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804C9ABC  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 804C9AC0  38 61 00 2C */	addi r3, r1, 0x2c
/* 804C9AC4  4B E7 D6 74 */	b PSVECSquareMag
/* 804C9AC8  C0 1F 01 34 */	lfs f0, 0x134(r31)
/* 804C9ACC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C9AD0  40 80 00 14 */	bge lbl_804C9AE4
/* 804C9AD4  C0 3A 05 2C */	lfs f1, 0x52c(r26)
/* 804C9AD8  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 804C9ADC  EC 01 00 32 */	fmuls f0, f1, f0
/* 804C9AE0  D0 1A 05 2C */	stfs f0, 0x52c(r26)
lbl_804C9AE4:
/* 804C9AE4  C0 3A 0C 30 */	lfs f1, 0xc30(r26)
/* 804C9AE8  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 804C9AEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C9AF0  40 81 00 88 */	ble lbl_804C9B78
/* 804C9AF4  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 804C9AF8  D0 5A 05 30 */	stfs f2, 0x530(r26)
/* 804C9AFC  C0 3A 04 FC */	lfs f1, 0x4fc(r26)
/* 804C9B00  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 804C9B04  40 80 00 38 */	bge lbl_804C9B3C
/* 804C9B08  C0 1A 0C 30 */	lfs f0, 0xc30(r26)
/* 804C9B0C  EC 01 00 2A */	fadds f0, f1, f0
/* 804C9B10  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 804C9B14  C0 1A 04 FC */	lfs f0, 0x4fc(r26)
/* 804C9B18  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 804C9B1C  40 81 00 10 */	ble lbl_804C9B2C
/* 804C9B20  D0 1A 0C 30 */	stfs f0, 0xc30(r26)
/* 804C9B24  D0 5A 04 FC */	stfs f2, 0x4fc(r26)
/* 804C9B28  48 00 00 08 */	b lbl_804C9B30
lbl_804C9B2C:
/* 804C9B2C  D0 5A 0C 30 */	stfs f2, 0xc30(r26)
lbl_804C9B30:
/* 804C9B30  80 1A 0B 4C */	lwz r0, 0xb4c(r26)
/* 804C9B34  64 00 00 01 */	oris r0, r0, 1
/* 804C9B38  90 1A 0B 4C */	stw r0, 0xb4c(r26)
lbl_804C9B3C:
/* 804C9B3C  C0 3A 0C 34 */	lfs f1, 0xc34(r26)
/* 804C9B40  C0 1A 0C 2C */	lfs f0, 0xc2c(r26)
/* 804C9B44  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804C9B48  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 804C9B4C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804C9B50  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 804C9B54  38 61 00 20 */	addi r3, r1, 0x20
/* 804C9B58  4B E7 D5 E0 */	b PSVECSquareMag
/* 804C9B5C  C0 1F 01 34 */	lfs f0, 0x134(r31)
/* 804C9B60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C9B64  40 80 00 14 */	bge lbl_804C9B78
/* 804C9B68  C0 3A 05 2C */	lfs f1, 0x52c(r26)
/* 804C9B6C  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 804C9B70  EC 01 00 32 */	fmuls f0, f1, f0
/* 804C9B74  D0 1A 05 2C */	stfs f0, 0x52c(r26)
lbl_804C9B78:
/* 804C9B78  7F 43 D3 78 */	mr r3, r26
/* 804C9B7C  38 9A 07 90 */	addi r4, r26, 0x790
/* 804C9B80  4B B5 0B 4C */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 804C9B84  80 7A 0B 4C */	lwz r3, 0xb4c(r26)
/* 804C9B88  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 804C9B8C  41 82 00 50 */	beq lbl_804C9BDC
/* 804C9B90  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 804C9B94  41 82 00 48 */	beq lbl_804C9BDC
/* 804C9B98  80 1A 05 A4 */	lwz r0, 0x5a4(r26)
/* 804C9B9C  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 804C9BA0  41 82 00 3C */	beq lbl_804C9BDC
/* 804C9BA4  C0 5F 00 3C */	lfs f2, 0x3c(r31)
/* 804C9BA8  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 804C9BAC  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 804C9BB0  EC 01 00 2A */	fadds f0, f1, f0
/* 804C9BB4  EC 02 00 2A */	fadds f0, f2, f0
/* 804C9BB8  C0 7A 07 44 */	lfs f3, 0x744(r26)
/* 804C9BBC  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 804C9BC0  4C 41 13 82 */	cror 2, 1, 2
/* 804C9BC4  40 82 00 18 */	bne lbl_804C9BDC
/* 804C9BC8  EC 03 08 28 */	fsubs f0, f3, f1
/* 804C9BCC  EC 00 10 28 */	fsubs f0, f0, f2
/* 804C9BD0  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 804C9BD4  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 804C9BD8  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
lbl_804C9BDC:
/* 804C9BDC  D3 FA 05 2C */	stfs f31, 0x52c(r26)
/* 804C9BE0  D3 DA 05 30 */	stfs f30, 0x530(r26)
/* 804C9BE4  C3 DA 04 FC */	lfs f30, 0x4fc(r26)
/* 804C9BE8  3B 80 00 00 */	li r28, 0
/* 804C9BEC  3B 60 00 00 */	li r27, 0
/* 804C9BF0  38 61 00 38 */	addi r3, r1, 0x38
/* 804C9BF4  38 9A 0C 20 */	addi r4, r26, 0xc20
/* 804C9BF8  38 BA 0C 2C */	addi r5, r26, 0xc2c
/* 804C9BFC  4B D9 CE E8 */	b __pl__4cXyzCFRC3Vec
/* 804C9C00  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 804C9C04  38 81 00 38 */	addi r4, r1, 0x38
/* 804C9C08  7C 65 1B 78 */	mr r5, r3
/* 804C9C0C  4B E7 D4 84 */	b PSVECAdd
/* 804C9C10  38 7A 05 78 */	addi r3, r26, 0x578
/* 804C9C14  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 804C9C18  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 804C9C1C  3B A4 0F 38 */	addi r29, r4, 0xf38
/* 804C9C20  7F A4 EB 78 */	mr r4, r29
/* 804C9C24  4B BA CE 88 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 804C9C28  7F 43 D3 78 */	mr r3, r26
/* 804C9C2C  4B FF E8 05 */	bl setRoomInfo__9daNbomb_cFv
/* 804C9C30  80 1A 0B 4C */	lwz r0, 0xb4c(r26)
/* 804C9C34  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 804C9C38  41 82 00 2C */	beq lbl_804C9C64
/* 804C9C3C  80 7A 05 A4 */	lwz r3, 0x5a4(r26)
/* 804C9C40  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 804C9C44  40 82 00 14 */	bne lbl_804C9C58
/* 804C9C48  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 804C9C4C  40 82 00 0C */	bne lbl_804C9C58
/* 804C9C50  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 804C9C54  41 82 00 10 */	beq lbl_804C9C64
lbl_804C9C58:
/* 804C9C58  7F 43 D3 78 */	mr r3, r26
/* 804C9C5C  4B FF F0 9D */	bl procExplodeInit__9daNbomb_cFv
/* 804C9C60  48 00 05 E0 */	b lbl_804CA240
lbl_804C9C64:
/* 804C9C64  80 1A 05 A4 */	lwz r0, 0x5a4(r26)
/* 804C9C68  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 804C9C6C  41 82 01 D8 */	beq lbl_804C9E44
/* 804C9C70  3C 60 80 4D */	lis r3, __vt__8cM3dGPla@ha
/* 804C9C74  38 03 C5 E0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 804C9C78  90 01 00 68 */	stw r0, 0x68(r1)
/* 804C9C7C  7F A3 EB 78 */	mr r3, r29
/* 804C9C80  38 9A 06 68 */	addi r4, r26, 0x668
/* 804C9C84  38 A1 00 58 */	addi r5, r1, 0x58
/* 804C9C88  4B BA AA BC */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 804C9C8C  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 804C9C90  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804C9C94  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 804C9C98  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804C9C9C  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 804C9CA0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804C9CA4  38 61 00 14 */	addi r3, r1, 0x14
/* 804C9CA8  4B E7 D4 90 */	b PSVECSquareMag
/* 804C9CAC  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 804C9CB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C9CB4  40 81 00 58 */	ble lbl_804C9D0C
/* 804C9CB8  FC 00 08 34 */	frsqrte f0, f1
/* 804C9CBC  C8 9F 01 10 */	lfd f4, 0x110(r31)
/* 804C9CC0  FC 44 00 32 */	fmul f2, f4, f0
/* 804C9CC4  C8 7F 01 18 */	lfd f3, 0x118(r31)
/* 804C9CC8  FC 00 00 32 */	fmul f0, f0, f0
/* 804C9CCC  FC 01 00 32 */	fmul f0, f1, f0
/* 804C9CD0  FC 03 00 28 */	fsub f0, f3, f0
/* 804C9CD4  FC 02 00 32 */	fmul f0, f2, f0
/* 804C9CD8  FC 44 00 32 */	fmul f2, f4, f0
/* 804C9CDC  FC 00 00 32 */	fmul f0, f0, f0
/* 804C9CE0  FC 01 00 32 */	fmul f0, f1, f0
/* 804C9CE4  FC 03 00 28 */	fsub f0, f3, f0
/* 804C9CE8  FC 02 00 32 */	fmul f0, f2, f0
/* 804C9CEC  FC 44 00 32 */	fmul f2, f4, f0
/* 804C9CF0  FC 00 00 32 */	fmul f0, f0, f0
/* 804C9CF4  FC 01 00 32 */	fmul f0, f1, f0
/* 804C9CF8  FC 03 00 28 */	fsub f0, f3, f0
/* 804C9CFC  FC 02 00 32 */	fmul f0, f2, f0
/* 804C9D00  FC 21 00 32 */	fmul f1, f1, f0
/* 804C9D04  FC 20 08 18 */	frsp f1, f1
/* 804C9D08  48 00 00 88 */	b lbl_804C9D90
lbl_804C9D0C:
/* 804C9D0C  C8 1F 01 20 */	lfd f0, 0x120(r31)
/* 804C9D10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C9D14  40 80 00 10 */	bge lbl_804C9D24
/* 804C9D18  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804C9D1C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 804C9D20  48 00 00 70 */	b lbl_804C9D90
lbl_804C9D24:
/* 804C9D24  D0 21 00 08 */	stfs f1, 8(r1)
/* 804C9D28  80 81 00 08 */	lwz r4, 8(r1)
/* 804C9D2C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804C9D30  3C 00 7F 80 */	lis r0, 0x7f80
/* 804C9D34  7C 03 00 00 */	cmpw r3, r0
/* 804C9D38  41 82 00 14 */	beq lbl_804C9D4C
/* 804C9D3C  40 80 00 40 */	bge lbl_804C9D7C
/* 804C9D40  2C 03 00 00 */	cmpwi r3, 0
/* 804C9D44  41 82 00 20 */	beq lbl_804C9D64
/* 804C9D48  48 00 00 34 */	b lbl_804C9D7C
lbl_804C9D4C:
/* 804C9D4C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804C9D50  41 82 00 0C */	beq lbl_804C9D5C
/* 804C9D54  38 00 00 01 */	li r0, 1
/* 804C9D58  48 00 00 28 */	b lbl_804C9D80
lbl_804C9D5C:
/* 804C9D5C  38 00 00 02 */	li r0, 2
/* 804C9D60  48 00 00 20 */	b lbl_804C9D80
lbl_804C9D64:
/* 804C9D64  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804C9D68  41 82 00 0C */	beq lbl_804C9D74
/* 804C9D6C  38 00 00 05 */	li r0, 5
/* 804C9D70  48 00 00 10 */	b lbl_804C9D80
lbl_804C9D74:
/* 804C9D74  38 00 00 03 */	li r0, 3
/* 804C9D78  48 00 00 08 */	b lbl_804C9D80
lbl_804C9D7C:
/* 804C9D7C  38 00 00 04 */	li r0, 4
lbl_804C9D80:
/* 804C9D80  2C 00 00 01 */	cmpwi r0, 1
/* 804C9D84  40 82 00 0C */	bne lbl_804C9D90
/* 804C9D88  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804C9D8C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_804C9D90:
/* 804C9D90  C0 41 00 5C */	lfs f2, 0x5c(r1)
/* 804C9D94  4B D9 D8 E0 */	b cM_atan2s__Fff
/* 804C9D98  B0 7A 0B 5A */	sth r3, 0xb5a(r26)
/* 804C9D9C  38 61 00 58 */	addi r3, r1, 0x58
/* 804C9DA0  4B D9 D3 88 */	b atan2sX_Z__4cXyzCFv
/* 804C9DA4  7C 7B 1B 78 */	mr r27, r3
/* 804C9DA8  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 804C9DAC  7C 00 D8 50 */	subf r0, r0, r27
/* 804C9DB0  7C 1C 07 34 */	extsh r28, r0
/* 804C9DB4  80 1A 0B 4C */	lwz r0, 0xb4c(r26)
/* 804C9DB8  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 804C9DBC  41 82 00 48 */	beq lbl_804C9E04
/* 804C9DC0  80 1A 05 A4 */	lwz r0, 0x5a4(r26)
/* 804C9DC4  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 804C9DC8  41 82 00 1C */	beq lbl_804C9DE4
/* 804C9DCC  C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 804C9DD0  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 804C9DD4  EC 21 00 2A */	fadds f1, f1, f0
/* 804C9DD8  C0 1A 07 44 */	lfs f0, 0x744(r26)
/* 804C9DDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C9DE0  40 81 00 24 */	ble lbl_804C9E04
lbl_804C9DE4:
/* 804C9DE4  80 1A 0B 4C */	lwz r0, 0xb4c(r26)
/* 804C9DE8  60 00 10 00 */	ori r0, r0, 0x1000
/* 804C9DEC  90 1A 0B 4C */	stw r0, 0xb4c(r26)
/* 804C9DF0  3C 60 80 4D */	lis r3, __vt__8cM3dGPla@ha
/* 804C9DF4  38 03 C5 E0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 804C9DF8  90 01 00 68 */	stw r0, 0x68(r1)
/* 804C9DFC  38 60 00 01 */	li r3, 1
/* 804C9E00  48 00 04 40 */	b lbl_804CA240
lbl_804C9E04:
/* 804C9E04  38 7A 06 68 */	addi r3, r26, 0x668
/* 804C9E08  4B C3 BC B4 */	b checkSnowCodePolygon__9daAlink_cFR13cBgS_PolyInfo
/* 804C9E0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804C9E10  41 82 00 28 */	beq lbl_804C9E38
/* 804C9E14  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 804C9E18  D0 1A 0B B0 */	stfs f0, 0xbb0(r26)
/* 804C9E1C  C0 3A 05 2C */	lfs f1, 0x52c(r26)
/* 804C9E20  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 804C9E24  EC 01 00 32 */	fmuls f0, f1, f0
/* 804C9E28  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 804C9E2C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 804C9E30  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 804C9E34  FF C0 00 90 */	fmr f30, f0
lbl_804C9E38:
/* 804C9E38  3C 60 80 4D */	lis r3, __vt__8cM3dGPla@ha
/* 804C9E3C  38 03 C5 E0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 804C9E40  90 01 00 68 */	stw r0, 0x68(r1)
lbl_804C9E44:
/* 804C9E44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804C9E48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804C9E4C  83 C3 5D B4 */	lwz r30, 0x5db4(r3)
/* 804C9E50  80 7A 05 A4 */	lwz r3, 0x5a4(r26)
/* 804C9E54  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 804C9E58  41 82 00 38 */	beq lbl_804C9E90
/* 804C9E5C  7F C3 F3 78 */	mr r3, r30
/* 804C9E60  4B C1 99 30 */	b getBombBoundRate__9daAlink_cCFv
/* 804C9E64  C0 1A 05 2C */	lfs f0, 0x52c(r26)
/* 804C9E68  EC 00 00 72 */	fmuls f0, f0, f1
/* 804C9E6C  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 804C9E70  A8 7A 04 DE */	lha r3, 0x4de(r26)
/* 804C9E74  3C 63 00 01 */	addis r3, r3, 1
/* 804C9E78  38 63 80 00 */	addi r3, r3, -32768
/* 804C9E7C  A8 1A 07 8C */	lha r0, 0x78c(r26)
/* 804C9E80  54 00 08 3C */	slwi r0, r0, 1
/* 804C9E84  7C 03 00 50 */	subf r0, r3, r0
/* 804C9E88  B0 1A 04 DE */	sth r0, 0x4de(r26)
/* 804C9E8C  48 00 00 AC */	b lbl_804C9F38
lbl_804C9E90:
/* 804C9E90  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 804C9E94  41 82 00 A4 */	beq lbl_804C9F38
/* 804C9E98  C0 3A 05 2C */	lfs f1, 0x52c(r26)
/* 804C9E9C  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 804C9EA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C9EA4  40 81 00 94 */	ble lbl_804C9F38
/* 804C9EA8  A8 1A 0B 5A */	lha r0, 0xb5a(r26)
/* 804C9EAC  2C 00 23 8E */	cmpwi r0, 0x238e
/* 804C9EB0  41 80 00 88 */	blt lbl_804C9F38
/* 804C9EB4  7F 80 07 34 */	extsh r0, r28
/* 804C9EB8  C8 3F 00 98 */	lfd f1, 0x98(r31)
/* 804C9EBC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804C9EC0  90 01 00 74 */	stw r0, 0x74(r1)
/* 804C9EC4  3C 00 43 30 */	lis r0, 0x4330
/* 804C9EC8  90 01 00 70 */	stw r0, 0x70(r1)
/* 804C9ECC  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 804C9ED0  FC 00 08 28 */	fsub f0, f0, f1
/* 804C9ED4  FC 00 02 10 */	fabs f0, f0
/* 804C9ED8  FC 20 00 18 */	frsp f1, f0
/* 804C9EDC  C0 1F 01 44 */	lfs f0, 0x144(r31)
/* 804C9EE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C9EE4  4C 41 13 82 */	cror 2, 1, 2
/* 804C9EE8  40 82 00 50 */	bne lbl_804C9F38
/* 804C9EEC  7F C3 F3 78 */	mr r3, r30
/* 804C9EF0  4B C1 98 A0 */	b getBombBoundRate__9daAlink_cCFv
/* 804C9EF4  C0 1A 05 2C */	lfs f0, 0x52c(r26)
/* 804C9EF8  EC 00 00 72 */	fmuls f0, f0, f1
/* 804C9EFC  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 804C9F00  A8 7A 04 DE */	lha r3, 0x4de(r26)
/* 804C9F04  3C 63 00 01 */	addis r3, r3, 1
/* 804C9F08  38 63 80 00 */	addi r3, r3, -32768
/* 804C9F0C  7F 60 07 34 */	extsh r0, r27
/* 804C9F10  54 00 08 3C */	slwi r0, r0, 1
/* 804C9F14  7C 03 00 50 */	subf r0, r3, r0
/* 804C9F18  B0 1A 04 DE */	sth r0, 0x4de(r26)
/* 804C9F1C  80 1A 05 A4 */	lwz r0, 0x5a4(r26)
/* 804C9F20  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 804C9F24  90 1A 05 A4 */	stw r0, 0x5a4(r26)
/* 804C9F28  80 1A 05 A4 */	lwz r0, 0x5a4(r26)
/* 804C9F2C  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 804C9F30  90 1A 05 A4 */	stw r0, 0x5a4(r26)
/* 804C9F34  D3 DA 04 FC */	stfs f30, 0x4fc(r26)
lbl_804C9F38:
/* 804C9F38  80 7A 05 A4 */	lwz r3, 0x5a4(r26)
/* 804C9F3C  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 804C9F40  41 82 01 8C */	beq lbl_804CA0CC
/* 804C9F44  FC 00 F2 10 */	fabs f0, f30
/* 804C9F48  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 804C9F4C  FC 00 00 18 */	frsp f0, f0
/* 804C9F50  EC 21 00 32 */	fmuls f1, f1, f0
/* 804C9F54  4B E9 81 58 */	b __cvt_fp2unsigned
/* 804C9F58  7C 68 1B 78 */	mr r8, r3
/* 804C9F5C  80 1A 0B 4C */	lwz r0, 0xb4c(r26)
/* 804C9F60  54 00 03 9D */	rlwinm. r0, r0, 0, 0xe, 0xe
/* 804C9F64  41 82 00 1C */	beq lbl_804C9F80
/* 804C9F68  C0 3A 05 2C */	lfs f1, 0x52c(r26)
/* 804C9F6C  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804C9F70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C9F74  40 80 00 0C */	bge lbl_804C9F80
/* 804C9F78  39 00 00 32 */	li r8, 0x32
/* 804C9F7C  48 00 00 10 */	b lbl_804C9F8C
lbl_804C9F80:
/* 804C9F80  28 08 00 64 */	cmplwi r8, 0x64
/* 804C9F84  40 81 00 08 */	ble lbl_804C9F8C
/* 804C9F88  39 00 00 64 */	li r8, 0x64
lbl_804C9F8C:
/* 804C9F8C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080094@ha */
/* 804C9F90  38 03 00 94 */	addi r0, r3, 0x0094 /* 0x00080094@l */
/* 804C9F94  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C9F98  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 804C9F9C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 804C9FA0  80 63 00 00 */	lwz r3, 0(r3)
/* 804C9FA4  38 81 00 10 */	addi r4, r1, 0x10
/* 804C9FA8  38 BA 04 D0 */	addi r5, r26, 0x4d0
/* 804C9FAC  80 DA 0B B4 */	lwz r6, 0xbb4(r26)
/* 804C9FB0  88 FA 0B 53 */	lbz r7, 0xb53(r26)
/* 804C9FB4  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804C9FB8  C8 5F 01 58 */	lfd f2, 0x158(r31)
/* 804C9FBC  91 01 00 74 */	stw r8, 0x74(r1)
/* 804C9FC0  3C 00 43 30 */	lis r0, 0x4330
/* 804C9FC4  90 01 00 70 */	stw r0, 0x70(r1)
/* 804C9FC8  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 804C9FCC  EC 40 10 28 */	fsubs f2, f0, f2
/* 804C9FD0  C0 7F 01 48 */	lfs f3, 0x148(r31)
/* 804C9FD4  FC 80 18 90 */	fmr f4, f3
/* 804C9FD8  39 00 00 00 */	li r8, 0
/* 804C9FDC  4B DE 19 A8 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 804C9FE0  7F C3 F3 78 */	mr r3, r30
/* 804C9FE4  4B C1 97 AC */	b getBombBoundRate__9daAlink_cCFv
/* 804C9FE8  FC 00 08 50 */	fneg f0, f1
/* 804C9FEC  EF DE 00 32 */	fmuls f30, f30, f0
/* 804C9FF0  7F C3 F3 78 */	mr r3, r30
/* 804C9FF4  4B C1 97 AC */	b getBombStopSpeedY__9daAlink_cCFv
/* 804C9FF8  FC 1E 08 40 */	fcmpo cr0, f30, f1
/* 804C9FFC  40 80 00 18 */	bge lbl_804CA014
/* 804CA000  38 7A 05 2C */	addi r3, r26, 0x52c
/* 804CA004  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 804CA008  C0 5F 01 4C */	lfs f2, 0x14c(r31)
/* 804CA00C  4B DA 67 34 */	b cLib_chaseF__FPfff
/* 804CA010  48 00 00 6C */	b lbl_804CA07C
lbl_804CA014:
/* 804CA014  C0 3A 05 2C */	lfs f1, 0x52c(r26)
/* 804CA018  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 804CA01C  EC 01 00 32 */	fmuls f0, f1, f0
/* 804CA020  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 804CA024  38 7A 06 68 */	addi r3, r26, 0x668
/* 804CA028  A8 9A 04 DE */	lha r4, 0x4de(r26)
/* 804CA02C  4B B5 3A B8 */	b fopAcM_getPolygonAngle__FRC13cBgS_PolyInfos
/* 804CA030  7C 60 07 35 */	extsh. r0, r3
/* 804CA034  40 80 00 24 */	bge lbl_804CA058
/* 804CA038  C0 3A 05 2C */	lfs f1, 0x52c(r26)
/* 804CA03C  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha
/* 804CA040  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l
/* 804CA044  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 804CA048  7C 64 02 14 */	add r3, r4, r0
/* 804CA04C  C0 03 00 04 */	lfs f0, 4(r3)
/* 804CA050  EC 01 00 32 */	fmuls f0, f1, f0
/* 804CA054  D0 1A 05 2C */	stfs f0, 0x52c(r26)
lbl_804CA058:
/* 804CA058  7F C3 F3 78 */	mr r3, r30
/* 804CA05C  4B C1 97 54 */	b getBombMaxSpeedY__9daAlink_cCFv
/* 804CA060  FC 1E 08 40 */	fcmpo cr0, f30, f1
/* 804CA064  40 81 00 14 */	ble lbl_804CA078
/* 804CA068  7F C3 F3 78 */	mr r3, r30
/* 804CA06C  4B C1 97 44 */	b getBombMaxSpeedY__9daAlink_cCFv
/* 804CA070  D0 3A 04 FC */	stfs f1, 0x4fc(r26)
/* 804CA074  48 00 00 08 */	b lbl_804CA07C
lbl_804CA078:
/* 804CA078  D3 DA 04 FC */	stfs f30, 0x4fc(r26)
lbl_804CA07C:
/* 804CA07C  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 804CA080  7C 03 07 74 */	extsb r3, r0
/* 804CA084  4B B6 2F E8 */	b dComIfGp_getReverb__Fi
/* 804CA088  7C 67 1B 78 */	mr r7, r3
/* 804CA08C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080094@ha */
/* 804CA090  38 03 00 94 */	addi r0, r3, 0x0094 /* 0x00080094@l */
/* 804CA094  90 01 00 0C */	stw r0, 0xc(r1)
/* 804CA098  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 804CA09C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 804CA0A0  80 63 00 00 */	lwz r3, 0(r3)
/* 804CA0A4  38 81 00 0C */	addi r4, r1, 0xc
/* 804CA0A8  38 BA 04 D0 */	addi r5, r26, 0x4d0
/* 804CA0AC  38 C0 00 00 */	li r6, 0
/* 804CA0B0  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804CA0B4  FC 40 08 90 */	fmr f2, f1
/* 804CA0B8  C0 7F 01 48 */	lfs f3, 0x148(r31)
/* 804CA0BC  FC 80 18 90 */	fmr f4, f3
/* 804CA0C0  39 00 00 00 */	li r8, 0
/* 804CA0C4  4B DE 18 C0 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 804CA0C8  48 00 01 68 */	b lbl_804CA230
lbl_804CA0CC:
/* 804CA0CC  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 804CA0D0  41 82 01 54 */	beq lbl_804CA224
/* 804CA0D4  3C 60 80 4D */	lis r3, __vt__8cM3dGPla@ha
/* 804CA0D8  38 03 C5 E0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 804CA0DC  90 01 00 54 */	stw r0, 0x54(r1)
/* 804CA0E0  7F A3 EB 78 */	mr r3, r29
/* 804CA0E4  38 9A 06 68 */	addi r4, r26, 0x668
/* 804CA0E8  38 A1 00 44 */	addi r5, r1, 0x44
/* 804CA0EC  4B BA A6 58 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 804CA0F0  A8 1A 0B 5A */	lha r0, 0xb5a(r26)
/* 804CA0F4  2C 00 0E 38 */	cmpwi r0, 0xe38
/* 804CA0F8  41 80 00 B4 */	blt lbl_804CA1AC
/* 804CA0FC  38 7A 06 68 */	addi r3, r26, 0x668
/* 804CA100  4B C3 B9 BC */	b checkSnowCodePolygon__9daAlink_cFR13cBgS_PolyInfo
/* 804CA104  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804CA108  40 82 00 A4 */	bne lbl_804CA1AC
/* 804CA10C  A8 1A 0B 5A */	lha r0, 0xb5a(r26)
/* 804CA110  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804CA114  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 804CA118  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 804CA11C  7C 23 04 2E */	lfsx f1, r3, r0
/* 804CA120  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 804CA124  EC 80 00 72 */	fmuls f4, f0, f1
/* 804CA128  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 804CA12C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804CA130  7C 43 04 2E */	lfsx f2, r3, r0
/* 804CA134  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 804CA138  EC 20 01 32 */	fmuls f1, f0, f4
/* 804CA13C  C0 7A 05 2C */	lfs f3, 0x52c(r26)
/* 804CA140  EC 03 00 B2 */	fmuls f0, f3, f2
/* 804CA144  EF C1 00 2A */	fadds f30, f1, f0
/* 804CA148  7C 63 02 14 */	add r3, r3, r0
/* 804CA14C  C0 43 00 04 */	lfs f2, 4(r3)
/* 804CA150  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 804CA154  EC 20 01 32 */	fmuls f1, f0, f4
/* 804CA158  EC 03 00 B2 */	fmuls f0, f3, f2
/* 804CA15C  EF E1 00 2A */	fadds f31, f1, f0
/* 804CA160  FC 20 F0 90 */	fmr f1, f30
/* 804CA164  FC 40 F8 90 */	fmr f2, f31
/* 804CA168  4B D9 D5 0C */	b cM_atan2s__Fff
/* 804CA16C  B0 7A 04 DE */	sth r3, 0x4de(r26)
/* 804CA170  EC 3E 07 B2 */	fmuls f1, f30, f30
/* 804CA174  EC 1F 07 F2 */	fmuls f0, f31, f31
/* 804CA178  EC 21 00 2A */	fadds f1, f1, f0
/* 804CA17C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 804CA180  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CA184  40 81 00 0C */	ble lbl_804CA190
/* 804CA188  FC 00 08 34 */	frsqrte f0, f1
/* 804CA18C  EC 20 00 72 */	fmuls f1, f0, f1
lbl_804CA190:
/* 804CA190  D0 3A 05 2C */	stfs f1, 0x52c(r26)
/* 804CA194  C0 3A 05 2C */	lfs f1, 0x52c(r26)
/* 804CA198  C0 1F 01 54 */	lfs f0, 0x154(r31)
/* 804CA19C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CA1A0  40 81 00 74 */	ble lbl_804CA214
/* 804CA1A4  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 804CA1A8  48 00 00 6C */	b lbl_804CA214
lbl_804CA1AC:
/* 804CA1AC  38 7A 05 2C */	addi r3, r26, 0x52c
/* 804CA1B0  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 804CA1B4  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 804CA1B8  4B DA 65 88 */	b cLib_chaseF__FPfff
/* 804CA1BC  2C 03 00 00 */	cmpwi r3, 0
/* 804CA1C0  41 82 00 54 */	beq lbl_804CA214
/* 804CA1C4  38 7A 0C 20 */	addi r3, r26, 0xc20
/* 804CA1C8  4B E7 CF 70 */	b PSVECSquareMag
/* 804CA1CC  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804CA1D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CA1D4  40 80 00 34 */	bge lbl_804CA208
/* 804CA1D8  38 7A 0C 2C */	addi r3, r26, 0xc2c
/* 804CA1DC  4B E7 CF 5C */	b PSVECSquareMag
/* 804CA1E0  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804CA1E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CA1E8  40 80 00 20 */	bge lbl_804CA208
/* 804CA1EC  80 1A 0B 4C */	lwz r0, 0xb4c(r26)
/* 804CA1F0  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 804CA1F4  40 82 00 14 */	bne lbl_804CA208
/* 804CA1F8  80 1A 05 5C */	lwz r0, 0x55c(r26)
/* 804CA1FC  60 00 00 10 */	ori r0, r0, 0x10
/* 804CA200  90 1A 05 5C */	stw r0, 0x55c(r26)
/* 804CA204  48 00 00 10 */	b lbl_804CA214
lbl_804CA208:
/* 804CA208  80 1A 05 5C */	lwz r0, 0x55c(r26)
/* 804CA20C  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 804CA210  90 1A 05 5C */	stw r0, 0x55c(r26)
lbl_804CA214:
/* 804CA214  3C 60 80 4D */	lis r3, __vt__8cM3dGPla@ha
/* 804CA218  38 03 C5 E0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 804CA21C  90 01 00 54 */	stw r0, 0x54(r1)
/* 804CA220  48 00 00 10 */	b lbl_804CA230
lbl_804CA224:
/* 804CA224  80 1A 05 5C */	lwz r0, 0x55c(r26)
/* 804CA228  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 804CA22C  90 1A 05 5C */	stw r0, 0x55c(r26)
lbl_804CA230:
/* 804CA230  80 1A 0B 4C */	lwz r0, 0xb4c(r26)
/* 804CA234  54 00 03 DA */	rlwinm r0, r0, 0, 0xf, 0xd
/* 804CA238  90 1A 0B 4C */	stw r0, 0xb4c(r26)
/* 804CA23C  38 60 00 01 */	li r3, 1
lbl_804CA240:
/* 804CA240  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 804CA244  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 804CA248  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 804CA24C  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 804CA250  39 61 00 90 */	addi r11, r1, 0x90
/* 804CA254  4B E9 7F C8 */	b _restgpr_26
/* 804CA258  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 804CA25C  7C 08 03 A6 */	mtlr r0
/* 804CA260  38 21 00 B0 */	addi r1, r1, 0xb0
/* 804CA264  4E 80 00 20 */	blr 
