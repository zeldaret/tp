lbl_80C495A4:
/* 80C495A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C495A8  7C 08 02 A6 */	mflr r0
/* 80C495AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C495B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C495B4  7C 7F 1B 78 */	mr r31, r3
/* 80C495B8  88 03 05 E9 */	lbz r0, 0x5e9(r3)
/* 80C495BC  2C 00 00 01 */	cmpwi r0, 1
/* 80C495C0  41 82 00 84 */	beq lbl_80C49644
/* 80C495C4  40 80 00 EC */	bge lbl_80C496B0
/* 80C495C8  2C 00 00 00 */	cmpwi r0, 0
/* 80C495CC  40 80 00 0C */	bge lbl_80C495D8
/* 80C495D0  48 00 00 E0 */	b lbl_80C496B0
/* 80C495D4  48 00 00 DC */	b lbl_80C496B0
lbl_80C495D8:
/* 80C495D8  38 00 00 01 */	li r0, 1
/* 80C495DC  98 1F 05 E9 */	stb r0, 0x5e9(r31)
/* 80C495E0  48 00 00 F1 */	bl anmInit__12daObjKshtr_cFv
/* 80C495E4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C495E8  7C 03 07 74 */	extsb r3, r0
/* 80C495EC  4B 3E 3A 80 */	b dComIfGp_getReverb__Fi
/* 80C495F0  7C 67 1B 78 */	mr r7, r3
/* 80C495F4  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800C7@ha */
/* 80C495F8  38 03 00 C7 */	addi r0, r3, 0x00C7 /* 0x000800C7@l */
/* 80C495FC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C49600  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C49604  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C49608  80 63 00 00 */	lwz r3, 0(r3)
/* 80C4960C  38 81 00 0C */	addi r4, r1, 0xc
/* 80C49610  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C49614  38 C0 00 00 */	li r6, 0
/* 80C49618  3D 00 80 C5 */	lis r8, lit_3842@ha
/* 80C4961C  C0 28 9D 10 */	lfs f1, lit_3842@l(r8)
/* 80C49620  FC 40 08 90 */	fmr f2, f1
/* 80C49624  3D 00 80 C5 */	lis r8, lit_4190@ha
/* 80C49628  C0 68 9D 20 */	lfs f3, lit_4190@l(r8)
/* 80C4962C  FC 80 18 90 */	fmr f4, f3
/* 80C49630  39 00 00 00 */	li r8, 0
/* 80C49634  4B 66 23 50 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C49638  7F E3 FB 78 */	mr r3, r31
/* 80C4963C  4B FF E8 19 */	bl offDzb__12daObjKshtr_cFv
/* 80C49640  48 00 00 70 */	b lbl_80C496B0
lbl_80C49644:
/* 80C49644  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80C49648  4B 3C 3D E0 */	b play__14mDoExt_baseAnmFv
/* 80C4964C  2C 03 00 00 */	cmpwi r3, 0
/* 80C49650  41 82 00 60 */	beq lbl_80C496B0
/* 80C49654  38 00 00 02 */	li r0, 2
/* 80C49658  98 1F 05 E9 */	stb r0, 0x5e9(r31)
/* 80C4965C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C49660  7C 03 07 74 */	extsb r3, r0
/* 80C49664  4B 3E 3A 08 */	b dComIfGp_getReverb__Fi
/* 80C49668  7C 67 1B 78 */	mr r7, r3
/* 80C4966C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800B4@ha */
/* 80C49670  38 03 00 B4 */	addi r0, r3, 0x00B4 /* 0x000800B4@l */
/* 80C49674  90 01 00 08 */	stw r0, 8(r1)
/* 80C49678  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C4967C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C49680  80 63 00 00 */	lwz r3, 0(r3)
/* 80C49684  38 81 00 08 */	addi r4, r1, 8
/* 80C49688  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C4968C  38 C0 00 00 */	li r6, 0
/* 80C49690  3D 00 80 C5 */	lis r8, lit_3842@ha
/* 80C49694  C0 28 9D 10 */	lfs f1, lit_3842@l(r8)
/* 80C49698  FC 40 08 90 */	fmr f2, f1
/* 80C4969C  3D 00 80 C5 */	lis r8, lit_4190@ha
/* 80C496A0  C0 68 9D 20 */	lfs f3, lit_4190@l(r8)
/* 80C496A4  FC 80 18 90 */	fmr f4, f3
/* 80C496A8  39 00 00 00 */	li r8, 0
/* 80C496AC  4B 66 22 D8 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C496B0:
/* 80C496B0  38 60 00 00 */	li r3, 0
/* 80C496B4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C496B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C496BC  7C 08 03 A6 */	mtlr r0
/* 80C496C0  38 21 00 20 */	addi r1, r1, 0x20
/* 80C496C4  4E 80 00 20 */	blr 
