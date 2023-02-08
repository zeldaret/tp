lbl_806A1EA0:
/* 806A1EA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A1EA4  7C 08 02 A6 */	mflr r0
/* 806A1EA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A1EAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806A1EB0  7C 7F 1B 78 */	mr r31, r3
/* 806A1EB4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806A1EB8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806A1EBC  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 806A1EC0  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 806A1EC4  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 806A1EC8  4B CA 4A 21 */	bl PSMTXTrans
/* 806A1ECC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806A1ED0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806A1ED4  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 806A1ED8  4B 96 A5 5D */	bl mDoMtx_YrotM__FPA4_fs
/* 806A1EDC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806A1EE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806A1EE4  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 806A1EE8  4B 96 A4 B5 */	bl mDoMtx_XrotM__FPA4_fs
/* 806A1EEC  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806A1EF0  80 83 00 04 */	lwz r4, 4(r3)
/* 806A1EF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806A1EF8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806A1EFC  38 84 00 24 */	addi r4, r4, 0x24
/* 806A1F00  4B CA 45 B1 */	bl PSMTXCopy
/* 806A1F04  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806A1F08  4B 96 E7 A5 */	bl modelCalc__14mDoExt_McaMorfFv
/* 806A1F0C  38 60 00 01 */	li r3, 1
/* 806A1F10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806A1F14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A1F18  7C 08 03 A6 */	mtlr r0
/* 806A1F1C  38 21 00 10 */	addi r1, r1, 0x10
/* 806A1F20  4E 80 00 20 */	blr 
