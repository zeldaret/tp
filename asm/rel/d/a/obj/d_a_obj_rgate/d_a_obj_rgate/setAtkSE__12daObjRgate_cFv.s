lbl_80CBB210:
/* 80CBB210  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CBB214  7C 08 02 A6 */	mflr r0
/* 80CBB218  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CBB21C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CBB220  7C 7F 1B 78 */	mr r31, r3
/* 80CBB224  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 80CBB228  7C 03 07 74 */	extsb r3, r0
/* 80CBB22C  4B 37 1E 41 */	bl dComIfGp_getReverb__Fi
/* 80CBB230  7C 67 1B 78 */	mr r7, r3
/* 80CBB234  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080229@ha */
/* 80CBB238  38 03 02 29 */	addi r0, r3, 0x0229 /* 0x00080229@l */
/* 80CBB23C  90 01 00 08 */	stw r0, 8(r1)
/* 80CBB240  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CBB244  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CBB248  80 63 00 00 */	lwz r3, 0(r3)
/* 80CBB24C  38 81 00 08 */	addi r4, r1, 8
/* 80CBB250  38 BF 05 38 */	addi r5, r31, 0x538
/* 80CBB254  38 C0 00 00 */	li r6, 0
/* 80CBB258  3D 00 80 CC */	lis r8, lit_4513@ha /* 0x80CBC420@ha */
/* 80CBB25C  C0 28 C4 20 */	lfs f1, lit_4513@l(r8)  /* 0x80CBC420@l */
/* 80CBB260  FC 40 08 90 */	fmr f2, f1
/* 80CBB264  3D 00 80 CC */	lis r8, lit_4514@ha /* 0x80CBC424@ha */
/* 80CBB268  C0 68 C4 24 */	lfs f3, lit_4514@l(r8)  /* 0x80CBC424@l */
/* 80CBB26C  FC 80 18 90 */	fmr f4, f3
/* 80CBB270  39 00 00 00 */	li r8, 0
/* 80CBB274  4B 5F 07 11 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CBB278  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CBB27C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CBB280  7C 08 03 A6 */	mtlr r0
/* 80CBB284  38 21 00 20 */	addi r1, r1, 0x20
/* 80CBB288  4E 80 00 20 */	blr 
