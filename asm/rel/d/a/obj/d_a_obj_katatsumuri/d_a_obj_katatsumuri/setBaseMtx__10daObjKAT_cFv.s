lbl_80C3B938:
/* 80C3B938  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3B93C  7C 08 02 A6 */	mflr r0
/* 80C3B940  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3B944  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C3B948  7C 7F 1B 78 */	mr r31, r3
/* 80C3B94C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C3B950  4B 3D 14 15 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80C3B954  38 7F 07 EA */	addi r3, r31, 0x7ea
/* 80C3B958  4B 3D 15 ED */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C3B95C  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80C3B960  4B 3D 15 E5 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C3B964  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 80C3B968  4B 3D 15 09 */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80C3B96C  80 7F 0A 64 */	lwz r3, 0xa64(r31)
/* 80C3B970  80 83 00 04 */	lwz r4, 4(r3)
/* 80C3B974  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C3B978  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C3B97C  38 84 00 24 */	addi r4, r4, 0x24
/* 80C3B980  4B 70 AB 31 */	bl PSMTXCopy
/* 80C3B984  80 7F 0A 64 */	lwz r3, 0xa64(r31)
/* 80C3B988  4B 3D 58 65 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80C3B98C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C3B990  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3B994  7C 08 03 A6 */	mtlr r0
/* 80C3B998  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3B99C  4E 80 00 20 */	blr 
