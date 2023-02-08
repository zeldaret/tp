lbl_806953E4:
/* 806953E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806953E8  7C 08 02 A6 */	mflr r0
/* 806953EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806953F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806953F4  7C 7F 1B 78 */	mr r31, r3
/* 806953F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806953FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80695400  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80695404  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80695408  C0 7F 00 20 */	lfs f3, 0x20(r31)
/* 8069540C  4B CB 14 DD */	bl PSMTXTrans
/* 80695410  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80695414  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80695418  A8 9F 00 44 */	lha r4, 0x44(r31)
/* 8069541C  4B 97 6F 81 */	bl mDoMtx_XrotM__FPA4_fs
/* 80695420  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80695424  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80695428  A8 9F 00 46 */	lha r4, 0x46(r31)
/* 8069542C  4B 97 70 A1 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80695430  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80695434  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80695438  A8 9F 00 3E */	lha r4, 0x3e(r31)
/* 8069543C  4B 97 6F F9 */	bl mDoMtx_YrotM__FPA4_fs
/* 80695440  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80695444  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80695448  A8 9F 00 3C */	lha r4, 0x3c(r31)
/* 8069544C  4B 97 6F 51 */	bl mDoMtx_XrotM__FPA4_fs
/* 80695450  3C 60 80 69 */	lis r3, l_HIO@ha /* 0x80697E7C@ha */
/* 80695454  38 63 7E 7C */	addi r3, r3, l_HIO@l /* 0x80697E7C@l */
/* 80695458  C0 23 00 08 */	lfs f1, 8(r3)
/* 8069545C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80695460  EC 21 00 32 */	fmuls f1, f1, f0
/* 80695464  FC 40 08 90 */	fmr f2, f1
/* 80695468  FC 60 08 90 */	fmr f3, f1
/* 8069546C  4B 97 79 CD */	bl scaleM__14mDoMtx_stack_cFfff
/* 80695470  3C 60 80 69 */	lis r3, lit_3945@ha /* 0x80697CA8@ha */
/* 80695474  C0 23 7C A8 */	lfs f1, lit_3945@l(r3)  /* 0x80697CA8@l */
/* 80695478  3C 60 80 69 */	lis r3, lit_4108@ha /* 0x80697CD4@ha */
/* 8069547C  C0 43 7C D4 */	lfs f2, lit_4108@l(r3)  /* 0x80697CD4@l */
/* 80695480  FC 60 08 90 */	fmr f3, f1
/* 80695484  4B 97 79 19 */	bl transM__14mDoMtx_stack_cFfff
/* 80695488  80 1F 00 08 */	lwz r0, 8(r31)
/* 8069548C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80695490  41 82 00 1C */	beq lbl_806954AC
/* 80695494  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80695498  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8069549C  80 9F 00 00 */	lwz r4, 0(r31)
/* 806954A0  38 84 00 24 */	addi r4, r4, 0x24
/* 806954A4  4B CB 10 0D */	bl PSMTXCopy
/* 806954A8  48 00 00 18 */	b lbl_806954C0
lbl_806954AC:
/* 806954AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806954B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806954B4  80 9F 00 04 */	lwz r4, 4(r31)
/* 806954B8  38 84 00 24 */	addi r4, r4, 0x24
/* 806954BC  4B CB 0F F5 */	bl PSMTXCopy
lbl_806954C0:
/* 806954C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806954C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806954C8  7C 08 03 A6 */	mtlr r0
/* 806954CC  38 21 00 10 */	addi r1, r1, 0x10
/* 806954D0  4E 80 00 20 */	blr 
