lbl_80C72510:
/* 80C72510  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C72514  7C 08 02 A6 */	mflr r0
/* 80C72518  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7251C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C72520  7C 7F 1B 78 */	mr r31, r3
/* 80C72524  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C72528  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C7252C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C72530  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C72534  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C72538  4B 6D 43 B1 */	bl PSMTXTrans
/* 80C7253C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C72540  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C72544  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80C72548  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80C7254C  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80C72550  4B 39 9D 51 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80C72554  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C72558  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80C7255C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C72560  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80C72564  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C72568  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80C7256C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C72570  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C72574  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C72578  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80C7257C  38 84 00 24 */	addi r4, r4, 0x24
/* 80C72580  4B 6D 3F 31 */	bl PSMTXCopy
/* 80C72584  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C72588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7258C  7C 08 03 A6 */	mtlr r0
/* 80C72590  38 21 00 10 */	addi r1, r1, 0x10
/* 80C72594  4E 80 00 20 */	blr 
