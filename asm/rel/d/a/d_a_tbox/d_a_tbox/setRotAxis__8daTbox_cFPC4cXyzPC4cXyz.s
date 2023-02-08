lbl_80492C84:
/* 80492C84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80492C88  7C 08 02 A6 */	mflr r0
/* 80492C8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80492C90  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80492C94  7C 7F 1B 78 */	mr r31, r3
/* 80492C98  7C 80 23 78 */	mr r0, r4
/* 80492C9C  38 61 00 08 */	addi r3, r1, 8
/* 80492CA0  7C A4 2B 78 */	mr r4, r5
/* 80492CA4  7C 05 03 78 */	mr r5, r0
/* 80492CA8  4B DD 3E 8D */	bl __mi__4cXyzCFRC3Vec
/* 80492CAC  C0 01 00 08 */	lfs f0, 8(r1)
/* 80492CB0  D0 1F 09 B8 */	stfs f0, 0x9b8(r31)
/* 80492CB4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80492CB8  D0 1F 09 BC */	stfs f0, 0x9bc(r31)
/* 80492CBC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80492CC0  D0 1F 09 C0 */	stfs f0, 0x9c0(r31)
/* 80492CC4  3C 60 80 49 */	lis r3, lit_3934@ha /* 0x80496248@ha */
/* 80492CC8  C0 03 62 48 */	lfs f0, lit_3934@l(r3)  /* 0x80496248@l */
/* 80492CCC  D0 1F 09 BC */	stfs f0, 0x9bc(r31)
/* 80492CD0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80492CD4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80492CD8  38 80 40 00 */	li r4, 0x4000
/* 80492CDC  4B B7 97 01 */	bl mDoMtx_YrotS__FPA4_fs
/* 80492CE0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80492CE4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80492CE8  38 9F 09 B8 */	addi r4, r31, 0x9b8
/* 80492CEC  7C 85 23 78 */	mr r5, r4
/* 80492CF0  4B EB 40 7D */	bl PSMTXMultVec
/* 80492CF4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80492CF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80492CFC  7C 08 03 A6 */	mtlr r0
/* 80492D00  38 21 00 20 */	addi r1, r1, 0x20
/* 80492D04  4E 80 00 20 */	blr 
