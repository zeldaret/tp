lbl_80CC4290:
/* 80CC4290  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CC4294  7C 08 02 A6 */	mflr r0
/* 80CC4298  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CC429C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CC42A0  7C 7F 1B 78 */	mr r31, r3
/* 80CC42A4  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 80CC42A8  7C 03 07 74 */	extsb r3, r0
/* 80CC42AC  4B 36 8D C1 */	bl dComIfGp_getReverb__Fi
/* 80CC42B0  7C 67 1B 78 */	mr r7, r3
/* 80CC42B4  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008010E@ha */
/* 80CC42B8  38 03 01 0E */	addi r0, r3, 0x010E /* 0x0008010E@l */
/* 80CC42BC  90 01 00 08 */	stw r0, 8(r1)
/* 80CC42C0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CC42C4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CC42C8  80 63 00 00 */	lwz r3, 0(r3)
/* 80CC42CC  38 81 00 08 */	addi r4, r1, 8
/* 80CC42D0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80CC42D4  38 C0 00 00 */	li r6, 0
/* 80CC42D8  3D 00 80 CC */	lis r8, lit_3760@ha /* 0x80CC4534@ha */
/* 80CC42DC  C0 28 45 34 */	lfs f1, lit_3760@l(r8)  /* 0x80CC4534@l */
/* 80CC42E0  FC 40 08 90 */	fmr f2, f1
/* 80CC42E4  3D 00 80 CC */	lis r8, lit_3761@ha /* 0x80CC4538@ha */
/* 80CC42E8  C0 68 45 38 */	lfs f3, lit_3761@l(r8)  /* 0x80CC4538@l */
/* 80CC42EC  FC 80 18 90 */	fmr f4, f3
/* 80CC42F0  39 00 00 00 */	li r8, 0
/* 80CC42F4  4B 5E 76 91 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CC42F8  38 00 00 02 */	li r0, 2
/* 80CC42FC  98 1F 05 AC */	stb r0, 0x5ac(r31)
/* 80CC4300  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CC4304  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CC4308  7C 08 03 A6 */	mtlr r0
/* 80CC430C  38 21 00 20 */	addi r1, r1, 0x20
/* 80CC4310  4E 80 00 20 */	blr 
