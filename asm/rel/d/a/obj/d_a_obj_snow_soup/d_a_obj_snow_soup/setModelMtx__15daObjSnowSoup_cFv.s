lbl_80CDFEA4:
/* 80CDFEA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDFEA8  7C 08 02 A6 */	mflr r0
/* 80CDFEAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDFEB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDFEB4  7C 7F 1B 78 */	mr r31, r3
/* 80CDFEB8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CDFEBC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CDFEC0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80CDFEC4  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80CDFEC8  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80CDFECC  4B 66 6A 1D */	bl PSMTXTrans
/* 80CDFED0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CDFED4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CDFED8  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80CDFEDC  4B 32 C5 59 */	bl mDoMtx_YrotM__FPA4_fs
/* 80CDFEE0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CDFEE4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CDFEE8  88 1F 05 C0 */	lbz r0, 0x5c0(r31)
/* 80CDFEEC  54 00 10 3A */	slwi r0, r0, 2
/* 80CDFEF0  7C 9F 02 14 */	add r4, r31, r0
/* 80CDFEF4  80 84 05 B4 */	lwz r4, 0x5b4(r4)
/* 80CDFEF8  38 84 00 24 */	addi r4, r4, 0x24
/* 80CDFEFC  4B 66 65 B5 */	bl PSMTXCopy
/* 80CDFF00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDFF04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDFF08  7C 08 03 A6 */	mtlr r0
/* 80CDFF0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDFF10  4E 80 00 20 */	blr 
