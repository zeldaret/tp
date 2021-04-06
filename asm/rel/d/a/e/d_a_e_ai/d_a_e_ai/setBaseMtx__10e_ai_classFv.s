lbl_8067B598:
/* 8067B598  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8067B59C  7C 08 02 A6 */	mflr r0
/* 8067B5A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8067B5A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8067B5A8  7C 7F 1B 78 */	mr r31, r3
/* 8067B5AC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8067B5B0  4B 99 17 B5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8067B5B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8067B5B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8067B5BC  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8067B5C0  4B 99 0E 75 */	bl mDoMtx_YrotM__FPA4_fs
/* 8067B5C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8067B5C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8067B5CC  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 8067B5D0  4B 99 0E FD */	bl mDoMtx_ZrotM__FPA4_fs
/* 8067B5D4  3C 60 80 68 */	lis r3, l_HIO@ha /* 0x8067C6A8@ha */
/* 8067B5D8  38 63 C6 A8 */	addi r3, r3, l_HIO@l /* 0x8067C6A8@l */
/* 8067B5DC  C0 23 00 08 */	lfs f1, 8(r3)
/* 8067B5E0  FC 40 08 90 */	fmr f2, f1
/* 8067B5E4  FC 60 08 90 */	fmr f3, f1
/* 8067B5E8  4B 99 18 51 */	bl scaleM__14mDoMtx_stack_cFfff
/* 8067B5EC  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 8067B5F0  80 83 00 04 */	lwz r4, 4(r3)
/* 8067B5F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8067B5F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8067B5FC  38 84 00 24 */	addi r4, r4, 0x24
/* 8067B600  4B CC AE B1 */	bl PSMTXCopy
/* 8067B604  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 8067B608  4B 99 5B E5 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 8067B60C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8067B610  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8067B614  7C 08 03 A6 */	mtlr r0
/* 8067B618  38 21 00 10 */	addi r1, r1, 0x10
/* 8067B61C  4E 80 00 20 */	blr 
