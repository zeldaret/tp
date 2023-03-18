lbl_8059A038:
/* 8059A038  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059A03C  7C 08 02 A6 */	mflr r0
/* 8059A040  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059A044  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059A048  7C 7F 1B 78 */	mr r31, r3
/* 8059A04C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8059A050  4B A7 2D 15 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8059A054  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 8059A058  4B A7 2E ED */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 8059A05C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8059A060  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8059A064  38 9F 07 E4 */	addi r4, r31, 0x7e4
/* 8059A068  4B DA C4 49 */	bl PSMTXCopy
/* 8059A06C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059A070  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059A074  7C 08 03 A6 */	mtlr r0
/* 8059A078  38 21 00 10 */	addi r1, r1, 0x10
/* 8059A07C  4E 80 00 20 */	blr 
