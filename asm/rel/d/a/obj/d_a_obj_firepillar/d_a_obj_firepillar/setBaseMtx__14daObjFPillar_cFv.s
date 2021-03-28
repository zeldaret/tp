lbl_80BE9138:
/* 80BE9138  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE913C  7C 08 02 A6 */	mflr r0
/* 80BE9140  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE9144  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE9148  7C 7F 1B 78 */	mr r31, r3
/* 80BE914C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BE9150  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BE9154  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80BE9158  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80BE915C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80BE9160  4B 75 D7 88 */	b PSMTXTrans
/* 80BE9164  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BE9168  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BE916C  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80BE9170  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80BE9174  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80BE9178  4B 42 31 28 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80BE917C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE9180  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE9184  7C 08 03 A6 */	mtlr r0
/* 80BE9188  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE918C  4E 80 00 20 */	blr 
