lbl_80B0B5CC:
/* 80B0B5CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B0B5D0  7C 08 02 A6 */	mflr r0
/* 80B0B5D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B0B5D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B0B5DC  93 C1 00 08 */	stw r30, 8(r1)
/* 80B0B5E0  7C 7F 1B 78 */	mr r31, r3
/* 80B0B5E4  3C 60 80 B1 */	lis r3, lit_3999@ha /* 0x80B0C1C4@ha */
/* 80B0B5E8  3B C3 C1 C4 */	addi r30, r3, lit_3999@l /* 0x80B0C1C4@l */
/* 80B0B5EC  88 1F 06 C1 */	lbz r0, 0x6c1(r31)
/* 80B0B5F0  28 00 00 00 */	cmplwi r0, 0
/* 80B0B5F4  41 82 00 68 */	beq lbl_80B0B65C
/* 80B0B5F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B0B5FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B0B600  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80B0B604  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80B0B608  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80B0B60C  4B 83 B2 DD */	bl PSMTXTrans
/* 80B0B610  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80B0B614  4B 50 19 31 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80B0B618  A8 DF 06 A4 */	lha r6, 0x6a4(r31)
/* 80B0B61C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B0B620  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B0B624  7C C0 0E 70 */	srawi r0, r6, 1
/* 80B0B628  7C 00 01 94 */	addze r0, r0
/* 80B0B62C  7C 04 07 34 */	extsh r4, r0
/* 80B0B630  38 A0 00 00 */	li r5, 0
/* 80B0B634  7C 06 00 D0 */	neg r0, r6
/* 80B0B638  7C 00 0E 70 */	srawi r0, r0, 1
/* 80B0B63C  7C 00 01 94 */	addze r0, r0
/* 80B0B640  7C 06 07 34 */	extsh r6, r0
/* 80B0B644  4B 50 0C 5D */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80B0B648  C0 3E 00 B0 */	lfs f1, 0xb0(r30)
/* 80B0B64C  C0 5E 01 D4 */	lfs f2, 0x1d4(r30)
/* 80B0B650  C0 7E 01 D8 */	lfs f3, 0x1d8(r30)
/* 80B0B654  4B 50 17 49 */	bl transM__14mDoMtx_stack_cFfff
/* 80B0B658  48 00 00 34 */	b lbl_80B0B68C
lbl_80B0B65C:
/* 80B0B65C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B0B660  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B0B664  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80B0B668  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80B0B66C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80B0B670  4B 83 B2 79 */	bl PSMTXTrans
/* 80B0B674  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80B0B678  4B 50 18 CD */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80B0B67C  C0 3E 00 B0 */	lfs f1, 0xb0(r30)
/* 80B0B680  C0 5E 01 D4 */	lfs f2, 0x1d4(r30)
/* 80B0B684  C0 7E 01 D8 */	lfs f3, 0x1d8(r30)
/* 80B0B688  4B 50 17 15 */	bl transM__14mDoMtx_stack_cFfff
lbl_80B0B68C:
/* 80B0B68C  3C 60 80 B1 */	lis r3, l_HIO@ha /* 0x80B0C60C@ha */
/* 80B0B690  38 63 C6 0C */	addi r3, r3, l_HIO@l /* 0x80B0C60C@l */
/* 80B0B694  C0 23 00 08 */	lfs f1, 8(r3)
/* 80B0B698  FC 40 08 90 */	fmr f2, f1
/* 80B0B69C  FC 60 08 90 */	fmr f3, f1
/* 80B0B6A0  4B 50 17 99 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80B0B6A4  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80B0B6A8  80 83 00 04 */	lwz r4, 4(r3)
/* 80B0B6AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B0B6B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B0B6B4  38 84 00 24 */	addi r4, r4, 0x24
/* 80B0B6B8  4B 83 AD F9 */	bl PSMTXCopy
/* 80B0B6BC  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80B0B6C0  4B 50 5B 2D */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80B0B6C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B0B6C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B0B6CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B0B6D0  7C 08 03 A6 */	mtlr r0
/* 80B0B6D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B0B6D8  4E 80 00 20 */	blr 
