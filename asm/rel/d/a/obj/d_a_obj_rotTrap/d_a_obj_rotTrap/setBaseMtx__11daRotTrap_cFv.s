lbl_80CBF940:
/* 80CBF940  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBF944  7C 08 02 A6 */	mflr r0
/* 80CBF948  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBF94C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBF950  7C 7F 1B 78 */	mr r31, r3
/* 80CBF954  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBF958  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBF95C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80CBF960  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80CBF964  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80CBF968  4B 68 6F 81 */	bl PSMTXTrans
/* 80CBF96C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBF970  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBF974  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80CBF978  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80CBF97C  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80CBF980  4B 34 C9 21 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80CBF984  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80CBF988  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80CBF98C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80CBF990  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80CBF994  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80CBF998  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80CBF99C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80CBF9A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBF9A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBF9A8  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80CBF9AC  38 84 00 24 */	addi r4, r4, 0x24
/* 80CBF9B0  4B 68 6B 01 */	bl PSMTXCopy
/* 80CBF9B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBF9B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBF9BC  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80CBF9C0  4B 68 6A F1 */	bl PSMTXCopy
/* 80CBF9C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBF9C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBF9CC  7C 08 03 A6 */	mtlr r0
/* 80CBF9D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBF9D4  4E 80 00 20 */	blr 
