lbl_80BF5814:
/* 80BF5814  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF5818  7C 08 02 A6 */	mflr r0
/* 80BF581C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF5820  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF5824  7C 7F 1B 78 */	mr r31, r3
/* 80BF5828  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80BF582C  4B 41 75 38 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80BF5830  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BF5834  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BF5838  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80BF583C  4B 41 6B F8 */	b mDoMtx_YrotM__FPA4_fs
/* 80BF5840  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BF5844  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BF5848  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80BF584C  38 84 00 24 */	addi r4, r4, 0x24
/* 80BF5850  4B 75 0C 60 */	b PSMTXCopy
/* 80BF5854  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BF5858  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BF585C  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80BF5860  4B 75 0C 50 */	b PSMTXCopy
/* 80BF5864  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF5868  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF586C  7C 08 03 A6 */	mtlr r0
/* 80BF5870  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF5874  4E 80 00 20 */	blr 
