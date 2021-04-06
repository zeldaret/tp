lbl_80D405E4:
/* 80D405E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D405E8  7C 08 02 A6 */	mflr r0
/* 80D405EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D405F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D405F4  7C 7F 1B 78 */	mr r31, r3
/* 80D405F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D405FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D40600  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80D40604  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80D40608  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80D4060C  4B 60 62 DD */	bl PSMTXTrans
/* 80D40610  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D40614  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D40618  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80D4061C  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80D40620  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80D40624  4B 2C BC 7D */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80D40628  C0 3F 07 60 */	lfs f1, 0x760(r31)
/* 80D4062C  FC 40 08 90 */	fmr f2, f1
/* 80D40630  FC 60 08 90 */	fmr f3, f1
/* 80D40634  4B 2C C8 05 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80D40638  3C 60 80 D4 */	lis r3, lit_3699@ha /* 0x80D415D0@ha */
/* 80D4063C  C0 03 15 D0 */	lfs f0, lit_3699@l(r3)  /* 0x80D415D0@l */
/* 80D40640  D0 01 00 08 */	stfs f0, 8(r1)
/* 80D40644  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D40648  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D4064C  80 7F 07 20 */	lwz r3, 0x720(r31)
/* 80D40650  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80D40654  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80D40658  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80D4065C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D40660  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D40664  80 9F 07 20 */	lwz r4, 0x720(r31)
/* 80D40668  38 84 00 24 */	addi r4, r4, 0x24
/* 80D4066C  4B 60 5E 45 */	bl PSMTXCopy
/* 80D40670  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D40674  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D40678  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80D4067C  4B 60 5E 35 */	bl PSMTXCopy
/* 80D40680  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D40684  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D40688  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80D4068C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80D40690  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80D40694  4B 60 62 55 */	bl PSMTXTrans
/* 80D40698  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D4069C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D406A0  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80D406A4  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80D406A8  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80D406AC  4B 2C BB F5 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80D406B0  C0 3F 07 60 */	lfs f1, 0x760(r31)
/* 80D406B4  FC 40 08 90 */	fmr f2, f1
/* 80D406B8  FC 60 08 90 */	fmr f3, f1
/* 80D406BC  4B 2C C7 7D */	bl scaleM__14mDoMtx_stack_cFfff
/* 80D406C0  80 7F 07 24 */	lwz r3, 0x724(r31)
/* 80D406C4  C0 01 00 08 */	lfs f0, 8(r1)
/* 80D406C8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80D406CC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80D406D0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80D406D4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80D406D8  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80D406DC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D406E0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D406E4  80 9F 07 24 */	lwz r4, 0x724(r31)
/* 80D406E8  38 84 00 24 */	addi r4, r4, 0x24
/* 80D406EC  4B 60 5D C5 */	bl PSMTXCopy
/* 80D406F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D406F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D406F8  38 9F 07 30 */	addi r4, r31, 0x730
/* 80D406FC  4B 60 5D B5 */	bl PSMTXCopy
/* 80D40700  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D40704  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D40708  7C 08 03 A6 */	mtlr r0
/* 80D4070C  38 21 00 20 */	addi r1, r1, 0x20
/* 80D40710  4E 80 00 20 */	blr 
