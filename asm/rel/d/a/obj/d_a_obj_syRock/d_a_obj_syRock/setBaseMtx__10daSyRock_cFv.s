lbl_80D0237C:
/* 80D0237C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D02380  7C 08 02 A6 */	mflr r0
/* 80D02384  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D02388  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0238C  7C 7F 1B 78 */	mr r31, r3
/* 80D02390  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D02394  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D02398  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80D0239C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80D023A0  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80D023A4  4B 64 45 45 */	bl PSMTXTrans
/* 80D023A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D023AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D023B0  38 80 00 00 */	li r4, 0
/* 80D023B4  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80D023B8  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80D023BC  4B 30 9E E5 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80D023C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D023C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D023C8  A8 9F 07 4C */	lha r4, 0x74c(r31)
/* 80D023CC  A8 BF 07 4E */	lha r5, 0x74e(r31)
/* 80D023D0  A8 DF 07 50 */	lha r6, 0x750(r31)
/* 80D023D4  4B 30 9E CD */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80D023D8  C0 3F 07 6C */	lfs f1, 0x76c(r31)
/* 80D023DC  C0 5F 07 70 */	lfs f2, 0x770(r31)
/* 80D023E0  C0 7F 07 74 */	lfs f3, 0x774(r31)
/* 80D023E4  4B 30 A9 B9 */	bl transM__14mDoMtx_stack_cFfff
/* 80D023E8  88 1F 09 9C */	lbz r0, 0x99c(r31)
/* 80D023EC  54 00 10 3A */	slwi r0, r0, 2
/* 80D023F0  7C 7F 02 14 */	add r3, r31, r0
/* 80D023F4  80 63 05 C0 */	lwz r3, 0x5c0(r3)
/* 80D023F8  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80D023FC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80D02400  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80D02404  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80D02408  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80D0240C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80D02410  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D02414  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D02418  88 1F 09 9C */	lbz r0, 0x99c(r31)
/* 80D0241C  54 00 10 3A */	slwi r0, r0, 2
/* 80D02420  7C 9F 02 14 */	add r4, r31, r0
/* 80D02424  80 84 05 C0 */	lwz r4, 0x5c0(r4)
/* 80D02428  38 84 00 24 */	addi r4, r4, 0x24
/* 80D0242C  4B 64 40 85 */	bl PSMTXCopy
/* 80D02430  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D02434  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D02438  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80D0243C  4B 64 40 75 */	bl PSMTXCopy
/* 80D02440  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D02444  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D02448  7C 08 03 A6 */	mtlr r0
/* 80D0244C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D02450  4E 80 00 20 */	blr 
