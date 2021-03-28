lbl_80C44D78:
/* 80C44D78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C44D7C  7C 08 02 A6 */	mflr r0
/* 80C44D80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C44D84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C44D88  7C 7F 1B 78 */	mr r31, r3
/* 80C44D8C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C44D90  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C44D94  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C44D98  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C44D9C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C44DA0  4B 70 1B 48 */	b PSMTXTrans
/* 80C44DA4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C44DA8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C44DAC  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80C44DB0  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80C44DB4  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80C44DB8  4B 3C 74 E8 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80C44DBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C44DC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C44DC4  7C 08 03 A6 */	mtlr r0
/* 80C44DC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C44DCC  4E 80 00 20 */	blr 
