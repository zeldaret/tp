lbl_80CA0034:
/* 80CA0034  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA0038  7C 08 02 A6 */	mflr r0
/* 80CA003C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA0040  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA0044  93 C1 00 08 */	stw r30, 8(r1)
/* 80CA0048  7C 7E 1B 78 */	mr r30, r3
/* 80CA004C  7C 9F 23 78 */	mr r31, r4
/* 80CA0050  88 03 02 F0 */	lbz r0, 0x2f0(r3)
/* 80CA0054  28 00 00 00 */	cmplwi r0, 0
/* 80CA0058  40 82 00 48 */	bne lbl_80CA00A0
/* 80CA005C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CA0060  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CA0064  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 80CA0068  C0 5E 00 3C */	lfs f2, 0x3c(r30)
/* 80CA006C  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 80CA0070  4B 6A 68 79 */	bl PSMTXTrans
/* 80CA0074  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CA0078  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CA007C  38 80 80 00 */	li r4, -32768
/* 80CA0080  4B 36 C3 B5 */	bl mDoMtx_YrotM__FPA4_fs
/* 80CA0084  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CA0088  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CA008C  38 9E 00 04 */	addi r4, r30, 4
/* 80CA0090  4B 6A 64 21 */	bl PSMTXCopy
/* 80CA0094  7F E3 FB 78 */	mr r3, r31
/* 80CA0098  38 9E 00 04 */	addi r4, r30, 4
/* 80CA009C  4B 3F C5 CD */	bl entryObj__6dMdl_cFP10dMdl_obj_c
lbl_80CA00A0:
/* 80CA00A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA00A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CA00A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA00AC  7C 08 03 A6 */	mtlr r0
/* 80CA00B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA00B4  4E 80 00 20 */	blr 
