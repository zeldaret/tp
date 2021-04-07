lbl_80CBB28C:
/* 80CBB28C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CBB290  7C 08 02 A6 */	mflr r0
/* 80CBB294  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CBB298  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CBB29C  7C 7F 1B 78 */	mr r31, r3
/* 80CBB2A0  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 80CBB2A4  7C 03 07 74 */	extsb r3, r0
/* 80CBB2A8  4B 37 1D C5 */	bl dComIfGp_getReverb__Fi
/* 80CBB2AC  7C 67 1B 78 */	mr r7, r3
/* 80CBB2B0  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008022B@ha */
/* 80CBB2B4  38 03 02 2B */	addi r0, r3, 0x022B /* 0x0008022B@l */
/* 80CBB2B8  90 01 00 08 */	stw r0, 8(r1)
/* 80CBB2BC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CBB2C0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CBB2C4  80 63 00 00 */	lwz r3, 0(r3)
/* 80CBB2C8  38 81 00 08 */	addi r4, r1, 8
/* 80CBB2CC  38 BF 05 38 */	addi r5, r31, 0x538
/* 80CBB2D0  38 C0 00 00 */	li r6, 0
/* 80CBB2D4  3D 00 80 CC */	lis r8, lit_4513@ha /* 0x80CBC420@ha */
/* 80CBB2D8  C0 28 C4 20 */	lfs f1, lit_4513@l(r8)  /* 0x80CBC420@l */
/* 80CBB2DC  FC 40 08 90 */	fmr f2, f1
/* 80CBB2E0  3D 00 80 CC */	lis r8, lit_4514@ha /* 0x80CBC424@ha */
/* 80CBB2E4  C0 68 C4 24 */	lfs f3, lit_4514@l(r8)  /* 0x80CBC424@l */
/* 80CBB2E8  FC 80 18 90 */	fmr f4, f3
/* 80CBB2EC  39 00 00 00 */	li r8, 0
/* 80CBB2F0  4B 5F 06 95 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CBB2F4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CBB2F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CBB2FC  7C 08 03 A6 */	mtlr r0
/* 80CBB300  38 21 00 20 */	addi r1, r1, 0x20
/* 80CBB304  4E 80 00 20 */	blr 
