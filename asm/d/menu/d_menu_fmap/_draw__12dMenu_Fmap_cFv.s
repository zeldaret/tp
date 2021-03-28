lbl_801C7650:
/* 801C7650  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C7654  7C 08 02 A6 */	mflr r0
/* 801C7658  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C765C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801C7660  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801C7664  7C 7F 1B 78 */	mr r31, r3
/* 801C7668  80 83 00 14 */	lwz r4, 0x14(r3)
/* 801C766C  28 04 00 00 */	cmplwi r4, 0
/* 801C7670  41 82 01 68 */	beq lbl_801C77D8
/* 801C7674  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 801C7678  28 00 00 00 */	cmplwi r0, 0
/* 801C767C  41 82 01 5C */	beq lbl_801C77D8
/* 801C7680  88 1F 03 05 */	lbz r0, 0x305(r31)
/* 801C7684  28 00 00 00 */	cmplwi r0, 0
/* 801C7688  41 82 00 A4 */	beq lbl_801C772C
/* 801C768C  C0 84 0F A0 */	lfs f4, 0xfa0(r4)
/* 801C7690  C0 64 0F 94 */	lfs f3, 0xf94(r4)
/* 801C7694  C0 44 0F 90 */	lfs f2, 0xf90(r4)
/* 801C7698  C0 24 0F 8C */	lfs f1, 0xf8c(r4)
/* 801C769C  80 7F 00 B8 */	lwz r3, 0xb8(r31)
/* 801C76A0  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 801C76A4  88 BF 03 0A */	lbz r5, 0x30a(r31)
/* 801C76A8  48 00 7D A9 */	bl setRendering__15dMenu_FmapMap_cFP23dMenu_Fmap_world_data_ciffff
/* 801C76AC  80 9F 00 B8 */	lwz r4, 0xb8(r31)
/* 801C76B0  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C76B4  88 1F 03 06 */	lbz r0, 0x306(r31)
/* 801C76B8  98 03 12 24 */	stb r0, 0x1224(r3)
/* 801C76BC  90 83 0C DC */	stw r4, 0xcdc(r3)
/* 801C76C0  7F E3 FB 78 */	mr r3, r31
/* 801C76C4  C0 3F 01 EC */	lfs f1, 0x1ec(r31)
/* 801C76C8  38 80 00 00 */	li r4, 0
/* 801C76CC  48 00 54 3D */	bl drawIcon__12dMenu_Fmap_cFfb
/* 801C76D0  88 1F 03 00 */	lbz r0, 0x300(r31)
/* 801C76D4  28 00 00 0B */	cmplwi r0, 0xb
/* 801C76D8  41 82 00 2C */	beq lbl_801C7704
/* 801C76DC  28 00 00 0C */	cmplwi r0, 0xc
/* 801C76E0  41 82 00 24 */	beq lbl_801C7704
/* 801C76E4  28 00 00 15 */	cmplwi r0, 0x15
/* 801C76E8  41 82 00 1C */	beq lbl_801C7704
/* 801C76EC  28 00 00 17 */	cmplwi r0, 0x17
/* 801C76F0  41 82 00 14 */	beq lbl_801C7704
/* 801C76F4  28 00 00 19 */	cmplwi r0, 0x19
/* 801C76F8  41 82 00 0C */	beq lbl_801C7704
/* 801C76FC  28 00 00 1B */	cmplwi r0, 0x1b
/* 801C7700  40 82 00 8C */	bne lbl_801C778C
lbl_801C7704:
/* 801C7704  C0 62 A7 24 */	lfs f3, lit_3995(r2)
/* 801C7708  C0 1F 01 EC */	lfs f0, 0x1ec(r31)
/* 801C770C  EC 23 00 28 */	fsubs f1, f3, f0
/* 801C7710  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C7714  38 63 00 04 */	addi r3, r3, 4
/* 801C7718  38 80 00 00 */	li r4, 0
/* 801C771C  FC 40 08 90 */	fmr f2, f1
/* 801C7720  EC 63 08 28 */	fsubs f3, f3, f1
/* 801C7724  4B FF C7 A1 */	bl iconScale__16dMenuMapCommon_cFifff
/* 801C7728  48 00 00 64 */	b lbl_801C778C
lbl_801C772C:
/* 801C772C  48 00 5B 29 */	bl drawPortalIcon__12dMenu_Fmap_cFv
/* 801C7730  88 1F 03 00 */	lbz r0, 0x300(r31)
/* 801C7734  28 00 00 04 */	cmplwi r0, 4
/* 801C7738  41 82 00 0C */	beq lbl_801C7744
/* 801C773C  28 00 00 05 */	cmplwi r0, 5
/* 801C7740  40 82 00 4C */	bne lbl_801C778C
lbl_801C7744:
/* 801C7744  C0 62 A7 24 */	lfs f3, lit_3995(r2)
/* 801C7748  A8 1F 02 14 */	lha r0, 0x214(r31)
/* 801C774C  C8 22 A7 40 */	lfd f1, lit_4358(r2)
/* 801C7750  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801C7754  90 01 00 0C */	stw r0, 0xc(r1)
/* 801C7758  3C 00 43 30 */	lis r0, 0x4330
/* 801C775C  90 01 00 08 */	stw r0, 8(r1)
/* 801C7760  C8 01 00 08 */	lfd f0, 8(r1)
/* 801C7764  EC 20 08 28 */	fsubs f1, f0, f1
/* 801C7768  C0 02 A7 3C */	lfs f0, lit_4353(r2)
/* 801C776C  EC 01 00 24 */	fdivs f0, f1, f0
/* 801C7770  EC 23 00 28 */	fsubs f1, f3, f0
/* 801C7774  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C7778  38 63 00 04 */	addi r3, r3, 4
/* 801C777C  38 80 00 00 */	li r4, 0
/* 801C7780  FC 40 08 90 */	fmr f2, f1
/* 801C7784  EC 63 08 28 */	fsubs f3, f3, f1
/* 801C7788  4B FF C7 3D */	bl iconScale__16dMenuMapCommon_cFifff
lbl_801C778C:
/* 801C778C  38 80 00 01 */	li r4, 1
/* 801C7790  80 7F 00 B8 */	lwz r3, 0xb8(r31)
/* 801C7794  88 03 00 BB */	lbz r0, 0xbb(r3)
/* 801C7798  7C 84 00 38 */	and r4, r4, r0
/* 801C779C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C77A0  98 83 12 39 */	stb r4, 0x1239(r3)
/* 801C77A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801C77A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801C77AC  3B C3 5F 64 */	addi r30, r3, 0x5f64
/* 801C77B0  7F C3 F3 78 */	mr r3, r30
/* 801C77B4  38 9E 01 B4 */	addi r4, r30, 0x1b4
/* 801C77B8  38 BE 01 B8 */	addi r5, r30, 0x1b8
/* 801C77BC  80 DF 00 14 */	lwz r6, 0x14(r31)
/* 801C77C0  4B E8 EF D5 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 801C77C4  7F C3 F3 78 */	mr r3, r30
/* 801C77C8  38 9E 00 AC */	addi r4, r30, 0xac
/* 801C77CC  38 BE 00 B0 */	addi r5, r30, 0xb0
/* 801C77D0  80 DF 00 18 */	lwz r6, 0x18(r31)
/* 801C77D4  4B E8 EF C1 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
lbl_801C77D8:
/* 801C77D8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801C77DC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801C77E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C77E4  7C 08 03 A6 */	mtlr r0
/* 801C77E8  38 21 00 20 */	addi r1, r1, 0x20
/* 801C77EC  4E 80 00 20 */	blr 
