lbl_80CFEAB4:
/* 80CFEAB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFEAB8  7C 08 02 A6 */	mflr r0
/* 80CFEABC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFEAC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CFEAC4  7C 7F 1B 78 */	mr r31, r3
/* 80CFEAC8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CFEACC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CFEAD0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80CFEAD4  C0 7F 05 E4 */	lfs f3, 0x5e4(r31)
/* 80CFEAD8  3C 80 80 D0 */	lis r4, lit_4012@ha
/* 80CFEADC  C0 44 FC F8 */	lfs f2, lit_4012@l(r4)
/* 80CFEAE0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80CFEAE4  EC 02 00 2A */	fadds f0, f2, f0
/* 80CFEAE8  EC 43 00 2A */	fadds f2, f3, f0
/* 80CFEAEC  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80CFEAF0  4B 64 7D F8 */	b PSMTXTrans
/* 80CFEAF4  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80CFEAF8  4B 30 E4 4C */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80CFEAFC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CFEB00  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CFEB04  80 9F 05 A4 */	lwz r4, 0x5a4(r31)
/* 80CFEB08  38 84 00 24 */	addi r4, r4, 0x24
/* 80CFEB0C  4B 64 79 A4 */	b PSMTXCopy
/* 80CFEB10  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 80CFEB14  4B 30 E3 5C */	b scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80CFEB18  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CFEB1C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CFEB20  38 9F 05 74 */	addi r4, r31, 0x574
/* 80CFEB24  4B 64 79 8C */	b PSMTXCopy
/* 80CFEB28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CFEB2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFEB30  7C 08 03 A6 */	mtlr r0
/* 80CFEB34  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFEB38  4E 80 00 20 */	blr 
