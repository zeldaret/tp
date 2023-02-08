lbl_80CA86C0:
/* 80CA86C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA86C4  7C 08 02 A6 */	mflr r0
/* 80CA86C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA86CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA86D0  7C 7F 1B 78 */	mr r31, r3
/* 80CA86D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CA86D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CA86DC  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80CA86E0  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80CA86E4  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80CA86E8  4B 69 E2 01 */	bl PSMTXTrans
/* 80CA86EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CA86F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CA86F4  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80CA86F8  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80CA86FC  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80CA8700  4B 36 3B A1 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80CA8704  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80CA8708  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80CA870C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80CA8710  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80CA8714  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80CA8718  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80CA871C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80CA8720  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CA8724  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CA8728  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80CA872C  38 84 00 24 */	addi r4, r4, 0x24
/* 80CA8730  4B 69 DD 81 */	bl PSMTXCopy
/* 80CA8734  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA8738  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA873C  7C 08 03 A6 */	mtlr r0
/* 80CA8740  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA8744  4E 80 00 20 */	blr 
