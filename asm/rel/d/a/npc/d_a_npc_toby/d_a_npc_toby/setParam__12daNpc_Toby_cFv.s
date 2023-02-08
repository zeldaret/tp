lbl_80B1F638:
/* 80B1F638  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B1F63C  7C 08 02 A6 */	mflr r0
/* 80B1F640  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B1F644  39 61 00 20 */	addi r11, r1, 0x20
/* 80B1F648  4B 84 2B 95 */	bl _savegpr_29
/* 80B1F64C  7C 7F 1B 78 */	mr r31, r3
/* 80B1F650  48 00 0F A5 */	bl selectAction__12daNpc_Toby_cFv
/* 80B1F654  7F E3 FB 78 */	mr r3, r31
/* 80B1F658  48 00 03 B1 */	bl srchActors__12daNpc_Toby_cFv
/* 80B1F65C  3C 60 80 B2 */	lis r3, m__18daNpc_Toby_Param_c@ha /* 0x80B249E4@ha */
/* 80B1F660  38 63 49 E4 */	addi r3, r3, m__18daNpc_Toby_Param_c@l /* 0x80B249E4@l */
/* 80B1F664  AB C3 00 48 */	lha r30, 0x48(r3)
/* 80B1F668  AB A3 00 4A */	lha r29, 0x4a(r3)
/* 80B1F66C  A8 83 00 4C */	lha r4, 0x4c(r3)
/* 80B1F670  A8 A3 00 4E */	lha r5, 0x4e(r3)
/* 80B1F674  88 1F 0F 84 */	lbz r0, 0xf84(r31)
/* 80B1F678  28 00 00 00 */	cmplwi r0, 0
/* 80B1F67C  40 82 00 14 */	bne lbl_80B1F690
/* 80B1F680  3B C0 00 02 */	li r30, 2
/* 80B1F684  3B A0 00 03 */	li r29, 3
/* 80B1F688  38 80 00 03 */	li r4, 3
/* 80B1F68C  38 A0 00 03 */	li r5, 3
lbl_80B1F690:
/* 80B1F690  7C 83 07 34 */	extsh r3, r4
/* 80B1F694  7C A4 07 34 */	extsh r4, r5
/* 80B1F698  4B 62 D3 81 */	bl daNpcT_getDistTableIdx__Fii
/* 80B1F69C  98 7F 05 44 */	stb r3, 0x544(r31)
/* 80B1F6A0  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 80B1F6A4  98 1F 05 45 */	stb r0, 0x545(r31)
/* 80B1F6A8  7F C3 07 34 */	extsh r3, r30
/* 80B1F6AC  7F A4 07 34 */	extsh r4, r29
/* 80B1F6B0  4B 62 D3 69 */	bl daNpcT_getDistTableIdx__Fii
/* 80B1F6B4  98 7F 05 47 */	stb r3, 0x547(r31)
/* 80B1F6B8  38 00 00 0A */	li r0, 0xa
/* 80B1F6BC  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80B1F6C0  3C 60 80 B2 */	lis r3, m__18daNpc_Toby_Param_c@ha /* 0x80B249E4@ha */
/* 80B1F6C4  38 63 49 E4 */	addi r3, r3, m__18daNpc_Toby_Param_c@l /* 0x80B249E4@l */
/* 80B1F6C8  C0 03 00 08 */	lfs f0, 8(r3)
/* 80B1F6CC  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 80B1F6D0  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 80B1F6D4  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 80B1F6D8  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80B1F6DC  FC 00 00 1E */	fctiwz f0, f0
/* 80B1F6E0  D8 01 00 08 */	stfd f0, 8(r1)
/* 80B1F6E4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B1F6E8  98 1F 08 78 */	stb r0, 0x878(r31)
/* 80B1F6EC  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80B1F6F0  D0 1F 0D EC */	stfs f0, 0xdec(r31)
/* 80B1F6F4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B1F6F8  D0 1F 0D F0 */	stfs f0, 0xdf0(r31)
/* 80B1F6FC  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 80B1F700  D0 1F 0D F8 */	stfs f0, 0xdf8(r31)
/* 80B1F704  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80B1F708  C0 3F 0D F0 */	lfs f1, 0xdf0(r31)
/* 80B1F70C  4B 55 68 35 */	bl SetWallR__12dBgS_AcchCirFf
/* 80B1F710  3C 60 80 B2 */	lis r3, m__18daNpc_Toby_Param_c@ha /* 0x80B249E4@ha */
/* 80B1F714  38 63 49 E4 */	addi r3, r3, m__18daNpc_Toby_Param_c@l /* 0x80B249E4@l */
/* 80B1F718  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B1F71C  D0 1F 08 D0 */	stfs f0, 0x8d0(r31)
/* 80B1F720  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B1F724  D0 1F 0D E8 */	stfs f0, 0xde8(r31)
/* 80B1F728  3C 60 80 B2 */	lis r3, lit_4706@ha /* 0x80B254EC@ha */
/* 80B1F72C  38 63 54 EC */	addi r3, r3, lit_4706@l /* 0x80B254EC@l */
/* 80B1F730  38 9F 0F A8 */	addi r4, r31, 0xfa8
/* 80B1F734  4B 84 29 15 */	bl __ptmf_cmpr
/* 80B1F738  2C 03 00 00 */	cmpwi r3, 0
/* 80B1F73C  40 82 00 10 */	bne lbl_80B1F74C
/* 80B1F740  3C 60 80 B2 */	lis r3, lit_4735@ha /* 0x80B24ACC@ha */
/* 80B1F744  C0 03 4A CC */	lfs f0, lit_4735@l(r3)  /* 0x80B24ACC@l */
/* 80B1F748  D0 1F 0D E8 */	stfs f0, 0xde8(r31)
lbl_80B1F74C:
/* 80B1F74C  3C 60 80 B2 */	lis r3, m__18daNpc_Toby_Param_c@ha /* 0x80B249E4@ha */
/* 80B1F750  38 63 49 E4 */	addi r3, r3, m__18daNpc_Toby_Param_c@l /* 0x80B249E4@l */
/* 80B1F754  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80B1F758  D0 1F 0A 80 */	stfs f0, 0xa80(r31)
/* 80B1F75C  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80B1F760  D0 1F 0A 84 */	stfs f0, 0xa84(r31)
/* 80B1F764  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B1F768  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80B1F76C  39 61 00 20 */	addi r11, r1, 0x20
/* 80B1F770  4B 84 2A B9 */	bl _restgpr_29
/* 80B1F774  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B1F778  7C 08 03 A6 */	mtlr r0
/* 80B1F77C  38 21 00 20 */	addi r1, r1, 0x20
/* 80B1F780  4E 80 00 20 */	blr 
