lbl_80D25364:
/* 80D25364  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D25368  7C 08 02 A6 */	mflr r0
/* 80D2536C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D25370  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D25374  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80D25378  7C 7E 1B 78 */	mr r30, r3
/* 80D2537C  3C 60 80 D2 */	lis r3, l_midna_offset@ha /* 0x80D26B5C@ha */
/* 80D25380  3B E3 6B 5C */	addi r31, r3, l_midna_offset@l /* 0x80D26B5C@l */
/* 80D25384  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80D25388  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D2538C  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 80D25390  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D25394  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80D25398  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80D2539C  4B 2E 79 C9 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80D253A0  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80D253A4  4B 2E 7B A1 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80D253A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D253AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D253B0  38 81 00 08 */	addi r4, r1, 8
/* 80D253B4  38 BE 09 98 */	addi r5, r30, 0x998
/* 80D253B8  4B 62 19 B5 */	bl PSMTXMultVec
/* 80D253BC  C0 1E 09 98 */	lfs f0, 0x998(r30)
/* 80D253C0  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80D253C4  C0 1E 09 9C */	lfs f0, 0x99c(r30)
/* 80D253C8  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80D253CC  C0 1E 09 A0 */	lfs f0, 0x9a0(r30)
/* 80D253D0  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80D253D4  C0 3E 05 54 */	lfs f1, 0x554(r30)
/* 80D253D8  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80D253DC  EC 01 00 2A */	fadds f0, f1, f0
/* 80D253E0  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80D253E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D253E8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80D253EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D253F0  7C 08 03 A6 */	mtlr r0
/* 80D253F4  38 21 00 20 */	addi r1, r1, 0x20
/* 80D253F8  4E 80 00 20 */	blr 
