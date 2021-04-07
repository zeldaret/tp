lbl_80C8CF38:
/* 80C8CF38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8CF3C  7C 08 02 A6 */	mflr r0
/* 80C8CF40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8CF44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8CF48  7C 7F 1B 78 */	mr r31, r3
/* 80C8CF4C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C8CF50  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C8CF54  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C8CF58  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C8CF5C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C8CF60  4B 6B 99 89 */	bl PSMTXTrans
/* 80C8CF64  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C8CF68  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C8CF6C  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80C8CF70  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80C8CF74  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80C8CF78  4B 37 F3 29 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80C8CF7C  3C 60 80 C9 */	lis r3, lit_3650@ha /* 0x80C8D7E8@ha */
/* 80C8CF80  C0 23 D7 E8 */	lfs f1, lit_3650@l(r3)  /* 0x80C8D7E8@l */
/* 80C8CF84  C0 5F 05 B0 */	lfs f2, 0x5b0(r31)
/* 80C8CF88  FC 60 08 90 */	fmr f3, f1
/* 80C8CF8C  4B 37 FE 11 */	bl transM__14mDoMtx_stack_cFfff
/* 80C8CF90  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C8CF94  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80C8CF98  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C8CF9C  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80C8CFA0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C8CFA4  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80C8CFA8  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C8CFAC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C8CFB0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C8CFB4  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80C8CFB8  38 84 00 24 */	addi r4, r4, 0x24
/* 80C8CFBC  4B 6B 94 F5 */	bl PSMTXCopy
/* 80C8CFC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8CFC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8CFC8  7C 08 03 A6 */	mtlr r0
/* 80C8CFCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8CFD0  4E 80 00 20 */	blr 
