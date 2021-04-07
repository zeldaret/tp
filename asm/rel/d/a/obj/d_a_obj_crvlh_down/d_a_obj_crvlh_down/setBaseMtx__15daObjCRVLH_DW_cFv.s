lbl_80BD4644:
/* 80BD4644  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD4648  7C 08 02 A6 */	mflr r0
/* 80BD464C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD4650  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD4654  7C 7F 1B 78 */	mr r31, r3
/* 80BD4658  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80BD465C  4B 43 87 09 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BD4660  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80BD4664  4B 43 88 E1 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80BD4668  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BD466C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BD4670  80 9F 05 C4 */	lwz r4, 0x5c4(r31)
/* 80BD4674  38 84 00 24 */	addi r4, r4, 0x24
/* 80BD4678  4B 77 1E 39 */	bl PSMTXCopy
/* 80BD467C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BD4680  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BD4684  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80BD4688  4B 77 1E 29 */	bl PSMTXCopy
/* 80BD468C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD4690  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD4694  7C 08 03 A6 */	mtlr r0
/* 80BD4698  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD469C  4E 80 00 20 */	blr 
