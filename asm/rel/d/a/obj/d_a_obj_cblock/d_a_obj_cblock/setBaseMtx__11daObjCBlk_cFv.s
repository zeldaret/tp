lbl_80BC5A48:
/* 80BC5A48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC5A4C  7C 08 02 A6 */	mflr r0
/* 80BC5A50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC5A54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC5A58  7C 7F 1B 78 */	mr r31, r3
/* 80BC5A5C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BC5A60  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BC5A64  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80BC5A68  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80BC5A6C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80BC5A70  4B 78 0E 78 */	b PSMTXTrans
/* 80BC5A74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BC5A78  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BC5A7C  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80BC5A80  4B 44 69 B4 */	b mDoMtx_YrotM__FPA4_fs
/* 80BC5A84  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BC5A88  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BC5A8C  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80BC5A90  38 84 00 24 */	addi r4, r4, 0x24
/* 80BC5A94  4B 78 0A 1C */	b PSMTXCopy
/* 80BC5A98  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BC5A9C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BC5AA0  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80BC5AA4  4B 78 0A 0C */	b PSMTXCopy
/* 80BC5AA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC5AAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC5AB0  7C 08 03 A6 */	mtlr r0
/* 80BC5AB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC5AB8  4E 80 00 20 */	blr 
