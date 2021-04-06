lbl_80C8C5E4:
/* 80C8C5E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C8C5E8  7C 08 02 A6 */	mflr r0
/* 80C8C5EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C8C5F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C8C5F4  7C 7F 1B 78 */	mr r31, r3
/* 80C8C5F8  3C 60 80 C9 */	lis r3, l_HIO@ha /* 0x80C8CD8C@ha */
/* 80C8C5FC  38 63 CD 8C */	addi r3, r3, l_HIO@l /* 0x80C8CD8C@l */
/* 80C8C600  C0 03 00 08 */	lfs f0, 8(r3)
/* 80C8C604  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80C8C608  88 1F 05 B9 */	lbz r0, 0x5b9(r31)
/* 80C8C60C  98 1F 05 BA */	stb r0, 0x5ba(r31)
/* 80C8C610  88 1F 05 BA */	lbz r0, 0x5ba(r31)
/* 80C8C614  28 00 00 00 */	cmplwi r0, 0
/* 80C8C618  40 82 00 58 */	bne lbl_80C8C670
/* 80C8C61C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C8C620  7C 03 07 74 */	extsb r3, r0
/* 80C8C624  4B 3A 0A 49 */	bl dComIfGp_getReverb__Fi
/* 80C8C628  7C 67 1B 78 */	mr r7, r3
/* 80C8C62C  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008020B@ha */
/* 80C8C630  38 03 02 0B */	addi r0, r3, 0x020B /* 0x0008020B@l */
/* 80C8C634  90 01 00 08 */	stw r0, 8(r1)
/* 80C8C638  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C8C63C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C8C640  80 63 00 00 */	lwz r3, 0(r3)
/* 80C8C644  38 81 00 08 */	addi r4, r1, 8
/* 80C8C648  38 BF 04 A8 */	addi r5, r31, 0x4a8
/* 80C8C64C  38 C0 00 00 */	li r6, 0
/* 80C8C650  3D 00 80 C9 */	lis r8, lit_3777@ha /* 0x80C8CC20@ha */
/* 80C8C654  C0 28 CC 20 */	lfs f1, lit_3777@l(r8)  /* 0x80C8CC20@l */
/* 80C8C658  FC 40 08 90 */	fmr f2, f1
/* 80C8C65C  3D 00 80 C9 */	lis r8, lit_3778@ha /* 0x80C8CC24@ha */
/* 80C8C660  C0 68 CC 24 */	lfs f3, lit_3778@l(r8)  /* 0x80C8CC24@l */
/* 80C8C664  FC 80 18 90 */	fmr f4, f3
/* 80C8C668  39 00 00 00 */	li r8, 0
/* 80C8C66C  4B 61 F3 19 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C8C670:
/* 80C8C670  38 00 00 02 */	li r0, 2
/* 80C8C674  98 1F 05 AC */	stb r0, 0x5ac(r31)
/* 80C8C678  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C8C67C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C8C680  7C 08 03 A6 */	mtlr r0
/* 80C8C684  38 21 00 20 */	addi r1, r1, 0x20
/* 80C8C688  4E 80 00 20 */	blr 
