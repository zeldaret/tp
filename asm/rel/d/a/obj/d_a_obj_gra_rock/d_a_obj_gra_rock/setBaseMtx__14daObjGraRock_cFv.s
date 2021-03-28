lbl_80C11444:
/* 80C11444  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C11448  7C 08 02 A6 */	mflr r0
/* 80C1144C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C11450  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C11454  7C 7F 1B 78 */	mr r31, r3
/* 80C11458  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C1145C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C11460  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C11464  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C11468  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C1146C  4B 73 54 7C */	b PSMTXTrans
/* 80C11470  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C11474  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C11478  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80C1147C  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80C11480  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80C11484  4B 3F AE 1C */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80C11488  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C1148C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C11490  80 9F 05 C8 */	lwz r4, 0x5c8(r31)
/* 80C11494  38 84 00 24 */	addi r4, r4, 0x24
/* 80C11498  4B 73 50 18 */	b PSMTXCopy
/* 80C1149C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C114A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C114A4  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80C114A8  4B 73 50 08 */	b PSMTXCopy
/* 80C114AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C114B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C114B4  7C 08 03 A6 */	mtlr r0
/* 80C114B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C114BC  4E 80 00 20 */	blr 
