lbl_80CDF12C:
/* 80CDF12C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDF130  7C 08 02 A6 */	mflr r0
/* 80CDF134  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDF138  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDF13C  7C 7F 1B 78 */	mr r31, r3
/* 80CDF140  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CDF144  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CDF148  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80CDF14C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80CDF150  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80CDF154  4B 66 77 94 */	b PSMTXTrans
/* 80CDF158  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CDF15C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CDF160  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80CDF164  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80CDF168  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80CDF16C  4B 32 D1 34 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80CDF170  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDF174  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDF178  7C 08 03 A6 */	mtlr r0
/* 80CDF17C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDF180  4E 80 00 20 */	blr 
