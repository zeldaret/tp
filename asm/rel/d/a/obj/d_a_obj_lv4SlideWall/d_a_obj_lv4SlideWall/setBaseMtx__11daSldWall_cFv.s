lbl_80C61EB0:
/* 80C61EB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C61EB4  7C 08 02 A6 */	mflr r0
/* 80C61EB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C61EBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C61EC0  7C 7F 1B 78 */	mr r31, r3
/* 80C61EC4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C61EC8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C61ECC  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C61ED0  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C61ED4  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C61ED8  4B 6E 4A 11 */	bl PSMTXTrans
/* 80C61EDC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C61EE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C61EE4  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80C61EE8  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80C61EEC  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80C61EF0  4B 3A A3 B1 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80C61EF4  C0 3F 05 B0 */	lfs f1, 0x5b0(r31)
/* 80C61EF8  3C 60 80 C6 */	lis r3, lit_3649@ha /* 0x80C626B0@ha */
/* 80C61EFC  C0 43 26 B0 */	lfs f2, lit_3649@l(r3)  /* 0x80C626B0@l */
/* 80C61F00  FC 60 10 90 */	fmr f3, f2
/* 80C61F04  4B 3A AE 99 */	bl transM__14mDoMtx_stack_cFfff
/* 80C61F08  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C61F0C  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80C61F10  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C61F14  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80C61F18  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C61F1C  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80C61F20  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C61F24  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C61F28  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C61F2C  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80C61F30  38 84 00 24 */	addi r4, r4, 0x24
/* 80C61F34  4B 6E 45 7D */	bl PSMTXCopy
/* 80C61F38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C61F3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C61F40  7C 08 03 A6 */	mtlr r0
/* 80C61F44  38 21 00 10 */	addi r1, r1, 0x10
/* 80C61F48  4E 80 00 20 */	blr 
