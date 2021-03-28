lbl_80CF73E0:
/* 80CF73E0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80CF73E4  7C 08 02 A6 */	mflr r0
/* 80CF73E8  90 01 00 54 */	stw r0, 0x54(r1)
/* 80CF73EC  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80CF73F0  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80CF73F4  39 61 00 40 */	addi r11, r1, 0x40
/* 80CF73F8  4B 66 AD D8 */	b _savegpr_26
/* 80CF73FC  7C 7E 1B 78 */	mr r30, r3
/* 80CF7400  3C 60 80 D0 */	lis r3, cNullVec__6Z2Calc@ha
/* 80CF7404  38 C3 84 68 */	addi r6, r3, cNullVec__6Z2Calc@l
/* 80CF7408  3C 60 80 D0 */	lis r3, l_sph_src_at@ha
/* 80CF740C  3B E3 83 A0 */	addi r31, r3, l_sph_src_at@l
/* 80CF7410  3C 60 80 D0 */	lis r3, data_80CF8630@ha
/* 80CF7414  38 A3 86 30 */	addi r5, r3, data_80CF8630@l
/* 80CF7418  88 05 00 00 */	lbz r0, 0(r5)
/* 80CF741C  7C 00 07 75 */	extsb. r0, r0
/* 80CF7420  40 82 00 70 */	bne lbl_80CF7490
/* 80CF7424  80 66 00 80 */	lwz r3, 0x80(r6)
/* 80CF7428  80 06 00 84 */	lwz r0, 0x84(r6)
/* 80CF742C  90 66 00 B0 */	stw r3, 0xb0(r6)
/* 80CF7430  90 06 00 B4 */	stw r0, 0xb4(r6)
/* 80CF7434  80 06 00 88 */	lwz r0, 0x88(r6)
/* 80CF7438  90 06 00 B8 */	stw r0, 0xb8(r6)
/* 80CF743C  38 86 00 B0 */	addi r4, r6, 0xb0
/* 80CF7440  80 66 00 8C */	lwz r3, 0x8c(r6)
/* 80CF7444  80 06 00 90 */	lwz r0, 0x90(r6)
/* 80CF7448  90 64 00 0C */	stw r3, 0xc(r4)
/* 80CF744C  90 04 00 10 */	stw r0, 0x10(r4)
/* 80CF7450  80 06 00 94 */	lwz r0, 0x94(r6)
/* 80CF7454  90 04 00 14 */	stw r0, 0x14(r4)
/* 80CF7458  80 66 00 98 */	lwz r3, 0x98(r6)
/* 80CF745C  80 06 00 9C */	lwz r0, 0x9c(r6)
/* 80CF7460  90 64 00 18 */	stw r3, 0x18(r4)
/* 80CF7464  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80CF7468  80 06 00 A0 */	lwz r0, 0xa0(r6)
/* 80CF746C  90 04 00 20 */	stw r0, 0x20(r4)
/* 80CF7470  80 66 00 A4 */	lwz r3, 0xa4(r6)
/* 80CF7474  80 06 00 A8 */	lwz r0, 0xa8(r6)
/* 80CF7478  90 64 00 24 */	stw r3, 0x24(r4)
/* 80CF747C  90 04 00 28 */	stw r0, 0x28(r4)
/* 80CF7480  80 06 00 AC */	lwz r0, 0xac(r6)
/* 80CF7484  90 04 00 2C */	stw r0, 0x2c(r4)
/* 80CF7488  38 00 00 01 */	li r0, 1
/* 80CF748C  98 05 00 00 */	stb r0, 0(r5)
lbl_80CF7490:
/* 80CF7490  C3 FE 0A DC */	lfs f31, 0xadc(r30)
/* 80CF7494  7F C3 F3 78 */	mr r3, r30
/* 80CF7498  88 1E 0A E0 */	lbz r0, 0xae0(r30)
/* 80CF749C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80CF74A0  39 86 00 B0 */	addi r12, r6, 0xb0
/* 80CF74A4  7D 8C 02 14 */	add r12, r12, r0
/* 80CF74A8  4B 66 AB DC */	b __ptmf_scall
/* 80CF74AC  60 00 00 00 */	nop 
/* 80CF74B0  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80CF74B4  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 80CF74B8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80CF74BC  EC 21 00 2A */	fadds f1, f1, f0
/* 80CF74C0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80CF74C4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CF74C8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80CF74CC  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80CF74D0  3B 40 00 00 */	li r26, 0
/* 80CF74D4  3B A0 00 00 */	li r29, 0
/* 80CF74D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF74DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CF74E0  3B 63 23 3C */	addi r27, r3, 0x233c
lbl_80CF74E4:
/* 80CF74E4  7F 9E EA 14 */	add r28, r30, r29
/* 80CF74E8  38 7C 08 54 */	addi r3, r28, 0x854
/* 80CF74EC  38 81 00 0C */	addi r4, r1, 0xc
/* 80CF74F0  4B 57 81 58 */	b SetC__8cM3dGSphFRC4cXyz
/* 80CF74F4  7F 63 DB 78 */	mr r3, r27
/* 80CF74F8  38 9C 07 30 */	addi r4, r28, 0x730
/* 80CF74FC  4B 56 D6 AC */	b Set__4cCcSFP8cCcD_Obj
/* 80CF7500  3B 5A 00 01 */	addi r26, r26, 1
/* 80CF7504  2C 1A 00 02 */	cmpwi r26, 2
/* 80CF7508  3B BD 01 38 */	addi r29, r29, 0x138
/* 80CF750C  41 80 FF D8 */	blt lbl_80CF74E4
/* 80CF7510  38 7E 0A C4 */	addi r3, r30, 0xac4
/* 80CF7514  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80CF7518  4B 57 7C C4 */	b SetC__8cM3dGCylFRC4cXyz
/* 80CF751C  7F 63 DB 78 */	mr r3, r27
/* 80CF7520  38 9E 09 A0 */	addi r4, r30, 0x9a0
/* 80CF7524  4B 56 D6 84 */	b Set__4cCcSFP8cCcD_Obj
/* 80CF7528  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80CF752C  D0 1E 0A EC */	stfs f0, 0xaec(r30)
/* 80CF7530  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80CF7534  D0 1E 0A F0 */	stfs f0, 0xaf0(r30)
/* 80CF7538  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80CF753C  D0 1E 0A F4 */	stfs f0, 0xaf4(r30)
/* 80CF7540  C0 1E 0A DC */	lfs f0, 0xadc(r30)
/* 80CF7544  D0 1E 0A F8 */	stfs f0, 0xaf8(r30)
/* 80CF7548  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80CF754C  C0 3E 0A DC */	lfs f1, 0xadc(r30)
/* 80CF7550  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80CF7554  41 82 00 18 */	beq lbl_80CF756C
/* 80CF7558  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80CF755C  40 82 00 10 */	bne lbl_80CF756C
/* 80CF7560  38 7E 0A EC */	addi r3, r30, 0xaec
/* 80CF7564  4B 4B 02 B0 */	b dKy_dalkmist_inf_set__FP18DALKMIST_INFLUENCE
/* 80CF7568  48 00 00 20 */	b lbl_80CF7588
lbl_80CF756C:
/* 80CF756C  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80CF7570  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80CF7574  40 82 00 14 */	bne lbl_80CF7588
/* 80CF7578  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80CF757C  41 82 00 0C */	beq lbl_80CF7588
/* 80CF7580  38 7E 0A EC */	addi r3, r30, 0xaec
/* 80CF7584  4B 4B 02 E4 */	b dKy_dalkmist_inf_cut__FP18DALKMIST_INFLUENCE
lbl_80CF7588:
/* 80CF7588  C0 5F 00 8C */	lfs f2, 0x8c(r31)
/* 80CF758C  C0 3E 0A DC */	lfs f1, 0xadc(r30)
/* 80CF7590  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80CF7594  EC 01 00 24 */	fdivs f0, f1, f0
/* 80CF7598  EC 02 00 32 */	fmuls f0, f2, f0
/* 80CF759C  FC 00 00 1E */	fctiwz f0, f0
/* 80CF75A0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80CF75A4  83 41 00 1C */	lwz r26, 0x1c(r1)
/* 80CF75A8  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 80CF75AC  41 82 00 50 */	beq lbl_80CF75FC
/* 80CF75B0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CF75B4  7C 03 07 74 */	extsb r3, r0
/* 80CF75B8  4B 33 5A B4 */	b dComIfGp_getReverb__Fi
/* 80CF75BC  7C 67 1B 78 */	mr r7, r3
/* 80CF75C0  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080212@ha */
/* 80CF75C4  38 03 02 12 */	addi r0, r3, 0x0212 /* 0x00080212@l */
/* 80CF75C8  90 01 00 08 */	stw r0, 8(r1)
/* 80CF75CC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CF75D0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CF75D4  80 63 00 00 */	lwz r3, 0(r3)
/* 80CF75D8  38 81 00 08 */	addi r4, r1, 8
/* 80CF75DC  38 BE 05 38 */	addi r5, r30, 0x538
/* 80CF75E0  57 46 06 3E */	clrlwi r6, r26, 0x18
/* 80CF75E4  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80CF75E8  FC 40 08 90 */	fmr f2, f1
/* 80CF75EC  C0 7F 00 94 */	lfs f3, 0x94(r31)
/* 80CF75F0  FC 80 18 90 */	fmr f4, f3
/* 80CF75F4  39 00 00 00 */	li r8, 0
/* 80CF75F8  4B 5B 4F 14 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80CF75FC:
/* 80CF75FC  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80CF7600  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80CF7604  39 61 00 40 */	addi r11, r1, 0x40
/* 80CF7608  4B 66 AC 14 */	b _restgpr_26
/* 80CF760C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80CF7610  7C 08 03 A6 */	mtlr r0
/* 80CF7614  38 21 00 50 */	addi r1, r1, 0x50
/* 80CF7618  4E 80 00 20 */	blr 
