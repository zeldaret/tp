lbl_80AA9A7C:
/* 80AA9A7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AA9A80  7C 08 02 A6 */	mflr r0
/* 80AA9A84  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AA9A88  39 61 00 20 */	addi r11, r1, 0x20
/* 80AA9A8C  4B 8B 87 51 */	bl _savegpr_29
/* 80AA9A90  7C 7F 1B 78 */	mr r31, r3
/* 80AA9A94  48 00 0F 09 */	bl selectAction__12daNpc_Post_cFv
/* 80AA9A98  7F E3 FB 78 */	mr r3, r31
/* 80AA9A9C  48 00 02 69 */	bl srchActors__12daNpc_Post_cFv
/* 80AA9AA0  3C 60 80 AB */	lis r3, m__18daNpc_Post_Param_c@ha /* 0x80AAD1EC@ha */
/* 80AA9AA4  38 83 D1 EC */	addi r4, r3, m__18daNpc_Post_Param_c@l /* 0x80AAD1EC@l */
/* 80AA9AA8  AB A4 00 48 */	lha r29, 0x48(r4)
/* 80AA9AAC  AB C4 00 4A */	lha r30, 0x4a(r4)
/* 80AA9AB0  A8 64 00 4C */	lha r3, 0x4c(r4)
/* 80AA9AB4  A8 84 00 4E */	lha r4, 0x4e(r4)
/* 80AA9AB8  4B 6A 2F 61 */	bl daNpcT_getDistTableIdx__Fii
/* 80AA9ABC  98 7F 05 44 */	stb r3, 0x544(r31)
/* 80AA9AC0  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 80AA9AC4  98 1F 05 45 */	stb r0, 0x545(r31)
/* 80AA9AC8  7F A3 07 34 */	extsh r3, r29
/* 80AA9ACC  7F C4 07 34 */	extsh r4, r30
/* 80AA9AD0  4B 6A 2F 49 */	bl daNpcT_getDistTableIdx__Fii
/* 80AA9AD4  98 7F 05 47 */	stb r3, 0x547(r31)
/* 80AA9AD8  38 00 00 0A */	li r0, 0xa
/* 80AA9ADC  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80AA9AE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AA9AE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AA9AE8  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80AA9AEC  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80AA9AF0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80AA9AF4  41 82 00 10 */	beq lbl_80AA9B04
/* 80AA9AF8  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80AA9AFC  64 00 00 80 */	oris r0, r0, 0x80
/* 80AA9B00  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_80AA9B04:
/* 80AA9B04  3C 60 80 AB */	lis r3, m__18daNpc_Post_Param_c@ha /* 0x80AAD1EC@ha */
/* 80AA9B08  38 63 D1 EC */	addi r3, r3, m__18daNpc_Post_Param_c@l /* 0x80AAD1EC@l */
/* 80AA9B0C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80AA9B10  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 80AA9B14  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 80AA9B18  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 80AA9B1C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80AA9B20  FC 00 00 1E */	fctiwz f0, f0
/* 80AA9B24  D8 01 00 08 */	stfd f0, 8(r1)
/* 80AA9B28  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80AA9B2C  98 1F 08 78 */	stb r0, 0x878(r31)
/* 80AA9B30  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80AA9B34  D0 1F 0D EC */	stfs f0, 0xdec(r31)
/* 80AA9B38  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80AA9B3C  D0 1F 0D F0 */	stfs f0, 0xdf0(r31)
/* 80AA9B40  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 80AA9B44  D0 1F 0D F8 */	stfs f0, 0xdf8(r31)
/* 80AA9B48  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80AA9B4C  C0 3F 0D F0 */	lfs f1, 0xdf0(r31)
/* 80AA9B50  4B 5C C3 F1 */	bl SetWallR__12dBgS_AcchCirFf
/* 80AA9B54  3C 60 80 AB */	lis r3, m__18daNpc_Post_Param_c@ha /* 0x80AAD1EC@ha */
/* 80AA9B58  38 63 D1 EC */	addi r3, r3, m__18daNpc_Post_Param_c@l /* 0x80AAD1EC@l */
/* 80AA9B5C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80AA9B60  D0 1F 08 D0 */	stfs f0, 0x8d0(r31)
/* 80AA9B64  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80AA9B68  D0 1F 0D E8 */	stfs f0, 0xde8(r31)
/* 80AA9B6C  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80AA9B70  D0 1F 0A 80 */	stfs f0, 0xa80(r31)
/* 80AA9B74  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80AA9B78  D0 1F 0A 84 */	stfs f0, 0xa84(r31)
/* 80AA9B7C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80AA9B80  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80AA9B84  7F E3 FB 78 */	mr r3, r31
/* 80AA9B88  48 00 10 19 */	bl pullOutLetter__12daNpc_Post_cFv
/* 80AA9B8C  39 61 00 20 */	addi r11, r1, 0x20
/* 80AA9B90  4B 8B 86 99 */	bl _restgpr_29
/* 80AA9B94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AA9B98  7C 08 03 A6 */	mtlr r0
/* 80AA9B9C  38 21 00 20 */	addi r1, r1, 0x20
/* 80AA9BA0  4E 80 00 20 */	blr 
