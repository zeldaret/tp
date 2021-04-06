lbl_806DFFC0:
/* 806DFFC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806DFFC4  7C 08 02 A6 */	mflr r0
/* 806DFFC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 806DFFCC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806DFFD0  7C 7F 1B 78 */	mr r31, r3
/* 806DFFD4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806DFFD8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806DFFDC  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 806DFFE0  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 806DFFE4  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 806DFFE8  4B C6 69 01 */	bl PSMTXTrans
/* 806DFFEC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806DFFF0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806DFFF4  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 806DFFF8  4B 92 C4 3D */	bl mDoMtx_YrotM__FPA4_fs
/* 806DFFFC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806E0000  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806E0004  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 806E0008  4B 92 C3 95 */	bl mDoMtx_XrotM__FPA4_fs
/* 806E000C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806E0010  80 83 00 04 */	lwz r4, 4(r3)
/* 806E0014  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806E0018  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806E001C  38 84 00 24 */	addi r4, r4, 0x24
/* 806E0020  4B C6 64 91 */	bl PSMTXCopy
/* 806E0024  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806E0028  4B 93 06 85 */	bl modelCalc__14mDoExt_McaMorfFv
/* 806E002C  80 1F 05 BC */	lwz r0, 0x5bc(r31)
/* 806E0030  90 01 00 08 */	stw r0, 8(r1)
/* 806E0034  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 806E0038  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 806E003C  38 81 00 08 */	addi r4, r1, 8
/* 806E0040  4B 93 97 B9 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 806E0044  88 9F 05 BA */	lbz r4, 0x5ba(r31)
/* 806E0048  7C 80 07 75 */	extsb. r0, r4
/* 806E004C  40 82 00 18 */	bne lbl_806E0064
/* 806E0050  28 03 00 00 */	cmplwi r3, 0
/* 806E0054  41 82 00 34 */	beq lbl_806E0088
/* 806E0058  38 04 00 01 */	addi r0, r4, 1
/* 806E005C  98 1F 05 BA */	stb r0, 0x5ba(r31)
/* 806E0060  48 00 00 28 */	b lbl_806E0088
lbl_806E0064:
/* 806E0064  7C 80 07 74 */	extsb r0, r4
/* 806E0068  2C 00 00 01 */	cmpwi r0, 1
/* 806E006C  40 82 00 1C */	bne lbl_806E0088
/* 806E0070  28 03 00 00 */	cmplwi r3, 0
/* 806E0074  40 82 00 14 */	bne lbl_806E0088
/* 806E0078  38 04 00 01 */	addi r0, r4, 1
/* 806E007C  98 1F 05 BA */	stb r0, 0x5ba(r31)
/* 806E0080  38 00 00 64 */	li r0, 0x64
/* 806E0084  B0 1F 05 B8 */	sth r0, 0x5b8(r31)
lbl_806E0088:
/* 806E0088  38 60 00 01 */	li r3, 1
/* 806E008C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806E0090  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806E0094  7C 08 03 A6 */	mtlr r0
/* 806E0098  38 21 00 20 */	addi r1, r1, 0x20
/* 806E009C  4E 80 00 20 */	blr 
