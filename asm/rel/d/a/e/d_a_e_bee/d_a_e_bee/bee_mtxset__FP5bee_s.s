lbl_806829A8:
/* 806829A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806829AC  7C 08 02 A6 */	mflr r0
/* 806829B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806829B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806829B8  7C 7F 1B 78 */	mr r31, r3
/* 806829BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806829C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806829C4  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 806829C8  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 806829CC  C0 7F 00 18 */	lfs f3, 0x18(r31)
/* 806829D0  4B CC 3F 19 */	bl PSMTXTrans
/* 806829D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806829D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806829DC  A8 9F 00 36 */	lha r4, 0x36(r31)
/* 806829E0  4B 98 9A 55 */	bl mDoMtx_YrotM__FPA4_fs
/* 806829E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806829E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806829EC  A8 9F 00 34 */	lha r4, 0x34(r31)
/* 806829F0  4B 98 99 AD */	bl mDoMtx_XrotM__FPA4_fs
/* 806829F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806829F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806829FC  A8 9F 00 38 */	lha r4, 0x38(r31)
/* 80682A00  4B 98 9A CD */	bl mDoMtx_ZrotM__FPA4_fs
/* 80682A04  3C 60 80 68 */	lis r3, l_HIO@ha /* 0x80685684@ha */
/* 80682A08  38 63 56 84 */	addi r3, r3, l_HIO@l /* 0x80685684@l */
/* 80682A0C  C0 23 00 08 */	lfs f1, 8(r3)
/* 80682A10  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80682A14  EC 21 00 32 */	fmuls f1, f1, f0
/* 80682A18  FC 40 08 90 */	fmr f2, f1
/* 80682A1C  FC 60 08 90 */	fmr f3, f1
/* 80682A20  4B 98 A4 19 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80682A24  A8 1F 00 48 */	lha r0, 0x48(r31)
/* 80682A28  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80682A2C  41 82 00 1C */	beq lbl_80682A48
/* 80682A30  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80682A34  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80682A38  80 9F 00 00 */	lwz r4, 0(r31)
/* 80682A3C  38 84 00 24 */	addi r4, r4, 0x24
/* 80682A40  4B CC 3A 71 */	bl PSMTXCopy
/* 80682A44  48 00 00 18 */	b lbl_80682A5C
lbl_80682A48:
/* 80682A48  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80682A4C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80682A50  80 9F 00 04 */	lwz r4, 4(r31)
/* 80682A54  38 84 00 24 */	addi r4, r4, 0x24
/* 80682A58  4B CC 3A 59 */	bl PSMTXCopy
lbl_80682A5C:
/* 80682A5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80682A60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80682A64  7C 08 03 A6 */	mtlr r0
/* 80682A68  38 21 00 10 */	addi r1, r1, 0x10
/* 80682A6C  4E 80 00 20 */	blr 
