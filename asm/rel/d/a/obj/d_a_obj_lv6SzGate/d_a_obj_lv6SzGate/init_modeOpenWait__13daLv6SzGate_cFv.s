lbl_80C76010:
/* 80C76010  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C76014  7C 08 02 A6 */	mflr r0
/* 80C76018  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C7601C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C76020  7C 7F 1B 78 */	mr r31, r3
/* 80C76024  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 80C76028  7C 03 07 74 */	extsb r3, r0
/* 80C7602C  4B 3B 70 41 */	bl dComIfGp_getReverb__Fi
/* 80C76030  7C 67 1B 78 */	mr r7, r3
/* 80C76034  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801ED@ha */
/* 80C76038  38 03 01 ED */	addi r0, r3, 0x01ED /* 0x000801ED@l */
/* 80C7603C  90 01 00 08 */	stw r0, 8(r1)
/* 80C76040  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C76044  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C76048  80 63 00 00 */	lwz r3, 0(r3)
/* 80C7604C  38 81 00 08 */	addi r4, r1, 8
/* 80C76050  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C76054  38 C0 00 00 */	li r6, 0
/* 80C76058  3D 00 80 C7 */	lis r8, lit_3697@ha /* 0x80C76648@ha */
/* 80C7605C  C0 28 66 48 */	lfs f1, lit_3697@l(r8)  /* 0x80C76648@l */
/* 80C76060  FC 40 08 90 */	fmr f2, f1
/* 80C76064  3D 00 80 C7 */	lis r8, lit_3843@ha /* 0x80C7664C@ha */
/* 80C76068  C0 68 66 4C */	lfs f3, lit_3843@l(r8)  /* 0x80C7664C@l */
/* 80C7606C  FC 80 18 90 */	fmr f4, f3
/* 80C76070  39 00 00 00 */	li r8, 0
/* 80C76074  4B 63 59 11 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C76078  38 00 00 02 */	li r0, 2
/* 80C7607C  98 1F 05 E0 */	stb r0, 0x5e0(r31)
/* 80C76080  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C76084  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C76088  7C 08 03 A6 */	mtlr r0
/* 80C7608C  38 21 00 20 */	addi r1, r1, 0x20
/* 80C76090  4E 80 00 20 */	blr 
