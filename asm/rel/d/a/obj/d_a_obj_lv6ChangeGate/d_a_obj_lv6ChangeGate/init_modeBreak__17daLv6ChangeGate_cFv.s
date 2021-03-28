lbl_80C71A74:
/* 80C71A74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C71A78  7C 08 02 A6 */	mflr r0
/* 80C71A7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C71A80  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C71A84  7C 7F 1B 78 */	mr r31, r3
/* 80C71A88  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 80C71A8C  7C 03 07 74 */	extsb r3, r0
/* 80C71A90  4B 3B B5 DC */	b dComIfGp_getReverb__Fi
/* 80C71A94  7C 67 1B 78 */	mr r7, r3
/* 80C71A98  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080256@ha */
/* 80C71A9C  38 03 02 56 */	addi r0, r3, 0x0256 /* 0x00080256@l */
/* 80C71AA0  90 01 00 08 */	stw r0, 8(r1)
/* 80C71AA4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C71AA8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C71AAC  80 63 00 00 */	lwz r3, 0(r3)
/* 80C71AB0  38 81 00 08 */	addi r4, r1, 8
/* 80C71AB4  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C71AB8  38 C0 00 00 */	li r6, 0
/* 80C71ABC  3D 00 80 C7 */	lis r8, lit_3922@ha
/* 80C71AC0  C0 28 21 98 */	lfs f1, lit_3922@l(r8)
/* 80C71AC4  FC 40 08 90 */	fmr f2, f1
/* 80C71AC8  3D 00 80 C7 */	lis r8, lit_3923@ha
/* 80C71ACC  C0 68 21 9C */	lfs f3, lit_3923@l(r8)
/* 80C71AD0  FC 80 18 90 */	fmr f4, f3
/* 80C71AD4  39 00 00 00 */	li r8, 0
/* 80C71AD8  4B 63 9E AC */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C71ADC  38 00 00 03 */	li r0, 3
/* 80C71AE0  98 1F 05 C4 */	stb r0, 0x5c4(r31)
/* 80C71AE4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C71AE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C71AEC  7C 08 03 A6 */	mtlr r0
/* 80C71AF0  38 21 00 20 */	addi r1, r1, 0x20
/* 80C71AF4  4E 80 00 20 */	blr 
