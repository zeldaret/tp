lbl_80D0BC54:
/* 80D0BC54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0BC58  7C 08 02 A6 */	mflr r0
/* 80D0BC5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0BC60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0BC64  7C 7F 1B 78 */	mr r31, r3
/* 80D0BC68  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80D0BC6C  4B 30 10 F8 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80D0BC70  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D0BC74  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D0BC78  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80D0BC7C  4B 30 07 B8 */	b mDoMtx_YrotM__FPA4_fs
/* 80D0BC80  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D0BC84  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D0BC88  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80D0BC8C  38 84 00 24 */	addi r4, r4, 0x24
/* 80D0BC90  4B 63 A8 20 */	b PSMTXCopy
/* 80D0BC94  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D0BC98  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D0BC9C  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80D0BCA0  4B 63 A8 10 */	b PSMTXCopy
/* 80D0BCA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0BCA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0BCAC  7C 08 03 A6 */	mtlr r0
/* 80D0BCB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0BCB4  4E 80 00 20 */	blr 
