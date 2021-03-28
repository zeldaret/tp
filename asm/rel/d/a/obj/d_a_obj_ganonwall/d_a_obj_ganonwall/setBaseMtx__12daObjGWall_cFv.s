lbl_80BF4D54:
/* 80BF4D54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF4D58  7C 08 02 A6 */	mflr r0
/* 80BF4D5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF4D60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF4D64  7C 7F 1B 78 */	mr r31, r3
/* 80BF4D68  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80BF4D6C  4B 41 7F F8 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80BF4D70  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BF4D74  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BF4D78  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80BF4D7C  4B 41 76 B8 */	b mDoMtx_YrotM__FPA4_fs
/* 80BF4D80  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BF4D84  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BF4D88  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80BF4D8C  38 84 00 24 */	addi r4, r4, 0x24
/* 80BF4D90  4B 75 17 20 */	b PSMTXCopy
/* 80BF4D94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF4D98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF4D9C  7C 08 03 A6 */	mtlr r0
/* 80BF4DA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF4DA4  4E 80 00 20 */	blr 
