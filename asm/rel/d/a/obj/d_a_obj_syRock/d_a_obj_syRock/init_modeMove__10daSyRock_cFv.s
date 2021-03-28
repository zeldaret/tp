lbl_80D034E8:
/* 80D034E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D034EC  7C 08 02 A6 */	mflr r0
/* 80D034F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D034F4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D034F8  7C 7F 1B 78 */	mr r31, r3
/* 80D034FC  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 80D03500  7C 03 07 74 */	extsb r3, r0
/* 80D03504  4B 32 9B 68 */	b dComIfGp_getReverb__Fi
/* 80D03508  7C 67 1B 78 */	mr r7, r3
/* 80D0350C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080166@ha */
/* 80D03510  38 03 01 66 */	addi r0, r3, 0x0166 /* 0x00080166@l */
/* 80D03514  90 01 00 08 */	stw r0, 8(r1)
/* 80D03518  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D0351C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D03520  80 63 00 00 */	lwz r3, 0(r3)
/* 80D03524  38 81 00 08 */	addi r4, r1, 8
/* 80D03528  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D0352C  38 C0 00 00 */	li r6, 0
/* 80D03530  3D 00 80 D0 */	lis r8, lit_4014@ha
/* 80D03534  C0 28 40 00 */	lfs f1, lit_4014@l(r8)
/* 80D03538  FC 40 08 90 */	fmr f2, f1
/* 80D0353C  3D 00 80 D0 */	lis r8, lit_4015@ha
/* 80D03540  C0 68 40 04 */	lfs f3, lit_4015@l(r8)
/* 80D03544  FC 80 18 90 */	fmr f4, f3
/* 80D03548  39 00 00 00 */	li r8, 0
/* 80D0354C  4B 5A 84 38 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D03550  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80D03554  28 04 00 00 */	cmplwi r4, 0
/* 80D03558  41 82 00 18 */	beq lbl_80D03570
/* 80D0355C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D03560  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D03564  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D03568  7F E5 FB 78 */	mr r5, r31
/* 80D0356C  4B 37 14 9C */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
lbl_80D03570:
/* 80D03570  38 00 00 01 */	li r0, 1
/* 80D03574  80 7F 09 94 */	lwz r3, 0x994(r31)
/* 80D03578  98 03 0B 79 */	stb r0, 0xb79(r3)
/* 80D0357C  3C 60 80 D0 */	lis r3, l_HIO@ha
/* 80D03580  38 63 42 6C */	addi r3, r3, l_HIO@l
/* 80D03584  C0 03 00 04 */	lfs f0, 4(r3)
/* 80D03588  D0 1F 07 54 */	stfs f0, 0x754(r31)
/* 80D0358C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80D03590  D0 1F 07 5C */	stfs f0, 0x75c(r31)
/* 80D03594  C0 03 00 08 */	lfs f0, 8(r3)
/* 80D03598  D0 1F 07 58 */	stfs f0, 0x758(r31)
/* 80D0359C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80D035A0  D0 1F 07 60 */	stfs f0, 0x760(r31)
/* 80D035A4  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80D035A8  D0 1F 07 64 */	stfs f0, 0x764(r31)
/* 80D035AC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80D035B0  D0 1F 07 68 */	stfs f0, 0x768(r31)
/* 80D035B4  80 1F 06 08 */	lwz r0, 0x608(r31)
/* 80D035B8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80D035BC  90 1F 06 08 */	stw r0, 0x608(r31)
/* 80D035C0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D035C4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D035C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D035CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D035D0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D035D4  7C 05 07 74 */	extsb r5, r0
/* 80D035D8  4B 33 1C 28 */	b onSwitch__10dSv_info_cFii
/* 80D035DC  38 00 00 04 */	li r0, 4
/* 80D035E0  98 1F 05 C8 */	stb r0, 0x5c8(r31)
/* 80D035E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D035E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D035EC  7C 08 03 A6 */	mtlr r0
/* 80D035F0  38 21 00 20 */	addi r1, r1, 0x20
/* 80D035F4  4E 80 00 20 */	blr 
