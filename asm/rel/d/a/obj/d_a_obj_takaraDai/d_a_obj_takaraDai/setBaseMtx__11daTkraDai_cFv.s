lbl_80D06E64:
/* 80D06E64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D06E68  7C 08 02 A6 */	mflr r0
/* 80D06E6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D06E70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D06E74  7C 7F 1B 78 */	mr r31, r3
/* 80D06E78  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D06E7C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D06E80  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80D06E84  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80D06E88  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80D06E8C  4B 63 FA 5D */	bl PSMTXTrans
/* 80D06E90  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D06E94  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D06E98  A8 9F 04 DC */	lha r4, 0x4dc(r31)
/* 80D06E9C  A8 BF 04 DE */	lha r5, 0x4de(r31)
/* 80D06EA0  A8 DF 04 E0 */	lha r6, 0x4e0(r31)
/* 80D06EA4  4B 30 53 FD */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80D06EA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D06EAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D06EB0  A8 9F 05 D4 */	lha r4, 0x5d4(r31)
/* 80D06EB4  A8 BF 05 D6 */	lha r5, 0x5d6(r31)
/* 80D06EB8  A8 DF 05 D8 */	lha r6, 0x5d8(r31)
/* 80D06EBC  4B 30 53 E5 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80D06EC0  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80D06EC4  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80D06EC8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80D06ECC  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80D06ED0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80D06ED4  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80D06ED8  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80D06EDC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D06EE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D06EE4  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80D06EE8  38 84 00 24 */	addi r4, r4, 0x24
/* 80D06EEC  4B 63 F5 C5 */	bl PSMTXCopy
/* 80D06EF0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D06EF4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D06EF8  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80D06EFC  4B 63 F5 B5 */	bl PSMTXCopy
/* 80D06F00  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D06F04  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D06F08  A8 9F 04 DC */	lha r4, 0x4dc(r31)
/* 80D06F0C  A8 BF 04 DE */	lha r5, 0x4de(r31)
/* 80D06F10  A8 DF 04 E0 */	lha r6, 0x4e0(r31)
/* 80D06F14  4B 30 52 F5 */	bl mDoMtx_ZXYrotS__FPA4_fsss
/* 80D06F18  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D06F1C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D06F20  A8 9F 05 D4 */	lha r4, 0x5d4(r31)
/* 80D06F24  A8 BF 05 D6 */	lha r5, 0x5d6(r31)
/* 80D06F28  A8 DF 05 D8 */	lha r6, 0x5d8(r31)
/* 80D06F2C  4B 30 53 75 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80D06F30  3C 60 80 D0 */	lis r3, lit_3687@ha /* 0x80D07838@ha */
/* 80D06F34  C0 23 78 38 */	lfs f1, lit_3687@l(r3)  /* 0x80D07838@l */
/* 80D06F38  D0 3F 06 1C */	stfs f1, 0x61c(r31)
/* 80D06F3C  3C 60 80 D0 */	lis r3, lit_3688@ha /* 0x80D0783C@ha */
/* 80D06F40  C0 03 78 3C */	lfs f0, lit_3688@l(r3)  /* 0x80D0783C@l */
/* 80D06F44  D0 1F 06 20 */	stfs f0, 0x620(r31)
/* 80D06F48  D0 3F 06 24 */	stfs f1, 0x624(r31)
/* 80D06F4C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D06F50  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D06F54  38 9F 06 1C */	addi r4, r31, 0x61c
/* 80D06F58  7C 85 23 78 */	mr r5, r4
/* 80D06F5C  4B 63 FE 11 */	bl PSMTXMultVec
/* 80D06F60  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D06F64  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D06F68  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80D06F6C  C0 1F 06 1C */	lfs f0, 0x61c(r31)
/* 80D06F70  EC 21 00 2A */	fadds f1, f1, f0
/* 80D06F74  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80D06F78  C0 1F 06 20 */	lfs f0, 0x620(r31)
/* 80D06F7C  EC 42 00 2A */	fadds f2, f2, f0
/* 80D06F80  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80D06F84  C0 1F 06 24 */	lfs f0, 0x624(r31)
/* 80D06F88  EC 63 00 2A */	fadds f3, f3, f0
/* 80D06F8C  4B 63 F9 5D */	bl PSMTXTrans
/* 80D06F90  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D06F94  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D06F98  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80D06F9C  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80D06FA0  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80D06FA4  4B 30 52 FD */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80D06FA8  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80D06FAC  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80D06FB0  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80D06FB4  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80D06FB8  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80D06FBC  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80D06FC0  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80D06FC4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D06FC8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D06FCC  80 9F 05 AC */	lwz r4, 0x5ac(r31)
/* 80D06FD0  38 84 00 24 */	addi r4, r4, 0x24
/* 80D06FD4  4B 63 F4 DD */	bl PSMTXCopy
/* 80D06FD8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D06FDC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D06FE0  38 9F 06 2C */	addi r4, r31, 0x62c
/* 80D06FE4  4B 63 F4 CD */	bl PSMTXCopy
/* 80D06FE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D06FEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D06FF0  7C 08 03 A6 */	mtlr r0
/* 80D06FF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D06FF8  4E 80 00 20 */	blr 
