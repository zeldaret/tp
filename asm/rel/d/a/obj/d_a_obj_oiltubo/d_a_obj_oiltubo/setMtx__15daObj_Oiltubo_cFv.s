lbl_80CA73B8:
/* 80CA73B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA73BC  7C 08 02 A6 */	mflr r0
/* 80CA73C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA73C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA73C8  7C 7F 1B 78 */	mr r31, r3
/* 80CA73CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CA73D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CA73D4  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80CA73D8  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80CA73DC  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80CA73E0  4B 69 F5 08 */	b PSMTXTrans
/* 80CA73E4  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80CA73E8  4B 36 5B 5C */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80CA73EC  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 80CA73F0  4B 36 5A 80 */	b scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80CA73F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CA73F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CA73FC  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80CA7400  38 84 00 24 */	addi r4, r4, 0x24
/* 80CA7404  4B 69 F0 AC */	b PSMTXCopy
/* 80CA7408  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CA740C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CA7410  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80CA7414  38 84 00 24 */	addi r4, r4, 0x24
/* 80CA7418  4B 69 F0 98 */	b PSMTXCopy
/* 80CA741C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA7420  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA7424  7C 08 03 A6 */	mtlr r0
/* 80CA7428  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA742C  4E 80 00 20 */	blr 
