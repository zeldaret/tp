lbl_801C74A8:
/* 801C74A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C74AC  7C 08 02 A6 */	mflr r0
/* 801C74B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C74B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C74B8  93 C1 00 08 */	stw r30, 8(r1)
/* 801C74BC  7C 7F 1B 78 */	mr r31, r3
/* 801C74C0  8B C3 03 00 */	lbz r30, 0x300(r3)
/* 801C74C4  38 00 00 00 */	li r0, 0
/* 801C74C8  98 03 03 10 */	stb r0, 0x310(r3)
/* 801C74CC  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801C74D0  38 63 00 04 */	addi r3, r3, 4
/* 801C74D4  4B FF CF 69 */	bl clearIconInfo__16dMenuMapCommon_cFv
/* 801C74D8  7F E3 FB 78 */	mr r3, r31
/* 801C74DC  88 1F 03 00 */	lbz r0, 0x300(r31)
/* 801C74E0  1C A0 00 0C */	mulli r5, r0, 0xc
/* 801C74E4  3C 80 80 3C */	lis r4, move_process@ha /* 0x803BD4D4@ha */
/* 801C74E8  38 04 D4 D4 */	addi r0, r4, move_process@l /* 0x803BD4D4@l */
/* 801C74EC  7D 80 2A 14 */	add r12, r0, r5
/* 801C74F0  48 19 AB 95 */	bl __ptmf_scall
/* 801C74F4  60 00 00 00 */	nop 
/* 801C74F8  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C74FC  48 00 F5 49 */	bl _execute__17dMenu_Fmap2DTop_cFv
/* 801C7500  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C7504  3C 80 80 43 */	lis r4, g_fmHIO@ha /* 0x8042E82C@ha */
/* 801C7508  38 84 E8 2C */	addi r4, r4, g_fmHIO@l /* 0x8042E82C@l */
/* 801C750C  88 84 00 10 */	lbz r4, 0x10(r4)
/* 801C7510  48 00 D5 ED */	bl setBaseBackAlpha__18dMenu_Fmap2DBack_cFUc
/* 801C7514  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C7518  3C 80 80 43 */	lis r4, g_fmHIO@ha /* 0x8042E82C@ha */
/* 801C751C  38 84 E8 2C */	addi r4, r4, g_fmHIO@l /* 0x8042E82C@l */
/* 801C7520  C0 24 00 08 */	lfs f1, 8(r4)
/* 801C7524  48 00 D4 BD */	bl btkAnimeLoop__18dMenu_Fmap2DBack_cFf
/* 801C7528  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C752C  3C 80 80 43 */	lis r4, g_fmHIO@ha /* 0x8042E82C@ha */
/* 801C7530  38 84 E8 2C */	addi r4, r4, g_fmHIO@l /* 0x8042E82C@l */
/* 801C7534  88 84 00 11 */	lbz r4, 0x11(r4)
/* 801C7538  48 00 F9 A5 */	bl setMoyaAlpha__17dMenu_Fmap2DTop_cFUc
/* 801C753C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C7540  80 83 00 10 */	lwz r4, 0x10(r3)
/* 801C7544  3C A0 80 43 */	lis r5, g_fmHIO@ha /* 0x8042E82C@ha */
/* 801C7548  38 A5 E8 2C */	addi r5, r5, g_fmHIO@l /* 0x8042E82C@l */
/* 801C754C  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 801C7550  48 00 F8 A9 */	bl btkAnimeLoop__17dMenu_Fmap2DTop_cFP19J2DAnmTextureSRTKeyf
/* 801C7554  88 1F 03 00 */	lbz r0, 0x300(r31)
/* 801C7558  7C 00 F0 40 */	cmplw r0, r30
/* 801C755C  41 82 00 20 */	beq lbl_801C757C
/* 801C7560  7F E3 FB 78 */	mr r3, r31
/* 801C7564  1C A0 00 0C */	mulli r5, r0, 0xc
/* 801C7568  3C 80 80 3C */	lis r4, init_process@ha /* 0x803BD204@ha */
/* 801C756C  38 04 D2 04 */	addi r0, r4, init_process@l /* 0x803BD204@l */
/* 801C7570  7D 80 2A 14 */	add r12, r0, r5
/* 801C7574  48 19 AB 11 */	bl __ptmf_scall
/* 801C7578  60 00 00 00 */	nop 
lbl_801C757C:
/* 801C757C  88 1F 03 00 */	lbz r0, 0x300(r31)
/* 801C7580  28 00 00 0A */	cmplwi r0, 0xa
/* 801C7584  40 82 00 14 */	bne lbl_801C7598
/* 801C7588  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C758C  38 80 00 01 */	li r4, 1
/* 801C7590  48 00 D3 99 */	bl calcBackAlpha__18dMenu_Fmap2DBack_cFb
/* 801C7594  48 00 00 10 */	b lbl_801C75A4
lbl_801C7598:
/* 801C7598  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C759C  38 80 00 00 */	li r4, 0
/* 801C75A0  48 00 D3 89 */	bl calcBackAlpha__18dMenu_Fmap2DBack_cFb
lbl_801C75A4:
/* 801C75A4  C0 3F 01 20 */	lfs f1, 0x120(r31)
/* 801C75A8  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C75AC  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 801C75B0  D0 03 0F BC */	stfs f0, 0xfbc(r3)
/* 801C75B4  D0 23 0F C0 */	stfs f1, 0xfc0(r3)
/* 801C75B8  C0 3F 01 20 */	lfs f1, 0x120(r31)
/* 801C75BC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C75C0  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 801C75C4  D0 03 00 78 */	stfs f0, 0x78(r3)
/* 801C75C8  D0 23 00 7C */	stfs f1, 0x7c(r3)
/* 801C75CC  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801C75D0  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801C75D4  88 03 02 FF */	lbz r0, 0x2ff(r3)
/* 801C75D8  28 00 00 00 */	cmplwi r0, 0
/* 801C75DC  41 82 00 0C */	beq lbl_801C75E8
/* 801C75E0  7F E3 FB 78 */	mr r3, r31
/* 801C75E4  48 00 5E 0D */	bl drawDebugStage__12dMenu_Fmap_cFv
lbl_801C75E8:
/* 801C75E8  C0 22 A7 24 */	lfs f1, lit_3995(r2)
/* 801C75EC  C0 1F 01 A8 */	lfs f0, 0x1a8(r31)
/* 801C75F0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801C75F4  41 82 00 44 */	beq lbl_801C7638
/* 801C75F8  38 7F 01 A8 */	addi r3, r31, 0x1a8
/* 801C75FC  C0 42 A7 48 */	lfs f2, lit_4397(r2)
/* 801C7600  C0 62 A7 4C */	lfs f3, lit_4398(r2)
/* 801C7604  48 0A 84 39 */	bl cLib_addCalc2__FPffff
/* 801C7608  C0 1F 01 A8 */	lfs f0, 0x1a8(r31)
/* 801C760C  C0 22 A7 24 */	lfs f1, lit_3995(r2)
/* 801C7610  EC 00 08 28 */	fsubs f0, f0, f1
/* 801C7614  FC 00 02 10 */	fabs f0, f0
/* 801C7618  FC 40 00 18 */	frsp f2, f0
/* 801C761C  C0 02 A7 50 */	lfs f0, lit_4399(r2)
/* 801C7620  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801C7624  40 80 00 08 */	bge lbl_801C762C
/* 801C7628  D0 3F 01 A8 */	stfs f1, 0x1a8(r31)
lbl_801C762C:
/* 801C762C  C0 1F 01 A8 */	lfs f0, 0x1a8(r31)
/* 801C7630  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C7634  D0 03 11 D8 */	stfs f0, 0x11d8(r3)
lbl_801C7638:
/* 801C7638  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C763C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801C7640  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C7644  7C 08 03 A6 */	mtlr r0
/* 801C7648  38 21 00 10 */	addi r1, r1, 0x10
/* 801C764C  4E 80 00 20 */	blr 
