lbl_809BC328:
/* 809BC328  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809BC32C  7C 08 02 A6 */	mflr r0
/* 809BC330  90 01 00 24 */	stw r0, 0x24(r1)
/* 809BC334  39 61 00 20 */	addi r11, r1, 0x20
/* 809BC338  4B 9A 5E A5 */	bl _savegpr_29
/* 809BC33C  7C 7F 1B 78 */	mr r31, r3
/* 809BC340  48 00 09 A9 */	bl selectAction__11daNpc_Gnd_cFv
/* 809BC344  7F E3 FB 78 */	mr r3, r31
/* 809BC348  48 00 01 61 */	bl srchActors__11daNpc_Gnd_cFv
/* 809BC34C  3C 60 80 9C */	lis r3, m__17daNpc_Gnd_Param_c@ha /* 0x809BE4A0@ha */
/* 809BC350  38 83 E4 A0 */	addi r4, r3, m__17daNpc_Gnd_Param_c@l /* 0x809BE4A0@l */
/* 809BC354  AB A4 00 48 */	lha r29, 0x48(r4)
/* 809BC358  AB C4 00 4A */	lha r30, 0x4a(r4)
/* 809BC35C  A8 64 00 4C */	lha r3, 0x4c(r4)
/* 809BC360  A8 84 00 4E */	lha r4, 0x4e(r4)
/* 809BC364  4B 79 06 B5 */	bl daNpcT_getDistTableIdx__Fii
/* 809BC368  98 7F 05 44 */	stb r3, 0x544(r31)
/* 809BC36C  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 809BC370  98 1F 05 45 */	stb r0, 0x545(r31)
/* 809BC374  7F A3 07 34 */	extsh r3, r29
/* 809BC378  7F C4 07 34 */	extsh r4, r30
/* 809BC37C  4B 79 06 9D */	bl daNpcT_getDistTableIdx__Fii
/* 809BC380  98 7F 05 47 */	stb r3, 0x547(r31)
/* 809BC384  38 00 00 0A */	li r0, 0xa
/* 809BC388  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 809BC38C  3C 60 80 9C */	lis r3, m__17daNpc_Gnd_Param_c@ha /* 0x809BE4A0@ha */
/* 809BC390  38 63 E4 A0 */	addi r3, r3, m__17daNpc_Gnd_Param_c@l /* 0x809BE4A0@l */
/* 809BC394  C0 03 00 08 */	lfs f0, 8(r3)
/* 809BC398  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 809BC39C  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 809BC3A0  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 809BC3A4  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 809BC3A8  FC 00 00 1E */	fctiwz f0, f0
/* 809BC3AC  D8 01 00 08 */	stfd f0, 8(r1)
/* 809BC3B0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 809BC3B4  98 1F 08 78 */	stb r0, 0x878(r31)
/* 809BC3B8  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 809BC3BC  D0 1F 0D EC */	stfs f0, 0xdec(r31)
/* 809BC3C0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 809BC3C4  D0 1F 0D F0 */	stfs f0, 0xdf0(r31)
/* 809BC3C8  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 809BC3CC  D0 1F 0D F8 */	stfs f0, 0xdf8(r31)
/* 809BC3D0  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 809BC3D4  C0 3F 0D F0 */	lfs f1, 0xdf0(r31)
/* 809BC3D8  4B 6B 9B 69 */	bl SetWallR__12dBgS_AcchCirFf
/* 809BC3DC  3C 60 80 9C */	lis r3, m__17daNpc_Gnd_Param_c@ha /* 0x809BE4A0@ha */
/* 809BC3E0  38 63 E4 A0 */	addi r3, r3, m__17daNpc_Gnd_Param_c@l /* 0x809BE4A0@l */
/* 809BC3E4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 809BC3E8  D0 1F 08 D0 */	stfs f0, 0x8d0(r31)
/* 809BC3EC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 809BC3F0  D0 1F 0D E8 */	stfs f0, 0xde8(r31)
/* 809BC3F4  C0 03 00 04 */	lfs f0, 4(r3)
/* 809BC3F8  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 809BC3FC  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 809BC400  D0 1F 0A 80 */	stfs f0, 0xa80(r31)
/* 809BC404  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 809BC408  D0 1F 0A 84 */	stfs f0, 0xa84(r31)
/* 809BC40C  80 1F 06 B8 */	lwz r0, 0x6b8(r31)
/* 809BC410  60 00 00 02 */	ori r0, r0, 2
/* 809BC414  90 1F 06 B8 */	stw r0, 0x6b8(r31)
/* 809BC418  80 1F 06 B8 */	lwz r0, 0x6b8(r31)
/* 809BC41C  60 00 00 04 */	ori r0, r0, 4
/* 809BC420  90 1F 06 B8 */	stw r0, 0x6b8(r31)
/* 809BC424  3C 60 80 9C */	lis r3, lit_4178@ha /* 0x809BE540@ha */
/* 809BC428  C0 03 E5 40 */	lfs f0, lit_4178@l(r3)  /* 0x809BE540@l */
/* 809BC42C  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 809BC430  39 61 00 20 */	addi r11, r1, 0x20
/* 809BC434  4B 9A 5D F5 */	bl _restgpr_29
/* 809BC438  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809BC43C  7C 08 03 A6 */	mtlr r0
/* 809BC440  38 21 00 20 */	addi r1, r1, 0x20
/* 809BC444  4E 80 00 20 */	blr 
