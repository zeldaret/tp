lbl_8081FF88:
/* 8081FF88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8081FF8C  7C 08 02 A6 */	mflr r0
/* 8081FF90  90 01 00 14 */	stw r0, 0x14(r1)
/* 8081FF94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8081FF98  93 C1 00 08 */	stw r30, 8(r1)
/* 8081FF9C  7C 7F 1B 78 */	mr r31, r3
/* 8081FFA0  3C 60 80 82 */	lis r3, lit_3791@ha /* 0x808218AC@ha */
/* 8081FFA4  3B C3 18 AC */	addi r30, r3, lit_3791@l /* 0x808218AC@l */
/* 8081FFA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8081FFAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8081FFB0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8081FFB4  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 8081FFB8  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 8081FFBC  4B B2 69 2D */	bl PSMTXTrans
/* 8081FFC0  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 8081FFC4  4B 7E CF 81 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 8081FFC8  3C 60 80 82 */	lis r3, l_HIO@ha /* 0x80821E64@ha */
/* 8081FFCC  38 63 1E 64 */	addi r3, r3, l_HIO@l /* 0x80821E64@l */
/* 8081FFD0  C0 23 00 08 */	lfs f1, 8(r3)
/* 8081FFD4  FC 40 08 90 */	fmr f2, f1
/* 8081FFD8  FC 60 08 90 */	fmr f3, f1
/* 8081FFDC  4B 7E CE 5D */	bl scaleM__14mDoMtx_stack_cFfff
/* 8081FFE0  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8081FFE4  FC 40 08 90 */	fmr f2, f1
/* 8081FFE8  C0 7E 01 B4 */	lfs f3, 0x1b4(r30)
/* 8081FFEC  4B 7E CD B1 */	bl transM__14mDoMtx_stack_cFfff
/* 8081FFF0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8081FFF4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8081FFF8  A8 9F 06 EA */	lha r4, 0x6ea(r31)
/* 8081FFFC  4B 7E C3 A1 */	bl mDoMtx_XrotM__FPA4_fs
/* 80820000  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80820004  FC 40 08 90 */	fmr f2, f1
/* 80820008  C0 7E 01 B8 */	lfs f3, 0x1b8(r30)
/* 8082000C  4B 7E CD 91 */	bl transM__14mDoMtx_stack_cFfff
/* 80820010  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80820014  80 83 00 04 */	lwz r4, 4(r3)
/* 80820018  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8082001C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80820020  38 84 00 24 */	addi r4, r4, 0x24
/* 80820024  4B B2 64 8D */	bl PSMTXCopy
/* 80820028  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8082002C  4B 7F 11 C1 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80820030  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80820034  80 63 00 04 */	lwz r3, 4(r3)
/* 80820038  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8082003C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80820040  38 63 00 30 */	addi r3, r3, 0x30
/* 80820044  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80820048  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8082004C  4B B2 64 65 */	bl PSMTXCopy
/* 80820050  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80820054  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80820058  38 80 00 00 */	li r4, 0
/* 8082005C  38 A0 C0 00 */	li r5, -16384
/* 80820060  38 C0 00 00 */	li r6, 0
/* 80820064  4B 7E C2 3D */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80820068  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8082006C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80820070  38 9F 07 68 */	addi r4, r31, 0x768
/* 80820074  4B B2 64 3D */	bl PSMTXCopy
/* 80820078  80 7F 07 98 */	lwz r3, 0x798(r31)
/* 8082007C  28 03 00 00 */	cmplwi r3, 0
/* 80820080  41 82 00 08 */	beq lbl_80820088
/* 80820084  4B 85 B9 3D */	bl Move__4dBgWFv
lbl_80820088:
/* 80820088  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8082008C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80820090  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80820094  7C 08 03 A6 */	mtlr r0
/* 80820098  38 21 00 10 */	addi r1, r1, 0x10
/* 8082009C  4E 80 00 20 */	blr 
