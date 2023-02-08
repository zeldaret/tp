lbl_80BC7478:
/* 80BC7478  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BC747C  7C 08 02 A6 */	mflr r0
/* 80BC7480  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BC7484  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BC7488  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80BC748C  7C 7E 1B 78 */	mr r30, r3
/* 80BC7490  3C 60 80 BC */	lis r3, l_bmdIdx@ha /* 0x80BC7D18@ha */
/* 80BC7494  3B E3 7D 18 */	addi r31, r3, l_bmdIdx@l /* 0x80BC7D18@l */
/* 80BC7498  88 1E 05 AC */	lbz r0, 0x5ac(r30)
/* 80BC749C  28 00 00 00 */	cmplwi r0, 0
/* 80BC74A0  40 82 01 78 */	bne lbl_80BC7618
/* 80BC74A4  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 80BC74A8  3C 03 00 01 */	addis r0, r3, 1
/* 80BC74AC  28 00 FF FF */	cmplwi r0, 0xffff
/* 80BC74B0  40 82 00 14 */	bne lbl_80BC74C4
/* 80BC74B4  3C 60 80 BC */	lis r3, daObjCdoor_searchChain__FP10fopAc_ac_cPv@ha /* 0x80BC6EF0@ha */
/* 80BC74B8  38 63 6E F0 */	addi r3, r3, daObjCdoor_searchChain__FP10fopAc_ac_cPv@l /* 0x80BC6EF0@l */
/* 80BC74BC  7F C4 F3 78 */	mr r4, r30
/* 80BC74C0  4B 45 23 39 */	bl fopAcIt_Judge__FPFPvPv_PvPv
lbl_80BC74C4:
/* 80BC74C4  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 80BC74C8  3C 03 00 01 */	addis r0, r3, 1
/* 80BC74CC  28 00 FF FF */	cmplwi r0, 0xffff
/* 80BC74D0  41 82 01 48 */	beq lbl_80BC7618
/* 80BC74D4  90 61 00 0C */	stw r3, 0xc(r1)
/* 80BC74D8  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80BC74DC  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80BC74E0  38 81 00 0C */	addi r4, r1, 0xc
/* 80BC74E4  4B 45 23 15 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80BC74E8  28 03 00 00 */	cmplwi r3, 0
/* 80BC74EC  41 82 01 2C */	beq lbl_80BC7618
/* 80BC74F0  88 03 07 76 */	lbz r0, 0x776(r3)
/* 80BC74F4  28 00 00 00 */	cmplwi r0, 0
/* 80BC74F8  41 82 00 A4 */	beq lbl_80BC759C
/* 80BC74FC  38 00 FF FF */	li r0, -1
/* 80BC7500  90 1E 05 B8 */	stw r0, 0x5b8(r30)
/* 80BC7504  38 00 00 01 */	li r0, 1
/* 80BC7508  98 1E 05 AC */	stb r0, 0x5ac(r30)
/* 80BC750C  C0 3E 04 AC */	lfs f1, 0x4ac(r30)
/* 80BC7510  88 1E 05 AE */	lbz r0, 0x5ae(r30)
/* 80BC7514  54 00 10 3A */	slwi r0, r0, 2
/* 80BC7518  3C 60 80 BC */	lis r3, l_moveOffsetY@ha /* 0x80BC7D80@ha */
/* 80BC751C  38 63 7D 80 */	addi r3, r3, l_moveOffsetY@l /* 0x80BC7D80@l */
/* 80BC7520  7C 03 04 2E */	lfsx f0, r3, r0
/* 80BC7524  EC 01 00 2A */	fadds f0, f1, f0
/* 80BC7528  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80BC752C  88 1E 05 AD */	lbz r0, 0x5ad(r30)
/* 80BC7530  28 00 00 00 */	cmplwi r0, 0
/* 80BC7534  41 82 00 18 */	beq lbl_80BC754C
/* 80BC7538  4B 5B A1 09 */	bl dCam_getBody__Fv
/* 80BC753C  7F C4 F3 78 */	mr r4, r30
/* 80BC7540  4B 5B A0 5D */	bl ForceLockOff__9dCamera_cFP10fopAc_ac_c
/* 80BC7544  38 00 00 00 */	li r0, 0
/* 80BC7548  98 1E 05 AD */	stb r0, 0x5ad(r30)
lbl_80BC754C:
/* 80BC754C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BC7550  7C 03 07 74 */	extsb r3, r0
/* 80BC7554  4B 46 5B 19 */	bl dComIfGp_getReverb__Fi
/* 80BC7558  7C 67 1B 78 */	mr r7, r3
/* 80BC755C  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008009A@ha */
/* 80BC7560  38 03 00 9A */	addi r0, r3, 0x009A /* 0x0008009A@l */
/* 80BC7564  90 01 00 08 */	stw r0, 8(r1)
/* 80BC7568  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BC756C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BC7570  80 63 00 00 */	lwz r3, 0(r3)
/* 80BC7574  38 81 00 08 */	addi r4, r1, 8
/* 80BC7578  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BC757C  38 C0 00 00 */	li r6, 0
/* 80BC7580  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80BC7584  FC 40 08 90 */	fmr f2, f1
/* 80BC7588  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 80BC758C  FC 80 18 90 */	fmr f4, f3
/* 80BC7590  39 00 00 00 */	li r8, 0
/* 80BC7594  4B 6E 43 F1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BC7598  48 00 00 78 */	b lbl_80BC7610
lbl_80BC759C:
/* 80BC759C  C0 7E 04 AC */	lfs f3, 0x4ac(r30)
/* 80BC75A0  88 1E 05 AE */	lbz r0, 0x5ae(r30)
/* 80BC75A4  54 00 10 3A */	slwi r0, r0, 2
/* 80BC75A8  3C 80 80 BC */	lis r4, l_moveOffsetY@ha /* 0x80BC7D80@ha */
/* 80BC75AC  38 84 7D 80 */	addi r4, r4, l_moveOffsetY@l /* 0x80BC7D80@l */
/* 80BC75B0  7C 44 04 2E */	lfsx f2, r4, r0
/* 80BC75B4  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80BC75B8  C0 03 07 A0 */	lfs f0, 0x7a0(r3)
/* 80BC75BC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BC75C0  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BC75C4  EC 03 00 2A */	fadds f0, f3, f0
/* 80BC75C8  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80BC75CC  88 03 07 74 */	lbz r0, 0x774(r3)
/* 80BC75D0  28 00 00 00 */	cmplwi r0, 0
/* 80BC75D4  41 82 00 1C */	beq lbl_80BC75F0
/* 80BC75D8  4B 5B A0 69 */	bl dCam_getBody__Fv
/* 80BC75DC  7F C4 F3 78 */	mr r4, r30
/* 80BC75E0  4B 5B 9F 55 */	bl ForceLockOn__9dCamera_cFP10fopAc_ac_c
/* 80BC75E4  38 00 00 01 */	li r0, 1
/* 80BC75E8  98 1E 05 AD */	stb r0, 0x5ad(r30)
/* 80BC75EC  48 00 00 24 */	b lbl_80BC7610
lbl_80BC75F0:
/* 80BC75F0  88 1E 05 AD */	lbz r0, 0x5ad(r30)
/* 80BC75F4  28 00 00 00 */	cmplwi r0, 0
/* 80BC75F8  41 82 00 18 */	beq lbl_80BC7610
/* 80BC75FC  4B 5B A0 45 */	bl dCam_getBody__Fv
/* 80BC7600  7F C4 F3 78 */	mr r4, r30
/* 80BC7604  4B 5B 9F 99 */	bl ForceLockOff__9dCamera_cFP10fopAc_ac_c
/* 80BC7608  38 00 00 00 */	li r0, 0
/* 80BC760C  98 1E 05 AD */	stb r0, 0x5ad(r30)
lbl_80BC7610:
/* 80BC7610  7F C3 F3 78 */	mr r3, r30
/* 80BC7614  4B FF FD AD */	bl setMatrix__12daObjCdoor_cFv
lbl_80BC7618:
/* 80BC7618  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BC761C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80BC7620  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BC7624  7C 08 03 A6 */	mtlr r0
/* 80BC7628  38 21 00 20 */	addi r1, r1, 0x20
/* 80BC762C  4E 80 00 20 */	blr 
