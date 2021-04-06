lbl_80BF6F38:
/* 80BF6F38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF6F3C  7C 08 02 A6 */	mflr r0
/* 80BF6F40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF6F44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF6F48  7C 7F 1B 78 */	mr r31, r3
/* 80BF6F4C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80BF6F50  4B 41 5E 15 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BF6F54  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80BF6F58  4B 41 5F ED */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80BF6F5C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BF6F60  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BF6F64  38 9F 07 C0 */	addi r4, r31, 0x7c0
/* 80BF6F68  4B 74 F5 49 */	bl PSMTXCopy
/* 80BF6F6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF6F70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF6F74  7C 08 03 A6 */	mtlr r0
/* 80BF6F78  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF6F7C  4E 80 00 20 */	blr 
