lbl_806954D4:
/* 806954D4  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 806954D8  7C 08 02 A6 */	mflr r0
/* 806954DC  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 806954E0  39 61 00 E0 */	addi r11, r1, 0xe0
/* 806954E4  4B CC CC F0 */	b _savegpr_27
/* 806954E8  7C 7F 1B 78 */	mr r31, r3
/* 806954EC  3C 60 80 69 */	lis r3, lit_3829@ha
/* 806954F0  3B A3 7C A0 */	addi r29, r3, lit_3829@l
/* 806954F4  38 61 00 50 */	addi r3, r1, 0x50
/* 806954F8  4B 9E 27 70 */	b __ct__11dBgS_LinChkFv
/* 806954FC  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80695500  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80695504  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80695508  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8069550C  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80695510  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80695514  C0 1D 00 38 */	lfs f0, 0x38(r29)
/* 80695518  EC 01 00 2A */	fadds f0, f1, f0
/* 8069551C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80695520  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80695524  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80695528  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8069552C  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80695530  C0 7F 00 20 */	lfs f3, 0x20(r31)
/* 80695534  4B CB 13 B4 */	b PSMTXTrans
/* 80695538  C0 3D 00 28 */	lfs f1, 0x28(r29)
/* 8069553C  C0 5D 00 3C */	lfs f2, 0x3c(r29)
/* 80695540  C0 7D 00 08 */	lfs f3, 8(r29)
/* 80695544  4B 97 78 58 */	b transM__14mDoMtx_stack_cFfff
/* 80695548  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8069554C  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l
/* 80695550  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80695554  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80695558  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 8069555C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80695560  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80695564  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80695568  C0 3D 00 40 */	lfs f1, 0x40(r29)
/* 8069556C  C0 5D 00 08 */	lfs f2, 8(r29)
/* 80695570  FC 60 10 90 */	fmr f3, f2
/* 80695574  4B 97 78 28 */	b transM__14mDoMtx_stack_cFfff
/* 80695578  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8069557C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80695580  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80695584  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80695588  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 8069558C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80695590  3B 60 00 00 */	li r27, 0
/* 80695594  38 61 00 50 */	addi r3, r1, 0x50
/* 80695598  38 81 00 20 */	addi r4, r1, 0x20
/* 8069559C  38 A1 00 38 */	addi r5, r1, 0x38
/* 806955A0  38 C0 00 00 */	li r6, 0
/* 806955A4  4B 9E 27 C0 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806955A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806955AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806955B0  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 806955B4  7F 83 E3 78 */	mr r3, r28
/* 806955B8  38 81 00 50 */	addi r4, r1, 0x50
/* 806955BC  4B 9D ED F8 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 806955C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806955C4  41 82 00 60 */	beq lbl_80695624
/* 806955C8  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 806955CC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806955D0  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 806955D4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806955D8  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 806955DC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806955E0  38 61 00 50 */	addi r3, r1, 0x50
/* 806955E4  38 81 00 20 */	addi r4, r1, 0x20
/* 806955E8  38 A1 00 2C */	addi r5, r1, 0x2c
/* 806955EC  38 C0 00 00 */	li r6, 0
/* 806955F0  4B 9E 27 74 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806955F4  7F 83 E3 78 */	mr r3, r28
/* 806955F8  38 81 00 50 */	addi r4, r1, 0x50
/* 806955FC  4B 9D ED B8 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80695600  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80695604  41 82 00 20 */	beq lbl_80695624
/* 80695608  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 8069560C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80695610  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80695614  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80695618  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 8069561C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80695620  3B 60 00 01 */	li r27, 1
lbl_80695624:
/* 80695624  7F 60 07 75 */	extsb. r0, r27
/* 80695628  41 82 00 58 */	beq lbl_80695680
/* 8069562C  38 61 00 14 */	addi r3, r1, 0x14
/* 80695630  38 81 00 38 */	addi r4, r1, 0x38
/* 80695634  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80695638  4B BD 14 FC */	b __mi__4cXyzCFRC3Vec
/* 8069563C  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80695640  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80695644  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80695648  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8069564C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80695650  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80695654  EC 21 00 72 */	fmuls f1, f1, f1
/* 80695658  EC 00 00 32 */	fmuls f0, f0, f0
/* 8069565C  EC 41 00 2A */	fadds f2, f1, f0
/* 80695660  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80695664  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80695668  40 81 00 0C */	ble lbl_80695674
/* 8069566C  FC 00 10 34 */	frsqrte f0, f2
/* 80695670  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80695674:
/* 80695674  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 80695678  4B BD 1F FC */	b cM_atan2s__Fff
/* 8069567C  B0 7F 00 46 */	sth r3, 0x46(r31)
lbl_80695680:
/* 80695680  C0 3D 00 28 */	lfs f1, 0x28(r29)
/* 80695684  C0 5D 00 08 */	lfs f2, 8(r29)
/* 80695688  FC 60 08 90 */	fmr f3, f1
/* 8069568C  4B 97 77 10 */	b transM__14mDoMtx_stack_cFfff
/* 80695690  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80695694  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80695698  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 8069569C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806956A0  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 806956A4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806956A8  C0 3D 00 08 */	lfs f1, 8(r29)
/* 806956AC  FC 40 08 90 */	fmr f2, f1
/* 806956B0  C0 7D 00 40 */	lfs f3, 0x40(r29)
/* 806956B4  4B 97 76 E8 */	b transM__14mDoMtx_stack_cFfff
/* 806956B8  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 806956BC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806956C0  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 806956C4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806956C8  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 806956CC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806956D0  3B C0 00 00 */	li r30, 0
/* 806956D4  38 61 00 50 */	addi r3, r1, 0x50
/* 806956D8  38 81 00 20 */	addi r4, r1, 0x20
/* 806956DC  38 A1 00 38 */	addi r5, r1, 0x38
/* 806956E0  38 C0 00 00 */	li r6, 0
/* 806956E4  4B 9E 26 80 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806956E8  7F 83 E3 78 */	mr r3, r28
/* 806956EC  38 81 00 50 */	addi r4, r1, 0x50
/* 806956F0  4B 9D EC C4 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 806956F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806956F8  41 82 00 60 */	beq lbl_80695758
/* 806956FC  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80695700  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80695704  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80695708  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8069570C  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 80695710  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80695714  38 61 00 50 */	addi r3, r1, 0x50
/* 80695718  38 81 00 20 */	addi r4, r1, 0x20
/* 8069571C  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80695720  38 C0 00 00 */	li r6, 0
/* 80695724  4B 9E 26 40 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80695728  7F 83 E3 78 */	mr r3, r28
/* 8069572C  38 81 00 50 */	addi r4, r1, 0x50
/* 80695730  4B 9D EC 84 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80695734  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80695738  41 82 00 20 */	beq lbl_80695758
/* 8069573C  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80695740  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80695744  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80695748  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8069574C  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 80695750  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80695754  3B C0 00 01 */	li r30, 1
lbl_80695758:
/* 80695758  7F C0 07 75 */	extsb. r0, r30
/* 8069575C  41 82 00 5C */	beq lbl_806957B8
/* 80695760  38 61 00 08 */	addi r3, r1, 8
/* 80695764  38 81 00 38 */	addi r4, r1, 0x38
/* 80695768  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8069576C  4B BD 13 C8 */	b __mi__4cXyzCFRC3Vec
/* 80695770  C0 21 00 08 */	lfs f1, 8(r1)
/* 80695774  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80695778  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8069577C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80695780  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80695784  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80695788  EC 21 00 72 */	fmuls f1, f1, f1
/* 8069578C  EC 00 00 32 */	fmuls f0, f0, f0
/* 80695790  EC 41 00 2A */	fadds f2, f1, f0
/* 80695794  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80695798  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8069579C  40 81 00 0C */	ble lbl_806957A8
/* 806957A0  FC 00 10 34 */	frsqrte f0, f2
/* 806957A4  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_806957A8:
/* 806957A8  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 806957AC  4B BD 1E C8 */	b cM_atan2s__Fff
/* 806957B0  7C 03 00 D0 */	neg r0, r3
/* 806957B4  B0 1F 00 44 */	sth r0, 0x44(r31)
lbl_806957B8:
/* 806957B8  38 61 00 50 */	addi r3, r1, 0x50
/* 806957BC  38 80 FF FF */	li r4, -1
/* 806957C0  4B 9E 25 1C */	b __dt__11dBgS_LinChkFv
/* 806957C4  39 61 00 E0 */	addi r11, r1, 0xe0
/* 806957C8  4B CC CA 58 */	b _restgpr_27
/* 806957CC  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 806957D0  7C 08 03 A6 */	mtlr r0
/* 806957D4  38 21 00 E0 */	addi r1, r1, 0xe0
/* 806957D8  4E 80 00 20 */	blr 
