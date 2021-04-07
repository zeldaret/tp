lbl_80BE3A24:
/* 80BE3A24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE3A28  7C 08 02 A6 */	mflr r0
/* 80BE3A2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE3A30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE3A34  7C 7F 1B 78 */	mr r31, r3
/* 80BE3A38  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80BE3A3C  4B 42 93 29 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BE3A40  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BE3A44  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BE3A48  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80BE3A4C  4B 42 89 E9 */	bl mDoMtx_YrotM__FPA4_fs
/* 80BE3A50  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BE3A54  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BE3A58  80 9F 05 E8 */	lwz r4, 0x5e8(r31)
/* 80BE3A5C  38 84 00 24 */	addi r4, r4, 0x24
/* 80BE3A60  4B 76 2A 51 */	bl PSMTXCopy
/* 80BE3A64  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BE3A68  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BE3A6C  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80BE3A70  4B 76 2A 41 */	bl PSMTXCopy
/* 80BE3A74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE3A78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE3A7C  7C 08 03 A6 */	mtlr r0
/* 80BE3A80  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE3A84  4E 80 00 20 */	blr 
