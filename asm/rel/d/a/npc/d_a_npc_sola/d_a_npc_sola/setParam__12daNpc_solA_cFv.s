lbl_80AED3B8:
/* 80AED3B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AED3BC  7C 08 02 A6 */	mflr r0
/* 80AED3C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AED3C4  39 61 00 20 */	addi r11, r1, 0x20
/* 80AED3C8  4B 87 4E 14 */	b _savegpr_29
/* 80AED3CC  7C 7D 1B 78 */	mr r29, r3
/* 80AED3D0  48 00 06 F9 */	bl selectAction__12daNpc_solA_cFv
/* 80AED3D4  7F A3 EB 78 */	mr r3, r29
/* 80AED3D8  48 00 01 2D */	bl srchActors__12daNpc_solA_cFv
/* 80AED3DC  3C 60 80 AF */	lis r3, m__18daNpc_solA_Param_c@ha
/* 80AED3E0  38 83 F1 00 */	addi r4, r3, m__18daNpc_solA_Param_c@l
/* 80AED3E4  AB C4 00 48 */	lha r30, 0x48(r4)
/* 80AED3E8  AB E4 00 4A */	lha r31, 0x4a(r4)
/* 80AED3EC  A8 64 00 4C */	lha r3, 0x4c(r4)
/* 80AED3F0  A8 84 00 4E */	lha r4, 0x4e(r4)
/* 80AED3F4  4B 65 F6 24 */	b daNpcT_getDistTableIdx__Fii
/* 80AED3F8  98 7D 05 44 */	stb r3, 0x544(r29)
/* 80AED3FC  88 1D 05 44 */	lbz r0, 0x544(r29)
/* 80AED400  98 1D 05 45 */	stb r0, 0x545(r29)
/* 80AED404  7F C3 07 34 */	extsh r3, r30
/* 80AED408  7F E4 07 34 */	extsh r4, r31
/* 80AED40C  4B 65 F6 0C */	b daNpcT_getDistTableIdx__Fii
/* 80AED410  98 7D 05 47 */	stb r3, 0x547(r29)
/* 80AED414  38 00 00 0A */	li r0, 0xa
/* 80AED418  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80AED41C  3C 60 80 AF */	lis r3, m__18daNpc_solA_Param_c@ha
/* 80AED420  3B E3 F1 00 */	addi r31, r3, m__18daNpc_solA_Param_c@l
/* 80AED424  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80AED428  D0 1D 04 EC */	stfs f0, 0x4ec(r29)
/* 80AED42C  D0 1D 04 F0 */	stfs f0, 0x4f0(r29)
/* 80AED430  D0 1D 04 F4 */	stfs f0, 0x4f4(r29)
/* 80AED434  38 7D 08 A0 */	addi r3, r29, 0x8a0
/* 80AED438  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80AED43C  4B 58 8B 04 */	b SetWallR__12dBgS_AcchCirFf
/* 80AED440  3C 60 80 AF */	lis r3, m__18daNpc_solA_Param_c@ha
/* 80AED444  38 63 F1 00 */	addi r3, r3, m__18daNpc_solA_Param_c@l
/* 80AED448  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80AED44C  D0 1D 08 D0 */	stfs f0, 0x8d0(r29)
/* 80AED450  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80AED454  FC 00 00 1E */	fctiwz f0, f0
/* 80AED458  D8 01 00 08 */	stfd f0, 8(r1)
/* 80AED45C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80AED460  98 1D 08 78 */	stb r0, 0x878(r29)
/* 80AED464  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80AED468  D0 1D 0D EC */	stfs f0, 0xdec(r29)
/* 80AED46C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80AED470  D0 1D 0D F0 */	stfs f0, 0xdf0(r29)
/* 80AED474  C0 03 00 04 */	lfs f0, 4(r3)
/* 80AED478  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80AED47C  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80AED480  D0 1D 0A 80 */	stfs f0, 0xa80(r29)
/* 80AED484  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80AED488  D0 1D 0A 84 */	stfs f0, 0xa84(r29)
/* 80AED48C  39 61 00 20 */	addi r11, r1, 0x20
/* 80AED490  4B 87 4D 98 */	b _restgpr_29
/* 80AED494  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AED498  7C 08 03 A6 */	mtlr r0
/* 80AED49C  38 21 00 20 */	addi r1, r1, 0x20
/* 80AED4A0  4E 80 00 20 */	blr 
