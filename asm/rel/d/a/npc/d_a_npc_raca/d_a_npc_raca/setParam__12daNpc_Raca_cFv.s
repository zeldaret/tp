lbl_80AB6A10:
/* 80AB6A10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AB6A14  7C 08 02 A6 */	mflr r0
/* 80AB6A18  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AB6A1C  39 61 00 20 */	addi r11, r1, 0x20
/* 80AB6A20  4B 8A B7 BD */	bl _savegpr_29
/* 80AB6A24  7C 7D 1B 78 */	mr r29, r3
/* 80AB6A28  48 00 08 95 */	bl selectAction__12daNpc_Raca_cFv
/* 80AB6A2C  7F A3 EB 78 */	mr r3, r29
/* 80AB6A30  48 00 01 81 */	bl srchActors__12daNpc_Raca_cFv
/* 80AB6A34  3C 60 80 AC */	lis r3, m__18daNpc_Raca_Param_c@ha /* 0x80AB8EC8@ha */
/* 80AB6A38  38 83 8E C8 */	addi r4, r3, m__18daNpc_Raca_Param_c@l /* 0x80AB8EC8@l */
/* 80AB6A3C  AB C4 00 48 */	lha r30, 0x48(r4)
/* 80AB6A40  AB E4 00 4A */	lha r31, 0x4a(r4)
/* 80AB6A44  A8 64 00 4C */	lha r3, 0x4c(r4)
/* 80AB6A48  A8 84 00 4E */	lha r4, 0x4e(r4)
/* 80AB6A4C  4B 69 5F CD */	bl daNpcT_getDistTableIdx__Fii
/* 80AB6A50  98 7D 05 44 */	stb r3, 0x544(r29)
/* 80AB6A54  88 1D 05 44 */	lbz r0, 0x544(r29)
/* 80AB6A58  98 1D 05 45 */	stb r0, 0x545(r29)
/* 80AB6A5C  7F C3 07 34 */	extsh r3, r30
/* 80AB6A60  7F E4 07 34 */	extsh r4, r31
/* 80AB6A64  4B 69 5F B5 */	bl daNpcT_getDistTableIdx__Fii
/* 80AB6A68  98 7D 05 47 */	stb r3, 0x547(r29)
/* 80AB6A6C  38 00 00 0A */	li r0, 0xa
/* 80AB6A70  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80AB6A74  3C 60 80 AC */	lis r3, m__18daNpc_Raca_Param_c@ha /* 0x80AB8EC8@ha */
/* 80AB6A78  38 63 8E C8 */	addi r3, r3, m__18daNpc_Raca_Param_c@l /* 0x80AB8EC8@l */
/* 80AB6A7C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80AB6A80  D0 1D 04 EC */	stfs f0, 0x4ec(r29)
/* 80AB6A84  D0 1D 04 F0 */	stfs f0, 0x4f0(r29)
/* 80AB6A88  D0 1D 04 F4 */	stfs f0, 0x4f4(r29)
/* 80AB6A8C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80AB6A90  FC 00 00 1E */	fctiwz f0, f0
/* 80AB6A94  D8 01 00 08 */	stfd f0, 8(r1)
/* 80AB6A98  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80AB6A9C  98 1D 08 78 */	stb r0, 0x878(r29)
/* 80AB6AA0  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80AB6AA4  D0 1D 0D EC */	stfs f0, 0xdec(r29)
/* 80AB6AA8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80AB6AAC  D0 1D 0D F0 */	stfs f0, 0xdf0(r29)
/* 80AB6AB0  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 80AB6AB4  D0 1D 0D F8 */	stfs f0, 0xdf8(r29)
/* 80AB6AB8  38 7D 08 A0 */	addi r3, r29, 0x8a0
/* 80AB6ABC  C0 3D 0D F0 */	lfs f1, 0xdf0(r29)
/* 80AB6AC0  4B 5B F4 81 */	bl SetWallR__12dBgS_AcchCirFf
/* 80AB6AC4  3C 60 80 AC */	lis r3, m__18daNpc_Raca_Param_c@ha /* 0x80AB8EC8@ha */
/* 80AB6AC8  38 63 8E C8 */	addi r3, r3, m__18daNpc_Raca_Param_c@l /* 0x80AB8EC8@l */
/* 80AB6ACC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80AB6AD0  D0 1D 08 D0 */	stfs f0, 0x8d0(r29)
/* 80AB6AD4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80AB6AD8  D0 1D 0D E8 */	stfs f0, 0xde8(r29)
/* 80AB6ADC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80AB6AE0  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80AB6AE4  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80AB6AE8  D0 1D 0A 80 */	stfs f0, 0xa80(r29)
/* 80AB6AEC  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80AB6AF0  D0 1D 0A 84 */	stfs f0, 0xa84(r29)
/* 80AB6AF4  39 61 00 20 */	addi r11, r1, 0x20
/* 80AB6AF8  4B 8A B7 31 */	bl _restgpr_29
/* 80AB6AFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AB6B00  7C 08 03 A6 */	mtlr r0
/* 80AB6B04  38 21 00 20 */	addi r1, r1, 0x20
/* 80AB6B08  4E 80 00 20 */	blr 
