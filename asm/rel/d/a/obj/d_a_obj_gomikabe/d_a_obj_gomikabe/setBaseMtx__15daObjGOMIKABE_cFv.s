lbl_80BFEF20:
/* 80BFEF20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFEF24  7C 08 02 A6 */	mflr r0
/* 80BFEF28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFEF2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BFEF30  7C 7F 1B 78 */	mr r31, r3
/* 80BFEF34  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80BFEF38  4B 40 DE 2D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BFEF3C  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80BFEF40  4B 40 E0 05 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80BFEF44  38 7F 05 A4 */	addi r3, r31, 0x5a4
/* 80BFEF48  4B 40 DF 29 */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80BFEF4C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BFEF50  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BFEF54  80 9F 0F 9C */	lwz r4, 0xf9c(r31)
/* 80BFEF58  38 84 00 24 */	addi r4, r4, 0x24
/* 80BFEF5C  4B 74 75 55 */	bl PSMTXCopy
/* 80BFEF60  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BFEF64  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BFEF68  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80BFEF6C  4B 74 75 45 */	bl PSMTXCopy
/* 80BFEF70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BFEF74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFEF78  7C 08 03 A6 */	mtlr r0
/* 80BFEF7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFEF80  4E 80 00 20 */	blr 
