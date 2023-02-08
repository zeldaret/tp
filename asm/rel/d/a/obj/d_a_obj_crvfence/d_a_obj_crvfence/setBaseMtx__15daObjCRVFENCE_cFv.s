lbl_80BCF8A4:
/* 80BCF8A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCF8A8  7C 08 02 A6 */	mflr r0
/* 80BCF8AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCF8B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BCF8B4  7C 7F 1B 78 */	mr r31, r3
/* 80BCF8B8  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80BCF8BC  4B 43 D4 A9 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BCF8C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BCF8C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BCF8C8  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80BCF8CC  4B 43 CB 69 */	bl mDoMtx_YrotM__FPA4_fs
/* 80BCF8D0  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 80BCF8D4  4B 43 D6 71 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80BCF8D8  3C 60 80 BD */	lis r3, lit_3953@ha /* 0x80BD01CC@ha */
/* 80BCF8DC  C0 23 01 CC */	lfs f1, lit_3953@l(r3)  /* 0x80BD01CC@l */
/* 80BCF8E0  3C 60 80 BD */	lis r3, lit_4010@ha /* 0x80BD01F4@ha */
/* 80BCF8E4  C0 43 01 F4 */	lfs f2, lit_4010@l(r3)  /* 0x80BD01F4@l */
/* 80BCF8E8  FC 60 08 90 */	fmr f3, f1
/* 80BCF8EC  4B 43 D5 4D */	bl scaleM__14mDoMtx_stack_cFfff
/* 80BCF8F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BCF8F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BCF8F8  80 9F 06 60 */	lwz r4, 0x660(r31)
/* 80BCF8FC  38 84 00 24 */	addi r4, r4, 0x24
/* 80BCF900  4B 77 6B B1 */	bl PSMTXCopy
/* 80BCF904  38 7F 05 D0 */	addi r3, r31, 0x5d0
/* 80BCF908  4B 43 D4 5D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BCF90C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BCF910  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BCF914  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80BCF918  4B 43 CB 1D */	bl mDoMtx_YrotM__FPA4_fs
/* 80BCF91C  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 80BCF920  4B 43 D6 25 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80BCF924  3C 60 80 BD */	lis r3, lit_3953@ha /* 0x80BD01CC@ha */
/* 80BCF928  C0 23 01 CC */	lfs f1, lit_3953@l(r3)  /* 0x80BD01CC@l */
/* 80BCF92C  3C 60 80 BD */	lis r3, lit_4010@ha /* 0x80BD01F4@ha */
/* 80BCF930  C0 43 01 F4 */	lfs f2, lit_4010@l(r3)  /* 0x80BD01F4@l */
/* 80BCF934  FC 60 08 90 */	fmr f3, f1
/* 80BCF938  4B 43 D5 01 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80BCF93C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BCF940  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BCF944  80 9F 06 64 */	lwz r4, 0x664(r31)
/* 80BCF948  38 84 00 24 */	addi r4, r4, 0x24
/* 80BCF94C  4B 77 6B 65 */	bl PSMTXCopy
/* 80BCF950  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80BCF954  4B 43 D4 11 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BCF958  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80BCF95C  4B 43 D5 E9 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80BCF960  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BCF964  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BCF968  80 9F 06 5C */	lwz r4, 0x65c(r31)
/* 80BCF96C  38 84 00 24 */	addi r4, r4, 0x24
/* 80BCF970  4B 77 6B 41 */	bl PSMTXCopy
/* 80BCF974  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BCF978  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BCF97C  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80BCF980  4B 77 6B 31 */	bl PSMTXCopy
/* 80BCF984  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BCF988  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCF98C  7C 08 03 A6 */	mtlr r0
/* 80BCF990  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCF994  4E 80 00 20 */	blr 
