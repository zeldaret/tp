lbl_80C71604:
/* 80C71604  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C71608  7C 08 02 A6 */	mflr r0
/* 80C7160C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C71610  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C71614  7C 7F 1B 78 */	mr r31, r3
/* 80C71618  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80C7161C  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80C71620  98 03 14 D7 */	stb r0, 0x14d7(r3)
/* 80C71624  88 03 14 D7 */	lbz r0, 0x14d7(r3)
/* 80C71628  28 00 00 FF */	cmplwi r0, 0xff
/* 80C7162C  40 82 00 0C */	bne lbl_80C71638
/* 80C71630  38 00 00 00 */	li r0, 0
/* 80C71634  98 1F 14 D7 */	stb r0, 0x14d7(r31)
lbl_80C71638:
/* 80C71638  88 1F 14 D7 */	lbz r0, 0x14d7(r31)
/* 80C7163C  28 00 00 00 */	cmplwi r0, 0
/* 80C71640  40 82 00 58 */	bne lbl_80C71698
/* 80C71644  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C71648  7C 03 07 74 */	extsb r3, r0
/* 80C7164C  4B 3B BA 20 */	b dComIfGp_getReverb__Fi
/* 80C71650  7C 67 1B 78 */	mr r7, r3
/* 80C71654  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801FA@ha */
/* 80C71658  38 03 01 FA */	addi r0, r3, 0x01FA /* 0x000801FA@l */
/* 80C7165C  90 01 00 08 */	stw r0, 8(r1)
/* 80C71660  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C71664  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C71668  80 63 00 00 */	lwz r3, 0(r3)
/* 80C7166C  38 81 00 08 */	addi r4, r1, 8
/* 80C71670  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C71674  38 C0 00 00 */	li r6, 0
/* 80C71678  3D 00 80 C7 */	lis r8, lit_3922@ha
/* 80C7167C  C0 28 21 98 */	lfs f1, lit_3922@l(r8)
/* 80C71680  FC 40 08 90 */	fmr f2, f1
/* 80C71684  3D 00 80 C7 */	lis r8, lit_3923@ha
/* 80C71688  C0 68 21 9C */	lfs f3, lit_3923@l(r8)
/* 80C7168C  FC 80 18 90 */	fmr f4, f3
/* 80C71690  39 00 00 00 */	li r8, 0
/* 80C71694  4B 63 A2 F0 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C71698:
/* 80C71698  38 00 00 01 */	li r0, 1
/* 80C7169C  98 1F 05 C4 */	stb r0, 0x5c4(r31)
/* 80C716A0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C716A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C716A8  7C 08 03 A6 */	mtlr r0
/* 80C716AC  38 21 00 20 */	addi r1, r1, 0x20
/* 80C716B0  4E 80 00 20 */	blr 
