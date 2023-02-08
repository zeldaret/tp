lbl_80CCC2B8:
/* 80CCC2B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CCC2BC  7C 08 02 A6 */	mflr r0
/* 80CCC2C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CCC2C4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CCC2C8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80CCC2CC  7C 7E 1B 78 */	mr r30, r3
/* 80CCC2D0  3C 60 80 CD */	lis r3, lit_3832@ha /* 0x80CCCC38@ha */
/* 80CCC2D4  3B E3 CC 38 */	addi r31, r3, lit_3832@l /* 0x80CCCC38@l */
/* 80CCC2D8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CCC2DC  7C 03 07 74 */	extsb r3, r0
/* 80CCC2E0  4B 36 0D 8D */	bl dComIfGp_getReverb__Fi
/* 80CCC2E4  7C 67 1B 78 */	mr r7, r3
/* 80CCC2E8  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008000B@ha */
/* 80CCC2EC  38 03 00 0B */	addi r0, r3, 0x000B /* 0x0008000B@l */
/* 80CCC2F0  90 01 00 08 */	stw r0, 8(r1)
/* 80CCC2F4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CCC2F8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CCC2FC  80 63 00 00 */	lwz r3, 0(r3)
/* 80CCC300  38 81 00 08 */	addi r4, r1, 8
/* 80CCC304  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80CCC308  38 C0 00 00 */	li r6, 0
/* 80CCC30C  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80CCC310  FC 40 08 90 */	fmr f2, f1
/* 80CCC314  C0 7F 00 24 */	lfs f3, 0x24(r31)
/* 80CCC318  FC 80 18 90 */	fmr f4, f3
/* 80CCC31C  39 00 00 00 */	li r8, 0
/* 80CCC320  4B 5D F6 65 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CCC324  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CCC328  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CCC32C  3B C3 5B D4 */	addi r30, r3, 0x5bd4
/* 80CCC330  7F C3 F3 78 */	mr r3, r30
/* 80CCC334  38 80 00 1F */	li r4, 0x1f
/* 80CCC338  4B 3A 3A 5D */	bl StopQuake__12dVibration_cFi
/* 80CCC33C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80CCC340  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80CCC344  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80CCC348  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CCC34C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80CCC350  7F C3 F3 78 */	mr r3, r30
/* 80CCC354  38 80 00 08 */	li r4, 8
/* 80CCC358  38 A0 00 1F */	li r5, 0x1f
/* 80CCC35C  38 C1 00 0C */	addi r6, r1, 0xc
/* 80CCC360  4B 3A 36 C5 */	bl StartShock__12dVibration_cFii4cXyz
/* 80CCC364  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CCC368  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80CCC36C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CCC370  7C 08 03 A6 */	mtlr r0
/* 80CCC374  38 21 00 20 */	addi r1, r1, 0x20
/* 80CCC378  4E 80 00 20 */	blr 
