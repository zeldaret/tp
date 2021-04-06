lbl_80C13540:
/* 80C13540  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C13544  7C 08 02 A6 */	mflr r0
/* 80C13548  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1354C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C13550  7C 7F 1B 78 */	mr r31, r3
/* 80C13554  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C13558  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C1355C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C13560  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C13564  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C13568  4B 73 33 81 */	bl PSMTXTrans
/* 80C1356C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C13570  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C13574  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80C13578  4B 3F 8E BD */	bl mDoMtx_YrotM__FPA4_fs
/* 80C1357C  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C13580  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80C13584  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C13588  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80C1358C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C13590  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80C13594  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C13598  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C1359C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C135A0  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80C135A4  38 84 00 24 */	addi r4, r4, 0x24
/* 80C135A8  4B 73 2F 09 */	bl PSMTXCopy
/* 80C135AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C135B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C135B4  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C135B8  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C135BC  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C135C0  4B 73 33 29 */	bl PSMTXTrans
/* 80C135C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C135C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C135CC  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80C135D0  4B 3F 8E 65 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C135D4  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80C135D8  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80C135DC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C135E0  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80C135E4  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C135E8  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80C135EC  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C135F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C135F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C135F8  80 9F 05 AC */	lwz r4, 0x5ac(r31)
/* 80C135FC  38 84 00 24 */	addi r4, r4, 0x24
/* 80C13600  4B 73 2E B1 */	bl PSMTXCopy
/* 80C13604  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C13608  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1360C  7C 08 03 A6 */	mtlr r0
/* 80C13610  38 21 00 10 */	addi r1, r1, 0x10
/* 80C13614  4E 80 00 20 */	blr 
