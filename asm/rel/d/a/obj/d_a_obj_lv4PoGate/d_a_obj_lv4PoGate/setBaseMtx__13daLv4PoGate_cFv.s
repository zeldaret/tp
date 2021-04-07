lbl_80C5FCA4:
/* 80C5FCA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5FCA8  7C 08 02 A6 */	mflr r0
/* 80C5FCAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5FCB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5FCB4  7C 7F 1B 78 */	mr r31, r3
/* 80C5FCB8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C5FCBC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C5FCC0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C5FCC4  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C5FCC8  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C5FCCC  4B 6E 6C 1D */	bl PSMTXTrans
/* 80C5FCD0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C5FCD4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C5FCD8  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80C5FCDC  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80C5FCE0  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80C5FCE4  4B 3A C5 BD */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80C5FCE8  3C 60 80 C6 */	lis r3, lit_3655@ha /* 0x80C6081C@ha */
/* 80C5FCEC  C0 23 08 1C */	lfs f1, lit_3655@l(r3)  /* 0x80C6081C@l */
/* 80C5FCF0  C0 5F 05 B4 */	lfs f2, 0x5b4(r31)
/* 80C5FCF4  FC 60 08 90 */	fmr f3, f1
/* 80C5FCF8  4B 3A D0 A5 */	bl transM__14mDoMtx_stack_cFfff
/* 80C5FCFC  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C5FD00  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80C5FD04  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C5FD08  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80C5FD0C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C5FD10  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80C5FD14  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C5FD18  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C5FD1C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C5FD20  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80C5FD24  38 84 00 24 */	addi r4, r4, 0x24
/* 80C5FD28  4B 6E 67 89 */	bl PSMTXCopy
/* 80C5FD2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5FD30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5FD34  7C 08 03 A6 */	mtlr r0
/* 80C5FD38  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5FD3C  4E 80 00 20 */	blr 
