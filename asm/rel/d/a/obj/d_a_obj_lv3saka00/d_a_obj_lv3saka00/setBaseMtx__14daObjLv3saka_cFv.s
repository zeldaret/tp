lbl_80C5BE78:
/* 80C5BE78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5BE7C  7C 08 02 A6 */	mflr r0
/* 80C5BE80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5BE84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5BE88  7C 7F 1B 78 */	mr r31, r3
/* 80C5BE8C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C5BE90  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C5BE94  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C5BE98  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C5BE9C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C5BEA0  4B 6E AA 49 */	bl PSMTXTrans
/* 80C5BEA4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C5BEA8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C5BEAC  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80C5BEB0  4B 3B 05 85 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C5BEB4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C5BEB8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C5BEBC  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80C5BEC0  4B 6E A5 F1 */	bl PSMTXCopy
/* 80C5BEC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5BEC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5BECC  7C 08 03 A6 */	mtlr r0
/* 80C5BED0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5BED4  4E 80 00 20 */	blr 
