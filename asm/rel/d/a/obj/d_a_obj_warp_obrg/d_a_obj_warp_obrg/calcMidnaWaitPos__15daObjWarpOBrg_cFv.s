lbl_80D2B534:
/* 80D2B534  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D2B538  7C 08 02 A6 */	mflr r0
/* 80D2B53C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D2B540  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D2B544  7C 7F 1B 78 */	mr r31, r3
/* 80D2B548  3C 60 80 D3 */	lis r3, l_midna_wait_offset@ha
/* 80D2B54C  C4 03 B8 38 */	lfsu f0, l_midna_wait_offset@l(r3)
/* 80D2B550  D0 01 00 08 */	stfs f0, 8(r1)
/* 80D2B554  C0 03 00 04 */	lfs f0, 4(r3)
/* 80D2B558  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D2B55C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80D2B560  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D2B564  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80D2B568  4B 2E 17 FC */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80D2B56C  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80D2B570  4B 2E 19 D4 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80D2B574  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D2B578  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D2B57C  38 81 00 08 */	addi r4, r1, 8
/* 80D2B580  38 BF 06 20 */	addi r5, r31, 0x620
/* 80D2B584  4B 61 B7 E8 */	b PSMTXMultVec
/* 80D2B588  C0 1F 06 20 */	lfs f0, 0x620(r31)
/* 80D2B58C  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80D2B590  C0 1F 06 24 */	lfs f0, 0x624(r31)
/* 80D2B594  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80D2B598  C0 1F 06 28 */	lfs f0, 0x628(r31)
/* 80D2B59C  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80D2B5A0  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 80D2B5A4  3C 60 80 D3 */	lis r3, lit_4666@ha
/* 80D2B5A8  C0 03 B8 A8 */	lfs f0, lit_4666@l(r3)
/* 80D2B5AC  EC 01 00 2A */	fadds f0, f1, f0
/* 80D2B5B0  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80D2B5B4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D2B5B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D2B5BC  7C 08 03 A6 */	mtlr r0
/* 80D2B5C0  38 21 00 20 */	addi r1, r1, 0x20
/* 80D2B5C4  4E 80 00 20 */	blr 
