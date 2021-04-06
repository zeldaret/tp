lbl_80C803D8:
/* 80C803D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C803DC  7C 08 02 A6 */	mflr r0
/* 80C803E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C803E4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C803E8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C803EC  7C 7F 1B 78 */	mr r31, r3
/* 80C803F0  3C 60 80 C8 */	lis r3, l_arcName@ha /* 0x80C81D24@ha */
/* 80C803F4  38 63 1D 24 */	addi r3, r3, l_arcName@l /* 0x80C81D24@l */
/* 80C803F8  80 63 00 00 */	lwz r3, 0(r3)
/* 80C803FC  38 80 00 14 */	li r4, 0x14
/* 80C80400  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C80404  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C80408  3C A5 00 02 */	addis r5, r5, 2
/* 80C8040C  38 C0 00 80 */	li r6, 0x80
/* 80C80410  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C80414  4B 3B BE D9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C80418  7C 65 1B 78 */	mr r5, r3
/* 80C8041C  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C80420  80 83 00 04 */	lwz r4, 4(r3)
/* 80C80424  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80C80428  38 84 00 58 */	addi r4, r4, 0x58
/* 80C8042C  38 C0 00 01 */	li r6, 1
/* 80C80430  38 E0 00 00 */	li r7, 0
/* 80C80434  3D 00 80 C8 */	lis r8, lit_3855@ha /* 0x80C81C48@ha */
/* 80C80438  C0 28 1C 48 */	lfs f1, lit_3855@l(r8)  /* 0x80C81C48@l */
/* 80C8043C  39 00 00 00 */	li r8, 0
/* 80C80440  39 20 FF FF */	li r9, -1
/* 80C80444  4B 38 D2 C9 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80C80448  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C8044C  7C 03 07 74 */	extsb r3, r0
/* 80C80450  4B 3A CC 1D */	bl dComIfGp_getReverb__Fi
/* 80C80454  7C 67 1B 78 */	mr r7, r3
/* 80C80458  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007023E@ha */
/* 80C8045C  38 03 02 3E */	addi r0, r3, 0x023E /* 0x0007023E@l */
/* 80C80460  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C80464  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C80468  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C8046C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C80470  38 81 00 0C */	addi r4, r1, 0xc
/* 80C80474  3B DF 05 38 */	addi r30, r31, 0x538
/* 80C80478  7F C5 F3 78 */	mr r5, r30
/* 80C8047C  38 C0 00 00 */	li r6, 0
/* 80C80480  3D 00 80 C8 */	lis r8, lit_3855@ha /* 0x80C81C48@ha */
/* 80C80484  C0 28 1C 48 */	lfs f1, lit_3855@l(r8)  /* 0x80C81C48@l */
/* 80C80488  FC 40 08 90 */	fmr f2, f1
/* 80C8048C  3D 00 80 C8 */	lis r8, lit_4276@ha /* 0x80C81C6C@ha */
/* 80C80490  C0 68 1C 6C */	lfs f3, lit_4276@l(r8)  /* 0x80C81C6C@l */
/* 80C80494  FC 80 18 90 */	fmr f4, f3
/* 80C80498  39 00 00 00 */	li r8, 0
/* 80C8049C  4B 62 B4 E9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C804A0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C804A4  7C 03 07 74 */	extsb r3, r0
/* 80C804A8  4B 3A CB C5 */	bl dComIfGp_getReverb__Fi
/* 80C804AC  7C 67 1B 78 */	mr r7, r3
/* 80C804B0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007023F@ha */
/* 80C804B4  38 03 02 3F */	addi r0, r3, 0x023F /* 0x0007023F@l */
/* 80C804B8  90 01 00 08 */	stw r0, 8(r1)
/* 80C804BC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C804C0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C804C4  80 63 00 00 */	lwz r3, 0(r3)
/* 80C804C8  38 81 00 08 */	addi r4, r1, 8
/* 80C804CC  7F C5 F3 78 */	mr r5, r30
/* 80C804D0  38 C0 00 00 */	li r6, 0
/* 80C804D4  3D 00 80 C8 */	lis r8, lit_3855@ha /* 0x80C81C48@ha */
/* 80C804D8  C0 28 1C 48 */	lfs f1, lit_3855@l(r8)  /* 0x80C81C48@l */
/* 80C804DC  FC 40 08 90 */	fmr f2, f1
/* 80C804E0  3D 00 80 C8 */	lis r8, lit_4276@ha /* 0x80C81C6C@ha */
/* 80C804E4  C0 68 1C 6C */	lfs f3, lit_4276@l(r8)  /* 0x80C81C6C@l */
/* 80C804E8  FC 80 18 90 */	fmr f4, f3
/* 80C804EC  39 00 00 00 */	li r8, 0
/* 80C804F0  4B 62 B4 95 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C804F4  38 00 00 00 */	li r0, 0
/* 80C804F8  98 1F 0A 11 */	stb r0, 0xa11(r31)
/* 80C804FC  98 1F 0A 16 */	stb r0, 0xa16(r31)
/* 80C80500  38 00 03 E8 */	li r0, 0x3e8
/* 80C80504  B0 1F 09 D8 */	sth r0, 0x9d8(r31)
/* 80C80508  A8 1F 09 D8 */	lha r0, 0x9d8(r31)
/* 80C8050C  B0 1F 09 D6 */	sth r0, 0x9d6(r31)
/* 80C80510  A8 1F 09 D8 */	lha r0, 0x9d8(r31)
/* 80C80514  B0 1F 09 DC */	sth r0, 0x9dc(r31)
/* 80C80518  38 00 00 02 */	li r0, 2
/* 80C8051C  98 1F 0A 10 */	stb r0, 0xa10(r31)
/* 80C80520  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C80524  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C80528  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C8052C  7C 08 03 A6 */	mtlr r0
/* 80C80530  38 21 00 20 */	addi r1, r1, 0x20
/* 80C80534  4E 80 00 20 */	blr 
