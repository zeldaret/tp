lbl_8059C23C:
/* 8059C23C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059C240  7C 08 02 A6 */	mflr r0
/* 8059C244  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059C248  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8059C24C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8059C250  7C 7E 1B 78 */	mr r30, r3
/* 8059C254  3C 60 80 5A */	lis r3, l_dzbIdx@ha /* 0x8059C6A4@ha */
/* 8059C258  3B E3 C6 A4 */	addi r31, r3, l_dzbIdx@l /* 0x8059C6A4@l */
/* 8059C25C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8059C260  7C 03 07 74 */	extsb r3, r0
/* 8059C264  4B A9 0E 09 */	bl dComIfGp_getReverb__Fi
/* 8059C268  7C 67 1B 78 */	mr r7, r3
/* 8059C26C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080142@ha */
/* 8059C270  38 03 01 42 */	addi r0, r3, 0x0142 /* 0x00080142@l */
/* 8059C274  90 01 00 08 */	stw r0, 8(r1)
/* 8059C278  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8059C27C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8059C280  80 63 00 00 */	lwz r3, 0(r3)
/* 8059C284  38 81 00 08 */	addi r4, r1, 8
/* 8059C288  38 BE 05 38 */	addi r5, r30, 0x538
/* 8059C28C  38 C0 00 00 */	li r6, 0
/* 8059C290  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8059C294  FC 40 08 90 */	fmr f2, f1
/* 8059C298  C0 7F 00 24 */	lfs f3, 0x24(r31)
/* 8059C29C  FC 80 18 90 */	fmr f4, f3
/* 8059C2A0  39 00 00 00 */	li r8, 0
/* 8059C2A4  4B D0 F6 E1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8059C2A8  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8059C2AC  D0 1E 05 FC */	stfs f0, 0x5fc(r30)
/* 8059C2B0  38 00 00 01 */	li r0, 1
/* 8059C2B4  98 1E 05 EE */	stb r0, 0x5ee(r30)
/* 8059C2B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8059C2BC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8059C2C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059C2C4  7C 08 03 A6 */	mtlr r0
/* 8059C2C8  38 21 00 20 */	addi r1, r1, 0x20
/* 8059C2CC  4E 80 00 20 */	blr 
