lbl_809D49D0:
/* 809D49D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809D49D4  7C 08 02 A6 */	mflr r0
/* 809D49D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 809D49DC  39 61 00 20 */	addi r11, r1, 0x20
/* 809D49E0  4B 98 D7 F8 */	b _savegpr_28
/* 809D49E4  7C 7E 1B 78 */	mr r30, r3
/* 809D49E8  3B E0 00 0A */	li r31, 0xa
/* 809D49EC  88 03 0A 89 */	lbz r0, 0xa89(r3)
/* 809D49F0  28 00 00 00 */	cmplwi r0, 0
/* 809D49F4  40 82 00 20 */	bne lbl_809D4A14
/* 809D49F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809D49FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809D4A00  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 809D4A04  80 03 05 74 */	lwz r0, 0x574(r3)
/* 809D4A08  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 809D4A0C  41 82 00 08 */	beq lbl_809D4A14
/* 809D4A10  3B E0 00 00 */	li r31, 0
lbl_809D4A14:
/* 809D4A14  88 1E 10 DC */	lbz r0, 0x10dc(r30)
/* 809D4A18  28 00 00 00 */	cmplwi r0, 0
/* 809D4A1C  41 82 00 2C */	beq lbl_809D4A48
/* 809D4A20  80 1E 10 D8 */	lwz r0, 0x10d8(r30)
/* 809D4A24  2C 00 00 02 */	cmpwi r0, 2
/* 809D4A28  40 82 00 10 */	bne lbl_809D4A38
/* 809D4A2C  38 7E 0E 78 */	addi r3, r30, 0xe78
/* 809D4A30  4B 7C 19 84 */	b Reset__16ShopCam_action_cFv
/* 809D4A34  48 00 00 0C */	b lbl_809D4A40
lbl_809D4A38:
/* 809D4A38  38 7E 0E 78 */	addi r3, r30, 0xe78
/* 809D4A3C  4B 7C 19 20 */	b EventRecoverNotime__16ShopCam_action_cFv
lbl_809D4A40:
/* 809D4A40  38 00 00 00 */	li r0, 0
/* 809D4A44  98 1E 10 DC */	stb r0, 0x10dc(r30)
lbl_809D4A48:
/* 809D4A48  7F C3 F3 78 */	mr r3, r30
/* 809D4A4C  48 00 0C 15 */	bl selectAction__11daNpc_grM_cFv
/* 809D4A50  7F C3 F3 78 */	mr r3, r30
/* 809D4A54  48 00 01 65 */	bl srchActors__11daNpc_grM_cFv
/* 809D4A58  3C 60 80 9D */	lis r3, m__17daNpc_grM_Param_c@ha
/* 809D4A5C  38 83 6D 70 */	addi r4, r3, m__17daNpc_grM_Param_c@l
/* 809D4A60  AB 84 00 48 */	lha r28, 0x48(r4)
/* 809D4A64  AB A4 00 4A */	lha r29, 0x4a(r4)
/* 809D4A68  A8 64 00 4C */	lha r3, 0x4c(r4)
/* 809D4A6C  A8 84 00 4E */	lha r4, 0x4e(r4)
/* 809D4A70  4B 77 7F A8 */	b daNpcT_getDistTableIdx__Fii
/* 809D4A74  98 7E 05 44 */	stb r3, 0x544(r30)
/* 809D4A78  88 1E 05 44 */	lbz r0, 0x544(r30)
/* 809D4A7C  98 1E 05 45 */	stb r0, 0x545(r30)
/* 809D4A80  7F 83 07 34 */	extsh r3, r28
/* 809D4A84  7F A4 07 34 */	extsh r4, r29
/* 809D4A88  4B 77 7F 90 */	b daNpcT_getDistTableIdx__Fii
/* 809D4A8C  98 7E 05 47 */	stb r3, 0x547(r30)
/* 809D4A90  93 FE 05 5C */	stw r31, 0x55c(r30)
/* 809D4A94  3C 60 80 9D */	lis r3, m__17daNpc_grM_Param_c@ha
/* 809D4A98  38 63 6D 70 */	addi r3, r3, m__17daNpc_grM_Param_c@l
/* 809D4A9C  C0 03 00 08 */	lfs f0, 8(r3)
/* 809D4AA0  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 809D4AA4  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 809D4AA8  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
/* 809D4AAC  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 809D4AB0  FC 00 00 1E */	fctiwz f0, f0
/* 809D4AB4  D8 01 00 08 */	stfd f0, 8(r1)
/* 809D4AB8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 809D4ABC  98 1E 08 78 */	stb r0, 0x878(r30)
/* 809D4AC0  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 809D4AC4  D0 1E 0D EC */	stfs f0, 0xdec(r30)
/* 809D4AC8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 809D4ACC  D0 1E 0D F0 */	stfs f0, 0xdf0(r30)
/* 809D4AD0  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 809D4AD4  C0 3E 0D F0 */	lfs f1, 0xdf0(r30)
/* 809D4AD8  4B 6A 14 68 */	b SetWallR__12dBgS_AcchCirFf
/* 809D4ADC  3C 60 80 9D */	lis r3, m__17daNpc_grM_Param_c@ha
/* 809D4AE0  38 63 6D 70 */	addi r3, r3, m__17daNpc_grM_Param_c@l
/* 809D4AE4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 809D4AE8  D0 1E 08 D0 */	stfs f0, 0x8d0(r30)
/* 809D4AEC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 809D4AF0  D0 1E 0D E8 */	stfs f0, 0xde8(r30)
/* 809D4AF4  C0 03 00 04 */	lfs f0, 4(r3)
/* 809D4AF8  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 809D4AFC  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 809D4B00  D0 1E 0A 80 */	stfs f0, 0xa80(r30)
/* 809D4B04  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 809D4B08  D0 1E 0A 84 */	stfs f0, 0xa84(r30)
/* 809D4B0C  39 61 00 20 */	addi r11, r1, 0x20
/* 809D4B10  4B 98 D7 14 */	b _restgpr_28
/* 809D4B14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809D4B18  7C 08 03 A6 */	mtlr r0
/* 809D4B1C  38 21 00 20 */	addi r1, r1, 0x20
/* 809D4B20  4E 80 00 20 */	blr 
