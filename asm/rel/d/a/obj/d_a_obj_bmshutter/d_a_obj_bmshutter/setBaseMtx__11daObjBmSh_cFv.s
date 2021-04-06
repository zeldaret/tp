lbl_80BB9AE4:
/* 80BB9AE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB9AE8  7C 08 02 A6 */	mflr r0
/* 80BB9AEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB9AF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB9AF4  7C 7F 1B 78 */	mr r31, r3
/* 80BB9AF8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BB9AFC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BB9B00  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80BB9B04  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80BB9B08  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80BB9B0C  4B 78 CD DD */	bl PSMTXTrans
/* 80BB9B10  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BB9B14  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BB9B18  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80BB9B1C  4B 45 29 19 */	bl mDoMtx_YrotM__FPA4_fs
/* 80BB9B20  C0 3F 05 B4 */	lfs f1, 0x5b4(r31)
/* 80BB9B24  3C 60 80 BC */	lis r3, lit_3664@ha /* 0x80BBA7FC@ha */
/* 80BB9B28  C0 43 A7 FC */	lfs f2, lit_3664@l(r3)  /* 0x80BBA7FC@l */
/* 80BB9B2C  FC 60 10 90 */	fmr f3, f2
/* 80BB9B30  4B 45 32 6D */	bl transM__14mDoMtx_stack_cFfff
/* 80BB9B34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BB9B38  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BB9B3C  A8 9F 05 BC */	lha r4, 0x5bc(r31)
/* 80BB9B40  38 A0 00 00 */	li r5, 0
/* 80BB9B44  A8 DF 05 C0 */	lha r6, 0x5c0(r31)
/* 80BB9B48  4B 45 27 59 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80BB9B4C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BB9B50  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BB9B54  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80BB9B58  38 84 00 24 */	addi r4, r4, 0x24
/* 80BB9B5C  4B 78 C9 55 */	bl PSMTXCopy
/* 80BB9B60  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BB9B64  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BB9B68  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80BB9B6C  4B 78 C9 45 */	bl PSMTXCopy
/* 80BB9B70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB9B74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB9B78  7C 08 03 A6 */	mtlr r0
/* 80BB9B7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB9B80  4E 80 00 20 */	blr 
