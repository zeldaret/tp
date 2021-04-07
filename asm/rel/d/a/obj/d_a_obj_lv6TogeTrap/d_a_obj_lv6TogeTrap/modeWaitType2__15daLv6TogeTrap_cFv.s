lbl_80C7B9A8:
/* 80C7B9A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C7B9AC  7C 08 02 A6 */	mflr r0
/* 80C7B9B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C7B9B4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C7B9B8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C7B9BC  7C 7E 1B 78 */	mr r30, r3
/* 80C7B9C0  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 80C7B9C4  7C 03 07 74 */	extsb r3, r0
/* 80C7B9C8  4B 3B 16 A5 */	bl dComIfGp_getReverb__Fi
/* 80C7B9CC  7C 7F 1B 78 */	mr r31, r3
/* 80C7B9D0  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80C7B9D4  4B 6E 66 D9 */	bl __cvt_fp2unsigned
/* 80C7B9D8  7C 66 1B 78 */	mr r6, r3
/* 80C7B9DC  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801A9@ha */
/* 80C7B9E0  38 03 01 A9 */	addi r0, r3, 0x01A9 /* 0x000801A9@l */
/* 80C7B9E4  90 01 00 08 */	stw r0, 8(r1)
/* 80C7B9E8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C7B9EC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C7B9F0  80 63 00 00 */	lwz r3, 0(r3)
/* 80C7B9F4  38 81 00 08 */	addi r4, r1, 8
/* 80C7B9F8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C7B9FC  7F E7 FB 78 */	mr r7, r31
/* 80C7BA00  3D 00 80 C8 */	lis r8, lit_3632@ha /* 0x80C7C61C@ha */
/* 80C7BA04  C0 28 C6 1C */	lfs f1, lit_3632@l(r8)  /* 0x80C7C61C@l */
/* 80C7BA08  FC 40 08 90 */	fmr f2, f1
/* 80C7BA0C  3D 00 80 C8 */	lis r8, lit_4150@ha /* 0x80C7C728@ha */
/* 80C7BA10  C0 68 C7 28 */	lfs f3, lit_4150@l(r8)  /* 0x80C7C728@l */
/* 80C7BA14  FC 80 18 90 */	fmr f4, f3
/* 80C7BA18  39 00 00 00 */	li r8, 0
/* 80C7BA1C  4B 63 0A F1 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C7BA20  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C7BA24  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C7BA28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C7BA2C  7C 08 03 A6 */	mtlr r0
/* 80C7BA30  38 21 00 20 */	addi r1, r1, 0x20
/* 80C7BA34  4E 80 00 20 */	blr 
