lbl_809D740C:
/* 809D740C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D7410  7C 08 02 A6 */	mflr r0
/* 809D7414  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D7418  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D741C  93 C1 00 08 */	stw r30, 8(r1)
/* 809D7420  7C 7E 1B 79 */	or. r30, r3, r3
/* 809D7424  7C 9F 23 78 */	mr r31, r4
/* 809D7428  41 82 00 F0 */	beq lbl_809D7518
/* 809D742C  3C 80 80 9E */	lis r4, __vt__12daNpc_grMC_c@ha /* 0x809DA378@ha */
/* 809D7430  38 04 A3 78 */	addi r0, r4, __vt__12daNpc_grMC_c@l /* 0x809DA378@l */
/* 809D7434  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 809D7438  4B 7C 31 2D */	bl deleteObject__13dShopSystem_cFv
/* 809D743C  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 809D7440  28 00 00 00 */	cmplwi r0, 0
/* 809D7444  41 82 00 0C */	beq lbl_809D7450
/* 809D7448  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 809D744C  4B 63 9E C5 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_809D7450:
/* 809D7450  7F C3 F3 78 */	mr r3, r30
/* 809D7454  88 1E 10 BC */	lbz r0, 0x10bc(r30)
/* 809D7458  54 00 10 3A */	slwi r0, r0, 2
/* 809D745C  3C 80 80 9E */	lis r4, l_loadResPtrnList@ha /* 0x809D9ED4@ha */
/* 809D7460  38 84 9E D4 */	addi r4, r4, l_loadResPtrnList@l /* 0x809D9ED4@l */
/* 809D7464  7C 84 00 2E */	lwzx r4, r4, r0
/* 809D7468  3C A0 80 9E */	lis r5, l_resNameList@ha /* 0x809D9EC4@ha */
/* 809D746C  38 A5 9E C4 */	addi r5, r5, l_resNameList@l /* 0x809D9EC4@l */
/* 809D7470  4B 77 10 3D */	bl deleteRes__8daNpcT_cFPCScPPCc
/* 809D7474  34 1E 0F 80 */	addic. r0, r30, 0xf80
/* 809D7478  41 82 00 84 */	beq lbl_809D74FC
/* 809D747C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 809D7480  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 809D7484  90 7E 0F BC */	stw r3, 0xfbc(r30)
/* 809D7488  38 03 00 2C */	addi r0, r3, 0x2c
/* 809D748C  90 1E 10 A0 */	stw r0, 0x10a0(r30)
/* 809D7490  38 03 00 84 */	addi r0, r3, 0x84
/* 809D7494  90 1E 10 B8 */	stw r0, 0x10b8(r30)
/* 809D7498  34 1E 10 84 */	addic. r0, r30, 0x1084
/* 809D749C  41 82 00 54 */	beq lbl_809D74F0
/* 809D74A0  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 809D74A4  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 809D74A8  90 7E 10 A0 */	stw r3, 0x10a0(r30)
/* 809D74AC  38 03 00 58 */	addi r0, r3, 0x58
/* 809D74B0  90 1E 10 B8 */	stw r0, 0x10b8(r30)
/* 809D74B4  34 1E 10 A4 */	addic. r0, r30, 0x10a4
/* 809D74B8  41 82 00 10 */	beq lbl_809D74C8
/* 809D74BC  3C 60 80 9E */	lis r3, __vt__8cM3dGCyl@ha /* 0x809DA36C@ha */
/* 809D74C0  38 03 A3 6C */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x809DA36C@l */
/* 809D74C4  90 1E 10 B8 */	stw r0, 0x10b8(r30)
lbl_809D74C8:
/* 809D74C8  34 1E 10 84 */	addic. r0, r30, 0x1084
/* 809D74CC  41 82 00 24 */	beq lbl_809D74F0
/* 809D74D0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 809D74D4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 809D74D8  90 1E 10 A0 */	stw r0, 0x10a0(r30)
/* 809D74DC  34 1E 10 84 */	addic. r0, r30, 0x1084
/* 809D74E0  41 82 00 10 */	beq lbl_809D74F0
/* 809D74E4  3C 60 80 9E */	lis r3, __vt__8cM3dGAab@ha /* 0x809DA360@ha */
/* 809D74E8  38 03 A3 60 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x809DA360@l */
/* 809D74EC  90 1E 10 9C */	stw r0, 0x109c(r30)
lbl_809D74F0:
/* 809D74F0  38 7E 0F 80 */	addi r3, r30, 0xf80
/* 809D74F4  38 80 00 00 */	li r4, 0
/* 809D74F8  4B 6A CB ED */	bl __dt__12dCcD_GObjInfFv
lbl_809D74FC:
/* 809D74FC  7F C3 F3 78 */	mr r3, r30
/* 809D7500  38 80 00 00 */	li r4, 0
/* 809D7504  4B 7B FF E1 */	bl __dt__13dShopSystem_cFv
/* 809D7508  7F E0 07 35 */	extsh. r0, r31
/* 809D750C  40 81 00 0C */	ble lbl_809D7518
/* 809D7510  7F C3 F3 78 */	mr r3, r30
/* 809D7514  4B 8F 78 29 */	bl __dl__FPv
lbl_809D7518:
/* 809D7518  7F C3 F3 78 */	mr r3, r30
/* 809D751C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D7520  83 C1 00 08 */	lwz r30, 8(r1)
/* 809D7524  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D7528  7C 08 03 A6 */	mtlr r0
/* 809D752C  38 21 00 10 */	addi r1, r1, 0x10
/* 809D7530  4E 80 00 20 */	blr 
