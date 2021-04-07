lbl_80BA46D4:
/* 80BA46D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA46D8  7C 08 02 A6 */	mflr r0
/* 80BA46DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA46E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA46E4  7C 7F 1B 78 */	mr r31, r3
/* 80BA46E8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80BA46EC  4B 46 86 79 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BA46F0  38 7F 05 FE */	addi r3, r31, 0x5fe
/* 80BA46F4  4B 46 88 51 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80BA46F8  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80BA46FC  4B 46 88 49 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80BA4700  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 80BA4704  4B 46 87 6D */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80BA4708  80 7F 0A 68 */	lwz r3, 0xa68(r31)
/* 80BA470C  80 83 00 04 */	lwz r4, 4(r3)
/* 80BA4710  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BA4714  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BA4718  38 84 00 24 */	addi r4, r4, 0x24
/* 80BA471C  4B 7A 1D 95 */	bl PSMTXCopy
/* 80BA4720  80 7F 0A 68 */	lwz r3, 0xa68(r31)
/* 80BA4724  4B 46 CA C9 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80BA4728  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA472C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA4730  7C 08 03 A6 */	mtlr r0
/* 80BA4734  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA4738  4E 80 00 20 */	blr 
