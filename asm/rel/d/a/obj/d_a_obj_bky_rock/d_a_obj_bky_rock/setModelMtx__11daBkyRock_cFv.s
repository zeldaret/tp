lbl_80BB6F64:
/* 80BB6F64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB6F68  7C 08 02 A6 */	mflr r0
/* 80BB6F6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB6F70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB6F74  7C 7F 1B 78 */	mr r31, r3
/* 80BB6F78  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BB6F7C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BB6F80  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80BB6F84  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80BB6F88  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80BB6F8C  4B 78 F9 5C */	b PSMTXTrans
/* 80BB6F90  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BB6F94  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BB6F98  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80BB6F9C  4B 45 54 98 */	b mDoMtx_YrotM__FPA4_fs
/* 80BB6FA0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BB6FA4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BB6FA8  88 1F 05 78 */	lbz r0, 0x578(r31)
/* 80BB6FAC  54 00 10 3A */	slwi r0, r0, 2
/* 80BB6FB0  7C 9F 02 14 */	add r4, r31, r0
/* 80BB6FB4  80 84 08 64 */	lwz r4, 0x864(r4)
/* 80BB6FB8  38 84 00 24 */	addi r4, r4, 0x24
/* 80BB6FBC  4B 78 F4 F4 */	b PSMTXCopy
/* 80BB6FC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB6FC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB6FC8  7C 08 03 A6 */	mtlr r0
/* 80BB6FCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB6FD0  4E 80 00 20 */	blr 
