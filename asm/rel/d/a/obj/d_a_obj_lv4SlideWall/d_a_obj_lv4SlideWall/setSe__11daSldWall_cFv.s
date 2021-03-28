lbl_80C623E0:
/* 80C623E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C623E4  7C 08 02 A6 */	mflr r0
/* 80C623E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C623EC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C623F0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C623F4  7C 7E 1B 78 */	mr r30, r3
/* 80C623F8  3C 60 80 C6 */	lis r3, lit_3627@ha
/* 80C623FC  3B E3 26 A8 */	addi r31, r3, lit_3627@l
/* 80C62400  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C62404  7C 03 07 74 */	extsb r3, r0
/* 80C62408  4B 3C AC 64 */	b dComIfGp_getReverb__Fi
/* 80C6240C  7C 67 1B 78 */	mr r7, r3
/* 80C62410  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801B2@ha */
/* 80C62414  38 03 01 B2 */	addi r0, r3, 0x01B2 /* 0x000801B2@l */
/* 80C62418  90 01 00 08 */	stw r0, 8(r1)
/* 80C6241C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C62420  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C62424  80 63 00 00 */	lwz r3, 0(r3)
/* 80C62428  38 81 00 08 */	addi r4, r1, 8
/* 80C6242C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C62430  38 C0 00 00 */	li r6, 0
/* 80C62434  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80C62438  FC 40 08 90 */	fmr f2, f1
/* 80C6243C  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 80C62440  FC 80 18 90 */	fmr f4, f3
/* 80C62444  39 00 00 00 */	li r8, 0
/* 80C62448  4B 64 95 3C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C6244C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80C62450  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C62454  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80C62458  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C6245C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80C62460  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C62464  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C62468  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C6246C  3C 80 80 C6 */	lis r4, l_HIO@ha
/* 80C62470  38 84 27 DC */	addi r4, r4, l_HIO@l
/* 80C62474  88 84 00 0C */	lbz r4, 0xc(r4)
/* 80C62478  38 A0 00 0F */	li r5, 0xf
/* 80C6247C  38 C1 00 0C */	addi r6, r1, 0xc
/* 80C62480  4B 40 D5 A4 */	b StartShock__12dVibration_cFii4cXyz
/* 80C62484  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C62488  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C6248C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C62490  7C 08 03 A6 */	mtlr r0
/* 80C62494  38 21 00 20 */	addi r1, r1, 0x20
/* 80C62498  4E 80 00 20 */	blr 
