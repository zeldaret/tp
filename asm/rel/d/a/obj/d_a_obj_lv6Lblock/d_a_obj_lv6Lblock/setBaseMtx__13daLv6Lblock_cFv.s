lbl_80C73464:
/* 80C73464  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C73468  7C 08 02 A6 */	mflr r0
/* 80C7346C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C73470  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C73474  7C 7F 1B 78 */	mr r31, r3
/* 80C73478  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C7347C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C73480  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C73484  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C73488  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C7348C  4B 6D 34 5D */	bl PSMTXTrans
/* 80C73490  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C73494  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C73498  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80C7349C  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80C734A0  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80C734A4  4B 39 8D FD */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80C734A8  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C734AC  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80C734B0  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C734B4  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80C734B8  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C734BC  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80C734C0  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C734C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C734C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C734CC  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80C734D0  38 84 00 24 */	addi r4, r4, 0x24
/* 80C734D4  4B 6D 2F DD */	bl PSMTXCopy
/* 80C734D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C734DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C734E0  7C 08 03 A6 */	mtlr r0
/* 80C734E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C734E8  4E 80 00 20 */	blr 
