lbl_80CD9F68:
/* 80CD9F68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD9F6C  7C 08 02 A6 */	mflr r0
/* 80CD9F70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD9F74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CD9F78  7C 7F 1B 78 */	mr r31, r3
/* 80CD9F7C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80CD9F80  4B 33 2D E5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80CD9F84  3C 60 80 CE */	lis r3, lit_3875@ha /* 0x80CDB838@ha */
/* 80CD9F88  C0 23 B8 38 */	lfs f1, lit_3875@l(r3)  /* 0x80CDB838@l */
/* 80CD9F8C  3C 60 80 CE */	lis r3, lit_4031@ha /* 0x80CDB860@ha */
/* 80CD9F90  C0 43 B8 60 */	lfs f2, lit_4031@l(r3)  /* 0x80CDB860@l */
/* 80CD9F94  FC 60 08 90 */	fmr f3, f1
/* 80CD9F98  4B 33 2E 05 */	bl transM__14mDoMtx_stack_cFfff
/* 80CD9F9C  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80CD9FA0  4B 33 2F A5 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80CD9FA4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CD9FA8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CD9FAC  38 80 C0 00 */	li r4, -16384
/* 80CD9FB0  4B 33 23 ED */	bl mDoMtx_XrotM__FPA4_fs
/* 80CD9FB4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CD9FB8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CD9FBC  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80CD9FC0  38 84 00 24 */	addi r4, r4, 0x24
/* 80CD9FC4  4B 66 C4 ED */	bl PSMTXCopy
/* 80CD9FC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CD9FCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD9FD0  7C 08 03 A6 */	mtlr r0
/* 80CD9FD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD9FD8  4E 80 00 20 */	blr 
