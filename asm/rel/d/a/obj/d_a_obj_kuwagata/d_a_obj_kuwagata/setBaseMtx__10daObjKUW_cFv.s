lbl_80C4C7F4:
/* 80C4C7F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4C7F8  7C 08 02 A6 */	mflr r0
/* 80C4C7FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4C800  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C4C804  7C 7F 1B 78 */	mr r31, r3
/* 80C4C808  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C4C80C  4B 3C 05 59 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80C4C810  38 7F 09 9A */	addi r3, r31, 0x99a
/* 80C4C814  4B 3C 07 31 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C4C818  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80C4C81C  4B 3C 07 29 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C4C820  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 80C4C824  4B 3C 06 4D */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80C4C828  80 7F 0A 58 */	lwz r3, 0xa58(r31)
/* 80C4C82C  80 83 00 04 */	lwz r4, 4(r3)
/* 80C4C830  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C4C834  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C4C838  38 84 00 24 */	addi r4, r4, 0x24
/* 80C4C83C  4B 6F 9C 75 */	bl PSMTXCopy
/* 80C4C840  80 7F 0A 58 */	lwz r3, 0xa58(r31)
/* 80C4C844  4B 3C 49 A9 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80C4C848  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C4C84C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4C850  7C 08 03 A6 */	mtlr r0
/* 80C4C854  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4C858  4E 80 00 20 */	blr 
