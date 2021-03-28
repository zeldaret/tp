lbl_80D4CD24:
/* 80D4CD24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4CD28  7C 08 02 A6 */	mflr r0
/* 80D4CD2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4CD30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4CD34  7C 7F 1B 78 */	mr r31, r3
/* 80D4CD38  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D4CD3C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D4CD40  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80D4CD44  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80D4CD48  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80D4CD4C  4B 5F 9B 9C */	b PSMTXTrans
/* 80D4CD50  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D4CD54  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D4CD58  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80D4CD5C  4B 2B F6 D8 */	b mDoMtx_YrotM__FPA4_fs
/* 80D4CD60  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D4CD64  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D4CD68  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80D4CD6C  4B 2B F6 30 */	b mDoMtx_XrotM__FPA4_fs
/* 80D4CD70  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D4CD74  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D4CD78  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 80D4CD7C  4B 2B F7 50 */	b mDoMtx_ZrotM__FPA4_fs
/* 80D4CD80  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D4CD84  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D4CD88  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80D4CD8C  38 84 00 24 */	addi r4, r4, 0x24
/* 80D4CD90  4B 5F 97 20 */	b PSMTXCopy
/* 80D4CD94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4CD98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4CD9C  7C 08 03 A6 */	mtlr r0
/* 80D4CDA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4CDA4  4E 80 00 20 */	blr 
