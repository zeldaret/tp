lbl_80C510F8:
/* 80C510F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C510FC  7C 08 02 A6 */	mflr r0
/* 80C51100  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C51104  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C51108  7C 7F 1B 78 */	mr r31, r3
/* 80C5110C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C51110  4B 3B BC 54 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80C51114  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C51118  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C5111C  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80C51120  4B 3B B3 14 */	b mDoMtx_YrotM__FPA4_fs
/* 80C51124  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C51128  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C5112C  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 80C51130  4B 3B B3 9C */	b mDoMtx_ZrotM__FPA4_fs
/* 80C51134  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C51138  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C5113C  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80C51140  38 84 00 24 */	addi r4, r4, 0x24
/* 80C51144  4B 6F 53 6C */	b PSMTXCopy
/* 80C51148  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C5114C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C51150  38 9F 05 78 */	addi r4, r31, 0x578
/* 80C51154  4B 6F 53 5C */	b PSMTXCopy
/* 80C51158  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5115C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C51160  7C 08 03 A6 */	mtlr r0
/* 80C51164  38 21 00 10 */	addi r1, r1, 0x10
/* 80C51168  4E 80 00 20 */	blr 
