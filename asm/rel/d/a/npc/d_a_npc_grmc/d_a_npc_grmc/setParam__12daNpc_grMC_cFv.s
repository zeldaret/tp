lbl_809D7DD4:
/* 809D7DD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809D7DD8  7C 08 02 A6 */	mflr r0
/* 809D7DDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 809D7DE0  39 61 00 20 */	addi r11, r1, 0x20
/* 809D7DE4  4B 98 A3 F5 */	bl _savegpr_28
/* 809D7DE8  7C 7E 1B 78 */	mr r30, r3
/* 809D7DEC  3B E0 00 0A */	li r31, 0xa
/* 809D7DF0  88 03 10 DC */	lbz r0, 0x10dc(r3)
/* 809D7DF4  28 00 00 00 */	cmplwi r0, 0
/* 809D7DF8  41 82 00 2C */	beq lbl_809D7E24
/* 809D7DFC  80 1E 10 D8 */	lwz r0, 0x10d8(r30)
/* 809D7E00  2C 00 00 02 */	cmpwi r0, 2
/* 809D7E04  40 82 00 10 */	bne lbl_809D7E14
/* 809D7E08  38 7E 0E 78 */	addi r3, r30, 0xe78
/* 809D7E0C  4B 7B E5 A9 */	bl Reset__16ShopCam_action_cFv
/* 809D7E10  48 00 00 0C */	b lbl_809D7E1C
lbl_809D7E14:
/* 809D7E14  38 7E 0E 78 */	addi r3, r30, 0xe78
/* 809D7E18  4B 7B E5 45 */	bl EventRecoverNotime__16ShopCam_action_cFv
lbl_809D7E1C:
/* 809D7E1C  38 00 00 00 */	li r0, 0
/* 809D7E20  98 1E 10 DC */	stb r0, 0x10dc(r30)
lbl_809D7E24:
/* 809D7E24  7F C3 F3 78 */	mr r3, r30
/* 809D7E28  48 00 09 E1 */	bl selectAction__12daNpc_grMC_cFv
/* 809D7E2C  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 809D7E30  28 00 00 00 */	cmplwi r0, 0
/* 809D7E34  40 82 00 20 */	bne lbl_809D7E54
/* 809D7E38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809D7E3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809D7E40  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 809D7E44  80 03 05 74 */	lwz r0, 0x574(r3)
/* 809D7E48  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 809D7E4C  41 82 00 08 */	beq lbl_809D7E54
/* 809D7E50  3B E0 00 00 */	li r31, 0
lbl_809D7E54:
/* 809D7E54  7F C3 F3 78 */	mr r3, r30
/* 809D7E58  48 00 01 75 */	bl srchActors__12daNpc_grMC_cFv
/* 809D7E5C  3C 60 80 9E */	lis r3, m__18daNpc_grMC_Param_c@ha /* 0x809D9D70@ha */
/* 809D7E60  38 83 9D 70 */	addi r4, r3, m__18daNpc_grMC_Param_c@l /* 0x809D9D70@l */
/* 809D7E64  AB 84 00 48 */	lha r28, 0x48(r4)
/* 809D7E68  AB A4 00 4A */	lha r29, 0x4a(r4)
/* 809D7E6C  A8 64 00 4C */	lha r3, 0x4c(r4)
/* 809D7E70  A8 84 00 4E */	lha r4, 0x4e(r4)
/* 809D7E74  4B 77 4B A5 */	bl daNpcT_getDistTableIdx__Fii
/* 809D7E78  98 7E 05 44 */	stb r3, 0x544(r30)
/* 809D7E7C  88 1E 05 44 */	lbz r0, 0x544(r30)
/* 809D7E80  98 1E 05 45 */	stb r0, 0x545(r30)
/* 809D7E84  7F 83 07 34 */	extsh r3, r28
/* 809D7E88  7F A4 07 34 */	extsh r4, r29
/* 809D7E8C  4B 77 4B 8D */	bl daNpcT_getDistTableIdx__Fii
/* 809D7E90  98 7E 05 47 */	stb r3, 0x547(r30)
/* 809D7E94  93 FE 05 5C */	stw r31, 0x55c(r30)
/* 809D7E98  3C 60 80 9E */	lis r3, m__18daNpc_grMC_Param_c@ha /* 0x809D9D70@ha */
/* 809D7E9C  38 63 9D 70 */	addi r3, r3, m__18daNpc_grMC_Param_c@l /* 0x809D9D70@l */
/* 809D7EA0  C0 03 00 08 */	lfs f0, 8(r3)
/* 809D7EA4  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 809D7EA8  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 809D7EAC  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
/* 809D7EB0  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 809D7EB4  FC 00 00 1E */	fctiwz f0, f0
/* 809D7EB8  D8 01 00 08 */	stfd f0, 8(r1)
/* 809D7EBC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 809D7EC0  98 1E 08 78 */	stb r0, 0x878(r30)
/* 809D7EC4  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 809D7EC8  D0 1E 0D EC */	stfs f0, 0xdec(r30)
/* 809D7ECC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 809D7ED0  D0 1E 0D F0 */	stfs f0, 0xdf0(r30)
/* 809D7ED4  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 809D7ED8  C0 3E 0D F0 */	lfs f1, 0xdf0(r30)
/* 809D7EDC  4B 69 E0 65 */	bl SetWallR__12dBgS_AcchCirFf
/* 809D7EE0  3C 60 80 9E */	lis r3, m__18daNpc_grMC_Param_c@ha /* 0x809D9D70@ha */
/* 809D7EE4  38 63 9D 70 */	addi r3, r3, m__18daNpc_grMC_Param_c@l /* 0x809D9D70@l */
/* 809D7EE8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 809D7EEC  D0 1E 08 D0 */	stfs f0, 0x8d0(r30)
/* 809D7EF0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 809D7EF4  D0 1E 0D E8 */	stfs f0, 0xde8(r30)
/* 809D7EF8  C0 03 00 04 */	lfs f0, 4(r3)
/* 809D7EFC  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 809D7F00  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 809D7F04  D0 1E 0A 80 */	stfs f0, 0xa80(r30)
/* 809D7F08  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 809D7F0C  D0 1E 0A 84 */	stfs f0, 0xa84(r30)
/* 809D7F10  39 61 00 20 */	addi r11, r1, 0x20
/* 809D7F14  4B 98 A3 11 */	bl _restgpr_28
/* 809D7F18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809D7F1C  7C 08 03 A6 */	mtlr r0
/* 809D7F20  38 21 00 20 */	addi r1, r1, 0x20
/* 809D7F24  4E 80 00 20 */	blr 
