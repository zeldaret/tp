lbl_80C8550C:
/* 80C8550C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C85510  7C 08 02 A6 */	mflr r0
/* 80C85514  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C85518  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8551C  7C 7F 1B 78 */	mr r31, r3
/* 80C85520  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C85524  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C85528  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C8552C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C85530  3C 80 80 C8 */	lis r4, l_HIO@ha /* 0x80C862CC@ha */
/* 80C85534  38 84 62 CC */	addi r4, r4, l_HIO@l /* 0x80C862CC@l */
/* 80C85538  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 80C8553C  EC 42 00 2A */	fadds f2, f2, f0
/* 80C85540  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C85544  4B 6C 13 A5 */	bl PSMTXTrans
/* 80C85548  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C8554C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C85550  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80C85554  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80C85558  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80C8555C  4B 38 6D 45 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80C85560  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C85564  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80C85568  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C8556C  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80C85570  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C85574  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80C85578  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C8557C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C85580  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C85584  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80C85588  38 84 00 24 */	addi r4, r4, 0x24
/* 80C8558C  4B 6C 0F 25 */	bl PSMTXCopy
/* 80C85590  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C85594  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C85598  7C 08 03 A6 */	mtlr r0
/* 80C8559C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C855A0  4E 80 00 20 */	blr 
