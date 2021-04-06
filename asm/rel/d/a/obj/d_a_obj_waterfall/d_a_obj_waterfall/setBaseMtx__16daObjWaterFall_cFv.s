lbl_80D2F344:
/* 80D2F344  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2F348  7C 08 02 A6 */	mflr r0
/* 80D2F34C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2F350  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2F354  7C 7F 1B 78 */	mr r31, r3
/* 80D2F358  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D2F35C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D2F360  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80D2F364  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80D2F368  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80D2F36C  4B 61 75 7D */	bl PSMTXTrans
/* 80D2F370  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D2F374  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D2F378  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80D2F37C  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80D2F380  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80D2F384  4B 2D CF 1D */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80D2F388  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2F38C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2F390  7C 08 03 A6 */	mtlr r0
/* 80D2F394  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2F398  4E 80 00 20 */	blr 
