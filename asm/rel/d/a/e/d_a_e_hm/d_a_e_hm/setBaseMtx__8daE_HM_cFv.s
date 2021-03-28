lbl_806E4558:
/* 806E4558  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E455C  7C 08 02 A6 */	mflr r0
/* 806E4560  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E4564  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806E4568  7C 7F 1B 78 */	mr r31, r3
/* 806E456C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 806E4570  4B 92 87 F4 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 806E4574  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 806E4578  4B 92 89 CC */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 806E457C  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 806E4580  4B 92 89 C4 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 806E4584  80 7F 06 18 */	lwz r3, 0x618(r31)
/* 806E4588  80 83 00 04 */	lwz r4, 4(r3)
/* 806E458C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806E4590  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806E4594  38 84 00 24 */	addi r4, r4, 0x24
/* 806E4598  4B C6 1F 18 */	b PSMTXCopy
/* 806E459C  80 7F 06 18 */	lwz r3, 0x618(r31)
/* 806E45A0  4B 92 CC 4C */	b modelCalc__16mDoExt_McaMorfSOFv
/* 806E45A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806E45A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E45AC  7C 08 03 A6 */	mtlr r0
/* 806E45B0  38 21 00 10 */	addi r1, r1, 0x10
/* 806E45B4  4E 80 00 20 */	blr 
