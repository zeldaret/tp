lbl_80A7199C:
/* 80A7199C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A719A0  7C 08 02 A6 */	mflr r0
/* 80A719A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A719A8  39 61 00 20 */	addi r11, r1, 0x20
/* 80A719AC  4B 8F 08 30 */	b _savegpr_29
/* 80A719B0  7C 7D 1B 78 */	mr r29, r3
/* 80A719B4  48 00 08 2D */	bl selectAction__12daNpc_midP_cFv
/* 80A719B8  7F A3 EB 78 */	mr r3, r29
/* 80A719BC  48 00 01 3D */	bl srchActors__12daNpc_midP_cFv
/* 80A719C0  3C 60 80 A7 */	lis r3, m__18daNpc_midP_Param_c@ha
/* 80A719C4  38 83 39 C0 */	addi r4, r3, m__18daNpc_midP_Param_c@l
/* 80A719C8  AB C4 00 48 */	lha r30, 0x48(r4)
/* 80A719CC  AB E4 00 4A */	lha r31, 0x4a(r4)
/* 80A719D0  A8 64 00 4C */	lha r3, 0x4c(r4)
/* 80A719D4  A8 84 00 4E */	lha r4, 0x4e(r4)
/* 80A719D8  4B 6D B0 40 */	b daNpcT_getDistTableIdx__Fii
/* 80A719DC  98 7D 05 44 */	stb r3, 0x544(r29)
/* 80A719E0  88 1D 05 44 */	lbz r0, 0x544(r29)
/* 80A719E4  98 1D 05 45 */	stb r0, 0x545(r29)
/* 80A719E8  7F C3 07 34 */	extsh r3, r30
/* 80A719EC  7F E4 07 34 */	extsh r4, r31
/* 80A719F0  4B 6D B0 28 */	b daNpcT_getDistTableIdx__Fii
/* 80A719F4  98 7D 05 47 */	stb r3, 0x547(r29)
/* 80A719F8  38 00 00 0A */	li r0, 0xa
/* 80A719FC  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80A71A00  3C 60 80 A7 */	lis r3, m__18daNpc_midP_Param_c@ha
/* 80A71A04  38 63 39 C0 */	addi r3, r3, m__18daNpc_midP_Param_c@l
/* 80A71A08  C0 03 00 08 */	lfs f0, 8(r3)
/* 80A71A0C  D0 1D 04 EC */	stfs f0, 0x4ec(r29)
/* 80A71A10  D0 1D 04 F0 */	stfs f0, 0x4f0(r29)
/* 80A71A14  D0 1D 04 F4 */	stfs f0, 0x4f4(r29)
/* 80A71A18  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80A71A1C  FC 00 00 1E */	fctiwz f0, f0
/* 80A71A20  D8 01 00 08 */	stfd f0, 8(r1)
/* 80A71A24  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80A71A28  98 1D 08 78 */	stb r0, 0x878(r29)
/* 80A71A2C  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80A71A30  D0 1D 0D EC */	stfs f0, 0xdec(r29)
/* 80A71A34  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80A71A38  D0 1D 0D F0 */	stfs f0, 0xdf0(r29)
/* 80A71A3C  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 80A71A40  D0 1D 0D F8 */	stfs f0, 0xdf8(r29)
/* 80A71A44  38 7D 08 A0 */	addi r3, r29, 0x8a0
/* 80A71A48  C0 3D 0D F0 */	lfs f1, 0xdf0(r29)
/* 80A71A4C  4B 60 44 F4 */	b SetWallR__12dBgS_AcchCirFf
/* 80A71A50  3C 60 80 A7 */	lis r3, m__18daNpc_midP_Param_c@ha
/* 80A71A54  38 63 39 C0 */	addi r3, r3, m__18daNpc_midP_Param_c@l
/* 80A71A58  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A71A5C  D0 1D 08 D0 */	stfs f0, 0x8d0(r29)
/* 80A71A60  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80A71A64  D0 1D 0D E8 */	stfs f0, 0xde8(r29)
/* 80A71A68  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80A71A6C  D0 1D 0A 80 */	stfs f0, 0xa80(r29)
/* 80A71A70  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80A71A74  D0 1D 0A 84 */	stfs f0, 0xa84(r29)
/* 80A71A78  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A71A7C  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80A71A80  39 61 00 20 */	addi r11, r1, 0x20
/* 80A71A84  4B 8F 07 A4 */	b _restgpr_29
/* 80A71A88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A71A8C  7C 08 03 A6 */	mtlr r0
/* 80A71A90  38 21 00 20 */	addi r1, r1, 0x20
/* 80A71A94  4E 80 00 20 */	blr 
