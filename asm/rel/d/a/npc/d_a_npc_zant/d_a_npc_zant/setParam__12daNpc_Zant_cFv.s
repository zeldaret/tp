lbl_80B6C9F4:
/* 80B6C9F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B6C9F8  7C 08 02 A6 */	mflr r0
/* 80B6C9FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B6CA00  39 61 00 20 */	addi r11, r1, 0x20
/* 80B6CA04  4B 7F 57 D8 */	b _savegpr_29
/* 80B6CA08  7C 7D 1B 78 */	mr r29, r3
/* 80B6CA0C  48 00 08 11 */	bl selectAction__12daNpc_Zant_cFv
/* 80B6CA10  7F A3 EB 78 */	mr r3, r29
/* 80B6CA14  48 00 01 3D */	bl srchActors__12daNpc_Zant_cFv
/* 80B6CA18  3C 60 80 B7 */	lis r3, m__18daNpc_Zant_Param_c@ha
/* 80B6CA1C  38 83 E9 A8 */	addi r4, r3, m__18daNpc_Zant_Param_c@l
/* 80B6CA20  AB C4 00 48 */	lha r30, 0x48(r4)
/* 80B6CA24  AB E4 00 4A */	lha r31, 0x4a(r4)
/* 80B6CA28  A8 64 00 4C */	lha r3, 0x4c(r4)
/* 80B6CA2C  A8 84 00 4E */	lha r4, 0x4e(r4)
/* 80B6CA30  4B 5D FF E8 */	b daNpcT_getDistTableIdx__Fii
/* 80B6CA34  98 7D 05 44 */	stb r3, 0x544(r29)
/* 80B6CA38  88 1D 05 44 */	lbz r0, 0x544(r29)
/* 80B6CA3C  98 1D 05 45 */	stb r0, 0x545(r29)
/* 80B6CA40  7F C3 07 34 */	extsh r3, r30
/* 80B6CA44  7F E4 07 34 */	extsh r4, r31
/* 80B6CA48  4B 5D FF D0 */	b daNpcT_getDistTableIdx__Fii
/* 80B6CA4C  98 7D 05 47 */	stb r3, 0x547(r29)
/* 80B6CA50  38 00 00 0A */	li r0, 0xa
/* 80B6CA54  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80B6CA58  3C 60 80 B7 */	lis r3, m__18daNpc_Zant_Param_c@ha
/* 80B6CA5C  38 63 E9 A8 */	addi r3, r3, m__18daNpc_Zant_Param_c@l
/* 80B6CA60  C0 03 00 08 */	lfs f0, 8(r3)
/* 80B6CA64  D0 1D 04 EC */	stfs f0, 0x4ec(r29)
/* 80B6CA68  D0 1D 04 F0 */	stfs f0, 0x4f0(r29)
/* 80B6CA6C  D0 1D 04 F4 */	stfs f0, 0x4f4(r29)
/* 80B6CA70  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80B6CA74  FC 00 00 1E */	fctiwz f0, f0
/* 80B6CA78  D8 01 00 08 */	stfd f0, 8(r1)
/* 80B6CA7C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B6CA80  98 1D 08 78 */	stb r0, 0x878(r29)
/* 80B6CA84  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80B6CA88  D0 1D 0D EC */	stfs f0, 0xdec(r29)
/* 80B6CA8C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B6CA90  D0 1D 0D F0 */	stfs f0, 0xdf0(r29)
/* 80B6CA94  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 80B6CA98  D0 1D 0D F8 */	stfs f0, 0xdf8(r29)
/* 80B6CA9C  38 7D 08 A0 */	addi r3, r29, 0x8a0
/* 80B6CAA0  C0 3D 0D F0 */	lfs f1, 0xdf0(r29)
/* 80B6CAA4  4B 50 94 9C */	b SetWallR__12dBgS_AcchCirFf
/* 80B6CAA8  3C 60 80 B7 */	lis r3, m__18daNpc_Zant_Param_c@ha
/* 80B6CAAC  38 63 E9 A8 */	addi r3, r3, m__18daNpc_Zant_Param_c@l
/* 80B6CAB0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B6CAB4  D0 1D 08 D0 */	stfs f0, 0x8d0(r29)
/* 80B6CAB8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B6CABC  D0 1D 0D E8 */	stfs f0, 0xde8(r29)
/* 80B6CAC0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B6CAC4  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80B6CAC8  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80B6CACC  D0 1D 0A 80 */	stfs f0, 0xa80(r29)
/* 80B6CAD0  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80B6CAD4  D0 1D 0A 84 */	stfs f0, 0xa84(r29)
/* 80B6CAD8  39 61 00 20 */	addi r11, r1, 0x20
/* 80B6CADC  4B 7F 57 4C */	b _restgpr_29
/* 80B6CAE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B6CAE4  7C 08 03 A6 */	mtlr r0
/* 80B6CAE8  38 21 00 20 */	addi r1, r1, 0x20
/* 80B6CAEC  4E 80 00 20 */	blr 
