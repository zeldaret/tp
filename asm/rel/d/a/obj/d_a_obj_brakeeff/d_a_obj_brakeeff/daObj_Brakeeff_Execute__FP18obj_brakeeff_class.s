lbl_8046DFB0:
/* 8046DFB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046DFB4  7C 08 02 A6 */	mflr r0
/* 8046DFB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046DFBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046DFC0  7C 7F 1B 78 */	mr r31, r3
/* 8046DFC4  A8 63 05 7C */	lha r3, 0x57c(r3)
/* 8046DFC8  38 03 00 01 */	addi r0, r3, 1
/* 8046DFCC  B0 1F 05 7C */	sth r0, 0x57c(r31)
/* 8046DFD0  38 60 00 00 */	li r3, 0
/* 8046DFD4  38 00 00 02 */	li r0, 2
/* 8046DFD8  7C 09 03 A6 */	mtctr r0
lbl_8046DFDC:
/* 8046DFDC  38 A3 05 82 */	addi r5, r3, 0x582
/* 8046DFE0  7C 9F 2A AE */	lhax r4, r31, r5
/* 8046DFE4  2C 04 00 00 */	cmpwi r4, 0
/* 8046DFE8  41 82 00 0C */	beq lbl_8046DFF4
/* 8046DFEC  38 04 FF FF */	addi r0, r4, -1
/* 8046DFF0  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_8046DFF4:
/* 8046DFF4  38 63 00 02 */	addi r3, r3, 2
/* 8046DFF8  42 00 FF E4 */	bdnz lbl_8046DFDC
/* 8046DFFC  7F E3 FB 78 */	mr r3, r31
/* 8046E000  4B FF FF 81 */	bl action__FP18obj_brakeeff_class
/* 8046E004  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8046E008  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8046E00C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8046E010  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 8046E014  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 8046E018  4B ED 88 D0 */	b PSMTXTrans
/* 8046E01C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8046E020  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8046E024  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8046E028  4B B9 E4 0C */	b mDoMtx_YrotM__FPA4_fs
/* 8046E02C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8046E030  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8046E034  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 8046E038  4B B9 E3 64 */	b mDoMtx_XrotM__FPA4_fs
/* 8046E03C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8046E040  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8046E044  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 8046E048  4B B9 E4 84 */	b mDoMtx_ZrotM__FPA4_fs
/* 8046E04C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8046E050  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8046E054  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 8046E058  38 84 00 24 */	addi r4, r4, 0x24
/* 8046E05C  4B ED 84 54 */	b PSMTXCopy
/* 8046E060  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8046E064  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8046E068  38 9F 07 08 */	addi r4, r31, 0x708
/* 8046E06C  4B ED 84 44 */	b PSMTXCopy
/* 8046E070  80 7F 07 38 */	lwz r3, 0x738(r31)
/* 8046E074  4B C0 D9 4C */	b Move__4dBgWFv
/* 8046E078  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 8046E07C  4B B9 F3 AC */	b play__14mDoExt_baseAnmFv
/* 8046E080  38 60 00 01 */	li r3, 1
/* 8046E084  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046E088  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046E08C  7C 08 03 A6 */	mtlr r0
/* 8046E090  38 21 00 10 */	addi r1, r1, 0x10
/* 8046E094  4E 80 00 20 */	blr 
