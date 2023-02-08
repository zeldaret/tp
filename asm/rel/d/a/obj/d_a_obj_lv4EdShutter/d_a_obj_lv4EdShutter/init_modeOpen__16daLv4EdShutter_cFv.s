lbl_80C5E2E0:
/* 80C5E2E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C5E2E4  7C 08 02 A6 */	mflr r0
/* 80C5E2E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C5E2EC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C5E2F0  7C 7F 1B 78 */	mr r31, r3
/* 80C5E2F4  3C 60 80 C6 */	lis r3, l_HIO@ha /* 0x80C5EA64@ha */
/* 80C5E2F8  38 63 EA 64 */	addi r3, r3, l_HIO@l /* 0x80C5EA64@l */
/* 80C5E2FC  C0 03 00 08 */	lfs f0, 8(r3)
/* 80C5E300  D0 1F 05 D8 */	stfs f0, 0x5d8(r31)
/* 80C5E304  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80C5E308  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C5E30C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80C5E310  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C5E314  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80C5E318  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C5E31C  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80C5E320  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C5E324  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C5E328  7C 03 07 74 */	extsb r3, r0
/* 80C5E32C  4B 3C ED 41 */	bl dComIfGp_getReverb__Fi
/* 80C5E330  7C 67 1B 78 */	mr r7, r3
/* 80C5E334  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801B7@ha */
/* 80C5E338  38 03 01 B7 */	addi r0, r3, 0x01B7 /* 0x000801B7@l */
/* 80C5E33C  90 01 00 08 */	stw r0, 8(r1)
/* 80C5E340  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C5E344  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C5E348  80 63 00 00 */	lwz r3, 0(r3)
/* 80C5E34C  38 81 00 08 */	addi r4, r1, 8
/* 80C5E350  38 A1 00 0C */	addi r5, r1, 0xc
/* 80C5E354  38 C0 00 00 */	li r6, 0
/* 80C5E358  3D 00 80 C6 */	lis r8, lit_3787@ha /* 0x80C5E8E8@ha */
/* 80C5E35C  C0 28 E8 E8 */	lfs f1, lit_3787@l(r8)  /* 0x80C5E8E8@l */
/* 80C5E360  FC 40 08 90 */	fmr f2, f1
/* 80C5E364  3D 00 80 C6 */	lis r8, lit_3788@ha /* 0x80C5E8EC@ha */
/* 80C5E368  C0 68 E8 EC */	lfs f3, lit_3788@l(r8)  /* 0x80C5E8EC@l */
/* 80C5E36C  FC 80 18 90 */	fmr f4, f3
/* 80C5E370  39 00 00 00 */	li r8, 0
/* 80C5E374  4B 64 D6 11 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C5E378  38 00 00 01 */	li r0, 1
/* 80C5E37C  98 1F 05 C4 */	stb r0, 0x5c4(r31)
/* 80C5E380  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C5E384  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C5E388  7C 08 03 A6 */	mtlr r0
/* 80C5E38C  38 21 00 20 */	addi r1, r1, 0x20
/* 80C5E390  4E 80 00 20 */	blr 
