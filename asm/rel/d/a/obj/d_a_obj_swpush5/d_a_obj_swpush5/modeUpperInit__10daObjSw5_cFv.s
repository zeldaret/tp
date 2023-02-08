lbl_8059C3C4:
/* 8059C3C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059C3C8  7C 08 02 A6 */	mflr r0
/* 8059C3CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059C3D0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8059C3D4  7C 7F 1B 78 */	mr r31, r3
/* 8059C3D8  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 8059C3DC  7C 03 07 74 */	extsb r3, r0
/* 8059C3E0  4B A9 0C 8D */	bl dComIfGp_getReverb__Fi
/* 8059C3E4  7C 67 1B 78 */	mr r7, r3
/* 8059C3E8  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080156@ha */
/* 8059C3EC  38 03 01 56 */	addi r0, r3, 0x0156 /* 0x00080156@l */
/* 8059C3F0  90 01 00 08 */	stw r0, 8(r1)
/* 8059C3F4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8059C3F8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8059C3FC  80 63 00 00 */	lwz r3, 0(r3)
/* 8059C400  38 81 00 08 */	addi r4, r1, 8
/* 8059C404  38 BF 05 38 */	addi r5, r31, 0x538
/* 8059C408  38 C0 00 00 */	li r6, 0
/* 8059C40C  3D 00 80 5A */	lis r8, lit_3988@ha /* 0x8059C6C4@ha */
/* 8059C410  C0 28 C6 C4 */	lfs f1, lit_3988@l(r8)  /* 0x8059C6C4@l */
/* 8059C414  FC 40 08 90 */	fmr f2, f1
/* 8059C418  3D 00 80 5A */	lis r8, lit_4041@ha /* 0x8059C6C8@ha */
/* 8059C41C  C0 68 C6 C8 */	lfs f3, lit_4041@l(r8)  /* 0x8059C6C8@l */
/* 8059C420  FC 80 18 90 */	fmr f4, f3
/* 8059C424  39 00 00 00 */	li r8, 0
/* 8059C428  4B D0 F5 5D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8059C42C  3C 60 80 5A */	lis r3, lit_3988@ha /* 0x8059C6C4@ha */
/* 8059C430  C0 03 C6 C4 */	lfs f0, lit_3988@l(r3)  /* 0x8059C6C4@l */
/* 8059C434  D0 1F 05 FC */	stfs f0, 0x5fc(r31)
/* 8059C438  38 00 00 03 */	li r0, 3
/* 8059C43C  98 1F 05 EE */	stb r0, 0x5ee(r31)
/* 8059C440  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8059C444  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059C448  7C 08 03 A6 */	mtlr r0
/* 8059C44C  38 21 00 20 */	addi r1, r1, 0x20
/* 8059C450  4E 80 00 20 */	blr 
