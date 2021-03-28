lbl_80B6FBA8:
/* 80B6FBA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B6FBAC  7C 08 02 A6 */	mflr r0
/* 80B6FBB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B6FBB4  39 61 00 20 */	addi r11, r1, 0x20
/* 80B6FBB8  4B 7F 26 24 */	b _savegpr_29
/* 80B6FBBC  7C 7D 1B 78 */	mr r29, r3
/* 80B6FBC0  48 00 08 29 */	bl selectAction__12daNpc_ZelR_cFv
/* 80B6FBC4  7F A3 EB 78 */	mr r3, r29
/* 80B6FBC8  48 00 01 35 */	bl srchActors__12daNpc_ZelR_cFv
/* 80B6FBCC  3C 60 80 B7 */	lis r3, m__18daNpc_ZelR_Param_c@ha
/* 80B6FBD0  38 83 1A E0 */	addi r4, r3, m__18daNpc_ZelR_Param_c@l
/* 80B6FBD4  AB C4 00 48 */	lha r30, 0x48(r4)
/* 80B6FBD8  AB E4 00 4A */	lha r31, 0x4a(r4)
/* 80B6FBDC  A8 64 00 4C */	lha r3, 0x4c(r4)
/* 80B6FBE0  A8 84 00 4E */	lha r4, 0x4e(r4)
/* 80B6FBE4  4B 5D CE 34 */	b daNpcT_getDistTableIdx__Fii
/* 80B6FBE8  98 7D 05 44 */	stb r3, 0x544(r29)
/* 80B6FBEC  88 1D 05 44 */	lbz r0, 0x544(r29)
/* 80B6FBF0  98 1D 05 45 */	stb r0, 0x545(r29)
/* 80B6FBF4  7F C3 07 34 */	extsh r3, r30
/* 80B6FBF8  7F E4 07 34 */	extsh r4, r31
/* 80B6FBFC  4B 5D CE 1C */	b daNpcT_getDistTableIdx__Fii
/* 80B6FC00  98 7D 05 47 */	stb r3, 0x547(r29)
/* 80B6FC04  38 00 00 0A */	li r0, 0xa
/* 80B6FC08  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80B6FC0C  3C 60 80 B7 */	lis r3, m__18daNpc_ZelR_Param_c@ha
/* 80B6FC10  38 63 1A E0 */	addi r3, r3, m__18daNpc_ZelR_Param_c@l
/* 80B6FC14  C0 03 00 08 */	lfs f0, 8(r3)
/* 80B6FC18  D0 1D 04 EC */	stfs f0, 0x4ec(r29)
/* 80B6FC1C  D0 1D 04 F0 */	stfs f0, 0x4f0(r29)
/* 80B6FC20  D0 1D 04 F4 */	stfs f0, 0x4f4(r29)
/* 80B6FC24  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80B6FC28  FC 00 00 1E */	fctiwz f0, f0
/* 80B6FC2C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80B6FC30  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B6FC34  98 1D 08 78 */	stb r0, 0x878(r29)
/* 80B6FC38  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80B6FC3C  D0 1D 0D EC */	stfs f0, 0xdec(r29)
/* 80B6FC40  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B6FC44  D0 1D 0D F0 */	stfs f0, 0xdf0(r29)
/* 80B6FC48  38 7D 08 A0 */	addi r3, r29, 0x8a0
/* 80B6FC4C  C0 3D 0D F0 */	lfs f1, 0xdf0(r29)
/* 80B6FC50  4B 50 62 F0 */	b SetWallR__12dBgS_AcchCirFf
/* 80B6FC54  3C 60 80 B7 */	lis r3, m__18daNpc_ZelR_Param_c@ha
/* 80B6FC58  38 63 1A E0 */	addi r3, r3, m__18daNpc_ZelR_Param_c@l
/* 80B6FC5C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B6FC60  D0 1D 08 D0 */	stfs f0, 0x8d0(r29)
/* 80B6FC64  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B6FC68  D0 1D 0D E8 */	stfs f0, 0xde8(r29)
/* 80B6FC6C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B6FC70  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80B6FC74  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80B6FC78  D0 1D 0A 80 */	stfs f0, 0xa80(r29)
/* 80B6FC7C  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80B6FC80  D0 1D 0A 84 */	stfs f0, 0xa84(r29)
/* 80B6FC84  39 61 00 20 */	addi r11, r1, 0x20
/* 80B6FC88  4B 7F 25 A0 */	b _restgpr_29
/* 80B6FC8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B6FC90  7C 08 03 A6 */	mtlr r0
/* 80B6FC94  38 21 00 20 */	addi r1, r1, 0x20
/* 80B6FC98  4E 80 00 20 */	blr 
