lbl_80C7183C:
/* 80C7183C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C71840  7C 08 02 A6 */	mflr r0
/* 80C71844  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C71848  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C7184C  7C 7F 1B 78 */	mr r31, r3
/* 80C71850  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80C71854  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80C71858  98 03 14 D7 */	stb r0, 0x14d7(r3)
/* 80C7185C  88 03 14 D7 */	lbz r0, 0x14d7(r3)
/* 80C71860  28 00 00 FF */	cmplwi r0, 0xff
/* 80C71864  40 82 00 0C */	bne lbl_80C71870
/* 80C71868  38 00 00 00 */	li r0, 0
/* 80C7186C  98 1F 14 D7 */	stb r0, 0x14d7(r31)
lbl_80C71870:
/* 80C71870  88 1F 14 D7 */	lbz r0, 0x14d7(r31)
/* 80C71874  28 00 00 00 */	cmplwi r0, 0
/* 80C71878  40 82 00 58 */	bne lbl_80C718D0
/* 80C7187C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C71880  7C 03 07 74 */	extsb r3, r0
/* 80C71884  4B 3B B7 E9 */	bl dComIfGp_getReverb__Fi
/* 80C71888  7C 67 1B 78 */	mr r7, r3
/* 80C7188C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801FA@ha */
/* 80C71890  38 03 01 FA */	addi r0, r3, 0x01FA /* 0x000801FA@l */
/* 80C71894  90 01 00 08 */	stw r0, 8(r1)
/* 80C71898  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C7189C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C718A0  80 63 00 00 */	lwz r3, 0(r3)
/* 80C718A4  38 81 00 08 */	addi r4, r1, 8
/* 80C718A8  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C718AC  38 C0 00 00 */	li r6, 0
/* 80C718B0  3D 00 80 C7 */	lis r8, lit_3922@ha /* 0x80C72198@ha */
/* 80C718B4  C0 28 21 98 */	lfs f1, lit_3922@l(r8)  /* 0x80C72198@l */
/* 80C718B8  FC 40 08 90 */	fmr f2, f1
/* 80C718BC  3D 00 80 C7 */	lis r8, lit_3923@ha /* 0x80C7219C@ha */
/* 80C718C0  C0 68 21 9C */	lfs f3, lit_3923@l(r8)  /* 0x80C7219C@l */
/* 80C718C4  FC 80 18 90 */	fmr f4, f3
/* 80C718C8  39 00 00 00 */	li r8, 0
/* 80C718CC  4B 63 A0 B9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C718D0:
/* 80C718D0  38 00 00 02 */	li r0, 2
/* 80C718D4  98 1F 05 C4 */	stb r0, 0x5c4(r31)
/* 80C718D8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C718DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C718E0  7C 08 03 A6 */	mtlr r0
/* 80C718E4  38 21 00 20 */	addi r1, r1, 0x20
/* 80C718E8  4E 80 00 20 */	blr 
