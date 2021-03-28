lbl_80B43CC0:
/* 80B43CC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B43CC4  7C 08 02 A6 */	mflr r0
/* 80B43CC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B43CCC  39 61 00 20 */	addi r11, r1, 0x20
/* 80B43CD0  4B 81 E5 0C */	b _savegpr_29
/* 80B43CD4  7C 7D 1B 78 */	mr r29, r3
/* 80B43CD8  48 00 08 35 */	bl selectAction__13daNpc_yamiD_cFv
/* 80B43CDC  7F A3 EB 78 */	mr r3, r29
/* 80B43CE0  48 00 01 3D */	bl srchActors__13daNpc_yamiD_cFv
/* 80B43CE4  3C 60 80 B4 */	lis r3, m__19daNpc_yamiD_Param_c@ha
/* 80B43CE8  38 83 60 4C */	addi r4, r3, m__19daNpc_yamiD_Param_c@l
/* 80B43CEC  AB C4 00 48 */	lha r30, 0x48(r4)
/* 80B43CF0  AB E4 00 4A */	lha r31, 0x4a(r4)
/* 80B43CF4  A8 64 00 4C */	lha r3, 0x4c(r4)
/* 80B43CF8  A8 84 00 4E */	lha r4, 0x4e(r4)
/* 80B43CFC  4B 60 8D 1C */	b daNpcT_getDistTableIdx__Fii
/* 80B43D00  98 7D 05 44 */	stb r3, 0x544(r29)
/* 80B43D04  88 1D 05 44 */	lbz r0, 0x544(r29)
/* 80B43D08  98 1D 05 45 */	stb r0, 0x545(r29)
/* 80B43D0C  7F C3 07 34 */	extsh r3, r30
/* 80B43D10  7F E4 07 34 */	extsh r4, r31
/* 80B43D14  4B 60 8D 04 */	b daNpcT_getDistTableIdx__Fii
/* 80B43D18  98 7D 05 47 */	stb r3, 0x547(r29)
/* 80B43D1C  38 00 00 00 */	li r0, 0
/* 80B43D20  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80B43D24  3C 60 80 B4 */	lis r3, m__19daNpc_yamiD_Param_c@ha
/* 80B43D28  38 63 60 4C */	addi r3, r3, m__19daNpc_yamiD_Param_c@l
/* 80B43D2C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80B43D30  D0 1D 04 EC */	stfs f0, 0x4ec(r29)
/* 80B43D34  D0 1D 04 F0 */	stfs f0, 0x4f0(r29)
/* 80B43D38  D0 1D 04 F4 */	stfs f0, 0x4f4(r29)
/* 80B43D3C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80B43D40  FC 00 00 1E */	fctiwz f0, f0
/* 80B43D44  D8 01 00 08 */	stfd f0, 8(r1)
/* 80B43D48  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B43D4C  98 1D 08 78 */	stb r0, 0x878(r29)
/* 80B43D50  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80B43D54  D0 1D 0D EC */	stfs f0, 0xdec(r29)
/* 80B43D58  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B43D5C  D0 1D 0D F0 */	stfs f0, 0xdf0(r29)
/* 80B43D60  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 80B43D64  D0 1D 0D F8 */	stfs f0, 0xdf8(r29)
/* 80B43D68  38 7D 08 A0 */	addi r3, r29, 0x8a0
/* 80B43D6C  C0 3D 0D F0 */	lfs f1, 0xdf0(r29)
/* 80B43D70  4B 53 21 D0 */	b SetWallR__12dBgS_AcchCirFf
/* 80B43D74  3C 60 80 B4 */	lis r3, m__19daNpc_yamiD_Param_c@ha
/* 80B43D78  38 63 60 4C */	addi r3, r3, m__19daNpc_yamiD_Param_c@l
/* 80B43D7C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B43D80  D0 1D 08 D0 */	stfs f0, 0x8d0(r29)
/* 80B43D84  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B43D88  D0 1D 0D E8 */	stfs f0, 0xde8(r29)
/* 80B43D8C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B43D90  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80B43D94  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80B43D98  D0 1D 0A 80 */	stfs f0, 0xa80(r29)
/* 80B43D9C  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80B43DA0  D0 1D 0A 84 */	stfs f0, 0xa84(r29)
/* 80B43DA4  39 61 00 20 */	addi r11, r1, 0x20
/* 80B43DA8  4B 81 E4 80 */	b _restgpr_29
/* 80B43DAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B43DB0  7C 08 03 A6 */	mtlr r0
/* 80B43DB4  38 21 00 20 */	addi r1, r1, 0x20
/* 80B43DB8  4E 80 00 20 */	blr 
