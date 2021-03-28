lbl_80C4616C:
/* 80C4616C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C46170  7C 08 02 A6 */	mflr r0
/* 80C46174  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C46178  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C4617C  7C 7F 1B 78 */	mr r31, r3
/* 80C46180  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C46184  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C46188  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C4618C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C46190  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C46194  4B 70 07 54 */	b PSMTXTrans
/* 80C46198  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C4619C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C461A0  A8 9F 04 DC */	lha r4, 0x4dc(r31)
/* 80C461A4  A8 BF 04 DE */	lha r5, 0x4de(r31)
/* 80C461A8  A8 DF 04 E0 */	lha r6, 0x4e0(r31)
/* 80C461AC  4B 3C 5F B8 */	b mDoMtx_XYZrotM__FPA4_fsss
/* 80C461B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C461B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C461B8  38 9F 05 D8 */	addi r4, r31, 0x5d8
/* 80C461BC  4B 70 02 F4 */	b PSMTXCopy
/* 80C461C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C461C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C461C8  38 9F 05 A8 */	addi r4, r31, 0x5a8
/* 80C461CC  4B 70 02 E4 */	b PSMTXCopy
/* 80C461D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C461D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C461D8  7C 08 03 A6 */	mtlr r0
/* 80C461DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C461E0  4E 80 00 20 */	blr 
