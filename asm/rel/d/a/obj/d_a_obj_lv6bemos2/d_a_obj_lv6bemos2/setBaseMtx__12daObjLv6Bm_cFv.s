lbl_80C7E374:
/* 80C7E374  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C7E378  7C 08 02 A6 */	mflr r0
/* 80C7E37C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C7E380  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C7E384  7C 7F 1B 78 */	mr r31, r3
/* 80C7E388  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C7E38C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C7E390  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C7E394  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C7E398  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C7E39C  4B 6C 85 4D */	bl PSMTXTrans
/* 80C7E3A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C7E3A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C7E3A8  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80C7E3AC  4B 38 E0 89 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C7E3B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C7E3B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C7E3B8  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80C7E3BC  38 84 00 24 */	addi r4, r4, 0x24
/* 80C7E3C0  4B 6C 80 F1 */	bl PSMTXCopy
/* 80C7E3C4  3C 60 80 C8 */	lis r3, lit_3855@ha /* 0x80C81C48@ha */
/* 80C7E3C8  C0 23 1C 48 */	lfs f1, lit_3855@l(r3)  /* 0x80C81C48@l */
/* 80C7E3CC  FC 40 08 90 */	fmr f2, f1
/* 80C7E3D0  FC 60 08 90 */	fmr f3, f1
/* 80C7E3D4  4B 38 EA 65 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80C7E3D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C7E3DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C7E3E0  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80C7E3E4  4B 6C 80 CD */	bl PSMTXCopy
/* 80C7E3E8  C0 3F 0A 0C */	lfs f1, 0xa0c(r31)
/* 80C7E3EC  3C 60 80 C8 */	lis r3, lit_3854@ha /* 0x80C81C44@ha */
/* 80C7E3F0  C0 03 1C 44 */	lfs f0, lit_3854@l(r3)  /* 0x80C81C44@l */
/* 80C7E3F4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C7E3F8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C7E3FC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80C7E400  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80C7E404  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C7E408  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C7E40C  D0 23 00 20 */	stfs f1, 0x20(r3)
/* 80C7E410  38 7F 09 E4 */	addi r3, r31, 0x9e4
/* 80C7E414  4B 38 E9 51 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80C7E418  38 7F 09 F0 */	addi r3, r31, 0x9f0
/* 80C7E41C  4B 38 EB 29 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C7E420  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C7E424  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C7E428  80 9F 05 B4 */	lwz r4, 0x5b4(r31)
/* 80C7E42C  38 84 00 24 */	addi r4, r4, 0x24
/* 80C7E430  4B 6C 80 81 */	bl PSMTXCopy
/* 80C7E434  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C7E438  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C7E43C  7C 08 03 A6 */	mtlr r0
/* 80C7E440  38 21 00 20 */	addi r1, r1, 0x20
/* 80C7E444  4E 80 00 20 */	blr 
