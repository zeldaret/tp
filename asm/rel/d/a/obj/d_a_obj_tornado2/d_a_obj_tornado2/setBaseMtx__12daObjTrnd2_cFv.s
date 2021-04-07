lbl_80D1C944:
/* 80D1C944  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1C948  7C 08 02 A6 */	mflr r0
/* 80D1C94C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1C950  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D1C954  7C 7F 1B 78 */	mr r31, r3
/* 80D1C958  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80D1C95C  4B 2F 04 09 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80D1C960  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80D1C964  4B 2F 05 E1 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80D1C968  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D1C96C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D1C970  38 9F 07 08 */	addi r4, r31, 0x708
/* 80D1C974  4B 62 9B 3D */	bl PSMTXCopy
/* 80D1C978  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D1C97C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1C980  7C 08 03 A6 */	mtlr r0
/* 80D1C984  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1C988  4E 80 00 20 */	blr 
