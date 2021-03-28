lbl_80CC0440:
/* 80CC0440  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CC0444  7C 08 02 A6 */	mflr r0
/* 80CC0448  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CC044C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CC0450  7C 7F 1B 78 */	mr r31, r3
/* 80CC0454  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 80CC0458  54 00 04 21 */	rlwinm. r0, r0, 0, 0x10, 0x10
/* 80CC045C  41 82 00 70 */	beq lbl_80CC04CC
/* 80CC0460  88 1F 05 AE */	lbz r0, 0x5ae(r31)
/* 80CC0464  28 00 00 00 */	cmplwi r0, 0
/* 80CC0468  40 82 00 CC */	bne lbl_80CC0534
/* 80CC046C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CC0470  7C 03 07 74 */	extsb r3, r0
/* 80CC0474  4B 36 CB F8 */	b dComIfGp_getReverb__Fi
/* 80CC0478  7C 67 1B 78 */	mr r7, r3
/* 80CC047C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801A7@ha */
/* 80CC0480  38 03 01 A7 */	addi r0, r3, 0x01A7 /* 0x000801A7@l */
/* 80CC0484  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CC0488  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CC048C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CC0490  80 63 00 00 */	lwz r3, 0(r3)
/* 80CC0494  38 81 00 0C */	addi r4, r1, 0xc
/* 80CC0498  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80CC049C  38 C0 00 00 */	li r6, 0
/* 80CC04A0  3D 00 80 CC */	lis r8, lit_3922@ha
/* 80CC04A4  C0 28 08 44 */	lfs f1, lit_3922@l(r8)
/* 80CC04A8  FC 40 08 90 */	fmr f2, f1
/* 80CC04AC  3D 00 80 CC */	lis r8, lit_3940@ha
/* 80CC04B0  C0 68 08 54 */	lfs f3, lit_3940@l(r8)
/* 80CC04B4  FC 80 18 90 */	fmr f4, f3
/* 80CC04B8  39 00 00 00 */	li r8, 0
/* 80CC04BC  4B 5E B4 C8 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CC04C0  38 00 00 01 */	li r0, 1
/* 80CC04C4  98 1F 05 AE */	stb r0, 0x5ae(r31)
/* 80CC04C8  48 00 00 6C */	b lbl_80CC0534
lbl_80CC04CC:
/* 80CC04CC  88 1F 05 AE */	lbz r0, 0x5ae(r31)
/* 80CC04D0  28 00 00 00 */	cmplwi r0, 0
/* 80CC04D4  41 82 00 60 */	beq lbl_80CC0534
/* 80CC04D8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CC04DC  7C 03 07 74 */	extsb r3, r0
/* 80CC04E0  4B 36 CB 8C */	b dComIfGp_getReverb__Fi
/* 80CC04E4  7C 67 1B 78 */	mr r7, r3
/* 80CC04E8  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801A7@ha */
/* 80CC04EC  38 03 01 A7 */	addi r0, r3, 0x01A7 /* 0x000801A7@l */
/* 80CC04F0  90 01 00 08 */	stw r0, 8(r1)
/* 80CC04F4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CC04F8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CC04FC  80 63 00 00 */	lwz r3, 0(r3)
/* 80CC0500  38 81 00 08 */	addi r4, r1, 8
/* 80CC0504  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80CC0508  38 C0 00 00 */	li r6, 0
/* 80CC050C  3D 00 80 CC */	lis r8, lit_3922@ha
/* 80CC0510  C0 28 08 44 */	lfs f1, lit_3922@l(r8)
/* 80CC0514  FC 40 08 90 */	fmr f2, f1
/* 80CC0518  3D 00 80 CC */	lis r8, lit_3940@ha
/* 80CC051C  C0 68 08 54 */	lfs f3, lit_3940@l(r8)
/* 80CC0520  FC 80 18 90 */	fmr f4, f3
/* 80CC0524  39 00 00 00 */	li r8, 0
/* 80CC0528  4B 5E B4 5C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CC052C  38 00 00 00 */	li r0, 0
/* 80CC0530  98 1F 05 AE */	stb r0, 0x5ae(r31)
lbl_80CC0534:
/* 80CC0534  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CC0538  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CC053C  7C 08 03 A6 */	mtlr r0
/* 80CC0540  38 21 00 20 */	addi r1, r1, 0x20
/* 80CC0544  4E 80 00 20 */	blr 
