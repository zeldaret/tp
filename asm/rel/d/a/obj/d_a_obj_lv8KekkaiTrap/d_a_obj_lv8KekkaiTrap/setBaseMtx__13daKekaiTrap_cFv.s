lbl_80C87D40:
/* 80C87D40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C87D44  7C 08 02 A6 */	mflr r0
/* 80C87D48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C87D4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C87D50  7C 7F 1B 78 */	mr r31, r3
/* 80C87D54  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C87D58  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C87D5C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C87D60  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C87D64  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C87D68  4B 6B EB 81 */	bl PSMTXTrans
/* 80C87D6C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C87D70  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C87D74  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80C87D78  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80C87D7C  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80C87D80  4B 38 45 21 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80C87D84  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C87D88  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80C87D8C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C87D90  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80C87D94  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C87D98  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80C87D9C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C87DA0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C87DA4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C87DA8  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80C87DAC  38 84 00 24 */	addi r4, r4, 0x24
/* 80C87DB0  4B 6B E7 01 */	bl PSMTXCopy
/* 80C87DB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C87DB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C87DBC  7C 08 03 A6 */	mtlr r0
/* 80C87DC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C87DC4  4E 80 00 20 */	blr 
