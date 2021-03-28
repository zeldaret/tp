lbl_804E3A2C:
/* 804E3A2C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804E3A30  7C 08 02 A6 */	mflr r0
/* 804E3A34  90 01 00 54 */	stw r0, 0x54(r1)
/* 804E3A38  39 61 00 50 */	addi r11, r1, 0x50
/* 804E3A3C  4B E7 E7 A0 */	b _savegpr_29
/* 804E3A40  7C 7E 1B 78 */	mr r30, r3
/* 804E3A44  3C 60 80 4E */	lis r3, l_staff_name@ha
/* 804E3A48  3B A3 4A 14 */	addi r29, r3, l_staff_name@l
/* 804E3A4C  80 7E 05 88 */	lwz r3, 0x588(r30)
/* 804E3A50  4B B2 99 D8 */	b play__14mDoExt_baseAnmFv
/* 804E3A54  7C 7F 1B 78 */	mr r31, r3
/* 804E3A58  80 7E 05 88 */	lwz r3, 0x588(r30)
/* 804E3A5C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 804E3A60  C0 1D 00 80 */	lfs f0, 0x80(r29)
/* 804E3A64  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 804E3A68  40 82 00 1C */	bne lbl_804E3A84
/* 804E3A6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804E3A70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804E3A74  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 804E3A78  38 80 00 1F */	li r4, 0x1f
/* 804E3A7C  4B B8 C3 18 */	b StopQuake__12dVibration_cFi
/* 804E3A80  48 00 01 70 */	b lbl_804E3BF0
lbl_804E3A84:
/* 804E3A84  C0 1D 00 78 */	lfs f0, 0x78(r29)
/* 804E3A88  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 804E3A8C  40 82 00 AC */	bne lbl_804E3B38
/* 804E3A90  C0 3D 00 40 */	lfs f1, 0x40(r29)
/* 804E3A94  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 804E3A98  C0 1D 00 3C */	lfs f0, 0x3c(r29)
/* 804E3A9C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804E3AA0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 804E3AA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804E3AA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804E3AAC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 804E3AB0  38 80 00 08 */	li r4, 8
/* 804E3AB4  38 A0 00 0F */	li r5, 0xf
/* 804E3AB8  38 C1 00 1C */	addi r6, r1, 0x1c
/* 804E3ABC  4B B8 BF 68 */	b StartShock__12dVibration_cFii4cXyz
/* 804E3AC0  4B FF E2 D9 */	bl getNowLevel__Fv
/* 804E3AC4  2C 03 00 05 */	cmpwi r3, 5
/* 804E3AC8  41 82 00 20 */	beq lbl_804E3AE8
/* 804E3ACC  40 80 00 10 */	bge lbl_804E3ADC
/* 804E3AD0  2C 03 00 04 */	cmpwi r3, 4
/* 804E3AD4  40 80 01 1C */	bge lbl_804E3BF0
/* 804E3AD8  48 00 00 10 */	b lbl_804E3AE8
lbl_804E3ADC:
/* 804E3ADC  2C 03 00 0A */	cmpwi r3, 0xa
/* 804E3AE0  40 80 00 08 */	bge lbl_804E3AE8
/* 804E3AE4  48 00 01 0C */	b lbl_804E3BF0
lbl_804E3AE8:
/* 804E3AE8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 804E3AEC  7C 03 07 74 */	extsb r3, r0
/* 804E3AF0  4B B4 95 7C */	b dComIfGp_getReverb__Fi
/* 804E3AF4  7C 67 1B 78 */	mr r7, r3
/* 804E3AF8  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800B5@ha */
/* 804E3AFC  38 03 00 B5 */	addi r0, r3, 0x00B5 /* 0x000800B5@l */
/* 804E3B00  90 01 00 18 */	stw r0, 0x18(r1)
/* 804E3B04  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 804E3B08  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 804E3B0C  80 63 00 00 */	lwz r3, 0(r3)
/* 804E3B10  38 81 00 18 */	addi r4, r1, 0x18
/* 804E3B14  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 804E3B18  38 C0 00 00 */	li r6, 0
/* 804E3B1C  C0 3D 00 3C */	lfs f1, 0x3c(r29)
/* 804E3B20  FC 40 08 90 */	fmr f2, f1
/* 804E3B24  C0 7D 00 54 */	lfs f3, 0x54(r29)
/* 804E3B28  FC 80 18 90 */	fmr f4, f3
/* 804E3B2C  39 00 00 00 */	li r8, 0
/* 804E3B30  4B DC 7E 54 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 804E3B34  48 00 00 BC */	b lbl_804E3BF0
lbl_804E3B38:
/* 804E3B38  C0 1D 00 84 */	lfs f0, 0x84(r29)
/* 804E3B3C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 804E3B40  40 82 00 B0 */	bne lbl_804E3BF0
/* 804E3B44  4B FF E2 55 */	bl getNowLevel__Fv
/* 804E3B48  2C 03 00 05 */	cmpwi r3, 5
/* 804E3B4C  41 82 00 A4 */	beq lbl_804E3BF0
/* 804E3B50  40 80 00 10 */	bge lbl_804E3B60
/* 804E3B54  2C 03 00 04 */	cmpwi r3, 4
/* 804E3B58  40 80 00 10 */	bge lbl_804E3B68
/* 804E3B5C  48 00 00 94 */	b lbl_804E3BF0
lbl_804E3B60:
/* 804E3B60  2C 03 00 0A */	cmpwi r3, 0xa
/* 804E3B64  40 80 00 8C */	bge lbl_804E3BF0
lbl_804E3B68:
/* 804E3B68  C0 1E 07 C8 */	lfs f0, 0x7c8(r30)
/* 804E3B6C  C0 3D 00 88 */	lfs f1, 0x88(r29)
/* 804E3B70  EC 00 08 28 */	fsubs f0, f0, f1
/* 804E3B74  D0 1E 07 C8 */	stfs f0, 0x7c8(r30)
/* 804E3B78  C0 1E 07 D4 */	lfs f0, 0x7d4(r30)
/* 804E3B7C  EC 00 08 2A */	fadds f0, f0, f1
/* 804E3B80  D0 1E 07 D4 */	stfs f0, 0x7d4(r30)
/* 804E3B84  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 804E3B88  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 804E3B8C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 804E3B90  38 84 0F 38 */	addi r4, r4, 0xf38
/* 804E3B94  4B B9 2F 18 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 804E3B98  C0 1D 00 8C */	lfs f0, 0x8c(r29)
/* 804E3B9C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804E3BA0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804E3BA4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804E3BA8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 804E3BAC  7C 03 07 74 */	extsb r3, r0
/* 804E3BB0  38 00 00 00 */	li r0, 0
/* 804E3BB4  90 01 00 08 */	stw r0, 8(r1)
/* 804E3BB8  90 61 00 0C */	stw r3, 0xc(r1)
/* 804E3BBC  90 01 00 10 */	stw r0, 0x10(r1)
/* 804E3BC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804E3BC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804E3BC8  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 804E3BCC  3C 80 00 01 */	lis r4, 0x0001 /* 0x00008C50@ha */
/* 804E3BD0  38 84 8C 50 */	addi r4, r4, 0x8C50 /* 0x00008C50@l */
/* 804E3BD4  38 BE 06 9C */	addi r5, r30, 0x69c
/* 804E3BD8  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 804E3BDC  38 FE 01 0C */	addi r7, r30, 0x10c
/* 804E3BE0  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 804E3BE4  39 21 00 28 */	addi r9, r1, 0x28
/* 804E3BE8  39 40 00 00 */	li r10, 0
/* 804E3BEC  4B B6 94 7C */	b setPoly__13dPa_control_cFUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz
lbl_804E3BF0:
/* 804E3BF0  7F E3 FB 78 */	mr r3, r31
/* 804E3BF4  39 61 00 50 */	addi r11, r1, 0x50
/* 804E3BF8  4B E7 E6 30 */	b _restgpr_29
/* 804E3BFC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804E3C00  7C 08 03 A6 */	mtlr r0
/* 804E3C04  38 21 00 50 */	addi r1, r1, 0x50
/* 804E3C08  4E 80 00 20 */	blr 
