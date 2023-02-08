lbl_80B72D24:
/* 80B72D24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B72D28  7C 08 02 A6 */	mflr r0
/* 80B72D2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B72D30  39 61 00 20 */	addi r11, r1, 0x20
/* 80B72D34  4B 7E F4 A9 */	bl _savegpr_29
/* 80B72D38  7C 7D 1B 78 */	mr r29, r3
/* 80B72D3C  48 00 08 29 */	bl selectAction__13daNpc_ZelRo_cFv
/* 80B72D40  7F A3 EB 78 */	mr r3, r29
/* 80B72D44  48 00 01 35 */	bl srchActors__13daNpc_ZelRo_cFv
/* 80B72D48  3C 60 80 B7 */	lis r3, m__19daNpc_ZelRo_Param_c@ha /* 0x80B74C5C@ha */
/* 80B72D4C  38 83 4C 5C */	addi r4, r3, m__19daNpc_ZelRo_Param_c@l /* 0x80B74C5C@l */
/* 80B72D50  AB C4 00 48 */	lha r30, 0x48(r4)
/* 80B72D54  AB E4 00 4A */	lha r31, 0x4a(r4)
/* 80B72D58  A8 64 00 4C */	lha r3, 0x4c(r4)
/* 80B72D5C  A8 84 00 4E */	lha r4, 0x4e(r4)
/* 80B72D60  4B 5D 9C B9 */	bl daNpcT_getDistTableIdx__Fii
/* 80B72D64  98 7D 05 44 */	stb r3, 0x544(r29)
/* 80B72D68  88 1D 05 44 */	lbz r0, 0x544(r29)
/* 80B72D6C  98 1D 05 45 */	stb r0, 0x545(r29)
/* 80B72D70  7F C3 07 34 */	extsh r3, r30
/* 80B72D74  7F E4 07 34 */	extsh r4, r31
/* 80B72D78  4B 5D 9C A1 */	bl daNpcT_getDistTableIdx__Fii
/* 80B72D7C  98 7D 05 47 */	stb r3, 0x547(r29)
/* 80B72D80  38 00 00 0A */	li r0, 0xa
/* 80B72D84  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80B72D88  3C 60 80 B7 */	lis r3, m__19daNpc_ZelRo_Param_c@ha /* 0x80B74C5C@ha */
/* 80B72D8C  38 63 4C 5C */	addi r3, r3, m__19daNpc_ZelRo_Param_c@l /* 0x80B74C5C@l */
/* 80B72D90  C0 03 00 08 */	lfs f0, 8(r3)
/* 80B72D94  D0 1D 04 EC */	stfs f0, 0x4ec(r29)
/* 80B72D98  D0 1D 04 F0 */	stfs f0, 0x4f0(r29)
/* 80B72D9C  D0 1D 04 F4 */	stfs f0, 0x4f4(r29)
/* 80B72DA0  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80B72DA4  FC 00 00 1E */	fctiwz f0, f0
/* 80B72DA8  D8 01 00 08 */	stfd f0, 8(r1)
/* 80B72DAC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B72DB0  98 1D 08 78 */	stb r0, 0x878(r29)
/* 80B72DB4  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80B72DB8  D0 1D 0D EC */	stfs f0, 0xdec(r29)
/* 80B72DBC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B72DC0  D0 1D 0D F0 */	stfs f0, 0xdf0(r29)
/* 80B72DC4  38 7D 08 A0 */	addi r3, r29, 0x8a0
/* 80B72DC8  C0 3D 0D F0 */	lfs f1, 0xdf0(r29)
/* 80B72DCC  4B 50 31 75 */	bl SetWallR__12dBgS_AcchCirFf
/* 80B72DD0  3C 60 80 B7 */	lis r3, m__19daNpc_ZelRo_Param_c@ha /* 0x80B74C5C@ha */
/* 80B72DD4  38 63 4C 5C */	addi r3, r3, m__19daNpc_ZelRo_Param_c@l /* 0x80B74C5C@l */
/* 80B72DD8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B72DDC  D0 1D 08 D0 */	stfs f0, 0x8d0(r29)
/* 80B72DE0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B72DE4  D0 1D 0D E8 */	stfs f0, 0xde8(r29)
/* 80B72DE8  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B72DEC  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80B72DF0  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80B72DF4  D0 1D 0A 80 */	stfs f0, 0xa80(r29)
/* 80B72DF8  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80B72DFC  D0 1D 0A 84 */	stfs f0, 0xa84(r29)
/* 80B72E00  39 61 00 20 */	addi r11, r1, 0x20
/* 80B72E04  4B 7E F4 25 */	bl _restgpr_29
/* 80B72E08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B72E0C  7C 08 03 A6 */	mtlr r0
/* 80B72E10  38 21 00 20 */	addi r1, r1, 0x20
/* 80B72E14  4E 80 00 20 */	blr 
