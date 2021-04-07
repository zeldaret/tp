lbl_80A9398C:
/* 80A9398C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A93990  7C 08 02 A6 */	mflr r0
/* 80A93994  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A93998  39 61 00 20 */	addi r11, r1, 0x20
/* 80A9399C  4B 8C E8 41 */	bl _savegpr_29
/* 80A939A0  7C 7D 1B 78 */	mr r29, r3
/* 80A939A4  48 00 0C 85 */	bl selectAction__18daNpc_Pachi_Besu_cFv
/* 80A939A8  7F A3 EB 78 */	mr r3, r29
/* 80A939AC  48 00 04 79 */	bl srchActors__18daNpc_Pachi_Besu_cFv
/* 80A939B0  3C 60 80 A9 */	lis r3, m__24daNpc_Pachi_Besu_Param_c@ha /* 0x80A96A6C@ha */
/* 80A939B4  38 83 6A 6C */	addi r4, r3, m__24daNpc_Pachi_Besu_Param_c@l /* 0x80A96A6C@l */
/* 80A939B8  AB C4 00 48 */	lha r30, 0x48(r4)
/* 80A939BC  AB E4 00 4A */	lha r31, 0x4a(r4)
/* 80A939C0  A8 64 00 4C */	lha r3, 0x4c(r4)
/* 80A939C4  A8 84 00 4E */	lha r4, 0x4e(r4)
/* 80A939C8  4B 6B 90 51 */	bl daNpcT_getDistTableIdx__Fii
/* 80A939CC  98 7D 05 44 */	stb r3, 0x544(r29)
/* 80A939D0  88 1D 05 44 */	lbz r0, 0x544(r29)
/* 80A939D4  98 1D 05 45 */	stb r0, 0x545(r29)
/* 80A939D8  7F C3 07 34 */	extsh r3, r30
/* 80A939DC  7F E4 07 34 */	extsh r4, r31
/* 80A939E0  4B 6B 90 39 */	bl daNpcT_getDistTableIdx__Fii
/* 80A939E4  98 7D 05 47 */	stb r3, 0x547(r29)
/* 80A939E8  38 00 00 0A */	li r0, 0xa
/* 80A939EC  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80A939F0  3C 60 80 A9 */	lis r3, m__24daNpc_Pachi_Besu_Param_c@ha /* 0x80A96A6C@ha */
/* 80A939F4  38 63 6A 6C */	addi r3, r3, m__24daNpc_Pachi_Besu_Param_c@l /* 0x80A96A6C@l */
/* 80A939F8  C0 03 00 08 */	lfs f0, 8(r3)
/* 80A939FC  D0 1D 04 EC */	stfs f0, 0x4ec(r29)
/* 80A93A00  D0 1D 04 F0 */	stfs f0, 0x4f0(r29)
/* 80A93A04  D0 1D 04 F4 */	stfs f0, 0x4f4(r29)
/* 80A93A08  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80A93A0C  FC 00 00 1E */	fctiwz f0, f0
/* 80A93A10  D8 01 00 08 */	stfd f0, 8(r1)
/* 80A93A14  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80A93A18  98 1D 08 78 */	stb r0, 0x878(r29)
/* 80A93A1C  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80A93A20  D0 1D 0D EC */	stfs f0, 0xdec(r29)
/* 80A93A24  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80A93A28  D0 1D 0D F0 */	stfs f0, 0xdf0(r29)
/* 80A93A2C  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 80A93A30  D0 1D 0D F8 */	stfs f0, 0xdf8(r29)
/* 80A93A34  38 7D 08 A0 */	addi r3, r29, 0x8a0
/* 80A93A38  C0 3D 0D F0 */	lfs f1, 0xdf0(r29)
/* 80A93A3C  4B 5E 25 05 */	bl SetWallR__12dBgS_AcchCirFf
/* 80A93A40  3C 60 80 A9 */	lis r3, m__24daNpc_Pachi_Besu_Param_c@ha /* 0x80A96A6C@ha */
/* 80A93A44  38 63 6A 6C */	addi r3, r3, m__24daNpc_Pachi_Besu_Param_c@l /* 0x80A96A6C@l */
/* 80A93A48  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A93A4C  D0 1D 08 D0 */	stfs f0, 0x8d0(r29)
/* 80A93A50  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80A93A54  D0 1D 0D E8 */	stfs f0, 0xde8(r29)
/* 80A93A58  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80A93A5C  D0 1D 0A 80 */	stfs f0, 0xa80(r29)
/* 80A93A60  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80A93A64  D0 1D 0A 84 */	stfs f0, 0xa84(r29)
/* 80A93A68  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A93A6C  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80A93A70  39 61 00 20 */	addi r11, r1, 0x20
/* 80A93A74  4B 8C E7 B5 */	bl _restgpr_29
/* 80A93A78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A93A7C  7C 08 03 A6 */	mtlr r0
/* 80A93A80  38 21 00 20 */	addi r1, r1, 0x20
/* 80A93A84  4E 80 00 20 */	blr 
