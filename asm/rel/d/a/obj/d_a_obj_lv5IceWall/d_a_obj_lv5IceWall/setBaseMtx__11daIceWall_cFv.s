lbl_80C6B51C:
/* 80C6B51C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C6B520  7C 08 02 A6 */	mflr r0
/* 80C6B524  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C6B528  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C6B52C  7C 7F 1B 78 */	mr r31, r3
/* 80C6B530  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C6B534  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C6B538  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C6B53C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C6B540  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C6B544  4B 6D B3 A5 */	bl PSMTXTrans
/* 80C6B548  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C6B54C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C6B550  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80C6B554  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80C6B558  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80C6B55C  4B 3A 0D 45 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80C6B560  C0 3F 08 6C */	lfs f1, 0x86c(r31)
/* 80C6B564  C0 5F 08 70 */	lfs f2, 0x870(r31)
/* 80C6B568  C0 7F 08 74 */	lfs f3, 0x874(r31)
/* 80C6B56C  4B 3A 18 CD */	bl scaleM__14mDoMtx_stack_cFfff
/* 80C6B570  3C 60 80 C7 */	lis r3, lit_3656@ha /* 0x80C6C640@ha */
/* 80C6B574  C0 03 C6 40 */	lfs f0, lit_3656@l(r3)  /* 0x80C6C640@l */
/* 80C6B578  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C6B57C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C6B580  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C6B584  88 1F 08 65 */	lbz r0, 0x865(r31)
/* 80C6B588  54 00 10 3A */	slwi r0, r0, 2
/* 80C6B58C  7C 7F 02 14 */	add r3, r31, r0
/* 80C6B590  80 63 08 5C */	lwz r3, 0x85c(r3)
/* 80C6B594  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C6B598  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C6B59C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C6B5A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C6B5A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C6B5A8  88 1F 08 65 */	lbz r0, 0x865(r31)
/* 80C6B5AC  54 00 10 3A */	slwi r0, r0, 2
/* 80C6B5B0  7C 9F 02 14 */	add r4, r31, r0
/* 80C6B5B4  80 84 08 5C */	lwz r4, 0x85c(r4)
/* 80C6B5B8  38 84 00 24 */	addi r4, r4, 0x24
/* 80C6B5BC  4B 6D AE F5 */	bl PSMTXCopy
/* 80C6B5C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C6B5C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C6B5C8  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80C6B5CC  4B 6D AE E5 */	bl PSMTXCopy
/* 80C6B5D0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C6B5D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C6B5D8  7C 08 03 A6 */	mtlr r0
/* 80C6B5DC  38 21 00 20 */	addi r1, r1, 0x20
/* 80C6B5E0  4E 80 00 20 */	blr 
