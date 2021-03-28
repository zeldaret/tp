lbl_80BCC7F8:
/* 80BCC7F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCC7FC  7C 08 02 A6 */	mflr r0
/* 80BCC800  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCC804  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BCC808  7C 7F 1B 78 */	mr r31, r3
/* 80BCC80C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BCC810  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BCC814  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80BCC818  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80BCC81C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80BCC820  4B 77 A0 C8 */	b PSMTXTrans
/* 80BCC824  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BCC828  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BCC82C  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80BCC830  4B 43 FC 04 */	b mDoMtx_YrotM__FPA4_fs
/* 80BCC834  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BCC838  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BCC83C  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80BCC840  38 84 00 24 */	addi r4, r4, 0x24
/* 80BCC844  4B 77 9C 6C */	b PSMTXCopy
/* 80BCC848  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BCC84C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BCC850  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80BCC854  4B 77 9C 5C */	b PSMTXCopy
/* 80BCC858  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BCC85C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCC860  7C 08 03 A6 */	mtlr r0
/* 80BCC864  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCC868  4E 80 00 20 */	blr 
