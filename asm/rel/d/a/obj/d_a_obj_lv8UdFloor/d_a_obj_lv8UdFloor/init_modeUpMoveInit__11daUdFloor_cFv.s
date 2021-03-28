lbl_80C8C274:
/* 80C8C274  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C8C278  7C 08 02 A6 */	mflr r0
/* 80C8C27C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C8C280  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C8C284  7C 7F 1B 78 */	mr r31, r3
/* 80C8C288  38 00 00 00 */	li r0, 0
/* 80C8C28C  98 03 05 C4 */	stb r0, 0x5c4(r3)
/* 80C8C290  3C 60 80 C9 */	lis r3, l_HIO@ha
/* 80C8C294  38 63 CD 8C */	addi r3, r3, l_HIO@l
/* 80C8C298  88 03 00 14 */	lbz r0, 0x14(r3)
/* 80C8C29C  98 1F 05 C5 */	stb r0, 0x5c5(r31)
/* 80C8C2A0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C8C2A4  7C 03 07 74 */	extsb r3, r0
/* 80C8C2A8  4B 3A 0D C4 */	b dComIfGp_getReverb__Fi
/* 80C8C2AC  7C 67 1B 78 */	mr r7, r3
/* 80C8C2B0  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080208@ha */
/* 80C8C2B4  38 03 02 08 */	addi r0, r3, 0x0208 /* 0x00080208@l */
/* 80C8C2B8  90 01 00 08 */	stw r0, 8(r1)
/* 80C8C2BC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C8C2C0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C8C2C4  80 63 00 00 */	lwz r3, 0(r3)
/* 80C8C2C8  38 81 00 08 */	addi r4, r1, 8
/* 80C8C2CC  38 BF 04 A8 */	addi r5, r31, 0x4a8
/* 80C8C2D0  38 C0 00 00 */	li r6, 0
/* 80C8C2D4  3D 00 80 C9 */	lis r8, lit_3777@ha
/* 80C8C2D8  C0 28 CC 20 */	lfs f1, lit_3777@l(r8)
/* 80C8C2DC  FC 40 08 90 */	fmr f2, f1
/* 80C8C2E0  3D 00 80 C9 */	lis r8, lit_3778@ha
/* 80C8C2E4  C0 68 CC 24 */	lfs f3, lit_3778@l(r8)
/* 80C8C2E8  FC 80 18 90 */	fmr f4, f3
/* 80C8C2EC  39 00 00 00 */	li r8, 0
/* 80C8C2F0  4B 61 F6 94 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C8C2F4  38 00 00 01 */	li r0, 1
/* 80C8C2F8  98 1F 05 AC */	stb r0, 0x5ac(r31)
/* 80C8C2FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C8C300  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C8C304  7C 08 03 A6 */	mtlr r0
/* 80C8C308  38 21 00 20 */	addi r1, r1, 0x20
/* 80C8C30C  4E 80 00 20 */	blr 
