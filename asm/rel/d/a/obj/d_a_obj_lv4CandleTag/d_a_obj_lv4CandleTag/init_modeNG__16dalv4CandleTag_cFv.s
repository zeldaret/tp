lbl_80C5D78C:
/* 80C5D78C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C5D790  7C 08 02 A6 */	mflr r0
/* 80C5D794  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C5D798  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C5D79C  7C 7F 1B 78 */	mr r31, r3
/* 80C5D7A0  3C 60 80 C6 */	lis r3, l_HIO@ha /* 0x80C5DCA4@ha */
/* 80C5D7A4  38 63 DC A4 */	addi r3, r3, l_HIO@l /* 0x80C5DCA4@l */
/* 80C5D7A8  88 03 00 04 */	lbz r0, 4(r3)
/* 80C5D7AC  98 1F 05 89 */	stb r0, 0x589(r31)
/* 80C5D7B0  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801B8@ha */
/* 80C5D7B4  38 03 01 B8 */	addi r0, r3, 0x01B8 /* 0x000801B8@l */
/* 80C5D7B8  90 01 00 08 */	stw r0, 8(r1)
/* 80C5D7BC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C5D7C0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C5D7C4  80 63 00 00 */	lwz r3, 0(r3)
/* 80C5D7C8  38 81 00 08 */	addi r4, r1, 8
/* 80C5D7CC  38 A0 00 00 */	li r5, 0
/* 80C5D7D0  38 C0 00 00 */	li r6, 0
/* 80C5D7D4  38 E0 00 00 */	li r7, 0
/* 80C5D7D8  3D 00 80 C6 */	lis r8, lit_3727@ha /* 0x80C5DB5C@ha */
/* 80C5D7DC  C0 28 DB 5C */	lfs f1, lit_3727@l(r8)  /* 0x80C5DB5C@l */
/* 80C5D7E0  FC 40 08 90 */	fmr f2, f1
/* 80C5D7E4  3D 00 80 C6 */	lis r8, lit_3728@ha /* 0x80C5DB60@ha */
/* 80C5D7E8  C0 68 DB 60 */	lfs f3, lit_3728@l(r8)  /* 0x80C5DB60@l */
/* 80C5D7EC  FC 80 18 90 */	fmr f4, f3
/* 80C5D7F0  39 00 00 00 */	li r8, 0
/* 80C5D7F4  4B 64 E1 91 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C5D7F8  38 00 00 01 */	li r0, 1
/* 80C5D7FC  98 1F 05 84 */	stb r0, 0x584(r31)
/* 80C5D800  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C5D804  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C5D808  7C 08 03 A6 */	mtlr r0
/* 80C5D80C  38 21 00 20 */	addi r1, r1, 0x20
/* 80C5D810  4E 80 00 20 */	blr 
