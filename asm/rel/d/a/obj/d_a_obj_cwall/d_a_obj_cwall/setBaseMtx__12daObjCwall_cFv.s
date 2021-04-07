lbl_80BD6A88:
/* 80BD6A88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD6A8C  7C 08 02 A6 */	mflr r0
/* 80BD6A90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD6A94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD6A98  7C 7F 1B 78 */	mr r31, r3
/* 80BD6A9C  38 7F 0F 38 */	addi r3, r31, 0xf38
/* 80BD6AA0  4B 43 62 C5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BD6AA4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BD6AA8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BD6AAC  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80BD6AB0  4B 43 59 85 */	bl mDoMtx_YrotM__FPA4_fs
/* 80BD6AB4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BD6AB8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BD6ABC  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80BD6AC0  38 84 00 24 */	addi r4, r4, 0x24
/* 80BD6AC4  4B 76 F9 ED */	bl PSMTXCopy
/* 80BD6AC8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BD6ACC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BD6AD0  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80BD6AD4  4B 76 F9 DD */	bl PSMTXCopy
/* 80BD6AD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD6ADC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD6AE0  7C 08 03 A6 */	mtlr r0
/* 80BD6AE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD6AE8  4E 80 00 20 */	blr 
