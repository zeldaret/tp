lbl_80A60D84:
/* 80A60D84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A60D88  7C 08 02 A6 */	mflr r0
/* 80A60D8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A60D90  39 61 00 20 */	addi r11, r1, 0x20
/* 80A60D94  4B 90 14 48 */	b _savegpr_29
/* 80A60D98  7C 7F 1B 78 */	mr r31, r3
/* 80A60D9C  48 00 0C 1D */	bl selectAction__13daNpc_Kyury_cFv
/* 80A60DA0  7F E3 FB 78 */	mr r3, r31
/* 80A60DA4  48 00 02 BD */	bl srchActors__13daNpc_Kyury_cFv
/* 80A60DA8  3C 60 80 A6 */	lis r3, m__19daNpc_Kyury_Param_c@ha
/* 80A60DAC  38 83 38 AC */	addi r4, r3, m__19daNpc_Kyury_Param_c@l
/* 80A60DB0  AB A4 00 48 */	lha r29, 0x48(r4)
/* 80A60DB4  AB C4 00 4A */	lha r30, 0x4a(r4)
/* 80A60DB8  A8 64 00 4C */	lha r3, 0x4c(r4)
/* 80A60DBC  A8 84 00 4E */	lha r4, 0x4e(r4)
/* 80A60DC0  4B 6E BC 58 */	b daNpcT_getDistTableIdx__Fii
/* 80A60DC4  98 7F 05 44 */	stb r3, 0x544(r31)
/* 80A60DC8  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 80A60DCC  98 1F 05 45 */	stb r0, 0x545(r31)
/* 80A60DD0  7F A3 07 34 */	extsh r3, r29
/* 80A60DD4  7F C4 07 34 */	extsh r4, r30
/* 80A60DD8  4B 6E BC 40 */	b daNpcT_getDistTableIdx__Fii
/* 80A60DDC  98 7F 05 47 */	stb r3, 0x547(r31)
/* 80A60DE0  38 00 00 0A */	li r0, 0xa
/* 80A60DE4  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80A60DE8  3C 60 80 A6 */	lis r3, m__19daNpc_Kyury_Param_c@ha
/* 80A60DEC  38 63 38 AC */	addi r3, r3, m__19daNpc_Kyury_Param_c@l
/* 80A60DF0  C0 03 00 08 */	lfs f0, 8(r3)
/* 80A60DF4  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 80A60DF8  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 80A60DFC  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 80A60E00  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80A60E04  FC 00 00 1E */	fctiwz f0, f0
/* 80A60E08  D8 01 00 08 */	stfd f0, 8(r1)
/* 80A60E0C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80A60E10  98 1F 08 78 */	stb r0, 0x878(r31)
/* 80A60E14  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80A60E18  D0 1F 0D EC */	stfs f0, 0xdec(r31)
/* 80A60E1C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80A60E20  D0 1F 0D F0 */	stfs f0, 0xdf0(r31)
/* 80A60E24  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 80A60E28  D0 1F 0D F8 */	stfs f0, 0xdf8(r31)
/* 80A60E2C  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80A60E30  C0 3F 0D F0 */	lfs f1, 0xdf0(r31)
/* 80A60E34  4B 61 51 0C */	b SetWallR__12dBgS_AcchCirFf
/* 80A60E38  3C 60 80 A6 */	lis r3, m__19daNpc_Kyury_Param_c@ha
/* 80A60E3C  38 63 38 AC */	addi r3, r3, m__19daNpc_Kyury_Param_c@l
/* 80A60E40  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A60E44  D0 1F 08 D0 */	stfs f0, 0x8d0(r31)
/* 80A60E48  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80A60E4C  D0 1F 0D E8 */	stfs f0, 0xde8(r31)
/* 80A60E50  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80A60E54  D0 1F 0A 80 */	stfs f0, 0xa80(r31)
/* 80A60E58  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80A60E5C  D0 1F 0A 84 */	stfs f0, 0xa84(r31)
/* 80A60E60  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A60E64  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80A60E68  88 1F 0F 88 */	lbz r0, 0xf88(r31)
/* 80A60E6C  28 00 00 01 */	cmplwi r0, 1
/* 80A60E70  40 82 00 28 */	bne lbl_80A60E98
/* 80A60E74  80 1F 06 B8 */	lwz r0, 0x6b8(r31)
/* 80A60E78  60 00 00 02 */	ori r0, r0, 2
/* 80A60E7C  90 1F 06 B8 */	stw r0, 0x6b8(r31)
/* 80A60E80  80 1F 06 B8 */	lwz r0, 0x6b8(r31)
/* 80A60E84  60 00 00 04 */	ori r0, r0, 4
/* 80A60E88  90 1F 06 B8 */	stw r0, 0x6b8(r31)
/* 80A60E8C  3C 60 80 A6 */	lis r3, lit_4205@ha
/* 80A60E90  C0 03 39 4C */	lfs f0, lit_4205@l(r3)
/* 80A60E94  D0 1F 05 30 */	stfs f0, 0x530(r31)
lbl_80A60E98:
/* 80A60E98  39 61 00 20 */	addi r11, r1, 0x20
/* 80A60E9C  4B 90 13 8C */	b _restgpr_29
/* 80A60EA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A60EA4  7C 08 03 A6 */	mtlr r0
/* 80A60EA8  38 21 00 20 */	addi r1, r1, 0x20
/* 80A60EAC  4E 80 00 20 */	blr 
