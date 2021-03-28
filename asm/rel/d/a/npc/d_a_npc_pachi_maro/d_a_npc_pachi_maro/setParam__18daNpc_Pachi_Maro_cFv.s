lbl_80A98870:
/* 80A98870  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A98874  7C 08 02 A6 */	mflr r0
/* 80A98878  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A9887C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A98880  4B 8C 99 5C */	b _savegpr_29
/* 80A98884  7C 7D 1B 78 */	mr r29, r3
/* 80A98888  48 00 0C 2D */	bl selectAction__18daNpc_Pachi_Maro_cFv
/* 80A9888C  7F A3 EB 78 */	mr r3, r29
/* 80A98890  48 00 01 81 */	bl srchActors__18daNpc_Pachi_Maro_cFv
/* 80A98894  3C 60 80 AA */	lis r3, m__24daNpc_Pachi_Maro_Param_c@ha
/* 80A98898  38 83 B8 8C */	addi r4, r3, m__24daNpc_Pachi_Maro_Param_c@l
/* 80A9889C  AB C4 00 48 */	lha r30, 0x48(r4)
/* 80A988A0  AB E4 00 4A */	lha r31, 0x4a(r4)
/* 80A988A4  A8 64 00 4C */	lha r3, 0x4c(r4)
/* 80A988A8  A8 84 00 4E */	lha r4, 0x4e(r4)
/* 80A988AC  4B 6B 41 6C */	b daNpcT_getDistTableIdx__Fii
/* 80A988B0  98 7D 05 44 */	stb r3, 0x544(r29)
/* 80A988B4  88 1D 05 44 */	lbz r0, 0x544(r29)
/* 80A988B8  98 1D 05 45 */	stb r0, 0x545(r29)
/* 80A988BC  7F C3 07 34 */	extsh r3, r30
/* 80A988C0  7F E4 07 34 */	extsh r4, r31
/* 80A988C4  4B 6B 41 54 */	b daNpcT_getDistTableIdx__Fii
/* 80A988C8  98 7D 05 47 */	stb r3, 0x547(r29)
/* 80A988CC  38 00 00 0A */	li r0, 0xa
/* 80A988D0  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80A988D4  3C 60 80 AA */	lis r3, m__24daNpc_Pachi_Maro_Param_c@ha
/* 80A988D8  38 63 B8 8C */	addi r3, r3, m__24daNpc_Pachi_Maro_Param_c@l
/* 80A988DC  C0 03 00 08 */	lfs f0, 8(r3)
/* 80A988E0  D0 1D 04 EC */	stfs f0, 0x4ec(r29)
/* 80A988E4  D0 1D 04 F0 */	stfs f0, 0x4f0(r29)
/* 80A988E8  D0 1D 04 F4 */	stfs f0, 0x4f4(r29)
/* 80A988EC  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80A988F0  FC 00 00 1E */	fctiwz f0, f0
/* 80A988F4  D8 01 00 08 */	stfd f0, 8(r1)
/* 80A988F8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80A988FC  98 1D 08 78 */	stb r0, 0x878(r29)
/* 80A98900  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80A98904  D0 1D 0D EC */	stfs f0, 0xdec(r29)
/* 80A98908  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80A9890C  D0 1D 0D F0 */	stfs f0, 0xdf0(r29)
/* 80A98910  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 80A98914  D0 1D 0D F8 */	stfs f0, 0xdf8(r29)
/* 80A98918  38 7D 08 A0 */	addi r3, r29, 0x8a0
/* 80A9891C  C0 3D 0D F0 */	lfs f1, 0xdf0(r29)
/* 80A98920  4B 5D D6 20 */	b SetWallR__12dBgS_AcchCirFf
/* 80A98924  3C 60 80 AA */	lis r3, m__24daNpc_Pachi_Maro_Param_c@ha
/* 80A98928  38 63 B8 8C */	addi r3, r3, m__24daNpc_Pachi_Maro_Param_c@l
/* 80A9892C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A98930  D0 1D 08 D0 */	stfs f0, 0x8d0(r29)
/* 80A98934  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80A98938  D0 1D 0D E8 */	stfs f0, 0xde8(r29)
/* 80A9893C  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80A98940  D0 1D 0A 80 */	stfs f0, 0xa80(r29)
/* 80A98944  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80A98948  D0 1D 0A 84 */	stfs f0, 0xa84(r29)
/* 80A9894C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A98950  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80A98954  39 61 00 20 */	addi r11, r1, 0x20
/* 80A98958  4B 8C 98 D0 */	b _restgpr_29
/* 80A9895C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A98960  7C 08 03 A6 */	mtlr r0
/* 80A98964  38 21 00 20 */	addi r1, r1, 0x20
/* 80A98968  4E 80 00 20 */	blr 
