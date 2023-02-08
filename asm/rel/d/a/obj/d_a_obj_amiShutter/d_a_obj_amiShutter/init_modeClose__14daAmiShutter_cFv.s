lbl_80BA1CB4:
/* 80BA1CB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BA1CB8  7C 08 02 A6 */	mflr r0
/* 80BA1CBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BA1CC0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BA1CC4  7C 7F 1B 78 */	mr r31, r3
/* 80BA1CC8  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 80BA1CCC  7C 03 07 74 */	extsb r3, r0
/* 80BA1CD0  4B 48 B3 9D */	bl dComIfGp_getReverb__Fi
/* 80BA1CD4  7C 67 1B 78 */	mr r7, r3
/* 80BA1CD8  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008018E@ha */
/* 80BA1CDC  38 03 01 8E */	addi r0, r3, 0x018E /* 0x0008018E@l */
/* 80BA1CE0  90 01 00 08 */	stw r0, 8(r1)
/* 80BA1CE4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BA1CE8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BA1CEC  80 63 00 00 */	lwz r3, 0(r3)
/* 80BA1CF0  38 81 00 08 */	addi r4, r1, 8
/* 80BA1CF4  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80BA1CF8  38 C0 00 00 */	li r6, 0
/* 80BA1CFC  3D 00 80 BA */	lis r8, lit_3890@ha /* 0x80BA23C4@ha */
/* 80BA1D00  C0 28 23 C4 */	lfs f1, lit_3890@l(r8)  /* 0x80BA23C4@l */
/* 80BA1D04  FC 40 08 90 */	fmr f2, f1
/* 80BA1D08  3D 00 80 BA */	lis r8, lit_3891@ha /* 0x80BA23C8@ha */
/* 80BA1D0C  C0 68 23 C8 */	lfs f3, lit_3891@l(r8)  /* 0x80BA23C8@l */
/* 80BA1D10  FC 80 18 90 */	fmr f4, f3
/* 80BA1D14  39 00 00 00 */	li r8, 0
/* 80BA1D18  4B 70 9C 6D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BA1D1C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80BA1D20  88 03 00 91 */	lbz r0, 0x91(r3)
/* 80BA1D24  60 00 00 04 */	ori r0, r0, 4
/* 80BA1D28  98 03 00 91 */	stb r0, 0x91(r3)
/* 80BA1D2C  38 00 00 02 */	li r0, 2
/* 80BA1D30  98 1F 05 C4 */	stb r0, 0x5c4(r31)
/* 80BA1D34  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BA1D38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BA1D3C  7C 08 03 A6 */	mtlr r0
/* 80BA1D40  38 21 00 20 */	addi r1, r1, 0x20
/* 80BA1D44  4E 80 00 20 */	blr 
