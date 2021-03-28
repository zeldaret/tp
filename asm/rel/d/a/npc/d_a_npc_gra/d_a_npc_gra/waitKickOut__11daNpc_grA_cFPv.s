lbl_809C73FC:
/* 809C73FC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809C7400  7C 08 02 A6 */	mflr r0
/* 809C7404  90 01 00 34 */	stw r0, 0x34(r1)
/* 809C7408  39 61 00 30 */	addi r11, r1, 0x30
/* 809C740C  4B 99 AD D0 */	b _savegpr_29
/* 809C7410  7C 7E 1B 78 */	mr r30, r3
/* 809C7414  3C 80 80 9D */	lis r4, m__17daNpc_grA_Param_c@ha
/* 809C7418  3B E4 9D 98 */	addi r31, r4, m__17daNpc_grA_Param_c@l
/* 809C741C  A0 03 14 72 */	lhz r0, 0x1472(r3)
/* 809C7420  2C 00 00 02 */	cmpwi r0, 2
/* 809C7424  41 82 00 70 */	beq lbl_809C7494
/* 809C7428  40 80 02 C8 */	bge lbl_809C76F0
/* 809C742C  2C 00 00 00 */	cmpwi r0, 0
/* 809C7430  41 82 00 0C */	beq lbl_809C743C
/* 809C7434  48 00 02 BC */	b lbl_809C76F0
/* 809C7438  48 00 02 B8 */	b lbl_809C76F0
lbl_809C743C:
/* 809C743C  38 80 00 17 */	li r4, 0x17
/* 809C7440  C0 3F 06 70 */	lfs f1, 0x670(r31)
/* 809C7444  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809C7448  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809C744C  7D 89 03 A6 */	mtctr r12
/* 809C7450  4E 80 04 21 */	bctrl 
/* 809C7454  7F C3 F3 78 */	mr r3, r30
/* 809C7458  38 80 00 01 */	li r4, 1
/* 809C745C  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 809C7460  38 A0 00 00 */	li r5, 0
/* 809C7464  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809C7468  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C746C  7D 89 03 A6 */	mtctr r12
/* 809C7470  4E 80 04 21 */	bctrl 
/* 809C7474  7F C3 F3 78 */	mr r3, r30
/* 809C7478  38 80 00 00 */	li r4, 0
/* 809C747C  4B FF BB F5 */	bl setLookMode__11daNpc_grA_cFi
/* 809C7480  38 00 00 00 */	li r0, 0
/* 809C7484  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 809C7488  B0 1E 16 94 */	sth r0, 0x1694(r30)
/* 809C748C  38 00 00 02 */	li r0, 2
/* 809C7490  B0 1E 14 72 */	sth r0, 0x1472(r30)
lbl_809C7494:
/* 809C7494  88 1E 16 92 */	lbz r0, 0x1692(r30)
/* 809C7498  98 1E 16 93 */	stb r0, 0x1693(r30)
/* 809C749C  38 00 00 00 */	li r0, 0
/* 809C74A0  98 1E 16 92 */	stb r0, 0x1692(r30)
/* 809C74A4  3C 60 80 9C */	lis r3, s_subCarry__FPvPv@ha
/* 809C74A8  38 63 FD 04 */	addi r3, r3, s_subCarry__FPvPv@l
/* 809C74AC  7F C4 F3 78 */	mr r4, r30
/* 809C74B0  4B 65 9E 88 */	b fpcEx_Search__FPFPvPv_PvPv
/* 809C74B4  88 7E 16 93 */	lbz r3, 0x1693(r30)
/* 809C74B8  88 1E 16 92 */	lbz r0, 0x1692(r30)
/* 809C74BC  7C 03 00 40 */	cmplw r3, r0
/* 809C74C0  40 81 00 28 */	ble lbl_809C74E8
/* 809C74C4  88 1E 16 90 */	lbz r0, 0x1690(r30)
/* 809C74C8  28 00 00 01 */	cmplwi r0, 1
/* 809C74CC  40 82 00 10 */	bne lbl_809C74DC
/* 809C74D0  38 00 00 04 */	li r0, 4
/* 809C74D4  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
/* 809C74D8  48 00 02 18 */	b lbl_809C76F0
lbl_809C74DC:
/* 809C74DC  38 00 00 05 */	li r0, 5
/* 809C74E0  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
/* 809C74E4  48 00 02 0C */	b lbl_809C76F0
lbl_809C74E8:
/* 809C74E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809C74EC  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 809C74F0  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 809C74F4  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 809C74F8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 809C74FC  EC 21 00 28 */	fsubs f1, f1, f0
/* 809C7500  C0 1F 06 EC */	lfs f0, 0x6ec(r31)
/* 809C7504  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809C7508  40 80 00 28 */	bge lbl_809C7530
/* 809C750C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 809C7510  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 809C7514  7D 89 03 A6 */	mtctr r12
/* 809C7518  4E 80 04 21 */	bctrl 
/* 809C751C  28 03 00 00 */	cmplwi r3, 0
/* 809C7520  40 82 00 10 */	bne lbl_809C7530
/* 809C7524  38 00 00 03 */	li r0, 3
/* 809C7528  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
/* 809C752C  48 00 01 C4 */	b lbl_809C76F0
lbl_809C7530:
/* 809C7530  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 809C7534  81 83 06 28 */	lwz r12, 0x628(r3)
/* 809C7538  81 8C 00 90 */	lwz r12, 0x90(r12)
/* 809C753C  7D 89 03 A6 */	mtctr r12
/* 809C7540  4E 80 04 21 */	bctrl 
/* 809C7544  2C 03 00 00 */	cmpwi r3, 0
/* 809C7548  41 82 00 2C */	beq lbl_809C7574
/* 809C754C  7F C3 F3 78 */	mr r3, r30
/* 809C7550  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 809C7554  38 BF 00 00 */	addi r5, r31, 0
/* 809C7558  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 809C755C  4B 78 C4 94 */	b chkActorInSight__8daNpcF_cFP10fopAc_ac_cf
/* 809C7560  2C 03 00 00 */	cmpwi r3, 0
/* 809C7564  41 82 00 10 */	beq lbl_809C7574
/* 809C7568  38 00 00 03 */	li r0, 3
/* 809C756C  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
/* 809C7570  48 00 01 80 */	b lbl_809C76F0
lbl_809C7574:
/* 809C7574  80 1E 0D D8 */	lwz r0, 0xdd8(r30)
/* 809C7578  28 00 00 00 */	cmplwi r0, 0
/* 809C757C  41 82 01 74 */	beq lbl_809C76F0
/* 809C7580  A8 1E 16 94 */	lha r0, 0x1694(r30)
/* 809C7584  2C 00 00 00 */	cmpwi r0, 0
/* 809C7588  40 82 00 E8 */	bne lbl_809C7670
/* 809C758C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 809C7590  D0 01 00 08 */	stfs f0, 8(r1)
/* 809C7594  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 809C7598  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809C759C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 809C75A0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809C75A4  38 7E 0D D4 */	addi r3, r30, 0xdd4
/* 809C75A8  38 81 00 08 */	addi r4, r1, 8
/* 809C75AC  38 A1 00 14 */	addi r5, r1, 0x14
/* 809C75B0  4B 78 98 30 */	b getDstPos__13daNpcF_Path_cF4cXyzR4cXyz
/* 809C75B4  2C 03 00 00 */	cmpwi r3, 0
/* 809C75B8  41 82 00 68 */	beq lbl_809C7620
/* 809C75BC  38 7E 0D D4 */	addi r3, r30, 0xdd4
/* 809C75C0  4B 78 95 FC */	b reverse__13daNpcF_Path_cFv
/* 809C75C4  7F C3 F3 78 */	mr r3, r30
/* 809C75C8  38 80 00 17 */	li r4, 0x17
/* 809C75CC  C0 3F 06 70 */	lfs f1, 0x670(r31)
/* 809C75D0  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809C75D4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809C75D8  7D 89 03 A6 */	mtctr r12
/* 809C75DC  4E 80 04 21 */	bctrl 
/* 809C75E0  7F C3 F3 78 */	mr r3, r30
/* 809C75E4  38 80 00 00 */	li r4, 0
/* 809C75E8  C0 3F 06 70 */	lfs f1, 0x670(r31)
/* 809C75EC  38 A0 00 00 */	li r5, 0
/* 809C75F0  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809C75F4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C75F8  7D 89 03 A6 */	mtctr r12
/* 809C75FC  4E 80 04 21 */	bctrl 
/* 809C7600  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 809C7604  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 809C7608  7F C3 F3 78 */	mr r3, r30
/* 809C760C  38 80 00 07 */	li r4, 7
/* 809C7610  4B FF BA 61 */	bl setLookMode__11daNpc_grA_cFi
/* 809C7614  38 00 00 B4 */	li r0, 0xb4
/* 809C7618  B0 1E 16 94 */	sth r0, 0x1694(r30)
/* 809C761C  48 00 00 D4 */	b lbl_809C76F0
lbl_809C7620:
/* 809C7620  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 809C7624  38 81 00 14 */	addi r4, r1, 0x14
/* 809C7628  4B 8A 95 DC */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 809C762C  7C 64 1B 78 */	mr r4, r3
/* 809C7630  C0 1F 06 C0 */	lfs f0, 0x6c0(r31)
/* 809C7634  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 809C7638  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 809C763C  38 DF 00 00 */	addi r6, r31, 0
/* 809C7640  C0 06 00 78 */	lfs f0, 0x78(r6)
/* 809C7644  EC 01 00 32 */	fmuls f0, f1, f0
/* 809C7648  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 809C764C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 809C7650  38 7E 04 DE */	addi r3, r30, 0x4de
/* 809C7654  A8 A6 00 7E */	lha r5, 0x7e(r6)
/* 809C7658  A8 C6 00 7C */	lha r6, 0x7c(r6)
/* 809C765C  4B 8A 8F AC */	b cLib_addCalcAngleS2__FPssss
/* 809C7660  7F C3 F3 78 */	mr r3, r30
/* 809C7664  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 809C7668  4B 78 CB E8 */	b setAngle__8daNpcF_cFs
/* 809C766C  48 00 00 84 */	b lbl_809C76F0
lbl_809C7670:
/* 809C7670  38 7E 16 94 */	addi r3, r30, 0x1694
/* 809C7674  48 00 24 55 */	bl func_809C9AC8
/* 809C7678  7C 60 07 35 */	extsh. r0, r3
/* 809C767C  40 82 00 44 */	bne lbl_809C76C0
/* 809C7680  7F C3 F3 78 */	mr r3, r30
/* 809C7684  38 80 00 17 */	li r4, 0x17
/* 809C7688  C0 3F 06 70 */	lfs f1, 0x670(r31)
/* 809C768C  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809C7690  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809C7694  7D 89 03 A6 */	mtctr r12
/* 809C7698  4E 80 04 21 */	bctrl 
/* 809C769C  7F C3 F3 78 */	mr r3, r30
/* 809C76A0  38 80 00 01 */	li r4, 1
/* 809C76A4  C0 3F 06 70 */	lfs f1, 0x670(r31)
/* 809C76A8  38 A0 00 00 */	li r5, 0
/* 809C76AC  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809C76B0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C76B4  7D 89 03 A6 */	mtctr r12
/* 809C76B8  4E 80 04 21 */	bctrl 
/* 809C76BC  48 00 00 34 */	b lbl_809C76F0
lbl_809C76C0:
/* 809C76C0  A8 1E 16 94 */	lha r0, 0x1694(r30)
/* 809C76C4  2C 00 00 78 */	cmpwi r0, 0x78
/* 809C76C8  40 82 00 14 */	bne lbl_809C76DC
/* 809C76CC  7F C3 F3 78 */	mr r3, r30
/* 809C76D0  38 80 00 08 */	li r4, 8
/* 809C76D4  4B FF B9 9D */	bl setLookMode__11daNpc_grA_cFi
/* 809C76D8  48 00 00 18 */	b lbl_809C76F0
lbl_809C76DC:
/* 809C76DC  2C 00 00 3C */	cmpwi r0, 0x3c
/* 809C76E0  40 82 00 10 */	bne lbl_809C76F0
/* 809C76E4  7F C3 F3 78 */	mr r3, r30
/* 809C76E8  38 80 00 00 */	li r4, 0
/* 809C76EC  4B FF B9 85 */	bl setLookMode__11daNpc_grA_cFi
lbl_809C76F0:
/* 809C76F0  38 60 00 01 */	li r3, 1
/* 809C76F4  39 61 00 30 */	addi r11, r1, 0x30
/* 809C76F8  4B 99 AB 30 */	b _restgpr_29
/* 809C76FC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809C7700  7C 08 03 A6 */	mtlr r0
/* 809C7704  38 21 00 30 */	addi r1, r1, 0x30
/* 809C7708  4E 80 00 20 */	blr 
