lbl_809B74AC:
/* 809B74AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809B74B0  7C 08 02 A6 */	mflr r0
/* 809B74B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 809B74B8  39 61 00 30 */	addi r11, r1, 0x30
/* 809B74BC  4B 9A AD 1D */	bl _savegpr_28
/* 809B74C0  7C 7D 1B 78 */	mr r29, r3
/* 809B74C4  3C C0 80 9C */	lis r6, m__19daNpc_Fairy_Param_c@ha /* 0x809B92E4@ha */
/* 809B74C8  3B E6 92 E4 */	addi r31, r6, m__19daNpc_Fairy_Param_c@l /* 0x809B92E4@l */
/* 809B74CC  3B C0 00 00 */	li r30, 0
/* 809B74D0  80 DF 01 E0 */	lwz r6, 0x1e0(r31)
/* 809B74D4  80 1F 01 E4 */	lwz r0, 0x1e4(r31)
/* 809B74D8  90 C1 00 0C */	stw r6, 0xc(r1)
/* 809B74DC  90 01 00 10 */	stw r0, 0x10(r1)
/* 809B74E0  80 84 00 00 */	lwz r4, 0(r4)
/* 809B74E4  38 04 FF F6 */	addi r0, r4, -10
/* 809B74E8  28 00 00 32 */	cmplwi r0, 0x32
/* 809B74EC  41 81 02 10 */	bgt lbl_809B76FC
/* 809B74F0  3C 80 80 9C */	lis r4, lit_6512@ha /* 0x809BA188@ha */
/* 809B74F4  38 84 A1 88 */	addi r4, r4, lit_6512@l /* 0x809BA188@l */
/* 809B74F8  54 00 10 3A */	slwi r0, r0, 2
/* 809B74FC  7C 04 00 2E */	lwzx r0, r4, r0
/* 809B7500  7C 09 03 A6 */	mtctr r0
/* 809B7504  4E 80 04 20 */	bctr 
lbl_809B7508:
/* 809B7508  A8 7D 0F 90 */	lha r3, 0xf90(r29)
/* 809B750C  38 03 FF FF */	addi r0, r3, -1
/* 809B7510  B0 1D 0F 90 */	sth r0, 0xf90(r29)
/* 809B7514  7C 00 07 35 */	extsh. r0, r0
/* 809B7518  41 81 01 E4 */	bgt lbl_809B76FC
/* 809B751C  38 60 00 0B */	li r3, 0xb
/* 809B7520  4B 7F 12 C5 */	bl dKy_change_colpat__FUc
/* 809B7524  3B C0 00 01 */	li r30, 1
/* 809B7528  48 00 01 D4 */	b lbl_809B76FC
lbl_809B752C:
/* 809B752C  A8 7D 0F 90 */	lha r3, 0xf90(r29)
/* 809B7530  38 03 FF FF */	addi r0, r3, -1
/* 809B7534  B0 1D 0F 90 */	sth r0, 0xf90(r29)
/* 809B7538  7C 00 07 35 */	extsh. r0, r0
/* 809B753C  41 81 01 C0 */	bgt lbl_809B76FC
/* 809B7540  3B C0 00 01 */	li r30, 1
/* 809B7544  48 00 01 B8 */	b lbl_809B76FC
lbl_809B7548:
/* 809B7548  80 05 00 00 */	lwz r0, 0(r5)
/* 809B754C  90 01 00 0C */	stw r0, 0xc(r1)
/* 809B7550  38 81 00 0C */	addi r4, r1, 0xc
/* 809B7554  38 A0 00 00 */	li r5, 0
/* 809B7558  38 C0 00 00 */	li r6, 0
/* 809B755C  38 E0 00 00 */	li r7, 0
/* 809B7560  4B 79 47 19 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809B7564  A8 7D 0F 90 */	lha r3, 0xf90(r29)
/* 809B7568  38 03 FF FF */	addi r0, r3, -1
/* 809B756C  B0 1D 0F 90 */	sth r0, 0xf90(r29)
/* 809B7570  7C 00 07 35 */	extsh. r0, r0
/* 809B7574  41 81 01 88 */	bgt lbl_809B76FC
/* 809B7578  3B C0 00 01 */	li r30, 1
/* 809B757C  48 00 01 80 */	b lbl_809B76FC
lbl_809B7580:
/* 809B7580  80 05 00 00 */	lwz r0, 0(r5)
/* 809B7584  90 01 00 0C */	stw r0, 0xc(r1)
/* 809B7588  38 81 00 0C */	addi r4, r1, 0xc
/* 809B758C  38 A0 00 01 */	li r5, 1
/* 809B7590  38 C0 00 00 */	li r6, 0
/* 809B7594  38 E0 00 00 */	li r7, 0
/* 809B7598  4B 79 46 E1 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809B759C  2C 03 00 00 */	cmpwi r3, 0
/* 809B75A0  41 82 01 5C */	beq lbl_809B76FC
/* 809B75A4  3B C0 00 01 */	li r30, 1
/* 809B75A8  48 00 01 54 */	b lbl_809B76FC
lbl_809B75AC:
/* 809B75AC  38 80 00 00 */	li r4, 0
/* 809B75B0  38 A0 00 00 */	li r5, 0
/* 809B75B4  38 C0 00 00 */	li r6, 0
/* 809B75B8  38 E0 00 00 */	li r7, 0
/* 809B75BC  4B 79 46 BD */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809B75C0  2C 03 00 00 */	cmpwi r3, 0
/* 809B75C4  41 82 01 38 */	beq lbl_809B76FC
/* 809B75C8  7F A3 EB 78 */	mr r3, r29
/* 809B75CC  4B FF CF F1 */	bl PresentDemoCall__13daNpc_Fairy_cFv
/* 809B75D0  3B C0 00 01 */	li r30, 1
/* 809B75D4  48 00 01 28 */	b lbl_809B76FC
lbl_809B75D8:
/* 809B75D8  3B C0 00 01 */	li r30, 1
/* 809B75DC  48 00 01 20 */	b lbl_809B76FC
lbl_809B75E0:
/* 809B75E0  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 809B75E4  2C 00 00 03 */	cmpwi r0, 3
/* 809B75E8  41 82 00 24 */	beq lbl_809B760C
/* 809B75EC  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 809B75F0  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 809B75F4  4B 78 E2 A5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809B75F8  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 809B75FC  38 00 00 03 */	li r0, 3
/* 809B7600  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 809B7604  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 809B7608  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_809B760C:
/* 809B760C  A8 7D 0F 90 */	lha r3, 0xf90(r29)
/* 809B7610  38 03 FF FF */	addi r0, r3, -1
/* 809B7614  B0 1D 0F 90 */	sth r0, 0xf90(r29)
/* 809B7618  A8 7D 0F 90 */	lha r3, 0xf90(r29)
/* 809B761C  7C 60 07 35 */	extsh. r0, r3
/* 809B7620  41 81 00 14 */	bgt lbl_809B7634
/* 809B7624  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 809B7628  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 809B762C  3B C0 00 01 */	li r30, 1
/* 809B7630  48 00 00 CC */	b lbl_809B76FC
lbl_809B7634:
/* 809B7634  2C 03 00 0A */	cmpwi r3, 0xa
/* 809B7638  40 82 00 C4 */	bne lbl_809B76FC
/* 809B763C  C0 1F 01 C4 */	lfs f0, 0x1c4(r31)
/* 809B7640  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 809B7644  48 00 00 B8 */	b lbl_809B76FC
lbl_809B7648:
/* 809B7648  80 05 00 00 */	lwz r0, 0(r5)
/* 809B764C  90 01 00 0C */	stw r0, 0xc(r1)
/* 809B7650  38 81 00 0C */	addi r4, r1, 0xc
/* 809B7654  38 A0 00 00 */	li r5, 0
/* 809B7658  38 C0 00 00 */	li r6, 0
/* 809B765C  38 E0 00 00 */	li r7, 0
/* 809B7660  4B 79 46 19 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809B7664  2C 03 00 00 */	cmpwi r3, 0
/* 809B7668  41 82 00 94 */	beq lbl_809B76FC
/* 809B766C  3B C0 00 01 */	li r30, 1
/* 809B7670  48 00 00 8C */	b lbl_809B76FC
lbl_809B7674:
/* 809B7674  38 80 00 00 */	li r4, 0
/* 809B7678  38 A0 00 00 */	li r5, 0
/* 809B767C  38 C0 00 00 */	li r6, 0
/* 809B7680  38 E0 00 00 */	li r7, 0
/* 809B7684  4B 79 45 F5 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809B7688  2C 03 00 00 */	cmpwi r3, 0
/* 809B768C  41 82 00 70 */	beq lbl_809B76FC
/* 809B7690  3B C0 00 01 */	li r30, 1
/* 809B7694  48 00 00 68 */	b lbl_809B76FC
lbl_809B7698:
/* 809B7698  38 00 00 9B */	li r0, 0x9b
/* 809B769C  90 01 00 08 */	stw r0, 8(r1)
/* 809B76A0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 809B76A4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 809B76A8  80 63 00 00 */	lwz r3, 0(r3)
/* 809B76AC  38 81 00 08 */	addi r4, r1, 8
/* 809B76B0  38 A0 00 00 */	li r5, 0
/* 809B76B4  38 C0 00 00 */	li r6, 0
/* 809B76B8  38 E0 00 00 */	li r7, 0
/* 809B76BC  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 809B76C0  FC 40 08 90 */	fmr f2, f1
/* 809B76C4  C0 7F 00 E8 */	lfs f3, 0xe8(r31)
/* 809B76C8  FC 80 18 90 */	fmr f4, f3
/* 809B76CC  39 00 00 00 */	li r8, 0
/* 809B76D0  4B 8F 42 B5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 809B76D4  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 809B76D8  54 03 86 3E */	rlwinm r3, r0, 0x10, 0x18, 0x1f
/* 809B76DC  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 809B76E0  38 80 00 00 */	li r4, 0
/* 809B76E4  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 809B76E8  7C 05 07 74 */	extsb r5, r0
/* 809B76EC  38 C0 00 00 */	li r6, 0
/* 809B76F0  38 E0 FF FF */	li r7, -1
/* 809B76F4  4B 66 FA 7D */	bl dStage_changeScene__FifUlScsi
/* 809B76F8  3B C0 00 01 */	li r30, 1
lbl_809B76FC:
/* 809B76FC  7F C3 F3 78 */	mr r3, r30
/* 809B7700  39 61 00 30 */	addi r11, r1, 0x30
/* 809B7704  4B 9A AB 21 */	bl _restgpr_28
/* 809B7708  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809B770C  7C 08 03 A6 */	mtlr r0
/* 809B7710  38 21 00 30 */	addi r1, r1, 0x30
/* 809B7714  4E 80 00 20 */	blr 
