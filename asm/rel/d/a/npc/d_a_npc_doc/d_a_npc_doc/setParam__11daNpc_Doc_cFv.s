lbl_809A79A4:
/* 809A79A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809A79A8  7C 08 02 A6 */	mflr r0
/* 809A79AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 809A79B0  39 61 00 20 */	addi r11, r1, 0x20
/* 809A79B4  4B 9B A8 25 */	bl _savegpr_28
/* 809A79B8  7C 7F 1B 78 */	mr r31, r3
/* 809A79BC  48 00 0B 7D */	bl selectAction__11daNpc_Doc_cFv
/* 809A79C0  7F E3 FB 78 */	mr r3, r31
/* 809A79C4  48 00 02 79 */	bl srchActors__11daNpc_Doc_cFv
/* 809A79C8  3B 80 00 0A */	li r28, 0xa
/* 809A79CC  3C 60 80 9B */	lis r3, m__17daNpc_Doc_Param_c@ha /* 0x809AA31C@ha */
/* 809A79D0  38 83 A3 1C */	addi r4, r3, m__17daNpc_Doc_Param_c@l /* 0x809AA31C@l */
/* 809A79D4  AB A4 00 48 */	lha r29, 0x48(r4)
/* 809A79D8  AB C4 00 4A */	lha r30, 0x4a(r4)
/* 809A79DC  A8 64 00 4C */	lha r3, 0x4c(r4)
/* 809A79E0  A8 84 00 4E */	lha r4, 0x4e(r4)
/* 809A79E4  4B 7A 50 35 */	bl daNpcT_getDistTableIdx__Fii
/* 809A79E8  98 7F 05 44 */	stb r3, 0x544(r31)
/* 809A79EC  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 809A79F0  98 1F 05 45 */	stb r0, 0x545(r31)
/* 809A79F4  7F A3 07 34 */	extsh r3, r29
/* 809A79F8  7F C4 07 34 */	extsh r4, r30
/* 809A79FC  4B 7A 50 1D */	bl daNpcT_getDistTableIdx__Fii
/* 809A7A00  98 7F 05 47 */	stb r3, 0x547(r31)
/* 809A7A04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809A7A08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809A7A0C  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 809A7A10  80 03 05 74 */	lwz r0, 0x574(r3)
/* 809A7A14  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 809A7A18  41 82 00 08 */	beq lbl_809A7A20
/* 809A7A1C  67 9C 00 80 */	oris r28, r28, 0x80
lbl_809A7A20:
/* 809A7A20  93 9F 05 5C */	stw r28, 0x55c(r31)
/* 809A7A24  3C 60 80 9B */	lis r3, m__17daNpc_Doc_Param_c@ha /* 0x809AA31C@ha */
/* 809A7A28  38 63 A3 1C */	addi r3, r3, m__17daNpc_Doc_Param_c@l /* 0x809AA31C@l */
/* 809A7A2C  C0 03 00 08 */	lfs f0, 8(r3)
/* 809A7A30  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 809A7A34  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 809A7A38  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 809A7A3C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 809A7A40  FC 00 00 1E */	fctiwz f0, f0
/* 809A7A44  D8 01 00 08 */	stfd f0, 8(r1)
/* 809A7A48  80 01 00 0C */	lwz r0, 0xc(r1)
/* 809A7A4C  98 1F 08 78 */	stb r0, 0x878(r31)
/* 809A7A50  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 809A7A54  D0 1F 0D EC */	stfs f0, 0xdec(r31)
/* 809A7A58  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 809A7A5C  D0 1F 0D F0 */	stfs f0, 0xdf0(r31)
/* 809A7A60  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 809A7A64  D0 1F 0D F8 */	stfs f0, 0xdf8(r31)
/* 809A7A68  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 809A7A6C  C0 3F 0D F0 */	lfs f1, 0xdf0(r31)
/* 809A7A70  4B 6C E4 D1 */	bl SetWallR__12dBgS_AcchCirFf
/* 809A7A74  3C 60 80 9B */	lis r3, m__17daNpc_Doc_Param_c@ha /* 0x809AA31C@ha */
/* 809A7A78  38 63 A3 1C */	addi r3, r3, m__17daNpc_Doc_Param_c@l /* 0x809AA31C@l */
/* 809A7A7C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 809A7A80  D0 1F 08 D0 */	stfs f0, 0x8d0(r31)
/* 809A7A84  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 809A7A88  D0 1F 0D E8 */	stfs f0, 0xde8(r31)
/* 809A7A8C  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 809A7A90  D0 1F 0A 80 */	stfs f0, 0xa80(r31)
/* 809A7A94  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 809A7A98  D0 1F 0A 84 */	stfs f0, 0xa84(r31)
/* 809A7A9C  C0 03 00 04 */	lfs f0, 4(r3)
/* 809A7AA0  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 809A7AA4  39 61 00 20 */	addi r11, r1, 0x20
/* 809A7AA8  4B 9B A7 7D */	bl _restgpr_28
/* 809A7AAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809A7AB0  7C 08 03 A6 */	mtlr r0
/* 809A7AB4  38 21 00 20 */	addi r1, r1, 0x20
/* 809A7AB8  4E 80 00 20 */	blr 
