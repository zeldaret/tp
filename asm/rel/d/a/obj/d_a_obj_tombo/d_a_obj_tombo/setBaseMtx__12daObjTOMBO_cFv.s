lbl_80D1AE68:
/* 80D1AE68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1AE6C  7C 08 02 A6 */	mflr r0
/* 80D1AE70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1AE74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D1AE78  7C 7F 1B 78 */	mr r31, r3
/* 80D1AE7C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80D1AE80  4B 2F 1E E5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80D1AE84  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80D1AE88  4B 2F 20 BD */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80D1AE8C  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 80D1AE90  4B 2F 1F E1 */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80D1AE94  80 7F 08 30 */	lwz r3, 0x830(r31)
/* 80D1AE98  80 83 00 04 */	lwz r4, 4(r3)
/* 80D1AE9C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D1AEA0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D1AEA4  38 84 00 24 */	addi r4, r4, 0x24
/* 80D1AEA8  4B 62 B6 09 */	bl PSMTXCopy
/* 80D1AEAC  80 7F 08 30 */	lwz r3, 0x830(r31)
/* 80D1AEB0  4B 2F 63 3D */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80D1AEB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D1AEB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1AEBC  7C 08 03 A6 */	mtlr r0
/* 80D1AEC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1AEC4  4E 80 00 20 */	blr 
