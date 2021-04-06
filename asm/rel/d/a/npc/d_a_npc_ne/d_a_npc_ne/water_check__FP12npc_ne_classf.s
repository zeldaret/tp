lbl_80A89640:
/* 80A89640  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 80A89644  7C 08 02 A6 */	mflr r0
/* 80A89648  90 01 01 54 */	stw r0, 0x154(r1)
/* 80A8964C  DB E1 01 40 */	stfd f31, 0x140(r1)
/* 80A89650  F3 E1 01 48 */	psq_st f31, 328(r1), 0, 0 /* qr0 */
/* 80A89654  39 61 01 40 */	addi r11, r1, 0x140
/* 80A89658  4B 8D 8B 85 */	bl _savegpr_29
/* 80A8965C  7C 7D 1B 78 */	mr r29, r3
/* 80A89660  FF E0 08 90 */	fmr f31, f1
/* 80A89664  3C 60 80 A9 */	lis r3, lit_3990@ha /* 0x80A9241C@ha */
/* 80A89668  3B E3 24 1C */	addi r31, r3, lit_3990@l /* 0x80A9241C@l */
/* 80A8966C  38 61 00 D8 */	addi r3, r1, 0xd8
/* 80A89670  4B 5E E1 41 */	bl __ct__18dBgS_ObjGndChk_SplFv
/* 80A89674  38 61 00 84 */	addi r3, r1, 0x84
/* 80A89678  4B 5E DF 05 */	bl __ct__11dBgS_GndChkFv
/* 80A8967C  38 61 00 14 */	addi r3, r1, 0x14
/* 80A89680  4B 5E E5 E9 */	bl __ct__11dBgS_LinChkFv
/* 80A89684  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A89688  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A8968C  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80A89690  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80A89694  EC 01 00 2A */	fadds f0, f1, f0
/* 80A89698  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A8969C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A896A0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A896A4  38 61 00 14 */	addi r3, r1, 0x14
/* 80A896A8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A896AC  38 A1 00 08 */	addi r5, r1, 8
/* 80A896B0  7F A6 EB 78 */	mr r6, r29
/* 80A896B4  4B 5E E6 B1 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80A896B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A896BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A896C0  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 80A896C4  7F C3 F3 78 */	mr r3, r30
/* 80A896C8  38 81 00 14 */	addi r4, r1, 0x14
/* 80A896CC  4B 5E AC E9 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80A896D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A896D4  41 82 00 14 */	beq lbl_80A896E8
/* 80A896D8  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 80A896DC  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A896E0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A896E4  D0 01 00 0C */	stfs f0, 0xc(r1)
lbl_80A896E8:
/* 80A896E8  38 61 00 D8 */	addi r3, r1, 0xd8
/* 80A896EC  38 81 00 08 */	addi r4, r1, 8
/* 80A896F0  4B 7D E6 39 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80A896F4  7F C3 F3 78 */	mr r3, r30
/* 80A896F8  38 81 00 D8 */	addi r4, r1, 0xd8
/* 80A896FC  4B 5E AD A5 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80A89700  D0 3D 06 BC */	stfs f1, 0x6bc(r29)
/* 80A89704  38 61 00 84 */	addi r3, r1, 0x84
/* 80A89708  38 81 00 08 */	addi r4, r1, 8
/* 80A8970C  4B 7D E6 1D */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80A89710  7F C3 F3 78 */	mr r3, r30
/* 80A89714  38 81 00 84 */	addi r4, r1, 0x84
/* 80A89718  4B 5E AD 89 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80A8971C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80A89720  C0 5D 06 BC */	lfs f2, 0x6bc(r29)
/* 80A89724  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80A89728  4C 40 13 82 */	cror 2, 0, 2
/* 80A8972C  40 82 00 4C */	bne lbl_80A89778
/* 80A89730  EC 42 08 28 */	fsubs f2, f2, f1
/* 80A89734  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80A89738  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80A8973C  C0 1D 06 E0 */	lfs f0, 0x6e0(r29)
/* 80A89740  EC 01 00 32 */	fmuls f0, f1, f0
/* 80A89744  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A89748  40 81 00 30 */	ble lbl_80A89778
/* 80A8974C  38 61 00 14 */	addi r3, r1, 0x14
/* 80A89750  38 80 FF FF */	li r4, -1
/* 80A89754  4B 5E E5 89 */	bl __dt__11dBgS_LinChkFv
/* 80A89758  38 61 00 84 */	addi r3, r1, 0x84
/* 80A8975C  38 80 FF FF */	li r4, -1
/* 80A89760  4B 5E DE 91 */	bl __dt__11dBgS_GndChkFv
/* 80A89764  38 61 00 D8 */	addi r3, r1, 0xd8
/* 80A89768  38 80 FF FF */	li r4, -1
/* 80A8976C  4B 5E E0 DD */	bl __dt__18dBgS_ObjGndChk_SplFv
/* 80A89770  38 60 00 01 */	li r3, 1
/* 80A89774  48 00 00 2C */	b lbl_80A897A0
lbl_80A89778:
/* 80A89778  38 61 00 14 */	addi r3, r1, 0x14
/* 80A8977C  38 80 FF FF */	li r4, -1
/* 80A89780  4B 5E E5 5D */	bl __dt__11dBgS_LinChkFv
/* 80A89784  38 61 00 84 */	addi r3, r1, 0x84
/* 80A89788  38 80 FF FF */	li r4, -1
/* 80A8978C  4B 5E DE 65 */	bl __dt__11dBgS_GndChkFv
/* 80A89790  38 61 00 D8 */	addi r3, r1, 0xd8
/* 80A89794  38 80 FF FF */	li r4, -1
/* 80A89798  4B 5E E0 B1 */	bl __dt__18dBgS_ObjGndChk_SplFv
/* 80A8979C  38 60 00 00 */	li r3, 0
lbl_80A897A0:
/* 80A897A0  E3 E1 01 48 */	psq_l f31, 328(r1), 0, 0 /* qr0 */
/* 80A897A4  CB E1 01 40 */	lfd f31, 0x140(r1)
/* 80A897A8  39 61 01 40 */	addi r11, r1, 0x140
/* 80A897AC  4B 8D 8A 7D */	bl _restgpr_29
/* 80A897B0  80 01 01 54 */	lwz r0, 0x154(r1)
/* 80A897B4  7C 08 03 A6 */	mtlr r0
/* 80A897B8  38 21 01 50 */	addi r1, r1, 0x150
/* 80A897BC  4E 80 00 20 */	blr 
