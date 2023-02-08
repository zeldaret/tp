lbl_80C98534:
/* 80C98534  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C98538  7C 08 02 A6 */	mflr r0
/* 80C9853C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C98540  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C98544  7C 7F 1B 78 */	mr r31, r3
/* 80C98548  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C9854C  4B 37 48 19 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80C98550  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80C98554  4B 37 49 F1 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C98558  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9855C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C98560  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80C98564  38 84 00 24 */	addi r4, r4, 0x24
/* 80C98568  4B 6A DF 49 */	bl PSMTXCopy
/* 80C9856C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C98570  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C98574  38 9F 06 FC */	addi r4, r31, 0x6fc
/* 80C98578  4B 6A DF 39 */	bl PSMTXCopy
/* 80C9857C  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80C98580  4B 3E 34 41 */	bl Move__4dBgWFv
/* 80C98584  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C98588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9858C  7C 08 03 A6 */	mtlr r0
/* 80C98590  38 21 00 10 */	addi r1, r1, 0x10
/* 80C98594  4E 80 00 20 */	blr 
