lbl_80C69AD4:
/* 80C69AD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C69AD8  7C 08 02 A6 */	mflr r0
/* 80C69ADC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C69AE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C69AE4  7C 7F 1B 78 */	mr r31, r3
/* 80C69AE8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C69AEC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C69AF0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C69AF4  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C69AF8  C0 1F 05 C0 */	lfs f0, 0x5c0(r31)
/* 80C69AFC  EC 42 00 2A */	fadds f2, f2, f0
/* 80C69B00  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C69B04  4B 6D CD E5 */	bl PSMTXTrans
/* 80C69B08  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C69B0C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C69B10  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80C69B14  4B 3A 29 21 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C69B18  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C69B1C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C69B20  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 80C69B24  38 84 00 24 */	addi r4, r4, 0x24
/* 80C69B28  4B 6D C9 89 */	bl PSMTXCopy
/* 80C69B2C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C69B30  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C69B34  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80C69B38  4B 6D C9 79 */	bl PSMTXCopy
/* 80C69B3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C69B40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C69B44  7C 08 03 A6 */	mtlr r0
/* 80C69B48  38 21 00 10 */	addi r1, r1, 0x10
/* 80C69B4C  4E 80 00 20 */	blr 
