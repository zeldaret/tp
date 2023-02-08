lbl_805A6A78:
/* 805A6A78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A6A7C  7C 08 02 A6 */	mflr r0
/* 805A6A80  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A6A84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A6A88  7C 7F 1B 78 */	mr r31, r3
/* 805A6A8C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805A6A90  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805A6A94  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 805A6A98  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 805A6A9C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 805A6AA0  4B D9 FE 49 */	bl PSMTXTrans
/* 805A6AA4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805A6AA8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805A6AAC  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 805A6AB0  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 805A6AB4  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 805A6AB8  4B A6 57 E9 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 805A6ABC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A6AC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A6AC4  7C 08 03 A6 */	mtlr r0
/* 805A6AC8  38 21 00 10 */	addi r1, r1, 0x10
/* 805A6ACC  4E 80 00 20 */	blr 
