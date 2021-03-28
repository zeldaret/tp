lbl_80496A54:
/* 80496A54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80496A58  7C 08 02 A6 */	mflr r0
/* 80496A5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80496A60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80496A64  7C 7F 1B 78 */	mr r31, r3
/* 80496A68  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80496A6C  4B B7 62 F8 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80496A70  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80496A74  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80496A78  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80496A7C  4B B7 59 B8 */	b mDoMtx_YrotM__FPA4_fs
/* 80496A80  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80496A84  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80496A88  80 9F 07 24 */	lwz r4, 0x724(r31)
/* 80496A8C  38 84 00 24 */	addi r4, r4, 0x24
/* 80496A90  4B EA FA 20 */	b PSMTXCopy
/* 80496A94  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80496A98  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80496A9C  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80496AA0  4B EA FA 10 */	b PSMTXCopy
/* 80496AA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80496AA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80496AAC  7C 08 03 A6 */	mtlr r0
/* 80496AB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80496AB4  4E 80 00 20 */	blr 
